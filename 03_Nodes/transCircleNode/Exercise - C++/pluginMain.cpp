//
// Copyright (C)  
// 
// File: pluginMain.cpp
//
// Author: Maya Plug-in Wizard 2.0
//

#include <maya/MFnPlugin.h>
#include "transCircleNode.h"

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

	//- TODO: Add plug-in feature registration here
	//...
	
	return status;
}

MStatus uninitializePlugin( MObject obj )
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

	//- TODO: Add plug-in feature deregistration here
	//...

	return status;
}
