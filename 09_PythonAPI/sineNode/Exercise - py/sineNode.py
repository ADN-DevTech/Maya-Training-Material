#
# Copyright (C) 
# 
# File: sineNode.py
#
# Dependency Graph Node: sineNode
#
# Author: 
#

#- TODO: Import all the necessary modules here
#import math, sys
#import maya.OpenMaya as OpenMaya
#import maya.OpenMayaMPx as OpenMayaMPx

kPluginNodeTypeName = "spSineNode"

#- TODO: Allocate a type id for your custom node
#sineNodeId = OpenMaya.MTypeId(0x87000)

# Node definition
class sineNode(OpenMayaMPx.MPxNode):

#- TODO: Define your class variables
#	input = OpenMaya.MObject()
#	output = OpenMaya.MObject()
	def __init__(self):
                OpenMayaMPx.MPxNode.__init__(self)

#- TODO: Add Implementation of compute
#        def compute(self,plug,dataBlock):
		if ( plug == sineNode.output ):
#- TODO: Get handle of input attribute and data from the handle
#			dataHandle = dataBlock.inputValue( sineNode.input )			
#			inputFloat = dataHandle.asFloat()
			result = math.sin( inputFloat ) * 10.0
			outputHandle = dataBlock.outputValue( sineNode.output )
			outputHandle.setFloat( result )
			dataBlock.setClean( plug )

		return OpenMaya.kUnknownParameter

# creator
def nodeCreator():
#- TODO: Implement the creator and apply asMPxPtr() to it
#       return OpenMayaMPx.asMPxPtr( sineNode() )

# initializer
def nodeInitializer():
	# input
#- TODO: Create an input attribute with name "input"	
#	nAttr = OpenMaya.MFnNumericAttribute()
#	sineNode.input = nAttr.create( "input", "in", OpenMaya.MFnNumericData.kFloat, 0.0 )
	nAttr.setStorable(1)
	# output
	nAttr = OpenMaya.MFnNumericAttribute()
	sineNode.output = nAttr.create( "output", "out", OpenMaya.MFnNumericData.kFloat, 0.0 )
	nAttr.setStorable(1)
	nAttr.setWritable(1)
#- TODO: Add attributes and set up relationship
#	sineNode.addAttribute( sineNode.input )
#	sineNode.addAttribute( sineNode.output )
#	sineNode.attributeAffects( sineNode.input, sineNode.output )
	
# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
#- TODO: Register this custom node                
#		mplugin.registerNode( kPluginNodeTypeName, sineNodeId, nodeCreator, nodeInitializer )
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
#- TODO: Deregister this custom node                 
#		mplugin.deregisterNode( sineNodeId )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise
	
