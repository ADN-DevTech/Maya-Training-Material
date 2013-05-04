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

//- Include Maya necessary headers for our class
#include <maya/MPxNode.h>
#include <maya/MString.h> 
#include <maya/MTypeId.h> 
#include <maya/MPlug.h>

#include <maya/MFnNumericAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnTypedAttribute.h>

#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include <string.h>
#include <maya/MIOStream.h>
#include <math.h>

//- Derive a new class from the default Maya node proxy class.
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
	// There needs to be a MObject handle declared for each attribute that
	// the node will have.  These handles are needed for getting and setting
	// the values later.
	//
	static  MObject		input;            // The input value.

	//- Compound attributes in Maya are build from several individual attributes. In
	//- our example the input compound attribute is made of inputTranslateX,
	//- inputTranslateY and inputTranslateZ. 
	static  MObject		inputTranslateX;  // The translate X value.  (input)
	static  MObject		inputTranslateY;  // The translate Y value.  (input)
	static  MObject		inputTranslateZ;  // The translate Z value.  (input)
	static  MObject		inputTranslate;

	static  MObject		outputTranslateX; // The translate X value.  (output)
	static  MObject		outputTranslateY; // The translate Y value.  (output)
	static  MObject		outputTranslateZ; // The translate Z value.  (output)
	static  MObject		outputTranslate;

	static  MObject		frames;           // Number of frames for one circle.
	static  MObject		scale;            // Radius of circle.

	//- This is a unique node ID for your new node class. It is declared
	//- static because it is common to all instance of that class.
	//-
	//- The typeid is a unique 32bit identifier that describes this node.
	//- It is used to save and retrieve nodes of this type from the binary
	//- file format. If it is not unique, it will cause file IO problems.
	static  MTypeId		id;
};
