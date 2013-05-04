#ifndef _arrowLocatorManipNode
#define _arrowLocatorManipNode
//
// Copyright (C) 
// 
// File: arrowLocatorManipNode.h
//
// Dependency Graph Node: arrowLocatorManip
//
// Author: Maya Plug-in Wizard 2.0
//

#include <maya/MPxManipContainer.h>
#include <maya/MTypeId.h> 

 
class arrowLocatorManip : public MPxManipContainer
{
public:
						arrowLocatorManip();
	virtual				~arrowLocatorManip(); 

	static  void*		creator();
	static  MStatus		initialize();
	virtual MStatus		createChildren();
	virtual MStatus		connectToDependNode(const MObject &dependNode);
	virtual void		draw(M3dView &view, const MDagPath &path, M3dView::DisplayStyle style, M3dView::DisplayStatus status);


	MManipData		centerPointCallback(unsigned int manipIndex);	 //callback function to update manipulator position based on node position


public:
	static	MTypeId		id;
	static  MDagPath	fDiscManip;     //This variable keeps a record of the base disc manip, which we add onto our manip container 

	static  MDagPath    fNodePath;		//This variable is very important, it is for getting a hold of the corresponding locator node 

};

#endif
