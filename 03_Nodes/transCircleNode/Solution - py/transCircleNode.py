#
# Copyright (C) 
# 
# File: transCircleNode.py
#
# Dependency Graph Node: 
#
# Author: Maya Plug-in Wizard 2.0
#
import sys, math
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

#- Assing a unique node ID to your new node class.
#- Ask ADN or Autodesk product support to reserve IDs for your company. You can
#- reserve ID by block of 64, 128, 256, or 512 consecutive ID.
#-
#- 0x80013 is a temporary ID for reserved for development. Never use that ID in a
#- production environement.
kPluginNodeTypeName = "transCircle"
transCircleNodeId = OpenMaya.MTypeId(0x80013)

# Node definition
class transCircleNode(OpenMayaMPx.MPxNode):
	# Node attributes
	#- Compound attributes in Maya are build from several individual attributes. In
	#- our example the translation vector is made of the x,y,z attributes, and the
	#- compound attribute itself.
	inputTranslateX = OpenMaya.MObject() # The translate X value.  (input)
	inputTranslateY = OpenMaya.MObject() # The translate Y value.  (input)
	inputTranslateZ = OpenMaya.MObject() # The translate Z value.  (input)
	inputTranslate = OpenMaya.MObject()

	outputTranslateX = OpenMaya.MObject() # The translate X value.  (output)
	outputTranslateY = OpenMaya.MObject() # The translate Y value.  (output)
	outputTranslateZ = OpenMaya.MObject() # The translate Z value.  (output)
	outputTranslate = OpenMaya.MObject()

	frames = OpenMaya.MObject() # Number of frames for one circle.
	scale = OpenMaya.MObject() # Radius of circle.
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
		
	#- This method computes the value of the given output plug based
	#- on the values of the input attributes.
	#- Arguments:
	#- 	plug - the plug to compute
	#- 	dataBlock - object that provides access to the attributes for this node
	def compute(self,plug,dataBlock):
		#- Check which output attribute we have been asked to compute. If this 
		#- node doesn't know how to compute it, you must return MS::kUnknownParameter.

		if ( plug == transCircleNode.outputTranslateX or plug == transCircleNode.outputTranslateY or plug == transCircleNode.outputTranslateZ or plug == transCircleNode.outputTranslate ):
			

			#- Get a handle on the input attributes that we will need for the
			#- computation. If the value is being supplied via a connection 
			#- in the dependency graph, then this call will cause all upstream  
			#- connections to be evaluated so that the correct value is supplied.

			inputData = dataBlock.inputValue( transCircleNode.input )
			scaleData = dataBlock.inputValue( transCircleNode.scale )
			framesData = dataBlock.inputValue( transCircleNode.frames )

			#- Retrieve value of current frame attribute,scale factor 
			#- and number of frames for one circle 
			currentFrame = inputData.asDouble()
			scaleFactor  = scaleData.asDouble()
			framesPerCircle = framesData.asDouble()
			
			#- Retrieve values on individual input translate attribute
			inputTranslateXHandle = dataBlock.inputValue(transCircleNode.inputTranslateX)
			inputTranslateXData = inputTranslateXHandle.asDouble()

			inputTranslateYHandle = dataBlock.inputValue(transCircleNode.inputTranslateY)
			inputTranslateYData = inputTranslateYHandle.asDouble()

			inputTranslateZHandle = dataBlock.inputValue(transCircleNode.inputTranslateZ)
			inputTranslateZData = inputTranslateZHandle.asDouble()

			#- Calculate corresponding angle based on current frame 
			angle = 6.2831853 * ( currentFrame/framesPerCircle )

			#- The value of output translate is input translate value plus the value of circular movement  
			outputTranslateXData = inputTranslateXData + (math.sin( angle ) * scaleFactor)
			outputTranslateYData = inputTranslateYData + 1.0
			outputTranslateZData = inputTranslateZData + (math.cos( angle ) * scaleFactor)

			#- Get a handle on the output attributes and set the new value.
			outputTranslateXHandle = dataBlock.outputValue( transCircleNode.outputTranslateX ) 
			outputTranslateXHandle.setDouble(outputTranslateXData)

			outputTranslateYHandle = dataBlock.outputValue( transCircleNode.outputTranslateY ) 
			outputTranslateYHandle.setDouble(outputTranslateYData)

			outputTranslateZHandle = dataBlock.outputValue( transCircleNode.outputTranslateZ ) 
			outputTranslateZHandle.setDouble(outputTranslateZData)

			#- Tell Maya the plug is now clean
			dataBlock.setClean( plug )
		else:
			return OpenMaya.kUnknownParameter

# Creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( transCircleNode() )

#- The initialize method is called to create and initialize all of the 
#- attributes and attribute dependencies for this node type. This is 
#- only called once when the node type is registered with Maya.
#-
def nodeInitializer():
	#- Create a generic attribute using MFnNumericAttribute
	nAttr = OpenMaya.MFnNumericAttribute()
	transCircleNode.input = nAttr.create( "input", "in", OpenMaya.MFnNumericData.kDouble, 0.0 )
	#- Attribute will be written to files when this type of node is stored
	nAttr.setStorable(1)

	#- Create individual input translate attributes
	transCircleNode.inputTranslateX = nAttr.create( "inputTranslateX", "itX", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setStorable(1)

	transCircleNode.inputTranslateY = nAttr.create( "inputTranslateY", "itY", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setStorable(1)

	transCircleNode.inputTranslateZ = nAttr.create( "inputTranslateZ", "itZ", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setStorable(1)

	#- Create compound input translate attributes and add individual input translate attributes
	comAttr = OpenMaya.MFnCompoundAttribute()
	transCircleNode.inputTranslate = comAttr.create("inputTranslate","it")
	comAttr.addChild(transCircleNode.inputTranslateX)
	comAttr.addChild(transCircleNode.inputTranslateY)
	comAttr.addChild(transCircleNode.inputTranslateZ)
	comAttr.setStorable(1)

	#- Create individual output translate attributes
	transCircleNode.outputTranslateX = nAttr.create( "outputTranslateX", "otX", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setWritable(0)
	nAttr.setStorable(1)

	transCircleNode.outputTranslateY = nAttr.create( "outputTranslateY", "otY", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setWritable(0)
	nAttr.setStorable(1)

	transCircleNode.outputTranslateZ = nAttr.create( "outputTranslateZ", "otZ", OpenMaya.MFnNumericData.kDouble, 0.0 )
	nAttr.setWritable(0)
	nAttr.setStorable(1)

	#- Create compound output translate attributes and add individual output translate attributes
	transCircleNode.outputTranslate = comAttr.create("outputTranslate","ot")
	comAttr.addChild(transCircleNode.outputTranslateX)
	comAttr.addChild(transCircleNode.outputTranslateY)
	comAttr.addChild(transCircleNode.outputTranslateZ)
	comAttr.setWritable(0)
	comAttr.setStorable(1)

	#- Create other attributes for our node
	transCircleNode.scale = nAttr.create( "scale", "sc", OpenMaya.MFnNumericData.kDouble, 10.0 )
	nAttr.setStorable(1)

	transCircleNode.frames = nAttr.create( "frames", "fr", OpenMaya.MFnNumericData.kDouble, 48.0 )
	nAttr.setStorable(1)

	#- Now add the attribute to your node definition using the addAttribute()
	#- method.

	#- Add the attributes we have created to the node. For compound attributes,
	#- you only need to add the parent attribute.
	transCircleNode.addAttribute( transCircleNode.input )
	transCircleNode.addAttribute( transCircleNode.inputTranslate )
	transCircleNode.addAttribute( transCircleNode.outputTranslate )
	transCircleNode.addAttribute( transCircleNode.scale )
	transCircleNode.addAttribute( transCircleNode.frames )

	#- Finally tell Maya how the information should flow through your node.
	#- This will also tell Maya how the dirty flag is propagated in your node
	#- and ultimatelly in the Maya DG. To do this, use the attributeAffects()
	#- method to link your node' attributes together.

	#- Set up a dependency between the input and the output. This will cause
	#- the output to be marked dirty when the input changes. The output will
	#- then be recomputed the next time the value of the output is requested.

	#- All input compound attributes' component will affects the output components
	#- of the output compound attributes' components. Including the parent attribute.
	transCircleNode.attributeAffects( transCircleNode.inputTranslateX, transCircleNode.outputTranslateX )
	transCircleNode.attributeAffects( transCircleNode.inputTranslateY, transCircleNode.outputTranslateY )
	transCircleNode.attributeAffects( transCircleNode.inputTranslateZ, transCircleNode.outputTranslateZ )
	transCircleNode.attributeAffects( transCircleNode.inputTranslate, transCircleNode.outputTranslateX )
	transCircleNode.attributeAffects( transCircleNode.inputTranslate, transCircleNode.outputTranslateY )
	transCircleNode.attributeAffects( transCircleNode.inputTranslate, transCircleNode.outputTranslateZ )
	transCircleNode.attributeAffects( transCircleNode.inputTranslate, transCircleNode.outputTranslate )

	#- Other relationships,
	transCircleNode.attributeAffects( transCircleNode.input, transCircleNode.outputTranslateX )
	transCircleNode.attributeAffects( transCircleNode.input, transCircleNode.outputTranslateY )
	transCircleNode.attributeAffects( transCircleNode.scale, transCircleNode.outputTranslateX )
	transCircleNode.attributeAffects( transCircleNode.scale, transCircleNode.outputTranslateY )
	transCircleNode.attributeAffects( transCircleNode.frames, transCircleNode.outputTranslateX )
	transCircleNode.attributeAffects( transCircleNode.frames, transCircleNode.outputTranslateY )

# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerNode( kPluginNodeTypeName, transCircleNodeId, nodeCreator, nodeInitializer )
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterNode( transCircleNodeId )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise