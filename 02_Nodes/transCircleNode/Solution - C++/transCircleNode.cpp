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

//- Assing a unique node ID to your new node class.
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

/*static*/MObject	transCircle::outputTranslateX;
/*static*/MObject	transCircle::outputTranslateY;
/*static*/MObject	transCircle::outputTranslateZ;
/*static*/MObject	transCircle::outputTranslate;

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
	

	//- Create individual output translate attributes
	outputTranslateX = nAttr.create( "outputTranslateX", "otX", MFnNumericData::kDouble, 0.0 );
	nAttr.setWritable(false);
	nAttr.setStorable(true);

	outputTranslateY = nAttr.create( "outputTranslateY", "otY",MFnNumericData::kDouble, 0.0 );
	nAttr.setWritable(false);
	nAttr.setStorable(true);

	outputTranslateZ = nAttr.create( "outputTranslateZ", "otZ", MFnNumericData::kDouble, 0.0 );
	nAttr.setWritable(false);
	nAttr.setStorable(true);

	//- Create compound output translate attributes by adding individual output translate attributes
	outputTranslate = nAttr.create( "outputTranslate", "ot", outputTranslateX,outputTranslateY, outputTranslateZ );
	nAttr.setWritable(false);
	nAttr.setStorable(true);

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
	addAttribute( outputTranslate );
	addAttribute( scale );
	addAttribute( frames );

	//- Finally tell Maya how the information should flow through your node.
	//- This will also tell Maya how the dirty flag is propagated in your node
	//- and ultimatelly in the Maya DG. To do this, use the attributeAffects()
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
	MDataHandle inputTranslateXHandle = data.inputValue(inputTranslateX);
	double inputTranslateXData = inputTranslateXHandle.asDouble();

	MDataHandle inputTranslateYHandle = data.inputValue(inputTranslateY);
	double inputTranslateYData = inputTranslateYHandle.asDouble();

	MDataHandle inputTranslateZHandle = data.inputValue(inputTranslateZ);
	double inputTranslateZData = inputTranslateZHandle.asDouble();

	//- Calculate corresponding angle based on current frame 
	double angle = 6.2831853 * ( currentFrame/framesPerCircle );
	
	//- The value of output translate is input translate value plus the value of circular movement  
	double outputTranslateXData = inputTranslateXData + (sin( angle ) * scaleFactor);
	double outputTranslateYData = inputTranslateYData + 1.0;
	double outputTranslateZData = inputTranslateZData + (cos( angle ) * scaleFactor);

	//- Get a handle on the output attributes and set the new value.
	MDataHandle outputTranslateXHandle = data.outputValue( outputTranslateX ); 
	outputTranslateXHandle.set(outputTranslateXData);

	MDataHandle outputTranslateYHandle = data.outputValue( outputTranslateY ); 
	outputTranslateYHandle.set(outputTranslateYData);

	MDataHandle outputTranslateZHandle = data.outputValue( outputTranslateZ ); 
	outputTranslateZHandle.set(outputTranslateZData);

	//- Tell Maya the plug is now clean
	data.setClean(plug);

	//- Return success to Maya
    return MS::kSuccess;
}

