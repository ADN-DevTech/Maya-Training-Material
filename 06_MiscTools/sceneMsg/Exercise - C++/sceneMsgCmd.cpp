//
// Copyright (C) 
// 
// File: 
//
// Author: Maya Plug-in Wizard 2.0
//
#include "sceneMsgCmd.h"

/*static*/ MCallbackIdArray sceneMsgCmd::IDs;

sceneMsgCmd::sceneMsgCmd()
{
	//- Clean up callback id array
	IDs.clear();
}

MStatus sceneMsgCmd::doIt(const MArgList & args)
{
	return redoIt();
}

MStatus sceneMsgCmd::redoIt()
{
	MStatus stat = MS::kSuccess;

	//- TODO: Register callback for MSceneMessage::kBeforeOpen message
	MCallbackId openCallbackId = //...
	IDs.append(openCallbackId);

	//- TODO: Register callback for MSceneMessage::kAfterNew message
	MCallbackId newCallbackId = //...
	IDs.append(newCallbackId);

	//- TODO: Register callback for MSceneMessage::kBeforeSave message
	MCallbackId saveCheckCallbackId = //...
	IDs.append(saveCheckCallbackId);

	return stat;
}

MStatus sceneMsgCmd::undoIt()
{
	MStatus stat = MS::kSuccess;
	// TODO: Remove all callbacks
	if(IDs.length()!= 0 ) 
		stat = //...
	return stat;
}

//- Message callbacks
void openCallback(void* clienData)
{
	cout<<"The callback registered for MSceneMessage::kBeforeOpen is executed."<<endl;
}

void newCallback(void* clienData)
{
	cout<<"The callback registered for MSceneMessage::kAfterNew is executed."<<endl;
}

void saveCheckCallback(bool *retCode, void* clienData)
{
	cout<<"The callback registered for MSceneMessage::kBeforeSaveCheck is executed."<<endl;
	
	//- Abort the operation by setting retCode to point to false
	*retCode = false;

	cout<<"Abort current operations..."<<endl;	
}
