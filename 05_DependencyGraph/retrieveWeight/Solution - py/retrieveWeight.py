#
# Copyright (C) 
# 
# File: retrieveWeight.py
#
# Dependency Graph Node: 
#
# Author: Maya Plug-in Wizard 2.0


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

			#- Verify that the node is a Blend Shape
			if self.blendShapeNode.apiType() == OpenMaya.MFn.kBlendShape:

				weightArrayPlug = fnDep.findPlug("weight")

				#- Find out if this plug is a multi plug
				if weightArrayPlug.isArray():

					plugName = weightArrayPlug.name()
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

						#- Print out the value in every element plug
						valueElem = elementPlug.asDouble()
						print "The value in this element plug is %i" % valueElem

	
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
		

