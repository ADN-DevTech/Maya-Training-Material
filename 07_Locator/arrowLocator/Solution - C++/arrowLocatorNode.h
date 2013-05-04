//
// Copyright (C) 
// 
// File: arrowLocatorNode.h
//
// Dependency Graph Node: arrowLocator
//
// Author: Maya Plug-in Wizard 2.0
//
#pragma once

#include <maya/MPxLocatorNode.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MTypeId.h> 
#include <maya/M3dView.h>
#include <maya/MDagPath.h>

//- Macros to use to rotate the locator
#define PI 3.14159265358979
#define toDegree(rot) rot*(180.0/PI)

class arrowLocator : public MPxLocatorNode
{
public:
	arrowLocator() {}
	virtual ~arrowLocator() {}

	virtual void draw(M3dView &view,const MDagPath & path,M3dView::DisplayStyle style, M3dView::DisplayStatus status);
	virtual MBoundingBox boundingBox() const;
	virtual bool isBounded() const {
		return true; //- This method should be overridden to return true if the user supplies a bounding box routine.
	}

	static MStatus		initialize();
	static void* creator() {
		return new arrowLocator();
	}

public:
	static	MTypeId		id;

	static MObject windDirection; //- This is an attribute representing the rotation angle

};
