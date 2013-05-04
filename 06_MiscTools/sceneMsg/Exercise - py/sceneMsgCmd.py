

import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx
import sys

kPluginNodeTypeName = "sceneMsgCmd"


IDs = OpenMaya.MCallbackIdArray()


def removeCallback(ID):

	for i in range(ID.length()):
		try:
			#- TODO: You are responsible to remove all the callbacks you have registered in your plug-in code
			#...
		except:
			sys.stderr.write( "Failed to remove callback\n" )
			raise


def sceneMsgCmd():
	#- Clean up callback id array
	IDs.clear()

#- Message callbacks
def openCallback(clienData):
	print "The callback registered for MSceneMessage::kBeforeOpen is executed."

def newCallback(clienData):
	print "The callback registered for MSceneMessage::kAfterNew is executed."


def saveCheckCallback(retCode, clienData):
	print "The callback registered for MSceneMessage::kBeforeSaveCheck is executed."

	#- Abort the operation by setting retCode to point to false
	retCode = False

	print "Abort current operations.../n"	

class sceneMsgCmd(OpenMayaMPx.MPxCommand):

	def __init__(self):
		OpenMayaMPx.MPxCommand.__init__(self)
		
	def doIt(self,argList):
		return self.redoIt()
	
	def redoIt(self):
		#- TODO: Register callback for MSceneMessage::kBeforeOpen message
		openCallbackId = #...
		IDs.append(openCallbackId)

		#- TODO: Register callback for MSceneMessage::kAfterNew message
		newCallbackId = #...
		IDs.append(newCallbackId)

		#- TODO: Register callback for MSceneMessage::kBeforeSave message
		saveCheckCallbackId = #...
		IDs.append(saveCheckCallbackId)
		
		return
		
	def undoIt(self):
		if IDs.length()!= 0: 
			removeCallback(IDs)
		return
		
	
# Creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( sceneMsgCmd() )

# Initialize the script plug-in
def initializePlugin(mobject):
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.registerCommand( kPluginNodeTypeName, nodeCreator)
	except:
		sys.stderr.write( "Failed to register node: %s" % kPluginNodeTypeName )
		raise

# Uninitialize the script plug-in
def uninitializePlugin(mobject):

	# Remove the callback
	if IDs.length()!= 0:
		removeCallback( IDs )
		
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterCommand( kPluginNodeTypeName )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise
		