//
// Copyright (C) 
// 
// File: instanceRotateCmd.h
//
// MEL Command: instanceRotate
//
// Author: Maya Plug-in Wizard 2.0
//
#pragma once

#include <maya/MPxCommand.h>
#include <maya/MDagPath.h>
#include <maya/MDoubleArray.h>

//- Forward declaration
class MArgList;

//- A convenience enum to keep track of which axis the user wanted to rotate around
typedef enum AXIS {AXIS_X = 1, AXIS_Y = 2, AXIS_Z = 3};

//- This are the long and short command names.
#define ROTATEFLAG "-r"
#define ROTATELONGFLAG "-rotate"

#define ROTATIONVALUE 0.785398163

// Command class declaration
class instanceRotate : public MPxCommand
{

public:
	instanceRotate() {}
	virtual ~instanceRotate() {}

	//- This method should perform a command by setting up internal class data
	//- and then calling the redoIt method if undo is supported by the command.
	//- The actual action performed by the command should be done in the redoIt 
	//- method. This is a pure virtual method, and must be overridden in derived 
	//- classes.
	virtual MStatus doIt( const MArgList& );
	//- This method should do the actual work of the command based on the internal 
	//- class data only. Internal class data should be set in the doIt method.
	virtual MStatus redoIt();
	//- This method should undo the work done be the redoIt method based on the 
	//- internal class data only.
	virtual MStatus undoIt();
	//- This method is used to specify whether or not the command is undoable. In 
	//- the base class, it always returns false. If you are writing a command that 
	//- might be eligible for undo, you should override this method.
	//- After Maya executes the command's doIt method, it will call isUndoable. If 
	//- isUndoable returns true, Maya will retain the instance of the class and pass 
	//- it to Maya's undo manager so that the undoIt and redoIt methods can be called
	//- when appropriate. If isUndoable returns false, the command instance will be 
	//- immediately destroyed.
	virtual bool isUndoable() const {
		return true;
	}

	static void* creator() {
		return new instanceRotate();
	}

	virtual	bool hasSyntax() {
		return true;
	}
	static MSyntax cmdSyntax();

	//- Rotates each instance with 45 degrees along user-specified axis
	void rotate( MDagPath dp );

	//- Store the user selection of the rotation axis (one axis for all of the instances)
	AXIS axis;

	//- Store the base shape for the instances here for undo
	MDagPath shapeObj;

	//- Store the number of instances for one shape
	uint numInstances;

	//- Store the original rotation values for undo here
	MDoubleArray rotations;
};
