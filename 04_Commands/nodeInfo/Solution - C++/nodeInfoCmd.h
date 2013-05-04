//
// Copyright (C) 
// 
// File: 
//
// Dependency Graph Node: 
//
// Author: Maya Plug-in Wizard 2.0
//
#pragma once

#include <maya/MPxCommand.h>

//- This are the long and short command names.
#define kQuietFlag		"-q"
#define kQuietFlagLong	"-quiet"

// Command class declaration
class nodeInfo : public MPxCommand
{
public:
	nodeInfo();
	virtual ~nodeInfo(); 

	//- This method should perform a command by setting up internal class data
	//- and then calling the redoIt method if undo is supported by the command.
	//- The actual action performed by the command should be done in the redoIt 
	//- method. This is a pure virtual method, and must be overridden in derived 
	//- classes.
	virtual MStatus doIt( const MArgList& args );

	//- Create a new MSyntax object to teach Maya about possible arguments
	//- in our command. This newSyntax() method is used during the command
	//- registration into our plug-in
	static MSyntax	newSyntax();

	static void* creator() {
		return new nodeInfo ();
	}

private:
	MStatus			parseArgs( const MArgList& args );
	bool			quiet;
};
