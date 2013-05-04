//
// Copyright (C) 
// 
// File: retrieveWeightCmd.cpp
//
// MEL Command: retrieveWeight
//
// Author: Maya Plug-in Wizard 2.0
//

#include "retrieveWeightCmd.h"
#include <maya/MGlobal.h>
#include <maya/MSelectionList.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MPlug.h>

MStatus retrieveWeightCmd::doIt(const MArgList&)
{
	MStatus stat = MS::kSuccess;

	MObject blendShapeNode;
	MSelectionList selList;

	//- Get the selected blendShape node
	stat = MGlobal::getActiveSelectionList(selList);

	if(selList.length()!=0)
	{
		selList.getDependNode(0,blendShapeNode);

		MFnDependencyNode fnDep(blendShapeNode,&stat);
		
		//- TODO: Verify that the node is a Blend Shape
		if ( //... )
		{
			MString attrName("weight");
			MPlug weightArrayPlug = fnDep.findPlug(attrName,&stat);

			//- TODO: Find out if this plug is a multi plug
			if( //... )
			{
				//- TODO: Get the name of the plug and print it
				MString plugName = //...
				cout<<"Plug "<<plugName<<" is an array plug."<<endl;
				
				//- Find how many elements are in this multi plug
				int numberOfElem = weightArrayPlug.numElements();
				cout<<"This plug has "<<numberOfElem<<" elements."<<endl;

				//- Traverse all the element plugs 
				for (int j = 0 ; j < numberOfElem; j++ )
				{
					//- You can also use like the following line, [], because bracket operator uses physical indexes
					//- MPlug elementPlug = weightArrayPlug [i];

					MPlug elementPlug = weightArrayPlug.elementByPhysicalIndex(j, &stat);
					
					//- Print out the element plug's physical index and logical index
					cout<<"Physical index: "<<j<<";      "<<"Logical index: "<<elementPlug.logicalIndex(&stat)<<endl;

					//- Print out the value in every element plug
					double valueElem;
					stat = elementPlug.getValue(valueElem);
					cout<<"The value in this element plug is "<<valueElem<<endl;
				}
			}
		}
	}
	return stat;
}

