# Copyright (C) 
# 
# Author: Autodesk Developer Network

#For this exercise, search for the TODO keywords and follow the instructions in
#comments. If you are unsure of what you need to do, feel free to ask the instructor
#or look into the solution folder.
#Each #... line is a line of code you need to write or complete.

import sys
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

# Command name
kPluginCmdName = "nodeInfoCmd"

# Command switch short and long names
kQuietFlag = "-q"
kQuietFlagLong = "-quiet"

# nodeInfoCmd command
class nodeInfoCmd(OpenMayaMPx.MPxCommand):
	
	def __init__(self):
		OpenMayaMPx.MPxCommand.__init__(self)
		self.quiet = 0
	
	#- This is a method which will be used by our command doIt() method to
	#- check arguments passed into our command call.
	def parseArgs ( self, args ):
		argData = OpenMaya.MArgDatabase( self.syntax(), args)
		if (argData.isFlagSet(kQuietFlag)):
			self.quiet = 1
	
	#- This method performs the action of the command. It iterates over all
	#- selected items and prints out connected plug and dependency node type
	#- information.
	#- TODO: Define the method called by Maya to execute your command (the 
	#- function argument will be named args for this exercise).
	def #...
		self.parseArgs ( args )

		#- TODO: Select all objects currently selected into the Maya editor.
		slist = OpenMaya.MSelectionList()
		#...
		
		#- Create an iterator on the selection list (using the iterator pattern).
		iter = OpenMaya.MItSelectionList(slist)
	
		#- Iterate over all selected dependency nodes
		dependNode = OpenMaya.MObject()
		fnDependNode = OpenMaya.MFnDependencyNode()
		while (iter.isDone() == 0):
			#- TODO: Get the selected dependency node
			#...

			#- TODO: Create a function set for the dependency node
			#...
			if  not self.quiet:
				#- Check the type of the dependency node
				nodeName = fnDependNode.name()
				print "######################"
				sys.stdout.write( '\n' )
				print nodeName 
				print " is of type %s" % dependNode.apiTypeStr()
				sys.stdout.write( '\n' )

			#- TODO: Get all connected plugs to this node
			try:
				connectedPlugs = OpenMaya.MPlugArray()
				try:
					#...
				except:					
					pass

				numberOfPlugs = connectedPlugs.length()
				if  not self.quiet:
					print "Number of connections found: %d " % numberOfPlugs
					sys.stdout.write( '\n' )

				#- Print out the dependency node name and attributes
				#- for each plug
				for i in range( 0, numberOfPlugs ): 
					plug = connectedPlugs[i]
					pinfo = plug.info()
					if  not self.quiet:
						print " Connected Plug Info: %s" % pinfo
						sys.stdout.write( '\n' )

					#- Now get the plugs that this plug is the
					#- destination of and print the node type.
					array = OpenMaya.MPlugArray()
					#- TODO: Get the list of plugs, this plug is connected to.
					#...
					for j in range( 0, array.length() ): 
						mnode = array[j].node()
						if  not self.quiet:
							fnConnectedNode = OpenMaya.MFnDependencyNode(mnode)
							print " This plug is a destination of node: %s" % fnConnectedNode.name()
							sys.stdout.write( '\n' )
			except:
				sys.stderr.write( "Failed to get connections: %s" % kPluginCmdName)
				#raise

			iter.next()

	
# Creator
def cmdCreator():
	return OpenMayaMPx.asMPxPtr( nodeInfoCmd() )

#- Create a new MSyntax object to teach Maya about possible arguments
#- in our command. This newSyntax() method is used during the command
#- registration into our plug-in
# Syntax creator
def syntaxCreator():
	syntax = OpenMaya.MSyntax()
	syntax.addFlag(kQuietFlag, kQuietFlagLong)
	return syntax

# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		#- TODO: Register your command into Maya, and make sure you define a syntax
		#...
	except:
		sys.stderr.write( "Failed to register command: %s\n" % kPluginCmdName )

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		#- TODO: unregister your command from Maya before you unload.
		#...
	except:
		sys.stderr.write( "Failed to unregister command: %s\n" % kPluginCmdName )

