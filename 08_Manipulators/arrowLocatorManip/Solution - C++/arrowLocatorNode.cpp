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
#include "arrowLocatorManipNode.h"

#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include <maya/MGlobal.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MAngle.h>
#include <maya/MColor.h>
#include <maya/MPxManipContainer.h>

#include <maya/MFnPlugin.h>

// You MUST change this to a unique value!!!  The id is a 32bit value used
// to identify this type of node in the binary file format.  
//
//change the following to a unique value 
MTypeId     arrowLocator::id( 0x00002 );
MString	arrowLocator::drawDbClassification("drawdb/geometry/arrowLocator");
MString	arrowLocator::drawRegistrantId("arrowLocatorNodePlugin");


MObject     arrowLocator::windDirection;

//an array of points to draw our compass arrow in openGL
static float arrow[][3] = { {2.00f, 0.0f, 0.0f} ,
							{-3.0f, 0.0f, 2.0f} ,
							{-2.0f, 0.0f, 0.0f} ,
							{-3.0f, 0.0f, -2.0f}}; 

//indices into the arrow array
static GLuint triangleIndices[] = {0,1,2,0,2,3};


MStatus arrowLocator::compute( const MPlug& plug, MDataBlock& data )
{
	return MS::kSuccess;
}



MStatus arrowLocator::initialize()
{
	//Here we create a new attribute type that handles units: angle, distance or time
	MFnUnitAttribute uAttr;
	windDirection = uAttr.create("windDirection", "wd", MFnUnitAttribute::kAngle, 0.0);
	uAttr.setStorable(true);
	uAttr.setWritable(true);
	uAttr.setReadable(true);
	uAttr.setKeyable(true);

	uAttr.setDefault(MAngle(0.0, MAngle::kDegrees));

	addAttribute(windDirection);

	//- To make connection between your custom node and your custom 
	//- manipulator node, you need to name your custom manipulator 
	//- after your custom node type name, also in your custom node's initialize()
	//- function, you need to call MPxManipContainer::addToManipConnectTable().
	//- This method adds the user defined node as an entry in the manipConnectTable 
	//- so that when this node is selected the user can use the show manip tool to 
	//- get the user defined manipulator associated with this node
	MPxManipContainer::addToManipConnectTable(id);

	return MS::kSuccess;
}


//-	This method draw this locator in current scene by calling openGL functions
//-
//-	Arguments:
//-		view -- 3D view that is being drawn into 
//-		path -- path to this locator in the DAG 
//-		style -- style to draw object in 
//-		status -- selection status of object 
//-
void arrowLocator::draw(M3dView &view,const MDagPath & path,M3dView::DisplayStyle style, M3dView::DisplayStatus status)
{
	MObject thisNode = thisMObject();

	//We're in the draw routine, not the Compute method
	//therefore it is safe to grab plugs in the following way and
	//get/set values.  You would never do something like this in
	//the compute method because it might start a cycle in the
	//graph.  Here we just need the value of our winddirection
	//plug so that we can draw our arrow pointing the right way.
	MPlug wdPlug(thisNode, windDirection);

	MAngle angle;
	wdPlug.getValue(angle);

	//start drawing by OpenGL
	view.beginGL(); 
	

	//If the drawing style is shaded, set color and draw opaque shape
	if ( ( style == M3dView::kFlatShaded ) || ( style == M3dView::kGouraudShaded ) ) 
	{
		//Push to save current color settings
		glPushAttrib( GL_CURRENT_BIT );

		if ( status == M3dView::kActive ) 
		{
			view.setDrawColor( 13, M3dView::kActiveColors );
		}else {
			view.setDrawColor( 13, M3dView::kDormantColors );
		}  

		//push the old matrix on the stack, rotate the current one,
		//draw the shape, then pop the old matrix off the stack for
		//maya to use again.
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

	//Draw the outline of the arrow shape
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


//-	This method should be overridden to return true if the user supplies a bounding box routine.
bool arrowLocator::isBounded() const
{
	return true;
}

//-	This method return the bounding box for this locator shape, 
//- providing a bounding box routine makes refresh and selection more efficient. 
//
MBoundingBox arrowLocator::boundingBox() const
{

	MPoint upLeftCorner(-3.0, 0.0, -2.0);
	MPoint downRightCorner(2.0, 0.0, 2.0);

	MBoundingBox boundingArea(upLeftCorner,downRightCorner);
	return boundingArea;
}




void arrowLocator::getRotationAngle (arrowLocatorData * data){
	// Retrieve value of the angle attribute from the node
	MStatus status ;
	
	MObject node = thisMObject();
	MPlug wdPlug(node, windDirection);
	MAngle angle;
	wdPlug.getValue(angle);

	data->rotateAngle = angle;
}



class arrowLocatorOverride : public MHWRender::MPxDrawOverride
{
public:
	static MHWRender::MPxDrawOverride* Creator(const MObject& obj)
	{
		return new arrowLocatorOverride(obj);
	}

	virtual ~arrowLocatorOverride();

	virtual MHWRender::DrawAPI supportedDrawAPIs() const;

    virtual bool isBounded(
        const MDagPath& objPath,
        const MDagPath& cameraPath) const;

	virtual MBoundingBox boundingBox(
		const MDagPath& objPath,
		const MDagPath& cameraPath) const;

	virtual MUserData* prepareForDraw(
		const MDagPath& objPath,
		const MDagPath& cameraPath,
		const MHWRender::MFrameContext& frameContext,
		MUserData* oldData);

	static void draw(
		const MHWRender::MDrawContext& context,
		const MUserData* data);

private:
	arrowLocatorOverride(const MObject& obj);
};



arrowLocatorOverride::arrowLocatorOverride(const MObject& obj)
: MHWRender::MPxDrawOverride(obj, arrowLocatorOverride::draw)
{
}

arrowLocatorOverride::~arrowLocatorOverride()
{
}

MHWRender::DrawAPI arrowLocatorOverride::supportedDrawAPIs() const
{
	return MHWRender::kOpenGL;
}

bool arrowLocatorOverride::isBounded(
	const MDagPath& objPath,
	const MDagPath& cameraPath) const
{
	return true;
}

MBoundingBox arrowLocatorOverride::boundingBox(
	const MDagPath& objPath,
	const MDagPath& cameraPath) const
{
	MStatus status;
	MFnDependencyNode node(objPath.node(), &status);
	arrowLocator* locatorNode =
		dynamic_cast<arrowLocator*>(node.userNode());
	return locatorNode->boundingBox();
}

MUserData* arrowLocatorOverride::prepareForDraw(
	const MDagPath& objPath,
	const MDagPath& cameraPath,
	const MHWRender::MFrameContext& frameContext,
	MUserData* oldData)
{
	// get the node
	MStatus status;
	MFnDependencyNode node(objPath.node(), &status);
	if (!status) return NULL;
	arrowLocator* locatorNode =
		dynamic_cast<arrowLocator*>(node.userNode());
	if (!locatorNode) return NULL;

	// access/create user data for draw callback
	arrowLocatorData* data =
		dynamic_cast<arrowLocatorData*>(oldData);
	if (!data)
	{
		data = new arrowLocatorData();
	}

	// compute data and cache it
	locatorNode->getRotationAngle(data) ;

	return data;
}

void arrowLocatorOverride::draw(
	const MHWRender::MDrawContext& context,
	const MUserData* data)
{
	MAngle rotationAngle;

	float color [3] ={ 0.0f, 1.0f, 0.0f } ;

	// data
	MStatus status;
	MHWRender::MStateManager* stateMgr = context.getStateManager();
	const arrowLocatorData* locatorData =
		dynamic_cast<const arrowLocatorData*>(data);
	if (!stateMgr || !locatorData) return;

	if ( locatorData )
		rotationAngle = locatorData->rotateAngle;

	// matrices
	const MMatrix transform =
		context.getMatrix(MHWRender::MFrameContext::kWorldViewMtx, &status);
	if (status != MStatus::kSuccess) return;
	const MMatrix projection =
		context.getMatrix(MHWRender::MFrameContext::kProjectionMtx, &status);
	if (status != MStatus::kSuccess) return;

	// get renderer
	MHWRender::MRenderer *theRenderer =MHWRender::MRenderer::theRenderer () ;
	if ( !theRenderer )
		return ;
	if ( theRenderer->drawAPIIsOpenGL () ) {
		
		glPushAttrib(GL_CURRENT_BIT);
		glColor4fv(color);

		glPushMatrix();
		glRotated(-rotationAngle.asDegrees(), 0.0, 1.0, 0.0);
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

	}
}

MStatus initializePlugin( MObject obj )
//
//	Description:
//		this method is called when the plug-in is loaded into Maya.  It 
//		registers all of the services that this plug-in provides with 
//		Maya.
//
//	Arguments:
//		obj - a handle to the plug-in object (use MFnPlugin to access it)
//
{ 
	MStatus   status;
	MFnPlugin plugin( obj, "", "2009", "Any");

	status = plugin.registerNode( "arrowLocator", arrowLocator::id, arrowLocator::creator,
		arrowLocator::initialize, MPxNode::kLocatorNode,&arrowLocator::drawDbClassification);

	status = MHWRender::MDrawRegistry::registerDrawOverrideCreator (
		arrowLocator::drawDbClassification,
		arrowLocator::drawRegistrantId,
		arrowLocatorOverride::Creator) ;

	if (!status) {
		status.perror("registerNode");
		return status;
	}


	//- Register custom manipulator for your custom locator node.
	//- In order to make it work, you need to name your custom manipulator 
	//- after your custom node type name, also in your custom node's initialize()
	//- function, you need to call MPxManipContainer::addToManipConnectTable()

	status = plugin.registerNode( "arrowLocatorManip", arrowLocatorManip::id, arrowLocatorManip::creator,
		arrowLocatorManip::initialize,MPxNode::kManipContainer );
	if (!status) {
		status.perror("registerNode");
		return status;
	}


	return status;
}

MStatus uninitializePlugin( MObject obj)
//
//	Description:
//		this method is called when the plug-in is unloaded from Maya. It 
//		deregisters all of the services that it was providing.
//
//	Arguments:
//		obj - a handle to the plug-in object (use MFnPlugin to access it)
//
{
	MStatus   status;
	MFnPlugin plugin( obj );

	status = plugin.deregisterNode( arrowLocatorManip::id );
	if (!status) {
		status.perror("deregisterNode");
		return status;
	}

	status = plugin.deregisterNode( arrowLocator::id );

	MHWRender::MDrawRegistry::deregisterDrawOverrideCreator (
		arrowLocator::drawDbClassification,
		arrowLocator::drawRegistrantId) ;

	if (!status) {
		status.perror("deregisterNode");
		return status;
	}

	return status;
}
