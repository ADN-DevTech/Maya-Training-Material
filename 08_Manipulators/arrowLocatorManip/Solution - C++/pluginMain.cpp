//
// Copyright (C) 
// 
// File: pluginMain.cpp
//
// Author: Maya Plug-in Wizard 2.0
//

#include "arrowLocatorManipNode.h"

#include "arrowLocatorNode.h"

#include <maya/MFnPlugin.h>


//- This method is called when the plug-in is loaded into Maya.  It 
//- registers all of the services that this plug-in provides with Maya.
//-
//-	Arguments:
//-		obj - a handle to the plug-in object (use MFnPlugin to access it)
//-
MStatus initializePlugin( MObject obj )
{ 
	MStatus   status;
	MFnPlugin plugin( obj, "", "2008", "Any");

	status = plugin.registerNode( "arrowLocator", arrowLocator::id, arrowLocator::creator,
		arrowLocator::initialize, MPxNode::kLocatorNode);
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

//- This method is called when the plug-in is unloaded from Maya. It 
//- deregisters all of the services that it was providing.
//-
//-	Arguments:
//-		obj - a handle to the plug-in object (use MFnPlugin to access it)
//-
MStatus uninitializePlugin( MObject obj)
{
	MStatus   status;
	MFnPlugin plugin( obj );

	status = plugin.deregisterNode( arrowLocatorManip::id );
	if (!status) {
		status.perror("deregisterNode");
		return status;
	}

	status = plugin.deregisterNode( arrowLocator::id );
	if (!status) {
		status.perror("deregisterNode");
		return status;
	}
	return status;
}
