# Copyright (C) 
# 
# Author: Autodesk Developer Network

#For this exercise, search for the TODO keywords and follow the instructions in
#comments. If you are unsure of what you need to do, feel free to ask the instructor
#or look into the solution folder.
#Each #... line is a line of code you need to write or complete.

#- TODO: Import all the necessary modules here
#...

kPluginNodeTypeName = "spSineNode"

#- TODO: Allocate a type id for your custom node
#...

# Node definition
class sineNode(OpenMayaMPx.MPxNode):

#- TODO: Define your class variables
#...
	def __init__(self):
                OpenMayaMPx.MPxNode.__init__(self)

#- TODO: Add Implementation of compute
#...
		if ( plug == sineNode.output ):
#- TODO: Get handle of input attribute and data from the handle
#...
			result = math.sin( inputFloat ) * 10.0
			outputHandle = dataBlock.outputValue( sineNode.output )
			outputHandle.setFloat( result )
			dataBlock.setClean( plug )

		return OpenMaya.kUnknownParameter

# creator
def nodeCreator():
#- TODO: Implement the creator and apply asMPxPtr() to it
#...

# initializer
def nodeInitializer():
	# input
#- TODO: Create an input attribute with name "input"	
#...
	nAttr.setStorable(1)
	# output
	nAttr = OpenMaya.MFnNumericAttribute()
	sineNode.output = nAttr.create( "output", "out", OpenMaya.MFnNumericData.kFloat, 0.0 )
	nAttr.setStorable(1)
	nAttr.setWritable(1)
#- TODO: Add attributes and set up relationship
#...
	
# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
#- TODO: Register this custom node                
#...
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
#- TODO: Deregister this custom node                 
#...
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise
	
