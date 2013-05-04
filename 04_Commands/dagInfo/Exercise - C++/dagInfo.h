//
// Copyright (C) 
// 
// File: dagInfo.h
//
// MEL Command: dagInfo
//
// Author: Maya Plug-in Wizard 2.0
//
#pragma once

#include <maya/MPxCommand.h>

// Command class declaration
class dagInfo : public MPxCommand
{
public:
	dagInfo() {}
	virtual ~dagInfo() {}

	static void *creator() {
		return new dagInfo();
	}
	
	//- This method should perform a command by setting up internal class data
	//- and then calling the redoIt method if undo is suuported by the command.
	//- The actual action performed by the command should be done in the redoIt 
	//- method. This is a pure virtual method, and must be overridden in derived 
	//- classes.
	virtual MStatus doIt(const MArgList &);

};
