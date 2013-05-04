//
// Copyright (C) 
// 
// File: 
//
// Dependency Graph Node: 
//
// Author: Maya Plug-in Wizard 2.0
//
#include "transCircleNode.h"

//- Assign a unique node ID to your new node class.
//- Ask ADN or Autodesk product support to reserve IDs for your company. You can
//- reserve ID by block of 64, 128, 256, or 512 consecutive ID.
//-
//- 0x80013 is a temporary ID for reserved for development. Never use that ID in a
//- production environment.
/*static*/MTypeId	transCircle::id( 0x80013 );

//- Instantiate the static attributes of your node class.
/*static*/MObject	transCircle::input;        
/*static*/MObject	transCircle::frames;
/*static*/MObject	transCircle::scale;

/*static*/MObject	transCircle::inputTranslateX;
/*static*/MObject	transCircle::inputTranslateY;
/*static*/MObject	transCircle::inputTranslateZ;
/*static*/MObject	transCircle::inputTranslate;

//- TODO: Instantiate the outputTranslate compound attribute and its X, Y, Z
//- TODO: components
//...
//...
//...
//...

//- The initialize method is called to create and initialize all of the 
//- attributes and attribute dependencies for this node type. This is 
//- only called once when the node type is registered with Maya.
//- Return Values: MS::kSuccess / MS::kFailure
//-
MStatus transCircle::initialize()
{
	//- Create a generic attribute using MFnNumericAttribute
	MFnNumericAttribute nAttr;
	input = nAttr.create( "input", "in", MFnNumericData::kDouble, 0.0 );
	//- Attribute will be written to files when this type of node is stored
	nAttr.setStorable(true);

	//- Create individual input translate attributes
	inputTranslateX = nAttr.create( "inputTranslateX", "itX", MFnNumericData::kDouble, 0.0 );
	nAttr.setStorable(true);

	inputTranslateY = nAttr.create( "inputTranslateY", "itY", MFnNumericData::kDouble, 0.0 );
	nAttr.setStorable(true);

	inputTranslateZ = nAttr.create( "inputTranslateZ", "itZ", MFnNumericData::kDouble, 0.0 );
	nAttr.setStorable(true);

	//- Create compound input translate attributes by adding individual input translate attributes
	inputTranslate = nAttr.create( "inputTranslate", "it", inputTranslateX,inputTranslateY, inputTranslateZ );
	nAttr.setStorable(true);

	//- TODO: Create the outputTranslate compound attribute and its X, Y, Z
	//- TODO: components. Make the attribute saved into the Maya file, and not 
	//- TODO: writable. Tips: properties needs to be set for each components, 
	//- TODO: including the parent.

	//- Create individual output translate attributes
	//...
	//...
	//...

	//...
	//...
	//...

	//...
	//...
	//...

	//- Create compound output translate attributes by adding individual output translate attributes
	//...
	//...
	//...
	//...
	//...
	//...

	//- Create other attributes for our node
	scale = nAttr.create( "scale", "sc",MFnNumericData::kDouble, 10.0 );
	nAttr.setStorable(true);

	frames = nAttr.create( "frames", "fr", MFnNumericData::kDouble, 48.0 );
	nAttr.setStorable(true);

	//- Now add the attribute to your node definition using the addAttribute()
	//- method.

	//- Add the attributes we have created to the node. For compound attributes,
	//- you only need to add the parent attribute.
	addAttribute( input );
	addAttribute( inputTranslate );
	
	//- TODO: Add the compound attribute to the list of the node' attribute.
	//- TODO: Since the child-parent relationship has been setup, we only need
	//- TODO: to add the parent attribute.
	//...
	
	addAttribute( scale );
	addAttribute( frames );

	//- Finally tell Maya how the information should flow through your node.
	//- This will also tell Maya how the dirty flag is propagated in your node
	//- and ultimately in the Maya DG. To do this, use the attributeAffects()
	//- method to link your node' attributes together.

	//- Set up a dependency between the input and the output. This will cause
	//- the output to be marked dirty when the input changes. The output will
	//- then be recomputed the next time the value of the output is requested.

	//- All input compound attributes' component will affects the output components
	//- of the output compound attributes' components. Including the parent attribute.
	attributeAffects( inputTranslateX, outputTranslateX );
	attributeAffects( inputTranslateY, outputTranslateY );
	attributeAffects( inputTranslateZ, outputTranslateZ );
	attributeAffects( inputTranslate, outputTranslateX );
	attributeAffects( inputTranslate, outputTranslateY );
	attributeAffects( inputTranslate, outputTranslateZ );
	attributeAffects( inputTranslate, outputTranslate );

	//- Other relationships,
	attributeAffects( input, outputTranslateX );
	attributeAffects( input, outputTranslateY );
	attributeAffects( scale, outputTranslateX );
	attributeAffects( scale, outputTranslateY );
	attributeAffects( frames, outputTranslateX );
	attributeAffects( frames, outputTranslateY );

	//- Return success to Maya
	return MS::kSuccess;
}

//- This method computes the value of the given output plug based
//- on the values of the input attributes.
//- Arguments:
//- 	plug - the plug to compute
//- 	data - object that provides access to the attributes for this node
MStatus transCircle::compute( const MPlug& plug, MDataBlock& data )
{
    MStatus stat;
 
	//- Check which output attribute we have been asked to compute. If this 
	//- node doesn't know how to compute it, you must return MS::kUnknownParameter.

	bool k = ( plug == outputTranslateX ) |
	         ( plug == outputTranslateY ) |
			 ( plug == outputTranslateZ ) |
			 ( plug == outputTranslate );
	if (!k) return MS::kUnknownParameter;

	//- Get a handle on the input attributes that we will need for the
	//- computation. If the value is being supplied via a connection 
	//- in the dependency graph, then this call will cause all upstream  
	//- connections to be evaluated so that the correct value is supplied.

	MDataHandle inputData = data.inputValue( input, &stat );
	MDataHandle scaleData = data.inputValue( scale, &stat );
	MDataHandle framesData = data.inputValue( frames, &stat );

	//- Retrieve value of current frame attribute,scale factor 
	//- and number of frames for one circle 
	double currentFrame = inputData.asDouble();
	double scaleFactor  = scaleData.asDouble();
	double framesPerCircle = framesData.asDouble();

	//- Retrieve values on individual input translate attribute

	//- TODO: Retrieve the double value of the X, Y, Z components of the inputTranslate attribute
	MDataHandle inputTranslateXHandle = //...
	double inputTranslateXData = //...

	MDataHandle inputTranslateYHandle = //...
	double inputTranslateYData = //...

	MDataHandle inputTranslateZHandle = //...
	double inputTranslateZData = //...

	//- Calculate corresponding angle based on current frame 
	double angle = 6.2831853 * ( currentFrame/framesPerCircle );
	
	//- The value of output translate is input translate value plus the value of circular movement  
	double outputTranslateXData = inputTranslateXData + (sin( angle ) * scaleFactor);
	double outputTranslateYData = inputTranslateYData + 1.0;
	double outputTranslateZData = inputTranslateZData + (cos( angle ) * scaleFactor);

	//- Get a handle on the output attributes and set the new value.

	//- TODO: Set the double value of the X, Y, Z components of the outputTranslate attribute

	MDataHandle outputTranslateXHandle = //...
	//...

	MDataHandle outputTranslateYHandle = //...
	//...

	MDataHandle outputTranslateZHandle = //...
	//...

	//- Tell Maya the plug is now clean
	data.setClean(plug);

	//- Return success to Maya
    return MS::kSuccess;
}

