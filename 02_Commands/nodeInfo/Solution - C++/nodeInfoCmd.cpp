// 
// File: 
//
// Dependency Graph Node: 
//
// Author: Maya Plug-in Wizard 2.0
//
#include <maya/MIOStream.h>
#include <maya/MString.h>
#include <maya/MStringResource.h>
#include <maya/MStringResourceId.h>
#include <maya/MArgList.h>

#include <maya/MPxCommand.h>
#include <maya/MSyntax.h>
#include <maya/MArgDatabase.h>

#include <maya/MGlobal.h>
#include <maya/MDagPath.h>
#include <maya/MItSelectionList.h>
#include <maya/MSelectionList.h>

#include <maya/MFnDependencyNode.h>
#include <maya/MPlugArray.h>
#include <maya/MPlug.h>

#include "nodeInfoCmd.h"

// Command class implementation
nodeInfo::nodeInfo() : quiet (false)
{}

nodeInfo::~nodeInfo()
{}

//- Create a new MSyntax object to teach Maya about possible arguments
//- in our command. This newSyntax() method is used during the command
//- registration into our plug-in
/*static*/ MSyntax nodeInfo::newSyntax()
{
	 MSyntax syntax;
	 syntax.addFlag(kQuietFlag, kQuietFlagLong);
	 return syntax;
}

//- This is a method which will be used by our command doIt() method to
//- check arguments passed into our command call.
MStatus nodeInfo::parseArgs( const MArgList& args )
{
	MStatus			stat;
	MArgDatabase	argData(syntax(), args);

	if (argData.isFlagSet(kQuietFlag))
		quiet = true;

	return stat;
}

//- This method performs the action of the command. It iterates over all
//- selected items and prints out connected plug and dependency node type
//- information.
MStatus nodeInfo::doIt( const MArgList& args )
{
	MStatus stat;			// Status code
	MObject dependNode;		// Selected dependency node

	stat = parseArgs ( args );
	if ( !stat )
		return stat;

	//- Retrieve all objects currently selected into the Maya editor.
	MSelectionList slist;
	MGlobal::getActiveSelectionList( slist );
	//- Create an iterator on the selection list (using the iterator pattern).
	MItSelectionList iter( slist, MFn::kInvalid,&stat );

	//- Iterate over all selected dependency nodes
	for ( ; !iter.isDone(); iter.next() ) 
	{
		//- Get the selected dependency node
		iter.getDependNode( dependNode );

		//- Create a function set for the dependency node
		MFnDependencyNode fnDependNode( dependNode );

		//- Check the type of the dependency node
		MString nodeName = fnDependNode.name();
		cout << "////////////////////////////////////////////" << endl;
		cout << nodeName << " is of type " << dependNode.apiTypeStr() << endl;

		//- Get all connected plugs to this node
		MPlugArray connectedPlugs;
		fnDependNode.getConnections( connectedPlugs );

		int numberOfPlugs = connectedPlugs.length();
		if ( !quiet )
		{
			cout << "Number of connections found: " << numberOfPlugs << endl;
		}

		//- Print out the dependency node name and attributes
		//- for each plug
		for ( int i=0; i<numberOfPlugs; i++ ) 
		{
			MPlug plug = connectedPlugs[i];
			MString pinfo = plug.info();
			if ( !quiet )
			{
				cout << " Connected Plug Info: " << pinfo << endl;
			}

			//- Now get the plugs that this plug is the
			//- destination of and print the node type.
			MPlugArray sourceArray;
			plug.connectedTo( sourceArray, true, false );
			for ( unsigned int j=0; j<sourceArray.length(); j++ )
			{
				MObject mnode = sourceArray[j].node();
				if( !quiet )
				{
					MFnDependencyNode fnConnectedNode(mnode);
					cout << " This plug is a destination of node:" << fnConnectedNode.name() << endl;
				}
			}

		}
	}

	//- Return success to Maya
	return MS::kSuccess;
}


