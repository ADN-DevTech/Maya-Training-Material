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
#import sys
#import maya.OpenMaya as OpenMaya
#import maya.OpenMayaMPx as OpenMayaMPx

kPluginCmdName = "spHelloWorld"

# Command
class scriptedCommand(OpenMayaMPx.MPxCommand):
#- TODO: Add Implementation of __init__(self) and doIt(self,argList)
#	def __init__(self):
#		OpenMayaMPx.MPxCommand.__init__(self)
#
#	def doIt(self,argList):
#		print "Hello World!"


# Creator
def cmdCreator():
#- TODO: Implement the creator and apply asMPxPtr() to it
#	return OpenMayaMPx.asMPxPtr( scriptedCommand() )
	
# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
#- TODO: Register this custom command                
#		mplugin.registerCommand( kPluginCmdName, cmdCreator )
	except:
		sys.stderr.write( "Failed to register command: %s\n" % kPluginCmdName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
#- TODO: Deregister this custom command                 
#		mplugin.deregisterCommand( kPluginCmdName )
	except:
		sys.stderr.write( "Failed to unregister command: %s\n" % kPluginCmdName )
		raise
