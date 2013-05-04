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
/*stattic*/ MSyntax nodeInfo::newSyntax()
{
	 MSyntax syntax;
	 
	 //- TODO: add flags onto the new created MSyntax object
	 //....

	 return syntax;
}

//- This is a method which will be used by our command doIt() method to
//- check arguments passed into our command call.
MStatus nodeInfo::parseArgs( const MArgList& args )
{
	MStatus			stat;
	MArgDatabase	argData(syntax(), args);

	//- TODO: use MArgDataBase::isFlagSet to parse if the flag has been set by user
	//- and assign the corresponding boolean value to variable "quiet" based on the flag
	//...

	return stat;
}

//- This method performs the action of the command. It iterates over all
//- selected items and prints out connected plug and dependency node type
//- information.
//- TODO: Define the method called by Maya to execute your command (the 
//- TODO: function argument will be names args for this exercise).
//...
{
	MStatus stat;			// Status code
	MObject dependNode;		// Selected dependency node

	stat = parseArgs ( args );
	if ( !stat )
		return stat;

	MSelectionList slist;
	//- TODO: Retrieve all objects currently selected into the Maya editor and put it onto "slist"
	//...


	//- Create an iterator on the selection list (using the iterator pattern).
	MItSelectionList iter( slist, MFn::kInvalid,&stat );

	//- Iterate over all selected dependency nodes
	for ( ; !iter.isDone(); iter.next() ) 
	{
		//- TODO: From the iterator,get corresponding dependency node 
		//- by using MItSelectionList::getDependNode()
		//...

		//- TODO: Create a function set for the dependency node (name it fnDependNode)
		//...

		//- Check the type of the dependency node
		MString nodeName = fnDependNode.name();
		cout << "////////////////////////////////////////////" << endl;
		cout << nodeName << " is of type " << dependNode.apiTypeStr() << endl;

		MPlugArray connectedPlugs;
		//- TODO: Get all connected plugs to this node by using MFnDependencyNode::getConnections()
		//- add assign them to "connectedPlugs"
		//...

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
			MPlugArray array;
			//- TODO: Get the list of plugs this current plug is connected to.
			//...

			for ( unsigned int j=0; j<array.length(); j++ )
			{
				MObject mnode = array[j].node();
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


