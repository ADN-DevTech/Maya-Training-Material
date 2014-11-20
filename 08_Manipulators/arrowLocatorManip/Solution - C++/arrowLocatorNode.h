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


// Viewport 2.0 includes
#include <maya/MDrawRegistry.h>
#include <maya/MPxDrawOverride.h>
#include <maya/MUserData.h>
#include <maya/MDrawContext.h>
#include <maya/MGlobal.h>
#include <maya/MSelectionList.h>
#include <maya/MViewport2Renderer.h>
#include <maya/MHWGeometryUtilities.h>
#include <maya/MStateManager.h>
#include <maya/MShaderManager.h>
#include <maya/MAngle.h>



//- Macros to use to rotate the locator
#define PI 3.14159265358979
#define toDegree(rot) rot*(180.0/PI)

class arrowLocatorData : public MUserData
{
public:
	MAngle rotateAngle ;

	arrowLocatorData() : MUserData(false) {} // don't delete after draw
	virtual ~arrowLocatorData() {}
};

class arrowLocator : public MPxLocatorNode
{
public:
	arrowLocator() {}
	virtual ~arrowLocator() {}

	MStatus compute( const MPlug& plug, MDataBlock& data );
	virtual void draw(M3dView &view,const MDagPath & path,M3dView::DisplayStyle style, M3dView::DisplayStatus status);
	virtual MBoundingBox boundingBox() const;
	virtual bool isBounded() const;


	void getRotationAngle (arrowLocatorData * data );

	static MStatus		initialize();

	static void* creator() {
		return new arrowLocator();
	}

	static	MTypeId		id;

	static	MString		drawDbClassification;
	static	MString		drawRegistrantId;

	static MObject windDirection; //- This is an attribute representing the rotation angle

};

#endif
