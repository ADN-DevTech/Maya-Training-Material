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

//- This are the long and shor command names.
#define kQuietFlag		"-q"
#define kQuietFlagLong	"-quiet"

// Command class declaration
class nodeInfo : public MPxCommand
{
public:
	nodeInfo();
	virtual ~nodeInfo(); 

	//- TODO: Declare the method called by Maya to execute your command.
	//...

	//- Create a new MSyntax object to teach Maya about possible arguments
	//- in our command. This newSyntax() method is used during the command
	//- registration into our plug-in
	static MSyntax newSyntax();

	static void* creator() {
		return new nodeInfo ();
	}

private:
	MStatus			parseArgs( const MArgList& args );
	bool			quiet;
};
