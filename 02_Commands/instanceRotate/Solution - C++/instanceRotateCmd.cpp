//
// Copyright (C) 
// 
// File: instanceRotateCmd.cpp
//
// MEL Command: instanceRotate
//
// Author: Maya Plug-in Wizard 2.0
//
#include <stdlib.h>
#include <time.h>
#include "instanceRotateCmd.h"

#include <maya/MGlobal.h>
#include <maya/MArgDatabase.h>
#include <maya/MSyntax.h>
#include <maya/MFnDagNode.h>
#include <maya/MSelectionList.h>
#include <maya/MPlug.h>

//- Create a new MSyntax object to teach Maya about possible arguments
//- in our command. This newSyntax() method is used during the command
//- registration into our plug-in
/*static*/ MSyntax instanceRotate::cmdSyntax()
{
	MSyntax syntax;
	syntax.addFlag(ROTATEFLAG,ROTATELONGFLAG,MSyntax::kUnsigned);
	syntax.enableEdit(false);
	syntax.enableQuery(false);
	return syntax;
}

//- This method should perform a command by setting up internal class data
//- and then calling the redoIt method if undo is supported by the command.
//- The actual action performed by the command should be done in the redoIt 
//- method. This is a pure virtual method, and must be overridden in derived 
//- classes.
MStatus instanceRotate::doIt( const MArgList& argList)
{
	MStatus stat = MS::kSuccess;

	//- Since all the command actions will be done in the redoIt() method, this
	//- method will only parse the arguments. redoIt() will not use arguments
	//- at all.
	MArgDatabase argDB(syntax(),argList,&stat);
	if ( MS::kSuccess != stat )
	{
		cerr << "Invalid flag used";              
		return stat.statusCode();        
	}

	unsigned int numFlags = argDB.numberOfFlagsUsed();
	if(numFlags != 1) 
	{
		MGlobal::displayError("Simple Plugs requires one flag argument and a DAG object must be selected");
		return MS::kFailure;
	}
	else
	{
		if(argDB.isFlagSet(ROTATEFLAG, &stat))
		{	
			uint flag =0;
			//- The user enters 1, 2, or 3 to indicate x, y, or z rotation axis
			argDB.getFlagArgument(ROTATEFLAG,0,flag);

			if(flag == AXIS_X)
				axis = AXIS_X;
			else if(flag == AXIS_Y)
				axis = AXIS_Y;
			else if(flag == AXIS_Z)
				axis = AXIS_Z;
			else
			{
				MGlobal::displayError("Invalid axis rotation argument");
				return MS::kFailure;
			}
		}
	}

	return redoIt();
}

//- This method should do the actual work of the command based on the internal 
//- class data only. Internal class data should be set in the doIt method.
MStatus instanceRotate::redoIt()
{
	setResult( "instanceRotate command executed!\n" );

	//- This is really where is the intelligence of the command. Here we will
	//- preform all the actions we wanted to implement for this command.

	//- Get the active selection in the Maya viewport.
	MSelectionList selList;
	MGlobal::getActiveSelectionList(selList);

	if(selList.isEmpty())
	{
		MGlobal::displayError("A single DAG object must be selected");
		return MS::kFailure;
	}

	MDagPath dagPath;
	selList.getDagPath(0,dagPath);

	//- Chances are the user selected the object from the panel view or
	//- outliner window so the object in the list will actually be a 
	//- transform node... if so we call extendToShape to grab the actual
	//- shape node from the dagPath
	if(dagPath.hasFn(MFn::kTransform))
		dagPath.extendToShape();

	if(dagPath.isInstanced())
	{
		shapeObj = dagPath;
		rotate(dagPath);
	}
	else
	{
		MGlobal::displayError("The selected item is not an instanced DAG object");
		return MS::kFailure;
	}

	return MS::kSuccess;
}

//- This method should undo the work done be the redoIt method based on the 
//- internal class data only.
MStatus instanceRotate::undoIt()
{
	MGlobal::displayInfo( "instanceRotate command undone!\n" );
	
	MFnDagNode fnDag(shapeObj);

	for(uint i = 0; i<numInstances; i++)
	{

		MObject currentParent = fnDag.parent(i);
		MFnDependencyNode fnParent(currentParent);
		MPlug rotPlug = fnParent.findPlug("rotate");
		switch (axis)
		{
		case AXIS_X:
			{
				MPlug rotxPlug = rotPlug.child(0);
				rotxPlug.setValue(rotations[i]);
				break;
			}
		case AXIS_Y:
			{
				MPlug rotyPlug = rotPlug.child(1);
				rotyPlug.setValue(rotations[i]);
				break;
			}
		case AXIS_Z:
			{
				MPlug rotzPlug = rotPlug.child(2);
				rotzPlug.setValue(rotations[i]);
				break;
			}
		default:
			{
				MPlug rotyPlug = rotPlug.child(1);
				rotyPlug.setValue(rotations[i]);
				break;
			}
		}
	}

	//- Empty the array in case the user chooses redoIt
	rotations.clear();

	return MS::kSuccess;
}

//- Method used by redoIt to assign a 45 degree rotation along a random axis.
void instanceRotate::rotate( MDagPath dp )
{
	//- Seeds the random number generation function rand so it does not produce the 
	//- same sequence of numbers every time.
	srand(time(NULL));

	//- The passed-in dag object is a shape object, 
	//- need to find all the parent transform objects.
	MFnDagNode fnDag(dp);
	//- The number of parents represents the current number of instances.
	numInstances = fnDag.parentCount();

	for(uint i = 0;i<numInstances;i++)
	{
		MObject currentParent = fnDag.parent(i);
		MFnDependencyNode fnParent(currentParent);	

		//- Find the rotate plug, figure out which axis the user opted for 
		//- and set the plug to a random direction.
		MPlug rotPlug = fnParent.findPlug("rotate");

		//- Acquire a random number deciding which direction the 45 degree should be
		int randVal;
		if(rand()%2 == 0)
			randVal = 1;
		else randVal = -1;
		cout<<"The randVal is "<<randVal<<endl;

		switch(axis)
		{

		case AXIS_X:
			{
				MPlug rotxPlug = rotPlug.child(0);

				//- retrieve original rotation and store it in member variable "rotations"
				double origRot = 0;
				rotxPlug.getValue(origRot);
				rotations.append(origRot);

				//- set new rotation
				double rot = origRot + randVal * ROTATIONVALUE;
				rotxPlug.setValue(rot);
				break;
			}
		case AXIS_Y:
		default: //- by default, rotate around y axis
			{
				MPlug rotyPlug = rotPlug.child(1);

				double origRot = 0;
				rotyPlug.getValue(origRot);
				rotations.append(origRot);

				double rot = origRot + randVal * ROTATIONVALUE;
				rotyPlug.setValue(rot);
				break;
			}
		case AXIS_Z:
			{
				MPlug rotzPlug = rotPlug.child(2);

				double origRot = 0;
				rotzPlug.getValue(origRot);
				rotations.append(origRot);

				double rot = origRot + randVal * ROTATIONVALUE;
				rotzPlug.setValue(rot);
				break;
			}
		}
	}

}
