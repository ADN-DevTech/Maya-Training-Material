#
# Copyright (C) 
# 
# File: simpleNode.cpp
#
# Dependency Graph Node: simpleNode
#
# Author: Maya Plug-in Wizard 2.0
#

import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

#- Assing a unique node ID to your new node class.
#- Ask ADN or Autodesk product support to reserve IDs for your company. You can
#- reserve ID by block of 64, 128, 256, or 512 consecutive ID.
#-
#- 0x80001 is a temporary ID for reserved for development. Never use that ID in a
#- production environment.
kPluginNodeTypeName = "simpleNode"
simpleNodeId = OpenMaya.MTypeId(0x80001)

# Node definition
class simpleNode(OpenMayaMPx.MPxNode):
	# Node attributes
	input = OpenMaya.MObject()
	output = OpenMaya.MObject()
	
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
		
	#- This method computes the value of the given output plug based
	#- on the values of the input attributes.
	#- Arguments:
	#- 	plug - the plug to compute
	#- 	data - object that provides access to the attributes for this node
	def compute(self,plug,dataBlock):
		if ( plug == simpleNode.output ):
			#- Get a handle to the input attribute that we will need for the
			#- computation. If the value is being supplied via a connection 
			#- in the dependency graph, then this call will cause all upstream  
			#- connections to be evaluated so that the correct value is supplied.
			inputData = dataBlock.inputValue( simpleNode.input )
			
			#- Read the input value from the handle.
			result = inputData.asFloat()

			#- Get a handle to the output attribute. This is similar to the
			#- "inputValue" call above except that no dependency graph 
			#- computation will be done as a result of this call.

			#- Get a handle on the aOutput attribute
			outputHandle = dataBlock.outputValue( simpleNode.output )

			#- Set the new output value to the handle.
			outputHandle.setFloat( result * 2 );

			#- Mark the destination plug as being clean. This will prevent the
			#- dependency graph from repeating this calculation until an input 
			#- attribute of this node which affects this output attribute changes.

			#- Tell Maya the plug is now clean
			dataBlock.setClean( plug )

			#- Return success to Maya
			return OpenMaya.MStatus.kSuccess

		#- Tell Maya that we do not know how to handle this plug, but let give a chance
		#- to our parent class to evaluate it.
		return OpenMaya.MStatus.kUnknownParameter

# Creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( simpleNode() )

#- The initialize method is called to create and initialize all of the 
#- attributes and attribute dependencies for this node type. This is 
#- only called once when the node type is registered with Maya.
#- Return Values: OpenMaya.MStatus.kSuccess / OpenMaya.MStatus.kFailure
#-
def nodeInitializer():
	#- Initialize a float input attribute using the MFnNumericAttribute
	#- class. Make that attribute definition saved into Maya file (setStorable),
	#- and selectable in the channel box (setKeyable).

	#- Create a generic attribute using MFnNumericAttribute
	nAttr = OpenMaya.MFnNumericAttribute()
	simpleNode.input = nAttr.create( "input", "in", OpenMaya.MFnNumericData.kFloat, 0.0 )
	#- Attribute will be written to files when this type of node is stored
 	nAttr.setStorable(1)
	#- Attribute is keyable and will show up in the channel box
 	nAttr.setKeyable(1)

	#- Initialize a float output attribute using the MFnNumericAttribute
	#- class. Make that attribute definition not saved into Maya file.
	simpleNode.output = nAttr.create( "output", "out", OpenMaya.MFnNumericData.kFloat, 0.0 )
	#- Attribute will not be written to files when this type of node is stored
	nAttr.setStorable(0)
	
	
	#- Now add the attribute to your node definition using the addAttribute()
	#- method.

	#- Add the attributes we have created to the node
	simpleNode.addAttribute( simpleNode.input );	
	#- Add the aOutput attribute to the node type definition
	simpleNode.addAttribute( simpleNode.output );
	
	#- Finally tell Maya how the information should flow through your node.
	#- This will also tell Maya how the dirty flag is propagated in your node
	#- and ultimatelly in the Maya DG. To do this, use the attributeAffects()
	#- method to link your node' attributes together.

	#- Set up a dependency between the input and the output. This will cause
	#- the output to be marked dirty when the input changes. The output will
	#- then be recomputed the next time the value of the output is requested.
	simpleNode.attributeAffects( simpleNode.input, simpleNode.output );

# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerNode( kPluginNodeTypeName, simpleNodeId, nodeCreator, nodeInitializer )
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterNode( simpleNodeId )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise
