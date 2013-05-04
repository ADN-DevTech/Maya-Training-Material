# Copyright (C) 
# 
# Author: Autodesk Developer Network

#For this exercise, search for the TODO keywords and follow the instructions in
#comments. If you are unsure of what you need to do, feel free to ask the instructor
#or look into the solution folder.
#Each #... line is a line of code you need to write or complete.

# Python script to execute to test the sample in the Maya Script Editor
# import maya
# maya.cmds.loadPlugin("helloWorldCmd.py")
# maya.cmds.spHelloWorld()

#- Import all the necessary modules here
#TODO: ...

kPluginCmdName = "spHelloWorld"

# class implementation for custom command
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