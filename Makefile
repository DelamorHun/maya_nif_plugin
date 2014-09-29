#-
# ==========================================================================
# Copyright (c) 2011 Autodesk, Inc.
# All rights reserved.
# 
# These coded instructions, statements, and computer programs contain
# unpublished proprietary information written by Autodesk, Inc., and are
# protected by Federal copyright law. They may not be disclosed to third
# parties or copied or duplicated in any form, in whole or in part, without
# the prior written consent of Autodesk, Inc.
# ==========================================================================
#+

ifndef INCL_BUILDRULES

#
# Include platform specific build settings
#
TOP := .
include $(TOP)/buildrules


#
# Always build the local plug-in when make is invoked from the
# directory.
#
all : plugins

endif

#
# Variable definitions
#

SRCDIR := $(TOP)
DSTDIR := $(TOP)

nifTranslator_SOURCES  := $(TOP)/NifTranslator.cpp src/Common/NifTranslatorOptions.cpp src/Common/NifTranslatorFixtureItem.cpp src/Common/NifTranslatorDataWrapper.cpp src/Common/NifTranslatorData.cpp src/Common/NifTranslatorRefObject.cpp src/Common/NifTranslatorUtils.cpp src/Custom Nodes/NifDismemberPartition.cpp src/Importers/NifMeshImporter.cpp src/Importers/NifNodeImporter.cpp src/Importers/NifMaterialImporterSkyrim.cpp src/Importers/NifKFImportingFixture.cpp src/Importers/NifAnimationImporter.cpp src/Importers/NifImportingFixture.cpp src/Importers/NifTextureConnector.cpp src/Importers/NifMeshImporterSkyrim.cpp src/Importers/NifKFAnimationImporter.cpp src/Importers/NifMaterialImporter.cpp src/Importers/NifSkyrimImportingFixture.cpp src/Importers/NifDefaultImportingFixture.cpp src/Exporters/NifNodeExporter.cpp src/Exporters/NifMaterialExporter.cpp src/Exporters/NifKFAnimationExporter.cpp src/Exporters/NifMaterialExporterSkyrim.cpp src/Exporters/NifExportingFixture.cpp src/Exporters/NifDefaultExportingFixture.cpp src/Exporters/NifMeshExporterSkyrim.cpp src/Exporters/NifKFExportingFixture.cpp src/Exporters/NifMeshExporter.cpp src/Exporters/NifAnimationExporter.cpp

nifTranslator_OBJECTS  := $(TOP)/NifTranslator.o
nifTranslator_OBJECTS__  := $(TOP)/NifTranslator.o \
niflib/build/CMakeFiles/niflib.dir/NvTriStrip/NvTriStrip.cpp.o \
niflib/build/CMakeFiles/niflib.dir/NvTriStrip/NvTriStripObjects.cpp.o \
niflib/build/CMakeFiles/niflib.dir/NvTriStrip/VertexCache.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/nif_math.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/ObjectRegistry.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/MatTexCollection.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BoneLOD.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/QuaternionXYZW.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ByteColor3.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BodyPartList.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/enums.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/AdditionalDataBlock.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ChannelData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/Region.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/bhkCMSDData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/DecalVectorArray.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ByteMatrix.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SemanticData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BSSegment.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/AVObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ExtraMeshDataEpicMickey.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ArkTexture.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/bhkCMSDTransform.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ExportInfo.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/Polygon.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/MultiTextureElement.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ExtraMeshDataEpicMickey2.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SkinTransform.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/physXMaterialRef.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SkinShapeGroup.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/AdditionalDataInfo.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/OblivionColFilter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/NodeGroup.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/bhkCMSDMaterial.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/MipMap.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BoxBV.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/Footer.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/LimitedHingeDescriptor.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BSPackedAdditionalDataBlock.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/UnionBV.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ParticleDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SkinPartitionUnknownItem1.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/LODRange.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BoundingBox.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SphereBV.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ElementReference.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/HalfSpaceBV.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ByteColor4.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BSTreadTransfInfo.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/MeshData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/TexSource.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/register.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/RagdollDescriptor.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/Particle.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/UnknownMatrix1.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/MorphWeight.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/HingeDescriptor.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/bhkCMSDBigTris.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/OblivionSubShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/MTransform.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/CapsuleBV.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SkinPartition.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/MaterialData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BSTreadTransfSubInfo.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/TexDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BSTreadTransformData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/MotorDescriptor.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/MatchGroup.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/TBC.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/StringPalette.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BSSegmentedTriangle.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ShaderTexDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/hkTriangle.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/OldSkinData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SkinShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ByteArray.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SkinWeight.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/SkinData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/ControllerLink.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BoundingVolume.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/BSTreadTransform.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/QTransform.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/bhkCMSDChunk.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/Morph.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/FurniturePosition.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/gen/Header.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/niflib.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/NIF_IO.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/RefObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/Inertia.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/kfm.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/ComplexShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/pch.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterRotAngleCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiStringExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSParticleNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterDeclinationVarCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiVectorExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSRotAccumTransfInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiShadowGenerator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSPlanarCollider.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysInheritVelocityModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/HairShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleSystem.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysMultiTargetEmitterCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSRefractionStrengthController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPackedAdditionalGeometryData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysDragFieldModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTransformInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysBoundUpdateModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiVertexColorProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSCylinderEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiArkViewportInfoExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPixelData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleRotation.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysFieldModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkShapeCollection.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSpotLight.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXProp.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiRollController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSequenceData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSkinData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiArkAnimationExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/TallGrassShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleColorModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLODData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSSkyShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTriStrips.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiDitherProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSOrderedNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLookAtController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/Ni3dsPathController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticles.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysFieldAttenuationCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSequence.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysRecycleBoundModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/Ni3dsParticleSystem.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysInitialRotSpeedCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkRigidBodyT.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiCollisionData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkShapePhantom.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiDataStream.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSInvMarker.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSimulator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiControllerSequence.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkNiTriStripsShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTextureProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysVolumeEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBone.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXShapeDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSMultiBound.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSShaderLightingProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterRotAngleVarCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSSegmentedTriShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPathInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTriBasedGeom.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkCompressedMeshShapeData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterDeclinationVarCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysModifierFloatCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysMeshEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPoint3InterpController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiColorData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysModifierBoolCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSStripParticleSystem.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFurSpringController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkBallSocketConstraintChain.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkPhantom.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysGravityFieldModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterDeclinationCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysFieldMagnitudeCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkConvexTransformShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineCompPoint3Interpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysSphereEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineCompTransformInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXMaterialDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBinaryExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysArrayEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPosData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSimulatorStep.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSLightingShaderPropertyColorController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSProceduralLightningController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSimulatorMeshAlignStep.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSpecularProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiStringsExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSFadeNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterPlanarAngleCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiCamera.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkSphereRepShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFloatsExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPalette.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSRefractionFirePeriodController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiClodSkinInstance.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBillboardNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineCompFloatInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiKeyframeData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiClod.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysGravityModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiDirectionalLight.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/Ni3dsMorphShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkConvexVerticesShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysSubTexModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSLagBoneController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSphereEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSDismemberSkinInstance.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiDynamicEffect.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterRotSpeedVarCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysResetOnLoopCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterDeclinationCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSBoundUpdater.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSFrustumFOVController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineFloatInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMorphWeightsController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSBombForce.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSWaterShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkSimpleShapePhantom.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterInitialRadiusCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysAirFieldModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSShaderPPLightingProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSimulatorCollidersStep.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiStencilProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLightIntensityController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/SkyShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBoneLODController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterRadiusCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiDefaultAVObjectPalette.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysGravityStrengthCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTextureTransformController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSMultiBoundSphere.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXBodyDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkMalleableConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiClodData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiIntegerExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSMultiBoundNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSMaterialEmittanceMultController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiArkShaderExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTransformController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiRoom.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSLightingShaderPropertyFloatController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkNiCollisionObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSBoneLODController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiEnvMappedTriShapeData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSLeafAnimNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBlendBoolInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiZBufferProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiAlphaProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiControllerManager.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiStringPalette.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBlendFloatInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTriShapeData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSNiAlphaPropertyTestRefController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLightDimmerController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiInstancingMeshModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiGeometry.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiImage.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFloatInterpController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTimeController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysGrowFadeModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSResetOnLoopCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSFacingQuadGenerator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSLightingShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysInitialRotAngleCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiInterpController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiAmbientLight.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBinaryVoxelExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiGeometryData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkAabbPhantom.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysSphericalCollider.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSStripPSysData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBezierMesh.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFloatExtraDataController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiScreenElementsData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterRotSpeedCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysCylinderEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiScreenLODData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTriShapeSkinController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFloatData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiVisController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkLimitedHingeConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSBoneLODExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiUVController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysAirFieldAirFrictionCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSourceTexture.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkCompressedMeshShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiRoomGroup.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkBreakableConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSDecalPlacementVectorExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysInitialRotSpeedVarCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSWArray.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPointLight.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysModifierActiveCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMorpherController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLines.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysPositionModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleMeshModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkEntity.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSShaderNoLightingProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBinaryVoxelData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLightColorController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSMasterParticleSystem.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSTreeNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMorphData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiShadeProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSMultiBoundOBB.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiKeyBasedInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiAVObjectPalette.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSDamageStage.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/FxRadioButton.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSGravityForce.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSBoxEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiEnvMappedTriShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineCompTransformEvaluator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/DistantLODShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkConvexListShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSimulatorForcesStep.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/AbstractAdditionalGeometryData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMeshHWInstance.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiAdditionalGeometryData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMeshParticleSystem.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysFieldMaxDistanceCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLinesData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineTransformInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBoolData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiAutoNormalParticlesData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSTreadTransfInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysModifierCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/TileShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiArkImporterExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMorphController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterPlanarAngleVarCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterSpeedCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFogProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTextureEffect.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysDragModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/ATextureRenderData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSGravityStrengthCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiVisData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiRangeLODData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMaterialProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiAlphaController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleMeshes.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSMultiBoundAABB.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSourceCubeMap.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSEffectShaderPropertyFloatController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSBehaviorGraphExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiAutoNormalParticles.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBezierTriangle4.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiAVObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkLiquidAction.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSDragForce.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFloatExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXActorDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSkinningMeshModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleGrowFade.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkCollisionObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiObjectNET.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysSpawnModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticlesData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMultiTargetTransformController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/AvoidNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterSpeedCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkPCollisionObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysAgeDeathModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysScaleModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSingleInterpController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMeshModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSkinPartition.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiCollisionObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkTransformShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTriStripsData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterLifeSpanCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMultiTextureProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSphericalCollider.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkRagdollConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkOrientHingedBodyAction.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSParentVelocityModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkListShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkBallAndSocketConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMorphMeshModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSkinningLODController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBlendInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/VolumetricFogShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/WaterShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSBlastNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiVertWeightsExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSAnimationNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkMeshShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTransformEvaluator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMeshPSysData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBlendPoint3Interpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterPlanarAngleCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTransformData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSEffectShaderPropertyColorController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkSPCollisionObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkPrismaticConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterCtlrData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/hkPackedNiTriStripsData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiUVData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPathController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBoolInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysColorModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXD6JointDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMaterialColorController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSParticleSystem.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiKeyframeController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBlendTransformInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitterLifeSpanCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkMultiSphereShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysRotationModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysInitialRotAngleVarCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiExtraDataController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSimulatorGeneralStep.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTriBasedGeomData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkCapsuleShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/CStreamableAssetData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkRefObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPoint3Interpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLight.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineBasisData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysTurbulenceFieldModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiGeomMorpherController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiRenderObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiArkTextureExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLODNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiMesh.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleMeshesData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSMeshEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysVortexFieldModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiRotatingParticles.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSBound.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/Ni3dsAlphaAnimator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXPropDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiRawImageData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPlanarCollider.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBoolInterpController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSortAdjustNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSphericalCollider.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiColorExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTexturingProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSEmitParticlesCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplineInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSplinePoint3Interpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTriShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSFurnitureMarkerNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysSimpleColorModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysBoxEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBSPArrayController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSFurnitureMarker.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/Lighting30ShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysUpdateCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkStiffSpringConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSimulatorFinalStep.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkBoxShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTexture.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysCollider.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSLODTriShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBooleanExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysStripUpdateModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSForceActiveCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSMultiBoundData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysLODModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysTrailEmitter.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkBvTreeShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSkinInstance.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkRigidBody.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSXFlags.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSWindModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysPlanarCollider.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkSphereShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysEmitterPlanarAngleVarCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysMeshUpdateModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/FxButton.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSAnimNotes.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkSerializable.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/Ni3dsAnimationNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSPSysHavokUpdateModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSValueNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSEffectShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysRadialFieldModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/FxWidget.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiGravity.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysAirFieldInheritVelocityCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTextKeyExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkPackedNiTriStripsShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSDistantTreeShaderProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkBlendCollisionObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSequenceStreamHelper.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/RootCollisionNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiRotatingParticlesData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiSwitchNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXTransformDest.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTransparentProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkMoppBvTreeShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSDebrisNode.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiWireframeProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiLookAtInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysColliderManager.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPersistentSrcTextureRendererData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleBomb.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXMeshDesc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFloatInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiParticleSystemController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkConvexShape.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSSpawner.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkBlendController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPortal.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/Ni3dsColorAnimator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPhysXKinematicSrc.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysAirFieldSpreadCtlr.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiFlipController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiScreenElements.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSMeshParticleSystem.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiIntegersExtraData.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiBoolTimelineInterpolator.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSKeyframeController.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiTextureModeProperty.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkHingeConstraint.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/NiPSysBombModifier.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/BSShaderTextureSet.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/obj/bhkWorldObject.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/nifqhull.cpp.o \
niflib/build/CMakeFiles/niflib.dir/src/Type.cpp.o \
niflib/build/CMakeFiles/niflib.dir/TriStripper/policy.cpp.o \
niflib/build/CMakeFiles/niflib.dir/TriStripper/tri_stripper.cpp.o \
niflib/build/CMakeFiles/niflib.dir/TriStripper/connectivity_graph.cpp.o

nifTranslator_PLUGIN   := $(DSTDIR)/nifTranslator.$(EXT)
nifTranslator_MAKEFILE := $(DSTDIR)/Makefile

#
# Include the optional per-plugin Makefile.inc
#
#    The file can contain macro definitions such as:
#       {pluginName}_EXTRA_CFLAGS
#       {pluginName}_EXTRA_C++FLAGS
#       {pluginName}_EXTRA_INCLUDES
#       {pluginName}_EXTRA_LIBS
include $(SRCDIR)/Makefile.inc


#
# Set target specific flags.
#

$(nifTranslator_OBJECTS): CFLAGS   := $(CFLAGS)   $(nifTranslator_EXTRA_CFLAGS)
$(nifTranslator_OBJECTS): C++FLAGS := $(C++FLAGS) $(nifTranslator_EXTRA_C++FLAGS)
$(nifTranslator_OBJECTS): INCLUDES := $(INCLUDES) $(nifTranslator_EXTRA_INCLUDES)

depend_nifTranslator:     INCLUDES := $(INCLUDES) $(nifTranslator_EXTRA_INCLUDES)

$(nifTranslator_PLUGIN):  LFLAGS   := $(LFLAGS) $(nifTranslator_EXTRA_LFLAGS) 
$(nifTranslator_PLUGIN):  LIBS     := $(LIBS)   -lOpenMaya -lFoundation $(nifTranslator_EXTRA_LIBS) 

#
# Rules definitions
#

.PHONY: depend_nifTranslator clean_nifTranslator Clean_nifTranslator


$(nifTranslator_PLUGIN): $(nifTranslator_OBJECTS) 
	-rm -f $@
	$(LD) -o $@ $(LFLAGS) $^ $(LIBS)

depend_nifTranslator :
	makedepend $(INCLUDES) $(MDFLAGS) -f$(DSTDIR)/Makefile $(nifTranslator_SOURCES)

clean_nifTranslator:
	-rm -f $(nifTranslator_OBJECTS)

Clean_nifTranslator:
	-rm -f $(nifTranslator_MAKEFILE).bak $(nifTranslator_OBJECTS) $(nifTranslator_PLUGIN)


plugins: $(nifTranslator_PLUGIN)
depend:	 depend_nifTranslator
clean:	 clean_nifTranslator
Clean:	 Clean_nifTranslator

