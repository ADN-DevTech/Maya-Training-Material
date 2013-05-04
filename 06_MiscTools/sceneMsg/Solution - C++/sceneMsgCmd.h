//
// Copyright (C) 
// 
// File: sceneMsgCmd.h
//
// Author: Maya Plug-in Wizard 2.0
//
#pragma once

#include <maya/MPxCommand.h>
#include <maya/MCallbackIdArray.h> 
#include <maya/MSceneMessage.h>

class sceneMsgCmd : public MPxCommand
{
public:
	sceneMsgCmd() ;
	virtual ~sceneMsgCmd() {}

	virtual MStatus doIt(const MArgList & args);
	virtual MStatus undoIt();
	virtual MStatus redoIt();

	virtual bool isUndoable() const {
		return (true) ;
	}

	static void * creator() {
		return new sceneMsgCmd();
	}

public:
	static MCallbackIdArray IDs;  //- Member variable to record all callback Ids

};

//- Message callbacks
void openCallback(void* clienData);
void newCallback(void* clienData);
void saveCheckCallback(bool *retCode, void* clienData);
