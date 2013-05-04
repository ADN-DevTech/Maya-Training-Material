//
// Copyright (C) 
// 
// File: transCircleNode.h
//
// Author: Maya Plug-in Wizard 2.0
//
#pragma once

#include <maya/MPxNode.h>

class transCircle : public MPxNode
{
public:
	transCircle() {}
	virtual	~transCircle() {}

	virtual MStatus		compute( const MPlug& plug, MDataBlock& data );
	static  MStatus		initialize();
	static  void*		creator() {
		return new transCircle();
	}

public:
	static  MObject		input;            // The input value.
	static  MObject		inputTranslateX;  // The translate X value.  (input)
	static  MObject		inputTranslateY;  // The translate Y value.  (input)
	static  MObject		inputTranslateZ;  // The translate Z value.  (input)
	static  MObject		inputTranslate;
	static  MObject		outputTranslateX; // The translate X value.  (output)
	static  MObject		outputTranslateY; // The translate Y value.  (output)
	static  MObject		outputTranslateZ; // The translate Z value.  (output)
	static  MObject		outputTranslate;
	static  MObject		frames;           // Number of frames for one circle.
	static  MObject		scale;            // Size of circle.
	static  MTypeId		id;
};
