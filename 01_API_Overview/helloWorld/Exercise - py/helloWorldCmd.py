#
# Copyright (C) 
# 
# File: helloWorld.py
#
# Dependency Graph Node: arrowLocator
#
# Author: 
#

#- Python script to execute to test the sample in the Maya script editor
# import maya
# maya.cmds.loadPlugin("helloWorldCmd.py")
# maya.cmds.spHelloWorld()

#- TODO: Import all the necessary modules here
#...

kPluginCmdName = "spHelloWorld"

# Command
class scriptedCommand(OpenMayaMPx.MPxCommand):
#- TODO: Add Implementation of __init__(self) and doIt(self,argList)
#...


# Creator
#- TODO: Implement the creator function and apply asMPxPtr() to it
#...
	
# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
#- TODO: Register this custom command                
#...
	except:
		sys.stderr.write( "Failed to register command: %s\n" % kPluginCmdName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
#- TODO: Deregister this custom command                 
#...
	except:
		sys.stderr.write( "Failed to unregister command: %s\n" % kPluginCmdName )
		raise
