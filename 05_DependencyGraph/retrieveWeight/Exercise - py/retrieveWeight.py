# Copyright (C) 
# 
# Author: Autodesk Developer Network

#For this exercise, search for the TODO keywords and follow the instructions in
#comments. If you are unsure of what you need to do, feel free to ask the instructor
#or look into the solution folder.
#Each #... line is a line of code you need to write or complete.

import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx
import sys

kPluginNodeTypeName = "retrieveWeight"

# Node definition
class retrieveWeight(OpenMayaMPx.MPxCommand):
	def __init__(self):
		OpenMayaMPx.MPxCommand.__init__(self)
		
	def doIt(self, args):
	

		self.blendShapeNode = OpenMaya.MObject()
		selList = OpenMaya.MSelectionList()

		#- Get the selected blendShape node
		OpenMaya.MGlobal.getActiveSelectionList(selList)

		if selList.length()!=0:

			selList.getDependNode(0,self.blendShapeNode)
			fnDep = OpenMaya.MFnDependencyNode(self.blendShapeNode)

			#- TODO: Verify that the node is a Blend Shape
			if #...

				weightArrayPlug = fnDep.findPlug("weight")

				#- TODO: Find out if this plug is a multi plug
				if  #...

					#- TODO: Get the name of the plug and print it
					plugName = #...
					print "Plug %s is an array plug." % plugName

					#- Find how many elements are in this multi plug
					numberOfElem = weightArrayPlug.numElements()
					print "This plug has %s elements." % numberOfElem

					#- Traverse all the element plugs 
					for j in range(numberOfElem):

						#- You can also use like the following line, [], because bracket operator uses physical indexes
						#- MPlug elementPlug = weightArrayPlug [i]

						elementPlug = weightArrayPlug.elementByPhysicalIndex(j)

						#- Print out the element plug's physical index and logical index
						print "Physical index: %s; Logical index: %s" % (j, elementPlug.logicalIndex())

						#- TODO: Get the value in every element plug
						valueElem = #...
						print "The value in this element plug is %f" % valueElem

	
# Creator
def nodeCreator():
	return OpenMayaMPx.asMPxPtr( retrieveWeight() )

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
	mplugin = OpenMayaMPx.MFnPlugin(mobject)
	try:
		mplugin.deregisterCommand( kPluginNodeTypeName )
	except:
		sys.stderr.write( "Failed to deregister node: %s" % kPluginNodeTypeName )
		raise
		

