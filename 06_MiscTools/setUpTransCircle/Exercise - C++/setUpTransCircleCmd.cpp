//
// Copyright (C) 
// 
// File: setUpTransCircleCmd.cpp
//
// MEL Command: setUpTransCircle
//
#include "setUpTransCircleCmd.h"
#include "transCircleNode.h"

#include <maya/MGlobal.h>
#include <maya/MArgDatabase.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnCamera.h>
#include <maya/MFnLight.h>
#include <maya/MColor.h>
#include <maya/MDagPath.h>
#include <maya/MFnNurbsSurface.h>
#include <maya/MFnMesh.h>
#include <maya/MSelectionList.h>
#include <maya/MDagModifier.h>

//- Here is what you need to set up the transCircle node
//- createNode transCircle -n circleNode1;
//- sphere -n sphere1 -r 1;
//- sphere -n sphere2 -r 2;
//- connectAttr sphere2.translate circleNode1.inputTranslate;
//- connectAttr circleNode1.outputTranslate sphere1.translate;
//- connectAttr time1.outTime circleNode1.input;

MStatus setUpTransCircle::doIt( const MArgList& argList)
{
	MStatus stat = MS::kSuccess;
	
	//- Create a transCircle node and two Nurbs spheres
	MString tranCircleType("transCircle");
	//- TODO: Create a transCircle node
	MObject transCircle = //...
	//- TODO: Rename the node to "circleNode1" 
	//...

	//- TODO: Use MDGMOdifier to simulate executing the following commands 
	//- command "sphere -n sphere1 -r 1;" and command "sphere -n sphere2 -r 2;"
	//- TIPS: you should create a MString object first
	//...
	//...
	//...
	//...
	//- TODO: Now force these operation to be executed by calling the DG modifier doIt() method.
	//...

//- The following code is one sample code if you want to simulate "sphere -n sphere1 -r 1" manually from MDGModifier and MDagModifier
/*
	MObject testNode = dgMod.createNode(MString("makeNurbSphere"),&stat);

	MFnDependencyNode nurbsSphereFn(testNode);
	MPlug radiusPlug = nurbsSphereFn.findPlug("radius");
	radiusPlug.setFloat(1.0f);
	dgMod.doIt();

	MDagModifier dagMod;
	MObject nurbsTransform = dagMod.createNode("nurbsSurface");
	dagMod.doIt();
    MPlug outputPlug = nurbsSphereFn.findPlug("outputSurface");

	MFnDagNode transformFn(nurbsTransform);
	MFnDagNode nurbsFn(transformFn.child(0));
	MPlug createPlug = nurbsFn.findPlug("create");

	dagMod.connect(outputPlug, createPlug);
	dagMod.doIt();
*/

	MSelectionList selList;
	//- Find the Nurbs sphere nodes and transCircle node
	MGlobal::getSelectionListByName(MString("sphere1"),selList);
	MObject sphereDep;
	selList.getDependNode(0,sphereDep);
	selList.clear();

	MGlobal::getSelectionListByName(MString("sphere2"),selList);
	MObject sphereTwoDep;
	selList.getDependNode(0,sphereTwoDep);
	selList.clear();

	//- Connect attributes between Nurbs sphere and transCircle node
	MFnDependencyNode fnSphere(sphereDep,&stat);
	MFnDependencyNode fnSphereTwo(sphereTwoDep,&stat);
	MFnDependencyNode fnTransCircleNode(transCircle,&stat);

	MObject inputTransAttr = fnTransCircleNode.attribute(MString("inputTranslate"),&stat);
	MObject sphereTwoTranslateAttr = fnSphereTwo.attribute(MString("translate"),&stat);
	dgMod.connect(sphereTwoDep,sphereTwoTranslateAttr,transCircle,inputTransAttr);

	//- TODO: Connect the "outputTranslate" circle node attribute with the "translate" "sphere1" node attribute
	//...
	//...
	//...

	//- Connect time1 node with transCircle node
	MObject timeNode;
	MGlobal::getSelectionListByName(MString("time1"),selList);
	selList.getDependNode(0,timeNode);
	selList.clear();

	MFnDependencyNode fnTimeNode(timeNode);
	MObject timeAttr = fnTimeNode.attribute(MString("outTime"),&stat);
	MObject inputAttr = fnTransCircleNode.attribute(MString("input"),&stat);
	dgMod.connect(timeNode,timeAttr,transCircle,inputAttr);

	//- Now force these operation to be executed by calling the DG modifier doIt() method.
	stat = dgMod.doIt();

	return stat;
}

MStatus setUpTransCircle::undoIt()
{
	return dgMod.undoIt();
}

MStatus setUpTransCircle::redoIt()
{
	return dgMod.doIt();
}