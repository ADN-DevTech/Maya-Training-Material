//
// Copyright (C) 
// 
// File: setUpTransCircleCmd.h
//
// MEL Command: setUpTransCircle
//
// Author: Maya Plug-in Wizard 2.0
//
#pragma once

#include <maya/MPxCommand.h>
#include <maya/MDGModifier.h>

class MArgList;

class setUpTransCircle : public MPxCommand
{

public:
	setUpTransCircle() {}
	virtual		~setUpTransCircle() {}

	virtual MStatus	doIt( const MArgList& );
	virtual MStatus		undoIt();
	virtual MStatus		redoIt();

	virtual bool isUndoable() const {
		return (true);
	}

	static void* creator() {
		return new setUpTransCircle();
	}

private:
	MDGModifier dgMod;
	
};

