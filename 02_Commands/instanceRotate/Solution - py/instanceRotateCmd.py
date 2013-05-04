#
# Copyright (C) 
# 
# File: instanceRotateCmd.py
#
# MEL Command: instanceRotate
#
# Author: Maya Plug-in Wizard 2.0
#
import sys, random
import maya.OpenMaya as OpenMaya
import maya.OpenMayaMPx as OpenMayaMPx

# Command name
kPluginCmdName = "instanceRotate"

# Command switch short and long names
ROTATEFLAG = "-r"
ROTATELONGFLAG = "-rotate"

ROTATIONVALUE = 0.785398163
AXIS_X = 1
AXIS_Y = 2
AXIS_Z = 3

# instanceRotate command
class instanceRotate(OpenMayaMPx.MPxCommand):
	#- Store the base shape for the instances here for undo
	shapeObj = OpenMaya.MDagPath()
	#- Store the original rotation values for undo here
	rotations = OpenMaya.MDoubleArray()

	def __init__(self):
		OpenMayaMPx.MPxCommand.__init__(self)
		#- Store the user selection of the rotation axis (one axis for all of the instances)
		self.axis = AXIS_X
		#- Store the number of instances for one shape
		self.numInstances = 0

	#- This method is used to specify whether or not the command is undoable. In 
	#- the base class, it always returns false. If you are writing a command that 
	#- might be eligible for undo, you should override this method.
	#- After Maya executes the command's doIt method, it will call isUndoable. If 
	#- isUndoable returns true, Maya will retain the instance of the class and pass 
	#- it to Maya's undo manager so that the undoIt and redoIt methods can be called
	#- when appropriate. If isUndoable returns false, the command instance will be 
	#- immediately destroyed.
	#def isUndoable(self):
	#	return True

	#def hasSyntax(self):
	#	return True

	#- This method should perform a command by setting up internal class data
	#- and then calling the redoIt method if undo is supported by the command.
	#- The actual action performed by the command should be done in the redoIt 
	#- method. This is a pure virtual method, and must be overridden in derived 
	#- classes.
	def doIt(self, args):
		#- Since all the command actions will be done in the redoIt() method, this
		#- method will only parse the arguments. redoIt() will not use arguments
		#- at all.
		argParser = OpenMaya.MArgParser (self.syntax(),args)

		numFlags = argParser.numberOfFlagsUsed()
		if(numFlags != 1):
			OpenMaya.MGlobal.displayError("Simple Plugs requires one flag argument and a DAG object must be selected")
			return OpenMaya.MStatus.kFailure
		else:
			if(argParser.isFlagSet(ROTATEFLAG) | argParser.isFlagSet(ROTATELONGFLAG)):
				#- The user enters 1, 2, or 3 to indicate x, y, or z rotation axis
				flag =argParser.flagArgumentInt(ROTATEFLAG,0)

				if(flag == AXIS_X):
					self.axis = AXIS_X
				elif(flag == AXIS_Y):
					self.axis = AXIS_Y
				elif(flag == AXIS_Z):
					self.axis = AXIS_Z
				else:
					OpenMaya.MGlobal.displayError("Invalid axis rotation argument")
					return OpenMaya.MStatus.kFailure

		return self.redoIt(args)

	#- This method should do the actual work of the command based on the internal 
	#- class data only. Internal class data should be set in the doIt method.
	def redoIt(self, args):
		OpenMayaMPx.MPxCommand.setResult( "instanceRotate command executed!\n" )

		#- This is really where is the intelligence of the command. Here we will
		#- preform all the actions we wanted to implement for this command.

		#- Get the active selection in the Maya viewport.
		selList = OpenMaya.MSelectionList()
		OpenMaya.MGlobal.getActiveSelectionList(selList)

		if(selList.isEmpty()):
			OpenMaya.MGlobal.displayError("A single DAG object must be selected")
			return OpenMaya.MStatus.kFailure

		dagPath = OpenMaya.MDagPath()
		selList.getDagPath(0,dagPath)

		#- Chances are the user selected the object from the panel view or
		#- outliner window so the object in the list will actually be a 
		#- transform node... if so we call extendToShape to grab the actual
		#- shape node from the dagPath
		if(dagPath.hasFn(OpenMaya.MSpace.kTransform)):
			dagPath.extendToShape()

		if(dagPath.isInstanced()):
			self.shapeObj = dagPath
			self.rotate(dagPath)
		else:
			OpenMaya.MGlobal.displayError("The selected item is not an instanced DAG object")
			return OpenMaya.MStatus.kFailure

		return OpenMaya.MStatus.kSuccess

	#- This method should undo the work done be the redoIt method based on the 
	#- internal class data only.
	def undoIt(self, args):
		OpenMaya.MGlobal.displayInfo( "instanceRotate command undone!\n" )
		
		fnDag = MFnDagNode(self.shapeObj)

		for i in range ( 0, self.numInstances ):
			currentParent = fnDag.parent(i)
			fnParent = OpenMaya.MFnDependencyNode(currentParent)
			rotPlug = fnParent.findPlug("rotate")
			if (self.axis == AXIS_X):
				rotxPlug = rotPlug.child(0)
				rotxPlug.setValue(self.rotations[i])
			elif (self.axis == AXIS_Z):
				rotzPlug = rotPlug.child(2)
				rotzPlug.setValue(self.rotations[i])
				break
			else: # AXIS_Y:
				rotyPlug = rotPlug.child(1)
				rotyPlug.setValue(self.rotations[i])

		#- Empty the array in case the user chooses redoIt
		self.rotations.clear()

		return OpenMaya.MStatus.kSuccess

	#- Method used by redoIt to assign a 45 degree rotation along a random axis.
	def rotate( self, dp ):
		#- The passed-in dag object is a shape object, 
		#- need to find all the parent transform objects.
		fnDag = OpenMaya.MFnDagNode(dp)
		#- The number of parents represents the current number of instances.
		self.numInstances = fnDag.parentCount()

		for i in range ( 0, self.numInstances ):
			currentParent = fnDag.parent(i)
			fnParent = OpenMaya.MFnDependencyNode(currentParent)	

			#- Find the rotate plug, figure out which axis the user opted for 
			#- and set the plug to a random direction.
			rotPlug = fnParent.findPlug("rotate")

			#- Acquire a random number deciding which direction the 45 degree should be
			randVal = random.randint(0, 1000)
			if(randVal % 2 == 0):
				randVal = 1
			else:
				randVal = -1
			print "The randVal is %d " % randVal
			sys.stdout.write( '\n' )

			if (self.axis == AXIS_X):
				rotxPlug = rotPlug.child(0)

				#- retrieve original rotation and store it in member variable "rotations"
				origRot = rotxPlug.asDouble()
				self.rotations.append(origRot)

				#- set new rotation
				rot = origRot + randVal * ROTATIONVALUE
				rotxPlug.setDouble(rot)
			elif (self.axis == AXIS_Z):
				rotzPlug = rotPlug.child(2)

				origRot = rotzPlug.asDouble()
				self.rotations.append(origRot)

				rot = origRot + randVal * ROTATIONVALUE
				rotzPlug.setDouble(rot)
			else: # AXIS_Y: - by default, rotate around y axis
				rotyPlug = rotPlug.child(1)

				origRot = rotyPlug.asDouble()
				self.rotations.append(origRot)

				rot = origRot + randVal * ROTATIONVALUE
				rotyPlug.setDouble(rot)

# Creator
def cmdCreator():
	return OpenMayaMPx.asMPxPtr( instanceRotate() )

#- Create a new MSyntax object to teach Maya about possible arguments
#- in our command. This newSyntax() method is used during the command
#- registration into our plug-in
# Syntax creator
def syntaxCreator():
	syntax = OpenMaya.MSyntax()
	syntax.addFlag(ROTATEFLAG, ROTATELONGFLAG, OpenMaya.MSyntax.kUnsigned)
	syntax.enableEdit(0)
	syntax.enableQuery(0)
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

