#ifndef _arrowLocatorNode
#define _arrowLocatorNode
//
// Copyright (C) 
// 
// File: arrowLocatorNode.h
//
// Dependency Graph Node: arrowLocator
//
// Author: Maya Plug-in Wizard 2.0
//

#include <maya/MPxLocatorNode.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MTypeId.h> 
#include <maya/M3dView.h>
#include <maya/MDagPath.h>

//macros to use to rotate the locator
#define PI 3.14159265358979
#define toDegree(rot) rot*(180.0/PI)

class arrowLocator : public MPxLocatorNode
{
public:
						arrowLocator();
	virtual				~arrowLocator(); 

	virtual MStatus		compute( const MPlug& plug, MDataBlock& data );

	virtual void		draw(M3dView &view,const MDagPath & path,M3dView::DisplayStyle style, M3dView::DisplayStatus status);
	virtual bool		isBounded() const;
	virtual MBoundingBox boundingBox() const;

	static  void*		creator();
	static  MStatus		initialize();

public:

	static	MTypeId		id;

	static MObject windDirection; // this is an attribute representing the rotation angle of this locator

};

#endif
