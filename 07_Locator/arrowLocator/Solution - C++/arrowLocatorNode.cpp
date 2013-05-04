//
// Copyright (C) 
// 
// File: arrowLocatorNode.cpp
//
// Dependency Graph Node: arrowLocator
//
// Author: Maya Plug-in Wizard 2.0
//
#include "arrowLocatorNode.h"

#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include <maya/MGlobal.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MAngle.h>
#include <maya/MColor.h>
#include <maya/MPxManipContainer.h>

//- Assign a unique node ID to your new node class.
//- Ask ADN or Autodesk product support to reserve IDs for your company. You can
//- reserve ID by block of 64, 128, 256, or 512 consecutive ID.
//-
//- 0x80002 is a temporary ID for reserved for development. Never use that ID in a
//- production environment.
/*static*/MTypeId arrowLocator::id( 0x80002 );

//- Instantiate the static attribute of your node class.
/*static*/MObject arrowLocator::windDirection;

//- An array of points to draw our compass arrow in openGL
static float arrow[][3] = { {2.00f, 0.0f, 0.0f} ,
							{-3.0f, 0.0f, 2.0f} ,
							{-2.0f, 0.0f, 0.0f} ,
							{-3.0f, 0.0f, -2.0f}}; 

//- Indices into the arrow array
static GLuint triangleIndices[] = {0,1,2,0,2,3};

//- The initialize method is called to create and initialize all of the 
//- attributes and attribute dependencies for this node type. This is 
//- only called once when the node type is registered with Maya.
//- Return Values: MS::kSuccess / MS::kFailure
//-
/*static*/ MStatus arrowLocator::initialize()
{
	//- Here we create a new attribute type that handles units: angle, distance or time
	MFnUnitAttribute uAttr;
	windDirection = uAttr.create("windDirection", "wd", MFnUnitAttribute::kAngle, 0.0);
	uAttr.setStorable(true);
	uAttr.setWritable(true);
	uAttr.setReadable(true);
	uAttr.setKeyable(true);
	uAttr.setMin(0.0);
	uAttr.setMax(2*PI);
	uAttr.setDefault(MAngle(0.0, MAngle::kRadians));
	addAttribute(windDirection);

	return MS::kSuccess;
}

//- This method draw this locator in current scene by calling openGL functions
//		view -- 3D view that is being drawn into 
//		path -- path to this locator in the DAG 
//		style -- style to draw object in 
//		status -- selection status of object 
//
void arrowLocator::draw(M3dView &view,const MDagPath & path,M3dView::DisplayStyle style, M3dView::DisplayStatus status)
{
	MObject thisNode = thisMObject();

	//- We're in the draw routine, not the compute method
	//- therefore it is safe to grab plugs in the following way and
	//- get/set values.  You would never do something like this in
	//- the compute method because it might start a cycle in the
	//- graph.  Here we just need the value of our winddirection
	//- plug so that we can draw our arrow pointing the right way.
	MPlug wdPlug(thisNode, windDirection);
	MAngle angle;
	wdPlug.getValue(angle);

	//- Start drawing by OpenGL
	view.beginGL(); 
	
	//- If the drawing style is shaded, set color and draw opaque shape
	if ( ( style == M3dView::kFlatShaded ) || ( style == M3dView::kGouraudShaded ) ) 
	{
		//- Push to save current color settings
		glPushAttrib( GL_CURRENT_BIT );
		if ( status == M3dView::kActive ) 
		{
			view.setDrawColor( 13, M3dView::kActiveColors );
		}
		else
		{
			view.setDrawColor( 13, M3dView::kDormantColors );
		}  

		//- Push the old matrix on the stack, rotate the current one,
		//- draw the shape, then pop the old matrix off the stack for
		//- maya to use again.
		glPushMatrix();
		glRotated(-angle.asDegrees(), 0.0, 1.0, 0.0);
			glBegin( GL_TRIANGLE_FAN );
			glVertex3f(arrow[0][0],arrow[0][1],arrow[0][2]);
			glVertex3f(arrow[1][0],arrow[1][1],arrow[1][2]);
			glVertex3f(arrow[2][0],arrow[2][1],arrow[2][2]);
			glEnd();

			glBegin( GL_TRIANGLE_FAN );
			glVertex3f(arrow[2][0],arrow[2][1],arrow[2][2]);
			glVertex3f(arrow[3][0],arrow[3][1],arrow[3][2]);
			glVertex3f(arrow[0][0],arrow[0][1],arrow[0][2]);
			glEnd();
		glPopMatrix();

		glPopAttrib();
	}

	//- Draw the outline of the arrow shape
	glPushMatrix();
	glRotated(-angle.asDegrees(), 0.0, 1.0, 0.0);
	glBegin( GL_LINE_STRIP);
	glVertex3f(arrow[0][0],arrow[0][1],arrow[0][2]);
	glVertex3f(arrow[1][0],arrow[1][1],arrow[1][2]);
	glVertex3f(arrow[2][0],arrow[2][1],arrow[2][2]);
	glEnd();

	glBegin( GL_LINE_STRIP );
	glVertex3f(arrow[2][0],arrow[2][1],arrow[2][2]);
	glVertex3f(arrow[3][0],arrow[3][1],arrow[3][2]);
	glVertex3f(arrow[0][0],arrow[0][1],arrow[0][2]);
	glEnd();
	glPopMatrix();

	view.endGL();
}

//- This method return the bounding box for this locator shape, 
//- providing a bounding box routine makes refresh and selection more efficient. 
//
MBoundingBox arrowLocator::boundingBox() const
{
	MPoint upLeftCorner(-3.0, 0.0, -2.0);
	MPoint downRightCorner(2.0, 0.0, 2.0);
	MBoundingBox boundingArea(upLeftCorner,downRightCorner);
	return boundingArea;
}
