#
# Copyright (C) 
# 
# File: sineNode.py
#
# Dependency Graph Node: sineNode
#
# Author: 
#

import math, sys

import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

kPluginNodeTypeName = "spSineNode"

sineNodeId = OpenMaya.MTypeId(0x87000)

# Node definition
class sineNode(OpenMayaMPx.MPxNode):
	# class variables
	input = OpenMaya.MObject()
	output = OpenMaya.MObject()
	def __init__(self):
		OpenMayaMPx.MPxNode.__init__(self)
	def compute(self,plug,dataBlock):
		if ( plug == sineNode.output ):
			dataHandle = dataBlock.inputValue( sineNode.input )
			
			inputFloat = dataHandle.asFloat()
			result = math.sin( inputFloat ) * 10.0
			outputHandle = dataBlock.outputValue( sineNode.output )
			outputHandle.setFloat( result )
			dataBlock.setClean( plug )

		return OpenMaya.kUnknownParameter

# creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( sineNode() )

# Initializer
def nodeInitializer():
	# input
	nAttr = OpenMaya.MFnNumericAttribute()
	sineNode.input = nAttr.create( "input", "in", OpenMaya.MFnNumericData.kFloat, 0.0 )
	nAttr.setStorable(1)
	# output
	nAttr = OpenMaya.MFnNumericAttribute()
	sineNode.output = nAttr.create( "output", "out", OpenMaya.MFnNumericData.kFloat, 0.0 )
	nAttr.setStorable(1)
	nAttr.setWritable(1)
	# add attributes
	sineNode.addAttribute( sineNode.input )
	sineNode.addAttribute( sineNode.output )
	sineNode.attributeAffects( sineNode.input, sineNode.output )
	
# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerNode( kPluginNodeTypeName, sineNodeId, nodeCreator, nodeInitializer )
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterNode( sineNodeId )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise
	
