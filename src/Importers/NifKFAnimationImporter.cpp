#include "Importers\NifKFAnimationImporter.h"



NifKFAnimationImporter::NifKFAnimationImporter() {

}

NifKFAnimationImporter::NifKFAnimationImporter( NifTranslatorOptionsRef translatorOptions, NifTranslatorDataRef translatorData, NifTranslatorUtilsRef translatorUtils ) 
	: NifTranslatorFixtureItem(translatorOptions, translatorData, translatorUtils) {

}


void NifKFAnimationImporter::ImportAnimation( NiInterpolatorRef interpolator,MString& targetObject ) {
	MObject object = this->GetObjectByName(targetObject);

	if(object.isNull()) {
		return;
	}

	vector<Key<Vector3>> translationKeys;
	vector<Key<float>> scaleKeys;
	vector<Key<Quaternion>> rotationQuaternionKeys;

	vector<Key<float>> rotationXKeys;
	vector<Key<float>> rotationYKeys;
	vector<Key<float>> rotationZKeys;
	
	MFnTransform transformNode(object);
	MPlug plug = transformNode.findPlug("interpolatorType");
	MString node_name = transformNode.name();
	MString mel_command = "addAttr -dataType \"string\" -shortName \"interpolatorType\" ";

	if(plug.isNull()) {	
		MGlobal::executeCommand(mel_command + node_name);
	}

#pragma warning(push)
#pragma warning(disable : 4482)

	if(interpolator->GetType().IsSameType(NiTransformInterpolator::TYPE)) {
		NiTransformInterpolatorRef transformInterpolator = DynamicCast<NiTransformInterpolator>(interpolator);

		NiTransformDataRef transformData = transformInterpolator->GetData();

		if(transformData != NULL) {
			if(transformData->GetRotateType() == KeyType::XYZ_ROTATION_KEY) {
				rotationXKeys = transformData->GetXRotateKeys();
				rotationYKeys = transformData->GetYRotateKeys();
				rotationZKeys = transformData->GetZRotateKeys();
			} else {
				rotationQuaternionKeys = transformData->GetQuatRotateKeys();
			}

			translationKeys = transformData->GetTranslateKeys();
			scaleKeys = transformData->GetScaleKeys();
		}

		mel_command = "setAttr -type \"string\" ";
		MGlobal::executeCommand(mel_command + node_name + ".interpolatorType \"NiTransformInterpolator\"");
	}

#pragma warning(pop)

	if(interpolator->GetType().IsDerivedType(NiBSplineTransformInterpolator::TYPE)) {
		NiBSplineTransformInterpolatorRef spline_interpolator = DynamicCast<NiBSplineTransformInterpolator>(interpolator);
		NiBSplineBasisDataRef spline_interpolator_bdata = spline_interpolator->GetBasisData();
		
		if(spline_interpolator_bdata != NULL) {
			if(spline_interpolator->GetTranslationOffset() != 65535) {
				vector<Vector3> translationValues = spline_interpolator->GetTranslateControlData();

				float start = spline_interpolator->GetStartTime();
				float increment = (spline_interpolator->GetStopTime() - spline_interpolator->GetStartTime()) / translationValues.size();

				for(int i = 0; i < translationValues.size(); i++) {
					Key<Vector3> key;
					key.data = translationValues[i];
					key.time = start;
					start += increment;
					translationKeys.push_back(key);
				}
			}

			if(spline_interpolator->GetRotationOffset() != 65535) {
				vector<Quaternion> rotationValues = spline_interpolator->GetQuatRotateControlData();

				float start = spline_interpolator->GetStartTime();
				float increment = (spline_interpolator->GetStopTime() - spline_interpolator->GetStartTime()) / rotationValues.size();

				for(int i = 0; i < rotationValues.size(); i++) {
				Key<Quaternion> key;
				key.data = rotationValues[i];
				key.time = start;
				start += increment;
				rotationQuaternionKeys.push_back(key);
				}
			}

			if(spline_interpolator->GetScaleOffset() != 65535) {
				vector<float> scaleValues = spline_interpolator->GetScaleControlData();

				float start = spline_interpolator->GetStartTime();
				float increment = (spline_interpolator->GetStopTime() - spline_interpolator->GetStartTime()) / scaleValues.size();

				for(int i = 0; i < scaleValues.size(); i++) {
					Key<float> key;
					key.data = scaleValues[i];
					key.time = start;
					start += increment;
					scaleKeys.push_back(key);
				}
			}

			if(interpolator->GetType().IsSameType(NiBSplineCompTransformInterpolator::TYPE)) {
				mel_command = "setAttr -type \"string\" ";
				MGlobal::executeCommand(mel_command + node_name + ".interpolatorType \"NiBSplineCompTransformInterpolator\"");
			} else if(interpolator->GetType().IsSameType(NiBSplineTransformInterpolator::TYPE)) {
				mel_command = "setAttr -type \"string\" ";
				MGlobal::executeCommand(mel_command + node_name + ".interpolatorType \"NiBSplineTransformInterpolator\"");
			}
		}
	}

	if(interpolator->GetType().IsSameType(NiPoint3Interpolator::TYPE)) {
		NiPoint3InterpolatorRef point3Interpolator = DynamicCast<NiPoint3Interpolator>(interpolator);
		NiPosDataRef posData = point3Interpolator->GetData();

		translationKeys = posData->GetKeys();

		mel_command = "setAttr -type \"string\" ";
		MGlobal::executeCommand(mel_command + node_name + ".interpolatorType \"NiPoint3Interpolator\"");
	}

	if(translationKeys.size() > 0) {
		MFnAnimCurve translationX;
		MFnAnimCurve translationY;
		MFnAnimCurve translationZ;

		translationX.create(transformNode.findPlug("translateX"));
		translationY.create(transformNode.findPlug("translateY"));
		translationZ.create(transformNode.findPlug("translateZ"));

		for(int i = 0; i < translationKeys.size(); i++) {
			float positionX = translationKeys.at(i).data.x;
			float positionY = translationKeys.at(i).data.y;
			float positionZ = translationKeys.at(i).data.z;

			MTime time(translationKeys.at(i).time,MTime::kSeconds);

			translationX.addKey(time, positionX);
			translationY.addKey(time, positionY);
			translationZ.addKey(time, positionZ);
		}

	} else {

	}
	
	if(scaleKeys.size() > 0) {
		MFnAnimCurve scaleX;
		MFnAnimCurve scaleY;
		MFnAnimCurve scaleZ;

		scaleX.create(transformNode.findPlug("scaleX"));
		scaleY.create(transformNode.findPlug("scaleY"));
		scaleZ.create(transformNode.findPlug("scaleZ"));

		for(int i = 0; i < scaleKeys.size(); i++) {
			float scale = scaleKeys.at(i).data;

			MTime time(scaleKeys.at(i).time, MTime::kSeconds);

			scaleX.addKey(time, scale);
			scaleY.addKey(time, scale);
			scaleZ.addKey(time, scale);
		}

	} else {

	}

	if(rotationQuaternionKeys.size() > 0 ) {
		MFnAnimCurve rotationX;
		MFnAnimCurve rotationY;
		MFnAnimCurve rotationZ;

		rotationX.create(transformNode.findPlug("rotateX"));
		rotationY.create(transformNode.findPlug("rotateY"));
		rotationZ.create(transformNode.findPlug("rotateZ"));

		MPlug plug = transformNode.findPlug("rotationType");

		if(plug.isNull()) {
			mel_command = "addAttr -dataType \"string\" -shortName \"rotationType\" ";
			MGlobal::executeCommand(mel_command + node_name);
		}

		mel_command = "setAttr -type \"string\" ";
		MGlobal::executeCommand(mel_command + node_name + ".rotationType \"quaternion\"");

		MEulerRotation mPrevRot;

		for(int i = 0; i < rotationQuaternionKeys.size(); i++) {
			Quaternion qt = rotationQuaternionKeys.at(i).data;

			MQuaternion mQuat( qt.x, qt.y, qt.z, qt.w );
			MEulerRotation mRot = mQuat.asEulerRotation();
			MEulerRotation mAlt;
			mAlt[0] = M_PI + mRot[0];
			mAlt[1] = M_PI - mRot[1];
			mAlt[2] = M_PI + mRot[2];

			for ( unsigned int j = 0; j < 3; ++j ) {
				double prev_diff = abs(mRot[j] - mPrevRot[j]);
				//Try adding and subtracting multiples of 2 pi radians to get
				//closer to the previous angle
				while (true) {
					double new_angle = mRot[j] - (M_PI * 2);
					double diff = abs( new_angle - mPrevRot[j] );
					if ( diff < prev_diff ) {
						mRot[j] = new_angle;
						prev_diff = diff;
					} else {
						break;
					}
				}
				while (true) {
					double new_angle = mRot[j] + (M_PI * 2);
					double diff = abs( new_angle - mPrevRot[j] );
					if ( diff < prev_diff ) {
						mRot[j] = new_angle;
						prev_diff = diff;
					} else {
						break;
					}
				}
			}

			for ( unsigned int j = 0; j < 3; ++j ) {
				double prev_diff = abs(mAlt[j] - mPrevRot[j]);
				//Try adding and subtracting multiples of 2 pi radians to get
				//closer to the previous angle
				while (true) {
					double new_angle = mAlt[j] - (M_PI * 2);
					double diff = abs( new_angle - mPrevRot[j] );
					if ( diff < prev_diff ) {
						mAlt[j] = new_angle;
						prev_diff = diff;
					} else {
						break;
					}
				}
				while (true) {
					double new_angle = mAlt[j] + (M_PI * 2);
					double diff = abs( new_angle - mPrevRot[j] );
					if ( diff < prev_diff ) {
						mAlt[j] = new_angle;
						prev_diff = diff;
					} else {
						break;
					}
				}
			}


			//Try taking advantage of the fact that:
			//Rotate(x,y,z) = Rotate(pi + x, pi - y, pi +z)
			double rot_diff = ( (abs(mRot[0] - mPrevRot[0]) + abs(mRot[1] - mPrevRot[1]) + abs(mRot[2] - mPrevRot[2]) ) / 3.0 );
			double alt_diff = ( (abs(mAlt[0] - mPrevRot[0]) + abs(mAlt[1] - mPrevRot[1]) + abs(mAlt[2] - mPrevRot[2]) ) / 3.0 );

			if ( alt_diff < rot_diff ) {
				mRot = mAlt;
			}

			mPrevRot = mRot;

			float rotateX = static_cast<float>(mRot[0]);
			float rotateY = static_cast<float>(mRot[1]);
			float rotateZ = static_cast<float>(mRot[2]);

			MTime time(rotationQuaternionKeys.at(i).time, MTime::kSeconds);

			rotationX.addKey(time, rotateX);
			rotationY.addKey(time, rotateY);
			rotationZ.addKey(time, rotateZ);
		}
	} else {
		
	}

	bool hasXYZRotation = false;

	if(rotationXKeys.size() > 0) {
		hasXYZRotation = true;

		MFnAnimCurve rotationX;

		rotationX.create(transformNode.findPlug("rotateX"));

		for(int i = 0;i < rotationXKeys.size(); i++) {
			MTime time(rotationXKeys[i].time, MTime::kSeconds);

			rotationX.addKey(time, rotationXKeys[i].data);
		}
	}

	if(rotationYKeys.size() > 0) {
		hasXYZRotation = true;

		MFnAnimCurve rotationY;

		rotationY.create(transformNode.findPlug("rotateY"));

		for(int i = 0;i < rotationYKeys.size(); i++) {
			MTime time(rotationYKeys[i].time, MTime::kSeconds);

			rotationY.addKey(time, rotationYKeys[i].data);
		}
	}

	if(rotationZKeys.size() > 0) {
		hasXYZRotation = true;

		MFnAnimCurve rotationZ;

		rotationZ.create(transformNode.findPlug("rotateZ"));

		for(int i = 0;i < rotationZKeys.size(); i++) {
			MTime time(rotationZKeys[i].time, MTime::kSeconds);

			rotationZ.addKey(time, rotationZKeys[i].data);
		}
	}
	
	if(hasXYZRotation == true) {
		MPlug plug = transformNode.findPlug("rotationType");

		if(plug.isNull()) {
			mel_command = "addAttr -dataType \"string\" -shortName \"rotationType\" ";
			MGlobal::executeCommand(mel_command + node_name);
		}

		mel_command = "setAttr -type \"string\" ";
		MGlobal::executeCommand(mel_command + node_name + ".rotationType \"XYZ\"");
	}

	if(interpolator->GetType().IsSameType(NiFloatInterpolator::TYPE)) {
		NiFloatInterpolatorRef float_interpolator = DynamicCast<NiFloatInterpolator>(interpolator);
		NiFloatDataRef float_data = float_interpolator->GetData();

		MFnAnimCurve translate_float;

		if (float_data != NULL) {
			translate_float.create(transformNode.findPlug("translateX"));
			vector<Key<float>> translate_keys = float_data->GetKeys();
			

			for(int i = 0; i < translate_keys.size(); i++) {
				MTime key_time(translate_keys[i].time, MTime::kSeconds);
				translate_float.addKey(key_time, translate_keys[i].data);
			}
		}

		mel_command = "setAttr -type \"string\" ";
		MGlobal::executeCommand(mel_command + node_name + ".interpolatorType \"NiFloatInterpolator\"");
	}

	if(interpolator->GetType().IsSameType(NiBoolInterpolator::TYPE)) {
		NiBoolInterpolatorRef bool_interpolator = DynamicCast<NiBoolInterpolator>(interpolator);

		NiBoolDataRef bool_data = bool_interpolator->GetData();

		MFnAnimCurve translate_bool;

		if(bool_data != NULL) {
			translate_bool.create(transformNode.findPlug("translateX"));
			vector<Key<unsigned char>> bool_keys = bool_data->GetKeys();

			for(int i = 0; i < bool_keys.size(); i++) {
				MTime key_time(bool_keys[i].time, MTime::kSeconds);
				unsigned char key_value = bool_keys[i].data;

				if(abs(key_value - 1) < 0.5) {
					translate_bool.addKey(key_time, 1);
				} else {
					translate_bool.addKey(key_time, 0);
				}
			}
		}

		mel_command = "setAttr -type \"string\" ";
		MGlobal::executeCommand(mel_command + node_name + ".interpolatorType \"NiBoolInterpolator\"");
	}
}


MObject NifKFAnimationImporter::GetObjectByName( MString& name ) {
	MItDag iterator(MItDag::kDepthFirst);
	MObject object;

	for(;!iterator.isDone();iterator.next()) {
		MFnDagNode node(iterator.item());

		string nodeName = node.name().asChar();
		string targetName = name.asChar();

		if(node.name() == name && iterator.item().hasFn(MFn::kTransform)) {
			object = iterator.item();
			break;
		}
	}

	return object;
}

string NifKFAnimationImporter::asString( bool verbose /*= false */ ) const {
	stringstream out;

	out<<NifTranslatorFixtureItem::asString(verbose)<<endl;
	out<<"NifKFAnimationImporter"<<endl;

	return out.str();
}

const Type& NifKFAnimationImporter::GetType() const {
	return TYPE;
}

const Type NifKFAnimationImporter::TYPE("NifKFAnimationImporter",&NifTranslatorFixtureItem::TYPE);