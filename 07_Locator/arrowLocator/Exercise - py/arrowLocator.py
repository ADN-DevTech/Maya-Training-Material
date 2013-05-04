#
# Copyright (C) 
# 
# File: arrowLocator.py
#
# Dependency Graph Node: 
#
# Author: Maya Plug-in Wizard 2.0


import sys, math

import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx
import maya.OpenMayaRender as OpenMayaRender
import maya.OpenMayaUI as OpenMayaUI

kPluginNodeTypeName = "arrowLocator"

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
                #- TODO: Get a reference of current node
		#  thisNode =  ...

		#We're in the draw routine, not the Compute method
		#therefore it is safe to grab plugs in the following way and
		#get/set values.  You would never do something like this in
		#the compute method because it might start a cycle in the
		#graph.  Here we just need the value of our winddirection
		#plug so that we can draw our arrow pointing the right way.

                #- TODO: Get the wind direction plug and get its angle value
                #- ...

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
		
# Creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( arrowLocator() )

# initializer
def nodeInitializer():
	#Here we create a new attribute type that handles units: angle, distance or time
	uAttr = OpenMaya.MFnUnitAttribute()

        #- TODO: Create a angle attribute with long name "windDirection" and short name "wd"
	#- ....
	uAttr.setDefault(0.0)
	uAttr.setStorable(True)
	uAttr.setWritable(True)
	uAttr.setReadable(True)
	uAttr.setKeyable(True)

        #- TODO: Set the min and max value this attribute can have 0, 2PI
	#...
	#...
	uAttr.setDefault(OpenMaya.MAngle(0.0, OpenMaya.MAngle.kDegrees))

	arrowLocator.addAttribute(arrowLocator.windDirection)
	return OpenMaya.MStatus.kSuccess
	
# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		
		mplugin.registerNode( kPluginNodeTypeName, kPluginNodeId, nodeCreator, nodeInitializer, OpenMayaMPx.MPxNode.kLocatorNode )
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)

	try:
		
		mplugin.deregisterNode( kPluginNodeId )
	except:
		sys.stderr.write( "Failed to deregister command: %s" % kPluginNodeTypeName )
		raise

		
