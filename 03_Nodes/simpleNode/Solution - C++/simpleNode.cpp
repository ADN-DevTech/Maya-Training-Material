//
// Copyright (C) 
// 
// File: simpleNode.cpp
//
// Dependency Graph Node: simpleNode
//
// Author: Maya Plug-in Wizard 2.0
//

#include "simpleNode.h"
#include <maya/MGlobal.h>

//- Assigning a unique node ID to your new node class.
//- Ask ADN or Autodesk product support to reserve IDs for your company. You can
//- reserve ID by block of 64, 128, 256, or 512 consecutive ID.
//-
//- 0x00001 is a temporary ID for reserved for development. Never use that ID in a
//- production environment.
/*static*/ MTypeId simpleNode::id( 0x00001 );

//- Instantiate the static attributes of your node class.
/*static*/ MObject simpleNode::input;        
/*static*/ MObject simpleNode::output;   
	 

//- The initialize method is called to create and initialize all of the 
//- attributes and attribute dependencies for this node type. This is 
//- only called once when the node type is registered with Maya.
//- Return Values: MS::kSuccess / MS::kFailure
//-
MStatus simpleNode::initialize()
{
	//- Initialize a float input attribute using the MFnNumericAttribute
	//- class. Make that attribute definition saved into Maya file (setStorable),
	//- and selectable in the channel box (setKeyable).

	//- Create a generic attribute using MFnNumericAttribute
	MFnNumericAttribute nAttr;
	input = nAttr.create( "input", "in", MFnNumericData::kFloat, 0.0 );
	//- Attribute will be written to files when this type of node is stored
 	nAttr.setStorable(true);
	//- Attribute is keyable and will show up in the channel box
 	nAttr.setKeyable(true);

	//- Initialize a float output attribute using the MFnNumericAttribute
	//- class. Make that attribute definition not saved into Maya file.
	output = nAttr.create( "output", "out", MFnNumericData::kFloat, 0.0 );
	//- Attribute will not be written to files when this type of node is stored
	nAttr.setStorable(false);
	
	//- Now add the attribute to your node definition using the addAttribute()
	//- method.

	//- Add the attributes we have created to the node
	addAttribute( input );	
	//- Add the aOutput attribute to the node type definition
	addAttribute( output );
	
	//- Finally tell Maya how the information should flow through your node.
	//- This will also tell Maya how the dirty flag is propagated in your node
	//- and ultimately in the Maya DG. To do this, use the attributeAffects()
	//- method to link your node' attributes together.

	//- Set up a dependency between the input and the output. This will cause
	//- the output to be marked dirty when the input changes. The output will
	//- then be recomputed the next time the value of the output is requested.
	attributeAffects( input, output );

	//- Return success to Maya
	return MS::kSuccess;
}

//- This method computes the value of the given output plug based
//- on the values of the input attributes.
//- Arguments:
//- 	plug - the plug to compute
//- 	data - object that provides access to the attributes for this node
MStatus simpleNode::compute( const MPlug& plug, MDataBlock& data )
{
	MStatus returnStatus;
 
	//- Check which output attribute we have been asked to compute. If this 
	//- node doesn't know how to compute it, you must return MS::kUnknownParameter.

	if( plug == output )
	{
		//- Get a handle to the input attribute that we will need for the
		//- computation. If the value is being supplied via a connection 
		//- in the dependency graph, then this call will cause all upstream  
		//- connections to be evaluated so that the correct value is supplied.
		MDataHandle inputData = data.inputValue( input, &returnStatus );

		//- Read the input value from the handle.
		float result = inputData.asFloat();

		//- Get a handle to the output attribute. This is similar to the
		//- "inputValue" call above except that no dependency graph 
		//- computation will be done as a result of this call.

		//- Get a handle on the aOutput attribute
		MDataHandle outputHandle = data.outputValue( simpleNode::output );

		//- Set the new output value to the handle.
		outputHandle.set( result * 2 );

		//- Mark the destination plug as being clean. This will prevent the
		//- dependency graph from repeating this calculation until an input 
		//- attribute of this node which affects this output attribute changes.

		//- Tell Maya the plug is now clean
		data.setClean(plug);

		//- Return success to Maya
		return MS::kSuccess;
	}

	//- Tell Maya that we do not know how to handle this plug, but let give a chance
	//- to our parent class to evaluate it.
	return MS::kUnknownParameter;
}
