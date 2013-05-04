//
// Copyright (C) 
// 
// File: arrowLocatorManipNode.cpp
//
// Dependency Graph Node: arrowLocatorManip
//
// Author: Maya Plug-in Wizard 2.0
//

#include "arrowLocatorManipNode.h"

#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnDiscManip.h>
#include <maya/MAngle.h>

#include <maya/MGlobal.h>

//- You MUST change this to a unique value!!!  The id is a 32bit value used
//- to identify this type of node in the binary file format.  
//-
//- change the following to a unique value and then erase this line 
MTypeId     arrowLocatorManip::id( 0x00003 );    
MDagPath	arrowLocatorManip::fDiscManip;

MDagPath	arrowLocatorManip::fNodePath;

arrowLocatorManip::arrowLocatorManip() {}
arrowLocatorManip::~arrowLocatorManip() {}


//-	This method exists to give Maya a way to create new objects
//- of this type. 
//-
//-	Return Value:
//-		a new object of this type
//-
void* arrowLocatorManip::creator()
{
	return new arrowLocatorManip();
}


//- This method is called to create and initialize all of the attributes
//- and attribute dependencies for this node type.  This is only called 
//-	once when the node type is registered with Maya.
//-
//-	Return Values:
//-		MS::kSuccess
//-		MS::kFailure	
MStatus arrowLocatorManip::initialize()	
{
	MStatus stat;
	stat = MPxManipContainer::initialize();
	return stat;
}


//- Container manipulators are composed of one or more base manipulators. 
//- When base manipulators are added to a container manipulator, they are referred to 
//- as children of the container manipulator, and are added using the createChildren method. 
MStatus arrowLocatorManip::createChildren()
{
	MStatus status = MStatus::kSuccess;

	//- TODO: Create a base disc manip and 
	//- TODO: add it into this manip container, assign
	//- TODO: the returned value of the function call to member
	//- TODO: variable: "fDiscManip" 
	//...
	//...

	//- Initialize the angle and starting position of this manipulator
	MPoint startPoint(0.0, 0.0, 0.0);
	MAngle startAngle(0.0,MAngle::kDegrees);
	MFnDiscManip fnDisc(fDiscManip,&status);
	fnDisc.setCenterPoint(startPoint);
	fnDisc.setAngle(startAngle);

	return status;
}

//- This function is responsible to make the connection (association) 
//- between manipulators and the affected attributes. When a node in a scene 
//- is selected and user click on “show manipulator tool”, 
//- this function is called with the selected node.
//- Arguments:
//- 	dependNode - the node which is selected
MStatus arrowLocatorManip::connectToDependNode(const MObject &dependNode)
{
	MStatus status = MStatus::kSuccess;

	//- Find the "windDirection" plug on the selected node, which is the custom
	//- locator node.
	MFnDependencyNode fnDepNode(dependNode);
	MPlug rotationPlug = fnDepNode.findPlug(MString("windDirection"),&status);

	//- TODO: Connect the "windDirection" plug with the disc manip
	//...
	//...


	//- Set up affecting relationship using conversion callback function
	//- We are using addPlugToManipConversionCallback so that whenever
	//- the custom locator moves, the dis manip moves with it.
/*	MFnDagNode fnDagNode(dependNode);
	fnDagNode.getPath(fNodePath);
	unsigned int centerPointIndex = fnDisc.centerIndex(&status);
	addPlugToManipConversionCallback(centerPointIndex,(plugToManipConversionCallback)&arrowLocatorManip::centerPointCallback);
*/


	//- The following two functions are mandatory inside your
	//- connectToDependNode() function
	status = finishAddingManips();
	status = MPxManipContainer::connectToDependNode(dependNode);
	
	return status;

}

//- This method is plugToManipConversionCallback function
//- You implement it so that a specific component of the manipulator
//- will be modified automatically when some plug value changes on 
//- the custom locator.
//- Arguments:
//- 	manipIndex - the index of the component on the manip you want to affect, 
//-                  in this case, it is the center point of this manip
//-	Return Values:
//-		MManipData object, which represents the updated value
/*MManipData arrowLocatorManip::centerPointCallback(unsigned int manipIndex)
{
	MStatus status;

	//Get parent transform node of the locator node
	MObject parentTransform = fNodePath.transform(&status);

	//Get the transform node DAG path
	MDagPath transformPath;
	MDagPath::getAPathTo(parentTransform,transformPath);

	//Retrieve world space translation
	MFnTransform fnTrans(transformPath,&status);
	MVector translation = fnTrans.getTranslation(MSpace::kWorld,&status);

	MFnNumericData numData;
	MObject numDataValue = numData.create(MFnNumericData::k3Double,&status);
	status = numData.setData3Double(translation.x,translation.y,translation.z);

	MManipData manipData(numDataValue);
	return manipData;
}
*/

//- This method is an optional method, you can use it to customize 
//- the drawing of your manipulator. 
//- If you are overriding this function, most likely you will use OpenGL calls, 
//- so opengl32.lib should be included in the linking libraries.
//- Arguments:
//- 	view - the 3d view where the manipulator will be drawn
//-     path - the Dag path of this manipulator
//-     style - the displaying style of this manipulator
//-		status - the displaying status of this manipulator, for example, it is active or not
void arrowLocatorManip::draw(M3dView &view, const MDagPath &path, M3dView::DisplayStyle style, M3dView::DisplayStatus status)
{
	MPxManipContainer::draw(view,path,style,status);

}
