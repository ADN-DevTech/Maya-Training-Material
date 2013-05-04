// 
// File: 
//
// Dependency Graph Node: 
//
// Author: Maya Plug-in Wizard 2.0
//
#include "nodeInfoCmd.h"
#include <maya/MFnPlugin.h>

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
	MFnPlugin plugin( obj, PLUGIN_COMPANY, "2009", "Any");

	// Add plug-in feature registration here
	//
	status = plugin.registerCommand( "nodeInfo", nodeInfo::creator, nodeInfo::newSyntax);

	if (!status) {
		status.perror("registerCommand");
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
	MStatus	  status;
	MFnPlugin plugin( obj );

	// Add plug-in feature deregistration here
	//
	plugin.deregisterCommand ( "nodeInfo" ) ;
	if (!status) {
		status.perror("deregisterCommand");
		return status;
	}

	return status;
}
