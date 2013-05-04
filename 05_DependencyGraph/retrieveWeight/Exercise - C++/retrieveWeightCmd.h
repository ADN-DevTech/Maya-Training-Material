//
// Copyright (C) 
// 
// File: retrieveWeightCmd.h
//
// MEL Command: retrieveWeight
//
// Author: Maya Plug-in Wizard 2.0
//
#pragma once

#include <maya/MPxCommand.h>

class retrieveWeightCmd	: public MPxCommand
{

public:
	retrieveWeightCmd() {}
	virtual ~retrieveWeightCmd() {}

	virtual MStatus doIt( const MArgList& );

	static void * creator() {
		return new retrieveWeightCmd();
	}

};
