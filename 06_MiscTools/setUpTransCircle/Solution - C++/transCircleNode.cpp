//
// Copyright (C) 
// 
// File: transCircleNode.cpp
//
// Author: Maya Plug-in Wizard 2.0
//
#include <maya/MString.h> 
#include <maya/MTypeId.h> 
#include <maya/MPlug.h>

#include <maya/MFnNumericAttribute.h>

#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>

#include <string.h>
#include <maya/MIOStream.h>
#include <math.h>

#include "transCircleNode.h"

MTypeId	transCircle::id( 0x80013 );

MObject	transCircle::input;        
MObject	transCircle::frames;
MObject	transCircle::scale;
MObject	transCircle::inputTranslate;
MObject	transCircle::outputTranslate;
MObject	transCircle::inputTranslateX;
MObject	transCircle::inputTranslateY;
MObject	transCircle::inputTranslateZ;
MObject	transCircle::outputTranslateX;
MObject	transCircle::outputTranslateY;
MObject	transCircle::outputTranslateZ;

MStatus transCircle::initialize()
{
	MFnNumericAttribute nAttr;
	MStatus				stat;

	input = nAttr.create( "input", "in", MFnNumericData::kDouble, 0.0 );
	nAttr.setStorable(true);

	inputTranslateX = nAttr.create( "inputTranslateX", "itX", MFnNumericData::kDouble, 0.0 );
	nAttr.setStorable(true);

	inputTranslateY = nAttr.create( "inputTranslateY", "itY", MFnNumericData::kDouble, 0.0 );
	nAttr.setStorable(true);

	inputTranslateZ = nAttr.create( "inputTranslateZ", "itZ", MFnNumericData::kDouble, 0.0 );
	nAttr.setStorable(true);

	inputTranslate = nAttr.create( "inputTranslate", "it", 
									inputTranslateX,
									inputTranslateY,
									inputTranslateZ );
	nAttr.setStorable(true);
	nAttr.setDefault(0.0,0.0,0.0);

	outputTranslateX = nAttr.create( "outputTranslateX", "otX", MFnNumericData::kDouble, 0.0 );
	nAttr.setWritable(false);
	nAttr.setStorable(true);

	outputTranslateY = nAttr.create( "outputTranslateY", "otY", MFnNumericData::kDouble, 0.0 );
	nAttr.setWritable(false);
	nAttr.setStorable(true);

	outputTranslateZ = nAttr.create( "outputTranslateZ", "otZ", MFnNumericData::kDouble, 0.0 );
	nAttr.setWritable(false);
	nAttr.setStorable(true);

	outputTranslate = nAttr.create( "outputTranslate", "ot", 
									outputTranslateX,
									outputTranslateY,
									outputTranslateZ );
	nAttr.setWritable(false);
	nAttr.setStorable(true);
	nAttr.setDefault(0.0,0.0,0.0);

	scale = nAttr.create( "scale", "sc", MFnNumericData::kDouble, 10.0 );
	nAttr.setStorable(true);

	frames = nAttr.create( "frames", "fr", MFnNumericData::kDouble, 48.0 );
	nAttr.setStorable(true);

	addAttribute( inputTranslate );
	addAttribute( input );
	addAttribute( scale );
	addAttribute( frames );
	addAttribute( outputTranslate );

	attributeAffects( inputTranslateX, outputTranslateX );
	attributeAffects( inputTranslateY, outputTranslateY );
	attributeAffects( inputTranslateZ, outputTranslateZ );
	attributeAffects( inputTranslate, outputTranslateX );
	attributeAffects( inputTranslate, outputTranslateY );
	attributeAffects( inputTranslate, outputTranslateZ );
	attributeAffects( inputTranslate, outputTranslate );
	attributeAffects( input, outputTranslateX );
	attributeAffects( input, outputTranslateY );
	attributeAffects( scale, outputTranslateX );
	attributeAffects( scale, outputTranslateY );
	attributeAffects( frames, outputTranslateX );
	attributeAffects( frames, outputTranslateY );

	return MS::kSuccess;
}

MStatus transCircle::compute( const MPlug& plug, MDataBlock& data )
{
    MStatus stat;
 
	bool k = ( plug == outputTranslateX ) |
	         ( plug == outputTranslateY ) |
			 ( plug == outputTranslateZ ) |
			 ( plug == outputTranslate );
	if (!k) return MS::kUnknownParameter;

	MDataHandle inputData = data.inputValue( input, &stat );
	MDataHandle scaleData = data.inputValue( scale, &stat );
	MDataHandle framesData = data.inputValue( frames, &stat );
	MDataHandle transData  = data.inputValue( inputTranslate, &stat ); 
	double3& iTranslate = transData.asDouble3();
	double currentFrame = inputData.asDouble();
	double scaleFactor  = scaleData.asDouble();
	double framesPerCircle = framesData.asDouble();
	double angle = 6.2831853 * ( currentFrame/framesPerCircle );
	double3 oTranslate;
	
	oTranslate[0] = iTranslate[0] + (sin( angle ) * scaleFactor);
	oTranslate[1] = iTranslate[1] + 1.0;
	oTranslate[2] = iTranslate[2] + (cos( angle ) * scaleFactor);

	MDataHandle otHandle = data.outputValue( outputTranslate ); 
	otHandle.set( oTranslate[0], oTranslate[1], oTranslate[2] );
	data.setClean(plug);

    return MS::kSuccess;
}
