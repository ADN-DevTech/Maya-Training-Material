# Copyright (C) 
# 
# Author: Autodesk Developer Network

# For this exercise, search for the TODO keywords and follow the instructions in
# comments. If you are unsure of what you need to do, feel free to ask the instructor
# or look into the solution folder.
# Each #... line is a line of code you need to write or complete.

import sys, math

import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

kPluginNodeTypeName = "transCircle"
kPluginCmdTypeName = "setUpTransCircle"

kPluginNodeId = OpenMaya.MTypeId(0x80013)

# Node definition
class transCircle(OpenMayaMPx.MPxNode):
	# class variables
	# Node attributes
	#- Compound attributes in Maya are build from several individual attributes. In
	#- our example the translation vector is made of the x,y,z attributes, and the
	#- compound attribute itself.
	aInput = OpenMaya.MObject()
	aFrames = OpenMaya.MObject()
	aScale = OpenMaya.MObject()
	aInputTranslate = OpenMaya.MObject()
	aInputTranslateX = OpenMaya.MObject()
	aInputTranslateY = OpenMaya.MObject()
	aInputTranslateZ = OpenMaya.MObject()
	aOutputTranslate = OpenMaya.MObject()
	aOutputTranslateX = OpenMaya.MObject()
	aOutputTranslateY = OpenMaya.MObject()
	aOutputTranslateZ = OpenMaya.MObject()
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
	#- This method computes the value of the given output plug based
	#- on the values of the input attributes.
	#- Arguments:
	#- 	plug - the plug to compute
	#- 	data - object that provides access to the attributes for this node
	def compute(self, plug, data):
		if (plug != transCircle.aOutputTranslateX and plug != transCircle.aOutputTranslateY and plug != transCircle.aOutputTranslateZ and plug != transCircle.aOutputTranslate):
			return OpenMaya.kUnknownParameter
	
		inputData = data.inputValue( transCircle.aInput )
		scaleData = data.inputValue( transCircle.aScale )
		framesData = data.inputValue( transCircle.aFrames )
		
		currentFrame = inputData.asDouble()
		scaleFactor  = scaleData.asDouble()
		framesPerCircle = framesData.asDouble()

		#- Retrieve values on individual input translate attribute
		inputTranslateXHandle = data.inputValue(transCircle.aInputTranslateX)
		inputTranslateXData = inputTranslateXHandle.asDouble()

		inputTranslateYHandle = data.inputValue(transCircle.aInputTranslateY)
		inputTranslateYData = inputTranslateYHandle.asDouble()

		inputTranslateZHandle = data.inputValue(transCircle.aInputTranslateZ)
		inputTranslateZData = inputTranslateZHandle.asDouble()
		
		#- Calculate corresponding angle based on current frame 
		angle = 6.2831853 * ( currentFrame/framesPerCircle )
		
		#- The value of output translate is input translate value plus the value of circular movement  
		outputTranslateXData = inputTranslateXData + (math.sin( angle ) * scaleFactor)
		outputTranslateYData = inputTranslateYData + 1.0
		outputTranslateZData = inputTranslateZData + (math.cos( angle ) * scaleFactor)

		#- Get a handle on the output attributes and set the new value.
		outputTranslateXHandle = data.outputValue( transCircle.aOutputTranslateX ) 
		outputTranslateXHandle.setDouble(outputTranslateXData)
		outputTranslateYHandle = data.outputValue( transCircle.aOutputTranslateY ) 
		outputTranslateYHandle.setDouble(outputTranslateYData)

		outputTranslateZHandle = data.outputValue( transCircle.aOutputTranslateZ ) 
		outputTranslateZHandle.setDouble(outputTranslateZData)
		
		#- Tell Maya the plug is now clean
		data.setClean(plug)

def nodeInitializer():
	
	nAttr = OpenMaya.MFnNumericAttribute()
	
	transCircle.aInput = nAttr.create( "input", "in", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setStorable(True)

	transCircle.aInputTranslateX = nAttr.create( "inputTranslateX", "itX", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setStorable(True)

	transCircle.aInputTranslateY = nAttr.create( "inputTranslateY", "itY", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setStorable(True)

	transCircle.aInputTranslateZ = nAttr.create( "inputTranslateZ", "itZ", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setStorable(True)

	#- Create compound input translate attributes and add individual input translate attributes
	comAttr = OpenMaya.MFnCompoundAttribute()
	transCircle.aInputTranslate = comAttr.create("inputTranslate","it")
	comAttr.addChild(transCircle.aInputTranslateX)
	comAttr.addChild(transCircle.aInputTranslateY)
	comAttr.addChild(transCircle.aInputTranslateZ)
	
	comAttr.setStorable(True)

	transCircle.aOutputTranslateX = nAttr.create( "outputTranslateX", "otX", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setWritable(False)
	nAttr.setStorable(True)

	transCircle.aOutputTranslateY = nAttr.create( "outputTranslateY", "otY", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setWritable(False)
	nAttr.setStorable(True)

	transCircle.aOutputTranslateZ = nAttr.create( "outputTranslateZ", "otZ", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setWritable(False)
	nAttr.setStorable(True)

	#- Create compound output translate attributes and add individual output translate attributes
	transCircle.aOutputTranslate = comAttr.create("outputTranslate","ot")
	comAttr.addChild(transCircle.aOutputTranslateX)
	comAttr.addChild(transCircle.aOutputTranslateY)
	comAttr.addChild(transCircle.aOutputTranslateZ)
	comAttr.setWritable(False)
	comAttr.setStorable(True)

	transCircle.aScale = nAttr.create( "scale", "sc", OpenMaya.MFnNumericData.kDouble, 10.0 )
	nAttr.setStorable(True)

	transCircle.aFrames = nAttr.create( "frames", "fr", OpenMaya.MFnNumericData.kDouble, 48.0 )
	nAttr.setStorable(True)

	transCircle.addAttribute( transCircle.aInputTranslate )
	transCircle.addAttribute( transCircle.aInput )
	transCircle.addAttribute( transCircle.aScale )
	transCircle.addAttribute( transCircle.aFrames )
	transCircle.addAttribute( transCircle.aOutputTranslate )

	transCircle.attributeAffects( transCircle.aInputTranslateX, transCircle.aOutputTranslateX )
	transCircle.attributeAffects( transCircle.aInputTranslateY, transCircle.aOutputTranslateY )
	transCircle.attributeAffects( transCircle.aInputTranslateZ, transCircle.aOutputTranslateZ )
	transCircle.attributeAffects( transCircle.aInputTranslate, transCircle.aOutputTranslateX )
	transCircle.attributeAffects( transCircle.aInputTranslate, transCircle.aOutputTranslateY )
	transCircle.attributeAffects( transCircle.aInputTranslate, transCircle.aOutputTranslateZ )
	transCircle.attributeAffects( transCircle.aInputTranslate, transCircle.aOutputTranslate )
	transCircle.attributeAffects( transCircle.aInput, transCircle.aOutputTranslateX )
	transCircle.attributeAffects( transCircle.aInput, transCircle.aOutputTranslateY )
	transCircle.attributeAffects( transCircle.aScale, transCircle.aOutputTranslateX )
	transCircle.attributeAffects( transCircle.aScale, transCircle.aOutputTranslateY )
	transCircle.attributeAffects( transCircle.aFrames, transCircle.aOutputTranslateX )
	transCircle.attributeAffects( transCircle.aFrames, transCircle.aOutputTranslateY )
	
# Creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( transCircle() )
	
# Creators
def cmdCreator():
	return OpenMayaMPx.asMPxPtr(setUpTransCircle())

#- Here is what you need to set up the transCircle node
#- createNode transCircle -n circleNode1
#- sphere -n sphere1 -r 1
#- sphere -n sphere2 -r 2
#- connectAttr sphere2.translate circleNode1.inputTranslate
#- connectAttr circleNode1.outputTranslate sphere1.translate
#- connectAttr time1.outTime circleNode1.input

class setUpTransCircle(OpenMayaMPx.MPxCommand):

	def __init__(self):
		OpenMayaMPx.MPxCommand.__init__(self)
		self.__dgMod = OpenMaya.MDGModifier()
		
	def doIt(self,argList):
		global messageId

		#- Create a transCircle node and two Nurbs spheres
		transCircle = OpenMaya.MObject()
		transCircle = self.__dgMod.createNode("transCircle")
		#- TODO: Rename the node to "circleNode1" 
		#...

		#- TODO: Use MDGMOdifier to simulate executing the following commands 
		#- command "sphere -n sphere1 -r 1;" and command "sphere -n sphere2 -r 2;"
		#...
		#...
		#...
		#...
		#- TODO: Now force these operation to be executed by calling the DG modifier doIt() method.
		#...

		#- The following code is one sample code if you want to simulate "sphere -n sphere1 -r 1" manually from MDGModifier and MDagModifier
		'''
		testNode = OpenMaya.MObject()
		testNode = self.__dgMod.createNode("makeNurbSphere")

		nurbsSphereFn = OpenMaya.MFnDependencyNode(testNode)
		radiusPlug = OpenMaya.MPlug()
		radiusPlug = nurbsSphereFn.findPlug("radius")
		radiusPlug.setFloat(1.0f)
		self.__dgMod.doIt()

		self.dagMod = OpenMaya.MDagModifier()
		nurbsTransform = OpenMaya.MObject()
		nurbsTransform = self.dagMod.createNode("nurbsSurface")
		self.dagMod.doIt()
		outputPlug = OpenMaya.MPlug()
		outputPlug = nurbsSphereFn.findPlug("outputSurface")


		transformFn = OpenMaya.MFnDagNode(nurbsTransform)
		nurbsFn = OpenMaya.MFnDagNode(transformFn.child(0))
		createPlug = OpenMaya.MPlug()
		createPlug = nurbsFn.findPlug("create")

		self.dagMod.connect(outputPlug, createPlug)
		self.dagMod.doIt()
		'''

		selList = OpenMaya.MSelectionList()
		#- Find the Nurbs sphere nodes and transCircle node
		OpenMaya.MGlobal.getSelectionListByName("sphere1",selList)
		sphereDep = OpenMaya.MObject()
		selList.getDependNode(0,sphereDep)
		selList.clear()

		OpenMaya.MGlobal.getSelectionListByName("sphere2",selList)
		sphereTwoDep = OpenMaya.MObject()
		selList.getDependNode(0,sphereTwoDep)
		selList.clear()

		#- Connect attributes between Nurbs sphere and transCircle node
		fnSphere= OpenMaya.MFnDependencyNode(sphereDep)
		fnSphereTwo = OpenMaya.MFnDependencyNode(sphereTwoDep)
		fnTransCircleNode= OpenMaya.MFnDependencyNode(transCircle)

		inputTransAttr = OpenMaya.MObject()
		inputTransAttr = fnTransCircleNode.attribute("inputTranslate")
		sphereTwoTranslateAttr = OpenMaya.MObject()
		sphereTwoTranslateAttr = fnSphereTwo.attribute("translate")
		self.__dgMod.connect(sphereTwoDep,sphereTwoTranslateAttr,transCircle,inputTransAttr)

		#- TODO: Connect the "outputTranslate" circle node attribute with the "translate" "sphere1" node attribute
		#...
		#...
		#...
		
		#- Connect time1 node with transCircle node
		timeNode = OpenMaya.MObject()
		OpenMaya.MGlobal.getSelectionListByName("time1",selList)
		selList.getDependNode(0,timeNode)
		selList.clear()

		fnTimeNode= OpenMaya.MFnDependencyNode(timeNode)
		timeAttr = OpenMaya.MObject()
		timeAttr = fnTimeNode.attribute("outTime")
		inputAttr = OpenMaya.MObject()
		inputAttr = fnTransCircleNode.attribute("input")
		self.__dgMod.connect(timeNode,timeAttr,transCircle,inputAttr)

		#- Now force these operation to be executed by calling the DG modifier doIt() method.
		self.__dgMod.doIt()

	def isUndoable(self):
		return True
	
	def undoIt(self):
		return self.__dgMod.undoIt()
	
	def redoIt(self):
		return self.__dgMod.doIt()

# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerNode( kPluginNodeTypeName, kPluginNodeId, nodeCreator, nodeInitializer )
		
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise
	try:
		
		mplugin.registerCommand( kPluginCmdTypeName, cmdCreator)
	except:
		sys.stderr.write( "Failed to register command: %s" % kPluginCmdTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):

	
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	
	try:
		mplugin.deregisterNode( kPluginNodeId)
		
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise

	try:
		
		mplugin.deregisterCommand( kPluginCmdTypeName )
	except:
		sys.stderr.write( "Failed to deregister command: %s" % kPluginCmdTypeName )
		raise

		