# 
# File: 
#
# Dependency Graph Node: 
#
# Author: Maya Plug-in Wizard 2.0
#
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
		if argData.isFlagSet(kQuietFlag):
			self.quiet = 1
	
	#- This method performs the action of the command. It iterates over all
	#- selected items and prints out connected plug and dependency node type
	#- information.
	def doIt(self, args):
		self.parseArgs ( args )

		#- Select all objects currently selected into the Maya editor.
		slist = OpenMaya.MSelectionList()
		OpenMaya.MGlobal.getActiveSelectionList( slist )
		
		#- Create an iterator on the selection list (using the iterator pattern).
		iter = OpenMaya.MItSelectionList(slist)
	
		#- Iterate over all selected dependency nodes
		dependNode = OpenMaya.MObject()
		fnDependNode = OpenMaya.MFnDependencyNode()
		while (iter.isDone() == 0):
			#- Get the selected dependency node
			iter.getDependNode( dependNode )

			#- Create a function set for the dependency node
			fnDependNode.setObject( dependNode )

			#- Check the type of the dependency node
			nodeName = fnDependNode.name()
			print "######################"
			sys.stdout.write( '\n' )
			print nodeName 
			print " is of type %s" % dependNode.apiTypeStr()
			sys.stdout.write( '\n' )

			#- Get all connected plugs to this node
			try:
				connectedPlugs = OpenMaya.MPlugArray()
				try:
					fnDependNode.getConnections(connectedPlugs)
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
					
					plug.connectedTo( array, 1, 0 )
					
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

		#- Return success to Maya
		return OpenMaya.MStatus.kSuccess
		
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
		mplugin.registerCommand( kPluginCmdName, cmdCreator, syntaxCreator )
	except:
		sys.stderr.write( "Failed to register command: %s\n" % kPluginCmdName )

# Uninitialize the script plug-in
def uninitializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterCommand( kPluginCmdName )
	except:
		sys.stderr.write( "Failed to unregister command: %s\n" % kPluginCmdName )

