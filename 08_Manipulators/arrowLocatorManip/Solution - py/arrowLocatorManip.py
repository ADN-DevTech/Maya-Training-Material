
import sys, math

import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx
import maya.OpenMayaRender as OpenMayaRender
import maya.OpenMayaUI as OpenMayaUI

kPluginManipNodeTypeName = "arrowLocatorManip"
kPluginNodeTypeName = "arrowLocator"

kPluginManipNodeId = OpenMaya.MTypeId(0x00003)
kPluginNodeId = OpenMaya.MTypeId(0x00002)

glRenderer = OpenMayaRender.MHardwareRenderer.theRenderer()
glFT = glRenderer.glFunctionTable()

#an array of points to draw our compass arrow in openGL
arrow = ( [2.00, 0.0, 0.0],
[-3.0, 0.0, 2.0],
[-2.0, 0.0, 0.0],
[-3.0, 0.0, -2.0]) 

#indices into the arrow array
triangleIndices = [0,1,2,0,2,3]


class arrowLocatorManip(OpenMayaMPx.MPxManipContainer):
	def __init__(self):
		OpenMayaMPx.MPxManipContainer.__init__(self)
		self.fDiscManip = OpenMaya.MDagPath()
		self.fNodePath = OpenMaya.MDagPath()

	#- Container manipulators are composed of one or more base manipulators. 
	#- When base manipulators are added to a container manipulator, they are referred to 
	#- as children of the container manipulator, and are added using the createChildren method. 
	def createChildren(self):
		try:
			#- Add a base disc manip into this manip container
			self.fDiscManip = self.addDiscManip("angleManip","yRotation")

			#- Initialize the angle and starting position of this manipulator
			startPoint = OpenMaya.MPoint(0.0, 0.0, 0.0) 
			startAngle = OpenMaya.MAngle(0.0,OpenMaya.MAngle.kDegrees)
			fnDisc = OpenMayaUI.MFnDiscManip(self.fDiscManip)
			fnDisc.setCenterPoint(startPoint)
			fnDisc.setAngle(startAngle)

		except:
			sys.stderr.write("ERROR: arrowLocatorManip.createChildren\n")
			raise		

	#- This function is responsible to make the connection (association) 
	#- between manipulators and the affected attributes. When a node in a scene 
	#- is selected and user click on show manipulator tool, 
	#- this function is called with the selected node.
	#- Arguments:
	#- 	dependNode - the node which is selected
	def connectToDependNode(self, node):
		try:
			#- Find the "windDirection" plug on the selected node, which is the custom
			#- locator node.
			fnDepNode = OpenMaya.MFnDependencyNode(node)
			rotationPlug = fnDepNode.findPlug("windDirection")

			#- Connect the "windDirection" plug with the base disc manip
			fnDisc = OpenMayaUI.MFnDiscManip(self.fDiscManip)
			fnDisc.connectToAnglePlug(rotationPlug)


			#- Set up affecting relationship using conversion callback function
			#- We are using addPlugToManipConversionCallback so that whenever
			#- the custom locator moves, the dis manip moves with it.
			fnDagNode = OpenMaya.MFnDagNode(node)
			fnDagNode.getPath(self.fNodePath)
			centerPointIndex = fnDisc.centerIndex()

			#NOT Available in Python.
			self.addPlugToManipConversion(centerPointIndex)

			#- The following two functions are mandatory inside your
			#- connectToDependNode() function
			self.finishAddingManips()
			OpenMayaMPx.MPxManipContainer.connectToDependNode(self, node)

		except:
			sys.stderr.write("ERROR: arrowLocatorManip.connectToDependNode\n")
			raise

	#- This method is an optional method, you can use it to customize 
	#- the drawing of your manipulator. 
	#- If you are overriding this function, most likely you will use OpenGL calls, 
	#- so opengl32.lib should be included in the linking libraries.
	#- Arguments:
	#- 	view - the 3d view where the manipulator will be drawn
	#-     path - the Dag path of this manipulator
	#-     style - the displaying style of this manipulator
	#-		status - the displaying status of this manipulator, for example, it is active or not
	def draw(self, view, path, style, status):
		OpenMayaMPx.MPxManipContainer.draw(self, view, path, style, status)

	#- This method is plugToManipConversionCallback function
	#- You implement it so that a specific component of the manipulator
	#- will be modified automatically when some plug value changes on 
	#- the custom locator.
	#- Arguments:
	#- 	manipIndex - the index of the component on the manip you want to affect, 
	#-                  in this case, it is the center point of this manip
	#-	Return Values:
	#-		MManipData object, which represents the updated value
	def plugToManipConversion( self, manipIndex ):
		try:
			#Get parent transform node of the locator node
			
			parentTransform = self.fNodePath.transform()

			#Get the transform node DAG path
			transformPath = OpenMaya.MDagPath()
			OpenMaya.MDagPath.getAPathTo(parentTransform,transformPath)

			#Retrieve world space translation
			fnTrans = OpenMaya.MFnTransform(transformPath)
			translation = OpenMaya.MVector()
			translation = fnTrans.getTranslation(OpenMaya.MSpace.kWorld)

			numData = OpenMaya.MFnNumericData()
			numDataValue = numData.create(OpenMaya.MFnNumericData.k3Double)
			status = numData.setData3Double(translation.x,translation.y,translation.z)
			manipData = OpenMayaUI.MManipData(numDataValue)
		except:
			sys.stderr.write("ERROR: arrowManip.plugToManipConversion\n")
			raise

		return manipData

# Node definition
class arrowLocator(OpenMayaMPx.MPxLocatorNode):
	windDirection = OpenMaya.MObject()
	
	def __init__(self):
		OpenMayaMPx.MPxLocatorNode.__init__(self)
		

	def compute(self, plug, data):
		return OpenMaya.kUnknownParameter

	#-	This method draw this locator in current scene by calling openGL functions
	#-
	#-	Arguments:
	#-		view -- 3D view that is being drawn into 
	#-		path -- path to this locator in the DAG 
	#-		style -- style to draw object in 
	#-		status -- selection status of object 
	#-
	def draw(self, view, path, style, status):
		thisNode = self.thisMObject()

		#We're in the draw routine, not the Compute method
		#therefore it is safe to grab plugs in the following way and
		#get/set values.  You would never do something like this in
		#the compute method because it might start a cycle in the
		#graph.  Here we just need the value of our winddirection
		#plug so that we can draw our arrow pointing the right way.
		plug = OpenMaya.MPlug(thisNode, arrowLocator.windDirection)
		angle = plug.asMAngle()

		#start drawing by OpenGL
		view.beginGL() 


		#If the drawing style is shaded, set color and draw opaque shape
		if ((style == OpenMayaUI.M3dView.kFlatShaded) or (style == OpenMayaUI.M3dView.kGouraudShaded)):
			
			#Push to save current color settings
			glFT.glPushAttrib(OpenMayaRender.MGL_CURRENT_BIT )

			if (status == OpenMayaUI.M3dView.kActive):
				view.setDrawColor( 13, OpenMayaUI.M3dView.kActiveColors )
			else:
				view.setDrawColor( 13, OpenMayaUI.M3dView.kDormantColors )
			  

			#push the old matrix on the stack, rotate the current one,
			#draw the shape, then pop the old matrix off the stack for
			#maya to use again.
			glFT.glPushMatrix()
			glFT.glRotated(-angle.asDegrees(), 0.0, 1.0, 0.0)
			glFT.glBegin( OpenMayaRender.MGL_TRIANGLE_FAN )
			glFT.glVertex3f(arrow[0][0],arrow[0][1],arrow[0][2])
			glFT.glVertex3f(arrow[1][0],arrow[1][1],arrow[1][2])
			glFT.glVertex3f(arrow[2][0],arrow[2][1],arrow[2][2])
			glFT.glEnd()

			glFT.glBegin( OpenMayaRender.MGL_TRIANGLE_FAN )
			glFT.glVertex3f(arrow[2][0],arrow[2][1],arrow[2][2])
			glFT.glVertex3f(arrow[3][0],arrow[3][1],arrow[3][2])
			glFT.glVertex3f(arrow[0][0],arrow[0][1],arrow[0][2])
			glFT.glEnd()
			glFT.glPopMatrix()

			glFT.glPopAttrib()
		

		#Draw the outline of the arrow shape
		glFT.glPushMatrix()
		glFT.glRotated(-angle.asDegrees(), 0.0, 1.0, 0.0)
		glFT.glBegin( OpenMayaRender.MGL_LINE_STRIP)
		glFT.glVertex3f(arrow[0][0],arrow[0][1],arrow[0][2])
		glFT.glVertex3f(arrow[1][0],arrow[1][1],arrow[1][2])
		glFT.glVertex3f(arrow[2][0],arrow[2][1],arrow[2][2])
		glFT.glEnd()

		glFT.glBegin( OpenMayaRender.MGL_LINE_STRIP )
		glFT.glVertex3f(arrow[2][0],arrow[2][1],arrow[2][2])
		glFT.glVertex3f(arrow[3][0],arrow[3][1],arrow[3][2])
		glFT.glVertex3f(arrow[0][0],arrow[0][1],arrow[0][2])
		glFT.glEnd()
		glFT.glPopMatrix()

		view.endGL()

	def isBounded(self):
		return True

	#- This method return the bounding box for this locator shape, 
	#- providing a bounding box routine makes refresh and selection more efficient. 
	#
	def boundingBox(self):
		upLeftCorner = OpenMaya.MPoint(-3.0, 0.0, -2.0)
		downRightCorner = OpenMaya.MPoint(2.0, 0.0, 2.0)

		boundingArea = OpenMaya.MBoundingBox(upLeftCorner,downRightCorner)
		return boundingArea


#- This method exists to give Maya a way to create new objects
#- of this type.
def ManipNodeCreator():
	return OpenMayaMPx.asMPxPtr( arrowLocatorManip() )

#- This method is called to create and initialize all of the attributes
#- and attribute dependencies for this node type.  This is only called 
#-	once when the node type is registered with Maya.
def ManipNodeInitializer():
	OpenMayaMPx.MPxManipContainer.initialize()
		
# Creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( arrowLocator() )

# initializer
def nodeInitializer():
	#Here we create a new attribute type that handles units: angle, distance or time
	uAttr = OpenMaya.MFnUnitAttribute()
	arrowLocator.windDirection = uAttr.create("windDirection", "wd", OpenMaya.MFnUnitAttribute.kAngle)
	uAttr.setDefault(0.0)
	uAttr.setStorable(True)
	uAttr.setWritable(True)
	uAttr.setReadable(True)
	uAttr.setKeyable(True)

	uAttr.setDefault(OpenMaya.MAngle(0.0, OpenMaya.MAngle.kDegrees))

	arrowLocator.addAttribute(arrowLocator.windDirection)

	#- To make connection between your custom node and your custom 
	#- manipulator node, you need to name your custom manipulator 
	#- after your custom node type name, also in your custom node's initialize()
	#- function, you need to call MPxManipContainer::addToManipConnectTable().
	#- This method adds the user defined node as an entry in the manipConnectTable 
	#- so that when this node is selected the user can use the show manip tool to 
	#- get the user defined manipulator associated with this node
	OpenMayaMPx.MPxManipContainer.addToManipConnectTable(kPluginNodeId)
	
# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerNode( kPluginManipNodeTypeName, kPluginManipNodeId, ManipNodeCreator, ManipNodeInitializer, OpenMayaMPx.MPxNode.kManipContainer )
		
	except:
		sys.stderr.write( "Failed to register manip node: %s" % kPluginManipNodeTypeName )
		raise
	try:
		
		mplugin.registerNode( kPluginNodeTypeName, kPluginNodeId, nodeCreator, nodeInitializer, OpenMayaMPx.MPxNode.kLocatorNode )
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):

	
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	
	try:
		mplugin.deregisterNode( kPluginManipNodeId)
		
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginManipNodeTypeName )
		raise

	try:
		
		mplugin.deregisterNode( kPluginNodeId )
	except:
		sys.stderr.write( "Failed to deregister command: %s" % kPluginNodeTypeName )
		raise

		