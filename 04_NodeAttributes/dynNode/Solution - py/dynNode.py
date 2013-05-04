#
# Copyright (C) 
# 
# File: dynNode.py
#
# Dependency Graph Node: 
#
# Author: Maya Plug-in Wizard 2.0
#

import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx
import sys

#- Assigning a unique node ID to your new node class.
#- Ask ADN or Autodesk product support to reserve IDs for your company. You can
#- reserve ID by block of 64, 128, 256, or 512 consecutive ID.
#-
#- 0x00001 is a temporary ID for reserved for development. Never use that ID in a
#- production environment.

kPluginNodeTypeName = "dynNode"
dynNodeId = OpenMaya.MTypeId(0x00001)

# Node definition
class dynNode(OpenMayaMPx.MPxNode):
	aInput = OpenMaya.MObject()        
	aOutput = OpenMaya.MObject()  
	dynAttr = OpenMaya.MObject()  
		
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
		
	#- This method computes the value of the given output plug based
	#- on the values of the input attributes.
	#- Arguments:
	#- 	plug - the plug to compute
	#- 	data - object that provides access to the attributes for this node
	def compute(self,plug,data):
		#- Check which output attribute we have been asked to compute. If this 
		#- node doesn't know how to compute it, you must return MS::kUnknownParameter.

		if plug == dynNode.aOutput:
			#- Get a handle to the input attribute that we will need for the
			#- computation. If the value is being supplied via a connection 
			#- in the dependency graph, then this call will cause all upstream  
			#- connections to be evaluated so that the correct value is supplied.
			inputData = data.inputValue(dynNode.aInput)
			#- Read the input value from the handle.

			inputValue = inputData.asFloat()
			print inputValue
			
			#- Since output is affected by the dynamic attribute too, 
			#- retrieve the dynamic attribute value
			dynData = data.inputValue(self.dynAttr)
			dynValue = dynData.asFloat()
			print dynValue
			
			#- Get a handle to the output attribute. This is similar to the
			#- "inputValue" call above except that no dependency graph 
			#- computation will be done as a result of this call.

			#- Get a handle on the aOutput attribute
			outputHandle = data.outputValue(dynNode.aOutput)
			
			#- Set the new output value to the handle.
			print "combined Value", inputValue + dynValue 
			outputHandle.setFloat( inputValue + dynValue )
			
		#- Tell Maya that we do not know how to handle this plug, but let's give a chance
		#- to our parent class to evaluate it.
		else:
			return OpenMaya.kUnknownParameter
			
	#- No MPxNode member function can be called from the MPxNode constructor. 
	#- The postConstructor will get called immediately after the constructor 
	#- so it is safe to call any MPxNode member function in postConstructor().
	def postConstructor(self):
		#- Create a dynamic float attribute and add it onto the node
		nAttr = OpenMaya.MFnNumericAttribute()
		self.dynAttr = nAttr.create( "dynAttr", "da", OpenMaya.MFnNumericData.kFloat, 0.0 )
		nAttr.setStorable(True)
		nAttr.setKeyable(True)
	
		#- Add this dynamic attribute onto this node
		#- You cannot call addAttribute() directly, if you look into the MPxNode
		#- documentation, addAttribute()only works during the static initialization 
		#- method of the user defined node class
		thisNode = self.thisMObject()
		fnThisNode = OpenMaya.MFnDependencyNode(thisNode)
		print "Adding Dynamic Attribute"
		fnThisNode.addAttribute(self.dynAttr)

	
	#- The setDependentsDirty() method allows attributeAffects relationships
	#- in a much more general way than via MPxNode::attributeAffects
	#- which is limited to static attributes only.
	#- The setDependentsDirty() method allows relationships to be established
	#- between any combination of dynamic and static attributes.
	#-
	#- Within a setDependentsDirty(), you get passed in the
	#- plug (the first argument "dirtyPlug"), which is being set dirty, 
	#- and then, based upon which plug it is,you may choose to dirty any other 
	#- plugs by adding them to the affectedPlugs list (the second argument "plugArray").
	#- Arguments:
	#- 	dirtyPlug - the plug which Maya sets dirty
	#- 	plugArray - an array of plugs which are affected by the first plug
	def setDependentsDirty(self, dirtyPlug, plugArray):
		#- This code shows how to make a dynamic attribute (dynAttr)
		#- affect a static attribute (output)
	
		#- Check if the dynamic attribute is set to dirty by Maya
		if dirtyPlug == self.dynAttr:
			#- Set the output plug to be affected by this dynamic attribute
			#- by adding the output plug onto the plugArray 
			thisNode = self.thisMObject()
			try:
				plug = OpenMaya.MPlug(thisNode, dynNode.aOutput)
				plugArray.append(plug) 
			except:
				pass
				
		return OpenMayaMPx.MPxNode.setDependentsDirty(self, dirtyPlug, plugArray) 


# Creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( dynNode() )


#- The initialize method is called to create and initialize all of the 
#- attributes and attribute dependencies for this node type. This is 
#- only called once when the node type is registered with Maya.
#- Return Values: MS::kSuccess / MS::kFailure
def nodeInitializer():

	#- Initialize a float input attribute using the MFnNumericAttribute
	#- class. Make that attribute definition saved into Maya file (setStorable),
	#- and selectable in the channel box (setKeyable).

	#- Create a generic attribute using MFnNumericAttribute
	nAttr = OpenMaya.MFnNumericAttribute()
	dynNode.aInput = nAttr.create( "input", "in", OpenMaya.MFnNumericData.kFloat, 0.0 )
	#- Attribute will be written to files when this type of node is stored
 	nAttr.setStorable(True)
	#- Attribute is keyable and will show up in the channel box
 	nAttr.setKeyable(True)

	#- Initialize a float output attribute using the MFnNumericAttribute
	#- class. Make that attribute is not saved into Maya file.
	dynNode.aOutput = nAttr.create( "output", "out", OpenMaya.MFnNumericData.kFloat, 0.0 )
	#- Attribute will not be written to files when this type of node is stored
	nAttr.setStorable(False)

	#- Now add the attribute to your node definition using the addAttribute()
	#- method.
	dynNode.addAttribute( dynNode.aInput )
	dynNode.addAttribute( dynNode.aOutput )
	
	#- Finally tell Maya how the information should flow through your node.
	#- This will also tell Maya how the dirty flag is propagated in your node
	#- and ultimately in the Maya DG. To do this, use the attributeAffects()
	#- method to link your node' attributes together.
	#- Set up a dependency between the input and the output. This will cause
	#- the output to be marked dirty when the input changes. The output will
	#- then be recomputed the next time the value of the output is requested.
	dynNode.attributeAffects( dynNode.aInput, dynNode.aOutput )

# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerNode( kPluginNodeTypeName, dynNodeId, nodeCreator, nodeInitializer )
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterNode( dynNodeId )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise