//
// Copyright (C) 
// 
// File: sceneMsgCmd.cpp
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

	//- Register callback for MSceneMessage::kBeforeOpen message
	MCallbackId openCallbackId = MSceneMessage::addCallback(MSceneMessage::kBeforeOpen,(MMessage::MBasicFunction)openCallback, NULL,&stat);
	IDs.append(openCallbackId);

	//- Register callback for MSceneMessage::kAfterNew message
	MCallbackId newCallbackId = MSceneMessage::addCallback(MSceneMessage::kAfterNew,(MMessage::MBasicFunction)newCallback, NULL,&stat);
	IDs.append(newCallbackId);

	//- Register callback for MSceneMessage::kBeforeSave message
	MCallbackId saveCheckCallbackId = MSceneMessage::addCheckCallback(MSceneMessage::kBeforeSaveCheck,(MMessage::MCheckFunction)saveCheckCallback, NULL,&stat);
	IDs.append(newCallbackId);

	return stat;
}

MStatus sceneMsgCmd::undoIt()
{
	MStatus stat = MS::kSuccess;
	if(IDs.length()!= 0 ) 
		stat = MSceneMessage::removeCallbacks(IDs);
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
