#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
return 0;
}
}
#ifndef sc_TextureRenderingLayout_Regular
#define sc_TextureRenderingLayout_Regular 0
#define sc_TextureRenderingLayout_StereoInstancedClipped 1
#define sc_TextureRenderingLayout_StereoMultiview 2
#endif
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// NGS_FLAG_IS_NORMAL_MAP normalTex
// NGS_FLAG_IS_NORMAL_MAP detailNormalTex
// SCC_BACKEND_SHADER_FLAGS_END__
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output vec4 FragColor0 0
//output vec4 FragColor1 1
//output vec4 FragColor2 2
//output vec4 FragColor3 3
//output uvec4 sc_RayTracingPositionAndMask 0
//output uvec4 sc_RayTracingNormalAndMore 1
//sampler sampler baseTexSmpSC 0:33
//sampler sampler detailNormalTexSmpSC 0:34
//sampler sampler emissiveTexSmpSC 0:35
//sampler sampler intensityTextureSmpSC 0:36
//sampler sampler materialParamsTexSmpSC 0:37
//sampler sampler normalTexSmpSC 0:38
//sampler sampler opacityTexSmpSC 0:39
//sampler sampler reflectionModulationTexSmpSC 0:40
//sampler sampler reflectionTexSmpSC 0:41
//sampler sampler rimColorTexSmpSC 0:42
//sampler sampler sc_EnvmapDiffuseSmpSC 0:43
//sampler sampler sc_EnvmapSpecularSmpSC 0:44
//sampler sampler sc_RayTracingGlobalIlluminationSmpSC 0:46
//sampler sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC 0:47
//sampler sampler sc_RayTracingRayDirectionSmpSC 0:48
//sampler sampler sc_RayTracingReflectionsSmpSC 0:49
//sampler sampler sc_RayTracingShadowsSmpSC 0:50
//sampler sampler sc_SSAOTextureSmpSC 0:51
//sampler sampler sc_ScreenTextureSmpSC 0:52
//sampler sampler sc_ShadowTextureSmpSC 0:53
//texture texture2D baseTex 0:4:0:33
//texture texture2D detailNormalTex 0:5:0:34
//texture texture2D emissiveTex 0:6:0:35
//texture texture2D intensityTexture 0:7:0:36
//texture texture2D materialParamsTex 0:8:0:37
//texture texture2D normalTex 0:9:0:38
//texture texture2D opacityTex 0:10:0:39
//texture texture2D reflectionModulationTex 0:11:0:40
//texture texture2D reflectionTex 0:12:0:41
//texture texture2D rimColorTex 0:13:0:42
//texture texture2D sc_EnvmapDiffuse 0:14:0:43
//texture texture2D sc_EnvmapSpecular 0:15:0:44
//texture texture2D sc_RayTracingGlobalIllumination 0:24:0:46
//texture utexture2D sc_RayTracingHitCasterIdAndBarycentric 0:25:0:47
//texture texture2D sc_RayTracingRayDirection 0:26:0:48
//texture texture2D sc_RayTracingReflections 0:27:0:49
//texture texture2D sc_RayTracingShadows 0:28:0:50
//texture texture2D sc_SSAOTexture 0:29:0:51
//texture texture2D sc_ScreenTexture 0:30:0:52
//texture texture2D sc_ShadowTexture 0:31:0:53
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:55:6992 {
//sc_PointLight_t sc_PointLights 0:[3]:80
//bool sc_PointLights.falloffEnabled 0
//float sc_PointLights.falloffEndDistance 4
//float sc_PointLights.negRcpFalloffEndDistance4 8
//float sc_PointLights.angleScale 12
//float sc_PointLights.angleOffset 16
//float3 sc_PointLights.direction 32
//float3 sc_PointLights.position 48
//float4 sc_PointLights.color 64
//sc_DirectionalLight_t sc_DirectionalLights 240:[5]:32
//float3 sc_DirectionalLights.direction 0
//float4 sc_DirectionalLights.color 16
//sc_AmbientLight_t sc_AmbientLights 400:[3]:32
//float3 sc_AmbientLights.color 0
//float sc_AmbientLights.intensity 16
//sc_LightEstimationData_t sc_LightEstimationData 496
//sc_SphericalGaussianLight_t sc_LightEstimationData.sg 0:[12]:48
//float3 sc_LightEstimationData.sg.color 0
//float sc_LightEstimationData.sg.sharpness 16
//float3 sc_LightEstimationData.sg.axis 32
//float3 sc_LightEstimationData.ambientLight 576
//float4 sc_EnvmapDiffuseSize 1088
//float4 sc_EnvmapSpecularSize 1136
//float3 sc_EnvmapRotation 1184
//float sc_EnvmapExposure 1200
//float3 sc_Sh 1216:[9]:16
//float sc_ShIntensity 1360
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float2 sc_TAAJitterOffset 3704
//int sc_RayTracingReceiverEffectsMask 3824
//float3 sc_RayTracingOriginScale 3984
//uint sc_RayTracingReceiverMask 4000
//float3 sc_RayTracingOriginOffset 4032
//uint sc_RayTracingReceiverId 4048
//uint4 sc_RayTracingCasterConfiguration 4064
//uint4 sc_RayTracingCasterOffsetPNTC 4080
//uint4 sc_RayTracingCasterOffsetTexture 4096
//uint4 sc_RayTracingCasterFormatPNTC 4112
//uint4 sc_RayTracingCasterFormatTexture 4128
//float4 voxelization_params_0 4192
//float4 voxelization_params_frustum_lrbt 4208
//float4 voxelization_params_frustum_nf 4224
//float3 voxelization_params_camera_pos 4240
//float4x4 sc_ModelMatrixVoxelization 4256
//float correctedIntensity 4320
//float3x3 intensityTextureTransform 4384
//float4 intensityTextureUvMinMax 4432
//float4 intensityTextureBorderColor 4448
//int PreviewEnabled 4612
//float alphaTestThreshold 4620
//float3 recolorRed 4624
//float4 baseColor 4640
//float3x3 baseTexTransform 4704
//float4 baseTexUvMinMax 4752
//float4 baseTexBorderColor 4768
//float2 uv2Scale 4784
//float2 uv2Offset 4792
//float2 uv3Scale 4800
//float2 uv3Offset 4808
//float3 recolorGreen 4816
//float3 recolorBlue 4832
//float3x3 opacityTexTransform 4896
//float4 opacityTexUvMinMax 4944
//float4 opacityTexBorderColor 4960
//float3x3 normalTexTransform 5024
//float4 normalTexUvMinMax 5072
//float4 normalTexBorderColor 5088
//float3x3 detailNormalTexTransform 5152
//float4 detailNormalTexUvMinMax 5200
//float4 detailNormalTexBorderColor 5216
//float3x3 emissiveTexTransform 5280
//float4 emissiveTexUvMinMax 5328
//float4 emissiveTexBorderColor 5344
//float3 emissiveColor 5360
//float emissiveIntensity 5376
//float reflectionIntensity 5380
//float3x3 reflectionTexTransform 5440
//float4 reflectionTexUvMinMax 5488
//float4 reflectionTexBorderColor 5504
//float3x3 reflectionModulationTexTransform 5568
//float4 reflectionModulationTexUvMinMax 5616
//float4 reflectionModulationTexBorderColor 5632
//float3 rimColor 5648
//float rimIntensity 5664
//float3x3 rimColorTexTransform 5728
//float4 rimColorTexUvMinMax 5776
//float4 rimColorTexBorderColor 5792
//float rimExponent 5808
//float metallic 5812
//float3x3 materialParamsTexTransform 5872
//float4 materialParamsTexUvMinMax 5920
//float4 materialParamsTexBorderColor 5936
//float roughness 5952
//float specularAoDarkening 5956
//float specularAoIntensity 5960
//float Port_Speed_N022 6072
//float Port_Speed_N063 6128
//float4 Port_Default_N369 6144
//float Port_Value2_N073 6224
//float Port_Default_N204 6280
//float Port_Input2_N072 6292
//float Port_Strength1_N200 6320
//float3 Port_Default_N113 6336
//float Port_Strength2_N200 6352
//float3 Port_Default_N132 6400
//float3 Port_Default_N103 6448
//float3 Port_Input1_N257 6496
//float Port_Input1_N264 6528
//float Port_Input1_N268 6532
//float Port_Input1_N270 6536
//float3 Port_Default_N041 6576
//float3 Port_Default_N134 6592
//float3 Port_Default_N170 6688
//float3 Port_Default_N173 6752
//float3 Port_Value1_N079 6832
//float3 Port_Input0_N325 6864
//float3 Port_Input0_N239 6896
//float3 Port_Import_N235 6912
//float3 Port_Input1_N322 6928
//float3 Port_Default_N326 6960
//float depthRef 6976
//}
//ssbo int sc_RayTracingCasterIndexBuffer 0:0:4 {
//uint sc_RayTracingCasterTriangles 0:[1]:4
//}
//ssbo float sc_RayTracingCasterNonAnimatedVertexBuffer 0:2:4 {
//float sc_RayTracingCasterNonAnimatedVertices 0:[1]:4
//}
//ssbo float sc_RayTracingCasterVertexBuffer 0:1:4 {
//float sc_RayTracingCasterVertices 0:[1]:4
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_detailNormalTex 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_emissiveTex 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_materialParamsTex 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 36 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_opacityTex 37 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 38 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionTex 39 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_rimColorTex 40 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 41 0
//spec_const bool SC_USE_UV_MIN_MAX_detailNormalTex 42 0
//spec_const bool SC_USE_UV_MIN_MAX_emissiveTex 43 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 44 0
//spec_const bool SC_USE_UV_MIN_MAX_materialParamsTex 45 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 46 0
//spec_const bool SC_USE_UV_MIN_MAX_opacityTex 47 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionModulationTex 48 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionTex 49 0
//spec_const bool SC_USE_UV_MIN_MAX_rimColorTex 50 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 51 0
//spec_const bool SC_USE_UV_TRANSFORM_detailNormalTex 52 0
//spec_const bool SC_USE_UV_TRANSFORM_emissiveTex 53 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 54 0
//spec_const bool SC_USE_UV_TRANSFORM_materialParamsTex 55 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 56 0
//spec_const bool SC_USE_UV_TRANSFORM_opacityTex 57 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionModulationTex 58 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionTex 59 0
//spec_const bool SC_USE_UV_TRANSFORM_rimColorTex 60 0
//spec_const bool Tweak_N11 61 0
//spec_const bool Tweak_N121 62 0
//spec_const bool Tweak_N177 63 0
//spec_const bool Tweak_N179 64 0
//spec_const bool Tweak_N216 65 0
//spec_const bool Tweak_N218 66 0
//spec_const bool Tweak_N219 67 0
//spec_const bool Tweak_N223 68 0
//spec_const bool Tweak_N308 69 0
//spec_const bool Tweak_N354 70 0
//spec_const bool Tweak_N37 71 0
//spec_const bool Tweak_N67 72 0
//spec_const bool Tweak_N74 73 0
//spec_const bool UseViewSpaceDepthVariant 74 1
//spec_const bool baseTexHasSwappedViews 75 0
//spec_const bool detailNormalTexHasSwappedViews 76 0
//spec_const bool emissiveTexHasSwappedViews 77 0
//spec_const bool intensityTextureHasSwappedViews 78 0
//spec_const bool materialParamsTexHasSwappedViews 79 0
//spec_const bool normalTexHasSwappedViews 80 0
//spec_const bool opacityTexHasSwappedViews 81 0
//spec_const bool reflectionModulationTexHasSwappedViews 82 0
//spec_const bool reflectionTexHasSwappedViews 83 0
//spec_const bool rimColorTexHasSwappedViews 84 0
//spec_const bool rimInvert 85 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 86 0
//spec_const bool sc_BlendMode_Add 87 0
//spec_const bool sc_BlendMode_AlphaTest 88 0
//spec_const bool sc_BlendMode_AlphaToCoverage 89 0
//spec_const bool sc_BlendMode_ColoredGlass 90 0
//spec_const bool sc_BlendMode_Custom 91 0
//spec_const bool sc_BlendMode_Max 92 0
//spec_const bool sc_BlendMode_Min 93 0
//spec_const bool sc_BlendMode_MultiplyOriginal 94 0
//spec_const bool sc_BlendMode_Multiply 95 0
//spec_const bool sc_BlendMode_Normal 96 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 97 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 98 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 99 0
//spec_const bool sc_BlendMode_Screen 100 0
//spec_const bool sc_DepthOnly 101 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 102 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 103 0
//spec_const bool sc_FramebufferFetch 104 0
//spec_const bool sc_HasDiffuseEnvmap 105 0
//spec_const bool sc_IsEditor 106 0
//spec_const bool sc_LightEstimation 107 0
//spec_const bool sc_MotionVectorsPass 108 0
//spec_const bool sc_OITCompositingPass 109 0
//spec_const bool sc_OITDepthBoundsPass 110 0
//spec_const bool sc_OITDepthGatherPass 111 0
//spec_const bool sc_OutputBounds 112 0
//spec_const bool sc_ProjectiveShadowsCaster 113 0
//spec_const bool sc_ProjectiveShadowsReceiver 114 0
//spec_const bool sc_RayTracingCasterForceOpaque 115 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 116 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 117 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 118 0
//spec_const bool sc_RenderAlphaToColor 119 0
//spec_const bool sc_SSAOEnabled 120 0
//spec_const bool sc_ScreenTextureHasSwappedViews 121 0
//spec_const bool sc_TAAEnabled 122 0
//spec_const bool sc_VertexBlendingUseNormals 123 0
//spec_const bool sc_VertexBlending 124 0
//spec_const bool sc_Voxelization 125 0
//spec_const bool uv2EnableAnimation 126 0
//spec_const bool uv3EnableAnimation 127 0
//spec_const int NODE_13_DROPLIST_ITEM 128 0
//spec_const int NODE_181_DROPLIST_ITEM 129 0
//spec_const int NODE_184_DROPLIST_ITEM 130 0
//spec_const int NODE_221_DROPLIST_ITEM 131 0
//spec_const int NODE_228_DROPLIST_ITEM 132 0
//spec_const int NODE_27_DROPLIST_ITEM 133 0
//spec_const int NODE_315_DROPLIST_ITEM 134 0
//spec_const int NODE_38_DROPLIST_ITEM 135 0
//spec_const int NODE_49_DROPLIST_ITEM 136 0
//spec_const int NODE_69_DROPLIST_ITEM 137 0
//spec_const int NODE_76_DROPLIST_ITEM 138 0
//spec_const int SC_DEVICE_CLASS 139 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 140 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex 141 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_emissiveTex 142 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 143 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex 144 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 145 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_opacityTex 146 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex 147 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionTex 148 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_rimColorTex 149 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 150 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex 151 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_emissiveTex 152 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 153 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex 154 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 155 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_opacityTex 156 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex 157 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionTex 158 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_rimColorTex 159 -1
//spec_const int baseTexLayout 160 0
//spec_const int detailNormalTexLayout 161 0
//spec_const int emissiveTexLayout 162 0
//spec_const int intensityTextureLayout 163 0
//spec_const int materialParamsTexLayout 164 0
//spec_const int normalTexLayout 165 0
//spec_const int opacityTexLayout 166 0
//spec_const int reflectionModulationTexLayout 167 0
//spec_const int reflectionTexLayout 168 0
//spec_const int rimColorTexLayout 169 0
//spec_const int sc_AmbientLightMode0 170 0
//spec_const int sc_AmbientLightMode1 171 0
//spec_const int sc_AmbientLightMode2 172 0
//spec_const int sc_AmbientLightMode_Constant 173 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 174 0
//spec_const int sc_AmbientLightMode_FromCamera 175 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 176 0
//spec_const int sc_AmbientLightsCount 177 0
//spec_const int sc_DepthBufferMode 178 0
//spec_const int sc_DirectionalLightsCount 179 0
//spec_const int sc_EnvLightMode 180 0
//spec_const int sc_EnvmapDiffuseLayout 181 0
//spec_const int sc_EnvmapSpecularLayout 182 0
//spec_const int sc_LightEstimationSGCount 183 0
//spec_const int sc_PointLightsCount 184 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 185 0
//spec_const int sc_RayTracingReflectionsLayout 186 0
//spec_const int sc_RayTracingShadowsLayout 187 0
//spec_const int sc_RenderingSpace 188 -1
//spec_const int sc_ScreenTextureLayout 189 0
//spec_const int sc_ShaderCacheConstant 190 0
//spec_const int sc_SkinBonesCount 191 0
//spec_const int sc_StereoRenderingMode 192 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 193 0
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_baseTex [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_baseTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_baseTex) ? SC_USE_CLAMP_TO_BORDER_baseTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_detailNormalTex [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_detailNormalTex) ? SC_USE_CLAMP_TO_BORDER_detailNormalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTex [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_emissiveTex) ? SC_USE_CLAMP_TO_BORDER_emissiveTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_materialParamsTex [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_materialParamsTex) ? SC_USE_CLAMP_TO_BORDER_materialParamsTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_normalTex [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_normalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normalTex) ? SC_USE_CLAMP_TO_BORDER_normalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex [[function_constant(37)]];
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_opacityTex) ? SC_USE_CLAMP_TO_BORDER_opacityTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex [[function_constant(38)]];
constant bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex) ? SC_USE_CLAMP_TO_BORDER_reflectionModulationTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_reflectionTex [[function_constant(39)]];
constant bool SC_USE_CLAMP_TO_BORDER_reflectionTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_reflectionTex) ? SC_USE_CLAMP_TO_BORDER_reflectionTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_rimColorTex [[function_constant(40)]];
constant bool SC_USE_CLAMP_TO_BORDER_rimColorTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_rimColorTex) ? SC_USE_CLAMP_TO_BORDER_rimColorTex : false;
constant bool SC_USE_UV_MIN_MAX_baseTex [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_baseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseTex) ? SC_USE_UV_MIN_MAX_baseTex : false;
constant bool SC_USE_UV_MIN_MAX_detailNormalTex [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_detailNormalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_detailNormalTex) ? SC_USE_UV_MIN_MAX_detailNormalTex : false;
constant bool SC_USE_UV_MIN_MAX_emissiveTex [[function_constant(43)]];
constant bool SC_USE_UV_MIN_MAX_emissiveTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_emissiveTex) ? SC_USE_UV_MIN_MAX_emissiveTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(44)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_materialParamsTex [[function_constant(45)]];
constant bool SC_USE_UV_MIN_MAX_materialParamsTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_materialParamsTex) ? SC_USE_UV_MIN_MAX_materialParamsTex : false;
constant bool SC_USE_UV_MIN_MAX_normalTex [[function_constant(46)]];
constant bool SC_USE_UV_MIN_MAX_normalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normalTex) ? SC_USE_UV_MIN_MAX_normalTex : false;
constant bool SC_USE_UV_MIN_MAX_opacityTex [[function_constant(47)]];
constant bool SC_USE_UV_MIN_MAX_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_opacityTex) ? SC_USE_UV_MIN_MAX_opacityTex : false;
constant bool SC_USE_UV_MIN_MAX_reflectionModulationTex [[function_constant(48)]];
constant bool SC_USE_UV_MIN_MAX_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_reflectionModulationTex) ? SC_USE_UV_MIN_MAX_reflectionModulationTex : false;
constant bool SC_USE_UV_MIN_MAX_reflectionTex [[function_constant(49)]];
constant bool SC_USE_UV_MIN_MAX_reflectionTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_reflectionTex) ? SC_USE_UV_MIN_MAX_reflectionTex : false;
constant bool SC_USE_UV_MIN_MAX_rimColorTex [[function_constant(50)]];
constant bool SC_USE_UV_MIN_MAX_rimColorTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_rimColorTex) ? SC_USE_UV_MIN_MAX_rimColorTex : false;
constant bool SC_USE_UV_TRANSFORM_baseTex [[function_constant(51)]];
constant bool SC_USE_UV_TRANSFORM_baseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseTex) ? SC_USE_UV_TRANSFORM_baseTex : false;
constant bool SC_USE_UV_TRANSFORM_detailNormalTex [[function_constant(52)]];
constant bool SC_USE_UV_TRANSFORM_detailNormalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_detailNormalTex) ? SC_USE_UV_TRANSFORM_detailNormalTex : false;
constant bool SC_USE_UV_TRANSFORM_emissiveTex [[function_constant(53)]];
constant bool SC_USE_UV_TRANSFORM_emissiveTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_emissiveTex) ? SC_USE_UV_TRANSFORM_emissiveTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(54)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_materialParamsTex [[function_constant(55)]];
constant bool SC_USE_UV_TRANSFORM_materialParamsTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_materialParamsTex) ? SC_USE_UV_TRANSFORM_materialParamsTex : false;
constant bool SC_USE_UV_TRANSFORM_normalTex [[function_constant(56)]];
constant bool SC_USE_UV_TRANSFORM_normalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normalTex) ? SC_USE_UV_TRANSFORM_normalTex : false;
constant bool SC_USE_UV_TRANSFORM_opacityTex [[function_constant(57)]];
constant bool SC_USE_UV_TRANSFORM_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_opacityTex) ? SC_USE_UV_TRANSFORM_opacityTex : false;
constant bool SC_USE_UV_TRANSFORM_reflectionModulationTex [[function_constant(58)]];
constant bool SC_USE_UV_TRANSFORM_reflectionModulationTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_reflectionModulationTex) ? SC_USE_UV_TRANSFORM_reflectionModulationTex : false;
constant bool SC_USE_UV_TRANSFORM_reflectionTex [[function_constant(59)]];
constant bool SC_USE_UV_TRANSFORM_reflectionTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_reflectionTex) ? SC_USE_UV_TRANSFORM_reflectionTex : false;
constant bool SC_USE_UV_TRANSFORM_rimColorTex [[function_constant(60)]];
constant bool SC_USE_UV_TRANSFORM_rimColorTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_rimColorTex) ? SC_USE_UV_TRANSFORM_rimColorTex : false;
constant bool Tweak_N11 [[function_constant(61)]];
constant bool Tweak_N11_tmp = is_function_constant_defined(Tweak_N11) ? Tweak_N11 : false;
constant bool Tweak_N121 [[function_constant(62)]];
constant bool Tweak_N121_tmp = is_function_constant_defined(Tweak_N121) ? Tweak_N121 : false;
constant bool Tweak_N177 [[function_constant(63)]];
constant bool Tweak_N177_tmp = is_function_constant_defined(Tweak_N177) ? Tweak_N177 : false;
constant bool Tweak_N179 [[function_constant(64)]];
constant bool Tweak_N179_tmp = is_function_constant_defined(Tweak_N179) ? Tweak_N179 : false;
constant bool Tweak_N216 [[function_constant(65)]];
constant bool Tweak_N216_tmp = is_function_constant_defined(Tweak_N216) ? Tweak_N216 : false;
constant bool Tweak_N218 [[function_constant(66)]];
constant bool Tweak_N218_tmp = is_function_constant_defined(Tweak_N218) ? Tweak_N218 : false;
constant bool Tweak_N219 [[function_constant(67)]];
constant bool Tweak_N219_tmp = is_function_constant_defined(Tweak_N219) ? Tweak_N219 : false;
constant bool Tweak_N223 [[function_constant(68)]];
constant bool Tweak_N223_tmp = is_function_constant_defined(Tweak_N223) ? Tweak_N223 : false;
constant bool Tweak_N308 [[function_constant(69)]];
constant bool Tweak_N308_tmp = is_function_constant_defined(Tweak_N308) ? Tweak_N308 : false;
constant bool Tweak_N354 [[function_constant(70)]];
constant bool Tweak_N354_tmp = is_function_constant_defined(Tweak_N354) ? Tweak_N354 : false;
constant bool Tweak_N37 [[function_constant(71)]];
constant bool Tweak_N37_tmp = is_function_constant_defined(Tweak_N37) ? Tweak_N37 : false;
constant bool Tweak_N67 [[function_constant(72)]];
constant bool Tweak_N67_tmp = is_function_constant_defined(Tweak_N67) ? Tweak_N67 : false;
constant bool Tweak_N74 [[function_constant(73)]];
constant bool Tweak_N74_tmp = is_function_constant_defined(Tweak_N74) ? Tweak_N74 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(74)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool baseTexHasSwappedViews [[function_constant(75)]];
constant bool baseTexHasSwappedViews_tmp = is_function_constant_defined(baseTexHasSwappedViews) ? baseTexHasSwappedViews : false;
constant bool detailNormalTexHasSwappedViews [[function_constant(76)]];
constant bool detailNormalTexHasSwappedViews_tmp = is_function_constant_defined(detailNormalTexHasSwappedViews) ? detailNormalTexHasSwappedViews : false;
constant bool emissiveTexHasSwappedViews [[function_constant(77)]];
constant bool emissiveTexHasSwappedViews_tmp = is_function_constant_defined(emissiveTexHasSwappedViews) ? emissiveTexHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(78)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool materialParamsTexHasSwappedViews [[function_constant(79)]];
constant bool materialParamsTexHasSwappedViews_tmp = is_function_constant_defined(materialParamsTexHasSwappedViews) ? materialParamsTexHasSwappedViews : false;
constant bool normalTexHasSwappedViews [[function_constant(80)]];
constant bool normalTexHasSwappedViews_tmp = is_function_constant_defined(normalTexHasSwappedViews) ? normalTexHasSwappedViews : false;
constant bool opacityTexHasSwappedViews [[function_constant(81)]];
constant bool opacityTexHasSwappedViews_tmp = is_function_constant_defined(opacityTexHasSwappedViews) ? opacityTexHasSwappedViews : false;
constant bool reflectionModulationTexHasSwappedViews [[function_constant(82)]];
constant bool reflectionModulationTexHasSwappedViews_tmp = is_function_constant_defined(reflectionModulationTexHasSwappedViews) ? reflectionModulationTexHasSwappedViews : false;
constant bool reflectionTexHasSwappedViews [[function_constant(83)]];
constant bool reflectionTexHasSwappedViews_tmp = is_function_constant_defined(reflectionTexHasSwappedViews) ? reflectionTexHasSwappedViews : false;
constant bool rimColorTexHasSwappedViews [[function_constant(84)]];
constant bool rimColorTexHasSwappedViews_tmp = is_function_constant_defined(rimColorTexHasSwappedViews) ? rimColorTexHasSwappedViews : false;
constant bool rimInvert [[function_constant(85)]];
constant bool rimInvert_tmp = is_function_constant_defined(rimInvert) ? rimInvert : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(86)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(87)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(88)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(89)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(90)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(91)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(92)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(93)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(94)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(95)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(96)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(97)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(98)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(99)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(100)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(101)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(102)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(103)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(104)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(105)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(106)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(107)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(108)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(109)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(110)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(111)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(112)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(113)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(114)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingCasterForceOpaque [[function_constant(115)]];
constant bool sc_RayTracingCasterForceOpaque_tmp = is_function_constant_defined(sc_RayTracingCasterForceOpaque) ? sc_RayTracingCasterForceOpaque : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(116)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(117)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(118)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(119)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(120)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(121)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(122)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(123)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(124)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(125)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool uv2EnableAnimation [[function_constant(126)]];
constant bool uv2EnableAnimation_tmp = is_function_constant_defined(uv2EnableAnimation) ? uv2EnableAnimation : false;
constant bool uv3EnableAnimation [[function_constant(127)]];
constant bool uv3EnableAnimation_tmp = is_function_constant_defined(uv3EnableAnimation) ? uv3EnableAnimation : false;
constant int NODE_13_DROPLIST_ITEM [[function_constant(128)]];
constant int NODE_13_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_13_DROPLIST_ITEM) ? NODE_13_DROPLIST_ITEM : 0;
constant int NODE_181_DROPLIST_ITEM [[function_constant(129)]];
constant int NODE_181_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_181_DROPLIST_ITEM) ? NODE_181_DROPLIST_ITEM : 0;
constant int NODE_184_DROPLIST_ITEM [[function_constant(130)]];
constant int NODE_184_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_184_DROPLIST_ITEM) ? NODE_184_DROPLIST_ITEM : 0;
constant int NODE_221_DROPLIST_ITEM [[function_constant(131)]];
constant int NODE_221_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_221_DROPLIST_ITEM) ? NODE_221_DROPLIST_ITEM : 0;
constant int NODE_228_DROPLIST_ITEM [[function_constant(132)]];
constant int NODE_228_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_228_DROPLIST_ITEM) ? NODE_228_DROPLIST_ITEM : 0;
constant int NODE_27_DROPLIST_ITEM [[function_constant(133)]];
constant int NODE_27_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_27_DROPLIST_ITEM) ? NODE_27_DROPLIST_ITEM : 0;
constant int NODE_315_DROPLIST_ITEM [[function_constant(134)]];
constant int NODE_315_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_315_DROPLIST_ITEM) ? NODE_315_DROPLIST_ITEM : 0;
constant int NODE_38_DROPLIST_ITEM [[function_constant(135)]];
constant int NODE_38_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_38_DROPLIST_ITEM) ? NODE_38_DROPLIST_ITEM : 0;
constant int NODE_49_DROPLIST_ITEM [[function_constant(136)]];
constant int NODE_49_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_49_DROPLIST_ITEM) ? NODE_49_DROPLIST_ITEM : 0;
constant int NODE_69_DROPLIST_ITEM [[function_constant(137)]];
constant int NODE_69_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_69_DROPLIST_ITEM) ? NODE_69_DROPLIST_ITEM : 0;
constant int NODE_76_DROPLIST_ITEM [[function_constant(138)]];
constant int NODE_76_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_76_DROPLIST_ITEM) ? NODE_76_DROPLIST_ITEM : 0;
constant int SC_DEVICE_CLASS [[function_constant(139)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex [[function_constant(140)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseTex) ? SC_SOFTWARE_WRAP_MODE_U_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex [[function_constant(141)]];
constant int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex) ? SC_SOFTWARE_WRAP_MODE_U_detailNormalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTex [[function_constant(142)]];
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_emissiveTex) ? SC_SOFTWARE_WRAP_MODE_U_emissiveTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(143)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex [[function_constant(144)]];
constant int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex) ? SC_SOFTWARE_WRAP_MODE_U_materialParamsTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex [[function_constant(145)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normalTex) ? SC_SOFTWARE_WRAP_MODE_U_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex [[function_constant(146)]];
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_opacityTex) ? SC_SOFTWARE_WRAP_MODE_U_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex [[function_constant(147)]];
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex) ? SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionTex [[function_constant(148)]];
constant int SC_SOFTWARE_WRAP_MODE_U_reflectionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_reflectionTex) ? SC_SOFTWARE_WRAP_MODE_U_reflectionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_rimColorTex [[function_constant(149)]];
constant int SC_SOFTWARE_WRAP_MODE_U_rimColorTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_rimColorTex) ? SC_SOFTWARE_WRAP_MODE_U_rimColorTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex [[function_constant(150)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseTex) ? SC_SOFTWARE_WRAP_MODE_V_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex [[function_constant(151)]];
constant int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_detailNormalTex) ? SC_SOFTWARE_WRAP_MODE_V_detailNormalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTex [[function_constant(152)]];
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_emissiveTex) ? SC_SOFTWARE_WRAP_MODE_V_emissiveTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(153)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex [[function_constant(154)]];
constant int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_materialParamsTex) ? SC_SOFTWARE_WRAP_MODE_V_materialParamsTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex [[function_constant(155)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normalTex) ? SC_SOFTWARE_WRAP_MODE_V_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex [[function_constant(156)]];
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_opacityTex) ? SC_SOFTWARE_WRAP_MODE_V_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex [[function_constant(157)]];
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex) ? SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionTex [[function_constant(158)]];
constant int SC_SOFTWARE_WRAP_MODE_V_reflectionTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_reflectionTex) ? SC_SOFTWARE_WRAP_MODE_V_reflectionTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_rimColorTex [[function_constant(159)]];
constant int SC_SOFTWARE_WRAP_MODE_V_rimColorTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_rimColorTex) ? SC_SOFTWARE_WRAP_MODE_V_rimColorTex : -1;
constant int baseTexLayout [[function_constant(160)]];
constant int baseTexLayout_tmp = is_function_constant_defined(baseTexLayout) ? baseTexLayout : 0;
constant int detailNormalTexLayout [[function_constant(161)]];
constant int detailNormalTexLayout_tmp = is_function_constant_defined(detailNormalTexLayout) ? detailNormalTexLayout : 0;
constant int emissiveTexLayout [[function_constant(162)]];
constant int emissiveTexLayout_tmp = is_function_constant_defined(emissiveTexLayout) ? emissiveTexLayout : 0;
constant int intensityTextureLayout [[function_constant(163)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int materialParamsTexLayout [[function_constant(164)]];
constant int materialParamsTexLayout_tmp = is_function_constant_defined(materialParamsTexLayout) ? materialParamsTexLayout : 0;
constant int normalTexLayout [[function_constant(165)]];
constant int normalTexLayout_tmp = is_function_constant_defined(normalTexLayout) ? normalTexLayout : 0;
constant int opacityTexLayout [[function_constant(166)]];
constant int opacityTexLayout_tmp = is_function_constant_defined(opacityTexLayout) ? opacityTexLayout : 0;
constant int reflectionModulationTexLayout [[function_constant(167)]];
constant int reflectionModulationTexLayout_tmp = is_function_constant_defined(reflectionModulationTexLayout) ? reflectionModulationTexLayout : 0;
constant int reflectionTexLayout [[function_constant(168)]];
constant int reflectionTexLayout_tmp = is_function_constant_defined(reflectionTexLayout) ? reflectionTexLayout : 0;
constant int rimColorTexLayout [[function_constant(169)]];
constant int rimColorTexLayout_tmp = is_function_constant_defined(rimColorTexLayout) ? rimColorTexLayout : 0;
constant int sc_AmbientLightMode0 [[function_constant(170)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(171)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(172)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(173)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(174)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(175)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(176)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(177)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(178)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(179)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(180)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(181)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(182)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(183)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(184)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(185)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(186)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(187)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(188)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(189)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(190)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(191)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(192)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(193)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 recolorRed;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float reflectionIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float rimExponent;
float metallic;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float roughness;
float specularAoDarkening;
float specularAoIntensity;
float4 Port_Import_N042;
float Port_Input1_N044;
float Port_Import_N088;
float3 Port_Import_N089;
float4 Port_Import_N384;
float Port_Import_N307;
float Port_Import_N201;
float Port_Import_N012;
float Port_Import_N010;
float Port_Import_N007;
float2 Port_Import_N008;
float2 Port_Import_N009;
float Port_Speed_N022;
float2 Port_Import_N254;
float Port_Import_N065;
float Port_Import_N055;
float Port_Import_N056;
float2 Port_Import_N000;
float2 Port_Import_N060;
float2 Port_Import_N061;
float Port_Speed_N063;
float2 Port_Import_N255;
float4 Port_Default_N369;
float4 Port_Import_N092;
float3 Port_Import_N090;
float3 Port_Import_N091;
float3 Port_Import_N144;
float Port_Value2_N073;
float4 Port_Import_N166;
float Port_Import_N206;
float Port_Import_N043;
float2 Port_Import_N151;
float2 Port_Import_N155;
float Port_Default_N204;
float Port_Import_N047;
float Port_Input1_N002;
float Port_Input2_N072;
float Port_Import_N336;
float Port_Import_N160;
float2 Port_Import_N167;
float2 Port_Import_N207;
float Port_Strength1_N200;
float Port_Import_N095;
float Port_Import_N108;
float3 Port_Default_N113;
float Port_Strength2_N200;
float Port_Import_N273;
float Port_Input1_N274;
float Port_Import_N131;
float Port_Import_N116;
float2 Port_Import_N120;
float2 Port_Import_N127;
float3 Port_Default_N132;
float3 Port_Import_N295;
float Port_Import_N296;
float3 Port_Default_N103;
float Port_Import_N133;
float Port_Import_N231;
float3 Port_Import_N327;
float3 Port_Input1_N257;
float3 Port_Import_N259;
float Port_Input1_N264;
float Port_Input1_N268;
float Port_Input1_N270;
float Port_Import_N123;
float Port_Import_N025;
float2 Port_Import_N030;
float2 Port_Import_N031;
float3 Port_Default_N041;
float3 Port_Default_N134;
float3 Port_Import_N298;
float Port_Import_N172;
float3 Port_Import_N318;
float Port_Import_N319;
float Port_Import_N171;
float Port_Import_N135;
float2 Port_Import_N150;
float2 Port_Import_N152;
float3 Port_Default_N170;
float Port_Import_N339;
float3 Port_Import_N328;
float Port_Import_N340;
float3 Port_Default_N173;
float3 Port_Import_N306;
float Port_Import_N277;
float Port_Import_N280;
float2 Port_Import_N241;
float2 Port_Import_N246;
float Port_Import_N278;
float Port_Import_N186;
float Port_Input1_N187;
float Port_Import_N078;
float3 Port_Value1_N079;
float Port_Import_N281;
float3 Port_Input0_N325;
float Port_Import_N283;
float3 Port_Input0_N239;
float3 Port_Import_N235;
float3 Port_Input1_N322;
float Port_Import_N282;
float3 Port_Default_N326;
float depthRef;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(24)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(25)]];
texture2d<float> sc_RayTracingRayDirection [[id(26)]];
texture2d<float> sc_RayTracingReflections [[id(27)]];
texture2d<float> sc_RayTracingShadows [[id(28)]];
texture2d<float> sc_SSAOTexture [[id(29)]];
texture2d<float> sc_ScreenTexture [[id(30)]];
texture2d<float> sc_ShadowTexture [[id(31)]];
sampler baseTexSmpSC [[id(33)]];
sampler detailNormalTexSmpSC [[id(34)]];
sampler emissiveTexSmpSC [[id(35)]];
sampler intensityTextureSmpSC [[id(36)]];
sampler materialParamsTexSmpSC [[id(37)]];
sampler normalTexSmpSC [[id(38)]];
sampler opacityTexSmpSC [[id(39)]];
sampler reflectionModulationTexSmpSC [[id(40)]];
sampler reflectionTexSmpSC [[id(41)]];
sampler rimColorTexSmpSC [[id(42)]];
sampler sc_EnvmapDiffuseSmpSC [[id(43)]];
sampler sc_EnvmapSpecularSmpSC [[id(44)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(46)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(47)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(48)]];
sampler sc_RayTracingReflectionsSmpSC [[id(49)]];
sampler sc_RayTracingShadowsSmpSC [[id(50)]];
sampler sc_SSAOTextureSmpSC [[id(51)]];
sampler sc_ScreenTextureSmpSC [[id(52)]];
sampler sc_ShadowTextureSmpSC [[id(53)]];
constant userUniformsObj* UserUniforms [[id(55)]];
};
struct main_vert_out
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param=float4(in.position.xy,(*sc_set0.UserUniforms).depthRef+(1e-10*in.position.z),1.0+(1e-10*in.position.w));
if (sc_ShaderCacheConstant_tmp!=0)
{
param.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_0=param;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_1=dot(l9_0,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_2=l9_1;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_2;
}
}
float4 l9_3=float4(param.x,-param.y,(param.z*0.5)+(param.w*0.5),param.w);
out.gl_Position=l9_3;
return out;
}
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_5;
l9_5.position=in.position;
l9_5.normal=in.normal;
l9_5.tangent=in.tangent.xyz;
l9_5.texture0=in.texture0;
l9_5.texture1=in.texture1;
sc_Vertex_t l9_6=l9_5;
sc_Vertex_t param_1=l9_6;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_7=param_1;
param_1=l9_7;
}
sc_Vertex_t l9_8=param_1;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_9=l9_8;
float3 l9_10=in.blendShape0Pos;
float3 l9_11=in.blendShape0Normal;
float l9_12=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_13=l9_9;
float3 l9_14=l9_10;
float l9_15=l9_12;
float3 l9_16=l9_13.position.xyz+(l9_14*l9_15);
l9_13.position=float4(l9_16.x,l9_16.y,l9_16.z,l9_13.position.w);
l9_9=l9_13;
l9_9.normal+=(l9_11*l9_12);
l9_8=l9_9;
sc_Vertex_t l9_17=l9_8;
float3 l9_18=in.blendShape1Pos;
float3 l9_19=in.blendShape1Normal;
float l9_20=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_21=l9_17;
float3 l9_22=l9_18;
float l9_23=l9_20;
float3 l9_24=l9_21.position.xyz+(l9_22*l9_23);
l9_21.position=float4(l9_24.x,l9_24.y,l9_24.z,l9_21.position.w);
l9_17=l9_21;
l9_17.normal+=(l9_19*l9_20);
l9_8=l9_17;
sc_Vertex_t l9_25=l9_8;
float3 l9_26=in.blendShape2Pos;
float3 l9_27=in.blendShape2Normal;
float l9_28=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_29=l9_25;
float3 l9_30=l9_26;
float l9_31=l9_28;
float3 l9_32=l9_29.position.xyz+(l9_30*l9_31);
l9_29.position=float4(l9_32.x,l9_32.y,l9_32.z,l9_29.position.w);
l9_25=l9_29;
l9_25.normal+=(l9_27*l9_28);
l9_8=l9_25;
}
else
{
sc_Vertex_t l9_33=l9_8;
float3 l9_34=in.blendShape0Pos;
float l9_35=(*sc_set0.UserUniforms).weights0.x;
float3 l9_36=l9_33.position.xyz+(l9_34*l9_35);
l9_33.position=float4(l9_36.x,l9_36.y,l9_36.z,l9_33.position.w);
l9_8=l9_33;
sc_Vertex_t l9_37=l9_8;
float3 l9_38=in.blendShape1Pos;
float l9_39=(*sc_set0.UserUniforms).weights0.y;
float3 l9_40=l9_37.position.xyz+(l9_38*l9_39);
l9_37.position=float4(l9_40.x,l9_40.y,l9_40.z,l9_37.position.w);
l9_8=l9_37;
sc_Vertex_t l9_41=l9_8;
float3 l9_42=in.blendShape2Pos;
float l9_43=(*sc_set0.UserUniforms).weights0.z;
float3 l9_44=l9_41.position.xyz+(l9_42*l9_43);
l9_41.position=float4(l9_44.x,l9_44.y,l9_44.z,l9_41.position.w);
l9_8=l9_41;
sc_Vertex_t l9_45=l9_8;
float3 l9_46=in.blendShape3Pos;
float l9_47=(*sc_set0.UserUniforms).weights0.w;
float3 l9_48=l9_45.position.xyz+(l9_46*l9_47);
l9_45.position=float4(l9_48.x,l9_48.y,l9_48.z,l9_45.position.w);
l9_8=l9_45;
sc_Vertex_t l9_49=l9_8;
float3 l9_50=in.blendShape4Pos;
float l9_51=(*sc_set0.UserUniforms).weights1.x;
float3 l9_52=l9_49.position.xyz+(l9_50*l9_51);
l9_49.position=float4(l9_52.x,l9_52.y,l9_52.z,l9_49.position.w);
l9_8=l9_49;
sc_Vertex_t l9_53=l9_8;
float3 l9_54=in.blendShape5Pos;
float l9_55=(*sc_set0.UserUniforms).weights1.y;
float3 l9_56=l9_53.position.xyz+(l9_54*l9_55);
l9_53.position=float4(l9_56.x,l9_56.y,l9_56.z,l9_53.position.w);
l9_8=l9_53;
}
}
param_1=l9_8;
sc_Vertex_t l9_57=param_1;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_58=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_58=float4(1.0,fract(in.boneData.yzw));
l9_58.x-=dot(l9_58.yzw,float3(1.0));
}
float4 l9_59=l9_58;
float4 l9_60=l9_59;
int l9_61=int(in.boneData.x);
int l9_62=int(in.boneData.y);
int l9_63=int(in.boneData.z);
int l9_64=int(in.boneData.w);
int l9_65=l9_61;
float4 l9_66=l9_57.position;
float3 l9_67=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_68=l9_65;
float4 l9_69=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[0];
float4 l9_70=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[1];
float4 l9_71=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[2];
float4 l9_72[3];
l9_72[0]=l9_69;
l9_72[1]=l9_70;
l9_72[2]=l9_71;
l9_67=float3(dot(l9_66,l9_72[0]),dot(l9_66,l9_72[1]),dot(l9_66,l9_72[2]));
}
else
{
l9_67=l9_66.xyz;
}
float3 l9_73=l9_67;
float3 l9_74=l9_73;
float l9_75=l9_60.x;
int l9_76=l9_62;
float4 l9_77=l9_57.position;
float3 l9_78=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_79=l9_76;
float4 l9_80=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[0];
float4 l9_81=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[1];
float4 l9_82=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[2];
float4 l9_83[3];
l9_83[0]=l9_80;
l9_83[1]=l9_81;
l9_83[2]=l9_82;
l9_78=float3(dot(l9_77,l9_83[0]),dot(l9_77,l9_83[1]),dot(l9_77,l9_83[2]));
}
else
{
l9_78=l9_77.xyz;
}
float3 l9_84=l9_78;
float3 l9_85=l9_84;
float l9_86=l9_60.y;
int l9_87=l9_63;
float4 l9_88=l9_57.position;
float3 l9_89=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_90=l9_87;
float4 l9_91=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[0];
float4 l9_92=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[1];
float4 l9_93=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[2];
float4 l9_94[3];
l9_94[0]=l9_91;
l9_94[1]=l9_92;
l9_94[2]=l9_93;
l9_89=float3(dot(l9_88,l9_94[0]),dot(l9_88,l9_94[1]),dot(l9_88,l9_94[2]));
}
else
{
l9_89=l9_88.xyz;
}
float3 l9_95=l9_89;
float3 l9_96=l9_95;
float l9_97=l9_60.z;
int l9_98=l9_64;
float4 l9_99=l9_57.position;
float3 l9_100=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_101=l9_98;
float4 l9_102=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[0];
float4 l9_103=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[1];
float4 l9_104=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[2];
float4 l9_105[3];
l9_105[0]=l9_102;
l9_105[1]=l9_103;
l9_105[2]=l9_104;
l9_100=float3(dot(l9_99,l9_105[0]),dot(l9_99,l9_105[1]),dot(l9_99,l9_105[2]));
}
else
{
l9_100=l9_99.xyz;
}
float3 l9_106=l9_100;
float3 l9_107=(((l9_74*l9_75)+(l9_85*l9_86))+(l9_96*l9_97))+(l9_106*l9_60.w);
l9_57.position=float4(l9_107.x,l9_107.y,l9_107.z,l9_57.position.w);
int l9_108=l9_61;
float3x3 l9_109=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[2].xyz));
float3x3 l9_110=l9_109;
float3x3 l9_111=l9_110;
int l9_112=l9_62;
float3x3 l9_113=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[2].xyz));
float3x3 l9_114=l9_113;
float3x3 l9_115=l9_114;
int l9_116=l9_63;
float3x3 l9_117=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[2].xyz));
float3x3 l9_118=l9_117;
float3x3 l9_119=l9_118;
int l9_120=l9_64;
float3x3 l9_121=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[2].xyz));
float3x3 l9_122=l9_121;
float3x3 l9_123=l9_122;
l9_57.normal=((((l9_111*l9_57.normal)*l9_60.x)+((l9_115*l9_57.normal)*l9_60.y))+((l9_119*l9_57.normal)*l9_60.z))+((l9_123*l9_57.normal)*l9_60.w);
l9_57.tangent=((((l9_111*l9_57.tangent)*l9_60.x)+((l9_115*l9_57.tangent)*l9_60.y))+((l9_119*l9_57.tangent)*l9_60.z))+((l9_123*l9_57.tangent)*l9_60.w);
}
param_1=l9_57;
if (sc_RenderingSpace_tmp==3)
{
out.varPos=float3(0.0);
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPos=float3(0.0);
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPos=param_1.position.xyz;
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
out.varPos=((*sc_set0.UserUniforms).sc_ModelMatrix*param_1.position).xyz;
out.varNormal=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.normal;
float3 l9_124=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.tangent;
out.varTangent=float4(l9_124.x,l9_124.y,l9_124.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param_1.texture0.x=1.0-param_1.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param_1;
float3 WorldPosition=out.varPos;
float3 WorldNormal=out.varNormal;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPos;
WorldNormal=out.varNormal;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_2=v;
float3 param_3=WorldPosition;
float3 param_4=WorldNormal;
float3 param_5=WorldTangent;
float4 param_6=v.position;
out.varPos=param_3;
out.varNormal=normalize(param_4);
float3 l9_125=normalize(param_5);
out.varTangent=float4(l9_125.x,l9_125.y,l9_125.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_126=param_2.position;
float4 l9_127=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_128=0;
}
else
{
l9_128=gl_InstanceIndex%2;
}
int l9_129=l9_128;
l9_127=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_129]*l9_126;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_130=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_130=0;
}
else
{
l9_130=gl_InstanceIndex%2;
}
int l9_131=l9_130;
l9_127=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_131]*l9_126;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_132=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_132=0;
}
else
{
l9_132=gl_InstanceIndex%2;
}
int l9_133=l9_132;
l9_127=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_133]*l9_126;
}
else
{
l9_127=l9_126;
}
}
}
float4 l9_134=l9_127;
out.varViewSpaceDepth=-l9_134.z;
}
float4 l9_135=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_135=param_6;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=gl_InstanceIndex%2;
}
int l9_137=l9_136;
l9_135=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_137]*param_2.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=gl_InstanceIndex%2;
}
int l9_139=l9_138;
l9_135=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_139]*float4(out.varPos,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_140=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_140=0;
}
else
{
l9_140=gl_InstanceIndex%2;
}
int l9_141=l9_140;
l9_135=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_141]*float4(out.varPos,1.0);
}
}
}
}
out.varPackedTex=float4(param_2.texture0,param_2.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_142=param_2.position;
float4 l9_143=l9_142;
if (sc_RenderingSpace_tmp==1)
{
l9_143=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_142;
}
float4 l9_144=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_143;
float2 l9_145=((l9_144.xy/float2(l9_144.w))*0.5)+float2(0.5);
out.varShadowTex=l9_145;
}
float4 l9_146=l9_135;
if (sc_DepthBufferMode_tmp==1)
{
int l9_147=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_147=0;
}
else
{
l9_147=gl_InstanceIndex%2;
}
int l9_148=l9_147;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_148][2].w!=0.0)
{
float l9_149=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_146.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_146.w))*l9_149)-1.0)*l9_146.w;
}
}
float4 l9_150=l9_146;
l9_135=l9_150;
float4 l9_151=l9_135;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_152=l9_151.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_151.w);
l9_151=float4(l9_152.x,l9_152.y,l9_151.z,l9_151.w);
}
float4 l9_153=l9_151;
l9_135=l9_153;
float4 l9_154=l9_135;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_154.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_155=l9_154;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_156=dot(l9_155,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_157=l9_156;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_157;
}
}
float4 l9_158=float4(l9_154.x,-l9_154.y,(l9_154.z*0.5)+(l9_154.w*0.5),l9_154.w);
out.gl_Position=l9_158;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_159=param_2;
sc_Vertex_t l9_160=l9_159;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_161=l9_160;
float3 l9_162=in.blendShape0Pos;
float3 l9_163=in.blendShape0Normal;
float l9_164=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_165=l9_161;
float3 l9_166=l9_162;
float l9_167=l9_164;
float3 l9_168=l9_165.position.xyz+(l9_166*l9_167);
l9_165.position=float4(l9_168.x,l9_168.y,l9_168.z,l9_165.position.w);
l9_161=l9_165;
l9_161.normal+=(l9_163*l9_164);
l9_160=l9_161;
sc_Vertex_t l9_169=l9_160;
float3 l9_170=in.blendShape1Pos;
float3 l9_171=in.blendShape1Normal;
float l9_172=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_173=l9_169;
float3 l9_174=l9_170;
float l9_175=l9_172;
float3 l9_176=l9_173.position.xyz+(l9_174*l9_175);
l9_173.position=float4(l9_176.x,l9_176.y,l9_176.z,l9_173.position.w);
l9_169=l9_173;
l9_169.normal+=(l9_171*l9_172);
l9_160=l9_169;
sc_Vertex_t l9_177=l9_160;
float3 l9_178=in.blendShape2Pos;
float3 l9_179=in.blendShape2Normal;
float l9_180=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_181=l9_177;
float3 l9_182=l9_178;
float l9_183=l9_180;
float3 l9_184=l9_181.position.xyz+(l9_182*l9_183);
l9_181.position=float4(l9_184.x,l9_184.y,l9_184.z,l9_181.position.w);
l9_177=l9_181;
l9_177.normal+=(l9_179*l9_180);
l9_160=l9_177;
}
else
{
sc_Vertex_t l9_185=l9_160;
float3 l9_186=in.blendShape0Pos;
float l9_187=(*sc_set0.UserUniforms).weights0.x;
float3 l9_188=l9_185.position.xyz+(l9_186*l9_187);
l9_185.position=float4(l9_188.x,l9_188.y,l9_188.z,l9_185.position.w);
l9_160=l9_185;
sc_Vertex_t l9_189=l9_160;
float3 l9_190=in.blendShape1Pos;
float l9_191=(*sc_set0.UserUniforms).weights0.y;
float3 l9_192=l9_189.position.xyz+(l9_190*l9_191);
l9_189.position=float4(l9_192.x,l9_192.y,l9_192.z,l9_189.position.w);
l9_160=l9_189;
sc_Vertex_t l9_193=l9_160;
float3 l9_194=in.blendShape2Pos;
float l9_195=(*sc_set0.UserUniforms).weights0.z;
float3 l9_196=l9_193.position.xyz+(l9_194*l9_195);
l9_193.position=float4(l9_196.x,l9_196.y,l9_196.z,l9_193.position.w);
l9_160=l9_193;
sc_Vertex_t l9_197=l9_160;
float3 l9_198=in.blendShape3Pos;
float l9_199=(*sc_set0.UserUniforms).weights0.w;
float3 l9_200=l9_197.position.xyz+(l9_198*l9_199);
l9_197.position=float4(l9_200.x,l9_200.y,l9_200.z,l9_197.position.w);
l9_160=l9_197;
sc_Vertex_t l9_201=l9_160;
float3 l9_202=in.blendShape4Pos;
float l9_203=(*sc_set0.UserUniforms).weights1.x;
float3 l9_204=l9_201.position.xyz+(l9_202*l9_203);
l9_201.position=float4(l9_204.x,l9_204.y,l9_204.z,l9_201.position.w);
l9_160=l9_201;
sc_Vertex_t l9_205=l9_160;
float3 l9_206=in.blendShape5Pos;
float l9_207=(*sc_set0.UserUniforms).weights1.y;
float3 l9_208=l9_205.position.xyz+(l9_206*l9_207);
l9_205.position=float4(l9_208.x,l9_208.y,l9_208.z,l9_205.position.w);
l9_160=l9_205;
}
}
l9_159=l9_160;
sc_Vertex_t l9_209=l9_159;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_210=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_210=float4(1.0,fract(in.boneData.yzw));
l9_210.x-=dot(l9_210.yzw,float3(1.0));
}
float4 l9_211=l9_210;
float4 l9_212=l9_211;
int l9_213=int(in.boneData.x);
int l9_214=int(in.boneData.y);
int l9_215=int(in.boneData.z);
int l9_216=int(in.boneData.w);
int l9_217=l9_213;
float4 l9_218=l9_209.position;
float3 l9_219=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_220=l9_217;
float4 l9_221=(*sc_set0.sc_BonesUBO).sc_Bones[l9_220].boneMatrix[0];
float4 l9_222=(*sc_set0.sc_BonesUBO).sc_Bones[l9_220].boneMatrix[1];
float4 l9_223=(*sc_set0.sc_BonesUBO).sc_Bones[l9_220].boneMatrix[2];
float4 l9_224[3];
l9_224[0]=l9_221;
l9_224[1]=l9_222;
l9_224[2]=l9_223;
l9_219=float3(dot(l9_218,l9_224[0]),dot(l9_218,l9_224[1]),dot(l9_218,l9_224[2]));
}
else
{
l9_219=l9_218.xyz;
}
float3 l9_225=l9_219;
float3 l9_226=l9_225;
float l9_227=l9_212.x;
int l9_228=l9_214;
float4 l9_229=l9_209.position;
float3 l9_230=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_231=l9_228;
float4 l9_232=(*sc_set0.sc_BonesUBO).sc_Bones[l9_231].boneMatrix[0];
float4 l9_233=(*sc_set0.sc_BonesUBO).sc_Bones[l9_231].boneMatrix[1];
float4 l9_234=(*sc_set0.sc_BonesUBO).sc_Bones[l9_231].boneMatrix[2];
float4 l9_235[3];
l9_235[0]=l9_232;
l9_235[1]=l9_233;
l9_235[2]=l9_234;
l9_230=float3(dot(l9_229,l9_235[0]),dot(l9_229,l9_235[1]),dot(l9_229,l9_235[2]));
}
else
{
l9_230=l9_229.xyz;
}
float3 l9_236=l9_230;
float3 l9_237=l9_236;
float l9_238=l9_212.y;
int l9_239=l9_215;
float4 l9_240=l9_209.position;
float3 l9_241=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_242=l9_239;
float4 l9_243=(*sc_set0.sc_BonesUBO).sc_Bones[l9_242].boneMatrix[0];
float4 l9_244=(*sc_set0.sc_BonesUBO).sc_Bones[l9_242].boneMatrix[1];
float4 l9_245=(*sc_set0.sc_BonesUBO).sc_Bones[l9_242].boneMatrix[2];
float4 l9_246[3];
l9_246[0]=l9_243;
l9_246[1]=l9_244;
l9_246[2]=l9_245;
l9_241=float3(dot(l9_240,l9_246[0]),dot(l9_240,l9_246[1]),dot(l9_240,l9_246[2]));
}
else
{
l9_241=l9_240.xyz;
}
float3 l9_247=l9_241;
float3 l9_248=l9_247;
float l9_249=l9_212.z;
int l9_250=l9_216;
float4 l9_251=l9_209.position;
float3 l9_252=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_253=l9_250;
float4 l9_254=(*sc_set0.sc_BonesUBO).sc_Bones[l9_253].boneMatrix[0];
float4 l9_255=(*sc_set0.sc_BonesUBO).sc_Bones[l9_253].boneMatrix[1];
float4 l9_256=(*sc_set0.sc_BonesUBO).sc_Bones[l9_253].boneMatrix[2];
float4 l9_257[3];
l9_257[0]=l9_254;
l9_257[1]=l9_255;
l9_257[2]=l9_256;
l9_252=float3(dot(l9_251,l9_257[0]),dot(l9_251,l9_257[1]),dot(l9_251,l9_257[2]));
}
else
{
l9_252=l9_251.xyz;
}
float3 l9_258=l9_252;
float3 l9_259=(((l9_226*l9_227)+(l9_237*l9_238))+(l9_248*l9_249))+(l9_258*l9_212.w);
l9_209.position=float4(l9_259.x,l9_259.y,l9_259.z,l9_209.position.w);
int l9_260=l9_213;
float3x3 l9_261=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_260].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_260].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_260].normalMatrix[2].xyz));
float3x3 l9_262=l9_261;
float3x3 l9_263=l9_262;
int l9_264=l9_214;
float3x3 l9_265=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_264].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_264].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_264].normalMatrix[2].xyz));
float3x3 l9_266=l9_265;
float3x3 l9_267=l9_266;
int l9_268=l9_215;
float3x3 l9_269=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_268].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_268].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_268].normalMatrix[2].xyz));
float3x3 l9_270=l9_269;
float3x3 l9_271=l9_270;
int l9_272=l9_216;
float3x3 l9_273=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_272].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_272].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_272].normalMatrix[2].xyz));
float3x3 l9_274=l9_273;
float3x3 l9_275=l9_274;
l9_209.normal=((((l9_263*l9_209.normal)*l9_212.x)+((l9_267*l9_209.normal)*l9_212.y))+((l9_271*l9_209.normal)*l9_212.z))+((l9_275*l9_209.normal)*l9_212.w);
l9_209.tangent=((((l9_263*l9_209.tangent)*l9_212.x)+((l9_267*l9_209.tangent)*l9_212.y))+((l9_271*l9_209.tangent)*l9_212.z))+((l9_275*l9_209.tangent)*l9_212.w);
}
l9_159=l9_209;
float l9_276=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_277=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_278=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_279=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_280=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_281=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_282=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_283=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_284=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_285=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_286=l9_276/l9_277;
int l9_287=gl_InstanceIndex;
int l9_288=l9_287;
l9_159.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_159.position;
float3 l9_289=l9_159.position.xyz;
float3 l9_290=float3(float(l9_288%int(l9_278))*l9_276,float(l9_288/int(l9_278))*l9_276,(float(l9_288)*l9_286)+l9_283);
float3 l9_291=l9_289+l9_290;
float4 l9_292=float4(l9_291-l9_285,1.0);
float l9_293=l9_279;
float l9_294=l9_280;
float l9_295=l9_281;
float l9_296=l9_282;
float l9_297=l9_283;
float l9_298=l9_284;
float4x4 l9_299=float4x4(float4(2.0/(l9_294-l9_293),0.0,0.0,(-(l9_294+l9_293))/(l9_294-l9_293)),float4(0.0,2.0/(l9_296-l9_295),0.0,(-(l9_296+l9_295))/(l9_296-l9_295)),float4(0.0,0.0,(-2.0)/(l9_298-l9_297),(-(l9_298+l9_297))/(l9_298-l9_297)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_300=l9_299;
float4 l9_301=l9_300*l9_292;
l9_301.w=1.0;
out.varScreenPos=l9_301;
float4 l9_302=l9_301*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_302.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_303=l9_302;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_304=dot(l9_303,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_305=l9_304;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_305;
}
}
float4 l9_306=float4(l9_302.x,-l9_302.y,(l9_302.z*0.5)+(l9_302.w*0.5),l9_302.w);
out.gl_Position=l9_306;
param_2=l9_159;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_307=param_2;
sc_Vertex_t l9_308=l9_307;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_309=l9_308;
float3 l9_310=in.blendShape0Pos;
float3 l9_311=in.blendShape0Normal;
float l9_312=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_313=l9_309;
float3 l9_314=l9_310;
float l9_315=l9_312;
float3 l9_316=l9_313.position.xyz+(l9_314*l9_315);
l9_313.position=float4(l9_316.x,l9_316.y,l9_316.z,l9_313.position.w);
l9_309=l9_313;
l9_309.normal+=(l9_311*l9_312);
l9_308=l9_309;
sc_Vertex_t l9_317=l9_308;
float3 l9_318=in.blendShape1Pos;
float3 l9_319=in.blendShape1Normal;
float l9_320=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_321=l9_317;
float3 l9_322=l9_318;
float l9_323=l9_320;
float3 l9_324=l9_321.position.xyz+(l9_322*l9_323);
l9_321.position=float4(l9_324.x,l9_324.y,l9_324.z,l9_321.position.w);
l9_317=l9_321;
l9_317.normal+=(l9_319*l9_320);
l9_308=l9_317;
sc_Vertex_t l9_325=l9_308;
float3 l9_326=in.blendShape2Pos;
float3 l9_327=in.blendShape2Normal;
float l9_328=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_329=l9_325;
float3 l9_330=l9_326;
float l9_331=l9_328;
float3 l9_332=l9_329.position.xyz+(l9_330*l9_331);
l9_329.position=float4(l9_332.x,l9_332.y,l9_332.z,l9_329.position.w);
l9_325=l9_329;
l9_325.normal+=(l9_327*l9_328);
l9_308=l9_325;
}
else
{
sc_Vertex_t l9_333=l9_308;
float3 l9_334=in.blendShape0Pos;
float l9_335=(*sc_set0.UserUniforms).weights0.x;
float3 l9_336=l9_333.position.xyz+(l9_334*l9_335);
l9_333.position=float4(l9_336.x,l9_336.y,l9_336.z,l9_333.position.w);
l9_308=l9_333;
sc_Vertex_t l9_337=l9_308;
float3 l9_338=in.blendShape1Pos;
float l9_339=(*sc_set0.UserUniforms).weights0.y;
float3 l9_340=l9_337.position.xyz+(l9_338*l9_339);
l9_337.position=float4(l9_340.x,l9_340.y,l9_340.z,l9_337.position.w);
l9_308=l9_337;
sc_Vertex_t l9_341=l9_308;
float3 l9_342=in.blendShape2Pos;
float l9_343=(*sc_set0.UserUniforms).weights0.z;
float3 l9_344=l9_341.position.xyz+(l9_342*l9_343);
l9_341.position=float4(l9_344.x,l9_344.y,l9_344.z,l9_341.position.w);
l9_308=l9_341;
sc_Vertex_t l9_345=l9_308;
float3 l9_346=in.blendShape3Pos;
float l9_347=(*sc_set0.UserUniforms).weights0.w;
float3 l9_348=l9_345.position.xyz+(l9_346*l9_347);
l9_345.position=float4(l9_348.x,l9_348.y,l9_348.z,l9_345.position.w);
l9_308=l9_345;
sc_Vertex_t l9_349=l9_308;
float3 l9_350=in.blendShape4Pos;
float l9_351=(*sc_set0.UserUniforms).weights1.x;
float3 l9_352=l9_349.position.xyz+(l9_350*l9_351);
l9_349.position=float4(l9_352.x,l9_352.y,l9_352.z,l9_349.position.w);
l9_308=l9_349;
sc_Vertex_t l9_353=l9_308;
float3 l9_354=in.blendShape5Pos;
float l9_355=(*sc_set0.UserUniforms).weights1.y;
float3 l9_356=l9_353.position.xyz+(l9_354*l9_355);
l9_353.position=float4(l9_356.x,l9_356.y,l9_356.z,l9_353.position.w);
l9_308=l9_353;
}
}
l9_307=l9_308;
sc_Vertex_t l9_357=l9_307;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_358=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_358=float4(1.0,fract(in.boneData.yzw));
l9_358.x-=dot(l9_358.yzw,float3(1.0));
}
float4 l9_359=l9_358;
float4 l9_360=l9_359;
int l9_361=int(in.boneData.x);
int l9_362=int(in.boneData.y);
int l9_363=int(in.boneData.z);
int l9_364=int(in.boneData.w);
int l9_365=l9_361;
float4 l9_366=l9_357.position;
float3 l9_367=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_368=l9_365;
float4 l9_369=(*sc_set0.sc_BonesUBO).sc_Bones[l9_368].boneMatrix[0];
float4 l9_370=(*sc_set0.sc_BonesUBO).sc_Bones[l9_368].boneMatrix[1];
float4 l9_371=(*sc_set0.sc_BonesUBO).sc_Bones[l9_368].boneMatrix[2];
float4 l9_372[3];
l9_372[0]=l9_369;
l9_372[1]=l9_370;
l9_372[2]=l9_371;
l9_367=float3(dot(l9_366,l9_372[0]),dot(l9_366,l9_372[1]),dot(l9_366,l9_372[2]));
}
else
{
l9_367=l9_366.xyz;
}
float3 l9_373=l9_367;
float3 l9_374=l9_373;
float l9_375=l9_360.x;
int l9_376=l9_362;
float4 l9_377=l9_357.position;
float3 l9_378=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_379=l9_376;
float4 l9_380=(*sc_set0.sc_BonesUBO).sc_Bones[l9_379].boneMatrix[0];
float4 l9_381=(*sc_set0.sc_BonesUBO).sc_Bones[l9_379].boneMatrix[1];
float4 l9_382=(*sc_set0.sc_BonesUBO).sc_Bones[l9_379].boneMatrix[2];
float4 l9_383[3];
l9_383[0]=l9_380;
l9_383[1]=l9_381;
l9_383[2]=l9_382;
l9_378=float3(dot(l9_377,l9_383[0]),dot(l9_377,l9_383[1]),dot(l9_377,l9_383[2]));
}
else
{
l9_378=l9_377.xyz;
}
float3 l9_384=l9_378;
float3 l9_385=l9_384;
float l9_386=l9_360.y;
int l9_387=l9_363;
float4 l9_388=l9_357.position;
float3 l9_389=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_390=l9_387;
float4 l9_391=(*sc_set0.sc_BonesUBO).sc_Bones[l9_390].boneMatrix[0];
float4 l9_392=(*sc_set0.sc_BonesUBO).sc_Bones[l9_390].boneMatrix[1];
float4 l9_393=(*sc_set0.sc_BonesUBO).sc_Bones[l9_390].boneMatrix[2];
float4 l9_394[3];
l9_394[0]=l9_391;
l9_394[1]=l9_392;
l9_394[2]=l9_393;
l9_389=float3(dot(l9_388,l9_394[0]),dot(l9_388,l9_394[1]),dot(l9_388,l9_394[2]));
}
else
{
l9_389=l9_388.xyz;
}
float3 l9_395=l9_389;
float3 l9_396=l9_395;
float l9_397=l9_360.z;
int l9_398=l9_364;
float4 l9_399=l9_357.position;
float3 l9_400=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_401=l9_398;
float4 l9_402=(*sc_set0.sc_BonesUBO).sc_Bones[l9_401].boneMatrix[0];
float4 l9_403=(*sc_set0.sc_BonesUBO).sc_Bones[l9_401].boneMatrix[1];
float4 l9_404=(*sc_set0.sc_BonesUBO).sc_Bones[l9_401].boneMatrix[2];
float4 l9_405[3];
l9_405[0]=l9_402;
l9_405[1]=l9_403;
l9_405[2]=l9_404;
l9_400=float3(dot(l9_399,l9_405[0]),dot(l9_399,l9_405[1]),dot(l9_399,l9_405[2]));
}
else
{
l9_400=l9_399.xyz;
}
float3 l9_406=l9_400;
float3 l9_407=(((l9_374*l9_375)+(l9_385*l9_386))+(l9_396*l9_397))+(l9_406*l9_360.w);
l9_357.position=float4(l9_407.x,l9_407.y,l9_407.z,l9_357.position.w);
int l9_408=l9_361;
float3x3 l9_409=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_408].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_408].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_408].normalMatrix[2].xyz));
float3x3 l9_410=l9_409;
float3x3 l9_411=l9_410;
int l9_412=l9_362;
float3x3 l9_413=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_412].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_412].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_412].normalMatrix[2].xyz));
float3x3 l9_414=l9_413;
float3x3 l9_415=l9_414;
int l9_416=l9_363;
float3x3 l9_417=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_416].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_416].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_416].normalMatrix[2].xyz));
float3x3 l9_418=l9_417;
float3x3 l9_419=l9_418;
int l9_420=l9_364;
float3x3 l9_421=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_420].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_420].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_420].normalMatrix[2].xyz));
float3x3 l9_422=l9_421;
float3x3 l9_423=l9_422;
l9_357.normal=((((l9_411*l9_357.normal)*l9_360.x)+((l9_415*l9_357.normal)*l9_360.y))+((l9_419*l9_357.normal)*l9_360.z))+((l9_423*l9_357.normal)*l9_360.w);
l9_357.tangent=((((l9_411*l9_357.tangent)*l9_360.x)+((l9_415*l9_357.tangent)*l9_360.y))+((l9_419*l9_357.tangent)*l9_360.z))+((l9_423*l9_357.tangent)*l9_360.w);
}
l9_307=l9_357;
float3 l9_424=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_425=((l9_307.position.xy/float2(l9_307.position.w))*0.5)+float2(0.5);
out.varPackedTex=float4(l9_425.x,l9_425.y,out.varPackedTex.z,out.varPackedTex.w);
l9_307.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_307.position;
float3 l9_426=l9_307.position.xyz-l9_424;
l9_307.position=float4(l9_426.x,l9_426.y,l9_426.z,l9_307.position.w);
out.varPos=l9_307.position.xyz;
out.varNormal=normalize(l9_307.normal);
float l9_427=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_428=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_429=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_430=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_431=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_432=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_433=l9_427;
float l9_434=l9_428;
float l9_435=l9_429;
float l9_436=l9_430;
float l9_437=l9_431;
float l9_438=l9_432;
float4x4 l9_439=float4x4(float4(2.0/(l9_434-l9_433),0.0,0.0,(-(l9_434+l9_433))/(l9_434-l9_433)),float4(0.0,2.0/(l9_436-l9_435),0.0,(-(l9_436+l9_435))/(l9_436-l9_435)),float4(0.0,0.0,(-2.0)/(l9_438-l9_437),(-(l9_438+l9_437))/(l9_438-l9_437)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_440=l9_439;
float4 l9_441=float4(0.0);
float3 l9_442=(l9_440*l9_307.position).xyz;
l9_441=float4(l9_442.x,l9_442.y,l9_442.z,l9_441.w);
l9_441.w=1.0;
out.varScreenPos=l9_441;
float4 l9_443=l9_441*1.0;
float4 l9_444=l9_443;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_444.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_445=l9_444;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_446=dot(l9_445,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_447=l9_446;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_447;
}
}
float4 l9_448=float4(l9_444.x,-l9_444.y,(l9_444.z*0.5)+(l9_444.w*0.5),l9_444.w);
out.gl_Position=l9_448;
param_2=l9_307;
}
}
v=param_2;
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct sc_RayTracingHitPayload
{
float3 viewDirWS;
float3 positionWS;
float3 normalWS;
float4 tangentWS;
float4 color;
float2 uv0;
float2 uv1;
float2 uv2;
float2 uv3;
uint2 id;
};
struct SurfaceProperties
{
float3 albedo;
float opacity;
float3 normal;
float3 positionWS;
float3 viewDirWS;
float metallic;
float roughness;
float3 emissive;
float3 ao;
float3 specularAo;
float3 bakedShadows;
float3 specColor;
};
struct LightingComponents
{
float3 directDiffuse;
float3 directSpecular;
float3 indirectDiffuse;
float3 indirectSpecular;
float3 emitted;
float3 transmitted;
};
struct LightProperties
{
float3 direction;
float3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float4 VertexColor;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float2 gScreenCoord;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float3 SurfacePosition_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 recolorRed;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float reflectionIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float rimExponent;
float metallic;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float roughness;
float specularAoDarkening;
float specularAoIntensity;
float4 Port_Import_N042;
float Port_Input1_N044;
float Port_Import_N088;
float3 Port_Import_N089;
float4 Port_Import_N384;
float Port_Import_N307;
float Port_Import_N201;
float Port_Import_N012;
float Port_Import_N010;
float Port_Import_N007;
float2 Port_Import_N008;
float2 Port_Import_N009;
float Port_Speed_N022;
float2 Port_Import_N254;
float Port_Import_N065;
float Port_Import_N055;
float Port_Import_N056;
float2 Port_Import_N000;
float2 Port_Import_N060;
float2 Port_Import_N061;
float Port_Speed_N063;
float2 Port_Import_N255;
float4 Port_Default_N369;
float4 Port_Import_N092;
float3 Port_Import_N090;
float3 Port_Import_N091;
float3 Port_Import_N144;
float Port_Value2_N073;
float4 Port_Import_N166;
float Port_Import_N206;
float Port_Import_N043;
float2 Port_Import_N151;
float2 Port_Import_N155;
float Port_Default_N204;
float Port_Import_N047;
float Port_Input1_N002;
float Port_Input2_N072;
float Port_Import_N336;
float Port_Import_N160;
float2 Port_Import_N167;
float2 Port_Import_N207;
float Port_Strength1_N200;
float Port_Import_N095;
float Port_Import_N108;
float3 Port_Default_N113;
float Port_Strength2_N200;
float Port_Import_N273;
float Port_Input1_N274;
float Port_Import_N131;
float Port_Import_N116;
float2 Port_Import_N120;
float2 Port_Import_N127;
float3 Port_Default_N132;
float3 Port_Import_N295;
float Port_Import_N296;
float3 Port_Default_N103;
float Port_Import_N133;
float Port_Import_N231;
float3 Port_Import_N327;
float3 Port_Input1_N257;
float3 Port_Import_N259;
float Port_Input1_N264;
float Port_Input1_N268;
float Port_Input1_N270;
float Port_Import_N123;
float Port_Import_N025;
float2 Port_Import_N030;
float2 Port_Import_N031;
float3 Port_Default_N041;
float3 Port_Default_N134;
float3 Port_Import_N298;
float Port_Import_N172;
float3 Port_Import_N318;
float Port_Import_N319;
float Port_Import_N171;
float Port_Import_N135;
float2 Port_Import_N150;
float2 Port_Import_N152;
float3 Port_Default_N170;
float Port_Import_N339;
float3 Port_Import_N328;
float Port_Import_N340;
float3 Port_Default_N173;
float3 Port_Import_N306;
float Port_Import_N277;
float Port_Import_N280;
float2 Port_Import_N241;
float2 Port_Import_N246;
float Port_Import_N278;
float Port_Import_N186;
float Port_Input1_N187;
float Port_Import_N078;
float3 Port_Value1_N079;
float Port_Import_N281;
float3 Port_Input0_N325;
float Port_Import_N283;
float3 Port_Input0_N239;
float3 Port_Import_N235;
float3 Port_Input1_N322;
float Port_Import_N282;
float3 Port_Default_N326;
float depthRef;
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_PointLight_t_1
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(24)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(25)]];
texture2d<float> sc_RayTracingRayDirection [[id(26)]];
texture2d<float> sc_RayTracingReflections [[id(27)]];
texture2d<float> sc_RayTracingShadows [[id(28)]];
texture2d<float> sc_SSAOTexture [[id(29)]];
texture2d<float> sc_ScreenTexture [[id(30)]];
texture2d<float> sc_ShadowTexture [[id(31)]];
sampler baseTexSmpSC [[id(33)]];
sampler detailNormalTexSmpSC [[id(34)]];
sampler emissiveTexSmpSC [[id(35)]];
sampler intensityTextureSmpSC [[id(36)]];
sampler materialParamsTexSmpSC [[id(37)]];
sampler normalTexSmpSC [[id(38)]];
sampler opacityTexSmpSC [[id(39)]];
sampler reflectionModulationTexSmpSC [[id(40)]];
sampler reflectionTexSmpSC [[id(41)]];
sampler rimColorTexSmpSC [[id(42)]];
sampler sc_EnvmapDiffuseSmpSC [[id(43)]];
sampler sc_EnvmapSpecularSmpSC [[id(44)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(46)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(47)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(48)]];
sampler sc_RayTracingReflectionsSmpSC [[id(49)]];
sampler sc_RayTracingShadowsSmpSC [[id(50)]];
sampler sc_SSAOTextureSmpSC [[id(51)]];
sampler sc_ScreenTextureSmpSC [[id(52)]];
sampler sc_ShadowTextureSmpSC [[id(53)]];
constant userUniformsObj* UserUniforms [[id(55)]];
};
struct main_frag_out
{
float4 FragColor0 [[color(0)]];
float4 FragColor1 [[color(1)]];
float4 FragColor2 [[color(2)]];
float4 FragColor3 [[color(3)]];
};
struct main_frag_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
sc_RayTracingHitPayload sc_RayTracingEvaluateHitPayload(thread const int2& screenPos,thread texture2d<float> sc_RayTracingRayDirection,thread sampler sc_RayTracingRayDirectionSmpSC,constant userUniformsObj& UserUniforms,const device sc_RayTracingCasterVertexBuffer_obj& sc_RayTracingCasterVertexBuffer,const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj& sc_RayTracingCasterNonAnimatedVertexBuffer,const device sc_RayTracingCasterIndexBuffer_obj& sc_RayTracingCasterIndexBuffer,thread texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric,thread sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC)
{
uint4 idAndBarycentric=sc_RayTracingHitCasterIdAndBarycentric.read(uint2(screenPos),0);
sc_RayTracingHitPayload rhp;
rhp.id=idAndBarycentric.xy;
if (rhp.id.x!=(UserUniforms.sc_RayTracingCasterConfiguration.y&65535u))
{
return rhp;
}
float2 brcVW=float2(as_type<half2>(idAndBarycentric.z|(idAndBarycentric.w<<uint(16))));
float3 brc=float3((1.0-brcVW.x)-brcVW.y,brcVW);
float2 param=sc_RayTracingRayDirection.read(uint2(screenPos),0).xy;
float3 l9_0=float3(param.x,param.y,(1.0-abs(param.x))-abs(param.y));
float l9_1=fast::clamp(-l9_0.z,0.0,1.0);
float l9_2;
if (l9_0.x>=0.0)
{
l9_2=-l9_1;
}
else
{
l9_2=l9_1;
}
float l9_3=l9_2;
float l9_4;
if (l9_0.y>=0.0)
{
l9_4=-l9_1;
}
else
{
l9_4=l9_1;
}
float2 l9_5=l9_0.xy+float2(l9_3,l9_4);
l9_0=float3(l9_5.x,l9_5.y,l9_0.z);
float3 l9_6=normalize(l9_0);
float3 rayDir=l9_6;
rhp.viewDirWS=-rayDir;
uint param_1=rhp.id.y;
uint l9_7=min(param_1,UserUniforms.sc_RayTracingCasterConfiguration.z);
uint l9_8=l9_7*6u;
uint l9_9=l9_8&4294967292u;
uint4 l9_10=(uint4(uint2(sc_RayTracingCasterIndexBuffer.sc_RayTracingCasterTriangles[l9_9/4u]),uint2(sc_RayTracingCasterIndexBuffer.sc_RayTracingCasterTriangles[(l9_9/4u)+1u]))&uint4(65535u,4294967295u,65535u,4294967295u))>>uint4(0u,16u,0u,16u);
uint3 l9_11;
if (l9_8==l9_9)
{
l9_11=l9_10.xyz;
}
else
{
l9_11=l9_10.yzw;
}
uint3 l9_12=l9_11;
uint3 i=l9_12;
if (UserUniforms.sc_RayTracingCasterConfiguration.x==2u)
{
float3 param_2=brc;
uint3 param_3=i;
uint param_4=0u;
uint3 l9_13=uint3((param_3*uint3(6u))+uint3(param_4));
uint l9_14=l9_13.x;
float3 l9_15=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_14+2u]);
uint l9_16=l9_13.y;
float3 l9_17=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_16+2u]);
uint l9_18=l9_13.z;
float3 l9_19=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_18+2u]);
float3 l9_20=((l9_15*param_2.x)+(l9_17*param_2.y))+(l9_19*param_2.z);
rhp.positionWS=l9_20;
}
else
{
float3 param_5=brc;
uint3 param_6=i;
uint3 l9_21=uint3((param_6.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x,(param_6.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x,(param_6.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.x);
float3 l9_22=float3(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.x==5u)
{
uint l9_23=l9_21.x;
float3 l9_24=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_23+2u]);
uint l9_25=l9_21.y;
float3 l9_26=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_25+2u]);
uint l9_27=l9_21.z;
float3 l9_28=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_27+2u]);
l9_22=((l9_24*param_5.x)+(l9_26*param_5.y))+(l9_28*param_5.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.x==6u)
{
uint l9_29=l9_21.x;
float3 l9_30=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_29]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_29+1u]))).x);
uint l9_31=l9_21.y;
float3 l9_32=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_31]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_31+1u]))).x);
uint l9_33=l9_21.z;
float3 l9_34=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_33]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_33+1u]))).x);
l9_22=((l9_30*param_5.x)+(l9_32*param_5.y))+(l9_34*param_5.z);
}
else
{
l9_22=float3(1.0,0.0,0.0);
}
}
float3 l9_35=l9_22;
float3 positionOS=l9_35;
rhp.positionWS=(UserUniforms.sc_ModelMatrix*float4(positionOS,1.0)).xyz;
}
if (UserUniforms.sc_RayTracingCasterOffsetPNTC.y>0u)
{
if (UserUniforms.sc_RayTracingCasterConfiguration.x==2u)
{
float3 param_7=brc;
uint3 param_8=i;
uint param_9=3u;
uint3 l9_36=uint3((param_8*uint3(6u))+uint3(param_9));
uint l9_37=l9_36.x;
float3 l9_38=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_37+2u]);
uint l9_39=l9_36.y;
float3 l9_40=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_39+2u]);
uint l9_41=l9_36.z;
float3 l9_42=float3(sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41+1u],sc_RayTracingCasterNonAnimatedVertexBuffer.sc_RayTracingCasterNonAnimatedVertices[l9_41+2u]);
float3 l9_43=((l9_38*param_7.x)+(l9_40*param_7.y))+(l9_42*param_7.z);
rhp.normalWS=l9_43;
}
else
{
float3 param_10=brc;
uint3 param_11=i;
uint3 l9_44=uint3((param_11.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y,(param_11.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y,(param_11.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.y);
float3 l9_45=float3(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.y==5u)
{
uint l9_46=l9_44.x;
float3 l9_47=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_46+2u]);
uint l9_48=l9_44.y;
float3 l9_49=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_48+2u]);
uint l9_50=l9_44.z;
float3 l9_51=float3(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_50+2u]);
l9_45=((l9_47*param_10.x)+(l9_49*param_10.y))+(l9_51*param_10.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.y==6u)
{
uint l9_52=l9_44.x;
float3 l9_53=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_52]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_52+1u]))).x);
uint l9_54=l9_44.y;
float3 l9_55=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_54]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_54+1u]))).x);
uint l9_56=l9_44.z;
float3 l9_57=float3(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_56]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_56+1u]))).x);
l9_45=((l9_53*param_10.x)+(l9_55*param_10.y))+(l9_57*param_10.z);
}
else
{
l9_45=float3(1.0,0.0,0.0);
}
}
float3 l9_58=l9_45;
float3 normalOS=l9_58;
rhp.normalWS=normalize(UserUniforms.sc_NormalMatrix*normalOS);
}
}
else
{
rhp.normalWS=float3(1.0,0.0,0.0);
}
bool l9_59=!(UserUniforms.sc_RayTracingCasterConfiguration.x==2u);
bool l9_60;
if (l9_59)
{
l9_60=UserUniforms.sc_RayTracingCasterOffsetPNTC.z>0u;
}
else
{
l9_60=l9_59;
}
if (l9_60)
{
float3 param_12=brc;
uint3 param_13=i;
uint3 l9_61=uint3((param_13.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z,(param_13.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z,(param_13.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.z);
float4 l9_62=float4(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==5u)
{
uint l9_63=l9_61.x;
float4 l9_64=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_63+3u]);
uint l9_65=l9_61.y;
float4 l9_66=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_65+3u]);
uint l9_67=l9_61.z;
float4 l9_68=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_67+3u]);
l9_62=((l9_64*param_12.x)+(l9_66*param_12.y))+(l9_68*param_12.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==6u)
{
uint l9_69=l9_61.x;
float4 l9_70=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_69]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_69+1u]))));
uint l9_71=l9_61.y;
float4 l9_72=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_71]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_71+1u]))));
uint l9_73=l9_61.z;
float4 l9_74=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_73]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_73+1u]))));
l9_62=((l9_70*param_12.x)+(l9_72*param_12.y))+(l9_74*param_12.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.z==2u)
{
uint l9_75=l9_61.x;
uint l9_76=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_75]);
uint l9_77=l9_76&255u;
uint l9_78=(l9_76>>uint(8))&255u;
uint l9_79=(l9_76>>uint(16))&255u;
uint l9_80=(l9_76>>uint(24))&255u;
float4 l9_81=float4(float(l9_77),float(l9_78),float(l9_79),float(l9_80))/float4(255.0);
uint l9_82=l9_61.y;
uint l9_83=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_82]);
uint l9_84=l9_83&255u;
uint l9_85=(l9_83>>uint(8))&255u;
uint l9_86=(l9_83>>uint(16))&255u;
uint l9_87=(l9_83>>uint(24))&255u;
float4 l9_88=float4(float(l9_84),float(l9_85),float(l9_86),float(l9_87))/float4(255.0);
uint l9_89=l9_61.z;
uint l9_90=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_89]);
uint l9_91=l9_90&255u;
uint l9_92=(l9_90>>uint(8))&255u;
uint l9_93=(l9_90>>uint(16))&255u;
uint l9_94=(l9_90>>uint(24))&255u;
float4 l9_95=float4(float(l9_91),float(l9_92),float(l9_93),float(l9_94))/float4(255.0);
l9_62=((l9_81*param_12.x)+(l9_88*param_12.y))+(l9_95*param_12.z);
}
else
{
l9_62=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_96=l9_62;
float4 tangentOS=l9_96;
float3 tangentWS=normalize(UserUniforms.sc_NormalMatrix*tangentOS.xyz);
rhp.tangentWS=float4(tangentWS,tangentOS.w);
}
else
{
rhp.tangentWS=float4(1.0,0.0,0.0,1.0);
}
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w>0u)
{
float3 param_14=brc;
uint3 param_15=i;
uint3 l9_97=uint3((param_15.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w,(param_15.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w,(param_15.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetPNTC.w);
float4 l9_98=float4(0.0);
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==5u)
{
uint l9_99=l9_97.x;
float4 l9_100=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_99+3u]);
uint l9_101=l9_97.y;
float4 l9_102=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_101+3u]);
uint l9_103=l9_97.z;
float4 l9_104=float4(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+1u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+2u],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_103+3u]);
l9_98=((l9_100*param_14.x)+(l9_102*param_14.y))+(l9_104*param_14.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==6u)
{
uint l9_105=l9_97.x;
float4 l9_106=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_105]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_105+1u]))));
uint l9_107=l9_97.y;
float4 l9_108=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_107]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_107+1u]))));
uint l9_109=l9_97.z;
float4 l9_110=float4(float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_109]))),float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_109+1u]))));
l9_98=((l9_106*param_14.x)+(l9_108*param_14.y))+(l9_110*param_14.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatPNTC.w==2u)
{
uint l9_111=l9_97.x;
uint l9_112=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_111]);
uint l9_113=l9_112&255u;
uint l9_114=(l9_112>>uint(8))&255u;
uint l9_115=(l9_112>>uint(16))&255u;
uint l9_116=(l9_112>>uint(24))&255u;
float4 l9_117=float4(float(l9_113),float(l9_114),float(l9_115),float(l9_116))/float4(255.0);
uint l9_118=l9_97.y;
uint l9_119=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_118]);
uint l9_120=l9_119&255u;
uint l9_121=(l9_119>>uint(8))&255u;
uint l9_122=(l9_119>>uint(16))&255u;
uint l9_123=(l9_119>>uint(24))&255u;
float4 l9_124=float4(float(l9_120),float(l9_121),float(l9_122),float(l9_123))/float4(255.0);
uint l9_125=l9_97.z;
uint l9_126=as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_125]);
uint l9_127=l9_126&255u;
uint l9_128=(l9_126>>uint(8))&255u;
uint l9_129=(l9_126>>uint(16))&255u;
uint l9_130=(l9_126>>uint(24))&255u;
float4 l9_131=float4(float(l9_127),float(l9_128),float(l9_129),float(l9_130))/float4(255.0);
l9_98=((l9_117*param_14.x)+(l9_124*param_14.y))+(l9_131*param_14.z);
}
else
{
l9_98=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_132=l9_98;
rhp.color=l9_132;
}
float2 dummyRedBlack=float2(dot(brc,float3(uint3(1u)-(i%uint3(2u)))),0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.x>0u)
{
float3 param_16=brc;
uint3 param_17=i;
uint3 l9_133=uint3((param_17.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x,(param_17.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x,(param_17.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.x);
float2 l9_134=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.x==5u)
{
uint l9_135=l9_133.x;
float2 l9_136=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_135],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_135+1u]);
uint l9_137=l9_133.y;
float2 l9_138=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_137],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_137+1u]);
uint l9_139=l9_133.z;
float2 l9_140=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_139],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_139+1u]);
l9_134=((l9_136*param_16.x)+(l9_138*param_16.y))+(l9_140*param_16.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.x==6u)
{
uint l9_141=l9_133.x;
float2 l9_142=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_141])));
uint l9_143=l9_133.y;
float2 l9_144=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_143])));
uint l9_145=l9_133.z;
float2 l9_146=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_145])));
l9_134=((l9_142*param_16.x)+(l9_144*param_16.y))+(l9_146*param_16.z);
}
else
{
l9_134=float2(1.0,0.0);
}
}
float2 l9_147=l9_134;
rhp.uv0=l9_147;
}
else
{
rhp.uv0=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.y>0u)
{
float3 param_18=brc;
uint3 param_19=i;
uint3 l9_148=uint3((param_19.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y,(param_19.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y,(param_19.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.y);
float2 l9_149=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.y==5u)
{
uint l9_150=l9_148.x;
float2 l9_151=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_150],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_150+1u]);
uint l9_152=l9_148.y;
float2 l9_153=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_152],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_152+1u]);
uint l9_154=l9_148.z;
float2 l9_155=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_154],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_154+1u]);
l9_149=((l9_151*param_18.x)+(l9_153*param_18.y))+(l9_155*param_18.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.y==6u)
{
uint l9_156=l9_148.x;
float2 l9_157=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_156])));
uint l9_158=l9_148.y;
float2 l9_159=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_158])));
uint l9_160=l9_148.z;
float2 l9_161=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_160])));
l9_149=((l9_157*param_18.x)+(l9_159*param_18.y))+(l9_161*param_18.z);
}
else
{
l9_149=float2(1.0,0.0);
}
}
float2 l9_162=l9_149;
rhp.uv1=l9_162;
}
else
{
rhp.uv1=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.z>0u)
{
float3 param_20=brc;
uint3 param_21=i;
uint3 l9_163=uint3((param_21.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z,(param_21.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z,(param_21.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.z);
float2 l9_164=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.z==5u)
{
uint l9_165=l9_163.x;
float2 l9_166=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_165],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_165+1u]);
uint l9_167=l9_163.y;
float2 l9_168=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_167],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_167+1u]);
uint l9_169=l9_163.z;
float2 l9_170=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_169],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_169+1u]);
l9_164=((l9_166*param_20.x)+(l9_168*param_20.y))+(l9_170*param_20.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.z==6u)
{
uint l9_171=l9_163.x;
float2 l9_172=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_171])));
uint l9_173=l9_163.y;
float2 l9_174=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_173])));
uint l9_175=l9_163.z;
float2 l9_176=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_175])));
l9_164=((l9_172*param_20.x)+(l9_174*param_20.y))+(l9_176*param_20.z);
}
else
{
l9_164=float2(1.0,0.0);
}
}
float2 l9_177=l9_164;
rhp.uv2=l9_177;
}
else
{
rhp.uv2=dummyRedBlack;
}
if (UserUniforms.sc_RayTracingCasterFormatTexture.w>0u)
{
float3 param_22=brc;
uint3 param_23=i;
uint3 l9_178=uint3((param_23.x*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w,(param_23.y*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w,(param_23.z*(UserUniforms.sc_RayTracingCasterConfiguration.y>>16u))+UserUniforms.sc_RayTracingCasterOffsetTexture.w);
float2 l9_179=float2(0.0);
if (UserUniforms.sc_RayTracingCasterFormatTexture.w==5u)
{
uint l9_180=l9_178.x;
float2 l9_181=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_180],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_180+1u]);
uint l9_182=l9_178.y;
float2 l9_183=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_182],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_182+1u]);
uint l9_184=l9_178.z;
float2 l9_185=float2(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_184],sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_184+1u]);
l9_179=((l9_181*param_22.x)+(l9_183*param_22.y))+(l9_185*param_22.z);
}
else
{
if (UserUniforms.sc_RayTracingCasterFormatTexture.w==6u)
{
uint l9_186=l9_178.x;
float2 l9_187=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_186])));
uint l9_188=l9_178.y;
float2 l9_189=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_188])));
uint l9_190=l9_178.z;
float2 l9_191=float2(as_type<half2>(as_type<uint>(sc_RayTracingCasterVertexBuffer.sc_RayTracingCasterVertices[l9_190])));
l9_179=((l9_187*param_22.x)+(l9_189*param_22.y))+(l9_191*param_22.z);
}
else
{
l9_179=float2(1.0,0.0);
}
}
float2 l9_192=l9_179;
rhp.uv3=l9_192;
}
else
{
rhp.uv3=dummyRedBlack;
}
return rhp;
}
float3 evaluateSSAO(thread const float3& positionWS,thread int& varStereoViewID,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC,constant userUniformsObj& UserUniforms)
{
if ((int(sc_SSAOEnabled_tmp)!=0))
{
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 clipSpaceCoord=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(positionWS,1.0);
float3 l9_2=clipSpaceCoord.xyz/float3(clipSpaceCoord.w);
clipSpaceCoord=float4(l9_2.x,l9_2.y,l9_2.z,clipSpaceCoord.w);
float4 shadowSample=sc_SSAOTexture.sample(sc_SSAOTextureSmpSC,((clipSpaceCoord.xy*0.5)+float2(0.5)));
return float3(shadowSample.x);
}
else
{
return float3(1.0);
}
}
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V,constant userUniformsObj& UserUniforms)
{
float r=fast::max(surfaceProperties.roughness,0.029999999);
float3 F0=surfaceProperties.specColor;
float3 N=surfaceProperties.normal;
float3 H=normalize(L+V);
float param=dot(N,L);
float l9_0=fast::clamp(param,0.0,1.0);
float NdotL=l9_0;
float param_1=dot(N,V);
float l9_1=fast::clamp(param_1,0.0,1.0);
float NdotV=l9_1;
float param_2=dot(N,H);
float l9_2=fast::clamp(param_2,0.0,1.0);
float NdotH=l9_2;
float param_3=dot(V,H);
float l9_3=fast::clamp(param_3,0.0,1.0);
float VdotH=l9_3;
if (SC_DEVICE_CLASS_tmp>=2)
{
float param_4=NdotH;
float param_5=r;
float l9_4=param_5*param_5;
float l9_5=l9_4*l9_4;
float l9_6=param_4*param_4;
float l9_7=(l9_6*(l9_5-1.0))+1.0;
float l9_8=l9_7*l9_7;
float l9_9=9.9999999e-09;
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
l9_9=1e-07;
}
float l9_10=l9_5/(l9_8+l9_9);
float param_6=NdotL;
float param_7=NdotV;
float param_8=r;
float l9_11=param_6;
float l9_12=param_8;
float l9_13=l9_12+1.0;
l9_13=(l9_13*l9_13)*0.125;
float l9_14=(l9_11*(1.0-l9_13))+l9_13;
float l9_15=param_7;
float l9_16=param_8;
float l9_17=l9_16+1.0;
l9_17=(l9_17*l9_17)*0.125;
float l9_18=(l9_15*(1.0-l9_17))+l9_17;
float l9_19=1.0/(l9_14*l9_18);
float param_9=VdotH;
float3 param_10=F0;
float l9_20=param_9;
float3 l9_21=param_10;
float3 l9_22=float3(1.0);
float l9_23=1.0-l9_20;
float l9_24=l9_23*l9_23;
float l9_25=(l9_24*l9_24)*l9_23;
float3 l9_26=l9_21+((l9_22-l9_21)*l9_25);
float3 l9_27=l9_26;
return l9_27*(((l9_10*l9_19)*0.25)*NdotL);
}
else
{
float specPower=exp2(11.0-(10.0*r));
float param_11=VdotH;
float3 param_12=F0;
float l9_28=param_11;
float3 l9_29=param_12;
float3 l9_30=float3(1.0);
float l9_31=1.0-l9_28;
float l9_32=l9_31*l9_31;
float l9_33=(l9_32*l9_32)*l9_31;
float3 l9_34=l9_29+((l9_30-l9_29)*l9_33);
float3 l9_35=l9_34;
return ((l9_35*((specPower*0.125)+0.25))*pow(NdotH,specPower))*NdotL;
}
}
float computeDistanceAttenuation(thread const float& distanceToLight,thread const float& falloffEndDistance)
{
float distanceToLightSquared=distanceToLight*distanceToLight;
if (falloffEndDistance==0.0)
{
return 1.0/distanceToLightSquared;
}
float distanceToLightToTheFourth=distanceToLightSquared*distanceToLightSquared;
float falloffEndDistanceToTheFourth=pow(falloffEndDistance,4.0);
return fast::max(fast::min(1.0-(distanceToLightToTheFourth/falloffEndDistanceToTheFourth),1.0),0.0)/distanceToLightSquared;
}
float2 calcSeamlessPanoramicUvsForSampling(thread const float2& uv,thread const float2& topMipRes,thread const float& lod)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 thisMipRes=fast::max(float2(1.0),topMipRes/float2(exp2(lod)));
return ((uv*(thisMipRes-float2(1.0)))/thisMipRes)+(float2(0.5)/thisMipRes);
}
else
{
return uv;
}
}
float3 getSpecularDominantDir(thread const float3& N,thread const float3& R,thread const float& roughness)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float lerpFactor=(roughness*roughness)*roughness;
return normalize(mix(R,N,float3(lerpFactor)));
}
else
{
return R;
}
}
float3 envBRDFApprox(thread const SurfaceProperties& surfaceProperties,thread const float& NdotV)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float4 r=(float4(-1.0,-0.0275,-0.57200003,0.022)*surfaceProperties.roughness)+float4(1.0,0.0425,1.04,-0.039999999);
float a004=(fast::min(r.x*r.x,exp2((-9.2799997)*NdotV))*r.x)+r.y;
float2 AB=(float2(-1.04,1.04)*a004)+r.zw;
return fast::max((surfaceProperties.specColor*AB.x)+float3(AB.y),float3(0.0));
}
else
{
float3 fresnelMax=fast::max(float3(1.0-surfaceProperties.roughness),surfaceProperties.specColor);
float param=NdotV;
float3 param_1=surfaceProperties.specColor;
float3 param_2=fresnelMax;
float l9_0=1.0-param;
float l9_1=l9_0*l9_0;
float l9_2=(l9_1*l9_1)*l9_0;
float3 l9_3=param_1+((param_2-param_1)*l9_2);
return l9_3;
}
}
float srgbToLinear(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,2.2);
}
else
{
return x*x;
}
}
float linearToSrgb(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,0.45454547);
}
else
{
return sqrt(x);
}
}
float4 ngsCalculateLighting(thread const float3& albedo,thread const float& opacity,thread const float3& normal,thread const float3& position,thread const float3& viewDir,thread const float3& emissive,thread const float& metallic,thread const float& roughness,thread const float3& ao,thread const float3& specularAO,thread int& varStereoViewID,thread texture2d<float> sc_EnvmapDiffuse,thread sampler sc_EnvmapDiffuseSmpSC,thread texture2d<float> sc_EnvmapSpecular,thread sampler sc_EnvmapSpecularSmpSC,thread texture2d<float> sc_ScreenTexture,thread sampler sc_ScreenTextureSmpSC,thread texture2d<float> sc_ShadowTexture,thread sampler sc_ShadowTextureSmpSC,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC,thread texture2d<float> sc_RayTracingReflections,thread sampler sc_RayTracingReflectionsSmpSC,thread texture2d<float> sc_RayTracingGlobalIllumination,thread sampler sc_RayTracingGlobalIlluminationSmpSC,thread texture2d<float> sc_RayTracingShadows,thread sampler sc_RayTracingShadowsSmpSC,thread float4& gl_FragCoord,constant userUniformsObj& UserUniforms,thread float2& varShadowTex,thread float4& FragColor0)
{
SurfaceProperties l9_0;
l9_0.albedo=float3(0.0);
l9_0.opacity=1.0;
l9_0.normal=float3(0.0);
l9_0.positionWS=float3(0.0);
l9_0.viewDirWS=float3(0.0);
l9_0.metallic=0.0;
l9_0.roughness=0.0;
l9_0.emissive=float3(0.0);
l9_0.ao=float3(1.0);
l9_0.specularAo=float3(1.0);
l9_0.bakedShadows=float3(1.0);
SurfaceProperties l9_1=l9_0;
SurfaceProperties surfaceProperties=l9_1;
surfaceProperties.opacity=opacity;
float3 param=albedo;
float3 l9_2;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2=float3(pow(param.x,2.2),pow(param.y,2.2),pow(param.z,2.2));
}
else
{
l9_2=param*param;
}
float3 l9_3=l9_2;
surfaceProperties.albedo=l9_3;
surfaceProperties.normal=normalize(normal);
surfaceProperties.positionWS=position;
surfaceProperties.viewDirWS=viewDir;
float3 param_1=emissive;
float3 l9_4;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_4=float3(pow(param_1.x,2.2),pow(param_1.y,2.2),pow(param_1.z,2.2));
}
else
{
l9_4=param_1*param_1;
}
float3 l9_5=l9_4;
surfaceProperties.emissive=l9_5;
surfaceProperties.metallic=metallic;
surfaceProperties.roughness=roughness;
surfaceProperties.ao=ao;
surfaceProperties.specularAo=specularAO;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 param_2=surfaceProperties.positionWS;
surfaceProperties.ao=evaluateSSAO(param_2,varStereoViewID,sc_SSAOTexture,sc_SSAOTextureSmpSC,UserUniforms);
}
SurfaceProperties param_3=surfaceProperties;
SurfaceProperties l9_6=param_3;
float3 l9_7=mix(float3(0.039999999),l9_6.albedo*l9_6.metallic,float3(l9_6.metallic));
float3 l9_8=mix(l9_6.albedo*(1.0-l9_6.metallic),float3(0.0),float3(l9_6.metallic));
param_3.albedo=l9_8;
param_3.specColor=l9_7;
SurfaceProperties l9_9=param_3;
surfaceProperties=l9_9;
SurfaceProperties param_4=surfaceProperties;
LightingComponents l9_10;
l9_10.directDiffuse=float3(0.0);
l9_10.directSpecular=float3(0.0);
l9_10.indirectDiffuse=float3(1.0);
l9_10.indirectSpecular=float3(0.0);
l9_10.emitted=float3(0.0);
l9_10.transmitted=float3(0.0);
LightingComponents l9_11=l9_10;
LightingComponents l9_12=l9_11;
float3 l9_13=param_4.viewDirWS;
int l9_14=0;
float4 l9_15=float4(param_4.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_16;
LightProperties l9_17;
int l9_18=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_18<sc_DirectionalLightsCount_tmp)
{
l9_16.direction=UserUniforms.sc_DirectionalLights[l9_18].direction;
l9_16.color=UserUniforms.sc_DirectionalLights[l9_18].color;
l9_17.direction=l9_16.direction;
l9_17.color=l9_16.color.xyz;
l9_17.attenuation=l9_16.color.w;
l9_17.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
l9_14++;
LightingComponents l9_19=l9_12;
LightProperties l9_20=l9_17;
SurfaceProperties l9_21=param_4;
float3 l9_22=l9_13;
SurfaceProperties l9_23=l9_21;
float3 l9_24=l9_20.direction;
float l9_25=dot(l9_23.normal,l9_24);
float l9_26=fast::clamp(l9_25,0.0,1.0);
float3 l9_27=float3(l9_26);
l9_19.directDiffuse+=((l9_27*l9_20.color)*l9_20.attenuation);
SurfaceProperties l9_28=l9_21;
float3 l9_29=l9_20.direction;
float3 l9_30=l9_22;
l9_19.directSpecular+=((calculateDirectSpecular(l9_28,l9_29,l9_30,UserUniforms)*l9_20.color)*l9_20.attenuation);
LightingComponents l9_31=l9_19;
l9_12=l9_31;
l9_18++;
continue;
}
else
{
break;
}
}
}
if (sc_PointLightsCount_tmp>0)
{
sc_PointLight_t_1 l9_32;
LightProperties l9_33;
int l9_34=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_34<sc_PointLightsCount_tmp)
{
l9_32.falloffEnabled=UserUniforms.sc_PointLights[l9_34].falloffEnabled!=0;
l9_32.falloffEndDistance=UserUniforms.sc_PointLights[l9_34].falloffEndDistance;
l9_32.negRcpFalloffEndDistance4=UserUniforms.sc_PointLights[l9_34].negRcpFalloffEndDistance4;
l9_32.angleScale=UserUniforms.sc_PointLights[l9_34].angleScale;
l9_32.angleOffset=UserUniforms.sc_PointLights[l9_34].angleOffset;
l9_32.direction=UserUniforms.sc_PointLights[l9_34].direction;
l9_32.position=UserUniforms.sc_PointLights[l9_34].position;
l9_32.color=UserUniforms.sc_PointLights[l9_34].color;
float3 l9_35=l9_32.position-param_4.positionWS;
l9_33.direction=normalize(l9_35);
l9_33.color=l9_32.color.xyz;
l9_33.attenuation=l9_32.color.w;
l9_33.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
float3 l9_36=l9_33.direction;
float3 l9_37=l9_32.direction;
float l9_38=l9_32.angleScale;
float l9_39=l9_32.angleOffset;
float l9_40=dot(l9_36,l9_37);
float l9_41=fast::clamp((l9_40*l9_38)+l9_39,0.0,1.0);
float l9_42=l9_41*l9_41;
l9_33.attenuation*=l9_42;
if (l9_32.falloffEnabled)
{
float l9_43=length(l9_35);
float l9_44=l9_32.falloffEndDistance;
l9_33.attenuation*=computeDistanceAttenuation(l9_43,l9_44);
}
l9_14++;
LightingComponents l9_45=l9_12;
LightProperties l9_46=l9_33;
SurfaceProperties l9_47=param_4;
float3 l9_48=l9_13;
SurfaceProperties l9_49=l9_47;
float3 l9_50=l9_46.direction;
float l9_51=dot(l9_49.normal,l9_50);
float l9_52=fast::clamp(l9_51,0.0,1.0);
float3 l9_53=float3(l9_52);
l9_45.directDiffuse+=((l9_53*l9_46.color)*l9_46.attenuation);
SurfaceProperties l9_54=l9_47;
float3 l9_55=l9_46.direction;
float3 l9_56=l9_48;
l9_45.directSpecular+=((calculateDirectSpecular(l9_54,l9_55,l9_56,UserUniforms)*l9_46.color)*l9_46.attenuation);
LightingComponents l9_57=l9_45;
l9_12=l9_57;
l9_34++;
continue;
}
else
{
break;
}
}
}
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float3 l9_58=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_59=abs(varShadowTex-float2(0.5));
float l9_60=fast::max(l9_59.x,l9_59.y);
float l9_61=step(l9_60,0.5);
float4 l9_62=sc_ShadowTexture.sample(sc_ShadowTextureSmpSC,varShadowTex)*l9_61;
float3 l9_63=mix(UserUniforms.sc_ShadowColor.xyz,UserUniforms.sc_ShadowColor.xyz*l9_62.xyz,float3(UserUniforms.sc_ShadowColor.w));
float l9_64=l9_62.w*UserUniforms.sc_ShadowDensity;
l9_58=mix(float3(1.0),l9_63,float3(l9_64));
}
else
{
l9_58=float3(1.0);
}
float3 l9_65=l9_58;
float3 l9_66=l9_65;
l9_12.directDiffuse*=l9_66;
l9_12.directSpecular*=l9_66;
}
if ((UserUniforms.sc_RayTracingReceiverEffectsMask&4)!=0)
{
float4 l9_67=gl_FragCoord;
float2 l9_68=l9_67.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_69=l9_68;
float2 l9_70=l9_69;
float l9_71=0.0;
int l9_72;
if ((int(sc_RayTracingShadowsHasSwappedViews_tmp)!=0))
{
int l9_73=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_73=0;
}
else
{
l9_73=varStereoViewID;
}
int l9_74=l9_73;
l9_72=1-l9_74;
}
else
{
int l9_75=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_75=0;
}
else
{
l9_75=varStereoViewID;
}
int l9_76=l9_75;
l9_72=l9_76;
}
int l9_77=l9_72;
float2 l9_78=l9_70;
int l9_79=sc_RayTracingShadowsLayout_tmp;
int l9_80=l9_77;
float l9_81=l9_71;
float2 l9_82=l9_78;
int l9_83=l9_79;
int l9_84=l9_80;
float3 l9_85=float3(0.0);
if (l9_83==0)
{
l9_85=float3(l9_82,0.0);
}
else
{
if (l9_83==1)
{
l9_85=float3(l9_82.x,(l9_82.y*0.5)+(0.5-(float(l9_84)*0.5)),0.0);
}
else
{
l9_85=float3(l9_82,float(l9_84));
}
}
float3 l9_86=l9_85;
float3 l9_87=l9_86;
float4 l9_88=sc_RayTracingShadows.sample(sc_RayTracingShadowsSmpSC,l9_87.xy,bias(l9_81));
float4 l9_89=l9_88;
float4 l9_90=l9_89;
float l9_91=l9_90.x;
float l9_92=1.0-l9_91;
l9_12.directDiffuse*=l9_92;
l9_12.directSpecular*=l9_92;
}
SurfaceProperties l9_93=param_4;
float3 l9_94=l9_93.normal;
float3 l9_95=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
float3 l9_96=l9_94;
float3 l9_97=l9_96;
float l9_98=UserUniforms.sc_EnvmapRotation.y;
float2 l9_99=float2(0.0);
float l9_100=l9_97.x;
float l9_101=-l9_97.z;
float l9_102=(l9_100<0.0) ? (-1.0) : 1.0;
float l9_103=l9_102*acos(fast::clamp(l9_101/length(float2(l9_100,l9_101)),-1.0,1.0));
l9_99.x=l9_103-1.5707964;
l9_99.y=acos(l9_97.y);
l9_99/=float2(6.2831855,3.1415927);
l9_99.y=1.0-l9_99.y;
l9_99.x+=(l9_98/360.0);
l9_99.x=fract((l9_99.x+floor(l9_99.x))+1.0);
float2 l9_104=l9_99;
float2 l9_105=l9_104;
float4 l9_106=float4(0.0);
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 l9_107=l9_105;
float2 l9_108=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_109=5.0;
l9_105=calcSeamlessPanoramicUvsForSampling(l9_107,l9_108,l9_109);
}
float2 l9_110=l9_105;
float l9_111=13.0;
int l9_112;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_113=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_113=0;
}
else
{
l9_113=varStereoViewID;
}
int l9_114=l9_113;
l9_112=1-l9_114;
}
else
{
int l9_115=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_115=0;
}
else
{
l9_115=varStereoViewID;
}
int l9_116=l9_115;
l9_112=l9_116;
}
int l9_117=l9_112;
float2 l9_118=l9_110;
int l9_119=sc_EnvmapSpecularLayout_tmp;
int l9_120=l9_117;
float l9_121=l9_111;
float2 l9_122=l9_118;
int l9_123=l9_119;
int l9_124=l9_120;
float3 l9_125=float3(0.0);
if (l9_123==0)
{
l9_125=float3(l9_122,0.0);
}
else
{
if (l9_123==1)
{
l9_125=float3(l9_122.x,(l9_122.y*0.5)+(0.5-(float(l9_124)*0.5)),0.0);
}
else
{
l9_125=float3(l9_122,float(l9_124));
}
}
float3 l9_126=l9_125;
float3 l9_127=l9_126;
float4 l9_128=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_127.xy,bias(l9_121));
float4 l9_129=l9_128;
l9_106=l9_129;
}
else
{
if ((int(sc_HasDiffuseEnvmap_tmp)!=0))
{
float2 l9_130=l9_105;
float2 l9_131=UserUniforms.sc_EnvmapDiffuseSize.xy;
float l9_132=0.0;
l9_105=calcSeamlessPanoramicUvsForSampling(l9_130,l9_131,l9_132);
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
float2 l9_133=l9_105;
float l9_134=0.0;
int l9_135;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=varStereoViewID;
}
int l9_137=l9_136;
l9_135=1-l9_137;
}
else
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=varStereoViewID;
}
int l9_139=l9_138;
l9_135=l9_139;
}
int l9_140=l9_135;
float2 l9_141=l9_133;
int l9_142=sc_EnvmapDiffuseLayout_tmp;
int l9_143=l9_140;
float l9_144=l9_134;
float2 l9_145=l9_141;
int l9_146=l9_142;
int l9_147=l9_143;
float3 l9_148=float3(0.0);
if (l9_146==0)
{
l9_148=float3(l9_145,0.0);
}
else
{
if (l9_146==1)
{
l9_148=float3(l9_145.x,(l9_145.y*0.5)+(0.5-(float(l9_147)*0.5)),0.0);
}
else
{
l9_148=float3(l9_145,float(l9_147));
}
}
float3 l9_149=l9_148;
float3 l9_150=l9_149;
float4 l9_151=sc_EnvmapDiffuse.sample(sc_EnvmapDiffuseSmpSC,l9_150.xy,level(l9_144));
float4 l9_152=l9_151;
l9_106=l9_152;
}
else
{
float2 l9_153=l9_105;
float l9_154=-13.0;
int l9_155;
if ((int(sc_EnvmapDiffuseHasSwappedViews_tmp)!=0))
{
int l9_156=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_156=0;
}
else
{
l9_156=varStereoViewID;
}
int l9_157=l9_156;
l9_155=1-l9_157;
}
else
{
int l9_158=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_158=0;
}
else
{
l9_158=varStereoViewID;
}
int l9_159=l9_158;
l9_155=l9_159;
}
int l9_160=l9_155;
float2 l9_161=l9_153;
int l9_162=sc_EnvmapDiffuseLayout_tmp;
int l9_163=l9_160;
float l9_164=l9_154;
float2 l9_165=l9_161;
int l9_166=l9_162;
int l9_167=l9_163;
float3 l9_168=float3(0.0);
if (l9_166==0)
{
l9_168=float3(l9_165,0.0);
}
else
{
if (l9_166==1)
{
l9_168=float3(l9_165.x,(l9_165.y*0.5)+(0.5-(float(l9_167)*0.5)),0.0);
}
else
{
l9_168=float3(l9_165,float(l9_167));
}
}
float3 l9_169=l9_168;
float3 l9_170=l9_169;
float4 l9_171=sc_EnvmapDiffuse.sample(sc_EnvmapDiffuseSmpSC,l9_170.xy,bias(l9_164));
float4 l9_172=l9_171;
l9_106=l9_172;
}
}
else
{
float2 l9_173=l9_105;
float l9_174=13.0;
int l9_175;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_176=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_176=0;
}
else
{
l9_176=varStereoViewID;
}
int l9_177=l9_176;
l9_175=1-l9_177;
}
else
{
int l9_178=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_178=0;
}
else
{
l9_178=varStereoViewID;
}
int l9_179=l9_178;
l9_175=l9_179;
}
int l9_180=l9_175;
float2 l9_181=l9_173;
int l9_182=sc_EnvmapSpecularLayout_tmp;
int l9_183=l9_180;
float l9_184=l9_174;
float2 l9_185=l9_181;
int l9_186=l9_182;
int l9_187=l9_183;
float3 l9_188=float3(0.0);
if (l9_186==0)
{
l9_188=float3(l9_185,0.0);
}
else
{
if (l9_186==1)
{
l9_188=float3(l9_185.x,(l9_185.y*0.5)+(0.5-(float(l9_187)*0.5)),0.0);
}
else
{
l9_188=float3(l9_185,float(l9_187));
}
}
float3 l9_189=l9_188;
float3 l9_190=l9_189;
float4 l9_191=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_190.xy,bias(l9_184));
float4 l9_192=l9_191;
l9_106=l9_192;
}
}
float4 l9_193=l9_106;
float3 l9_194=l9_193.xyz*(1.0/l9_193.w);
float3 l9_195=l9_194*UserUniforms.sc_EnvmapExposure;
l9_95=l9_195;
}
else
{
if (sc_EnvLightMode_tmp==sc_AmbientLightMode_SphericalHarmonics_tmp)
{
float3 l9_196=UserUniforms.sc_Sh[0];
float3 l9_197=UserUniforms.sc_Sh[1];
float3 l9_198=UserUniforms.sc_Sh[2];
float3 l9_199=UserUniforms.sc_Sh[3];
float3 l9_200=UserUniforms.sc_Sh[4];
float3 l9_201=UserUniforms.sc_Sh[5];
float3 l9_202=UserUniforms.sc_Sh[6];
float3 l9_203=UserUniforms.sc_Sh[7];
float3 l9_204=UserUniforms.sc_Sh[8];
float3 l9_205=-l9_94;
float l9_206=0.0;
l9_206=l9_205.x;
float l9_207=l9_205.y;
float l9_208=l9_205.z;
float l9_209=l9_206*l9_206;
float l9_210=l9_207*l9_207;
float l9_211=l9_208*l9_208;
float l9_212=l9_206*l9_207;
float l9_213=l9_207*l9_208;
float l9_214=l9_206*l9_208;
float3 l9_215=((((((l9_204*0.42904299)*(l9_209-l9_210))+((l9_202*0.74312502)*l9_211))+(l9_196*0.88622701))-(l9_202*0.24770799))+((((l9_200*l9_212)+(l9_203*l9_214))+(l9_201*l9_213))*0.85808599))+((((l9_199*l9_206)+(l9_197*l9_207))+(l9_198*l9_208))*1.0233279);
l9_95=l9_215*UserUniforms.sc_ShIntensity;
}
}
if ((UserUniforms.sc_RayTracingReceiverEffectsMask&2)!=0)
{
float4 l9_216=gl_FragCoord;
float2 l9_217=l9_216.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_218=l9_217;
float2 l9_219=l9_218;
float l9_220=0.0;
int l9_221;
if ((int(sc_RayTracingGlobalIlluminationHasSwappedViews_tmp)!=0))
{
int l9_222=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_222=0;
}
else
{
l9_222=varStereoViewID;
}
int l9_223=l9_222;
l9_221=1-l9_223;
}
else
{
int l9_224=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_224=0;
}
else
{
l9_224=varStereoViewID;
}
int l9_225=l9_224;
l9_221=l9_225;
}
int l9_226=l9_221;
float2 l9_227=l9_219;
int l9_228=sc_RayTracingGlobalIlluminationLayout_tmp;
int l9_229=l9_226;
float l9_230=l9_220;
float2 l9_231=l9_227;
int l9_232=l9_228;
int l9_233=l9_229;
float3 l9_234=float3(0.0);
if (l9_232==0)
{
l9_234=float3(l9_231,0.0);
}
else
{
if (l9_232==1)
{
l9_234=float3(l9_231.x,(l9_231.y*0.5)+(0.5-(float(l9_233)*0.5)),0.0);
}
else
{
l9_234=float3(l9_231,float(l9_233));
}
}
float3 l9_235=l9_234;
float3 l9_236=l9_235;
float4 l9_237=sc_RayTracingGlobalIllumination.sample(sc_RayTracingGlobalIlluminationSmpSC,l9_236.xy,bias(l9_230));
float4 l9_238=l9_237;
float4 l9_239=l9_238;
float4 l9_240=l9_239;
l9_95=mix(l9_95,l9_240.xyz,float3(l9_240.w));
}
if (sc_AmbientLightsCount_tmp>0)
{
if (sc_AmbientLightMode0_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[0].color*UserUniforms.sc_AmbientLights[0].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[0].color.x);
}
}
if (sc_AmbientLightsCount_tmp>1)
{
if (sc_AmbientLightMode1_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[1].color*UserUniforms.sc_AmbientLights[1].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[1].color.x);
}
}
if (sc_AmbientLightsCount_tmp>2)
{
if (sc_AmbientLightMode2_tmp==sc_AmbientLightMode_Constant_tmp)
{
l9_95+=(UserUniforms.sc_AmbientLights[2].color*UserUniforms.sc_AmbientLights[2].intensity);
}
else
{
l9_95.x+=(1e-06*UserUniforms.sc_AmbientLights[2].color.x);
}
}
if ((int(sc_LightEstimation_tmp)!=0))
{
float3 l9_241=l9_94;
float3 l9_242=UserUniforms.sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t l9_243;
float l9_244;
int l9_245=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_245<sc_LightEstimationSGCount_tmp)
{
l9_243.color=UserUniforms.sc_LightEstimationData.sg[l9_245].color;
l9_243.sharpness=UserUniforms.sc_LightEstimationData.sg[l9_245].sharpness;
l9_243.axis=UserUniforms.sc_LightEstimationData.sg[l9_245].axis;
float3 l9_246=l9_241;
float l9_247=dot(l9_243.axis,l9_246);
float l9_248=l9_243.sharpness;
float l9_249=0.36000001;
float l9_250=1.0/(4.0*l9_249);
float l9_251=exp(-l9_248);
float l9_252=l9_251*l9_251;
float l9_253=1.0/l9_248;
float l9_254=(1.0+(2.0*l9_252))-l9_253;
float l9_255=((l9_251-l9_252)*l9_253)-l9_252;
float l9_256=sqrt(1.0-l9_254);
float l9_257=l9_249*l9_247;
float l9_258=l9_250*l9_256;
float l9_259=l9_257+l9_258;
float l9_260=l9_247;
float l9_261=fast::clamp(l9_260,0.0,1.0);
float l9_262=l9_261;
if (step(abs(l9_257),l9_258)>0.5)
{
l9_244=(l9_259*l9_259)/l9_256;
}
else
{
l9_244=l9_262;
}
l9_262=l9_244;
float l9_263=(l9_254*l9_262)+l9_255;
sc_SphericalGaussianLight_t l9_264=l9_243;
float3 l9_265=(l9_264.color/float3(l9_264.sharpness))*6.2831855;
float3 l9_266=(l9_265*l9_263)/float3(3.1415927);
l9_242+=l9_266;
l9_245++;
continue;
}
else
{
break;
}
}
float3 l9_267=l9_242;
l9_95+=l9_267;
}
float3 l9_268=l9_95;
float3 l9_269=l9_268;
l9_12.indirectDiffuse=l9_269;
SurfaceProperties l9_270=param_4;
float3 l9_271=l9_13;
float3 l9_272=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_273=l9_270;
float3 l9_274=l9_271;
float3 l9_275=l9_273.normal;
float3 l9_276=reflect(-l9_274,l9_275);
float3 l9_277=l9_275;
float3 l9_278=l9_276;
float l9_279=l9_273.roughness;
l9_276=getSpecularDominantDir(l9_277,l9_278,l9_279);
float l9_280=l9_273.roughness;
float l9_281=pow(l9_280,0.66666669);
float l9_282=fast::clamp(l9_281,0.0,1.0);
float l9_283=l9_282*5.0;
float l9_284=l9_283;
float l9_285=l9_284;
float3 l9_286=l9_276;
float l9_287=l9_285;
float3 l9_288=l9_286;
float l9_289=l9_287;
float4 l9_290=float4(0.0);
float3 l9_291=l9_288;
float l9_292=UserUniforms.sc_EnvmapRotation.y;
float2 l9_293=float2(0.0);
float l9_294=l9_291.x;
float l9_295=-l9_291.z;
float l9_296=(l9_294<0.0) ? (-1.0) : 1.0;
float l9_297=l9_296*acos(fast::clamp(l9_295/length(float2(l9_294,l9_295)),-1.0,1.0));
l9_293.x=l9_297-1.5707964;
l9_293.y=acos(l9_291.y);
l9_293/=float2(6.2831855,3.1415927);
l9_293.y=1.0-l9_293.y;
l9_293.x+=(l9_292/360.0);
l9_293.x=fract((l9_293.x+floor(l9_293.x))+1.0);
float2 l9_298=l9_293;
float2 l9_299=l9_298;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_300=floor(l9_289);
float l9_301=ceil(l9_289);
float l9_302=l9_289-l9_300;
float2 l9_303=l9_299;
float2 l9_304=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_305=l9_300;
float2 l9_306=calcSeamlessPanoramicUvsForSampling(l9_303,l9_304,l9_305);
float2 l9_307=l9_306;
float l9_308=l9_300;
float2 l9_309=l9_307;
float l9_310=l9_308;
int l9_311;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_312=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_312=0;
}
else
{
l9_312=varStereoViewID;
}
int l9_313=l9_312;
l9_311=1-l9_313;
}
else
{
int l9_314=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_314=0;
}
else
{
l9_314=varStereoViewID;
}
int l9_315=l9_314;
l9_311=l9_315;
}
int l9_316=l9_311;
float2 l9_317=l9_309;
int l9_318=sc_EnvmapSpecularLayout_tmp;
int l9_319=l9_316;
float l9_320=l9_310;
float2 l9_321=l9_317;
int l9_322=l9_318;
int l9_323=l9_319;
float3 l9_324=float3(0.0);
if (l9_322==0)
{
l9_324=float3(l9_321,0.0);
}
else
{
if (l9_322==1)
{
l9_324=float3(l9_321.x,(l9_321.y*0.5)+(0.5-(float(l9_323)*0.5)),0.0);
}
else
{
l9_324=float3(l9_321,float(l9_323));
}
}
float3 l9_325=l9_324;
float3 l9_326=l9_325;
float4 l9_327=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_326.xy,level(l9_320));
float4 l9_328=l9_327;
float4 l9_329=l9_328;
float4 l9_330=l9_329;
float2 l9_331=l9_299;
float2 l9_332=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_333=l9_301;
float2 l9_334=calcSeamlessPanoramicUvsForSampling(l9_331,l9_332,l9_333);
float2 l9_335=l9_334;
float l9_336=l9_301;
float2 l9_337=l9_335;
float l9_338=l9_336;
int l9_339;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_340=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_340=0;
}
else
{
l9_340=varStereoViewID;
}
int l9_341=l9_340;
l9_339=1-l9_341;
}
else
{
int l9_342=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_342=0;
}
else
{
l9_342=varStereoViewID;
}
int l9_343=l9_342;
l9_339=l9_343;
}
int l9_344=l9_339;
float2 l9_345=l9_337;
int l9_346=sc_EnvmapSpecularLayout_tmp;
int l9_347=l9_344;
float l9_348=l9_338;
float2 l9_349=l9_345;
int l9_350=l9_346;
int l9_351=l9_347;
float3 l9_352=float3(0.0);
if (l9_350==0)
{
l9_352=float3(l9_349,0.0);
}
else
{
if (l9_350==1)
{
l9_352=float3(l9_349.x,(l9_349.y*0.5)+(0.5-(float(l9_351)*0.5)),0.0);
}
else
{
l9_352=float3(l9_349,float(l9_351));
}
}
float3 l9_353=l9_352;
float3 l9_354=l9_353;
float4 l9_355=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_354.xy,level(l9_348));
float4 l9_356=l9_355;
float4 l9_357=l9_356;
float4 l9_358=l9_357;
l9_290=mix(l9_330,l9_358,float4(l9_302));
}
else
{
float2 l9_359=l9_299;
float l9_360=l9_289;
float2 l9_361=l9_359;
float l9_362=l9_360;
int l9_363;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_364=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_364=0;
}
else
{
l9_364=varStereoViewID;
}
int l9_365=l9_364;
l9_363=1-l9_365;
}
else
{
int l9_366=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_366=0;
}
else
{
l9_366=varStereoViewID;
}
int l9_367=l9_366;
l9_363=l9_367;
}
int l9_368=l9_363;
float2 l9_369=l9_361;
int l9_370=sc_EnvmapSpecularLayout_tmp;
int l9_371=l9_368;
float l9_372=l9_362;
float2 l9_373=l9_369;
int l9_374=l9_370;
int l9_375=l9_371;
float3 l9_376=float3(0.0);
if (l9_374==0)
{
l9_376=float3(l9_373,0.0);
}
else
{
if (l9_374==1)
{
l9_376=float3(l9_373.x,(l9_373.y*0.5)+(0.5-(float(l9_375)*0.5)),0.0);
}
else
{
l9_376=float3(l9_373,float(l9_375));
}
}
float3 l9_377=l9_376;
float3 l9_378=l9_377;
float4 l9_379=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_378.xy,level(l9_372));
float4 l9_380=l9_379;
float4 l9_381=l9_380;
l9_290=l9_381;
}
float4 l9_382=l9_290;
float3 l9_383=l9_382.xyz*(1.0/l9_382.w);
float3 l9_384=l9_383;
float3 l9_385=l9_384*UserUniforms.sc_EnvmapExposure;
l9_385+=float3(1e-06);
float3 l9_386=l9_385;
float3 l9_387=l9_386;
if ((UserUniforms.sc_RayTracingReceiverEffectsMask&1)!=0)
{
float4 l9_388=gl_FragCoord;
float2 l9_389=l9_388.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_390=l9_389;
float2 l9_391=l9_390;
float l9_392=0.0;
int l9_393;
if ((int(sc_RayTracingReflectionsHasSwappedViews_tmp)!=0))
{
int l9_394=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_394=0;
}
else
{
l9_394=varStereoViewID;
}
int l9_395=l9_394;
l9_393=1-l9_395;
}
else
{
int l9_396=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_396=0;
}
else
{
l9_396=varStereoViewID;
}
int l9_397=l9_396;
l9_393=l9_397;
}
int l9_398=l9_393;
float2 l9_399=l9_391;
int l9_400=sc_RayTracingReflectionsLayout_tmp;
int l9_401=l9_398;
float l9_402=l9_392;
float2 l9_403=l9_399;
int l9_404=l9_400;
int l9_405=l9_401;
float3 l9_406=float3(0.0);
if (l9_404==0)
{
l9_406=float3(l9_403,0.0);
}
else
{
if (l9_404==1)
{
l9_406=float3(l9_403.x,(l9_403.y*0.5)+(0.5-(float(l9_405)*0.5)),0.0);
}
else
{
l9_406=float3(l9_403,float(l9_405));
}
}
float3 l9_407=l9_406;
float3 l9_408=l9_407;
float4 l9_409=sc_RayTracingReflections.sample(sc_RayTracingReflectionsSmpSC,l9_408.xy,bias(l9_402));
float4 l9_410=l9_409;
float4 l9_411=l9_410;
float4 l9_412=l9_411;
l9_387=mix(l9_387,l9_412.xyz,float3(l9_412.w));
}
SurfaceProperties l9_413=l9_273;
float l9_414=abs(dot(l9_275,l9_274));
float3 l9_415=l9_387*envBRDFApprox(l9_413,l9_414);
l9_272+=l9_415;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_416=l9_270;
float3 l9_417=l9_271;
float l9_418=fast::clamp(l9_416.roughness*l9_416.roughness,0.0099999998,1.0);
float3 l9_419=UserUniforms.sc_LightEstimationData.ambientLight*l9_416.specColor;
sc_SphericalGaussianLight_t l9_420;
sc_SphericalGaussianLight_t l9_421;
sc_SphericalGaussianLight_t l9_422;
int l9_423=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_423<sc_LightEstimationSGCount_tmp)
{
l9_420.color=UserUniforms.sc_LightEstimationData.sg[l9_423].color;
l9_420.sharpness=UserUniforms.sc_LightEstimationData.sg[l9_423].sharpness;
l9_420.axis=UserUniforms.sc_LightEstimationData.sg[l9_423].axis;
float3 l9_424=l9_416.normal;
float l9_425=l9_418;
float3 l9_426=l9_417;
float3 l9_427=l9_416.specColor;
float3 l9_428=l9_424;
float l9_429=l9_425;
l9_421.axis=l9_428;
float l9_430=l9_429*l9_429;
l9_421.sharpness=2.0/l9_430;
l9_421.color=float3(1.0/(3.1415927*l9_430));
sc_SphericalGaussianLight_t l9_431=l9_421;
sc_SphericalGaussianLight_t l9_432=l9_431;
sc_SphericalGaussianLight_t l9_433=l9_432;
float3 l9_434=l9_426;
l9_422.axis=reflect(-l9_434,l9_433.axis);
l9_422.color=l9_433.color;
l9_422.sharpness=l9_433.sharpness;
l9_422.sharpness/=(4.0*fast::max(dot(l9_433.axis,l9_434),9.9999997e-05));
sc_SphericalGaussianLight_t l9_435=l9_422;
sc_SphericalGaussianLight_t l9_436=l9_435;
sc_SphericalGaussianLight_t l9_437=l9_436;
sc_SphericalGaussianLight_t l9_438=l9_420;
float l9_439=length((l9_437.axis*l9_437.sharpness)+(l9_438.axis*l9_438.sharpness));
float3 l9_440=(l9_437.color*exp((l9_439-l9_437.sharpness)-l9_438.sharpness))*l9_438.color;
float l9_441=1.0-exp((-2.0)*l9_439);
float3 l9_442=((l9_440*6.2831855)*l9_441)/float3(l9_439);
float3 l9_443=l9_442;
float3 l9_444=l9_436.axis;
float l9_445=l9_425*l9_425;
float l9_446=dot(l9_424,l9_444);
float l9_447=fast::clamp(l9_446,0.0,1.0);
float l9_448=l9_447;
float l9_449=dot(l9_424,l9_426);
float l9_450=fast::clamp(l9_449,0.0,1.0);
float l9_451=l9_450;
float3 l9_452=normalize(l9_436.axis+l9_426);
float l9_453=l9_445;
float l9_454=l9_448;
float l9_455=1.0/(l9_454+sqrt(l9_453+(((1.0-l9_453)*l9_454)*l9_454)));
float l9_456=l9_445;
float l9_457=l9_451;
float l9_458=1.0/(l9_457+sqrt(l9_456+(((1.0-l9_456)*l9_457)*l9_457)));
l9_443*=(l9_455*l9_458);
float l9_459=dot(l9_444,l9_452);
float l9_460=fast::clamp(l9_459,0.0,1.0);
float l9_461=pow(1.0-l9_460,5.0);
l9_443*=(l9_427+((float3(1.0)-l9_427)*l9_461));
l9_443*=l9_448;
float3 l9_462=l9_443;
l9_419+=l9_462;
l9_423++;
continue;
}
else
{
break;
}
}
float3 l9_463=l9_419;
l9_272+=l9_463;
}
float3 l9_464=l9_272;
l9_12.indirectSpecular=l9_464;
LightingComponents l9_465=l9_12;
LightingComponents lighting=l9_465;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
lighting.directDiffuse=float3(0.0);
lighting.indirectDiffuse=float3(0.0);
float4 l9_466=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_467=FragColor0;
float4 l9_468=l9_467;
l9_466=l9_468;
}
else
{
float4 l9_469=gl_FragCoord;
float2 l9_470=l9_469.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_471=l9_470;
float2 l9_472=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_473=1;
int l9_474=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_474=0;
}
else
{
l9_474=varStereoViewID;
}
int l9_475=l9_474;
int l9_476=l9_475;
float3 l9_477=float3(l9_471,0.0);
int l9_478=l9_473;
int l9_479=l9_476;
if (l9_478==1)
{
l9_477.y=((2.0*l9_477.y)+float(l9_479))-1.0;
}
float2 l9_480=l9_477.xy;
l9_472=l9_480;
}
else
{
l9_472=l9_471;
}
float2 l9_481=l9_472;
float2 l9_482=l9_481;
float2 l9_483=l9_482;
float2 l9_484=l9_483;
float l9_485=0.0;
int l9_486;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_487=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_487=0;
}
else
{
l9_487=varStereoViewID;
}
int l9_488=l9_487;
l9_486=1-l9_488;
}
else
{
int l9_489=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_489=0;
}
else
{
l9_489=varStereoViewID;
}
int l9_490=l9_489;
l9_486=l9_490;
}
int l9_491=l9_486;
float2 l9_492=l9_484;
int l9_493=sc_ScreenTextureLayout_tmp;
int l9_494=l9_491;
float l9_495=l9_485;
float2 l9_496=l9_492;
int l9_497=l9_493;
int l9_498=l9_494;
float3 l9_499=float3(0.0);
if (l9_497==0)
{
l9_499=float3(l9_496,0.0);
}
else
{
if (l9_497==1)
{
l9_499=float3(l9_496.x,(l9_496.y*0.5)+(0.5-(float(l9_498)*0.5)),0.0);
}
else
{
l9_499=float3(l9_496,float(l9_498));
}
}
float3 l9_500=l9_499;
float3 l9_501=l9_500;
float4 l9_502=sc_ScreenTexture.sample(sc_ScreenTextureSmpSC,l9_501.xy,bias(l9_495));
float4 l9_503=l9_502;
float4 l9_504=l9_503;
l9_466=l9_504;
}
float4 l9_505=l9_466;
float3 param_5=l9_505.xyz;
float3 l9_506;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_506=float3(pow(param_5.x,2.2),pow(param_5.y,2.2),pow(param_5.z,2.2));
}
else
{
l9_506=param_5*param_5;
}
float3 l9_507=l9_506;
float3 framebuffer=l9_507;
lighting.transmitted=framebuffer*mix(float3(1.0),surfaceProperties.albedo,float3(surfaceProperties.opacity));
surfaceProperties.opacity=1.0;
}
bool enablePremultipliedAlpha=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
enablePremultipliedAlpha=true;
}
SurfaceProperties param_6=surfaceProperties;
LightingComponents param_7=lighting;
bool param_8=enablePremultipliedAlpha;
float3 l9_508=param_6.albedo*(param_7.directDiffuse+(param_7.indirectDiffuse*param_6.ao));
float3 l9_509=param_7.directSpecular+(param_7.indirectSpecular*param_6.specularAo);
float3 l9_510=param_6.emissive;
float3 l9_511=param_7.transmitted;
if (param_8)
{
float l9_512=param_6.opacity;
l9_508*=srgbToLinear(l9_512);
}
float3 l9_513=((l9_508+l9_509)+l9_510)+l9_511;
float3 l9_514=l9_513;
float4 Output=float4(l9_514,surfaceProperties.opacity);
if ((int(sc_IsEditor_tmp)!=0))
{
Output.x+=((surfaceProperties.ao.x*surfaceProperties.specularAo.x)*9.9999997e-06);
}
if (UserUniforms.sc_RayTracingCasterConfiguration.x!=0u)
{
return Output;
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 param_9=Output.xyz;
float l9_515=1.8;
float l9_516=1.4;
float l9_517=0.5;
float l9_518=1.5;
float3 l9_519=(param_9*((param_9*l9_515)+float3(l9_516)))/((param_9*((param_9*l9_515)+float3(l9_517)))+float3(l9_518));
Output=float4(l9_519.x,l9_519.y,l9_519.z,Output.w);
}
float3 param_10=Output.xyz;
float l9_520=param_10.x;
float l9_521=param_10.y;
float l9_522=param_10.z;
float3 l9_523=float3(linearToSrgb(l9_520),linearToSrgb(l9_521),linearToSrgb(l9_522));
Output=float4(l9_523.x,l9_523.y,l9_523.z,Output.w);
return Output;
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=intensityTexture.sample(intensityTextureSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
float3 l9_314=l9_313.xyz;
float3 l9_315=l9_314;
float l9_316=16.0;
float l9_317=((((l9_315.x*256.0)+l9_315.y)+(l9_315.z/256.0))/257.00391)*l9_316;
float l9_318=l9_317;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_318=fast::max(l9_318,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_318=fast::min(l9_318,1.0);
}
float l9_319=l9_225;
float3 l9_320=param_8;
float3 l9_321=param_9;
float l9_322=l9_226;
float l9_323=l9_318;
float3 l9_324=transformColor(l9_319,l9_320,l9_321,l9_322,l9_323);
return l9_324;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 sc_OutputMotionVectorsIfNeeded(thread const float3& surfacePosWorldSpace,thread const float4& finalColor,thread int& varStereoViewID,constant userUniformsObj& UserUniforms)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float3 param=surfacePosWorldSpace;
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 l9_2=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(param,1.0);
float2 l9_3=l9_2.xy/float2(l9_2.w);
l9_2=float4(l9_3.x,l9_3.y,l9_2.z,l9_2.w);
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
float4 l9_6=((UserUniforms.sc_PrevFrameViewProjectionMatrixArray[l9_5]*UserUniforms.sc_PrevFrameModelMatrix)*UserUniforms.sc_ModelMatrixInverse)*float4(param,1.0);
float2 l9_7=l9_6.xy/float2(l9_6.w);
l9_6=float4(l9_7.x,l9_7.y,l9_6.z,l9_6.w);
float2 l9_8=(l9_2.xy-l9_6.xy)*0.5;
float2 l9_9=l9_8;
float l9_10=(l9_9.x*5.0)+0.5;
float l9_11=floor(l9_10*65535.0);
float l9_12=floor(l9_11*0.00390625);
float2 l9_13=float2(l9_12/255.0,(l9_11-(l9_12*256.0))/255.0);
float l9_14=(l9_9.y*5.0)+0.5;
float l9_15=floor(l9_14*65535.0);
float l9_16=floor(l9_15*0.00390625);
float2 l9_17=float2(l9_16/255.0,(l9_15-(l9_16*256.0))/255.0);
float4 l9_18=float4(l9_13,l9_17);
float4 l9_19=l9_18;
return l9_19;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 l9_0=gl_FragCoord;
int2 param=int2(l9_0.xy);
sc_RayTracingHitPayload rhp=sc_RayTracingEvaluateHitPayload(param,sc_set0.sc_RayTracingRayDirection,sc_set0.sc_RayTracingRayDirectionSmpSC,(*sc_set0.UserUniforms),(*sc_set0.sc_RayTracingCasterVertexBuffer),(*sc_set0.sc_RayTracingCasterNonAnimatedVertexBuffer),(*sc_set0.sc_RayTracingCasterIndexBuffer),sc_set0.sc_RayTracingHitCasterIdAndBarycentric,sc_set0.sc_RayTracingHitCasterIdAndBarycentricSmpSC);
if (rhp.id.x!=((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.y&65535u))
{
return out;
}
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=rhp.viewDirWS;
Globals.PositionWS=rhp.positionWS;
Globals.VertexColor=rhp.color;
Globals.Surface_UVCoord0=rhp.uv0;
Globals.Surface_UVCoord1=rhp.uv1;
int l9_1=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1=0;
}
else
{
l9_1=in.varStereoViewID;
}
int l9_2=l9_1;
float4 emitterPositionCS=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_2]*float4(rhp.positionWS,1.0);
Globals.gScreenCoord=((emitterPositionCS.xy/float2(emitterPositionCS.w))*0.5)+float2(0.5);
Globals.VertexTangent_WorldSpace=rhp.tangentWS.xyz;
Globals.VertexNormal_WorldSpace=rhp.normalWS;
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*rhp.tangentWS.w;
Globals.SurfacePosition_WorldSpace=rhp.positionWS;
}
else
{
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
Globals.VertexColor=in.varColor;
Globals.Surface_UVCoord0=in.varPackedTex.xy;
Globals.Surface_UVCoord1=in.varPackedTex.zw;
float4 l9_3=gl_FragCoord;
float2 l9_4=l9_3.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_5=l9_4;
float2 l9_6=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_7=1;
int l9_8=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_8=0;
}
else
{
l9_8=in.varStereoViewID;
}
int l9_9=l9_8;
int l9_10=l9_9;
float3 l9_11=float3(l9_5,0.0);
int l9_12=l9_7;
int l9_13=l9_10;
if (l9_12==1)
{
l9_11.y=((2.0*l9_11.y)+float(l9_13))-1.0;
}
float2 l9_14=l9_11.xy;
l9_6=l9_14;
}
else
{
l9_6=l9_5;
}
float2 l9_15=l9_6;
float2 l9_16=l9_15;
Globals.gScreenCoord=l9_16;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
}
float4 Result_N363=float4(0.0);
float4 param_1=float4(0.0);
float4 param_2=float4(0.0);
ssGlobals param_4=Globals;
float4 param_3;
if (NODE_38_DROPLIST_ITEM_tmp==1)
{
float4 l9_17=float4(0.0);
l9_17=param_4.VertexColor;
float3 l9_18=float3(0.0);
float3 l9_19=float3(0.0);
float3 l9_20=float3(0.0);
ssGlobals l9_21=param_4;
float3 l9_22;
if ((int(Tweak_N37_tmp)!=0))
{
float3 l9_23=float3(0.0);
float3 l9_24=(*sc_set0.UserUniforms).recolorRed;
l9_23=l9_24;
float3 l9_25=float3(0.0);
l9_25=l9_23;
float4 l9_26=float4(0.0);
float4 l9_27=(*sc_set0.UserUniforms).baseColor;
l9_26=l9_27;
float4 l9_28=float4(0.0);
l9_28=l9_26;
float4 l9_29=float4(0.0);
float4 l9_30=float4(0.0);
float4 l9_31=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_32=l9_21;
float4 l9_33;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_34=float2(0.0);
float2 l9_35=float2(0.0);
float2 l9_36=float2(0.0);
float2 l9_37=float2(0.0);
float2 l9_38=float2(0.0);
float2 l9_39=float2(0.0);
ssGlobals l9_40=l9_32;
float2 l9_41;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_42=float2(0.0);
l9_42=l9_40.Surface_UVCoord0;
l9_35=l9_42;
l9_41=l9_35;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_43=float2(0.0);
l9_43=l9_40.Surface_UVCoord1;
l9_36=l9_43;
l9_41=l9_36;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_44=float2(0.0);
float2 l9_45=float2(0.0);
float2 l9_46=float2(0.0);
ssGlobals l9_47=l9_40;
float2 l9_48;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_49=float2(0.0);
float2 l9_50=float2(0.0);
float2 l9_51=float2(0.0);
ssGlobals l9_52=l9_47;
float2 l9_53;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_54=float2(0.0);
float2 l9_55=float2(0.0);
float2 l9_56=float2(0.0);
float2 l9_57=float2(0.0);
float2 l9_58=float2(0.0);
ssGlobals l9_59=l9_52;
float2 l9_60;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_61=float2(0.0);
l9_61=l9_59.Surface_UVCoord0;
l9_55=l9_61;
l9_60=l9_55;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_62=float2(0.0);
l9_62=l9_59.Surface_UVCoord1;
l9_56=l9_62;
l9_60=l9_56;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_63=float2(0.0);
l9_63=l9_59.gScreenCoord;
l9_57=l9_63;
l9_60=l9_57;
}
else
{
float2 l9_64=float2(0.0);
l9_64=l9_59.Surface_UVCoord0;
l9_58=l9_64;
l9_60=l9_58;
}
}
}
l9_54=l9_60;
float2 l9_65=float2(0.0);
float2 l9_66=(*sc_set0.UserUniforms).uv2Scale;
l9_65=l9_66;
float2 l9_67=float2(0.0);
l9_67=l9_65;
float2 l9_68=float2(0.0);
float2 l9_69=(*sc_set0.UserUniforms).uv2Offset;
l9_68=l9_69;
float2 l9_70=float2(0.0);
l9_70=l9_68;
float2 l9_71=float2(0.0);
l9_71=(l9_54*l9_67)+l9_70;
float2 l9_72=float2(0.0);
l9_72=l9_71+(l9_70*(l9_52.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_50=l9_72;
l9_53=l9_50;
}
else
{
float2 l9_73=float2(0.0);
float2 l9_74=float2(0.0);
float2 l9_75=float2(0.0);
float2 l9_76=float2(0.0);
float2 l9_77=float2(0.0);
ssGlobals l9_78=l9_52;
float2 l9_79;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_80=float2(0.0);
l9_80=l9_78.Surface_UVCoord0;
l9_74=l9_80;
l9_79=l9_74;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_81=float2(0.0);
l9_81=l9_78.Surface_UVCoord1;
l9_75=l9_81;
l9_79=l9_75;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_82=float2(0.0);
l9_82=l9_78.gScreenCoord;
l9_76=l9_82;
l9_79=l9_76;
}
else
{
float2 l9_83=float2(0.0);
l9_83=l9_78.Surface_UVCoord0;
l9_77=l9_83;
l9_79=l9_77;
}
}
}
l9_73=l9_79;
float2 l9_84=float2(0.0);
float2 l9_85=(*sc_set0.UserUniforms).uv2Scale;
l9_84=l9_85;
float2 l9_86=float2(0.0);
l9_86=l9_84;
float2 l9_87=float2(0.0);
float2 l9_88=(*sc_set0.UserUniforms).uv2Offset;
l9_87=l9_88;
float2 l9_89=float2(0.0);
l9_89=l9_87;
float2 l9_90=float2(0.0);
l9_90=(l9_73*l9_86)+l9_89;
l9_51=l9_90;
l9_53=l9_51;
}
l9_49=l9_53;
l9_45=l9_49;
l9_48=l9_45;
}
else
{
float2 l9_91=float2(0.0);
l9_91=l9_47.Surface_UVCoord0;
l9_46=l9_91;
l9_48=l9_46;
}
l9_44=l9_48;
float2 l9_92=float2(0.0);
l9_92=l9_44;
float2 l9_93=float2(0.0);
l9_93=l9_92;
l9_37=l9_93;
l9_41=l9_37;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_94=float2(0.0);
float2 l9_95=float2(0.0);
float2 l9_96=float2(0.0);
ssGlobals l9_97=l9_40;
float2 l9_98;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_99=float2(0.0);
float2 l9_100=float2(0.0);
float2 l9_101=float2(0.0);
ssGlobals l9_102=l9_97;
float2 l9_103;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_104=float2(0.0);
float2 l9_105=float2(0.0);
float2 l9_106=float2(0.0);
float2 l9_107=float2(0.0);
float2 l9_108=float2(0.0);
float2 l9_109=float2(0.0);
ssGlobals l9_110=l9_102;
float2 l9_111;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_112=float2(0.0);
l9_112=l9_110.Surface_UVCoord0;
l9_105=l9_112;
l9_111=l9_105;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_113=float2(0.0);
l9_113=l9_110.Surface_UVCoord1;
l9_106=l9_113;
l9_111=l9_106;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_114=float2(0.0);
l9_114=l9_110.gScreenCoord;
l9_107=l9_114;
l9_111=l9_107;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_115=float2(0.0);
float2 l9_116=float2(0.0);
float2 l9_117=float2(0.0);
ssGlobals l9_118=l9_110;
float2 l9_119;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_120=float2(0.0);
float2 l9_121=float2(0.0);
float2 l9_122=float2(0.0);
ssGlobals l9_123=l9_118;
float2 l9_124;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_125=float2(0.0);
float2 l9_126=float2(0.0);
float2 l9_127=float2(0.0);
float2 l9_128=float2(0.0);
float2 l9_129=float2(0.0);
ssGlobals l9_130=l9_123;
float2 l9_131;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_132=float2(0.0);
l9_132=l9_130.Surface_UVCoord0;
l9_126=l9_132;
l9_131=l9_126;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_133=float2(0.0);
l9_133=l9_130.Surface_UVCoord1;
l9_127=l9_133;
l9_131=l9_127;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_134=float2(0.0);
l9_134=l9_130.gScreenCoord;
l9_128=l9_134;
l9_131=l9_128;
}
else
{
float2 l9_135=float2(0.0);
l9_135=l9_130.Surface_UVCoord0;
l9_129=l9_135;
l9_131=l9_129;
}
}
}
l9_125=l9_131;
float2 l9_136=float2(0.0);
float2 l9_137=(*sc_set0.UserUniforms).uv2Scale;
l9_136=l9_137;
float2 l9_138=float2(0.0);
l9_138=l9_136;
float2 l9_139=float2(0.0);
float2 l9_140=(*sc_set0.UserUniforms).uv2Offset;
l9_139=l9_140;
float2 l9_141=float2(0.0);
l9_141=l9_139;
float2 l9_142=float2(0.0);
l9_142=(l9_125*l9_138)+l9_141;
float2 l9_143=float2(0.0);
l9_143=l9_142+(l9_141*(l9_123.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_121=l9_143;
l9_124=l9_121;
}
else
{
float2 l9_144=float2(0.0);
float2 l9_145=float2(0.0);
float2 l9_146=float2(0.0);
float2 l9_147=float2(0.0);
float2 l9_148=float2(0.0);
ssGlobals l9_149=l9_123;
float2 l9_150;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_151=float2(0.0);
l9_151=l9_149.Surface_UVCoord0;
l9_145=l9_151;
l9_150=l9_145;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_152=float2(0.0);
l9_152=l9_149.Surface_UVCoord1;
l9_146=l9_152;
l9_150=l9_146;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_153=float2(0.0);
l9_153=l9_149.gScreenCoord;
l9_147=l9_153;
l9_150=l9_147;
}
else
{
float2 l9_154=float2(0.0);
l9_154=l9_149.Surface_UVCoord0;
l9_148=l9_154;
l9_150=l9_148;
}
}
}
l9_144=l9_150;
float2 l9_155=float2(0.0);
float2 l9_156=(*sc_set0.UserUniforms).uv2Scale;
l9_155=l9_156;
float2 l9_157=float2(0.0);
l9_157=l9_155;
float2 l9_158=float2(0.0);
float2 l9_159=(*sc_set0.UserUniforms).uv2Offset;
l9_158=l9_159;
float2 l9_160=float2(0.0);
l9_160=l9_158;
float2 l9_161=float2(0.0);
l9_161=(l9_144*l9_157)+l9_160;
l9_122=l9_161;
l9_124=l9_122;
}
l9_120=l9_124;
l9_116=l9_120;
l9_119=l9_116;
}
else
{
float2 l9_162=float2(0.0);
l9_162=l9_118.Surface_UVCoord0;
l9_117=l9_162;
l9_119=l9_117;
}
l9_115=l9_119;
float2 l9_163=float2(0.0);
l9_163=l9_115;
float2 l9_164=float2(0.0);
l9_164=l9_163;
l9_108=l9_164;
l9_111=l9_108;
}
else
{
float2 l9_165=float2(0.0);
l9_165=l9_110.Surface_UVCoord0;
l9_109=l9_165;
l9_111=l9_109;
}
}
}
}
l9_104=l9_111;
float2 l9_166=float2(0.0);
float2 l9_167=(*sc_set0.UserUniforms).uv3Scale;
l9_166=l9_167;
float2 l9_168=float2(0.0);
l9_168=l9_166;
float2 l9_169=float2(0.0);
float2 l9_170=(*sc_set0.UserUniforms).uv3Offset;
l9_169=l9_170;
float2 l9_171=float2(0.0);
l9_171=l9_169;
float2 l9_172=float2(0.0);
l9_172=(l9_104*l9_168)+l9_171;
float2 l9_173=float2(0.0);
l9_173=l9_172+(l9_171*(l9_102.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_100=l9_173;
l9_103=l9_100;
}
else
{
float2 l9_174=float2(0.0);
float2 l9_175=float2(0.0);
float2 l9_176=float2(0.0);
float2 l9_177=float2(0.0);
float2 l9_178=float2(0.0);
float2 l9_179=float2(0.0);
ssGlobals l9_180=l9_102;
float2 l9_181;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_182=float2(0.0);
l9_182=l9_180.Surface_UVCoord0;
l9_175=l9_182;
l9_181=l9_175;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_183=float2(0.0);
l9_183=l9_180.Surface_UVCoord1;
l9_176=l9_183;
l9_181=l9_176;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_184=float2(0.0);
l9_184=l9_180.gScreenCoord;
l9_177=l9_184;
l9_181=l9_177;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_185=float2(0.0);
float2 l9_186=float2(0.0);
float2 l9_187=float2(0.0);
ssGlobals l9_188=l9_180;
float2 l9_189;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_190=float2(0.0);
float2 l9_191=float2(0.0);
float2 l9_192=float2(0.0);
ssGlobals l9_193=l9_188;
float2 l9_194;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_195=float2(0.0);
float2 l9_196=float2(0.0);
float2 l9_197=float2(0.0);
float2 l9_198=float2(0.0);
float2 l9_199=float2(0.0);
ssGlobals l9_200=l9_193;
float2 l9_201;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_202=float2(0.0);
l9_202=l9_200.Surface_UVCoord0;
l9_196=l9_202;
l9_201=l9_196;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_203=float2(0.0);
l9_203=l9_200.Surface_UVCoord1;
l9_197=l9_203;
l9_201=l9_197;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_204=float2(0.0);
l9_204=l9_200.gScreenCoord;
l9_198=l9_204;
l9_201=l9_198;
}
else
{
float2 l9_205=float2(0.0);
l9_205=l9_200.Surface_UVCoord0;
l9_199=l9_205;
l9_201=l9_199;
}
}
}
l9_195=l9_201;
float2 l9_206=float2(0.0);
float2 l9_207=(*sc_set0.UserUniforms).uv2Scale;
l9_206=l9_207;
float2 l9_208=float2(0.0);
l9_208=l9_206;
float2 l9_209=float2(0.0);
float2 l9_210=(*sc_set0.UserUniforms).uv2Offset;
l9_209=l9_210;
float2 l9_211=float2(0.0);
l9_211=l9_209;
float2 l9_212=float2(0.0);
l9_212=(l9_195*l9_208)+l9_211;
float2 l9_213=float2(0.0);
l9_213=l9_212+(l9_211*(l9_193.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_191=l9_213;
l9_194=l9_191;
}
else
{
float2 l9_214=float2(0.0);
float2 l9_215=float2(0.0);
float2 l9_216=float2(0.0);
float2 l9_217=float2(0.0);
float2 l9_218=float2(0.0);
ssGlobals l9_219=l9_193;
float2 l9_220;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_221=float2(0.0);
l9_221=l9_219.Surface_UVCoord0;
l9_215=l9_221;
l9_220=l9_215;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_222=float2(0.0);
l9_222=l9_219.Surface_UVCoord1;
l9_216=l9_222;
l9_220=l9_216;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_223=float2(0.0);
l9_223=l9_219.gScreenCoord;
l9_217=l9_223;
l9_220=l9_217;
}
else
{
float2 l9_224=float2(0.0);
l9_224=l9_219.Surface_UVCoord0;
l9_218=l9_224;
l9_220=l9_218;
}
}
}
l9_214=l9_220;
float2 l9_225=float2(0.0);
float2 l9_226=(*sc_set0.UserUniforms).uv2Scale;
l9_225=l9_226;
float2 l9_227=float2(0.0);
l9_227=l9_225;
float2 l9_228=float2(0.0);
float2 l9_229=(*sc_set0.UserUniforms).uv2Offset;
l9_228=l9_229;
float2 l9_230=float2(0.0);
l9_230=l9_228;
float2 l9_231=float2(0.0);
l9_231=(l9_214*l9_227)+l9_230;
l9_192=l9_231;
l9_194=l9_192;
}
l9_190=l9_194;
l9_186=l9_190;
l9_189=l9_186;
}
else
{
float2 l9_232=float2(0.0);
l9_232=l9_188.Surface_UVCoord0;
l9_187=l9_232;
l9_189=l9_187;
}
l9_185=l9_189;
float2 l9_233=float2(0.0);
l9_233=l9_185;
float2 l9_234=float2(0.0);
l9_234=l9_233;
l9_178=l9_234;
l9_181=l9_178;
}
else
{
float2 l9_235=float2(0.0);
l9_235=l9_180.Surface_UVCoord0;
l9_179=l9_235;
l9_181=l9_179;
}
}
}
}
l9_174=l9_181;
float2 l9_236=float2(0.0);
float2 l9_237=(*sc_set0.UserUniforms).uv3Scale;
l9_236=l9_237;
float2 l9_238=float2(0.0);
l9_238=l9_236;
float2 l9_239=float2(0.0);
float2 l9_240=(*sc_set0.UserUniforms).uv3Offset;
l9_239=l9_240;
float2 l9_241=float2(0.0);
l9_241=l9_239;
float2 l9_242=float2(0.0);
l9_242=(l9_174*l9_238)+l9_241;
l9_101=l9_242;
l9_103=l9_101;
}
l9_99=l9_103;
l9_95=l9_99;
l9_98=l9_95;
}
else
{
float2 l9_243=float2(0.0);
l9_243=l9_97.Surface_UVCoord0;
l9_96=l9_243;
l9_98=l9_96;
}
l9_94=l9_98;
float2 l9_244=float2(0.0);
l9_244=l9_94;
float2 l9_245=float2(0.0);
l9_245=l9_244;
l9_38=l9_245;
l9_41=l9_38;
}
else
{
float2 l9_246=float2(0.0);
l9_246=l9_40.Surface_UVCoord0;
l9_39=l9_246;
l9_41=l9_39;
}
}
}
}
l9_34=l9_41;
float4 l9_247=float4(0.0);
int l9_248;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_249=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_249=0;
}
else
{
l9_249=in.varStereoViewID;
}
int l9_250=l9_249;
l9_248=1-l9_250;
}
else
{
int l9_251=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_251=0;
}
else
{
l9_251=in.varStereoViewID;
}
int l9_252=l9_251;
l9_248=l9_252;
}
int l9_253=l9_248;
int l9_254=baseTexLayout_tmp;
int l9_255=l9_253;
float2 l9_256=l9_34;
bool l9_257=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_258=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_259=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_260=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_261=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_262=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_263=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_264=0.0;
bool l9_265=l9_262&&(!l9_260);
float l9_266=1.0;
float l9_267=l9_256.x;
int l9_268=l9_259.x;
if (l9_268==1)
{
l9_267=fract(l9_267);
}
else
{
if (l9_268==2)
{
float l9_269=fract(l9_267);
float l9_270=l9_267-l9_269;
float l9_271=step(0.25,fract(l9_270*0.5));
l9_267=mix(l9_269,1.0-l9_269,fast::clamp(l9_271,0.0,1.0));
}
}
l9_256.x=l9_267;
float l9_272=l9_256.y;
int l9_273=l9_259.y;
if (l9_273==1)
{
l9_272=fract(l9_272);
}
else
{
if (l9_273==2)
{
float l9_274=fract(l9_272);
float l9_275=l9_272-l9_274;
float l9_276=step(0.25,fract(l9_275*0.5));
l9_272=mix(l9_274,1.0-l9_274,fast::clamp(l9_276,0.0,1.0));
}
}
l9_256.y=l9_272;
if (l9_260)
{
bool l9_277=l9_262;
bool l9_278;
if (l9_277)
{
l9_278=l9_259.x==3;
}
else
{
l9_278=l9_277;
}
float l9_279=l9_256.x;
float l9_280=l9_261.x;
float l9_281=l9_261.z;
bool l9_282=l9_278;
float l9_283=l9_266;
float l9_284=fast::clamp(l9_279,l9_280,l9_281);
float l9_285=step(abs(l9_279-l9_284),9.9999997e-06);
l9_283*=(l9_285+((1.0-float(l9_282))*(1.0-l9_285)));
l9_279=l9_284;
l9_256.x=l9_279;
l9_266=l9_283;
bool l9_286=l9_262;
bool l9_287;
if (l9_286)
{
l9_287=l9_259.y==3;
}
else
{
l9_287=l9_286;
}
float l9_288=l9_256.y;
float l9_289=l9_261.y;
float l9_290=l9_261.w;
bool l9_291=l9_287;
float l9_292=l9_266;
float l9_293=fast::clamp(l9_288,l9_289,l9_290);
float l9_294=step(abs(l9_288-l9_293),9.9999997e-06);
l9_292*=(l9_294+((1.0-float(l9_291))*(1.0-l9_294)));
l9_288=l9_293;
l9_256.y=l9_288;
l9_266=l9_292;
}
float2 l9_295=l9_256;
bool l9_296=l9_257;
float3x3 l9_297=l9_258;
if (l9_296)
{
l9_295=float2((l9_297*float3(l9_295,1.0)).xy);
}
float2 l9_298=l9_295;
l9_256=l9_298;
float l9_299=l9_256.x;
int l9_300=l9_259.x;
bool l9_301=l9_265;
float l9_302=l9_266;
if ((l9_300==0)||(l9_300==3))
{
float l9_303=l9_299;
float l9_304=0.0;
float l9_305=1.0;
bool l9_306=l9_301;
float l9_307=l9_302;
float l9_308=fast::clamp(l9_303,l9_304,l9_305);
float l9_309=step(abs(l9_303-l9_308),9.9999997e-06);
l9_307*=(l9_309+((1.0-float(l9_306))*(1.0-l9_309)));
l9_303=l9_308;
l9_299=l9_303;
l9_302=l9_307;
}
l9_256.x=l9_299;
l9_266=l9_302;
float l9_310=l9_256.y;
int l9_311=l9_259.y;
bool l9_312=l9_265;
float l9_313=l9_266;
if ((l9_311==0)||(l9_311==3))
{
float l9_314=l9_310;
float l9_315=0.0;
float l9_316=1.0;
bool l9_317=l9_312;
float l9_318=l9_313;
float l9_319=fast::clamp(l9_314,l9_315,l9_316);
float l9_320=step(abs(l9_314-l9_319),9.9999997e-06);
l9_318*=(l9_320+((1.0-float(l9_317))*(1.0-l9_320)));
l9_314=l9_319;
l9_310=l9_314;
l9_313=l9_318;
}
l9_256.y=l9_310;
l9_266=l9_313;
float2 l9_321=l9_256;
int l9_322=l9_254;
int l9_323=l9_255;
float l9_324=l9_264;
float2 l9_325=l9_321;
int l9_326=l9_322;
int l9_327=l9_323;
float3 l9_328=float3(0.0);
if (l9_326==0)
{
l9_328=float3(l9_325,0.0);
}
else
{
if (l9_326==1)
{
l9_328=float3(l9_325.x,(l9_325.y*0.5)+(0.5-(float(l9_327)*0.5)),0.0);
}
else
{
l9_328=float3(l9_325,float(l9_327));
}
}
float3 l9_329=l9_328;
float3 l9_330=l9_329;
float4 l9_331=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_330.xy,bias(l9_324));
float4 l9_332=l9_331;
if (l9_262)
{
l9_332=mix(l9_263,l9_332,float4(l9_266));
}
float4 l9_333=l9_332;
l9_247=l9_333;
l9_30=l9_247;
l9_33=l9_30;
}
else
{
l9_33=l9_31;
}
l9_29=l9_33;
float4 l9_334=float4(0.0);
l9_334=l9_28*l9_29;
float4 l9_335=float4(0.0);
l9_335=l9_334;
float4 l9_336=float4(0.0);
l9_336=l9_335;
float l9_337=0.0;
float l9_338=0.0;
float l9_339=0.0;
float3 l9_340=l9_336.xyz;
float l9_341=l9_340.x;
float l9_342=l9_340.y;
float l9_343=l9_340.z;
l9_337=l9_341;
l9_338=l9_342;
l9_339=l9_343;
float3 l9_344=float3(0.0);
l9_344=l9_25*float3(l9_337);
float3 l9_345=float3(0.0);
float3 l9_346=(*sc_set0.UserUniforms).recolorGreen;
l9_345=l9_346;
float3 l9_347=float3(0.0);
l9_347=l9_345;
float3 l9_348=float3(0.0);
l9_348=l9_347*float3(l9_338);
float3 l9_349=float3(0.0);
float3 l9_350=(*sc_set0.UserUniforms).recolorBlue;
l9_349=l9_350;
float3 l9_351=float3(0.0);
l9_351=l9_349;
float3 l9_352=float3(0.0);
l9_352=l9_351*float3(l9_339);
float3 l9_353=float3(0.0);
l9_353=(l9_344+l9_348)+l9_352;
l9_19=l9_353;
l9_22=l9_19;
}
else
{
float4 l9_354=float4(0.0);
float4 l9_355=(*sc_set0.UserUniforms).baseColor;
l9_354=l9_355;
float4 l9_356=float4(0.0);
l9_356=l9_354;
float4 l9_357=float4(0.0);
float4 l9_358=float4(0.0);
float4 l9_359=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_360=l9_21;
float4 l9_361;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_362=float2(0.0);
float2 l9_363=float2(0.0);
float2 l9_364=float2(0.0);
float2 l9_365=float2(0.0);
float2 l9_366=float2(0.0);
float2 l9_367=float2(0.0);
ssGlobals l9_368=l9_360;
float2 l9_369;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_370=float2(0.0);
l9_370=l9_368.Surface_UVCoord0;
l9_363=l9_370;
l9_369=l9_363;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_371=float2(0.0);
l9_371=l9_368.Surface_UVCoord1;
l9_364=l9_371;
l9_369=l9_364;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_372=float2(0.0);
float2 l9_373=float2(0.0);
float2 l9_374=float2(0.0);
ssGlobals l9_375=l9_368;
float2 l9_376;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_377=float2(0.0);
float2 l9_378=float2(0.0);
float2 l9_379=float2(0.0);
ssGlobals l9_380=l9_375;
float2 l9_381;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_382=float2(0.0);
float2 l9_383=float2(0.0);
float2 l9_384=float2(0.0);
float2 l9_385=float2(0.0);
float2 l9_386=float2(0.0);
ssGlobals l9_387=l9_380;
float2 l9_388;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_389=float2(0.0);
l9_389=l9_387.Surface_UVCoord0;
l9_383=l9_389;
l9_388=l9_383;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_390=float2(0.0);
l9_390=l9_387.Surface_UVCoord1;
l9_384=l9_390;
l9_388=l9_384;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_391=float2(0.0);
l9_391=l9_387.gScreenCoord;
l9_385=l9_391;
l9_388=l9_385;
}
else
{
float2 l9_392=float2(0.0);
l9_392=l9_387.Surface_UVCoord0;
l9_386=l9_392;
l9_388=l9_386;
}
}
}
l9_382=l9_388;
float2 l9_393=float2(0.0);
float2 l9_394=(*sc_set0.UserUniforms).uv2Scale;
l9_393=l9_394;
float2 l9_395=float2(0.0);
l9_395=l9_393;
float2 l9_396=float2(0.0);
float2 l9_397=(*sc_set0.UserUniforms).uv2Offset;
l9_396=l9_397;
float2 l9_398=float2(0.0);
l9_398=l9_396;
float2 l9_399=float2(0.0);
l9_399=(l9_382*l9_395)+l9_398;
float2 l9_400=float2(0.0);
l9_400=l9_399+(l9_398*(l9_380.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_378=l9_400;
l9_381=l9_378;
}
else
{
float2 l9_401=float2(0.0);
float2 l9_402=float2(0.0);
float2 l9_403=float2(0.0);
float2 l9_404=float2(0.0);
float2 l9_405=float2(0.0);
ssGlobals l9_406=l9_380;
float2 l9_407;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_408=float2(0.0);
l9_408=l9_406.Surface_UVCoord0;
l9_402=l9_408;
l9_407=l9_402;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_409=float2(0.0);
l9_409=l9_406.Surface_UVCoord1;
l9_403=l9_409;
l9_407=l9_403;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_410=float2(0.0);
l9_410=l9_406.gScreenCoord;
l9_404=l9_410;
l9_407=l9_404;
}
else
{
float2 l9_411=float2(0.0);
l9_411=l9_406.Surface_UVCoord0;
l9_405=l9_411;
l9_407=l9_405;
}
}
}
l9_401=l9_407;
float2 l9_412=float2(0.0);
float2 l9_413=(*sc_set0.UserUniforms).uv2Scale;
l9_412=l9_413;
float2 l9_414=float2(0.0);
l9_414=l9_412;
float2 l9_415=float2(0.0);
float2 l9_416=(*sc_set0.UserUniforms).uv2Offset;
l9_415=l9_416;
float2 l9_417=float2(0.0);
l9_417=l9_415;
float2 l9_418=float2(0.0);
l9_418=(l9_401*l9_414)+l9_417;
l9_379=l9_418;
l9_381=l9_379;
}
l9_377=l9_381;
l9_373=l9_377;
l9_376=l9_373;
}
else
{
float2 l9_419=float2(0.0);
l9_419=l9_375.Surface_UVCoord0;
l9_374=l9_419;
l9_376=l9_374;
}
l9_372=l9_376;
float2 l9_420=float2(0.0);
l9_420=l9_372;
float2 l9_421=float2(0.0);
l9_421=l9_420;
l9_365=l9_421;
l9_369=l9_365;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_422=float2(0.0);
float2 l9_423=float2(0.0);
float2 l9_424=float2(0.0);
ssGlobals l9_425=l9_368;
float2 l9_426;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_427=float2(0.0);
float2 l9_428=float2(0.0);
float2 l9_429=float2(0.0);
ssGlobals l9_430=l9_425;
float2 l9_431;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_432=float2(0.0);
float2 l9_433=float2(0.0);
float2 l9_434=float2(0.0);
float2 l9_435=float2(0.0);
float2 l9_436=float2(0.0);
float2 l9_437=float2(0.0);
ssGlobals l9_438=l9_430;
float2 l9_439;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_440=float2(0.0);
l9_440=l9_438.Surface_UVCoord0;
l9_433=l9_440;
l9_439=l9_433;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_441=float2(0.0);
l9_441=l9_438.Surface_UVCoord1;
l9_434=l9_441;
l9_439=l9_434;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_442=float2(0.0);
l9_442=l9_438.gScreenCoord;
l9_435=l9_442;
l9_439=l9_435;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_443=float2(0.0);
float2 l9_444=float2(0.0);
float2 l9_445=float2(0.0);
ssGlobals l9_446=l9_438;
float2 l9_447;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_448=float2(0.0);
float2 l9_449=float2(0.0);
float2 l9_450=float2(0.0);
ssGlobals l9_451=l9_446;
float2 l9_452;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_453=float2(0.0);
float2 l9_454=float2(0.0);
float2 l9_455=float2(0.0);
float2 l9_456=float2(0.0);
float2 l9_457=float2(0.0);
ssGlobals l9_458=l9_451;
float2 l9_459;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_460=float2(0.0);
l9_460=l9_458.Surface_UVCoord0;
l9_454=l9_460;
l9_459=l9_454;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_461=float2(0.0);
l9_461=l9_458.Surface_UVCoord1;
l9_455=l9_461;
l9_459=l9_455;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_462=float2(0.0);
l9_462=l9_458.gScreenCoord;
l9_456=l9_462;
l9_459=l9_456;
}
else
{
float2 l9_463=float2(0.0);
l9_463=l9_458.Surface_UVCoord0;
l9_457=l9_463;
l9_459=l9_457;
}
}
}
l9_453=l9_459;
float2 l9_464=float2(0.0);
float2 l9_465=(*sc_set0.UserUniforms).uv2Scale;
l9_464=l9_465;
float2 l9_466=float2(0.0);
l9_466=l9_464;
float2 l9_467=float2(0.0);
float2 l9_468=(*sc_set0.UserUniforms).uv2Offset;
l9_467=l9_468;
float2 l9_469=float2(0.0);
l9_469=l9_467;
float2 l9_470=float2(0.0);
l9_470=(l9_453*l9_466)+l9_469;
float2 l9_471=float2(0.0);
l9_471=l9_470+(l9_469*(l9_451.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_449=l9_471;
l9_452=l9_449;
}
else
{
float2 l9_472=float2(0.0);
float2 l9_473=float2(0.0);
float2 l9_474=float2(0.0);
float2 l9_475=float2(0.0);
float2 l9_476=float2(0.0);
ssGlobals l9_477=l9_451;
float2 l9_478;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_479=float2(0.0);
l9_479=l9_477.Surface_UVCoord0;
l9_473=l9_479;
l9_478=l9_473;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_480=float2(0.0);
l9_480=l9_477.Surface_UVCoord1;
l9_474=l9_480;
l9_478=l9_474;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_481=float2(0.0);
l9_481=l9_477.gScreenCoord;
l9_475=l9_481;
l9_478=l9_475;
}
else
{
float2 l9_482=float2(0.0);
l9_482=l9_477.Surface_UVCoord0;
l9_476=l9_482;
l9_478=l9_476;
}
}
}
l9_472=l9_478;
float2 l9_483=float2(0.0);
float2 l9_484=(*sc_set0.UserUniforms).uv2Scale;
l9_483=l9_484;
float2 l9_485=float2(0.0);
l9_485=l9_483;
float2 l9_486=float2(0.0);
float2 l9_487=(*sc_set0.UserUniforms).uv2Offset;
l9_486=l9_487;
float2 l9_488=float2(0.0);
l9_488=l9_486;
float2 l9_489=float2(0.0);
l9_489=(l9_472*l9_485)+l9_488;
l9_450=l9_489;
l9_452=l9_450;
}
l9_448=l9_452;
l9_444=l9_448;
l9_447=l9_444;
}
else
{
float2 l9_490=float2(0.0);
l9_490=l9_446.Surface_UVCoord0;
l9_445=l9_490;
l9_447=l9_445;
}
l9_443=l9_447;
float2 l9_491=float2(0.0);
l9_491=l9_443;
float2 l9_492=float2(0.0);
l9_492=l9_491;
l9_436=l9_492;
l9_439=l9_436;
}
else
{
float2 l9_493=float2(0.0);
l9_493=l9_438.Surface_UVCoord0;
l9_437=l9_493;
l9_439=l9_437;
}
}
}
}
l9_432=l9_439;
float2 l9_494=float2(0.0);
float2 l9_495=(*sc_set0.UserUniforms).uv3Scale;
l9_494=l9_495;
float2 l9_496=float2(0.0);
l9_496=l9_494;
float2 l9_497=float2(0.0);
float2 l9_498=(*sc_set0.UserUniforms).uv3Offset;
l9_497=l9_498;
float2 l9_499=float2(0.0);
l9_499=l9_497;
float2 l9_500=float2(0.0);
l9_500=(l9_432*l9_496)+l9_499;
float2 l9_501=float2(0.0);
l9_501=l9_500+(l9_499*(l9_430.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_428=l9_501;
l9_431=l9_428;
}
else
{
float2 l9_502=float2(0.0);
float2 l9_503=float2(0.0);
float2 l9_504=float2(0.0);
float2 l9_505=float2(0.0);
float2 l9_506=float2(0.0);
float2 l9_507=float2(0.0);
ssGlobals l9_508=l9_430;
float2 l9_509;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_510=float2(0.0);
l9_510=l9_508.Surface_UVCoord0;
l9_503=l9_510;
l9_509=l9_503;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_511=float2(0.0);
l9_511=l9_508.Surface_UVCoord1;
l9_504=l9_511;
l9_509=l9_504;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_512=float2(0.0);
l9_512=l9_508.gScreenCoord;
l9_505=l9_512;
l9_509=l9_505;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_513=float2(0.0);
float2 l9_514=float2(0.0);
float2 l9_515=float2(0.0);
ssGlobals l9_516=l9_508;
float2 l9_517;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_518=float2(0.0);
float2 l9_519=float2(0.0);
float2 l9_520=float2(0.0);
ssGlobals l9_521=l9_516;
float2 l9_522;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_523=float2(0.0);
float2 l9_524=float2(0.0);
float2 l9_525=float2(0.0);
float2 l9_526=float2(0.0);
float2 l9_527=float2(0.0);
ssGlobals l9_528=l9_521;
float2 l9_529;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_530=float2(0.0);
l9_530=l9_528.Surface_UVCoord0;
l9_524=l9_530;
l9_529=l9_524;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_531=float2(0.0);
l9_531=l9_528.Surface_UVCoord1;
l9_525=l9_531;
l9_529=l9_525;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_532=float2(0.0);
l9_532=l9_528.gScreenCoord;
l9_526=l9_532;
l9_529=l9_526;
}
else
{
float2 l9_533=float2(0.0);
l9_533=l9_528.Surface_UVCoord0;
l9_527=l9_533;
l9_529=l9_527;
}
}
}
l9_523=l9_529;
float2 l9_534=float2(0.0);
float2 l9_535=(*sc_set0.UserUniforms).uv2Scale;
l9_534=l9_535;
float2 l9_536=float2(0.0);
l9_536=l9_534;
float2 l9_537=float2(0.0);
float2 l9_538=(*sc_set0.UserUniforms).uv2Offset;
l9_537=l9_538;
float2 l9_539=float2(0.0);
l9_539=l9_537;
float2 l9_540=float2(0.0);
l9_540=(l9_523*l9_536)+l9_539;
float2 l9_541=float2(0.0);
l9_541=l9_540+(l9_539*(l9_521.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_519=l9_541;
l9_522=l9_519;
}
else
{
float2 l9_542=float2(0.0);
float2 l9_543=float2(0.0);
float2 l9_544=float2(0.0);
float2 l9_545=float2(0.0);
float2 l9_546=float2(0.0);
ssGlobals l9_547=l9_521;
float2 l9_548;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_549=float2(0.0);
l9_549=l9_547.Surface_UVCoord0;
l9_543=l9_549;
l9_548=l9_543;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_550=float2(0.0);
l9_550=l9_547.Surface_UVCoord1;
l9_544=l9_550;
l9_548=l9_544;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_551=float2(0.0);
l9_551=l9_547.gScreenCoord;
l9_545=l9_551;
l9_548=l9_545;
}
else
{
float2 l9_552=float2(0.0);
l9_552=l9_547.Surface_UVCoord0;
l9_546=l9_552;
l9_548=l9_546;
}
}
}
l9_542=l9_548;
float2 l9_553=float2(0.0);
float2 l9_554=(*sc_set0.UserUniforms).uv2Scale;
l9_553=l9_554;
float2 l9_555=float2(0.0);
l9_555=l9_553;
float2 l9_556=float2(0.0);
float2 l9_557=(*sc_set0.UserUniforms).uv2Offset;
l9_556=l9_557;
float2 l9_558=float2(0.0);
l9_558=l9_556;
float2 l9_559=float2(0.0);
l9_559=(l9_542*l9_555)+l9_558;
l9_520=l9_559;
l9_522=l9_520;
}
l9_518=l9_522;
l9_514=l9_518;
l9_517=l9_514;
}
else
{
float2 l9_560=float2(0.0);
l9_560=l9_516.Surface_UVCoord0;
l9_515=l9_560;
l9_517=l9_515;
}
l9_513=l9_517;
float2 l9_561=float2(0.0);
l9_561=l9_513;
float2 l9_562=float2(0.0);
l9_562=l9_561;
l9_506=l9_562;
l9_509=l9_506;
}
else
{
float2 l9_563=float2(0.0);
l9_563=l9_508.Surface_UVCoord0;
l9_507=l9_563;
l9_509=l9_507;
}
}
}
}
l9_502=l9_509;
float2 l9_564=float2(0.0);
float2 l9_565=(*sc_set0.UserUniforms).uv3Scale;
l9_564=l9_565;
float2 l9_566=float2(0.0);
l9_566=l9_564;
float2 l9_567=float2(0.0);
float2 l9_568=(*sc_set0.UserUniforms).uv3Offset;
l9_567=l9_568;
float2 l9_569=float2(0.0);
l9_569=l9_567;
float2 l9_570=float2(0.0);
l9_570=(l9_502*l9_566)+l9_569;
l9_429=l9_570;
l9_431=l9_429;
}
l9_427=l9_431;
l9_423=l9_427;
l9_426=l9_423;
}
else
{
float2 l9_571=float2(0.0);
l9_571=l9_425.Surface_UVCoord0;
l9_424=l9_571;
l9_426=l9_424;
}
l9_422=l9_426;
float2 l9_572=float2(0.0);
l9_572=l9_422;
float2 l9_573=float2(0.0);
l9_573=l9_572;
l9_366=l9_573;
l9_369=l9_366;
}
else
{
float2 l9_574=float2(0.0);
l9_574=l9_368.Surface_UVCoord0;
l9_367=l9_574;
l9_369=l9_367;
}
}
}
}
l9_362=l9_369;
float4 l9_575=float4(0.0);
int l9_576;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_577=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_577=0;
}
else
{
l9_577=in.varStereoViewID;
}
int l9_578=l9_577;
l9_576=1-l9_578;
}
else
{
int l9_579=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_579=0;
}
else
{
l9_579=in.varStereoViewID;
}
int l9_580=l9_579;
l9_576=l9_580;
}
int l9_581=l9_576;
int l9_582=baseTexLayout_tmp;
int l9_583=l9_581;
float2 l9_584=l9_362;
bool l9_585=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_586=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_587=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_588=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_589=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_590=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_591=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_592=0.0;
bool l9_593=l9_590&&(!l9_588);
float l9_594=1.0;
float l9_595=l9_584.x;
int l9_596=l9_587.x;
if (l9_596==1)
{
l9_595=fract(l9_595);
}
else
{
if (l9_596==2)
{
float l9_597=fract(l9_595);
float l9_598=l9_595-l9_597;
float l9_599=step(0.25,fract(l9_598*0.5));
l9_595=mix(l9_597,1.0-l9_597,fast::clamp(l9_599,0.0,1.0));
}
}
l9_584.x=l9_595;
float l9_600=l9_584.y;
int l9_601=l9_587.y;
if (l9_601==1)
{
l9_600=fract(l9_600);
}
else
{
if (l9_601==2)
{
float l9_602=fract(l9_600);
float l9_603=l9_600-l9_602;
float l9_604=step(0.25,fract(l9_603*0.5));
l9_600=mix(l9_602,1.0-l9_602,fast::clamp(l9_604,0.0,1.0));
}
}
l9_584.y=l9_600;
if (l9_588)
{
bool l9_605=l9_590;
bool l9_606;
if (l9_605)
{
l9_606=l9_587.x==3;
}
else
{
l9_606=l9_605;
}
float l9_607=l9_584.x;
float l9_608=l9_589.x;
float l9_609=l9_589.z;
bool l9_610=l9_606;
float l9_611=l9_594;
float l9_612=fast::clamp(l9_607,l9_608,l9_609);
float l9_613=step(abs(l9_607-l9_612),9.9999997e-06);
l9_611*=(l9_613+((1.0-float(l9_610))*(1.0-l9_613)));
l9_607=l9_612;
l9_584.x=l9_607;
l9_594=l9_611;
bool l9_614=l9_590;
bool l9_615;
if (l9_614)
{
l9_615=l9_587.y==3;
}
else
{
l9_615=l9_614;
}
float l9_616=l9_584.y;
float l9_617=l9_589.y;
float l9_618=l9_589.w;
bool l9_619=l9_615;
float l9_620=l9_594;
float l9_621=fast::clamp(l9_616,l9_617,l9_618);
float l9_622=step(abs(l9_616-l9_621),9.9999997e-06);
l9_620*=(l9_622+((1.0-float(l9_619))*(1.0-l9_622)));
l9_616=l9_621;
l9_584.y=l9_616;
l9_594=l9_620;
}
float2 l9_623=l9_584;
bool l9_624=l9_585;
float3x3 l9_625=l9_586;
if (l9_624)
{
l9_623=float2((l9_625*float3(l9_623,1.0)).xy);
}
float2 l9_626=l9_623;
l9_584=l9_626;
float l9_627=l9_584.x;
int l9_628=l9_587.x;
bool l9_629=l9_593;
float l9_630=l9_594;
if ((l9_628==0)||(l9_628==3))
{
float l9_631=l9_627;
float l9_632=0.0;
float l9_633=1.0;
bool l9_634=l9_629;
float l9_635=l9_630;
float l9_636=fast::clamp(l9_631,l9_632,l9_633);
float l9_637=step(abs(l9_631-l9_636),9.9999997e-06);
l9_635*=(l9_637+((1.0-float(l9_634))*(1.0-l9_637)));
l9_631=l9_636;
l9_627=l9_631;
l9_630=l9_635;
}
l9_584.x=l9_627;
l9_594=l9_630;
float l9_638=l9_584.y;
int l9_639=l9_587.y;
bool l9_640=l9_593;
float l9_641=l9_594;
if ((l9_639==0)||(l9_639==3))
{
float l9_642=l9_638;
float l9_643=0.0;
float l9_644=1.0;
bool l9_645=l9_640;
float l9_646=l9_641;
float l9_647=fast::clamp(l9_642,l9_643,l9_644);
float l9_648=step(abs(l9_642-l9_647),9.9999997e-06);
l9_646*=(l9_648+((1.0-float(l9_645))*(1.0-l9_648)));
l9_642=l9_647;
l9_638=l9_642;
l9_641=l9_646;
}
l9_584.y=l9_638;
l9_594=l9_641;
float2 l9_649=l9_584;
int l9_650=l9_582;
int l9_651=l9_583;
float l9_652=l9_592;
float2 l9_653=l9_649;
int l9_654=l9_650;
int l9_655=l9_651;
float3 l9_656=float3(0.0);
if (l9_654==0)
{
l9_656=float3(l9_653,0.0);
}
else
{
if (l9_654==1)
{
l9_656=float3(l9_653.x,(l9_653.y*0.5)+(0.5-(float(l9_655)*0.5)),0.0);
}
else
{
l9_656=float3(l9_653,float(l9_655));
}
}
float3 l9_657=l9_656;
float3 l9_658=l9_657;
float4 l9_659=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_658.xy,bias(l9_652));
float4 l9_660=l9_659;
if (l9_590)
{
l9_660=mix(l9_591,l9_660,float4(l9_594));
}
float4 l9_661=l9_660;
l9_575=l9_661;
l9_358=l9_575;
l9_361=l9_358;
}
else
{
l9_361=l9_359;
}
l9_357=l9_361;
float4 l9_662=float4(0.0);
l9_662=l9_356*l9_357;
float4 l9_663=float4(0.0);
l9_663=l9_662;
float4 l9_664=float4(0.0);
l9_664=l9_663;
l9_20=l9_664.xyz;
l9_22=l9_20;
}
l9_18=l9_22;
float3 l9_665=float3(0.0);
l9_665=l9_18;
float3 l9_666=float3(0.0);
l9_666=l9_665;
float4 l9_667=float4(0.0);
l9_667=float4(l9_666.x,l9_666.y,l9_666.z,l9_667.w);
l9_667.w=(*sc_set0.UserUniforms).Port_Value2_N073;
float4 l9_668=float4(0.0);
l9_668=l9_17*l9_667;
param_1=l9_668;
param_3=param_1;
}
else
{
float3 l9_669=float3(0.0);
float3 l9_670=float3(0.0);
float3 l9_671=float3(0.0);
ssGlobals l9_672=param_4;
float3 l9_673;
if ((int(Tweak_N37_tmp)!=0))
{
float3 l9_674=float3(0.0);
float3 l9_675=(*sc_set0.UserUniforms).recolorRed;
l9_674=l9_675;
float3 l9_676=float3(0.0);
l9_676=l9_674;
float4 l9_677=float4(0.0);
float4 l9_678=(*sc_set0.UserUniforms).baseColor;
l9_677=l9_678;
float4 l9_679=float4(0.0);
l9_679=l9_677;
float4 l9_680=float4(0.0);
float4 l9_681=float4(0.0);
float4 l9_682=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_683=l9_672;
float4 l9_684;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_685=float2(0.0);
float2 l9_686=float2(0.0);
float2 l9_687=float2(0.0);
float2 l9_688=float2(0.0);
float2 l9_689=float2(0.0);
float2 l9_690=float2(0.0);
ssGlobals l9_691=l9_683;
float2 l9_692;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_693=float2(0.0);
l9_693=l9_691.Surface_UVCoord0;
l9_686=l9_693;
l9_692=l9_686;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_694=float2(0.0);
l9_694=l9_691.Surface_UVCoord1;
l9_687=l9_694;
l9_692=l9_687;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_695=float2(0.0);
float2 l9_696=float2(0.0);
float2 l9_697=float2(0.0);
ssGlobals l9_698=l9_691;
float2 l9_699;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_700=float2(0.0);
float2 l9_701=float2(0.0);
float2 l9_702=float2(0.0);
ssGlobals l9_703=l9_698;
float2 l9_704;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_705=float2(0.0);
float2 l9_706=float2(0.0);
float2 l9_707=float2(0.0);
float2 l9_708=float2(0.0);
float2 l9_709=float2(0.0);
ssGlobals l9_710=l9_703;
float2 l9_711;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_712=float2(0.0);
l9_712=l9_710.Surface_UVCoord0;
l9_706=l9_712;
l9_711=l9_706;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_713=float2(0.0);
l9_713=l9_710.Surface_UVCoord1;
l9_707=l9_713;
l9_711=l9_707;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_714=float2(0.0);
l9_714=l9_710.gScreenCoord;
l9_708=l9_714;
l9_711=l9_708;
}
else
{
float2 l9_715=float2(0.0);
l9_715=l9_710.Surface_UVCoord0;
l9_709=l9_715;
l9_711=l9_709;
}
}
}
l9_705=l9_711;
float2 l9_716=float2(0.0);
float2 l9_717=(*sc_set0.UserUniforms).uv2Scale;
l9_716=l9_717;
float2 l9_718=float2(0.0);
l9_718=l9_716;
float2 l9_719=float2(0.0);
float2 l9_720=(*sc_set0.UserUniforms).uv2Offset;
l9_719=l9_720;
float2 l9_721=float2(0.0);
l9_721=l9_719;
float2 l9_722=float2(0.0);
l9_722=(l9_705*l9_718)+l9_721;
float2 l9_723=float2(0.0);
l9_723=l9_722+(l9_721*(l9_703.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_701=l9_723;
l9_704=l9_701;
}
else
{
float2 l9_724=float2(0.0);
float2 l9_725=float2(0.0);
float2 l9_726=float2(0.0);
float2 l9_727=float2(0.0);
float2 l9_728=float2(0.0);
ssGlobals l9_729=l9_703;
float2 l9_730;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_731=float2(0.0);
l9_731=l9_729.Surface_UVCoord0;
l9_725=l9_731;
l9_730=l9_725;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_732=float2(0.0);
l9_732=l9_729.Surface_UVCoord1;
l9_726=l9_732;
l9_730=l9_726;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_733=float2(0.0);
l9_733=l9_729.gScreenCoord;
l9_727=l9_733;
l9_730=l9_727;
}
else
{
float2 l9_734=float2(0.0);
l9_734=l9_729.Surface_UVCoord0;
l9_728=l9_734;
l9_730=l9_728;
}
}
}
l9_724=l9_730;
float2 l9_735=float2(0.0);
float2 l9_736=(*sc_set0.UserUniforms).uv2Scale;
l9_735=l9_736;
float2 l9_737=float2(0.0);
l9_737=l9_735;
float2 l9_738=float2(0.0);
float2 l9_739=(*sc_set0.UserUniforms).uv2Offset;
l9_738=l9_739;
float2 l9_740=float2(0.0);
l9_740=l9_738;
float2 l9_741=float2(0.0);
l9_741=(l9_724*l9_737)+l9_740;
l9_702=l9_741;
l9_704=l9_702;
}
l9_700=l9_704;
l9_696=l9_700;
l9_699=l9_696;
}
else
{
float2 l9_742=float2(0.0);
l9_742=l9_698.Surface_UVCoord0;
l9_697=l9_742;
l9_699=l9_697;
}
l9_695=l9_699;
float2 l9_743=float2(0.0);
l9_743=l9_695;
float2 l9_744=float2(0.0);
l9_744=l9_743;
l9_688=l9_744;
l9_692=l9_688;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_745=float2(0.0);
float2 l9_746=float2(0.0);
float2 l9_747=float2(0.0);
ssGlobals l9_748=l9_691;
float2 l9_749;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_750=float2(0.0);
float2 l9_751=float2(0.0);
float2 l9_752=float2(0.0);
ssGlobals l9_753=l9_748;
float2 l9_754;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_755=float2(0.0);
float2 l9_756=float2(0.0);
float2 l9_757=float2(0.0);
float2 l9_758=float2(0.0);
float2 l9_759=float2(0.0);
float2 l9_760=float2(0.0);
ssGlobals l9_761=l9_753;
float2 l9_762;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_763=float2(0.0);
l9_763=l9_761.Surface_UVCoord0;
l9_756=l9_763;
l9_762=l9_756;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_764=float2(0.0);
l9_764=l9_761.Surface_UVCoord1;
l9_757=l9_764;
l9_762=l9_757;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_765=float2(0.0);
l9_765=l9_761.gScreenCoord;
l9_758=l9_765;
l9_762=l9_758;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_766=float2(0.0);
float2 l9_767=float2(0.0);
float2 l9_768=float2(0.0);
ssGlobals l9_769=l9_761;
float2 l9_770;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_771=float2(0.0);
float2 l9_772=float2(0.0);
float2 l9_773=float2(0.0);
ssGlobals l9_774=l9_769;
float2 l9_775;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_776=float2(0.0);
float2 l9_777=float2(0.0);
float2 l9_778=float2(0.0);
float2 l9_779=float2(0.0);
float2 l9_780=float2(0.0);
ssGlobals l9_781=l9_774;
float2 l9_782;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_783=float2(0.0);
l9_783=l9_781.Surface_UVCoord0;
l9_777=l9_783;
l9_782=l9_777;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_784=float2(0.0);
l9_784=l9_781.Surface_UVCoord1;
l9_778=l9_784;
l9_782=l9_778;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_785=float2(0.0);
l9_785=l9_781.gScreenCoord;
l9_779=l9_785;
l9_782=l9_779;
}
else
{
float2 l9_786=float2(0.0);
l9_786=l9_781.Surface_UVCoord0;
l9_780=l9_786;
l9_782=l9_780;
}
}
}
l9_776=l9_782;
float2 l9_787=float2(0.0);
float2 l9_788=(*sc_set0.UserUniforms).uv2Scale;
l9_787=l9_788;
float2 l9_789=float2(0.0);
l9_789=l9_787;
float2 l9_790=float2(0.0);
float2 l9_791=(*sc_set0.UserUniforms).uv2Offset;
l9_790=l9_791;
float2 l9_792=float2(0.0);
l9_792=l9_790;
float2 l9_793=float2(0.0);
l9_793=(l9_776*l9_789)+l9_792;
float2 l9_794=float2(0.0);
l9_794=l9_793+(l9_792*(l9_774.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_772=l9_794;
l9_775=l9_772;
}
else
{
float2 l9_795=float2(0.0);
float2 l9_796=float2(0.0);
float2 l9_797=float2(0.0);
float2 l9_798=float2(0.0);
float2 l9_799=float2(0.0);
ssGlobals l9_800=l9_774;
float2 l9_801;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_802=float2(0.0);
l9_802=l9_800.Surface_UVCoord0;
l9_796=l9_802;
l9_801=l9_796;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_803=float2(0.0);
l9_803=l9_800.Surface_UVCoord1;
l9_797=l9_803;
l9_801=l9_797;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_804=float2(0.0);
l9_804=l9_800.gScreenCoord;
l9_798=l9_804;
l9_801=l9_798;
}
else
{
float2 l9_805=float2(0.0);
l9_805=l9_800.Surface_UVCoord0;
l9_799=l9_805;
l9_801=l9_799;
}
}
}
l9_795=l9_801;
float2 l9_806=float2(0.0);
float2 l9_807=(*sc_set0.UserUniforms).uv2Scale;
l9_806=l9_807;
float2 l9_808=float2(0.0);
l9_808=l9_806;
float2 l9_809=float2(0.0);
float2 l9_810=(*sc_set0.UserUniforms).uv2Offset;
l9_809=l9_810;
float2 l9_811=float2(0.0);
l9_811=l9_809;
float2 l9_812=float2(0.0);
l9_812=(l9_795*l9_808)+l9_811;
l9_773=l9_812;
l9_775=l9_773;
}
l9_771=l9_775;
l9_767=l9_771;
l9_770=l9_767;
}
else
{
float2 l9_813=float2(0.0);
l9_813=l9_769.Surface_UVCoord0;
l9_768=l9_813;
l9_770=l9_768;
}
l9_766=l9_770;
float2 l9_814=float2(0.0);
l9_814=l9_766;
float2 l9_815=float2(0.0);
l9_815=l9_814;
l9_759=l9_815;
l9_762=l9_759;
}
else
{
float2 l9_816=float2(0.0);
l9_816=l9_761.Surface_UVCoord0;
l9_760=l9_816;
l9_762=l9_760;
}
}
}
}
l9_755=l9_762;
float2 l9_817=float2(0.0);
float2 l9_818=(*sc_set0.UserUniforms).uv3Scale;
l9_817=l9_818;
float2 l9_819=float2(0.0);
l9_819=l9_817;
float2 l9_820=float2(0.0);
float2 l9_821=(*sc_set0.UserUniforms).uv3Offset;
l9_820=l9_821;
float2 l9_822=float2(0.0);
l9_822=l9_820;
float2 l9_823=float2(0.0);
l9_823=(l9_755*l9_819)+l9_822;
float2 l9_824=float2(0.0);
l9_824=l9_823+(l9_822*(l9_753.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_751=l9_824;
l9_754=l9_751;
}
else
{
float2 l9_825=float2(0.0);
float2 l9_826=float2(0.0);
float2 l9_827=float2(0.0);
float2 l9_828=float2(0.0);
float2 l9_829=float2(0.0);
float2 l9_830=float2(0.0);
ssGlobals l9_831=l9_753;
float2 l9_832;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_833=float2(0.0);
l9_833=l9_831.Surface_UVCoord0;
l9_826=l9_833;
l9_832=l9_826;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_834=float2(0.0);
l9_834=l9_831.Surface_UVCoord1;
l9_827=l9_834;
l9_832=l9_827;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_835=float2(0.0);
l9_835=l9_831.gScreenCoord;
l9_828=l9_835;
l9_832=l9_828;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_836=float2(0.0);
float2 l9_837=float2(0.0);
float2 l9_838=float2(0.0);
ssGlobals l9_839=l9_831;
float2 l9_840;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_841=float2(0.0);
float2 l9_842=float2(0.0);
float2 l9_843=float2(0.0);
ssGlobals l9_844=l9_839;
float2 l9_845;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_846=float2(0.0);
float2 l9_847=float2(0.0);
float2 l9_848=float2(0.0);
float2 l9_849=float2(0.0);
float2 l9_850=float2(0.0);
ssGlobals l9_851=l9_844;
float2 l9_852;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_853=float2(0.0);
l9_853=l9_851.Surface_UVCoord0;
l9_847=l9_853;
l9_852=l9_847;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_854=float2(0.0);
l9_854=l9_851.Surface_UVCoord1;
l9_848=l9_854;
l9_852=l9_848;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_855=float2(0.0);
l9_855=l9_851.gScreenCoord;
l9_849=l9_855;
l9_852=l9_849;
}
else
{
float2 l9_856=float2(0.0);
l9_856=l9_851.Surface_UVCoord0;
l9_850=l9_856;
l9_852=l9_850;
}
}
}
l9_846=l9_852;
float2 l9_857=float2(0.0);
float2 l9_858=(*sc_set0.UserUniforms).uv2Scale;
l9_857=l9_858;
float2 l9_859=float2(0.0);
l9_859=l9_857;
float2 l9_860=float2(0.0);
float2 l9_861=(*sc_set0.UserUniforms).uv2Offset;
l9_860=l9_861;
float2 l9_862=float2(0.0);
l9_862=l9_860;
float2 l9_863=float2(0.0);
l9_863=(l9_846*l9_859)+l9_862;
float2 l9_864=float2(0.0);
l9_864=l9_863+(l9_862*(l9_844.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_842=l9_864;
l9_845=l9_842;
}
else
{
float2 l9_865=float2(0.0);
float2 l9_866=float2(0.0);
float2 l9_867=float2(0.0);
float2 l9_868=float2(0.0);
float2 l9_869=float2(0.0);
ssGlobals l9_870=l9_844;
float2 l9_871;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_872=float2(0.0);
l9_872=l9_870.Surface_UVCoord0;
l9_866=l9_872;
l9_871=l9_866;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_873=float2(0.0);
l9_873=l9_870.Surface_UVCoord1;
l9_867=l9_873;
l9_871=l9_867;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_874=float2(0.0);
l9_874=l9_870.gScreenCoord;
l9_868=l9_874;
l9_871=l9_868;
}
else
{
float2 l9_875=float2(0.0);
l9_875=l9_870.Surface_UVCoord0;
l9_869=l9_875;
l9_871=l9_869;
}
}
}
l9_865=l9_871;
float2 l9_876=float2(0.0);
float2 l9_877=(*sc_set0.UserUniforms).uv2Scale;
l9_876=l9_877;
float2 l9_878=float2(0.0);
l9_878=l9_876;
float2 l9_879=float2(0.0);
float2 l9_880=(*sc_set0.UserUniforms).uv2Offset;
l9_879=l9_880;
float2 l9_881=float2(0.0);
l9_881=l9_879;
float2 l9_882=float2(0.0);
l9_882=(l9_865*l9_878)+l9_881;
l9_843=l9_882;
l9_845=l9_843;
}
l9_841=l9_845;
l9_837=l9_841;
l9_840=l9_837;
}
else
{
float2 l9_883=float2(0.0);
l9_883=l9_839.Surface_UVCoord0;
l9_838=l9_883;
l9_840=l9_838;
}
l9_836=l9_840;
float2 l9_884=float2(0.0);
l9_884=l9_836;
float2 l9_885=float2(0.0);
l9_885=l9_884;
l9_829=l9_885;
l9_832=l9_829;
}
else
{
float2 l9_886=float2(0.0);
l9_886=l9_831.Surface_UVCoord0;
l9_830=l9_886;
l9_832=l9_830;
}
}
}
}
l9_825=l9_832;
float2 l9_887=float2(0.0);
float2 l9_888=(*sc_set0.UserUniforms).uv3Scale;
l9_887=l9_888;
float2 l9_889=float2(0.0);
l9_889=l9_887;
float2 l9_890=float2(0.0);
float2 l9_891=(*sc_set0.UserUniforms).uv3Offset;
l9_890=l9_891;
float2 l9_892=float2(0.0);
l9_892=l9_890;
float2 l9_893=float2(0.0);
l9_893=(l9_825*l9_889)+l9_892;
l9_752=l9_893;
l9_754=l9_752;
}
l9_750=l9_754;
l9_746=l9_750;
l9_749=l9_746;
}
else
{
float2 l9_894=float2(0.0);
l9_894=l9_748.Surface_UVCoord0;
l9_747=l9_894;
l9_749=l9_747;
}
l9_745=l9_749;
float2 l9_895=float2(0.0);
l9_895=l9_745;
float2 l9_896=float2(0.0);
l9_896=l9_895;
l9_689=l9_896;
l9_692=l9_689;
}
else
{
float2 l9_897=float2(0.0);
l9_897=l9_691.Surface_UVCoord0;
l9_690=l9_897;
l9_692=l9_690;
}
}
}
}
l9_685=l9_692;
float4 l9_898=float4(0.0);
int l9_899;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_900=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_900=0;
}
else
{
l9_900=in.varStereoViewID;
}
int l9_901=l9_900;
l9_899=1-l9_901;
}
else
{
int l9_902=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_902=0;
}
else
{
l9_902=in.varStereoViewID;
}
int l9_903=l9_902;
l9_899=l9_903;
}
int l9_904=l9_899;
int l9_905=baseTexLayout_tmp;
int l9_906=l9_904;
float2 l9_907=l9_685;
bool l9_908=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_909=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_910=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_911=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_912=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_913=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_914=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_915=0.0;
bool l9_916=l9_913&&(!l9_911);
float l9_917=1.0;
float l9_918=l9_907.x;
int l9_919=l9_910.x;
if (l9_919==1)
{
l9_918=fract(l9_918);
}
else
{
if (l9_919==2)
{
float l9_920=fract(l9_918);
float l9_921=l9_918-l9_920;
float l9_922=step(0.25,fract(l9_921*0.5));
l9_918=mix(l9_920,1.0-l9_920,fast::clamp(l9_922,0.0,1.0));
}
}
l9_907.x=l9_918;
float l9_923=l9_907.y;
int l9_924=l9_910.y;
if (l9_924==1)
{
l9_923=fract(l9_923);
}
else
{
if (l9_924==2)
{
float l9_925=fract(l9_923);
float l9_926=l9_923-l9_925;
float l9_927=step(0.25,fract(l9_926*0.5));
l9_923=mix(l9_925,1.0-l9_925,fast::clamp(l9_927,0.0,1.0));
}
}
l9_907.y=l9_923;
if (l9_911)
{
bool l9_928=l9_913;
bool l9_929;
if (l9_928)
{
l9_929=l9_910.x==3;
}
else
{
l9_929=l9_928;
}
float l9_930=l9_907.x;
float l9_931=l9_912.x;
float l9_932=l9_912.z;
bool l9_933=l9_929;
float l9_934=l9_917;
float l9_935=fast::clamp(l9_930,l9_931,l9_932);
float l9_936=step(abs(l9_930-l9_935),9.9999997e-06);
l9_934*=(l9_936+((1.0-float(l9_933))*(1.0-l9_936)));
l9_930=l9_935;
l9_907.x=l9_930;
l9_917=l9_934;
bool l9_937=l9_913;
bool l9_938;
if (l9_937)
{
l9_938=l9_910.y==3;
}
else
{
l9_938=l9_937;
}
float l9_939=l9_907.y;
float l9_940=l9_912.y;
float l9_941=l9_912.w;
bool l9_942=l9_938;
float l9_943=l9_917;
float l9_944=fast::clamp(l9_939,l9_940,l9_941);
float l9_945=step(abs(l9_939-l9_944),9.9999997e-06);
l9_943*=(l9_945+((1.0-float(l9_942))*(1.0-l9_945)));
l9_939=l9_944;
l9_907.y=l9_939;
l9_917=l9_943;
}
float2 l9_946=l9_907;
bool l9_947=l9_908;
float3x3 l9_948=l9_909;
if (l9_947)
{
l9_946=float2((l9_948*float3(l9_946,1.0)).xy);
}
float2 l9_949=l9_946;
l9_907=l9_949;
float l9_950=l9_907.x;
int l9_951=l9_910.x;
bool l9_952=l9_916;
float l9_953=l9_917;
if ((l9_951==0)||(l9_951==3))
{
float l9_954=l9_950;
float l9_955=0.0;
float l9_956=1.0;
bool l9_957=l9_952;
float l9_958=l9_953;
float l9_959=fast::clamp(l9_954,l9_955,l9_956);
float l9_960=step(abs(l9_954-l9_959),9.9999997e-06);
l9_958*=(l9_960+((1.0-float(l9_957))*(1.0-l9_960)));
l9_954=l9_959;
l9_950=l9_954;
l9_953=l9_958;
}
l9_907.x=l9_950;
l9_917=l9_953;
float l9_961=l9_907.y;
int l9_962=l9_910.y;
bool l9_963=l9_916;
float l9_964=l9_917;
if ((l9_962==0)||(l9_962==3))
{
float l9_965=l9_961;
float l9_966=0.0;
float l9_967=1.0;
bool l9_968=l9_963;
float l9_969=l9_964;
float l9_970=fast::clamp(l9_965,l9_966,l9_967);
float l9_971=step(abs(l9_965-l9_970),9.9999997e-06);
l9_969*=(l9_971+((1.0-float(l9_968))*(1.0-l9_971)));
l9_965=l9_970;
l9_961=l9_965;
l9_964=l9_969;
}
l9_907.y=l9_961;
l9_917=l9_964;
float2 l9_972=l9_907;
int l9_973=l9_905;
int l9_974=l9_906;
float l9_975=l9_915;
float2 l9_976=l9_972;
int l9_977=l9_973;
int l9_978=l9_974;
float3 l9_979=float3(0.0);
if (l9_977==0)
{
l9_979=float3(l9_976,0.0);
}
else
{
if (l9_977==1)
{
l9_979=float3(l9_976.x,(l9_976.y*0.5)+(0.5-(float(l9_978)*0.5)),0.0);
}
else
{
l9_979=float3(l9_976,float(l9_978));
}
}
float3 l9_980=l9_979;
float3 l9_981=l9_980;
float4 l9_982=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_981.xy,bias(l9_975));
float4 l9_983=l9_982;
if (l9_913)
{
l9_983=mix(l9_914,l9_983,float4(l9_917));
}
float4 l9_984=l9_983;
l9_898=l9_984;
l9_681=l9_898;
l9_684=l9_681;
}
else
{
l9_684=l9_682;
}
l9_680=l9_684;
float4 l9_985=float4(0.0);
l9_985=l9_679*l9_680;
float4 l9_986=float4(0.0);
l9_986=l9_985;
float4 l9_987=float4(0.0);
l9_987=l9_986;
float l9_988=0.0;
float l9_989=0.0;
float l9_990=0.0;
float3 l9_991=l9_987.xyz;
float l9_992=l9_991.x;
float l9_993=l9_991.y;
float l9_994=l9_991.z;
l9_988=l9_992;
l9_989=l9_993;
l9_990=l9_994;
float3 l9_995=float3(0.0);
l9_995=l9_676*float3(l9_988);
float3 l9_996=float3(0.0);
float3 l9_997=(*sc_set0.UserUniforms).recolorGreen;
l9_996=l9_997;
float3 l9_998=float3(0.0);
l9_998=l9_996;
float3 l9_999=float3(0.0);
l9_999=l9_998*float3(l9_989);
float3 l9_1000=float3(0.0);
float3 l9_1001=(*sc_set0.UserUniforms).recolorBlue;
l9_1000=l9_1001;
float3 l9_1002=float3(0.0);
l9_1002=l9_1000;
float3 l9_1003=float3(0.0);
l9_1003=l9_1002*float3(l9_990);
float3 l9_1004=float3(0.0);
l9_1004=(l9_995+l9_999)+l9_1003;
l9_670=l9_1004;
l9_673=l9_670;
}
else
{
float4 l9_1005=float4(0.0);
float4 l9_1006=(*sc_set0.UserUniforms).baseColor;
l9_1005=l9_1006;
float4 l9_1007=float4(0.0);
l9_1007=l9_1005;
float4 l9_1008=float4(0.0);
float4 l9_1009=float4(0.0);
float4 l9_1010=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals l9_1011=l9_672;
float4 l9_1012;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_1013=float2(0.0);
float2 l9_1014=float2(0.0);
float2 l9_1015=float2(0.0);
float2 l9_1016=float2(0.0);
float2 l9_1017=float2(0.0);
float2 l9_1018=float2(0.0);
ssGlobals l9_1019=l9_1011;
float2 l9_1020;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_1021=float2(0.0);
l9_1021=l9_1019.Surface_UVCoord0;
l9_1014=l9_1021;
l9_1020=l9_1014;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_1022=float2(0.0);
l9_1022=l9_1019.Surface_UVCoord1;
l9_1015=l9_1022;
l9_1020=l9_1015;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_1023=float2(0.0);
float2 l9_1024=float2(0.0);
float2 l9_1025=float2(0.0);
ssGlobals l9_1026=l9_1019;
float2 l9_1027;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1028=float2(0.0);
float2 l9_1029=float2(0.0);
float2 l9_1030=float2(0.0);
ssGlobals l9_1031=l9_1026;
float2 l9_1032;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1033=float2(0.0);
float2 l9_1034=float2(0.0);
float2 l9_1035=float2(0.0);
float2 l9_1036=float2(0.0);
float2 l9_1037=float2(0.0);
ssGlobals l9_1038=l9_1031;
float2 l9_1039;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1040=float2(0.0);
l9_1040=l9_1038.Surface_UVCoord0;
l9_1034=l9_1040;
l9_1039=l9_1034;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1041=float2(0.0);
l9_1041=l9_1038.Surface_UVCoord1;
l9_1035=l9_1041;
l9_1039=l9_1035;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1042=float2(0.0);
l9_1042=l9_1038.gScreenCoord;
l9_1036=l9_1042;
l9_1039=l9_1036;
}
else
{
float2 l9_1043=float2(0.0);
l9_1043=l9_1038.Surface_UVCoord0;
l9_1037=l9_1043;
l9_1039=l9_1037;
}
}
}
l9_1033=l9_1039;
float2 l9_1044=float2(0.0);
float2 l9_1045=(*sc_set0.UserUniforms).uv2Scale;
l9_1044=l9_1045;
float2 l9_1046=float2(0.0);
l9_1046=l9_1044;
float2 l9_1047=float2(0.0);
float2 l9_1048=(*sc_set0.UserUniforms).uv2Offset;
l9_1047=l9_1048;
float2 l9_1049=float2(0.0);
l9_1049=l9_1047;
float2 l9_1050=float2(0.0);
l9_1050=(l9_1033*l9_1046)+l9_1049;
float2 l9_1051=float2(0.0);
l9_1051=l9_1050+(l9_1049*(l9_1031.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1029=l9_1051;
l9_1032=l9_1029;
}
else
{
float2 l9_1052=float2(0.0);
float2 l9_1053=float2(0.0);
float2 l9_1054=float2(0.0);
float2 l9_1055=float2(0.0);
float2 l9_1056=float2(0.0);
ssGlobals l9_1057=l9_1031;
float2 l9_1058;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1059=float2(0.0);
l9_1059=l9_1057.Surface_UVCoord0;
l9_1053=l9_1059;
l9_1058=l9_1053;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1060=float2(0.0);
l9_1060=l9_1057.Surface_UVCoord1;
l9_1054=l9_1060;
l9_1058=l9_1054;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1061=float2(0.0);
l9_1061=l9_1057.gScreenCoord;
l9_1055=l9_1061;
l9_1058=l9_1055;
}
else
{
float2 l9_1062=float2(0.0);
l9_1062=l9_1057.Surface_UVCoord0;
l9_1056=l9_1062;
l9_1058=l9_1056;
}
}
}
l9_1052=l9_1058;
float2 l9_1063=float2(0.0);
float2 l9_1064=(*sc_set0.UserUniforms).uv2Scale;
l9_1063=l9_1064;
float2 l9_1065=float2(0.0);
l9_1065=l9_1063;
float2 l9_1066=float2(0.0);
float2 l9_1067=(*sc_set0.UserUniforms).uv2Offset;
l9_1066=l9_1067;
float2 l9_1068=float2(0.0);
l9_1068=l9_1066;
float2 l9_1069=float2(0.0);
l9_1069=(l9_1052*l9_1065)+l9_1068;
l9_1030=l9_1069;
l9_1032=l9_1030;
}
l9_1028=l9_1032;
l9_1024=l9_1028;
l9_1027=l9_1024;
}
else
{
float2 l9_1070=float2(0.0);
l9_1070=l9_1026.Surface_UVCoord0;
l9_1025=l9_1070;
l9_1027=l9_1025;
}
l9_1023=l9_1027;
float2 l9_1071=float2(0.0);
l9_1071=l9_1023;
float2 l9_1072=float2(0.0);
l9_1072=l9_1071;
l9_1016=l9_1072;
l9_1020=l9_1016;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_1073=float2(0.0);
float2 l9_1074=float2(0.0);
float2 l9_1075=float2(0.0);
ssGlobals l9_1076=l9_1019;
float2 l9_1077;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_1078=float2(0.0);
float2 l9_1079=float2(0.0);
float2 l9_1080=float2(0.0);
ssGlobals l9_1081=l9_1076;
float2 l9_1082;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1083=float2(0.0);
float2 l9_1084=float2(0.0);
float2 l9_1085=float2(0.0);
float2 l9_1086=float2(0.0);
float2 l9_1087=float2(0.0);
float2 l9_1088=float2(0.0);
ssGlobals l9_1089=l9_1081;
float2 l9_1090;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1091=float2(0.0);
l9_1091=l9_1089.Surface_UVCoord0;
l9_1084=l9_1091;
l9_1090=l9_1084;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1092=float2(0.0);
l9_1092=l9_1089.Surface_UVCoord1;
l9_1085=l9_1092;
l9_1090=l9_1085;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1093=float2(0.0);
l9_1093=l9_1089.gScreenCoord;
l9_1086=l9_1093;
l9_1090=l9_1086;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1094=float2(0.0);
float2 l9_1095=float2(0.0);
float2 l9_1096=float2(0.0);
ssGlobals l9_1097=l9_1089;
float2 l9_1098;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1099=float2(0.0);
float2 l9_1100=float2(0.0);
float2 l9_1101=float2(0.0);
ssGlobals l9_1102=l9_1097;
float2 l9_1103;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1104=float2(0.0);
float2 l9_1105=float2(0.0);
float2 l9_1106=float2(0.0);
float2 l9_1107=float2(0.0);
float2 l9_1108=float2(0.0);
ssGlobals l9_1109=l9_1102;
float2 l9_1110;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1111=float2(0.0);
l9_1111=l9_1109.Surface_UVCoord0;
l9_1105=l9_1111;
l9_1110=l9_1105;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1112=float2(0.0);
l9_1112=l9_1109.Surface_UVCoord1;
l9_1106=l9_1112;
l9_1110=l9_1106;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1113=float2(0.0);
l9_1113=l9_1109.gScreenCoord;
l9_1107=l9_1113;
l9_1110=l9_1107;
}
else
{
float2 l9_1114=float2(0.0);
l9_1114=l9_1109.Surface_UVCoord0;
l9_1108=l9_1114;
l9_1110=l9_1108;
}
}
}
l9_1104=l9_1110;
float2 l9_1115=float2(0.0);
float2 l9_1116=(*sc_set0.UserUniforms).uv2Scale;
l9_1115=l9_1116;
float2 l9_1117=float2(0.0);
l9_1117=l9_1115;
float2 l9_1118=float2(0.0);
float2 l9_1119=(*sc_set0.UserUniforms).uv2Offset;
l9_1118=l9_1119;
float2 l9_1120=float2(0.0);
l9_1120=l9_1118;
float2 l9_1121=float2(0.0);
l9_1121=(l9_1104*l9_1117)+l9_1120;
float2 l9_1122=float2(0.0);
l9_1122=l9_1121+(l9_1120*(l9_1102.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1100=l9_1122;
l9_1103=l9_1100;
}
else
{
float2 l9_1123=float2(0.0);
float2 l9_1124=float2(0.0);
float2 l9_1125=float2(0.0);
float2 l9_1126=float2(0.0);
float2 l9_1127=float2(0.0);
ssGlobals l9_1128=l9_1102;
float2 l9_1129;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1130=float2(0.0);
l9_1130=l9_1128.Surface_UVCoord0;
l9_1124=l9_1130;
l9_1129=l9_1124;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1131=float2(0.0);
l9_1131=l9_1128.Surface_UVCoord1;
l9_1125=l9_1131;
l9_1129=l9_1125;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1132=float2(0.0);
l9_1132=l9_1128.gScreenCoord;
l9_1126=l9_1132;
l9_1129=l9_1126;
}
else
{
float2 l9_1133=float2(0.0);
l9_1133=l9_1128.Surface_UVCoord0;
l9_1127=l9_1133;
l9_1129=l9_1127;
}
}
}
l9_1123=l9_1129;
float2 l9_1134=float2(0.0);
float2 l9_1135=(*sc_set0.UserUniforms).uv2Scale;
l9_1134=l9_1135;
float2 l9_1136=float2(0.0);
l9_1136=l9_1134;
float2 l9_1137=float2(0.0);
float2 l9_1138=(*sc_set0.UserUniforms).uv2Offset;
l9_1137=l9_1138;
float2 l9_1139=float2(0.0);
l9_1139=l9_1137;
float2 l9_1140=float2(0.0);
l9_1140=(l9_1123*l9_1136)+l9_1139;
l9_1101=l9_1140;
l9_1103=l9_1101;
}
l9_1099=l9_1103;
l9_1095=l9_1099;
l9_1098=l9_1095;
}
else
{
float2 l9_1141=float2(0.0);
l9_1141=l9_1097.Surface_UVCoord0;
l9_1096=l9_1141;
l9_1098=l9_1096;
}
l9_1094=l9_1098;
float2 l9_1142=float2(0.0);
l9_1142=l9_1094;
float2 l9_1143=float2(0.0);
l9_1143=l9_1142;
l9_1087=l9_1143;
l9_1090=l9_1087;
}
else
{
float2 l9_1144=float2(0.0);
l9_1144=l9_1089.Surface_UVCoord0;
l9_1088=l9_1144;
l9_1090=l9_1088;
}
}
}
}
l9_1083=l9_1090;
float2 l9_1145=float2(0.0);
float2 l9_1146=(*sc_set0.UserUniforms).uv3Scale;
l9_1145=l9_1146;
float2 l9_1147=float2(0.0);
l9_1147=l9_1145;
float2 l9_1148=float2(0.0);
float2 l9_1149=(*sc_set0.UserUniforms).uv3Offset;
l9_1148=l9_1149;
float2 l9_1150=float2(0.0);
l9_1150=l9_1148;
float2 l9_1151=float2(0.0);
l9_1151=(l9_1083*l9_1147)+l9_1150;
float2 l9_1152=float2(0.0);
l9_1152=l9_1151+(l9_1150*(l9_1081.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1079=l9_1152;
l9_1082=l9_1079;
}
else
{
float2 l9_1153=float2(0.0);
float2 l9_1154=float2(0.0);
float2 l9_1155=float2(0.0);
float2 l9_1156=float2(0.0);
float2 l9_1157=float2(0.0);
float2 l9_1158=float2(0.0);
ssGlobals l9_1159=l9_1081;
float2 l9_1160;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1161=float2(0.0);
l9_1161=l9_1159.Surface_UVCoord0;
l9_1154=l9_1161;
l9_1160=l9_1154;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1162=float2(0.0);
l9_1162=l9_1159.Surface_UVCoord1;
l9_1155=l9_1162;
l9_1160=l9_1155;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1163=float2(0.0);
l9_1163=l9_1159.gScreenCoord;
l9_1156=l9_1163;
l9_1160=l9_1156;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1164=float2(0.0);
float2 l9_1165=float2(0.0);
float2 l9_1166=float2(0.0);
ssGlobals l9_1167=l9_1159;
float2 l9_1168;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1169=float2(0.0);
float2 l9_1170=float2(0.0);
float2 l9_1171=float2(0.0);
ssGlobals l9_1172=l9_1167;
float2 l9_1173;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1174=float2(0.0);
float2 l9_1175=float2(0.0);
float2 l9_1176=float2(0.0);
float2 l9_1177=float2(0.0);
float2 l9_1178=float2(0.0);
ssGlobals l9_1179=l9_1172;
float2 l9_1180;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1181=float2(0.0);
l9_1181=l9_1179.Surface_UVCoord0;
l9_1175=l9_1181;
l9_1180=l9_1175;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1182=float2(0.0);
l9_1182=l9_1179.Surface_UVCoord1;
l9_1176=l9_1182;
l9_1180=l9_1176;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1183=float2(0.0);
l9_1183=l9_1179.gScreenCoord;
l9_1177=l9_1183;
l9_1180=l9_1177;
}
else
{
float2 l9_1184=float2(0.0);
l9_1184=l9_1179.Surface_UVCoord0;
l9_1178=l9_1184;
l9_1180=l9_1178;
}
}
}
l9_1174=l9_1180;
float2 l9_1185=float2(0.0);
float2 l9_1186=(*sc_set0.UserUniforms).uv2Scale;
l9_1185=l9_1186;
float2 l9_1187=float2(0.0);
l9_1187=l9_1185;
float2 l9_1188=float2(0.0);
float2 l9_1189=(*sc_set0.UserUniforms).uv2Offset;
l9_1188=l9_1189;
float2 l9_1190=float2(0.0);
l9_1190=l9_1188;
float2 l9_1191=float2(0.0);
l9_1191=(l9_1174*l9_1187)+l9_1190;
float2 l9_1192=float2(0.0);
l9_1192=l9_1191+(l9_1190*(l9_1172.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1170=l9_1192;
l9_1173=l9_1170;
}
else
{
float2 l9_1193=float2(0.0);
float2 l9_1194=float2(0.0);
float2 l9_1195=float2(0.0);
float2 l9_1196=float2(0.0);
float2 l9_1197=float2(0.0);
ssGlobals l9_1198=l9_1172;
float2 l9_1199;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1200=float2(0.0);
l9_1200=l9_1198.Surface_UVCoord0;
l9_1194=l9_1200;
l9_1199=l9_1194;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1201=float2(0.0);
l9_1201=l9_1198.Surface_UVCoord1;
l9_1195=l9_1201;
l9_1199=l9_1195;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1202=float2(0.0);
l9_1202=l9_1198.gScreenCoord;
l9_1196=l9_1202;
l9_1199=l9_1196;
}
else
{
float2 l9_1203=float2(0.0);
l9_1203=l9_1198.Surface_UVCoord0;
l9_1197=l9_1203;
l9_1199=l9_1197;
}
}
}
l9_1193=l9_1199;
float2 l9_1204=float2(0.0);
float2 l9_1205=(*sc_set0.UserUniforms).uv2Scale;
l9_1204=l9_1205;
float2 l9_1206=float2(0.0);
l9_1206=l9_1204;
float2 l9_1207=float2(0.0);
float2 l9_1208=(*sc_set0.UserUniforms).uv2Offset;
l9_1207=l9_1208;
float2 l9_1209=float2(0.0);
l9_1209=l9_1207;
float2 l9_1210=float2(0.0);
l9_1210=(l9_1193*l9_1206)+l9_1209;
l9_1171=l9_1210;
l9_1173=l9_1171;
}
l9_1169=l9_1173;
l9_1165=l9_1169;
l9_1168=l9_1165;
}
else
{
float2 l9_1211=float2(0.0);
l9_1211=l9_1167.Surface_UVCoord0;
l9_1166=l9_1211;
l9_1168=l9_1166;
}
l9_1164=l9_1168;
float2 l9_1212=float2(0.0);
l9_1212=l9_1164;
float2 l9_1213=float2(0.0);
l9_1213=l9_1212;
l9_1157=l9_1213;
l9_1160=l9_1157;
}
else
{
float2 l9_1214=float2(0.0);
l9_1214=l9_1159.Surface_UVCoord0;
l9_1158=l9_1214;
l9_1160=l9_1158;
}
}
}
}
l9_1153=l9_1160;
float2 l9_1215=float2(0.0);
float2 l9_1216=(*sc_set0.UserUniforms).uv3Scale;
l9_1215=l9_1216;
float2 l9_1217=float2(0.0);
l9_1217=l9_1215;
float2 l9_1218=float2(0.0);
float2 l9_1219=(*sc_set0.UserUniforms).uv3Offset;
l9_1218=l9_1219;
float2 l9_1220=float2(0.0);
l9_1220=l9_1218;
float2 l9_1221=float2(0.0);
l9_1221=(l9_1153*l9_1217)+l9_1220;
l9_1080=l9_1221;
l9_1082=l9_1080;
}
l9_1078=l9_1082;
l9_1074=l9_1078;
l9_1077=l9_1074;
}
else
{
float2 l9_1222=float2(0.0);
l9_1222=l9_1076.Surface_UVCoord0;
l9_1075=l9_1222;
l9_1077=l9_1075;
}
l9_1073=l9_1077;
float2 l9_1223=float2(0.0);
l9_1223=l9_1073;
float2 l9_1224=float2(0.0);
l9_1224=l9_1223;
l9_1017=l9_1224;
l9_1020=l9_1017;
}
else
{
float2 l9_1225=float2(0.0);
l9_1225=l9_1019.Surface_UVCoord0;
l9_1018=l9_1225;
l9_1020=l9_1018;
}
}
}
}
l9_1013=l9_1020;
float4 l9_1226=float4(0.0);
int l9_1227;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_1228=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1228=0;
}
else
{
l9_1228=in.varStereoViewID;
}
int l9_1229=l9_1228;
l9_1227=1-l9_1229;
}
else
{
int l9_1230=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1230=0;
}
else
{
l9_1230=in.varStereoViewID;
}
int l9_1231=l9_1230;
l9_1227=l9_1231;
}
int l9_1232=l9_1227;
int l9_1233=baseTexLayout_tmp;
int l9_1234=l9_1232;
float2 l9_1235=l9_1013;
bool l9_1236=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_1237=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_1238=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_1239=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_1240=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_1241=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_1242=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_1243=0.0;
bool l9_1244=l9_1241&&(!l9_1239);
float l9_1245=1.0;
float l9_1246=l9_1235.x;
int l9_1247=l9_1238.x;
if (l9_1247==1)
{
l9_1246=fract(l9_1246);
}
else
{
if (l9_1247==2)
{
float l9_1248=fract(l9_1246);
float l9_1249=l9_1246-l9_1248;
float l9_1250=step(0.25,fract(l9_1249*0.5));
l9_1246=mix(l9_1248,1.0-l9_1248,fast::clamp(l9_1250,0.0,1.0));
}
}
l9_1235.x=l9_1246;
float l9_1251=l9_1235.y;
int l9_1252=l9_1238.y;
if (l9_1252==1)
{
l9_1251=fract(l9_1251);
}
else
{
if (l9_1252==2)
{
float l9_1253=fract(l9_1251);
float l9_1254=l9_1251-l9_1253;
float l9_1255=step(0.25,fract(l9_1254*0.5));
l9_1251=mix(l9_1253,1.0-l9_1253,fast::clamp(l9_1255,0.0,1.0));
}
}
l9_1235.y=l9_1251;
if (l9_1239)
{
bool l9_1256=l9_1241;
bool l9_1257;
if (l9_1256)
{
l9_1257=l9_1238.x==3;
}
else
{
l9_1257=l9_1256;
}
float l9_1258=l9_1235.x;
float l9_1259=l9_1240.x;
float l9_1260=l9_1240.z;
bool l9_1261=l9_1257;
float l9_1262=l9_1245;
float l9_1263=fast::clamp(l9_1258,l9_1259,l9_1260);
float l9_1264=step(abs(l9_1258-l9_1263),9.9999997e-06);
l9_1262*=(l9_1264+((1.0-float(l9_1261))*(1.0-l9_1264)));
l9_1258=l9_1263;
l9_1235.x=l9_1258;
l9_1245=l9_1262;
bool l9_1265=l9_1241;
bool l9_1266;
if (l9_1265)
{
l9_1266=l9_1238.y==3;
}
else
{
l9_1266=l9_1265;
}
float l9_1267=l9_1235.y;
float l9_1268=l9_1240.y;
float l9_1269=l9_1240.w;
bool l9_1270=l9_1266;
float l9_1271=l9_1245;
float l9_1272=fast::clamp(l9_1267,l9_1268,l9_1269);
float l9_1273=step(abs(l9_1267-l9_1272),9.9999997e-06);
l9_1271*=(l9_1273+((1.0-float(l9_1270))*(1.0-l9_1273)));
l9_1267=l9_1272;
l9_1235.y=l9_1267;
l9_1245=l9_1271;
}
float2 l9_1274=l9_1235;
bool l9_1275=l9_1236;
float3x3 l9_1276=l9_1237;
if (l9_1275)
{
l9_1274=float2((l9_1276*float3(l9_1274,1.0)).xy);
}
float2 l9_1277=l9_1274;
l9_1235=l9_1277;
float l9_1278=l9_1235.x;
int l9_1279=l9_1238.x;
bool l9_1280=l9_1244;
float l9_1281=l9_1245;
if ((l9_1279==0)||(l9_1279==3))
{
float l9_1282=l9_1278;
float l9_1283=0.0;
float l9_1284=1.0;
bool l9_1285=l9_1280;
float l9_1286=l9_1281;
float l9_1287=fast::clamp(l9_1282,l9_1283,l9_1284);
float l9_1288=step(abs(l9_1282-l9_1287),9.9999997e-06);
l9_1286*=(l9_1288+((1.0-float(l9_1285))*(1.0-l9_1288)));
l9_1282=l9_1287;
l9_1278=l9_1282;
l9_1281=l9_1286;
}
l9_1235.x=l9_1278;
l9_1245=l9_1281;
float l9_1289=l9_1235.y;
int l9_1290=l9_1238.y;
bool l9_1291=l9_1244;
float l9_1292=l9_1245;
if ((l9_1290==0)||(l9_1290==3))
{
float l9_1293=l9_1289;
float l9_1294=0.0;
float l9_1295=1.0;
bool l9_1296=l9_1291;
float l9_1297=l9_1292;
float l9_1298=fast::clamp(l9_1293,l9_1294,l9_1295);
float l9_1299=step(abs(l9_1293-l9_1298),9.9999997e-06);
l9_1297*=(l9_1299+((1.0-float(l9_1296))*(1.0-l9_1299)));
l9_1293=l9_1298;
l9_1289=l9_1293;
l9_1292=l9_1297;
}
l9_1235.y=l9_1289;
l9_1245=l9_1292;
float2 l9_1300=l9_1235;
int l9_1301=l9_1233;
int l9_1302=l9_1234;
float l9_1303=l9_1243;
float2 l9_1304=l9_1300;
int l9_1305=l9_1301;
int l9_1306=l9_1302;
float3 l9_1307=float3(0.0);
if (l9_1305==0)
{
l9_1307=float3(l9_1304,0.0);
}
else
{
if (l9_1305==1)
{
l9_1307=float3(l9_1304.x,(l9_1304.y*0.5)+(0.5-(float(l9_1306)*0.5)),0.0);
}
else
{
l9_1307=float3(l9_1304,float(l9_1306));
}
}
float3 l9_1308=l9_1307;
float3 l9_1309=l9_1308;
float4 l9_1310=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_1309.xy,bias(l9_1303));
float4 l9_1311=l9_1310;
if (l9_1241)
{
l9_1311=mix(l9_1242,l9_1311,float4(l9_1245));
}
float4 l9_1312=l9_1311;
l9_1226=l9_1312;
l9_1009=l9_1226;
l9_1012=l9_1009;
}
else
{
l9_1012=l9_1010;
}
l9_1008=l9_1012;
float4 l9_1313=float4(0.0);
l9_1313=l9_1007*l9_1008;
float4 l9_1314=float4(0.0);
l9_1314=l9_1313;
float4 l9_1315=float4(0.0);
l9_1315=l9_1314;
l9_671=l9_1315.xyz;
l9_673=l9_671;
}
l9_669=l9_673;
float3 l9_1316=float3(0.0);
l9_1316=l9_669;
float3 l9_1317=float3(0.0);
l9_1317=l9_1316;
float4 l9_1318=float4(0.0);
l9_1318=float4(l9_1317.x,l9_1317.y,l9_1317.z,l9_1318.w);
l9_1318.w=(*sc_set0.UserUniforms).Port_Value2_N073;
param_2=l9_1318;
param_3=param_2;
}
Result_N363=param_3;
float4 Export_N364=float4(0.0);
Export_N364=Result_N363;
float4 Output_N5=float4(0.0);
float4 param_5=(*sc_set0.UserUniforms).baseColor;
Output_N5=param_5;
float4 Value_N384=float4(0.0);
Value_N384=Output_N5;
float4 Result_N369=float4(0.0);
float4 param_6=float4(0.0);
float4 param_7=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals param_9=Globals;
float4 param_8;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_1319=float2(0.0);
float2 l9_1320=float2(0.0);
float2 l9_1321=float2(0.0);
float2 l9_1322=float2(0.0);
float2 l9_1323=float2(0.0);
float2 l9_1324=float2(0.0);
ssGlobals l9_1325=param_9;
float2 l9_1326;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_1327=float2(0.0);
l9_1327=l9_1325.Surface_UVCoord0;
l9_1320=l9_1327;
l9_1326=l9_1320;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_1328=float2(0.0);
l9_1328=l9_1325.Surface_UVCoord1;
l9_1321=l9_1328;
l9_1326=l9_1321;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_1329=float2(0.0);
float2 l9_1330=float2(0.0);
float2 l9_1331=float2(0.0);
ssGlobals l9_1332=l9_1325;
float2 l9_1333;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1334=float2(0.0);
float2 l9_1335=float2(0.0);
float2 l9_1336=float2(0.0);
ssGlobals l9_1337=l9_1332;
float2 l9_1338;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1339=float2(0.0);
float2 l9_1340=float2(0.0);
float2 l9_1341=float2(0.0);
float2 l9_1342=float2(0.0);
float2 l9_1343=float2(0.0);
ssGlobals l9_1344=l9_1337;
float2 l9_1345;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1346=float2(0.0);
l9_1346=l9_1344.Surface_UVCoord0;
l9_1340=l9_1346;
l9_1345=l9_1340;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1347=float2(0.0);
l9_1347=l9_1344.Surface_UVCoord1;
l9_1341=l9_1347;
l9_1345=l9_1341;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1348=float2(0.0);
l9_1348=l9_1344.gScreenCoord;
l9_1342=l9_1348;
l9_1345=l9_1342;
}
else
{
float2 l9_1349=float2(0.0);
l9_1349=l9_1344.Surface_UVCoord0;
l9_1343=l9_1349;
l9_1345=l9_1343;
}
}
}
l9_1339=l9_1345;
float2 l9_1350=float2(0.0);
float2 l9_1351=(*sc_set0.UserUniforms).uv2Scale;
l9_1350=l9_1351;
float2 l9_1352=float2(0.0);
l9_1352=l9_1350;
float2 l9_1353=float2(0.0);
float2 l9_1354=(*sc_set0.UserUniforms).uv2Offset;
l9_1353=l9_1354;
float2 l9_1355=float2(0.0);
l9_1355=l9_1353;
float2 l9_1356=float2(0.0);
l9_1356=(l9_1339*l9_1352)+l9_1355;
float2 l9_1357=float2(0.0);
l9_1357=l9_1356+(l9_1355*(l9_1337.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1335=l9_1357;
l9_1338=l9_1335;
}
else
{
float2 l9_1358=float2(0.0);
float2 l9_1359=float2(0.0);
float2 l9_1360=float2(0.0);
float2 l9_1361=float2(0.0);
float2 l9_1362=float2(0.0);
ssGlobals l9_1363=l9_1337;
float2 l9_1364;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1365=float2(0.0);
l9_1365=l9_1363.Surface_UVCoord0;
l9_1359=l9_1365;
l9_1364=l9_1359;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1366=float2(0.0);
l9_1366=l9_1363.Surface_UVCoord1;
l9_1360=l9_1366;
l9_1364=l9_1360;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1367=float2(0.0);
l9_1367=l9_1363.gScreenCoord;
l9_1361=l9_1367;
l9_1364=l9_1361;
}
else
{
float2 l9_1368=float2(0.0);
l9_1368=l9_1363.Surface_UVCoord0;
l9_1362=l9_1368;
l9_1364=l9_1362;
}
}
}
l9_1358=l9_1364;
float2 l9_1369=float2(0.0);
float2 l9_1370=(*sc_set0.UserUniforms).uv2Scale;
l9_1369=l9_1370;
float2 l9_1371=float2(0.0);
l9_1371=l9_1369;
float2 l9_1372=float2(0.0);
float2 l9_1373=(*sc_set0.UserUniforms).uv2Offset;
l9_1372=l9_1373;
float2 l9_1374=float2(0.0);
l9_1374=l9_1372;
float2 l9_1375=float2(0.0);
l9_1375=(l9_1358*l9_1371)+l9_1374;
l9_1336=l9_1375;
l9_1338=l9_1336;
}
l9_1334=l9_1338;
l9_1330=l9_1334;
l9_1333=l9_1330;
}
else
{
float2 l9_1376=float2(0.0);
l9_1376=l9_1332.Surface_UVCoord0;
l9_1331=l9_1376;
l9_1333=l9_1331;
}
l9_1329=l9_1333;
float2 l9_1377=float2(0.0);
l9_1377=l9_1329;
float2 l9_1378=float2(0.0);
l9_1378=l9_1377;
l9_1322=l9_1378;
l9_1326=l9_1322;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_1379=float2(0.0);
float2 l9_1380=float2(0.0);
float2 l9_1381=float2(0.0);
ssGlobals l9_1382=l9_1325;
float2 l9_1383;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_1384=float2(0.0);
float2 l9_1385=float2(0.0);
float2 l9_1386=float2(0.0);
ssGlobals l9_1387=l9_1382;
float2 l9_1388;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1389=float2(0.0);
float2 l9_1390=float2(0.0);
float2 l9_1391=float2(0.0);
float2 l9_1392=float2(0.0);
float2 l9_1393=float2(0.0);
float2 l9_1394=float2(0.0);
ssGlobals l9_1395=l9_1387;
float2 l9_1396;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1397=float2(0.0);
l9_1397=l9_1395.Surface_UVCoord0;
l9_1390=l9_1397;
l9_1396=l9_1390;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1398=float2(0.0);
l9_1398=l9_1395.Surface_UVCoord1;
l9_1391=l9_1398;
l9_1396=l9_1391;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1399=float2(0.0);
l9_1399=l9_1395.gScreenCoord;
l9_1392=l9_1399;
l9_1396=l9_1392;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1400=float2(0.0);
float2 l9_1401=float2(0.0);
float2 l9_1402=float2(0.0);
ssGlobals l9_1403=l9_1395;
float2 l9_1404;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1405=float2(0.0);
float2 l9_1406=float2(0.0);
float2 l9_1407=float2(0.0);
ssGlobals l9_1408=l9_1403;
float2 l9_1409;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1410=float2(0.0);
float2 l9_1411=float2(0.0);
float2 l9_1412=float2(0.0);
float2 l9_1413=float2(0.0);
float2 l9_1414=float2(0.0);
ssGlobals l9_1415=l9_1408;
float2 l9_1416;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1417=float2(0.0);
l9_1417=l9_1415.Surface_UVCoord0;
l9_1411=l9_1417;
l9_1416=l9_1411;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1418=float2(0.0);
l9_1418=l9_1415.Surface_UVCoord1;
l9_1412=l9_1418;
l9_1416=l9_1412;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1419=float2(0.0);
l9_1419=l9_1415.gScreenCoord;
l9_1413=l9_1419;
l9_1416=l9_1413;
}
else
{
float2 l9_1420=float2(0.0);
l9_1420=l9_1415.Surface_UVCoord0;
l9_1414=l9_1420;
l9_1416=l9_1414;
}
}
}
l9_1410=l9_1416;
float2 l9_1421=float2(0.0);
float2 l9_1422=(*sc_set0.UserUniforms).uv2Scale;
l9_1421=l9_1422;
float2 l9_1423=float2(0.0);
l9_1423=l9_1421;
float2 l9_1424=float2(0.0);
float2 l9_1425=(*sc_set0.UserUniforms).uv2Offset;
l9_1424=l9_1425;
float2 l9_1426=float2(0.0);
l9_1426=l9_1424;
float2 l9_1427=float2(0.0);
l9_1427=(l9_1410*l9_1423)+l9_1426;
float2 l9_1428=float2(0.0);
l9_1428=l9_1427+(l9_1426*(l9_1408.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1406=l9_1428;
l9_1409=l9_1406;
}
else
{
float2 l9_1429=float2(0.0);
float2 l9_1430=float2(0.0);
float2 l9_1431=float2(0.0);
float2 l9_1432=float2(0.0);
float2 l9_1433=float2(0.0);
ssGlobals l9_1434=l9_1408;
float2 l9_1435;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1436=float2(0.0);
l9_1436=l9_1434.Surface_UVCoord0;
l9_1430=l9_1436;
l9_1435=l9_1430;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1437=float2(0.0);
l9_1437=l9_1434.Surface_UVCoord1;
l9_1431=l9_1437;
l9_1435=l9_1431;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1438=float2(0.0);
l9_1438=l9_1434.gScreenCoord;
l9_1432=l9_1438;
l9_1435=l9_1432;
}
else
{
float2 l9_1439=float2(0.0);
l9_1439=l9_1434.Surface_UVCoord0;
l9_1433=l9_1439;
l9_1435=l9_1433;
}
}
}
l9_1429=l9_1435;
float2 l9_1440=float2(0.0);
float2 l9_1441=(*sc_set0.UserUniforms).uv2Scale;
l9_1440=l9_1441;
float2 l9_1442=float2(0.0);
l9_1442=l9_1440;
float2 l9_1443=float2(0.0);
float2 l9_1444=(*sc_set0.UserUniforms).uv2Offset;
l9_1443=l9_1444;
float2 l9_1445=float2(0.0);
l9_1445=l9_1443;
float2 l9_1446=float2(0.0);
l9_1446=(l9_1429*l9_1442)+l9_1445;
l9_1407=l9_1446;
l9_1409=l9_1407;
}
l9_1405=l9_1409;
l9_1401=l9_1405;
l9_1404=l9_1401;
}
else
{
float2 l9_1447=float2(0.0);
l9_1447=l9_1403.Surface_UVCoord0;
l9_1402=l9_1447;
l9_1404=l9_1402;
}
l9_1400=l9_1404;
float2 l9_1448=float2(0.0);
l9_1448=l9_1400;
float2 l9_1449=float2(0.0);
l9_1449=l9_1448;
l9_1393=l9_1449;
l9_1396=l9_1393;
}
else
{
float2 l9_1450=float2(0.0);
l9_1450=l9_1395.Surface_UVCoord0;
l9_1394=l9_1450;
l9_1396=l9_1394;
}
}
}
}
l9_1389=l9_1396;
float2 l9_1451=float2(0.0);
float2 l9_1452=(*sc_set0.UserUniforms).uv3Scale;
l9_1451=l9_1452;
float2 l9_1453=float2(0.0);
l9_1453=l9_1451;
float2 l9_1454=float2(0.0);
float2 l9_1455=(*sc_set0.UserUniforms).uv3Offset;
l9_1454=l9_1455;
float2 l9_1456=float2(0.0);
l9_1456=l9_1454;
float2 l9_1457=float2(0.0);
l9_1457=(l9_1389*l9_1453)+l9_1456;
float2 l9_1458=float2(0.0);
l9_1458=l9_1457+(l9_1456*(l9_1387.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1385=l9_1458;
l9_1388=l9_1385;
}
else
{
float2 l9_1459=float2(0.0);
float2 l9_1460=float2(0.0);
float2 l9_1461=float2(0.0);
float2 l9_1462=float2(0.0);
float2 l9_1463=float2(0.0);
float2 l9_1464=float2(0.0);
ssGlobals l9_1465=l9_1387;
float2 l9_1466;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1467=float2(0.0);
l9_1467=l9_1465.Surface_UVCoord0;
l9_1460=l9_1467;
l9_1466=l9_1460;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1468=float2(0.0);
l9_1468=l9_1465.Surface_UVCoord1;
l9_1461=l9_1468;
l9_1466=l9_1461;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1469=float2(0.0);
l9_1469=l9_1465.gScreenCoord;
l9_1462=l9_1469;
l9_1466=l9_1462;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1470=float2(0.0);
float2 l9_1471=float2(0.0);
float2 l9_1472=float2(0.0);
ssGlobals l9_1473=l9_1465;
float2 l9_1474;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1475=float2(0.0);
float2 l9_1476=float2(0.0);
float2 l9_1477=float2(0.0);
ssGlobals l9_1478=l9_1473;
float2 l9_1479;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1480=float2(0.0);
float2 l9_1481=float2(0.0);
float2 l9_1482=float2(0.0);
float2 l9_1483=float2(0.0);
float2 l9_1484=float2(0.0);
ssGlobals l9_1485=l9_1478;
float2 l9_1486;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1487=float2(0.0);
l9_1487=l9_1485.Surface_UVCoord0;
l9_1481=l9_1487;
l9_1486=l9_1481;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1488=float2(0.0);
l9_1488=l9_1485.Surface_UVCoord1;
l9_1482=l9_1488;
l9_1486=l9_1482;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1489=float2(0.0);
l9_1489=l9_1485.gScreenCoord;
l9_1483=l9_1489;
l9_1486=l9_1483;
}
else
{
float2 l9_1490=float2(0.0);
l9_1490=l9_1485.Surface_UVCoord0;
l9_1484=l9_1490;
l9_1486=l9_1484;
}
}
}
l9_1480=l9_1486;
float2 l9_1491=float2(0.0);
float2 l9_1492=(*sc_set0.UserUniforms).uv2Scale;
l9_1491=l9_1492;
float2 l9_1493=float2(0.0);
l9_1493=l9_1491;
float2 l9_1494=float2(0.0);
float2 l9_1495=(*sc_set0.UserUniforms).uv2Offset;
l9_1494=l9_1495;
float2 l9_1496=float2(0.0);
l9_1496=l9_1494;
float2 l9_1497=float2(0.0);
l9_1497=(l9_1480*l9_1493)+l9_1496;
float2 l9_1498=float2(0.0);
l9_1498=l9_1497+(l9_1496*(l9_1478.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1476=l9_1498;
l9_1479=l9_1476;
}
else
{
float2 l9_1499=float2(0.0);
float2 l9_1500=float2(0.0);
float2 l9_1501=float2(0.0);
float2 l9_1502=float2(0.0);
float2 l9_1503=float2(0.0);
ssGlobals l9_1504=l9_1478;
float2 l9_1505;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1506=float2(0.0);
l9_1506=l9_1504.Surface_UVCoord0;
l9_1500=l9_1506;
l9_1505=l9_1500;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1507=float2(0.0);
l9_1507=l9_1504.Surface_UVCoord1;
l9_1501=l9_1507;
l9_1505=l9_1501;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1508=float2(0.0);
l9_1508=l9_1504.gScreenCoord;
l9_1502=l9_1508;
l9_1505=l9_1502;
}
else
{
float2 l9_1509=float2(0.0);
l9_1509=l9_1504.Surface_UVCoord0;
l9_1503=l9_1509;
l9_1505=l9_1503;
}
}
}
l9_1499=l9_1505;
float2 l9_1510=float2(0.0);
float2 l9_1511=(*sc_set0.UserUniforms).uv2Scale;
l9_1510=l9_1511;
float2 l9_1512=float2(0.0);
l9_1512=l9_1510;
float2 l9_1513=float2(0.0);
float2 l9_1514=(*sc_set0.UserUniforms).uv2Offset;
l9_1513=l9_1514;
float2 l9_1515=float2(0.0);
l9_1515=l9_1513;
float2 l9_1516=float2(0.0);
l9_1516=(l9_1499*l9_1512)+l9_1515;
l9_1477=l9_1516;
l9_1479=l9_1477;
}
l9_1475=l9_1479;
l9_1471=l9_1475;
l9_1474=l9_1471;
}
else
{
float2 l9_1517=float2(0.0);
l9_1517=l9_1473.Surface_UVCoord0;
l9_1472=l9_1517;
l9_1474=l9_1472;
}
l9_1470=l9_1474;
float2 l9_1518=float2(0.0);
l9_1518=l9_1470;
float2 l9_1519=float2(0.0);
l9_1519=l9_1518;
l9_1463=l9_1519;
l9_1466=l9_1463;
}
else
{
float2 l9_1520=float2(0.0);
l9_1520=l9_1465.Surface_UVCoord0;
l9_1464=l9_1520;
l9_1466=l9_1464;
}
}
}
}
l9_1459=l9_1466;
float2 l9_1521=float2(0.0);
float2 l9_1522=(*sc_set0.UserUniforms).uv3Scale;
l9_1521=l9_1522;
float2 l9_1523=float2(0.0);
l9_1523=l9_1521;
float2 l9_1524=float2(0.0);
float2 l9_1525=(*sc_set0.UserUniforms).uv3Offset;
l9_1524=l9_1525;
float2 l9_1526=float2(0.0);
l9_1526=l9_1524;
float2 l9_1527=float2(0.0);
l9_1527=(l9_1459*l9_1523)+l9_1526;
l9_1386=l9_1527;
l9_1388=l9_1386;
}
l9_1384=l9_1388;
l9_1380=l9_1384;
l9_1383=l9_1380;
}
else
{
float2 l9_1528=float2(0.0);
l9_1528=l9_1382.Surface_UVCoord0;
l9_1381=l9_1528;
l9_1383=l9_1381;
}
l9_1379=l9_1383;
float2 l9_1529=float2(0.0);
l9_1529=l9_1379;
float2 l9_1530=float2(0.0);
l9_1530=l9_1529;
l9_1323=l9_1530;
l9_1326=l9_1323;
}
else
{
float2 l9_1531=float2(0.0);
l9_1531=l9_1325.Surface_UVCoord0;
l9_1324=l9_1531;
l9_1326=l9_1324;
}
}
}
}
l9_1319=l9_1326;
float4 l9_1532=float4(0.0);
int l9_1533;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_1534=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1534=0;
}
else
{
l9_1534=in.varStereoViewID;
}
int l9_1535=l9_1534;
l9_1533=1-l9_1535;
}
else
{
int l9_1536=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1536=0;
}
else
{
l9_1536=in.varStereoViewID;
}
int l9_1537=l9_1536;
l9_1533=l9_1537;
}
int l9_1538=l9_1533;
int l9_1539=baseTexLayout_tmp;
int l9_1540=l9_1538;
float2 l9_1541=l9_1319;
bool l9_1542=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_1543=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_1544=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_1545=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_1546=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_1547=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_1548=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_1549=0.0;
bool l9_1550=l9_1547&&(!l9_1545);
float l9_1551=1.0;
float l9_1552=l9_1541.x;
int l9_1553=l9_1544.x;
if (l9_1553==1)
{
l9_1552=fract(l9_1552);
}
else
{
if (l9_1553==2)
{
float l9_1554=fract(l9_1552);
float l9_1555=l9_1552-l9_1554;
float l9_1556=step(0.25,fract(l9_1555*0.5));
l9_1552=mix(l9_1554,1.0-l9_1554,fast::clamp(l9_1556,0.0,1.0));
}
}
l9_1541.x=l9_1552;
float l9_1557=l9_1541.y;
int l9_1558=l9_1544.y;
if (l9_1558==1)
{
l9_1557=fract(l9_1557);
}
else
{
if (l9_1558==2)
{
float l9_1559=fract(l9_1557);
float l9_1560=l9_1557-l9_1559;
float l9_1561=step(0.25,fract(l9_1560*0.5));
l9_1557=mix(l9_1559,1.0-l9_1559,fast::clamp(l9_1561,0.0,1.0));
}
}
l9_1541.y=l9_1557;
if (l9_1545)
{
bool l9_1562=l9_1547;
bool l9_1563;
if (l9_1562)
{
l9_1563=l9_1544.x==3;
}
else
{
l9_1563=l9_1562;
}
float l9_1564=l9_1541.x;
float l9_1565=l9_1546.x;
float l9_1566=l9_1546.z;
bool l9_1567=l9_1563;
float l9_1568=l9_1551;
float l9_1569=fast::clamp(l9_1564,l9_1565,l9_1566);
float l9_1570=step(abs(l9_1564-l9_1569),9.9999997e-06);
l9_1568*=(l9_1570+((1.0-float(l9_1567))*(1.0-l9_1570)));
l9_1564=l9_1569;
l9_1541.x=l9_1564;
l9_1551=l9_1568;
bool l9_1571=l9_1547;
bool l9_1572;
if (l9_1571)
{
l9_1572=l9_1544.y==3;
}
else
{
l9_1572=l9_1571;
}
float l9_1573=l9_1541.y;
float l9_1574=l9_1546.y;
float l9_1575=l9_1546.w;
bool l9_1576=l9_1572;
float l9_1577=l9_1551;
float l9_1578=fast::clamp(l9_1573,l9_1574,l9_1575);
float l9_1579=step(abs(l9_1573-l9_1578),9.9999997e-06);
l9_1577*=(l9_1579+((1.0-float(l9_1576))*(1.0-l9_1579)));
l9_1573=l9_1578;
l9_1541.y=l9_1573;
l9_1551=l9_1577;
}
float2 l9_1580=l9_1541;
bool l9_1581=l9_1542;
float3x3 l9_1582=l9_1543;
if (l9_1581)
{
l9_1580=float2((l9_1582*float3(l9_1580,1.0)).xy);
}
float2 l9_1583=l9_1580;
l9_1541=l9_1583;
float l9_1584=l9_1541.x;
int l9_1585=l9_1544.x;
bool l9_1586=l9_1550;
float l9_1587=l9_1551;
if ((l9_1585==0)||(l9_1585==3))
{
float l9_1588=l9_1584;
float l9_1589=0.0;
float l9_1590=1.0;
bool l9_1591=l9_1586;
float l9_1592=l9_1587;
float l9_1593=fast::clamp(l9_1588,l9_1589,l9_1590);
float l9_1594=step(abs(l9_1588-l9_1593),9.9999997e-06);
l9_1592*=(l9_1594+((1.0-float(l9_1591))*(1.0-l9_1594)));
l9_1588=l9_1593;
l9_1584=l9_1588;
l9_1587=l9_1592;
}
l9_1541.x=l9_1584;
l9_1551=l9_1587;
float l9_1595=l9_1541.y;
int l9_1596=l9_1544.y;
bool l9_1597=l9_1550;
float l9_1598=l9_1551;
if ((l9_1596==0)||(l9_1596==3))
{
float l9_1599=l9_1595;
float l9_1600=0.0;
float l9_1601=1.0;
bool l9_1602=l9_1597;
float l9_1603=l9_1598;
float l9_1604=fast::clamp(l9_1599,l9_1600,l9_1601);
float l9_1605=step(abs(l9_1599-l9_1604),9.9999997e-06);
l9_1603*=(l9_1605+((1.0-float(l9_1602))*(1.0-l9_1605)));
l9_1599=l9_1604;
l9_1595=l9_1599;
l9_1598=l9_1603;
}
l9_1541.y=l9_1595;
l9_1551=l9_1598;
float2 l9_1606=l9_1541;
int l9_1607=l9_1539;
int l9_1608=l9_1540;
float l9_1609=l9_1549;
float2 l9_1610=l9_1606;
int l9_1611=l9_1607;
int l9_1612=l9_1608;
float3 l9_1613=float3(0.0);
if (l9_1611==0)
{
l9_1613=float3(l9_1610,0.0);
}
else
{
if (l9_1611==1)
{
l9_1613=float3(l9_1610.x,(l9_1610.y*0.5)+(0.5-(float(l9_1612)*0.5)),0.0);
}
else
{
l9_1613=float3(l9_1610,float(l9_1612));
}
}
float3 l9_1614=l9_1613;
float3 l9_1615=l9_1614;
float4 l9_1616=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_1615.xy,bias(l9_1609));
float4 l9_1617=l9_1616;
if (l9_1547)
{
l9_1617=mix(l9_1548,l9_1617,float4(l9_1551));
}
float4 l9_1618=l9_1617;
l9_1532=l9_1618;
param_6=l9_1532;
param_8=param_6;
}
else
{
param_8=param_7;
}
Result_N369=param_8;
float4 Output_N148=float4(0.0);
Output_N148=Value_N384*Result_N369;
float4 Export_N385=float4(0.0);
Export_N385=Output_N148;
float4 Value_N166=float4(0.0);
Value_N166=Export_N385;
float Output_N168=0.0;
Output_N168=Value_N166.w;
float Result_N204=0.0;
float param_10=0.0;
float param_11=(*sc_set0.UserUniforms).Port_Default_N204;
ssGlobals param_13=Globals;
float param_12;
if ((int(Tweak_N308_tmp)!=0))
{
float2 l9_1619=float2(0.0);
float2 l9_1620=float2(0.0);
float2 l9_1621=float2(0.0);
float2 l9_1622=float2(0.0);
float2 l9_1623=float2(0.0);
float2 l9_1624=float2(0.0);
ssGlobals l9_1625=param_13;
float2 l9_1626;
if (NODE_69_DROPLIST_ITEM_tmp==0)
{
float2 l9_1627=float2(0.0);
l9_1627=l9_1625.Surface_UVCoord0;
l9_1620=l9_1627;
l9_1626=l9_1620;
}
else
{
if (NODE_69_DROPLIST_ITEM_tmp==1)
{
float2 l9_1628=float2(0.0);
l9_1628=l9_1625.Surface_UVCoord1;
l9_1621=l9_1628;
l9_1626=l9_1621;
}
else
{
if (NODE_69_DROPLIST_ITEM_tmp==2)
{
float2 l9_1629=float2(0.0);
float2 l9_1630=float2(0.0);
float2 l9_1631=float2(0.0);
ssGlobals l9_1632=l9_1625;
float2 l9_1633;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1634=float2(0.0);
float2 l9_1635=float2(0.0);
float2 l9_1636=float2(0.0);
ssGlobals l9_1637=l9_1632;
float2 l9_1638;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1639=float2(0.0);
float2 l9_1640=float2(0.0);
float2 l9_1641=float2(0.0);
float2 l9_1642=float2(0.0);
float2 l9_1643=float2(0.0);
ssGlobals l9_1644=l9_1637;
float2 l9_1645;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1646=float2(0.0);
l9_1646=l9_1644.Surface_UVCoord0;
l9_1640=l9_1646;
l9_1645=l9_1640;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1647=float2(0.0);
l9_1647=l9_1644.Surface_UVCoord1;
l9_1641=l9_1647;
l9_1645=l9_1641;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1648=float2(0.0);
l9_1648=l9_1644.gScreenCoord;
l9_1642=l9_1648;
l9_1645=l9_1642;
}
else
{
float2 l9_1649=float2(0.0);
l9_1649=l9_1644.Surface_UVCoord0;
l9_1643=l9_1649;
l9_1645=l9_1643;
}
}
}
l9_1639=l9_1645;
float2 l9_1650=float2(0.0);
float2 l9_1651=(*sc_set0.UserUniforms).uv2Scale;
l9_1650=l9_1651;
float2 l9_1652=float2(0.0);
l9_1652=l9_1650;
float2 l9_1653=float2(0.0);
float2 l9_1654=(*sc_set0.UserUniforms).uv2Offset;
l9_1653=l9_1654;
float2 l9_1655=float2(0.0);
l9_1655=l9_1653;
float2 l9_1656=float2(0.0);
l9_1656=(l9_1639*l9_1652)+l9_1655;
float2 l9_1657=float2(0.0);
l9_1657=l9_1656+(l9_1655*(l9_1637.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1635=l9_1657;
l9_1638=l9_1635;
}
else
{
float2 l9_1658=float2(0.0);
float2 l9_1659=float2(0.0);
float2 l9_1660=float2(0.0);
float2 l9_1661=float2(0.0);
float2 l9_1662=float2(0.0);
ssGlobals l9_1663=l9_1637;
float2 l9_1664;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1665=float2(0.0);
l9_1665=l9_1663.Surface_UVCoord0;
l9_1659=l9_1665;
l9_1664=l9_1659;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1666=float2(0.0);
l9_1666=l9_1663.Surface_UVCoord1;
l9_1660=l9_1666;
l9_1664=l9_1660;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1667=float2(0.0);
l9_1667=l9_1663.gScreenCoord;
l9_1661=l9_1667;
l9_1664=l9_1661;
}
else
{
float2 l9_1668=float2(0.0);
l9_1668=l9_1663.Surface_UVCoord0;
l9_1662=l9_1668;
l9_1664=l9_1662;
}
}
}
l9_1658=l9_1664;
float2 l9_1669=float2(0.0);
float2 l9_1670=(*sc_set0.UserUniforms).uv2Scale;
l9_1669=l9_1670;
float2 l9_1671=float2(0.0);
l9_1671=l9_1669;
float2 l9_1672=float2(0.0);
float2 l9_1673=(*sc_set0.UserUniforms).uv2Offset;
l9_1672=l9_1673;
float2 l9_1674=float2(0.0);
l9_1674=l9_1672;
float2 l9_1675=float2(0.0);
l9_1675=(l9_1658*l9_1671)+l9_1674;
l9_1636=l9_1675;
l9_1638=l9_1636;
}
l9_1634=l9_1638;
l9_1630=l9_1634;
l9_1633=l9_1630;
}
else
{
float2 l9_1676=float2(0.0);
l9_1676=l9_1632.Surface_UVCoord0;
l9_1631=l9_1676;
l9_1633=l9_1631;
}
l9_1629=l9_1633;
float2 l9_1677=float2(0.0);
l9_1677=l9_1629;
float2 l9_1678=float2(0.0);
l9_1678=l9_1677;
l9_1622=l9_1678;
l9_1626=l9_1622;
}
else
{
if (NODE_69_DROPLIST_ITEM_tmp==3)
{
float2 l9_1679=float2(0.0);
float2 l9_1680=float2(0.0);
float2 l9_1681=float2(0.0);
ssGlobals l9_1682=l9_1625;
float2 l9_1683;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_1684=float2(0.0);
float2 l9_1685=float2(0.0);
float2 l9_1686=float2(0.0);
ssGlobals l9_1687=l9_1682;
float2 l9_1688;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1689=float2(0.0);
float2 l9_1690=float2(0.0);
float2 l9_1691=float2(0.0);
float2 l9_1692=float2(0.0);
float2 l9_1693=float2(0.0);
float2 l9_1694=float2(0.0);
ssGlobals l9_1695=l9_1687;
float2 l9_1696;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1697=float2(0.0);
l9_1697=l9_1695.Surface_UVCoord0;
l9_1690=l9_1697;
l9_1696=l9_1690;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1698=float2(0.0);
l9_1698=l9_1695.Surface_UVCoord1;
l9_1691=l9_1698;
l9_1696=l9_1691;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1699=float2(0.0);
l9_1699=l9_1695.gScreenCoord;
l9_1692=l9_1699;
l9_1696=l9_1692;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1700=float2(0.0);
float2 l9_1701=float2(0.0);
float2 l9_1702=float2(0.0);
ssGlobals l9_1703=l9_1695;
float2 l9_1704;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1705=float2(0.0);
float2 l9_1706=float2(0.0);
float2 l9_1707=float2(0.0);
ssGlobals l9_1708=l9_1703;
float2 l9_1709;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1710=float2(0.0);
float2 l9_1711=float2(0.0);
float2 l9_1712=float2(0.0);
float2 l9_1713=float2(0.0);
float2 l9_1714=float2(0.0);
ssGlobals l9_1715=l9_1708;
float2 l9_1716;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1717=float2(0.0);
l9_1717=l9_1715.Surface_UVCoord0;
l9_1711=l9_1717;
l9_1716=l9_1711;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1718=float2(0.0);
l9_1718=l9_1715.Surface_UVCoord1;
l9_1712=l9_1718;
l9_1716=l9_1712;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1719=float2(0.0);
l9_1719=l9_1715.gScreenCoord;
l9_1713=l9_1719;
l9_1716=l9_1713;
}
else
{
float2 l9_1720=float2(0.0);
l9_1720=l9_1715.Surface_UVCoord0;
l9_1714=l9_1720;
l9_1716=l9_1714;
}
}
}
l9_1710=l9_1716;
float2 l9_1721=float2(0.0);
float2 l9_1722=(*sc_set0.UserUniforms).uv2Scale;
l9_1721=l9_1722;
float2 l9_1723=float2(0.0);
l9_1723=l9_1721;
float2 l9_1724=float2(0.0);
float2 l9_1725=(*sc_set0.UserUniforms).uv2Offset;
l9_1724=l9_1725;
float2 l9_1726=float2(0.0);
l9_1726=l9_1724;
float2 l9_1727=float2(0.0);
l9_1727=(l9_1710*l9_1723)+l9_1726;
float2 l9_1728=float2(0.0);
l9_1728=l9_1727+(l9_1726*(l9_1708.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1706=l9_1728;
l9_1709=l9_1706;
}
else
{
float2 l9_1729=float2(0.0);
float2 l9_1730=float2(0.0);
float2 l9_1731=float2(0.0);
float2 l9_1732=float2(0.0);
float2 l9_1733=float2(0.0);
ssGlobals l9_1734=l9_1708;
float2 l9_1735;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1736=float2(0.0);
l9_1736=l9_1734.Surface_UVCoord0;
l9_1730=l9_1736;
l9_1735=l9_1730;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1737=float2(0.0);
l9_1737=l9_1734.Surface_UVCoord1;
l9_1731=l9_1737;
l9_1735=l9_1731;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1738=float2(0.0);
l9_1738=l9_1734.gScreenCoord;
l9_1732=l9_1738;
l9_1735=l9_1732;
}
else
{
float2 l9_1739=float2(0.0);
l9_1739=l9_1734.Surface_UVCoord0;
l9_1733=l9_1739;
l9_1735=l9_1733;
}
}
}
l9_1729=l9_1735;
float2 l9_1740=float2(0.0);
float2 l9_1741=(*sc_set0.UserUniforms).uv2Scale;
l9_1740=l9_1741;
float2 l9_1742=float2(0.0);
l9_1742=l9_1740;
float2 l9_1743=float2(0.0);
float2 l9_1744=(*sc_set0.UserUniforms).uv2Offset;
l9_1743=l9_1744;
float2 l9_1745=float2(0.0);
l9_1745=l9_1743;
float2 l9_1746=float2(0.0);
l9_1746=(l9_1729*l9_1742)+l9_1745;
l9_1707=l9_1746;
l9_1709=l9_1707;
}
l9_1705=l9_1709;
l9_1701=l9_1705;
l9_1704=l9_1701;
}
else
{
float2 l9_1747=float2(0.0);
l9_1747=l9_1703.Surface_UVCoord0;
l9_1702=l9_1747;
l9_1704=l9_1702;
}
l9_1700=l9_1704;
float2 l9_1748=float2(0.0);
l9_1748=l9_1700;
float2 l9_1749=float2(0.0);
l9_1749=l9_1748;
l9_1693=l9_1749;
l9_1696=l9_1693;
}
else
{
float2 l9_1750=float2(0.0);
l9_1750=l9_1695.Surface_UVCoord0;
l9_1694=l9_1750;
l9_1696=l9_1694;
}
}
}
}
l9_1689=l9_1696;
float2 l9_1751=float2(0.0);
float2 l9_1752=(*sc_set0.UserUniforms).uv3Scale;
l9_1751=l9_1752;
float2 l9_1753=float2(0.0);
l9_1753=l9_1751;
float2 l9_1754=float2(0.0);
float2 l9_1755=(*sc_set0.UserUniforms).uv3Offset;
l9_1754=l9_1755;
float2 l9_1756=float2(0.0);
l9_1756=l9_1754;
float2 l9_1757=float2(0.0);
l9_1757=(l9_1689*l9_1753)+l9_1756;
float2 l9_1758=float2(0.0);
l9_1758=l9_1757+(l9_1756*(l9_1687.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1685=l9_1758;
l9_1688=l9_1685;
}
else
{
float2 l9_1759=float2(0.0);
float2 l9_1760=float2(0.0);
float2 l9_1761=float2(0.0);
float2 l9_1762=float2(0.0);
float2 l9_1763=float2(0.0);
float2 l9_1764=float2(0.0);
ssGlobals l9_1765=l9_1687;
float2 l9_1766;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1767=float2(0.0);
l9_1767=l9_1765.Surface_UVCoord0;
l9_1760=l9_1767;
l9_1766=l9_1760;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1768=float2(0.0);
l9_1768=l9_1765.Surface_UVCoord1;
l9_1761=l9_1768;
l9_1766=l9_1761;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1769=float2(0.0);
l9_1769=l9_1765.gScreenCoord;
l9_1762=l9_1769;
l9_1766=l9_1762;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1770=float2(0.0);
float2 l9_1771=float2(0.0);
float2 l9_1772=float2(0.0);
ssGlobals l9_1773=l9_1765;
float2 l9_1774;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1775=float2(0.0);
float2 l9_1776=float2(0.0);
float2 l9_1777=float2(0.0);
ssGlobals l9_1778=l9_1773;
float2 l9_1779;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1780=float2(0.0);
float2 l9_1781=float2(0.0);
float2 l9_1782=float2(0.0);
float2 l9_1783=float2(0.0);
float2 l9_1784=float2(0.0);
ssGlobals l9_1785=l9_1778;
float2 l9_1786;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1787=float2(0.0);
l9_1787=l9_1785.Surface_UVCoord0;
l9_1781=l9_1787;
l9_1786=l9_1781;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1788=float2(0.0);
l9_1788=l9_1785.Surface_UVCoord1;
l9_1782=l9_1788;
l9_1786=l9_1782;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1789=float2(0.0);
l9_1789=l9_1785.gScreenCoord;
l9_1783=l9_1789;
l9_1786=l9_1783;
}
else
{
float2 l9_1790=float2(0.0);
l9_1790=l9_1785.Surface_UVCoord0;
l9_1784=l9_1790;
l9_1786=l9_1784;
}
}
}
l9_1780=l9_1786;
float2 l9_1791=float2(0.0);
float2 l9_1792=(*sc_set0.UserUniforms).uv2Scale;
l9_1791=l9_1792;
float2 l9_1793=float2(0.0);
l9_1793=l9_1791;
float2 l9_1794=float2(0.0);
float2 l9_1795=(*sc_set0.UserUniforms).uv2Offset;
l9_1794=l9_1795;
float2 l9_1796=float2(0.0);
l9_1796=l9_1794;
float2 l9_1797=float2(0.0);
l9_1797=(l9_1780*l9_1793)+l9_1796;
float2 l9_1798=float2(0.0);
l9_1798=l9_1797+(l9_1796*(l9_1778.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1776=l9_1798;
l9_1779=l9_1776;
}
else
{
float2 l9_1799=float2(0.0);
float2 l9_1800=float2(0.0);
float2 l9_1801=float2(0.0);
float2 l9_1802=float2(0.0);
float2 l9_1803=float2(0.0);
ssGlobals l9_1804=l9_1778;
float2 l9_1805;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1806=float2(0.0);
l9_1806=l9_1804.Surface_UVCoord0;
l9_1800=l9_1806;
l9_1805=l9_1800;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1807=float2(0.0);
l9_1807=l9_1804.Surface_UVCoord1;
l9_1801=l9_1807;
l9_1805=l9_1801;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1808=float2(0.0);
l9_1808=l9_1804.gScreenCoord;
l9_1802=l9_1808;
l9_1805=l9_1802;
}
else
{
float2 l9_1809=float2(0.0);
l9_1809=l9_1804.Surface_UVCoord0;
l9_1803=l9_1809;
l9_1805=l9_1803;
}
}
}
l9_1799=l9_1805;
float2 l9_1810=float2(0.0);
float2 l9_1811=(*sc_set0.UserUniforms).uv2Scale;
l9_1810=l9_1811;
float2 l9_1812=float2(0.0);
l9_1812=l9_1810;
float2 l9_1813=float2(0.0);
float2 l9_1814=(*sc_set0.UserUniforms).uv2Offset;
l9_1813=l9_1814;
float2 l9_1815=float2(0.0);
l9_1815=l9_1813;
float2 l9_1816=float2(0.0);
l9_1816=(l9_1799*l9_1812)+l9_1815;
l9_1777=l9_1816;
l9_1779=l9_1777;
}
l9_1775=l9_1779;
l9_1771=l9_1775;
l9_1774=l9_1771;
}
else
{
float2 l9_1817=float2(0.0);
l9_1817=l9_1773.Surface_UVCoord0;
l9_1772=l9_1817;
l9_1774=l9_1772;
}
l9_1770=l9_1774;
float2 l9_1818=float2(0.0);
l9_1818=l9_1770;
float2 l9_1819=float2(0.0);
l9_1819=l9_1818;
l9_1763=l9_1819;
l9_1766=l9_1763;
}
else
{
float2 l9_1820=float2(0.0);
l9_1820=l9_1765.Surface_UVCoord0;
l9_1764=l9_1820;
l9_1766=l9_1764;
}
}
}
}
l9_1759=l9_1766;
float2 l9_1821=float2(0.0);
float2 l9_1822=(*sc_set0.UserUniforms).uv3Scale;
l9_1821=l9_1822;
float2 l9_1823=float2(0.0);
l9_1823=l9_1821;
float2 l9_1824=float2(0.0);
float2 l9_1825=(*sc_set0.UserUniforms).uv3Offset;
l9_1824=l9_1825;
float2 l9_1826=float2(0.0);
l9_1826=l9_1824;
float2 l9_1827=float2(0.0);
l9_1827=(l9_1759*l9_1823)+l9_1826;
l9_1686=l9_1827;
l9_1688=l9_1686;
}
l9_1684=l9_1688;
l9_1680=l9_1684;
l9_1683=l9_1680;
}
else
{
float2 l9_1828=float2(0.0);
l9_1828=l9_1682.Surface_UVCoord0;
l9_1681=l9_1828;
l9_1683=l9_1681;
}
l9_1679=l9_1683;
float2 l9_1829=float2(0.0);
l9_1829=l9_1679;
float2 l9_1830=float2(0.0);
l9_1830=l9_1829;
l9_1623=l9_1830;
l9_1626=l9_1623;
}
else
{
float2 l9_1831=float2(0.0);
l9_1831=l9_1625.Surface_UVCoord0;
l9_1624=l9_1831;
l9_1626=l9_1624;
}
}
}
}
l9_1619=l9_1626;
float4 l9_1832=float4(0.0);
int l9_1833;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_1834=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1834=0;
}
else
{
l9_1834=in.varStereoViewID;
}
int l9_1835=l9_1834;
l9_1833=1-l9_1835;
}
else
{
int l9_1836=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1836=0;
}
else
{
l9_1836=in.varStereoViewID;
}
int l9_1837=l9_1836;
l9_1833=l9_1837;
}
int l9_1838=l9_1833;
int l9_1839=opacityTexLayout_tmp;
int l9_1840=l9_1838;
float2 l9_1841=l9_1619;
bool l9_1842=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_1843=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_1844=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_1845=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_1846=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_1847=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_1848=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_1849=0.0;
bool l9_1850=l9_1847&&(!l9_1845);
float l9_1851=1.0;
float l9_1852=l9_1841.x;
int l9_1853=l9_1844.x;
if (l9_1853==1)
{
l9_1852=fract(l9_1852);
}
else
{
if (l9_1853==2)
{
float l9_1854=fract(l9_1852);
float l9_1855=l9_1852-l9_1854;
float l9_1856=step(0.25,fract(l9_1855*0.5));
l9_1852=mix(l9_1854,1.0-l9_1854,fast::clamp(l9_1856,0.0,1.0));
}
}
l9_1841.x=l9_1852;
float l9_1857=l9_1841.y;
int l9_1858=l9_1844.y;
if (l9_1858==1)
{
l9_1857=fract(l9_1857);
}
else
{
if (l9_1858==2)
{
float l9_1859=fract(l9_1857);
float l9_1860=l9_1857-l9_1859;
float l9_1861=step(0.25,fract(l9_1860*0.5));
l9_1857=mix(l9_1859,1.0-l9_1859,fast::clamp(l9_1861,0.0,1.0));
}
}
l9_1841.y=l9_1857;
if (l9_1845)
{
bool l9_1862=l9_1847;
bool l9_1863;
if (l9_1862)
{
l9_1863=l9_1844.x==3;
}
else
{
l9_1863=l9_1862;
}
float l9_1864=l9_1841.x;
float l9_1865=l9_1846.x;
float l9_1866=l9_1846.z;
bool l9_1867=l9_1863;
float l9_1868=l9_1851;
float l9_1869=fast::clamp(l9_1864,l9_1865,l9_1866);
float l9_1870=step(abs(l9_1864-l9_1869),9.9999997e-06);
l9_1868*=(l9_1870+((1.0-float(l9_1867))*(1.0-l9_1870)));
l9_1864=l9_1869;
l9_1841.x=l9_1864;
l9_1851=l9_1868;
bool l9_1871=l9_1847;
bool l9_1872;
if (l9_1871)
{
l9_1872=l9_1844.y==3;
}
else
{
l9_1872=l9_1871;
}
float l9_1873=l9_1841.y;
float l9_1874=l9_1846.y;
float l9_1875=l9_1846.w;
bool l9_1876=l9_1872;
float l9_1877=l9_1851;
float l9_1878=fast::clamp(l9_1873,l9_1874,l9_1875);
float l9_1879=step(abs(l9_1873-l9_1878),9.9999997e-06);
l9_1877*=(l9_1879+((1.0-float(l9_1876))*(1.0-l9_1879)));
l9_1873=l9_1878;
l9_1841.y=l9_1873;
l9_1851=l9_1877;
}
float2 l9_1880=l9_1841;
bool l9_1881=l9_1842;
float3x3 l9_1882=l9_1843;
if (l9_1881)
{
l9_1880=float2((l9_1882*float3(l9_1880,1.0)).xy);
}
float2 l9_1883=l9_1880;
l9_1841=l9_1883;
float l9_1884=l9_1841.x;
int l9_1885=l9_1844.x;
bool l9_1886=l9_1850;
float l9_1887=l9_1851;
if ((l9_1885==0)||(l9_1885==3))
{
float l9_1888=l9_1884;
float l9_1889=0.0;
float l9_1890=1.0;
bool l9_1891=l9_1886;
float l9_1892=l9_1887;
float l9_1893=fast::clamp(l9_1888,l9_1889,l9_1890);
float l9_1894=step(abs(l9_1888-l9_1893),9.9999997e-06);
l9_1892*=(l9_1894+((1.0-float(l9_1891))*(1.0-l9_1894)));
l9_1888=l9_1893;
l9_1884=l9_1888;
l9_1887=l9_1892;
}
l9_1841.x=l9_1884;
l9_1851=l9_1887;
float l9_1895=l9_1841.y;
int l9_1896=l9_1844.y;
bool l9_1897=l9_1850;
float l9_1898=l9_1851;
if ((l9_1896==0)||(l9_1896==3))
{
float l9_1899=l9_1895;
float l9_1900=0.0;
float l9_1901=1.0;
bool l9_1902=l9_1897;
float l9_1903=l9_1898;
float l9_1904=fast::clamp(l9_1899,l9_1900,l9_1901);
float l9_1905=step(abs(l9_1899-l9_1904),9.9999997e-06);
l9_1903*=(l9_1905+((1.0-float(l9_1902))*(1.0-l9_1905)));
l9_1899=l9_1904;
l9_1895=l9_1899;
l9_1898=l9_1903;
}
l9_1841.y=l9_1895;
l9_1851=l9_1898;
float2 l9_1906=l9_1841;
int l9_1907=l9_1839;
int l9_1908=l9_1840;
float l9_1909=l9_1849;
float2 l9_1910=l9_1906;
int l9_1911=l9_1907;
int l9_1912=l9_1908;
float3 l9_1913=float3(0.0);
if (l9_1911==0)
{
l9_1913=float3(l9_1910,0.0);
}
else
{
if (l9_1911==1)
{
l9_1913=float3(l9_1910.x,(l9_1910.y*0.5)+(0.5-(float(l9_1912)*0.5)),0.0);
}
else
{
l9_1913=float3(l9_1910,float(l9_1912));
}
}
float3 l9_1914=l9_1913;
float3 l9_1915=l9_1914;
float4 l9_1916=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_1915.xy,bias(l9_1909));
float4 l9_1917=l9_1916;
if (l9_1847)
{
l9_1917=mix(l9_1848,l9_1917,float4(l9_1851));
}
float4 l9_1918=l9_1917;
l9_1832=l9_1918;
float l9_1919=0.0;
l9_1919=l9_1832.x;
param_10=l9_1919;
param_12=param_10;
}
else
{
param_12=param_11;
}
Result_N204=param_12;
float Output_N72=0.0;
float param_14=1.0;
float param_15=(*sc_set0.UserUniforms).Port_Input2_N072;
ssGlobals param_17=Globals;
float param_16;
if (NODE_38_DROPLIST_ITEM_tmp==1)
{
float4 l9_1920=float4(0.0);
l9_1920=param_17.VertexColor;
float l9_1921=0.0;
l9_1921=l9_1920.w;
param_14=l9_1921;
param_16=param_14;
}
else
{
param_16=param_15;
}
Output_N72=param_16;
float Output_N205=0.0;
Output_N205=(Output_N168*Result_N204)*Output_N72;
float Export_N158=0.0;
Export_N158=Output_N205;
float3 Result_N337=float3(0.0);
float3 param_18=float3(0.0);
float3 param_19=float3(0.0);
ssGlobals param_21=Globals;
float3 param_20;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_1922=float3(0.0);
l9_1922=param_21.VertexTangent_WorldSpace;
float3 l9_1923=float3(0.0);
l9_1923=param_21.VertexBinormal_WorldSpace;
float3 l9_1924=float3(0.0);
l9_1924=param_21.VertexNormal_WorldSpace;
float3x3 l9_1925=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_1925=float3x3(float3(l9_1922),float3(l9_1923),float3(l9_1924));
float2 l9_1926=float2(0.0);
float2 l9_1927=float2(0.0);
float2 l9_1928=float2(0.0);
float2 l9_1929=float2(0.0);
float2 l9_1930=float2(0.0);
float2 l9_1931=float2(0.0);
ssGlobals l9_1932=param_21;
float2 l9_1933;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_1934=float2(0.0);
l9_1934=l9_1932.Surface_UVCoord0;
l9_1927=l9_1934;
l9_1933=l9_1927;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_1935=float2(0.0);
l9_1935=l9_1932.Surface_UVCoord1;
l9_1928=l9_1935;
l9_1933=l9_1928;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_1936=float2(0.0);
float2 l9_1937=float2(0.0);
float2 l9_1938=float2(0.0);
ssGlobals l9_1939=l9_1932;
float2 l9_1940;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1941=float2(0.0);
float2 l9_1942=float2(0.0);
float2 l9_1943=float2(0.0);
ssGlobals l9_1944=l9_1939;
float2 l9_1945;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1946=float2(0.0);
float2 l9_1947=float2(0.0);
float2 l9_1948=float2(0.0);
float2 l9_1949=float2(0.0);
float2 l9_1950=float2(0.0);
ssGlobals l9_1951=l9_1944;
float2 l9_1952;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1953=float2(0.0);
l9_1953=l9_1951.Surface_UVCoord0;
l9_1947=l9_1953;
l9_1952=l9_1947;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1954=float2(0.0);
l9_1954=l9_1951.Surface_UVCoord1;
l9_1948=l9_1954;
l9_1952=l9_1948;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1955=float2(0.0);
l9_1955=l9_1951.gScreenCoord;
l9_1949=l9_1955;
l9_1952=l9_1949;
}
else
{
float2 l9_1956=float2(0.0);
l9_1956=l9_1951.Surface_UVCoord0;
l9_1950=l9_1956;
l9_1952=l9_1950;
}
}
}
l9_1946=l9_1952;
float2 l9_1957=float2(0.0);
float2 l9_1958=(*sc_set0.UserUniforms).uv2Scale;
l9_1957=l9_1958;
float2 l9_1959=float2(0.0);
l9_1959=l9_1957;
float2 l9_1960=float2(0.0);
float2 l9_1961=(*sc_set0.UserUniforms).uv2Offset;
l9_1960=l9_1961;
float2 l9_1962=float2(0.0);
l9_1962=l9_1960;
float2 l9_1963=float2(0.0);
l9_1963=(l9_1946*l9_1959)+l9_1962;
float2 l9_1964=float2(0.0);
l9_1964=l9_1963+(l9_1962*(l9_1944.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1942=l9_1964;
l9_1945=l9_1942;
}
else
{
float2 l9_1965=float2(0.0);
float2 l9_1966=float2(0.0);
float2 l9_1967=float2(0.0);
float2 l9_1968=float2(0.0);
float2 l9_1969=float2(0.0);
ssGlobals l9_1970=l9_1944;
float2 l9_1971;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1972=float2(0.0);
l9_1972=l9_1970.Surface_UVCoord0;
l9_1966=l9_1972;
l9_1971=l9_1966;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1973=float2(0.0);
l9_1973=l9_1970.Surface_UVCoord1;
l9_1967=l9_1973;
l9_1971=l9_1967;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1974=float2(0.0);
l9_1974=l9_1970.gScreenCoord;
l9_1968=l9_1974;
l9_1971=l9_1968;
}
else
{
float2 l9_1975=float2(0.0);
l9_1975=l9_1970.Surface_UVCoord0;
l9_1969=l9_1975;
l9_1971=l9_1969;
}
}
}
l9_1965=l9_1971;
float2 l9_1976=float2(0.0);
float2 l9_1977=(*sc_set0.UserUniforms).uv2Scale;
l9_1976=l9_1977;
float2 l9_1978=float2(0.0);
l9_1978=l9_1976;
float2 l9_1979=float2(0.0);
float2 l9_1980=(*sc_set0.UserUniforms).uv2Offset;
l9_1979=l9_1980;
float2 l9_1981=float2(0.0);
l9_1981=l9_1979;
float2 l9_1982=float2(0.0);
l9_1982=(l9_1965*l9_1978)+l9_1981;
l9_1943=l9_1982;
l9_1945=l9_1943;
}
l9_1941=l9_1945;
l9_1937=l9_1941;
l9_1940=l9_1937;
}
else
{
float2 l9_1983=float2(0.0);
l9_1983=l9_1939.Surface_UVCoord0;
l9_1938=l9_1983;
l9_1940=l9_1938;
}
l9_1936=l9_1940;
float2 l9_1984=float2(0.0);
l9_1984=l9_1936;
float2 l9_1985=float2(0.0);
l9_1985=l9_1984;
l9_1929=l9_1985;
l9_1933=l9_1929;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_1986=float2(0.0);
float2 l9_1987=float2(0.0);
float2 l9_1988=float2(0.0);
ssGlobals l9_1989=l9_1932;
float2 l9_1990;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_1991=float2(0.0);
float2 l9_1992=float2(0.0);
float2 l9_1993=float2(0.0);
ssGlobals l9_1994=l9_1989;
float2 l9_1995;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1996=float2(0.0);
float2 l9_1997=float2(0.0);
float2 l9_1998=float2(0.0);
float2 l9_1999=float2(0.0);
float2 l9_2000=float2(0.0);
float2 l9_2001=float2(0.0);
ssGlobals l9_2002=l9_1994;
float2 l9_2003;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2004=float2(0.0);
l9_2004=l9_2002.Surface_UVCoord0;
l9_1997=l9_2004;
l9_2003=l9_1997;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2005=float2(0.0);
l9_2005=l9_2002.Surface_UVCoord1;
l9_1998=l9_2005;
l9_2003=l9_1998;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2006=float2(0.0);
l9_2006=l9_2002.gScreenCoord;
l9_1999=l9_2006;
l9_2003=l9_1999;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2007=float2(0.0);
float2 l9_2008=float2(0.0);
float2 l9_2009=float2(0.0);
ssGlobals l9_2010=l9_2002;
float2 l9_2011;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2012=float2(0.0);
float2 l9_2013=float2(0.0);
float2 l9_2014=float2(0.0);
ssGlobals l9_2015=l9_2010;
float2 l9_2016;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2017=float2(0.0);
float2 l9_2018=float2(0.0);
float2 l9_2019=float2(0.0);
float2 l9_2020=float2(0.0);
float2 l9_2021=float2(0.0);
ssGlobals l9_2022=l9_2015;
float2 l9_2023;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2024=float2(0.0);
l9_2024=l9_2022.Surface_UVCoord0;
l9_2018=l9_2024;
l9_2023=l9_2018;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2025=float2(0.0);
l9_2025=l9_2022.Surface_UVCoord1;
l9_2019=l9_2025;
l9_2023=l9_2019;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2026=float2(0.0);
l9_2026=l9_2022.gScreenCoord;
l9_2020=l9_2026;
l9_2023=l9_2020;
}
else
{
float2 l9_2027=float2(0.0);
l9_2027=l9_2022.Surface_UVCoord0;
l9_2021=l9_2027;
l9_2023=l9_2021;
}
}
}
l9_2017=l9_2023;
float2 l9_2028=float2(0.0);
float2 l9_2029=(*sc_set0.UserUniforms).uv2Scale;
l9_2028=l9_2029;
float2 l9_2030=float2(0.0);
l9_2030=l9_2028;
float2 l9_2031=float2(0.0);
float2 l9_2032=(*sc_set0.UserUniforms).uv2Offset;
l9_2031=l9_2032;
float2 l9_2033=float2(0.0);
l9_2033=l9_2031;
float2 l9_2034=float2(0.0);
l9_2034=(l9_2017*l9_2030)+l9_2033;
float2 l9_2035=float2(0.0);
l9_2035=l9_2034+(l9_2033*(l9_2015.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2013=l9_2035;
l9_2016=l9_2013;
}
else
{
float2 l9_2036=float2(0.0);
float2 l9_2037=float2(0.0);
float2 l9_2038=float2(0.0);
float2 l9_2039=float2(0.0);
float2 l9_2040=float2(0.0);
ssGlobals l9_2041=l9_2015;
float2 l9_2042;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2043=float2(0.0);
l9_2043=l9_2041.Surface_UVCoord0;
l9_2037=l9_2043;
l9_2042=l9_2037;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2044=float2(0.0);
l9_2044=l9_2041.Surface_UVCoord1;
l9_2038=l9_2044;
l9_2042=l9_2038;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2045=float2(0.0);
l9_2045=l9_2041.gScreenCoord;
l9_2039=l9_2045;
l9_2042=l9_2039;
}
else
{
float2 l9_2046=float2(0.0);
l9_2046=l9_2041.Surface_UVCoord0;
l9_2040=l9_2046;
l9_2042=l9_2040;
}
}
}
l9_2036=l9_2042;
float2 l9_2047=float2(0.0);
float2 l9_2048=(*sc_set0.UserUniforms).uv2Scale;
l9_2047=l9_2048;
float2 l9_2049=float2(0.0);
l9_2049=l9_2047;
float2 l9_2050=float2(0.0);
float2 l9_2051=(*sc_set0.UserUniforms).uv2Offset;
l9_2050=l9_2051;
float2 l9_2052=float2(0.0);
l9_2052=l9_2050;
float2 l9_2053=float2(0.0);
l9_2053=(l9_2036*l9_2049)+l9_2052;
l9_2014=l9_2053;
l9_2016=l9_2014;
}
l9_2012=l9_2016;
l9_2008=l9_2012;
l9_2011=l9_2008;
}
else
{
float2 l9_2054=float2(0.0);
l9_2054=l9_2010.Surface_UVCoord0;
l9_2009=l9_2054;
l9_2011=l9_2009;
}
l9_2007=l9_2011;
float2 l9_2055=float2(0.0);
l9_2055=l9_2007;
float2 l9_2056=float2(0.0);
l9_2056=l9_2055;
l9_2000=l9_2056;
l9_2003=l9_2000;
}
else
{
float2 l9_2057=float2(0.0);
l9_2057=l9_2002.Surface_UVCoord0;
l9_2001=l9_2057;
l9_2003=l9_2001;
}
}
}
}
l9_1996=l9_2003;
float2 l9_2058=float2(0.0);
float2 l9_2059=(*sc_set0.UserUniforms).uv3Scale;
l9_2058=l9_2059;
float2 l9_2060=float2(0.0);
l9_2060=l9_2058;
float2 l9_2061=float2(0.0);
float2 l9_2062=(*sc_set0.UserUniforms).uv3Offset;
l9_2061=l9_2062;
float2 l9_2063=float2(0.0);
l9_2063=l9_2061;
float2 l9_2064=float2(0.0);
l9_2064=(l9_1996*l9_2060)+l9_2063;
float2 l9_2065=float2(0.0);
l9_2065=l9_2064+(l9_2063*(l9_1994.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1992=l9_2065;
l9_1995=l9_1992;
}
else
{
float2 l9_2066=float2(0.0);
float2 l9_2067=float2(0.0);
float2 l9_2068=float2(0.0);
float2 l9_2069=float2(0.0);
float2 l9_2070=float2(0.0);
float2 l9_2071=float2(0.0);
ssGlobals l9_2072=l9_1994;
float2 l9_2073;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2074=float2(0.0);
l9_2074=l9_2072.Surface_UVCoord0;
l9_2067=l9_2074;
l9_2073=l9_2067;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2075=float2(0.0);
l9_2075=l9_2072.Surface_UVCoord1;
l9_2068=l9_2075;
l9_2073=l9_2068;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2076=float2(0.0);
l9_2076=l9_2072.gScreenCoord;
l9_2069=l9_2076;
l9_2073=l9_2069;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2077=float2(0.0);
float2 l9_2078=float2(0.0);
float2 l9_2079=float2(0.0);
ssGlobals l9_2080=l9_2072;
float2 l9_2081;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2082=float2(0.0);
float2 l9_2083=float2(0.0);
float2 l9_2084=float2(0.0);
ssGlobals l9_2085=l9_2080;
float2 l9_2086;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2087=float2(0.0);
float2 l9_2088=float2(0.0);
float2 l9_2089=float2(0.0);
float2 l9_2090=float2(0.0);
float2 l9_2091=float2(0.0);
ssGlobals l9_2092=l9_2085;
float2 l9_2093;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2094=float2(0.0);
l9_2094=l9_2092.Surface_UVCoord0;
l9_2088=l9_2094;
l9_2093=l9_2088;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2095=float2(0.0);
l9_2095=l9_2092.Surface_UVCoord1;
l9_2089=l9_2095;
l9_2093=l9_2089;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2096=float2(0.0);
l9_2096=l9_2092.gScreenCoord;
l9_2090=l9_2096;
l9_2093=l9_2090;
}
else
{
float2 l9_2097=float2(0.0);
l9_2097=l9_2092.Surface_UVCoord0;
l9_2091=l9_2097;
l9_2093=l9_2091;
}
}
}
l9_2087=l9_2093;
float2 l9_2098=float2(0.0);
float2 l9_2099=(*sc_set0.UserUniforms).uv2Scale;
l9_2098=l9_2099;
float2 l9_2100=float2(0.0);
l9_2100=l9_2098;
float2 l9_2101=float2(0.0);
float2 l9_2102=(*sc_set0.UserUniforms).uv2Offset;
l9_2101=l9_2102;
float2 l9_2103=float2(0.0);
l9_2103=l9_2101;
float2 l9_2104=float2(0.0);
l9_2104=(l9_2087*l9_2100)+l9_2103;
float2 l9_2105=float2(0.0);
l9_2105=l9_2104+(l9_2103*(l9_2085.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2083=l9_2105;
l9_2086=l9_2083;
}
else
{
float2 l9_2106=float2(0.0);
float2 l9_2107=float2(0.0);
float2 l9_2108=float2(0.0);
float2 l9_2109=float2(0.0);
float2 l9_2110=float2(0.0);
ssGlobals l9_2111=l9_2085;
float2 l9_2112;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2113=float2(0.0);
l9_2113=l9_2111.Surface_UVCoord0;
l9_2107=l9_2113;
l9_2112=l9_2107;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2114=float2(0.0);
l9_2114=l9_2111.Surface_UVCoord1;
l9_2108=l9_2114;
l9_2112=l9_2108;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2115=float2(0.0);
l9_2115=l9_2111.gScreenCoord;
l9_2109=l9_2115;
l9_2112=l9_2109;
}
else
{
float2 l9_2116=float2(0.0);
l9_2116=l9_2111.Surface_UVCoord0;
l9_2110=l9_2116;
l9_2112=l9_2110;
}
}
}
l9_2106=l9_2112;
float2 l9_2117=float2(0.0);
float2 l9_2118=(*sc_set0.UserUniforms).uv2Scale;
l9_2117=l9_2118;
float2 l9_2119=float2(0.0);
l9_2119=l9_2117;
float2 l9_2120=float2(0.0);
float2 l9_2121=(*sc_set0.UserUniforms).uv2Offset;
l9_2120=l9_2121;
float2 l9_2122=float2(0.0);
l9_2122=l9_2120;
float2 l9_2123=float2(0.0);
l9_2123=(l9_2106*l9_2119)+l9_2122;
l9_2084=l9_2123;
l9_2086=l9_2084;
}
l9_2082=l9_2086;
l9_2078=l9_2082;
l9_2081=l9_2078;
}
else
{
float2 l9_2124=float2(0.0);
l9_2124=l9_2080.Surface_UVCoord0;
l9_2079=l9_2124;
l9_2081=l9_2079;
}
l9_2077=l9_2081;
float2 l9_2125=float2(0.0);
l9_2125=l9_2077;
float2 l9_2126=float2(0.0);
l9_2126=l9_2125;
l9_2070=l9_2126;
l9_2073=l9_2070;
}
else
{
float2 l9_2127=float2(0.0);
l9_2127=l9_2072.Surface_UVCoord0;
l9_2071=l9_2127;
l9_2073=l9_2071;
}
}
}
}
l9_2066=l9_2073;
float2 l9_2128=float2(0.0);
float2 l9_2129=(*sc_set0.UserUniforms).uv3Scale;
l9_2128=l9_2129;
float2 l9_2130=float2(0.0);
l9_2130=l9_2128;
float2 l9_2131=float2(0.0);
float2 l9_2132=(*sc_set0.UserUniforms).uv3Offset;
l9_2131=l9_2132;
float2 l9_2133=float2(0.0);
l9_2133=l9_2131;
float2 l9_2134=float2(0.0);
l9_2134=(l9_2066*l9_2130)+l9_2133;
l9_1993=l9_2134;
l9_1995=l9_1993;
}
l9_1991=l9_1995;
l9_1987=l9_1991;
l9_1990=l9_1987;
}
else
{
float2 l9_2135=float2(0.0);
l9_2135=l9_1989.Surface_UVCoord0;
l9_1988=l9_2135;
l9_1990=l9_1988;
}
l9_1986=l9_1990;
float2 l9_2136=float2(0.0);
l9_2136=l9_1986;
float2 l9_2137=float2(0.0);
l9_2137=l9_2136;
l9_1930=l9_2137;
l9_1933=l9_1930;
}
else
{
float2 l9_2138=float2(0.0);
l9_2138=l9_1932.Surface_UVCoord0;
l9_1931=l9_2138;
l9_1933=l9_1931;
}
}
}
}
l9_1926=l9_1933;
float4 l9_2139=float4(0.0);
float2 l9_2140=l9_1926;
int l9_2141;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_2142=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2142=0;
}
else
{
l9_2142=in.varStereoViewID;
}
int l9_2143=l9_2142;
l9_2141=1-l9_2143;
}
else
{
int l9_2144=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2144=0;
}
else
{
l9_2144=in.varStereoViewID;
}
int l9_2145=l9_2144;
l9_2141=l9_2145;
}
int l9_2146=l9_2141;
int l9_2147=normalTexLayout_tmp;
int l9_2148=l9_2146;
float2 l9_2149=l9_2140;
bool l9_2150=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_2151=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_2152=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_2153=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_2154=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_2155=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_2156=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_2157=0.0;
bool l9_2158=l9_2155&&(!l9_2153);
float l9_2159=1.0;
float l9_2160=l9_2149.x;
int l9_2161=l9_2152.x;
if (l9_2161==1)
{
l9_2160=fract(l9_2160);
}
else
{
if (l9_2161==2)
{
float l9_2162=fract(l9_2160);
float l9_2163=l9_2160-l9_2162;
float l9_2164=step(0.25,fract(l9_2163*0.5));
l9_2160=mix(l9_2162,1.0-l9_2162,fast::clamp(l9_2164,0.0,1.0));
}
}
l9_2149.x=l9_2160;
float l9_2165=l9_2149.y;
int l9_2166=l9_2152.y;
if (l9_2166==1)
{
l9_2165=fract(l9_2165);
}
else
{
if (l9_2166==2)
{
float l9_2167=fract(l9_2165);
float l9_2168=l9_2165-l9_2167;
float l9_2169=step(0.25,fract(l9_2168*0.5));
l9_2165=mix(l9_2167,1.0-l9_2167,fast::clamp(l9_2169,0.0,1.0));
}
}
l9_2149.y=l9_2165;
if (l9_2153)
{
bool l9_2170=l9_2155;
bool l9_2171;
if (l9_2170)
{
l9_2171=l9_2152.x==3;
}
else
{
l9_2171=l9_2170;
}
float l9_2172=l9_2149.x;
float l9_2173=l9_2154.x;
float l9_2174=l9_2154.z;
bool l9_2175=l9_2171;
float l9_2176=l9_2159;
float l9_2177=fast::clamp(l9_2172,l9_2173,l9_2174);
float l9_2178=step(abs(l9_2172-l9_2177),9.9999997e-06);
l9_2176*=(l9_2178+((1.0-float(l9_2175))*(1.0-l9_2178)));
l9_2172=l9_2177;
l9_2149.x=l9_2172;
l9_2159=l9_2176;
bool l9_2179=l9_2155;
bool l9_2180;
if (l9_2179)
{
l9_2180=l9_2152.y==3;
}
else
{
l9_2180=l9_2179;
}
float l9_2181=l9_2149.y;
float l9_2182=l9_2154.y;
float l9_2183=l9_2154.w;
bool l9_2184=l9_2180;
float l9_2185=l9_2159;
float l9_2186=fast::clamp(l9_2181,l9_2182,l9_2183);
float l9_2187=step(abs(l9_2181-l9_2186),9.9999997e-06);
l9_2185*=(l9_2187+((1.0-float(l9_2184))*(1.0-l9_2187)));
l9_2181=l9_2186;
l9_2149.y=l9_2181;
l9_2159=l9_2185;
}
float2 l9_2188=l9_2149;
bool l9_2189=l9_2150;
float3x3 l9_2190=l9_2151;
if (l9_2189)
{
l9_2188=float2((l9_2190*float3(l9_2188,1.0)).xy);
}
float2 l9_2191=l9_2188;
l9_2149=l9_2191;
float l9_2192=l9_2149.x;
int l9_2193=l9_2152.x;
bool l9_2194=l9_2158;
float l9_2195=l9_2159;
if ((l9_2193==0)||(l9_2193==3))
{
float l9_2196=l9_2192;
float l9_2197=0.0;
float l9_2198=1.0;
bool l9_2199=l9_2194;
float l9_2200=l9_2195;
float l9_2201=fast::clamp(l9_2196,l9_2197,l9_2198);
float l9_2202=step(abs(l9_2196-l9_2201),9.9999997e-06);
l9_2200*=(l9_2202+((1.0-float(l9_2199))*(1.0-l9_2202)));
l9_2196=l9_2201;
l9_2192=l9_2196;
l9_2195=l9_2200;
}
l9_2149.x=l9_2192;
l9_2159=l9_2195;
float l9_2203=l9_2149.y;
int l9_2204=l9_2152.y;
bool l9_2205=l9_2158;
float l9_2206=l9_2159;
if ((l9_2204==0)||(l9_2204==3))
{
float l9_2207=l9_2203;
float l9_2208=0.0;
float l9_2209=1.0;
bool l9_2210=l9_2205;
float l9_2211=l9_2206;
float l9_2212=fast::clamp(l9_2207,l9_2208,l9_2209);
float l9_2213=step(abs(l9_2207-l9_2212),9.9999997e-06);
l9_2211*=(l9_2213+((1.0-float(l9_2210))*(1.0-l9_2213)));
l9_2207=l9_2212;
l9_2203=l9_2207;
l9_2206=l9_2211;
}
l9_2149.y=l9_2203;
l9_2159=l9_2206;
float2 l9_2214=l9_2149;
int l9_2215=l9_2147;
int l9_2216=l9_2148;
float l9_2217=l9_2157;
float2 l9_2218=l9_2214;
int l9_2219=l9_2215;
int l9_2220=l9_2216;
float3 l9_2221=float3(0.0);
if (l9_2219==0)
{
l9_2221=float3(l9_2218,0.0);
}
else
{
if (l9_2219==1)
{
l9_2221=float3(l9_2218.x,(l9_2218.y*0.5)+(0.5-(float(l9_2220)*0.5)),0.0);
}
else
{
l9_2221=float3(l9_2218,float(l9_2220));
}
}
float3 l9_2222=l9_2221;
float3 l9_2223=l9_2222;
float4 l9_2224=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_2223.xy,bias(l9_2217));
float4 l9_2225=l9_2224;
if (l9_2155)
{
l9_2225=mix(l9_2156,l9_2225,float4(l9_2159));
}
float4 l9_2226=l9_2225;
float4 l9_2227=l9_2226;
float3 l9_2228=(l9_2227.xyz*1.9921875)-float3(1.0);
l9_2227=float4(l9_2228.x,l9_2228.y,l9_2228.z,l9_2227.w);
l9_2139=l9_2227;
float3 l9_2229=float3(0.0);
float3 l9_2230=float3(0.0);
float3 l9_2231=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_2232=param_21;
float3 l9_2233;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_2234=float2(0.0);
float2 l9_2235=float2(0.0);
float2 l9_2236=float2(0.0);
float2 l9_2237=float2(0.0);
float2 l9_2238=float2(0.0);
float2 l9_2239=float2(0.0);
ssGlobals l9_2240=l9_2232;
float2 l9_2241;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_2242=float2(0.0);
l9_2242=l9_2240.Surface_UVCoord0;
l9_2235=l9_2242;
l9_2241=l9_2235;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_2243=float2(0.0);
l9_2243=l9_2240.Surface_UVCoord1;
l9_2236=l9_2243;
l9_2241=l9_2236;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_2244=float2(0.0);
float2 l9_2245=float2(0.0);
float2 l9_2246=float2(0.0);
ssGlobals l9_2247=l9_2240;
float2 l9_2248;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2249=float2(0.0);
float2 l9_2250=float2(0.0);
float2 l9_2251=float2(0.0);
ssGlobals l9_2252=l9_2247;
float2 l9_2253;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2254=float2(0.0);
float2 l9_2255=float2(0.0);
float2 l9_2256=float2(0.0);
float2 l9_2257=float2(0.0);
float2 l9_2258=float2(0.0);
ssGlobals l9_2259=l9_2252;
float2 l9_2260;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2261=float2(0.0);
l9_2261=l9_2259.Surface_UVCoord0;
l9_2255=l9_2261;
l9_2260=l9_2255;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2262=float2(0.0);
l9_2262=l9_2259.Surface_UVCoord1;
l9_2256=l9_2262;
l9_2260=l9_2256;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2263=float2(0.0);
l9_2263=l9_2259.gScreenCoord;
l9_2257=l9_2263;
l9_2260=l9_2257;
}
else
{
float2 l9_2264=float2(0.0);
l9_2264=l9_2259.Surface_UVCoord0;
l9_2258=l9_2264;
l9_2260=l9_2258;
}
}
}
l9_2254=l9_2260;
float2 l9_2265=float2(0.0);
float2 l9_2266=(*sc_set0.UserUniforms).uv2Scale;
l9_2265=l9_2266;
float2 l9_2267=float2(0.0);
l9_2267=l9_2265;
float2 l9_2268=float2(0.0);
float2 l9_2269=(*sc_set0.UserUniforms).uv2Offset;
l9_2268=l9_2269;
float2 l9_2270=float2(0.0);
l9_2270=l9_2268;
float2 l9_2271=float2(0.0);
l9_2271=(l9_2254*l9_2267)+l9_2270;
float2 l9_2272=float2(0.0);
l9_2272=l9_2271+(l9_2270*(l9_2252.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2250=l9_2272;
l9_2253=l9_2250;
}
else
{
float2 l9_2273=float2(0.0);
float2 l9_2274=float2(0.0);
float2 l9_2275=float2(0.0);
float2 l9_2276=float2(0.0);
float2 l9_2277=float2(0.0);
ssGlobals l9_2278=l9_2252;
float2 l9_2279;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2280=float2(0.0);
l9_2280=l9_2278.Surface_UVCoord0;
l9_2274=l9_2280;
l9_2279=l9_2274;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2281=float2(0.0);
l9_2281=l9_2278.Surface_UVCoord1;
l9_2275=l9_2281;
l9_2279=l9_2275;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2282=float2(0.0);
l9_2282=l9_2278.gScreenCoord;
l9_2276=l9_2282;
l9_2279=l9_2276;
}
else
{
float2 l9_2283=float2(0.0);
l9_2283=l9_2278.Surface_UVCoord0;
l9_2277=l9_2283;
l9_2279=l9_2277;
}
}
}
l9_2273=l9_2279;
float2 l9_2284=float2(0.0);
float2 l9_2285=(*sc_set0.UserUniforms).uv2Scale;
l9_2284=l9_2285;
float2 l9_2286=float2(0.0);
l9_2286=l9_2284;
float2 l9_2287=float2(0.0);
float2 l9_2288=(*sc_set0.UserUniforms).uv2Offset;
l9_2287=l9_2288;
float2 l9_2289=float2(0.0);
l9_2289=l9_2287;
float2 l9_2290=float2(0.0);
l9_2290=(l9_2273*l9_2286)+l9_2289;
l9_2251=l9_2290;
l9_2253=l9_2251;
}
l9_2249=l9_2253;
l9_2245=l9_2249;
l9_2248=l9_2245;
}
else
{
float2 l9_2291=float2(0.0);
l9_2291=l9_2247.Surface_UVCoord0;
l9_2246=l9_2291;
l9_2248=l9_2246;
}
l9_2244=l9_2248;
float2 l9_2292=float2(0.0);
l9_2292=l9_2244;
float2 l9_2293=float2(0.0);
l9_2293=l9_2292;
l9_2237=l9_2293;
l9_2241=l9_2237;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_2294=float2(0.0);
float2 l9_2295=float2(0.0);
float2 l9_2296=float2(0.0);
ssGlobals l9_2297=l9_2240;
float2 l9_2298;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_2299=float2(0.0);
float2 l9_2300=float2(0.0);
float2 l9_2301=float2(0.0);
ssGlobals l9_2302=l9_2297;
float2 l9_2303;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_2304=float2(0.0);
float2 l9_2305=float2(0.0);
float2 l9_2306=float2(0.0);
float2 l9_2307=float2(0.0);
float2 l9_2308=float2(0.0);
float2 l9_2309=float2(0.0);
ssGlobals l9_2310=l9_2302;
float2 l9_2311;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2312=float2(0.0);
l9_2312=l9_2310.Surface_UVCoord0;
l9_2305=l9_2312;
l9_2311=l9_2305;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2313=float2(0.0);
l9_2313=l9_2310.Surface_UVCoord1;
l9_2306=l9_2313;
l9_2311=l9_2306;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2314=float2(0.0);
l9_2314=l9_2310.gScreenCoord;
l9_2307=l9_2314;
l9_2311=l9_2307;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2315=float2(0.0);
float2 l9_2316=float2(0.0);
float2 l9_2317=float2(0.0);
ssGlobals l9_2318=l9_2310;
float2 l9_2319;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2320=float2(0.0);
float2 l9_2321=float2(0.0);
float2 l9_2322=float2(0.0);
ssGlobals l9_2323=l9_2318;
float2 l9_2324;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2325=float2(0.0);
float2 l9_2326=float2(0.0);
float2 l9_2327=float2(0.0);
float2 l9_2328=float2(0.0);
float2 l9_2329=float2(0.0);
ssGlobals l9_2330=l9_2323;
float2 l9_2331;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2332=float2(0.0);
l9_2332=l9_2330.Surface_UVCoord0;
l9_2326=l9_2332;
l9_2331=l9_2326;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2333=float2(0.0);
l9_2333=l9_2330.Surface_UVCoord1;
l9_2327=l9_2333;
l9_2331=l9_2327;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2334=float2(0.0);
l9_2334=l9_2330.gScreenCoord;
l9_2328=l9_2334;
l9_2331=l9_2328;
}
else
{
float2 l9_2335=float2(0.0);
l9_2335=l9_2330.Surface_UVCoord0;
l9_2329=l9_2335;
l9_2331=l9_2329;
}
}
}
l9_2325=l9_2331;
float2 l9_2336=float2(0.0);
float2 l9_2337=(*sc_set0.UserUniforms).uv2Scale;
l9_2336=l9_2337;
float2 l9_2338=float2(0.0);
l9_2338=l9_2336;
float2 l9_2339=float2(0.0);
float2 l9_2340=(*sc_set0.UserUniforms).uv2Offset;
l9_2339=l9_2340;
float2 l9_2341=float2(0.0);
l9_2341=l9_2339;
float2 l9_2342=float2(0.0);
l9_2342=(l9_2325*l9_2338)+l9_2341;
float2 l9_2343=float2(0.0);
l9_2343=l9_2342+(l9_2341*(l9_2323.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2321=l9_2343;
l9_2324=l9_2321;
}
else
{
float2 l9_2344=float2(0.0);
float2 l9_2345=float2(0.0);
float2 l9_2346=float2(0.0);
float2 l9_2347=float2(0.0);
float2 l9_2348=float2(0.0);
ssGlobals l9_2349=l9_2323;
float2 l9_2350;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2351=float2(0.0);
l9_2351=l9_2349.Surface_UVCoord0;
l9_2345=l9_2351;
l9_2350=l9_2345;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2352=float2(0.0);
l9_2352=l9_2349.Surface_UVCoord1;
l9_2346=l9_2352;
l9_2350=l9_2346;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2353=float2(0.0);
l9_2353=l9_2349.gScreenCoord;
l9_2347=l9_2353;
l9_2350=l9_2347;
}
else
{
float2 l9_2354=float2(0.0);
l9_2354=l9_2349.Surface_UVCoord0;
l9_2348=l9_2354;
l9_2350=l9_2348;
}
}
}
l9_2344=l9_2350;
float2 l9_2355=float2(0.0);
float2 l9_2356=(*sc_set0.UserUniforms).uv2Scale;
l9_2355=l9_2356;
float2 l9_2357=float2(0.0);
l9_2357=l9_2355;
float2 l9_2358=float2(0.0);
float2 l9_2359=(*sc_set0.UserUniforms).uv2Offset;
l9_2358=l9_2359;
float2 l9_2360=float2(0.0);
l9_2360=l9_2358;
float2 l9_2361=float2(0.0);
l9_2361=(l9_2344*l9_2357)+l9_2360;
l9_2322=l9_2361;
l9_2324=l9_2322;
}
l9_2320=l9_2324;
l9_2316=l9_2320;
l9_2319=l9_2316;
}
else
{
float2 l9_2362=float2(0.0);
l9_2362=l9_2318.Surface_UVCoord0;
l9_2317=l9_2362;
l9_2319=l9_2317;
}
l9_2315=l9_2319;
float2 l9_2363=float2(0.0);
l9_2363=l9_2315;
float2 l9_2364=float2(0.0);
l9_2364=l9_2363;
l9_2308=l9_2364;
l9_2311=l9_2308;
}
else
{
float2 l9_2365=float2(0.0);
l9_2365=l9_2310.Surface_UVCoord0;
l9_2309=l9_2365;
l9_2311=l9_2309;
}
}
}
}
l9_2304=l9_2311;
float2 l9_2366=float2(0.0);
float2 l9_2367=(*sc_set0.UserUniforms).uv3Scale;
l9_2366=l9_2367;
float2 l9_2368=float2(0.0);
l9_2368=l9_2366;
float2 l9_2369=float2(0.0);
float2 l9_2370=(*sc_set0.UserUniforms).uv3Offset;
l9_2369=l9_2370;
float2 l9_2371=float2(0.0);
l9_2371=l9_2369;
float2 l9_2372=float2(0.0);
l9_2372=(l9_2304*l9_2368)+l9_2371;
float2 l9_2373=float2(0.0);
l9_2373=l9_2372+(l9_2371*(l9_2302.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_2300=l9_2373;
l9_2303=l9_2300;
}
else
{
float2 l9_2374=float2(0.0);
float2 l9_2375=float2(0.0);
float2 l9_2376=float2(0.0);
float2 l9_2377=float2(0.0);
float2 l9_2378=float2(0.0);
float2 l9_2379=float2(0.0);
ssGlobals l9_2380=l9_2302;
float2 l9_2381;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2382=float2(0.0);
l9_2382=l9_2380.Surface_UVCoord0;
l9_2375=l9_2382;
l9_2381=l9_2375;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2383=float2(0.0);
l9_2383=l9_2380.Surface_UVCoord1;
l9_2376=l9_2383;
l9_2381=l9_2376;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2384=float2(0.0);
l9_2384=l9_2380.gScreenCoord;
l9_2377=l9_2384;
l9_2381=l9_2377;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2385=float2(0.0);
float2 l9_2386=float2(0.0);
float2 l9_2387=float2(0.0);
ssGlobals l9_2388=l9_2380;
float2 l9_2389;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2390=float2(0.0);
float2 l9_2391=float2(0.0);
float2 l9_2392=float2(0.0);
ssGlobals l9_2393=l9_2388;
float2 l9_2394;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2395=float2(0.0);
float2 l9_2396=float2(0.0);
float2 l9_2397=float2(0.0);
float2 l9_2398=float2(0.0);
float2 l9_2399=float2(0.0);
ssGlobals l9_2400=l9_2393;
float2 l9_2401;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2402=float2(0.0);
l9_2402=l9_2400.Surface_UVCoord0;
l9_2396=l9_2402;
l9_2401=l9_2396;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2403=float2(0.0);
l9_2403=l9_2400.Surface_UVCoord1;
l9_2397=l9_2403;
l9_2401=l9_2397;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2404=float2(0.0);
l9_2404=l9_2400.gScreenCoord;
l9_2398=l9_2404;
l9_2401=l9_2398;
}
else
{
float2 l9_2405=float2(0.0);
l9_2405=l9_2400.Surface_UVCoord0;
l9_2399=l9_2405;
l9_2401=l9_2399;
}
}
}
l9_2395=l9_2401;
float2 l9_2406=float2(0.0);
float2 l9_2407=(*sc_set0.UserUniforms).uv2Scale;
l9_2406=l9_2407;
float2 l9_2408=float2(0.0);
l9_2408=l9_2406;
float2 l9_2409=float2(0.0);
float2 l9_2410=(*sc_set0.UserUniforms).uv2Offset;
l9_2409=l9_2410;
float2 l9_2411=float2(0.0);
l9_2411=l9_2409;
float2 l9_2412=float2(0.0);
l9_2412=(l9_2395*l9_2408)+l9_2411;
float2 l9_2413=float2(0.0);
l9_2413=l9_2412+(l9_2411*(l9_2393.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2391=l9_2413;
l9_2394=l9_2391;
}
else
{
float2 l9_2414=float2(0.0);
float2 l9_2415=float2(0.0);
float2 l9_2416=float2(0.0);
float2 l9_2417=float2(0.0);
float2 l9_2418=float2(0.0);
ssGlobals l9_2419=l9_2393;
float2 l9_2420;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2421=float2(0.0);
l9_2421=l9_2419.Surface_UVCoord0;
l9_2415=l9_2421;
l9_2420=l9_2415;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2422=float2(0.0);
l9_2422=l9_2419.Surface_UVCoord1;
l9_2416=l9_2422;
l9_2420=l9_2416;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2423=float2(0.0);
l9_2423=l9_2419.gScreenCoord;
l9_2417=l9_2423;
l9_2420=l9_2417;
}
else
{
float2 l9_2424=float2(0.0);
l9_2424=l9_2419.Surface_UVCoord0;
l9_2418=l9_2424;
l9_2420=l9_2418;
}
}
}
l9_2414=l9_2420;
float2 l9_2425=float2(0.0);
float2 l9_2426=(*sc_set0.UserUniforms).uv2Scale;
l9_2425=l9_2426;
float2 l9_2427=float2(0.0);
l9_2427=l9_2425;
float2 l9_2428=float2(0.0);
float2 l9_2429=(*sc_set0.UserUniforms).uv2Offset;
l9_2428=l9_2429;
float2 l9_2430=float2(0.0);
l9_2430=l9_2428;
float2 l9_2431=float2(0.0);
l9_2431=(l9_2414*l9_2427)+l9_2430;
l9_2392=l9_2431;
l9_2394=l9_2392;
}
l9_2390=l9_2394;
l9_2386=l9_2390;
l9_2389=l9_2386;
}
else
{
float2 l9_2432=float2(0.0);
l9_2432=l9_2388.Surface_UVCoord0;
l9_2387=l9_2432;
l9_2389=l9_2387;
}
l9_2385=l9_2389;
float2 l9_2433=float2(0.0);
l9_2433=l9_2385;
float2 l9_2434=float2(0.0);
l9_2434=l9_2433;
l9_2378=l9_2434;
l9_2381=l9_2378;
}
else
{
float2 l9_2435=float2(0.0);
l9_2435=l9_2380.Surface_UVCoord0;
l9_2379=l9_2435;
l9_2381=l9_2379;
}
}
}
}
l9_2374=l9_2381;
float2 l9_2436=float2(0.0);
float2 l9_2437=(*sc_set0.UserUniforms).uv3Scale;
l9_2436=l9_2437;
float2 l9_2438=float2(0.0);
l9_2438=l9_2436;
float2 l9_2439=float2(0.0);
float2 l9_2440=(*sc_set0.UserUniforms).uv3Offset;
l9_2439=l9_2440;
float2 l9_2441=float2(0.0);
l9_2441=l9_2439;
float2 l9_2442=float2(0.0);
l9_2442=(l9_2374*l9_2438)+l9_2441;
l9_2301=l9_2442;
l9_2303=l9_2301;
}
l9_2299=l9_2303;
l9_2295=l9_2299;
l9_2298=l9_2295;
}
else
{
float2 l9_2443=float2(0.0);
l9_2443=l9_2297.Surface_UVCoord0;
l9_2296=l9_2443;
l9_2298=l9_2296;
}
l9_2294=l9_2298;
float2 l9_2444=float2(0.0);
l9_2444=l9_2294;
float2 l9_2445=float2(0.0);
l9_2445=l9_2444;
l9_2238=l9_2445;
l9_2241=l9_2238;
}
else
{
float2 l9_2446=float2(0.0);
l9_2446=l9_2240.Surface_UVCoord0;
l9_2239=l9_2446;
l9_2241=l9_2239;
}
}
}
}
l9_2234=l9_2241;
float4 l9_2447=float4(0.0);
float2 l9_2448=l9_2234;
int l9_2449;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_2450=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2450=0;
}
else
{
l9_2450=in.varStereoViewID;
}
int l9_2451=l9_2450;
l9_2449=1-l9_2451;
}
else
{
int l9_2452=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2452=0;
}
else
{
l9_2452=in.varStereoViewID;
}
int l9_2453=l9_2452;
l9_2449=l9_2453;
}
int l9_2454=l9_2449;
int l9_2455=detailNormalTexLayout_tmp;
int l9_2456=l9_2454;
float2 l9_2457=l9_2448;
bool l9_2458=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_2459=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_2460=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_2461=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_2462=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_2463=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_2464=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_2465=0.0;
bool l9_2466=l9_2463&&(!l9_2461);
float l9_2467=1.0;
float l9_2468=l9_2457.x;
int l9_2469=l9_2460.x;
if (l9_2469==1)
{
l9_2468=fract(l9_2468);
}
else
{
if (l9_2469==2)
{
float l9_2470=fract(l9_2468);
float l9_2471=l9_2468-l9_2470;
float l9_2472=step(0.25,fract(l9_2471*0.5));
l9_2468=mix(l9_2470,1.0-l9_2470,fast::clamp(l9_2472,0.0,1.0));
}
}
l9_2457.x=l9_2468;
float l9_2473=l9_2457.y;
int l9_2474=l9_2460.y;
if (l9_2474==1)
{
l9_2473=fract(l9_2473);
}
else
{
if (l9_2474==2)
{
float l9_2475=fract(l9_2473);
float l9_2476=l9_2473-l9_2475;
float l9_2477=step(0.25,fract(l9_2476*0.5));
l9_2473=mix(l9_2475,1.0-l9_2475,fast::clamp(l9_2477,0.0,1.0));
}
}
l9_2457.y=l9_2473;
if (l9_2461)
{
bool l9_2478=l9_2463;
bool l9_2479;
if (l9_2478)
{
l9_2479=l9_2460.x==3;
}
else
{
l9_2479=l9_2478;
}
float l9_2480=l9_2457.x;
float l9_2481=l9_2462.x;
float l9_2482=l9_2462.z;
bool l9_2483=l9_2479;
float l9_2484=l9_2467;
float l9_2485=fast::clamp(l9_2480,l9_2481,l9_2482);
float l9_2486=step(abs(l9_2480-l9_2485),9.9999997e-06);
l9_2484*=(l9_2486+((1.0-float(l9_2483))*(1.0-l9_2486)));
l9_2480=l9_2485;
l9_2457.x=l9_2480;
l9_2467=l9_2484;
bool l9_2487=l9_2463;
bool l9_2488;
if (l9_2487)
{
l9_2488=l9_2460.y==3;
}
else
{
l9_2488=l9_2487;
}
float l9_2489=l9_2457.y;
float l9_2490=l9_2462.y;
float l9_2491=l9_2462.w;
bool l9_2492=l9_2488;
float l9_2493=l9_2467;
float l9_2494=fast::clamp(l9_2489,l9_2490,l9_2491);
float l9_2495=step(abs(l9_2489-l9_2494),9.9999997e-06);
l9_2493*=(l9_2495+((1.0-float(l9_2492))*(1.0-l9_2495)));
l9_2489=l9_2494;
l9_2457.y=l9_2489;
l9_2467=l9_2493;
}
float2 l9_2496=l9_2457;
bool l9_2497=l9_2458;
float3x3 l9_2498=l9_2459;
if (l9_2497)
{
l9_2496=float2((l9_2498*float3(l9_2496,1.0)).xy);
}
float2 l9_2499=l9_2496;
l9_2457=l9_2499;
float l9_2500=l9_2457.x;
int l9_2501=l9_2460.x;
bool l9_2502=l9_2466;
float l9_2503=l9_2467;
if ((l9_2501==0)||(l9_2501==3))
{
float l9_2504=l9_2500;
float l9_2505=0.0;
float l9_2506=1.0;
bool l9_2507=l9_2502;
float l9_2508=l9_2503;
float l9_2509=fast::clamp(l9_2504,l9_2505,l9_2506);
float l9_2510=step(abs(l9_2504-l9_2509),9.9999997e-06);
l9_2508*=(l9_2510+((1.0-float(l9_2507))*(1.0-l9_2510)));
l9_2504=l9_2509;
l9_2500=l9_2504;
l9_2503=l9_2508;
}
l9_2457.x=l9_2500;
l9_2467=l9_2503;
float l9_2511=l9_2457.y;
int l9_2512=l9_2460.y;
bool l9_2513=l9_2466;
float l9_2514=l9_2467;
if ((l9_2512==0)||(l9_2512==3))
{
float l9_2515=l9_2511;
float l9_2516=0.0;
float l9_2517=1.0;
bool l9_2518=l9_2513;
float l9_2519=l9_2514;
float l9_2520=fast::clamp(l9_2515,l9_2516,l9_2517);
float l9_2521=step(abs(l9_2515-l9_2520),9.9999997e-06);
l9_2519*=(l9_2521+((1.0-float(l9_2518))*(1.0-l9_2521)));
l9_2515=l9_2520;
l9_2511=l9_2515;
l9_2514=l9_2519;
}
l9_2457.y=l9_2511;
l9_2467=l9_2514;
float2 l9_2522=l9_2457;
int l9_2523=l9_2455;
int l9_2524=l9_2456;
float l9_2525=l9_2465;
float2 l9_2526=l9_2522;
int l9_2527=l9_2523;
int l9_2528=l9_2524;
float3 l9_2529=float3(0.0);
if (l9_2527==0)
{
l9_2529=float3(l9_2526,0.0);
}
else
{
if (l9_2527==1)
{
l9_2529=float3(l9_2526.x,(l9_2526.y*0.5)+(0.5-(float(l9_2528)*0.5)),0.0);
}
else
{
l9_2529=float3(l9_2526,float(l9_2528));
}
}
float3 l9_2530=l9_2529;
float3 l9_2531=l9_2530;
float4 l9_2532=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_2531.xy,bias(l9_2525));
float4 l9_2533=l9_2532;
if (l9_2463)
{
l9_2533=mix(l9_2464,l9_2533,float4(l9_2467));
}
float4 l9_2534=l9_2533;
float4 l9_2535=l9_2534;
float3 l9_2536=(l9_2535.xyz*1.9921875)-float3(1.0);
l9_2535=float4(l9_2536.x,l9_2536.y,l9_2536.z,l9_2535.w);
l9_2447=l9_2535;
l9_2230=l9_2447.xyz;
l9_2233=l9_2230;
}
else
{
l9_2233=l9_2231;
}
l9_2229=l9_2233;
float3 l9_2537=float3(0.0);
float3 l9_2538=l9_2139.xyz;
float l9_2539=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_2540=l9_2229;
float l9_2541=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_2542=l9_2538;
float l9_2543=l9_2539;
float3 l9_2544=l9_2540;
float l9_2545=l9_2541;
float3 l9_2546=mix(float3(0.0,0.0,1.0),l9_2542,float3(l9_2543))+float3(0.0,0.0,1.0);
float3 l9_2547=mix(float3(0.0,0.0,1.0),l9_2544,float3(l9_2545))*float3(-1.0,-1.0,1.0);
float3 l9_2548=normalize((l9_2546*dot(l9_2546,l9_2547))-(l9_2547*l9_2546.z));
l9_2540=l9_2548;
float3 l9_2549=l9_2540;
l9_2537=l9_2549;
float3 l9_2550=float3(0.0);
l9_2550=l9_1925*l9_2537;
float3 l9_2551=float3(0.0);
float3 l9_2552=l9_2550;
float l9_2553=dot(l9_2552,l9_2552);
float l9_2554;
if (l9_2553>0.0)
{
l9_2554=1.0/sqrt(l9_2553);
}
else
{
l9_2554=0.0;
}
float l9_2555=l9_2554;
float3 l9_2556=l9_2552*l9_2555;
l9_2551=l9_2556;
param_18=l9_2551;
param_20=param_18;
}
else
{
float3 l9_2557=float3(0.0);
l9_2557=param_21.VertexNormal_WorldSpace;
float3 l9_2558=float3(0.0);
float3 l9_2559=l9_2557;
float l9_2560=dot(l9_2559,l9_2559);
float l9_2561;
if (l9_2560>0.0)
{
l9_2561=1.0/sqrt(l9_2560);
}
else
{
l9_2561=0.0;
}
float l9_2562=l9_2561;
float3 l9_2563=l9_2559*l9_2562;
l9_2558=l9_2563;
param_19=l9_2558;
param_20=param_19;
}
Result_N337=param_20;
float3 Export_N334=float3(0.0);
Export_N334=Result_N337;
float3 Result_N103=float3(0.0);
float3 param_22=float3(0.0);
float3 param_23=(*sc_set0.UserUniforms).Port_Default_N103;
ssGlobals param_25=Globals;
float3 param_24;
if ((NODE_38_DROPLIST_ITEM_tmp==2)||(int(Tweak_N223_tmp)!=0))
{
float3 l9_2564=float3(0.0);
float3 l9_2565=float3(0.0);
float3 l9_2566=float3(0.0);
ssGlobals l9_2567=param_25;
float3 l9_2568;
if (NODE_38_DROPLIST_ITEM_tmp==2)
{
float4 l9_2569=float4(0.0);
l9_2569=l9_2567.VertexColor;
float3 l9_2570=float3(0.0);
float3 l9_2571=float3(0.0);
float3 l9_2572=(*sc_set0.UserUniforms).Port_Default_N132;
ssGlobals l9_2573=l9_2567;
float3 l9_2574;
if ((int(Tweak_N223_tmp)!=0))
{
float2 l9_2575=float2(0.0);
float2 l9_2576=float2(0.0);
float2 l9_2577=float2(0.0);
float2 l9_2578=float2(0.0);
float2 l9_2579=float2(0.0);
float2 l9_2580=float2(0.0);
ssGlobals l9_2581=l9_2573;
float2 l9_2582;
if (NODE_76_DROPLIST_ITEM_tmp==0)
{
float2 l9_2583=float2(0.0);
l9_2583=l9_2581.Surface_UVCoord0;
l9_2576=l9_2583;
l9_2582=l9_2576;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==1)
{
float2 l9_2584=float2(0.0);
l9_2584=l9_2581.Surface_UVCoord1;
l9_2577=l9_2584;
l9_2582=l9_2577;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==2)
{
float2 l9_2585=float2(0.0);
float2 l9_2586=float2(0.0);
float2 l9_2587=float2(0.0);
ssGlobals l9_2588=l9_2581;
float2 l9_2589;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2590=float2(0.0);
float2 l9_2591=float2(0.0);
float2 l9_2592=float2(0.0);
ssGlobals l9_2593=l9_2588;
float2 l9_2594;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2595=float2(0.0);
float2 l9_2596=float2(0.0);
float2 l9_2597=float2(0.0);
float2 l9_2598=float2(0.0);
float2 l9_2599=float2(0.0);
ssGlobals l9_2600=l9_2593;
float2 l9_2601;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2602=float2(0.0);
l9_2602=l9_2600.Surface_UVCoord0;
l9_2596=l9_2602;
l9_2601=l9_2596;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2603=float2(0.0);
l9_2603=l9_2600.Surface_UVCoord1;
l9_2597=l9_2603;
l9_2601=l9_2597;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2604=float2(0.0);
l9_2604=l9_2600.gScreenCoord;
l9_2598=l9_2604;
l9_2601=l9_2598;
}
else
{
float2 l9_2605=float2(0.0);
l9_2605=l9_2600.Surface_UVCoord0;
l9_2599=l9_2605;
l9_2601=l9_2599;
}
}
}
l9_2595=l9_2601;
float2 l9_2606=float2(0.0);
float2 l9_2607=(*sc_set0.UserUniforms).uv2Scale;
l9_2606=l9_2607;
float2 l9_2608=float2(0.0);
l9_2608=l9_2606;
float2 l9_2609=float2(0.0);
float2 l9_2610=(*sc_set0.UserUniforms).uv2Offset;
l9_2609=l9_2610;
float2 l9_2611=float2(0.0);
l9_2611=l9_2609;
float2 l9_2612=float2(0.0);
l9_2612=(l9_2595*l9_2608)+l9_2611;
float2 l9_2613=float2(0.0);
l9_2613=l9_2612+(l9_2611*(l9_2593.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2591=l9_2613;
l9_2594=l9_2591;
}
else
{
float2 l9_2614=float2(0.0);
float2 l9_2615=float2(0.0);
float2 l9_2616=float2(0.0);
float2 l9_2617=float2(0.0);
float2 l9_2618=float2(0.0);
ssGlobals l9_2619=l9_2593;
float2 l9_2620;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2621=float2(0.0);
l9_2621=l9_2619.Surface_UVCoord0;
l9_2615=l9_2621;
l9_2620=l9_2615;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2622=float2(0.0);
l9_2622=l9_2619.Surface_UVCoord1;
l9_2616=l9_2622;
l9_2620=l9_2616;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2623=float2(0.0);
l9_2623=l9_2619.gScreenCoord;
l9_2617=l9_2623;
l9_2620=l9_2617;
}
else
{
float2 l9_2624=float2(0.0);
l9_2624=l9_2619.Surface_UVCoord0;
l9_2618=l9_2624;
l9_2620=l9_2618;
}
}
}
l9_2614=l9_2620;
float2 l9_2625=float2(0.0);
float2 l9_2626=(*sc_set0.UserUniforms).uv2Scale;
l9_2625=l9_2626;
float2 l9_2627=float2(0.0);
l9_2627=l9_2625;
float2 l9_2628=float2(0.0);
float2 l9_2629=(*sc_set0.UserUniforms).uv2Offset;
l9_2628=l9_2629;
float2 l9_2630=float2(0.0);
l9_2630=l9_2628;
float2 l9_2631=float2(0.0);
l9_2631=(l9_2614*l9_2627)+l9_2630;
l9_2592=l9_2631;
l9_2594=l9_2592;
}
l9_2590=l9_2594;
l9_2586=l9_2590;
l9_2589=l9_2586;
}
else
{
float2 l9_2632=float2(0.0);
l9_2632=l9_2588.Surface_UVCoord0;
l9_2587=l9_2632;
l9_2589=l9_2587;
}
l9_2585=l9_2589;
float2 l9_2633=float2(0.0);
l9_2633=l9_2585;
float2 l9_2634=float2(0.0);
l9_2634=l9_2633;
l9_2578=l9_2634;
l9_2582=l9_2578;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==3)
{
float2 l9_2635=float2(0.0);
float2 l9_2636=float2(0.0);
float2 l9_2637=float2(0.0);
ssGlobals l9_2638=l9_2581;
float2 l9_2639;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_2640=float2(0.0);
float2 l9_2641=float2(0.0);
float2 l9_2642=float2(0.0);
ssGlobals l9_2643=l9_2638;
float2 l9_2644;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_2645=float2(0.0);
float2 l9_2646=float2(0.0);
float2 l9_2647=float2(0.0);
float2 l9_2648=float2(0.0);
float2 l9_2649=float2(0.0);
float2 l9_2650=float2(0.0);
ssGlobals l9_2651=l9_2643;
float2 l9_2652;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2653=float2(0.0);
l9_2653=l9_2651.Surface_UVCoord0;
l9_2646=l9_2653;
l9_2652=l9_2646;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2654=float2(0.0);
l9_2654=l9_2651.Surface_UVCoord1;
l9_2647=l9_2654;
l9_2652=l9_2647;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2655=float2(0.0);
l9_2655=l9_2651.gScreenCoord;
l9_2648=l9_2655;
l9_2652=l9_2648;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2656=float2(0.0);
float2 l9_2657=float2(0.0);
float2 l9_2658=float2(0.0);
ssGlobals l9_2659=l9_2651;
float2 l9_2660;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2661=float2(0.0);
float2 l9_2662=float2(0.0);
float2 l9_2663=float2(0.0);
ssGlobals l9_2664=l9_2659;
float2 l9_2665;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2666=float2(0.0);
float2 l9_2667=float2(0.0);
float2 l9_2668=float2(0.0);
float2 l9_2669=float2(0.0);
float2 l9_2670=float2(0.0);
ssGlobals l9_2671=l9_2664;
float2 l9_2672;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2673=float2(0.0);
l9_2673=l9_2671.Surface_UVCoord0;
l9_2667=l9_2673;
l9_2672=l9_2667;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2674=float2(0.0);
l9_2674=l9_2671.Surface_UVCoord1;
l9_2668=l9_2674;
l9_2672=l9_2668;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2675=float2(0.0);
l9_2675=l9_2671.gScreenCoord;
l9_2669=l9_2675;
l9_2672=l9_2669;
}
else
{
float2 l9_2676=float2(0.0);
l9_2676=l9_2671.Surface_UVCoord0;
l9_2670=l9_2676;
l9_2672=l9_2670;
}
}
}
l9_2666=l9_2672;
float2 l9_2677=float2(0.0);
float2 l9_2678=(*sc_set0.UserUniforms).uv2Scale;
l9_2677=l9_2678;
float2 l9_2679=float2(0.0);
l9_2679=l9_2677;
float2 l9_2680=float2(0.0);
float2 l9_2681=(*sc_set0.UserUniforms).uv2Offset;
l9_2680=l9_2681;
float2 l9_2682=float2(0.0);
l9_2682=l9_2680;
float2 l9_2683=float2(0.0);
l9_2683=(l9_2666*l9_2679)+l9_2682;
float2 l9_2684=float2(0.0);
l9_2684=l9_2683+(l9_2682*(l9_2664.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2662=l9_2684;
l9_2665=l9_2662;
}
else
{
float2 l9_2685=float2(0.0);
float2 l9_2686=float2(0.0);
float2 l9_2687=float2(0.0);
float2 l9_2688=float2(0.0);
float2 l9_2689=float2(0.0);
ssGlobals l9_2690=l9_2664;
float2 l9_2691;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2692=float2(0.0);
l9_2692=l9_2690.Surface_UVCoord0;
l9_2686=l9_2692;
l9_2691=l9_2686;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2693=float2(0.0);
l9_2693=l9_2690.Surface_UVCoord1;
l9_2687=l9_2693;
l9_2691=l9_2687;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2694=float2(0.0);
l9_2694=l9_2690.gScreenCoord;
l9_2688=l9_2694;
l9_2691=l9_2688;
}
else
{
float2 l9_2695=float2(0.0);
l9_2695=l9_2690.Surface_UVCoord0;
l9_2689=l9_2695;
l9_2691=l9_2689;
}
}
}
l9_2685=l9_2691;
float2 l9_2696=float2(0.0);
float2 l9_2697=(*sc_set0.UserUniforms).uv2Scale;
l9_2696=l9_2697;
float2 l9_2698=float2(0.0);
l9_2698=l9_2696;
float2 l9_2699=float2(0.0);
float2 l9_2700=(*sc_set0.UserUniforms).uv2Offset;
l9_2699=l9_2700;
float2 l9_2701=float2(0.0);
l9_2701=l9_2699;
float2 l9_2702=float2(0.0);
l9_2702=(l9_2685*l9_2698)+l9_2701;
l9_2663=l9_2702;
l9_2665=l9_2663;
}
l9_2661=l9_2665;
l9_2657=l9_2661;
l9_2660=l9_2657;
}
else
{
float2 l9_2703=float2(0.0);
l9_2703=l9_2659.Surface_UVCoord0;
l9_2658=l9_2703;
l9_2660=l9_2658;
}
l9_2656=l9_2660;
float2 l9_2704=float2(0.0);
l9_2704=l9_2656;
float2 l9_2705=float2(0.0);
l9_2705=l9_2704;
l9_2649=l9_2705;
l9_2652=l9_2649;
}
else
{
float2 l9_2706=float2(0.0);
l9_2706=l9_2651.Surface_UVCoord0;
l9_2650=l9_2706;
l9_2652=l9_2650;
}
}
}
}
l9_2645=l9_2652;
float2 l9_2707=float2(0.0);
float2 l9_2708=(*sc_set0.UserUniforms).uv3Scale;
l9_2707=l9_2708;
float2 l9_2709=float2(0.0);
l9_2709=l9_2707;
float2 l9_2710=float2(0.0);
float2 l9_2711=(*sc_set0.UserUniforms).uv3Offset;
l9_2710=l9_2711;
float2 l9_2712=float2(0.0);
l9_2712=l9_2710;
float2 l9_2713=float2(0.0);
l9_2713=(l9_2645*l9_2709)+l9_2712;
float2 l9_2714=float2(0.0);
l9_2714=l9_2713+(l9_2712*(l9_2643.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_2641=l9_2714;
l9_2644=l9_2641;
}
else
{
float2 l9_2715=float2(0.0);
float2 l9_2716=float2(0.0);
float2 l9_2717=float2(0.0);
float2 l9_2718=float2(0.0);
float2 l9_2719=float2(0.0);
float2 l9_2720=float2(0.0);
ssGlobals l9_2721=l9_2643;
float2 l9_2722;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2723=float2(0.0);
l9_2723=l9_2721.Surface_UVCoord0;
l9_2716=l9_2723;
l9_2722=l9_2716;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2724=float2(0.0);
l9_2724=l9_2721.Surface_UVCoord1;
l9_2717=l9_2724;
l9_2722=l9_2717;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2725=float2(0.0);
l9_2725=l9_2721.gScreenCoord;
l9_2718=l9_2725;
l9_2722=l9_2718;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2726=float2(0.0);
float2 l9_2727=float2(0.0);
float2 l9_2728=float2(0.0);
ssGlobals l9_2729=l9_2721;
float2 l9_2730;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2731=float2(0.0);
float2 l9_2732=float2(0.0);
float2 l9_2733=float2(0.0);
ssGlobals l9_2734=l9_2729;
float2 l9_2735;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2736=float2(0.0);
float2 l9_2737=float2(0.0);
float2 l9_2738=float2(0.0);
float2 l9_2739=float2(0.0);
float2 l9_2740=float2(0.0);
ssGlobals l9_2741=l9_2734;
float2 l9_2742;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2743=float2(0.0);
l9_2743=l9_2741.Surface_UVCoord0;
l9_2737=l9_2743;
l9_2742=l9_2737;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2744=float2(0.0);
l9_2744=l9_2741.Surface_UVCoord1;
l9_2738=l9_2744;
l9_2742=l9_2738;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2745=float2(0.0);
l9_2745=l9_2741.gScreenCoord;
l9_2739=l9_2745;
l9_2742=l9_2739;
}
else
{
float2 l9_2746=float2(0.0);
l9_2746=l9_2741.Surface_UVCoord0;
l9_2740=l9_2746;
l9_2742=l9_2740;
}
}
}
l9_2736=l9_2742;
float2 l9_2747=float2(0.0);
float2 l9_2748=(*sc_set0.UserUniforms).uv2Scale;
l9_2747=l9_2748;
float2 l9_2749=float2(0.0);
l9_2749=l9_2747;
float2 l9_2750=float2(0.0);
float2 l9_2751=(*sc_set0.UserUniforms).uv2Offset;
l9_2750=l9_2751;
float2 l9_2752=float2(0.0);
l9_2752=l9_2750;
float2 l9_2753=float2(0.0);
l9_2753=(l9_2736*l9_2749)+l9_2752;
float2 l9_2754=float2(0.0);
l9_2754=l9_2753+(l9_2752*(l9_2734.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2732=l9_2754;
l9_2735=l9_2732;
}
else
{
float2 l9_2755=float2(0.0);
float2 l9_2756=float2(0.0);
float2 l9_2757=float2(0.0);
float2 l9_2758=float2(0.0);
float2 l9_2759=float2(0.0);
ssGlobals l9_2760=l9_2734;
float2 l9_2761;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2762=float2(0.0);
l9_2762=l9_2760.Surface_UVCoord0;
l9_2756=l9_2762;
l9_2761=l9_2756;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2763=float2(0.0);
l9_2763=l9_2760.Surface_UVCoord1;
l9_2757=l9_2763;
l9_2761=l9_2757;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2764=float2(0.0);
l9_2764=l9_2760.gScreenCoord;
l9_2758=l9_2764;
l9_2761=l9_2758;
}
else
{
float2 l9_2765=float2(0.0);
l9_2765=l9_2760.Surface_UVCoord0;
l9_2759=l9_2765;
l9_2761=l9_2759;
}
}
}
l9_2755=l9_2761;
float2 l9_2766=float2(0.0);
float2 l9_2767=(*sc_set0.UserUniforms).uv2Scale;
l9_2766=l9_2767;
float2 l9_2768=float2(0.0);
l9_2768=l9_2766;
float2 l9_2769=float2(0.0);
float2 l9_2770=(*sc_set0.UserUniforms).uv2Offset;
l9_2769=l9_2770;
float2 l9_2771=float2(0.0);
l9_2771=l9_2769;
float2 l9_2772=float2(0.0);
l9_2772=(l9_2755*l9_2768)+l9_2771;
l9_2733=l9_2772;
l9_2735=l9_2733;
}
l9_2731=l9_2735;
l9_2727=l9_2731;
l9_2730=l9_2727;
}
else
{
float2 l9_2773=float2(0.0);
l9_2773=l9_2729.Surface_UVCoord0;
l9_2728=l9_2773;
l9_2730=l9_2728;
}
l9_2726=l9_2730;
float2 l9_2774=float2(0.0);
l9_2774=l9_2726;
float2 l9_2775=float2(0.0);
l9_2775=l9_2774;
l9_2719=l9_2775;
l9_2722=l9_2719;
}
else
{
float2 l9_2776=float2(0.0);
l9_2776=l9_2721.Surface_UVCoord0;
l9_2720=l9_2776;
l9_2722=l9_2720;
}
}
}
}
l9_2715=l9_2722;
float2 l9_2777=float2(0.0);
float2 l9_2778=(*sc_set0.UserUniforms).uv3Scale;
l9_2777=l9_2778;
float2 l9_2779=float2(0.0);
l9_2779=l9_2777;
float2 l9_2780=float2(0.0);
float2 l9_2781=(*sc_set0.UserUniforms).uv3Offset;
l9_2780=l9_2781;
float2 l9_2782=float2(0.0);
l9_2782=l9_2780;
float2 l9_2783=float2(0.0);
l9_2783=(l9_2715*l9_2779)+l9_2782;
l9_2642=l9_2783;
l9_2644=l9_2642;
}
l9_2640=l9_2644;
l9_2636=l9_2640;
l9_2639=l9_2636;
}
else
{
float2 l9_2784=float2(0.0);
l9_2784=l9_2638.Surface_UVCoord0;
l9_2637=l9_2784;
l9_2639=l9_2637;
}
l9_2635=l9_2639;
float2 l9_2785=float2(0.0);
l9_2785=l9_2635;
float2 l9_2786=float2(0.0);
l9_2786=l9_2785;
l9_2579=l9_2786;
l9_2582=l9_2579;
}
else
{
float2 l9_2787=float2(0.0);
l9_2787=l9_2581.Surface_UVCoord0;
l9_2580=l9_2787;
l9_2582=l9_2580;
}
}
}
}
l9_2575=l9_2582;
float4 l9_2788=float4(0.0);
int l9_2789;
if ((int(emissiveTexHasSwappedViews_tmp)!=0))
{
int l9_2790=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2790=0;
}
else
{
l9_2790=in.varStereoViewID;
}
int l9_2791=l9_2790;
l9_2789=1-l9_2791;
}
else
{
int l9_2792=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2792=0;
}
else
{
l9_2792=in.varStereoViewID;
}
int l9_2793=l9_2792;
l9_2789=l9_2793;
}
int l9_2794=l9_2789;
int l9_2795=emissiveTexLayout_tmp;
int l9_2796=l9_2794;
float2 l9_2797=l9_2575;
bool l9_2798=(int(SC_USE_UV_TRANSFORM_emissiveTex_tmp)!=0);
float3x3 l9_2799=(*sc_set0.UserUniforms).emissiveTexTransform;
int2 l9_2800=int2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp,SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp);
bool l9_2801=(int(SC_USE_UV_MIN_MAX_emissiveTex_tmp)!=0);
float4 l9_2802=(*sc_set0.UserUniforms).emissiveTexUvMinMax;
bool l9_2803=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp)!=0);
float4 l9_2804=(*sc_set0.UserUniforms).emissiveTexBorderColor;
float l9_2805=0.0;
bool l9_2806=l9_2803&&(!l9_2801);
float l9_2807=1.0;
float l9_2808=l9_2797.x;
int l9_2809=l9_2800.x;
if (l9_2809==1)
{
l9_2808=fract(l9_2808);
}
else
{
if (l9_2809==2)
{
float l9_2810=fract(l9_2808);
float l9_2811=l9_2808-l9_2810;
float l9_2812=step(0.25,fract(l9_2811*0.5));
l9_2808=mix(l9_2810,1.0-l9_2810,fast::clamp(l9_2812,0.0,1.0));
}
}
l9_2797.x=l9_2808;
float l9_2813=l9_2797.y;
int l9_2814=l9_2800.y;
if (l9_2814==1)
{
l9_2813=fract(l9_2813);
}
else
{
if (l9_2814==2)
{
float l9_2815=fract(l9_2813);
float l9_2816=l9_2813-l9_2815;
float l9_2817=step(0.25,fract(l9_2816*0.5));
l9_2813=mix(l9_2815,1.0-l9_2815,fast::clamp(l9_2817,0.0,1.0));
}
}
l9_2797.y=l9_2813;
if (l9_2801)
{
bool l9_2818=l9_2803;
bool l9_2819;
if (l9_2818)
{
l9_2819=l9_2800.x==3;
}
else
{
l9_2819=l9_2818;
}
float l9_2820=l9_2797.x;
float l9_2821=l9_2802.x;
float l9_2822=l9_2802.z;
bool l9_2823=l9_2819;
float l9_2824=l9_2807;
float l9_2825=fast::clamp(l9_2820,l9_2821,l9_2822);
float l9_2826=step(abs(l9_2820-l9_2825),9.9999997e-06);
l9_2824*=(l9_2826+((1.0-float(l9_2823))*(1.0-l9_2826)));
l9_2820=l9_2825;
l9_2797.x=l9_2820;
l9_2807=l9_2824;
bool l9_2827=l9_2803;
bool l9_2828;
if (l9_2827)
{
l9_2828=l9_2800.y==3;
}
else
{
l9_2828=l9_2827;
}
float l9_2829=l9_2797.y;
float l9_2830=l9_2802.y;
float l9_2831=l9_2802.w;
bool l9_2832=l9_2828;
float l9_2833=l9_2807;
float l9_2834=fast::clamp(l9_2829,l9_2830,l9_2831);
float l9_2835=step(abs(l9_2829-l9_2834),9.9999997e-06);
l9_2833*=(l9_2835+((1.0-float(l9_2832))*(1.0-l9_2835)));
l9_2829=l9_2834;
l9_2797.y=l9_2829;
l9_2807=l9_2833;
}
float2 l9_2836=l9_2797;
bool l9_2837=l9_2798;
float3x3 l9_2838=l9_2799;
if (l9_2837)
{
l9_2836=float2((l9_2838*float3(l9_2836,1.0)).xy);
}
float2 l9_2839=l9_2836;
l9_2797=l9_2839;
float l9_2840=l9_2797.x;
int l9_2841=l9_2800.x;
bool l9_2842=l9_2806;
float l9_2843=l9_2807;
if ((l9_2841==0)||(l9_2841==3))
{
float l9_2844=l9_2840;
float l9_2845=0.0;
float l9_2846=1.0;
bool l9_2847=l9_2842;
float l9_2848=l9_2843;
float l9_2849=fast::clamp(l9_2844,l9_2845,l9_2846);
float l9_2850=step(abs(l9_2844-l9_2849),9.9999997e-06);
l9_2848*=(l9_2850+((1.0-float(l9_2847))*(1.0-l9_2850)));
l9_2844=l9_2849;
l9_2840=l9_2844;
l9_2843=l9_2848;
}
l9_2797.x=l9_2840;
l9_2807=l9_2843;
float l9_2851=l9_2797.y;
int l9_2852=l9_2800.y;
bool l9_2853=l9_2806;
float l9_2854=l9_2807;
if ((l9_2852==0)||(l9_2852==3))
{
float l9_2855=l9_2851;
float l9_2856=0.0;
float l9_2857=1.0;
bool l9_2858=l9_2853;
float l9_2859=l9_2854;
float l9_2860=fast::clamp(l9_2855,l9_2856,l9_2857);
float l9_2861=step(abs(l9_2855-l9_2860),9.9999997e-06);
l9_2859*=(l9_2861+((1.0-float(l9_2858))*(1.0-l9_2861)));
l9_2855=l9_2860;
l9_2851=l9_2855;
l9_2854=l9_2859;
}
l9_2797.y=l9_2851;
l9_2807=l9_2854;
float2 l9_2862=l9_2797;
int l9_2863=l9_2795;
int l9_2864=l9_2796;
float l9_2865=l9_2805;
float2 l9_2866=l9_2862;
int l9_2867=l9_2863;
int l9_2868=l9_2864;
float3 l9_2869=float3(0.0);
if (l9_2867==0)
{
l9_2869=float3(l9_2866,0.0);
}
else
{
if (l9_2867==1)
{
l9_2869=float3(l9_2866.x,(l9_2866.y*0.5)+(0.5-(float(l9_2868)*0.5)),0.0);
}
else
{
l9_2869=float3(l9_2866,float(l9_2868));
}
}
float3 l9_2870=l9_2869;
float3 l9_2871=l9_2870;
float4 l9_2872=sc_set0.emissiveTex.sample(sc_set0.emissiveTexSmpSC,l9_2871.xy,bias(l9_2865));
float4 l9_2873=l9_2872;
if (l9_2803)
{
l9_2873=mix(l9_2804,l9_2873,float4(l9_2807));
}
float4 l9_2874=l9_2873;
l9_2788=l9_2874;
l9_2571=l9_2788.xyz;
l9_2574=l9_2571;
}
else
{
l9_2574=l9_2572;
}
l9_2570=l9_2574;
float3 l9_2875=float3(0.0);
l9_2875=l9_2569.xyz+l9_2570;
l9_2565=l9_2875;
l9_2568=l9_2565;
}
else
{
float3 l9_2876=float3(0.0);
float3 l9_2877=float3(0.0);
float3 l9_2878=(*sc_set0.UserUniforms).Port_Default_N132;
ssGlobals l9_2879=l9_2567;
float3 l9_2880;
if ((int(Tweak_N223_tmp)!=0))
{
float2 l9_2881=float2(0.0);
float2 l9_2882=float2(0.0);
float2 l9_2883=float2(0.0);
float2 l9_2884=float2(0.0);
float2 l9_2885=float2(0.0);
float2 l9_2886=float2(0.0);
ssGlobals l9_2887=l9_2879;
float2 l9_2888;
if (NODE_76_DROPLIST_ITEM_tmp==0)
{
float2 l9_2889=float2(0.0);
l9_2889=l9_2887.Surface_UVCoord0;
l9_2882=l9_2889;
l9_2888=l9_2882;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==1)
{
float2 l9_2890=float2(0.0);
l9_2890=l9_2887.Surface_UVCoord1;
l9_2883=l9_2890;
l9_2888=l9_2883;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==2)
{
float2 l9_2891=float2(0.0);
float2 l9_2892=float2(0.0);
float2 l9_2893=float2(0.0);
ssGlobals l9_2894=l9_2887;
float2 l9_2895;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2896=float2(0.0);
float2 l9_2897=float2(0.0);
float2 l9_2898=float2(0.0);
ssGlobals l9_2899=l9_2894;
float2 l9_2900;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2901=float2(0.0);
float2 l9_2902=float2(0.0);
float2 l9_2903=float2(0.0);
float2 l9_2904=float2(0.0);
float2 l9_2905=float2(0.0);
ssGlobals l9_2906=l9_2899;
float2 l9_2907;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2908=float2(0.0);
l9_2908=l9_2906.Surface_UVCoord0;
l9_2902=l9_2908;
l9_2907=l9_2902;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2909=float2(0.0);
l9_2909=l9_2906.Surface_UVCoord1;
l9_2903=l9_2909;
l9_2907=l9_2903;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2910=float2(0.0);
l9_2910=l9_2906.gScreenCoord;
l9_2904=l9_2910;
l9_2907=l9_2904;
}
else
{
float2 l9_2911=float2(0.0);
l9_2911=l9_2906.Surface_UVCoord0;
l9_2905=l9_2911;
l9_2907=l9_2905;
}
}
}
l9_2901=l9_2907;
float2 l9_2912=float2(0.0);
float2 l9_2913=(*sc_set0.UserUniforms).uv2Scale;
l9_2912=l9_2913;
float2 l9_2914=float2(0.0);
l9_2914=l9_2912;
float2 l9_2915=float2(0.0);
float2 l9_2916=(*sc_set0.UserUniforms).uv2Offset;
l9_2915=l9_2916;
float2 l9_2917=float2(0.0);
l9_2917=l9_2915;
float2 l9_2918=float2(0.0);
l9_2918=(l9_2901*l9_2914)+l9_2917;
float2 l9_2919=float2(0.0);
l9_2919=l9_2918+(l9_2917*(l9_2899.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2897=l9_2919;
l9_2900=l9_2897;
}
else
{
float2 l9_2920=float2(0.0);
float2 l9_2921=float2(0.0);
float2 l9_2922=float2(0.0);
float2 l9_2923=float2(0.0);
float2 l9_2924=float2(0.0);
ssGlobals l9_2925=l9_2899;
float2 l9_2926;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2927=float2(0.0);
l9_2927=l9_2925.Surface_UVCoord0;
l9_2921=l9_2927;
l9_2926=l9_2921;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2928=float2(0.0);
l9_2928=l9_2925.Surface_UVCoord1;
l9_2922=l9_2928;
l9_2926=l9_2922;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2929=float2(0.0);
l9_2929=l9_2925.gScreenCoord;
l9_2923=l9_2929;
l9_2926=l9_2923;
}
else
{
float2 l9_2930=float2(0.0);
l9_2930=l9_2925.Surface_UVCoord0;
l9_2924=l9_2930;
l9_2926=l9_2924;
}
}
}
l9_2920=l9_2926;
float2 l9_2931=float2(0.0);
float2 l9_2932=(*sc_set0.UserUniforms).uv2Scale;
l9_2931=l9_2932;
float2 l9_2933=float2(0.0);
l9_2933=l9_2931;
float2 l9_2934=float2(0.0);
float2 l9_2935=(*sc_set0.UserUniforms).uv2Offset;
l9_2934=l9_2935;
float2 l9_2936=float2(0.0);
l9_2936=l9_2934;
float2 l9_2937=float2(0.0);
l9_2937=(l9_2920*l9_2933)+l9_2936;
l9_2898=l9_2937;
l9_2900=l9_2898;
}
l9_2896=l9_2900;
l9_2892=l9_2896;
l9_2895=l9_2892;
}
else
{
float2 l9_2938=float2(0.0);
l9_2938=l9_2894.Surface_UVCoord0;
l9_2893=l9_2938;
l9_2895=l9_2893;
}
l9_2891=l9_2895;
float2 l9_2939=float2(0.0);
l9_2939=l9_2891;
float2 l9_2940=float2(0.0);
l9_2940=l9_2939;
l9_2884=l9_2940;
l9_2888=l9_2884;
}
else
{
if (NODE_76_DROPLIST_ITEM_tmp==3)
{
float2 l9_2941=float2(0.0);
float2 l9_2942=float2(0.0);
float2 l9_2943=float2(0.0);
ssGlobals l9_2944=l9_2887;
float2 l9_2945;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_2946=float2(0.0);
float2 l9_2947=float2(0.0);
float2 l9_2948=float2(0.0);
ssGlobals l9_2949=l9_2944;
float2 l9_2950;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_2951=float2(0.0);
float2 l9_2952=float2(0.0);
float2 l9_2953=float2(0.0);
float2 l9_2954=float2(0.0);
float2 l9_2955=float2(0.0);
float2 l9_2956=float2(0.0);
ssGlobals l9_2957=l9_2949;
float2 l9_2958;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_2959=float2(0.0);
l9_2959=l9_2957.Surface_UVCoord0;
l9_2952=l9_2959;
l9_2958=l9_2952;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_2960=float2(0.0);
l9_2960=l9_2957.Surface_UVCoord1;
l9_2953=l9_2960;
l9_2958=l9_2953;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_2961=float2(0.0);
l9_2961=l9_2957.gScreenCoord;
l9_2954=l9_2961;
l9_2958=l9_2954;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_2962=float2(0.0);
float2 l9_2963=float2(0.0);
float2 l9_2964=float2(0.0);
ssGlobals l9_2965=l9_2957;
float2 l9_2966;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_2967=float2(0.0);
float2 l9_2968=float2(0.0);
float2 l9_2969=float2(0.0);
ssGlobals l9_2970=l9_2965;
float2 l9_2971;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_2972=float2(0.0);
float2 l9_2973=float2(0.0);
float2 l9_2974=float2(0.0);
float2 l9_2975=float2(0.0);
float2 l9_2976=float2(0.0);
ssGlobals l9_2977=l9_2970;
float2 l9_2978;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2979=float2(0.0);
l9_2979=l9_2977.Surface_UVCoord0;
l9_2973=l9_2979;
l9_2978=l9_2973;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2980=float2(0.0);
l9_2980=l9_2977.Surface_UVCoord1;
l9_2974=l9_2980;
l9_2978=l9_2974;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_2981=float2(0.0);
l9_2981=l9_2977.gScreenCoord;
l9_2975=l9_2981;
l9_2978=l9_2975;
}
else
{
float2 l9_2982=float2(0.0);
l9_2982=l9_2977.Surface_UVCoord0;
l9_2976=l9_2982;
l9_2978=l9_2976;
}
}
}
l9_2972=l9_2978;
float2 l9_2983=float2(0.0);
float2 l9_2984=(*sc_set0.UserUniforms).uv2Scale;
l9_2983=l9_2984;
float2 l9_2985=float2(0.0);
l9_2985=l9_2983;
float2 l9_2986=float2(0.0);
float2 l9_2987=(*sc_set0.UserUniforms).uv2Offset;
l9_2986=l9_2987;
float2 l9_2988=float2(0.0);
l9_2988=l9_2986;
float2 l9_2989=float2(0.0);
l9_2989=(l9_2972*l9_2985)+l9_2988;
float2 l9_2990=float2(0.0);
l9_2990=l9_2989+(l9_2988*(l9_2970.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_2968=l9_2990;
l9_2971=l9_2968;
}
else
{
float2 l9_2991=float2(0.0);
float2 l9_2992=float2(0.0);
float2 l9_2993=float2(0.0);
float2 l9_2994=float2(0.0);
float2 l9_2995=float2(0.0);
ssGlobals l9_2996=l9_2970;
float2 l9_2997;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_2998=float2(0.0);
l9_2998=l9_2996.Surface_UVCoord0;
l9_2992=l9_2998;
l9_2997=l9_2992;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_2999=float2(0.0);
l9_2999=l9_2996.Surface_UVCoord1;
l9_2993=l9_2999;
l9_2997=l9_2993;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3000=float2(0.0);
l9_3000=l9_2996.gScreenCoord;
l9_2994=l9_3000;
l9_2997=l9_2994;
}
else
{
float2 l9_3001=float2(0.0);
l9_3001=l9_2996.Surface_UVCoord0;
l9_2995=l9_3001;
l9_2997=l9_2995;
}
}
}
l9_2991=l9_2997;
float2 l9_3002=float2(0.0);
float2 l9_3003=(*sc_set0.UserUniforms).uv2Scale;
l9_3002=l9_3003;
float2 l9_3004=float2(0.0);
l9_3004=l9_3002;
float2 l9_3005=float2(0.0);
float2 l9_3006=(*sc_set0.UserUniforms).uv2Offset;
l9_3005=l9_3006;
float2 l9_3007=float2(0.0);
l9_3007=l9_3005;
float2 l9_3008=float2(0.0);
l9_3008=(l9_2991*l9_3004)+l9_3007;
l9_2969=l9_3008;
l9_2971=l9_2969;
}
l9_2967=l9_2971;
l9_2963=l9_2967;
l9_2966=l9_2963;
}
else
{
float2 l9_3009=float2(0.0);
l9_3009=l9_2965.Surface_UVCoord0;
l9_2964=l9_3009;
l9_2966=l9_2964;
}
l9_2962=l9_2966;
float2 l9_3010=float2(0.0);
l9_3010=l9_2962;
float2 l9_3011=float2(0.0);
l9_3011=l9_3010;
l9_2955=l9_3011;
l9_2958=l9_2955;
}
else
{
float2 l9_3012=float2(0.0);
l9_3012=l9_2957.Surface_UVCoord0;
l9_2956=l9_3012;
l9_2958=l9_2956;
}
}
}
}
l9_2951=l9_2958;
float2 l9_3013=float2(0.0);
float2 l9_3014=(*sc_set0.UserUniforms).uv3Scale;
l9_3013=l9_3014;
float2 l9_3015=float2(0.0);
l9_3015=l9_3013;
float2 l9_3016=float2(0.0);
float2 l9_3017=(*sc_set0.UserUniforms).uv3Offset;
l9_3016=l9_3017;
float2 l9_3018=float2(0.0);
l9_3018=l9_3016;
float2 l9_3019=float2(0.0);
l9_3019=(l9_2951*l9_3015)+l9_3018;
float2 l9_3020=float2(0.0);
l9_3020=l9_3019+(l9_3018*(l9_2949.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_2947=l9_3020;
l9_2950=l9_2947;
}
else
{
float2 l9_3021=float2(0.0);
float2 l9_3022=float2(0.0);
float2 l9_3023=float2(0.0);
float2 l9_3024=float2(0.0);
float2 l9_3025=float2(0.0);
float2 l9_3026=float2(0.0);
ssGlobals l9_3027=l9_2949;
float2 l9_3028;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3029=float2(0.0);
l9_3029=l9_3027.Surface_UVCoord0;
l9_3022=l9_3029;
l9_3028=l9_3022;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3030=float2(0.0);
l9_3030=l9_3027.Surface_UVCoord1;
l9_3023=l9_3030;
l9_3028=l9_3023;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3031=float2(0.0);
l9_3031=l9_3027.gScreenCoord;
l9_3024=l9_3031;
l9_3028=l9_3024;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3032=float2(0.0);
float2 l9_3033=float2(0.0);
float2 l9_3034=float2(0.0);
ssGlobals l9_3035=l9_3027;
float2 l9_3036;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_3037=float2(0.0);
float2 l9_3038=float2(0.0);
float2 l9_3039=float2(0.0);
ssGlobals l9_3040=l9_3035;
float2 l9_3041;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3042=float2(0.0);
float2 l9_3043=float2(0.0);
float2 l9_3044=float2(0.0);
float2 l9_3045=float2(0.0);
float2 l9_3046=float2(0.0);
ssGlobals l9_3047=l9_3040;
float2 l9_3048;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3049=float2(0.0);
l9_3049=l9_3047.Surface_UVCoord0;
l9_3043=l9_3049;
l9_3048=l9_3043;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3050=float2(0.0);
l9_3050=l9_3047.Surface_UVCoord1;
l9_3044=l9_3050;
l9_3048=l9_3044;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3051=float2(0.0);
l9_3051=l9_3047.gScreenCoord;
l9_3045=l9_3051;
l9_3048=l9_3045;
}
else
{
float2 l9_3052=float2(0.0);
l9_3052=l9_3047.Surface_UVCoord0;
l9_3046=l9_3052;
l9_3048=l9_3046;
}
}
}
l9_3042=l9_3048;
float2 l9_3053=float2(0.0);
float2 l9_3054=(*sc_set0.UserUniforms).uv2Scale;
l9_3053=l9_3054;
float2 l9_3055=float2(0.0);
l9_3055=l9_3053;
float2 l9_3056=float2(0.0);
float2 l9_3057=(*sc_set0.UserUniforms).uv2Offset;
l9_3056=l9_3057;
float2 l9_3058=float2(0.0);
l9_3058=l9_3056;
float2 l9_3059=float2(0.0);
l9_3059=(l9_3042*l9_3055)+l9_3058;
float2 l9_3060=float2(0.0);
l9_3060=l9_3059+(l9_3058*(l9_3040.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3038=l9_3060;
l9_3041=l9_3038;
}
else
{
float2 l9_3061=float2(0.0);
float2 l9_3062=float2(0.0);
float2 l9_3063=float2(0.0);
float2 l9_3064=float2(0.0);
float2 l9_3065=float2(0.0);
ssGlobals l9_3066=l9_3040;
float2 l9_3067;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3068=float2(0.0);
l9_3068=l9_3066.Surface_UVCoord0;
l9_3062=l9_3068;
l9_3067=l9_3062;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3069=float2(0.0);
l9_3069=l9_3066.Surface_UVCoord1;
l9_3063=l9_3069;
l9_3067=l9_3063;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3070=float2(0.0);
l9_3070=l9_3066.gScreenCoord;
l9_3064=l9_3070;
l9_3067=l9_3064;
}
else
{
float2 l9_3071=float2(0.0);
l9_3071=l9_3066.Surface_UVCoord0;
l9_3065=l9_3071;
l9_3067=l9_3065;
}
}
}
l9_3061=l9_3067;
float2 l9_3072=float2(0.0);
float2 l9_3073=(*sc_set0.UserUniforms).uv2Scale;
l9_3072=l9_3073;
float2 l9_3074=float2(0.0);
l9_3074=l9_3072;
float2 l9_3075=float2(0.0);
float2 l9_3076=(*sc_set0.UserUniforms).uv2Offset;
l9_3075=l9_3076;
float2 l9_3077=float2(0.0);
l9_3077=l9_3075;
float2 l9_3078=float2(0.0);
l9_3078=(l9_3061*l9_3074)+l9_3077;
l9_3039=l9_3078;
l9_3041=l9_3039;
}
l9_3037=l9_3041;
l9_3033=l9_3037;
l9_3036=l9_3033;
}
else
{
float2 l9_3079=float2(0.0);
l9_3079=l9_3035.Surface_UVCoord0;
l9_3034=l9_3079;
l9_3036=l9_3034;
}
l9_3032=l9_3036;
float2 l9_3080=float2(0.0);
l9_3080=l9_3032;
float2 l9_3081=float2(0.0);
l9_3081=l9_3080;
l9_3025=l9_3081;
l9_3028=l9_3025;
}
else
{
float2 l9_3082=float2(0.0);
l9_3082=l9_3027.Surface_UVCoord0;
l9_3026=l9_3082;
l9_3028=l9_3026;
}
}
}
}
l9_3021=l9_3028;
float2 l9_3083=float2(0.0);
float2 l9_3084=(*sc_set0.UserUniforms).uv3Scale;
l9_3083=l9_3084;
float2 l9_3085=float2(0.0);
l9_3085=l9_3083;
float2 l9_3086=float2(0.0);
float2 l9_3087=(*sc_set0.UserUniforms).uv3Offset;
l9_3086=l9_3087;
float2 l9_3088=float2(0.0);
l9_3088=l9_3086;
float2 l9_3089=float2(0.0);
l9_3089=(l9_3021*l9_3085)+l9_3088;
l9_2948=l9_3089;
l9_2950=l9_2948;
}
l9_2946=l9_2950;
l9_2942=l9_2946;
l9_2945=l9_2942;
}
else
{
float2 l9_3090=float2(0.0);
l9_3090=l9_2944.Surface_UVCoord0;
l9_2943=l9_3090;
l9_2945=l9_2943;
}
l9_2941=l9_2945;
float2 l9_3091=float2(0.0);
l9_3091=l9_2941;
float2 l9_3092=float2(0.0);
l9_3092=l9_3091;
l9_2885=l9_3092;
l9_2888=l9_2885;
}
else
{
float2 l9_3093=float2(0.0);
l9_3093=l9_2887.Surface_UVCoord0;
l9_2886=l9_3093;
l9_2888=l9_2886;
}
}
}
}
l9_2881=l9_2888;
float4 l9_3094=float4(0.0);
int l9_3095;
if ((int(emissiveTexHasSwappedViews_tmp)!=0))
{
int l9_3096=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3096=0;
}
else
{
l9_3096=in.varStereoViewID;
}
int l9_3097=l9_3096;
l9_3095=1-l9_3097;
}
else
{
int l9_3098=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3098=0;
}
else
{
l9_3098=in.varStereoViewID;
}
int l9_3099=l9_3098;
l9_3095=l9_3099;
}
int l9_3100=l9_3095;
int l9_3101=emissiveTexLayout_tmp;
int l9_3102=l9_3100;
float2 l9_3103=l9_2881;
bool l9_3104=(int(SC_USE_UV_TRANSFORM_emissiveTex_tmp)!=0);
float3x3 l9_3105=(*sc_set0.UserUniforms).emissiveTexTransform;
int2 l9_3106=int2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex_tmp,SC_SOFTWARE_WRAP_MODE_V_emissiveTex_tmp);
bool l9_3107=(int(SC_USE_UV_MIN_MAX_emissiveTex_tmp)!=0);
float4 l9_3108=(*sc_set0.UserUniforms).emissiveTexUvMinMax;
bool l9_3109=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex_tmp)!=0);
float4 l9_3110=(*sc_set0.UserUniforms).emissiveTexBorderColor;
float l9_3111=0.0;
bool l9_3112=l9_3109&&(!l9_3107);
float l9_3113=1.0;
float l9_3114=l9_3103.x;
int l9_3115=l9_3106.x;
if (l9_3115==1)
{
l9_3114=fract(l9_3114);
}
else
{
if (l9_3115==2)
{
float l9_3116=fract(l9_3114);
float l9_3117=l9_3114-l9_3116;
float l9_3118=step(0.25,fract(l9_3117*0.5));
l9_3114=mix(l9_3116,1.0-l9_3116,fast::clamp(l9_3118,0.0,1.0));
}
}
l9_3103.x=l9_3114;
float l9_3119=l9_3103.y;
int l9_3120=l9_3106.y;
if (l9_3120==1)
{
l9_3119=fract(l9_3119);
}
else
{
if (l9_3120==2)
{
float l9_3121=fract(l9_3119);
float l9_3122=l9_3119-l9_3121;
float l9_3123=step(0.25,fract(l9_3122*0.5));
l9_3119=mix(l9_3121,1.0-l9_3121,fast::clamp(l9_3123,0.0,1.0));
}
}
l9_3103.y=l9_3119;
if (l9_3107)
{
bool l9_3124=l9_3109;
bool l9_3125;
if (l9_3124)
{
l9_3125=l9_3106.x==3;
}
else
{
l9_3125=l9_3124;
}
float l9_3126=l9_3103.x;
float l9_3127=l9_3108.x;
float l9_3128=l9_3108.z;
bool l9_3129=l9_3125;
float l9_3130=l9_3113;
float l9_3131=fast::clamp(l9_3126,l9_3127,l9_3128);
float l9_3132=step(abs(l9_3126-l9_3131),9.9999997e-06);
l9_3130*=(l9_3132+((1.0-float(l9_3129))*(1.0-l9_3132)));
l9_3126=l9_3131;
l9_3103.x=l9_3126;
l9_3113=l9_3130;
bool l9_3133=l9_3109;
bool l9_3134;
if (l9_3133)
{
l9_3134=l9_3106.y==3;
}
else
{
l9_3134=l9_3133;
}
float l9_3135=l9_3103.y;
float l9_3136=l9_3108.y;
float l9_3137=l9_3108.w;
bool l9_3138=l9_3134;
float l9_3139=l9_3113;
float l9_3140=fast::clamp(l9_3135,l9_3136,l9_3137);
float l9_3141=step(abs(l9_3135-l9_3140),9.9999997e-06);
l9_3139*=(l9_3141+((1.0-float(l9_3138))*(1.0-l9_3141)));
l9_3135=l9_3140;
l9_3103.y=l9_3135;
l9_3113=l9_3139;
}
float2 l9_3142=l9_3103;
bool l9_3143=l9_3104;
float3x3 l9_3144=l9_3105;
if (l9_3143)
{
l9_3142=float2((l9_3144*float3(l9_3142,1.0)).xy);
}
float2 l9_3145=l9_3142;
l9_3103=l9_3145;
float l9_3146=l9_3103.x;
int l9_3147=l9_3106.x;
bool l9_3148=l9_3112;
float l9_3149=l9_3113;
if ((l9_3147==0)||(l9_3147==3))
{
float l9_3150=l9_3146;
float l9_3151=0.0;
float l9_3152=1.0;
bool l9_3153=l9_3148;
float l9_3154=l9_3149;
float l9_3155=fast::clamp(l9_3150,l9_3151,l9_3152);
float l9_3156=step(abs(l9_3150-l9_3155),9.9999997e-06);
l9_3154*=(l9_3156+((1.0-float(l9_3153))*(1.0-l9_3156)));
l9_3150=l9_3155;
l9_3146=l9_3150;
l9_3149=l9_3154;
}
l9_3103.x=l9_3146;
l9_3113=l9_3149;
float l9_3157=l9_3103.y;
int l9_3158=l9_3106.y;
bool l9_3159=l9_3112;
float l9_3160=l9_3113;
if ((l9_3158==0)||(l9_3158==3))
{
float l9_3161=l9_3157;
float l9_3162=0.0;
float l9_3163=1.0;
bool l9_3164=l9_3159;
float l9_3165=l9_3160;
float l9_3166=fast::clamp(l9_3161,l9_3162,l9_3163);
float l9_3167=step(abs(l9_3161-l9_3166),9.9999997e-06);
l9_3165*=(l9_3167+((1.0-float(l9_3164))*(1.0-l9_3167)));
l9_3161=l9_3166;
l9_3157=l9_3161;
l9_3160=l9_3165;
}
l9_3103.y=l9_3157;
l9_3113=l9_3160;
float2 l9_3168=l9_3103;
int l9_3169=l9_3101;
int l9_3170=l9_3102;
float l9_3171=l9_3111;
float2 l9_3172=l9_3168;
int l9_3173=l9_3169;
int l9_3174=l9_3170;
float3 l9_3175=float3(0.0);
if (l9_3173==0)
{
l9_3175=float3(l9_3172,0.0);
}
else
{
if (l9_3173==1)
{
l9_3175=float3(l9_3172.x,(l9_3172.y*0.5)+(0.5-(float(l9_3174)*0.5)),0.0);
}
else
{
l9_3175=float3(l9_3172,float(l9_3174));
}
}
float3 l9_3176=l9_3175;
float3 l9_3177=l9_3176;
float4 l9_3178=sc_set0.emissiveTex.sample(sc_set0.emissiveTexSmpSC,l9_3177.xy,bias(l9_3171));
float4 l9_3179=l9_3178;
if (l9_3109)
{
l9_3179=mix(l9_3110,l9_3179,float4(l9_3113));
}
float4 l9_3180=l9_3179;
l9_3094=l9_3180;
l9_2877=l9_3094.xyz;
l9_2880=l9_2877;
}
else
{
l9_2880=l9_2878;
}
l9_2876=l9_2880;
l9_2566=l9_2876;
l9_2568=l9_2566;
}
l9_2564=l9_2568;
float3 l9_3181=float3(0.0);
float3 l9_3182=(*sc_set0.UserUniforms).emissiveColor;
l9_3181=l9_3182;
float3 l9_3183=float3(0.0);
l9_3183=l9_3181;
float l9_3184=0.0;
float l9_3185=(*sc_set0.UserUniforms).emissiveIntensity;
l9_3184=l9_3185;
float l9_3186=0.0;
l9_3186=l9_3184;
float3 l9_3187=float3(0.0);
l9_3187=(l9_2564*l9_3183)*float3(l9_3186);
float3 l9_3188=float3(0.0);
float3 l9_3189=l9_3187;
float3 l9_3190;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_3190=float3(pow(l9_3189.x,2.2),pow(l9_3189.y,2.2),pow(l9_3189.z,2.2));
}
else
{
l9_3190=l9_3189*l9_3189;
}
float3 l9_3191=l9_3190;
l9_3188=l9_3191;
param_22=l9_3188;
param_24=param_22;
}
else
{
param_24=param_23;
}
Result_N103=param_24;
float3 Result_N134=float3(0.0);
float3 param_26=float3(0.0);
float3 param_27=(*sc_set0.UserUniforms).Port_Default_N134;
ssGlobals param_29=Globals;
float3 param_28;
if ((int(Tweak_N179_tmp)!=0))
{
float l9_3192=0.0;
float l9_3193=(*sc_set0.UserUniforms).reflectionIntensity;
l9_3192=l9_3193;
float l9_3194=0.0;
l9_3194=l9_3192;
float3 l9_3195=float3(0.0);
l9_3195=param_29.ViewDirWS;
float3 l9_3196=float3(0.0);
float3 l9_3197=float3(0.0);
float3 l9_3198=float3(0.0);
ssGlobals l9_3199=param_29;
float3 l9_3200;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_3201=float3(0.0);
l9_3201=l9_3199.VertexTangent_WorldSpace;
float3 l9_3202=float3(0.0);
l9_3202=l9_3199.VertexBinormal_WorldSpace;
float3 l9_3203=float3(0.0);
l9_3203=l9_3199.VertexNormal_WorldSpace;
float3x3 l9_3204=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_3204=float3x3(float3(l9_3201),float3(l9_3202),float3(l9_3203));
float2 l9_3205=float2(0.0);
float2 l9_3206=float2(0.0);
float2 l9_3207=float2(0.0);
float2 l9_3208=float2(0.0);
float2 l9_3209=float2(0.0);
float2 l9_3210=float2(0.0);
ssGlobals l9_3211=l9_3199;
float2 l9_3212;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_3213=float2(0.0);
l9_3213=l9_3211.Surface_UVCoord0;
l9_3206=l9_3213;
l9_3212=l9_3206;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_3214=float2(0.0);
l9_3214=l9_3211.Surface_UVCoord1;
l9_3207=l9_3214;
l9_3212=l9_3207;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_3215=float2(0.0);
float2 l9_3216=float2(0.0);
float2 l9_3217=float2(0.0);
ssGlobals l9_3218=l9_3211;
float2 l9_3219;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_3220=float2(0.0);
float2 l9_3221=float2(0.0);
float2 l9_3222=float2(0.0);
ssGlobals l9_3223=l9_3218;
float2 l9_3224;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3225=float2(0.0);
float2 l9_3226=float2(0.0);
float2 l9_3227=float2(0.0);
float2 l9_3228=float2(0.0);
float2 l9_3229=float2(0.0);
ssGlobals l9_3230=l9_3223;
float2 l9_3231;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3232=float2(0.0);
l9_3232=l9_3230.Surface_UVCoord0;
l9_3226=l9_3232;
l9_3231=l9_3226;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3233=float2(0.0);
l9_3233=l9_3230.Surface_UVCoord1;
l9_3227=l9_3233;
l9_3231=l9_3227;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3234=float2(0.0);
l9_3234=l9_3230.gScreenCoord;
l9_3228=l9_3234;
l9_3231=l9_3228;
}
else
{
float2 l9_3235=float2(0.0);
l9_3235=l9_3230.Surface_UVCoord0;
l9_3229=l9_3235;
l9_3231=l9_3229;
}
}
}
l9_3225=l9_3231;
float2 l9_3236=float2(0.0);
float2 l9_3237=(*sc_set0.UserUniforms).uv2Scale;
l9_3236=l9_3237;
float2 l9_3238=float2(0.0);
l9_3238=l9_3236;
float2 l9_3239=float2(0.0);
float2 l9_3240=(*sc_set0.UserUniforms).uv2Offset;
l9_3239=l9_3240;
float2 l9_3241=float2(0.0);
l9_3241=l9_3239;
float2 l9_3242=float2(0.0);
l9_3242=(l9_3225*l9_3238)+l9_3241;
float2 l9_3243=float2(0.0);
l9_3243=l9_3242+(l9_3241*(l9_3223.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3221=l9_3243;
l9_3224=l9_3221;
}
else
{
float2 l9_3244=float2(0.0);
float2 l9_3245=float2(0.0);
float2 l9_3246=float2(0.0);
float2 l9_3247=float2(0.0);
float2 l9_3248=float2(0.0);
ssGlobals l9_3249=l9_3223;
float2 l9_3250;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3251=float2(0.0);
l9_3251=l9_3249.Surface_UVCoord0;
l9_3245=l9_3251;
l9_3250=l9_3245;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3252=float2(0.0);
l9_3252=l9_3249.Surface_UVCoord1;
l9_3246=l9_3252;
l9_3250=l9_3246;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3253=float2(0.0);
l9_3253=l9_3249.gScreenCoord;
l9_3247=l9_3253;
l9_3250=l9_3247;
}
else
{
float2 l9_3254=float2(0.0);
l9_3254=l9_3249.Surface_UVCoord0;
l9_3248=l9_3254;
l9_3250=l9_3248;
}
}
}
l9_3244=l9_3250;
float2 l9_3255=float2(0.0);
float2 l9_3256=(*sc_set0.UserUniforms).uv2Scale;
l9_3255=l9_3256;
float2 l9_3257=float2(0.0);
l9_3257=l9_3255;
float2 l9_3258=float2(0.0);
float2 l9_3259=(*sc_set0.UserUniforms).uv2Offset;
l9_3258=l9_3259;
float2 l9_3260=float2(0.0);
l9_3260=l9_3258;
float2 l9_3261=float2(0.0);
l9_3261=(l9_3244*l9_3257)+l9_3260;
l9_3222=l9_3261;
l9_3224=l9_3222;
}
l9_3220=l9_3224;
l9_3216=l9_3220;
l9_3219=l9_3216;
}
else
{
float2 l9_3262=float2(0.0);
l9_3262=l9_3218.Surface_UVCoord0;
l9_3217=l9_3262;
l9_3219=l9_3217;
}
l9_3215=l9_3219;
float2 l9_3263=float2(0.0);
l9_3263=l9_3215;
float2 l9_3264=float2(0.0);
l9_3264=l9_3263;
l9_3208=l9_3264;
l9_3212=l9_3208;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_3265=float2(0.0);
float2 l9_3266=float2(0.0);
float2 l9_3267=float2(0.0);
ssGlobals l9_3268=l9_3211;
float2 l9_3269;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_3270=float2(0.0);
float2 l9_3271=float2(0.0);
float2 l9_3272=float2(0.0);
ssGlobals l9_3273=l9_3268;
float2 l9_3274;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_3275=float2(0.0);
float2 l9_3276=float2(0.0);
float2 l9_3277=float2(0.0);
float2 l9_3278=float2(0.0);
float2 l9_3279=float2(0.0);
float2 l9_3280=float2(0.0);
ssGlobals l9_3281=l9_3273;
float2 l9_3282;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3283=float2(0.0);
l9_3283=l9_3281.Surface_UVCoord0;
l9_3276=l9_3283;
l9_3282=l9_3276;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3284=float2(0.0);
l9_3284=l9_3281.Surface_UVCoord1;
l9_3277=l9_3284;
l9_3282=l9_3277;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3285=float2(0.0);
l9_3285=l9_3281.gScreenCoord;
l9_3278=l9_3285;
l9_3282=l9_3278;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3286=float2(0.0);
float2 l9_3287=float2(0.0);
float2 l9_3288=float2(0.0);
ssGlobals l9_3289=l9_3281;
float2 l9_3290;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_3291=float2(0.0);
float2 l9_3292=float2(0.0);
float2 l9_3293=float2(0.0);
ssGlobals l9_3294=l9_3289;
float2 l9_3295;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3296=float2(0.0);
float2 l9_3297=float2(0.0);
float2 l9_3298=float2(0.0);
float2 l9_3299=float2(0.0);
float2 l9_3300=float2(0.0);
ssGlobals l9_3301=l9_3294;
float2 l9_3302;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3303=float2(0.0);
l9_3303=l9_3301.Surface_UVCoord0;
l9_3297=l9_3303;
l9_3302=l9_3297;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3304=float2(0.0);
l9_3304=l9_3301.Surface_UVCoord1;
l9_3298=l9_3304;
l9_3302=l9_3298;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3305=float2(0.0);
l9_3305=l9_3301.gScreenCoord;
l9_3299=l9_3305;
l9_3302=l9_3299;
}
else
{
float2 l9_3306=float2(0.0);
l9_3306=l9_3301.Surface_UVCoord0;
l9_3300=l9_3306;
l9_3302=l9_3300;
}
}
}
l9_3296=l9_3302;
float2 l9_3307=float2(0.0);
float2 l9_3308=(*sc_set0.UserUniforms).uv2Scale;
l9_3307=l9_3308;
float2 l9_3309=float2(0.0);
l9_3309=l9_3307;
float2 l9_3310=float2(0.0);
float2 l9_3311=(*sc_set0.UserUniforms).uv2Offset;
l9_3310=l9_3311;
float2 l9_3312=float2(0.0);
l9_3312=l9_3310;
float2 l9_3313=float2(0.0);
l9_3313=(l9_3296*l9_3309)+l9_3312;
float2 l9_3314=float2(0.0);
l9_3314=l9_3313+(l9_3312*(l9_3294.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3292=l9_3314;
l9_3295=l9_3292;
}
else
{
float2 l9_3315=float2(0.0);
float2 l9_3316=float2(0.0);
float2 l9_3317=float2(0.0);
float2 l9_3318=float2(0.0);
float2 l9_3319=float2(0.0);
ssGlobals l9_3320=l9_3294;
float2 l9_3321;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3322=float2(0.0);
l9_3322=l9_3320.Surface_UVCoord0;
l9_3316=l9_3322;
l9_3321=l9_3316;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3323=float2(0.0);
l9_3323=l9_3320.Surface_UVCoord1;
l9_3317=l9_3323;
l9_3321=l9_3317;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3324=float2(0.0);
l9_3324=l9_3320.gScreenCoord;
l9_3318=l9_3324;
l9_3321=l9_3318;
}
else
{
float2 l9_3325=float2(0.0);
l9_3325=l9_3320.Surface_UVCoord0;
l9_3319=l9_3325;
l9_3321=l9_3319;
}
}
}
l9_3315=l9_3321;
float2 l9_3326=float2(0.0);
float2 l9_3327=(*sc_set0.UserUniforms).uv2Scale;
l9_3326=l9_3327;
float2 l9_3328=float2(0.0);
l9_3328=l9_3326;
float2 l9_3329=float2(0.0);
float2 l9_3330=(*sc_set0.UserUniforms).uv2Offset;
l9_3329=l9_3330;
float2 l9_3331=float2(0.0);
l9_3331=l9_3329;
float2 l9_3332=float2(0.0);
l9_3332=(l9_3315*l9_3328)+l9_3331;
l9_3293=l9_3332;
l9_3295=l9_3293;
}
l9_3291=l9_3295;
l9_3287=l9_3291;
l9_3290=l9_3287;
}
else
{
float2 l9_3333=float2(0.0);
l9_3333=l9_3289.Surface_UVCoord0;
l9_3288=l9_3333;
l9_3290=l9_3288;
}
l9_3286=l9_3290;
float2 l9_3334=float2(0.0);
l9_3334=l9_3286;
float2 l9_3335=float2(0.0);
l9_3335=l9_3334;
l9_3279=l9_3335;
l9_3282=l9_3279;
}
else
{
float2 l9_3336=float2(0.0);
l9_3336=l9_3281.Surface_UVCoord0;
l9_3280=l9_3336;
l9_3282=l9_3280;
}
}
}
}
l9_3275=l9_3282;
float2 l9_3337=float2(0.0);
float2 l9_3338=(*sc_set0.UserUniforms).uv3Scale;
l9_3337=l9_3338;
float2 l9_3339=float2(0.0);
l9_3339=l9_3337;
float2 l9_3340=float2(0.0);
float2 l9_3341=(*sc_set0.UserUniforms).uv3Offset;
l9_3340=l9_3341;
float2 l9_3342=float2(0.0);
l9_3342=l9_3340;
float2 l9_3343=float2(0.0);
l9_3343=(l9_3275*l9_3339)+l9_3342;
float2 l9_3344=float2(0.0);
l9_3344=l9_3343+(l9_3342*(l9_3273.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_3271=l9_3344;
l9_3274=l9_3271;
}
else
{
float2 l9_3345=float2(0.0);
float2 l9_3346=float2(0.0);
float2 l9_3347=float2(0.0);
float2 l9_3348=float2(0.0);
float2 l9_3349=float2(0.0);
float2 l9_3350=float2(0.0);
ssGlobals l9_3351=l9_3273;
float2 l9_3352;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3353=float2(0.0);
l9_3353=l9_3351.Surface_UVCoord0;
l9_3346=l9_3353;
l9_3352=l9_3346;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3354=float2(0.0);
l9_3354=l9_3351.Surface_UVCoord1;
l9_3347=l9_3354;
l9_3352=l9_3347;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3355=float2(0.0);
l9_3355=l9_3351.gScreenCoord;
l9_3348=l9_3355;
l9_3352=l9_3348;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3356=float2(0.0);
float2 l9_3357=float2(0.0);
float2 l9_3358=float2(0.0);
ssGlobals l9_3359=l9_3351;
float2 l9_3360;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_3361=float2(0.0);
float2 l9_3362=float2(0.0);
float2 l9_3363=float2(0.0);
ssGlobals l9_3364=l9_3359;
float2 l9_3365;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3366=float2(0.0);
float2 l9_3367=float2(0.0);
float2 l9_3368=float2(0.0);
float2 l9_3369=float2(0.0);
float2 l9_3370=float2(0.0);
ssGlobals l9_3371=l9_3364;
float2 l9_3372;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3373=float2(0.0);
l9_3373=l9_3371.Surface_UVCoord0;
l9_3367=l9_3373;
l9_3372=l9_3367;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3374=float2(0.0);
l9_3374=l9_3371.Surface_UVCoord1;
l9_3368=l9_3374;
l9_3372=l9_3368;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3375=float2(0.0);
l9_3375=l9_3371.gScreenCoord;
l9_3369=l9_3375;
l9_3372=l9_3369;
}
else
{
float2 l9_3376=float2(0.0);
l9_3376=l9_3371.Surface_UVCoord0;
l9_3370=l9_3376;
l9_3372=l9_3370;
}
}
}
l9_3366=l9_3372;
float2 l9_3377=float2(0.0);
float2 l9_3378=(*sc_set0.UserUniforms).uv2Scale;
l9_3377=l9_3378;
float2 l9_3379=float2(0.0);
l9_3379=l9_3377;
float2 l9_3380=float2(0.0);
float2 l9_3381=(*sc_set0.UserUniforms).uv2Offset;
l9_3380=l9_3381;
float2 l9_3382=float2(0.0);
l9_3382=l9_3380;
float2 l9_3383=float2(0.0);
l9_3383=(l9_3366*l9_3379)+l9_3382;
float2 l9_3384=float2(0.0);
l9_3384=l9_3383+(l9_3382*(l9_3364.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3362=l9_3384;
l9_3365=l9_3362;
}
else
{
float2 l9_3385=float2(0.0);
float2 l9_3386=float2(0.0);
float2 l9_3387=float2(0.0);
float2 l9_3388=float2(0.0);
float2 l9_3389=float2(0.0);
ssGlobals l9_3390=l9_3364;
float2 l9_3391;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3392=float2(0.0);
l9_3392=l9_3390.Surface_UVCoord0;
l9_3386=l9_3392;
l9_3391=l9_3386;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3393=float2(0.0);
l9_3393=l9_3390.Surface_UVCoord1;
l9_3387=l9_3393;
l9_3391=l9_3387;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3394=float2(0.0);
l9_3394=l9_3390.gScreenCoord;
l9_3388=l9_3394;
l9_3391=l9_3388;
}
else
{
float2 l9_3395=float2(0.0);
l9_3395=l9_3390.Surface_UVCoord0;
l9_3389=l9_3395;
l9_3391=l9_3389;
}
}
}
l9_3385=l9_3391;
float2 l9_3396=float2(0.0);
float2 l9_3397=(*sc_set0.UserUniforms).uv2Scale;
l9_3396=l9_3397;
float2 l9_3398=float2(0.0);
l9_3398=l9_3396;
float2 l9_3399=float2(0.0);
float2 l9_3400=(*sc_set0.UserUniforms).uv2Offset;
l9_3399=l9_3400;
float2 l9_3401=float2(0.0);
l9_3401=l9_3399;
float2 l9_3402=float2(0.0);
l9_3402=(l9_3385*l9_3398)+l9_3401;
l9_3363=l9_3402;
l9_3365=l9_3363;
}
l9_3361=l9_3365;
l9_3357=l9_3361;
l9_3360=l9_3357;
}
else
{
float2 l9_3403=float2(0.0);
l9_3403=l9_3359.Surface_UVCoord0;
l9_3358=l9_3403;
l9_3360=l9_3358;
}
l9_3356=l9_3360;
float2 l9_3404=float2(0.0);
l9_3404=l9_3356;
float2 l9_3405=float2(0.0);
l9_3405=l9_3404;
l9_3349=l9_3405;
l9_3352=l9_3349;
}
else
{
float2 l9_3406=float2(0.0);
l9_3406=l9_3351.Surface_UVCoord0;
l9_3350=l9_3406;
l9_3352=l9_3350;
}
}
}
}
l9_3345=l9_3352;
float2 l9_3407=float2(0.0);
float2 l9_3408=(*sc_set0.UserUniforms).uv3Scale;
l9_3407=l9_3408;
float2 l9_3409=float2(0.0);
l9_3409=l9_3407;
float2 l9_3410=float2(0.0);
float2 l9_3411=(*sc_set0.UserUniforms).uv3Offset;
l9_3410=l9_3411;
float2 l9_3412=float2(0.0);
l9_3412=l9_3410;
float2 l9_3413=float2(0.0);
l9_3413=(l9_3345*l9_3409)+l9_3412;
l9_3272=l9_3413;
l9_3274=l9_3272;
}
l9_3270=l9_3274;
l9_3266=l9_3270;
l9_3269=l9_3266;
}
else
{
float2 l9_3414=float2(0.0);
l9_3414=l9_3268.Surface_UVCoord0;
l9_3267=l9_3414;
l9_3269=l9_3267;
}
l9_3265=l9_3269;
float2 l9_3415=float2(0.0);
l9_3415=l9_3265;
float2 l9_3416=float2(0.0);
l9_3416=l9_3415;
l9_3209=l9_3416;
l9_3212=l9_3209;
}
else
{
float2 l9_3417=float2(0.0);
l9_3417=l9_3211.Surface_UVCoord0;
l9_3210=l9_3417;
l9_3212=l9_3210;
}
}
}
}
l9_3205=l9_3212;
float4 l9_3418=float4(0.0);
float2 l9_3419=l9_3205;
int l9_3420;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_3421=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3421=0;
}
else
{
l9_3421=in.varStereoViewID;
}
int l9_3422=l9_3421;
l9_3420=1-l9_3422;
}
else
{
int l9_3423=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3423=0;
}
else
{
l9_3423=in.varStereoViewID;
}
int l9_3424=l9_3423;
l9_3420=l9_3424;
}
int l9_3425=l9_3420;
int l9_3426=normalTexLayout_tmp;
int l9_3427=l9_3425;
float2 l9_3428=l9_3419;
bool l9_3429=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_3430=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_3431=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_3432=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_3433=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_3434=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_3435=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_3436=0.0;
bool l9_3437=l9_3434&&(!l9_3432);
float l9_3438=1.0;
float l9_3439=l9_3428.x;
int l9_3440=l9_3431.x;
if (l9_3440==1)
{
l9_3439=fract(l9_3439);
}
else
{
if (l9_3440==2)
{
float l9_3441=fract(l9_3439);
float l9_3442=l9_3439-l9_3441;
float l9_3443=step(0.25,fract(l9_3442*0.5));
l9_3439=mix(l9_3441,1.0-l9_3441,fast::clamp(l9_3443,0.0,1.0));
}
}
l9_3428.x=l9_3439;
float l9_3444=l9_3428.y;
int l9_3445=l9_3431.y;
if (l9_3445==1)
{
l9_3444=fract(l9_3444);
}
else
{
if (l9_3445==2)
{
float l9_3446=fract(l9_3444);
float l9_3447=l9_3444-l9_3446;
float l9_3448=step(0.25,fract(l9_3447*0.5));
l9_3444=mix(l9_3446,1.0-l9_3446,fast::clamp(l9_3448,0.0,1.0));
}
}
l9_3428.y=l9_3444;
if (l9_3432)
{
bool l9_3449=l9_3434;
bool l9_3450;
if (l9_3449)
{
l9_3450=l9_3431.x==3;
}
else
{
l9_3450=l9_3449;
}
float l9_3451=l9_3428.x;
float l9_3452=l9_3433.x;
float l9_3453=l9_3433.z;
bool l9_3454=l9_3450;
float l9_3455=l9_3438;
float l9_3456=fast::clamp(l9_3451,l9_3452,l9_3453);
float l9_3457=step(abs(l9_3451-l9_3456),9.9999997e-06);
l9_3455*=(l9_3457+((1.0-float(l9_3454))*(1.0-l9_3457)));
l9_3451=l9_3456;
l9_3428.x=l9_3451;
l9_3438=l9_3455;
bool l9_3458=l9_3434;
bool l9_3459;
if (l9_3458)
{
l9_3459=l9_3431.y==3;
}
else
{
l9_3459=l9_3458;
}
float l9_3460=l9_3428.y;
float l9_3461=l9_3433.y;
float l9_3462=l9_3433.w;
bool l9_3463=l9_3459;
float l9_3464=l9_3438;
float l9_3465=fast::clamp(l9_3460,l9_3461,l9_3462);
float l9_3466=step(abs(l9_3460-l9_3465),9.9999997e-06);
l9_3464*=(l9_3466+((1.0-float(l9_3463))*(1.0-l9_3466)));
l9_3460=l9_3465;
l9_3428.y=l9_3460;
l9_3438=l9_3464;
}
float2 l9_3467=l9_3428;
bool l9_3468=l9_3429;
float3x3 l9_3469=l9_3430;
if (l9_3468)
{
l9_3467=float2((l9_3469*float3(l9_3467,1.0)).xy);
}
float2 l9_3470=l9_3467;
l9_3428=l9_3470;
float l9_3471=l9_3428.x;
int l9_3472=l9_3431.x;
bool l9_3473=l9_3437;
float l9_3474=l9_3438;
if ((l9_3472==0)||(l9_3472==3))
{
float l9_3475=l9_3471;
float l9_3476=0.0;
float l9_3477=1.0;
bool l9_3478=l9_3473;
float l9_3479=l9_3474;
float l9_3480=fast::clamp(l9_3475,l9_3476,l9_3477);
float l9_3481=step(abs(l9_3475-l9_3480),9.9999997e-06);
l9_3479*=(l9_3481+((1.0-float(l9_3478))*(1.0-l9_3481)));
l9_3475=l9_3480;
l9_3471=l9_3475;
l9_3474=l9_3479;
}
l9_3428.x=l9_3471;
l9_3438=l9_3474;
float l9_3482=l9_3428.y;
int l9_3483=l9_3431.y;
bool l9_3484=l9_3437;
float l9_3485=l9_3438;
if ((l9_3483==0)||(l9_3483==3))
{
float l9_3486=l9_3482;
float l9_3487=0.0;
float l9_3488=1.0;
bool l9_3489=l9_3484;
float l9_3490=l9_3485;
float l9_3491=fast::clamp(l9_3486,l9_3487,l9_3488);
float l9_3492=step(abs(l9_3486-l9_3491),9.9999997e-06);
l9_3490*=(l9_3492+((1.0-float(l9_3489))*(1.0-l9_3492)));
l9_3486=l9_3491;
l9_3482=l9_3486;
l9_3485=l9_3490;
}
l9_3428.y=l9_3482;
l9_3438=l9_3485;
float2 l9_3493=l9_3428;
int l9_3494=l9_3426;
int l9_3495=l9_3427;
float l9_3496=l9_3436;
float2 l9_3497=l9_3493;
int l9_3498=l9_3494;
int l9_3499=l9_3495;
float3 l9_3500=float3(0.0);
if (l9_3498==0)
{
l9_3500=float3(l9_3497,0.0);
}
else
{
if (l9_3498==1)
{
l9_3500=float3(l9_3497.x,(l9_3497.y*0.5)+(0.5-(float(l9_3499)*0.5)),0.0);
}
else
{
l9_3500=float3(l9_3497,float(l9_3499));
}
}
float3 l9_3501=l9_3500;
float3 l9_3502=l9_3501;
float4 l9_3503=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_3502.xy,bias(l9_3496));
float4 l9_3504=l9_3503;
if (l9_3434)
{
l9_3504=mix(l9_3435,l9_3504,float4(l9_3438));
}
float4 l9_3505=l9_3504;
float4 l9_3506=l9_3505;
float3 l9_3507=(l9_3506.xyz*1.9921875)-float3(1.0);
l9_3506=float4(l9_3507.x,l9_3507.y,l9_3507.z,l9_3506.w);
l9_3418=l9_3506;
float3 l9_3508=float3(0.0);
float3 l9_3509=float3(0.0);
float3 l9_3510=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_3511=l9_3199;
float3 l9_3512;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_3513=float2(0.0);
float2 l9_3514=float2(0.0);
float2 l9_3515=float2(0.0);
float2 l9_3516=float2(0.0);
float2 l9_3517=float2(0.0);
float2 l9_3518=float2(0.0);
ssGlobals l9_3519=l9_3511;
float2 l9_3520;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_3521=float2(0.0);
l9_3521=l9_3519.Surface_UVCoord0;
l9_3514=l9_3521;
l9_3520=l9_3514;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_3522=float2(0.0);
l9_3522=l9_3519.Surface_UVCoord1;
l9_3515=l9_3522;
l9_3520=l9_3515;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_3523=float2(0.0);
float2 l9_3524=float2(0.0);
float2 l9_3525=float2(0.0);
ssGlobals l9_3526=l9_3519;
float2 l9_3527;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_3528=float2(0.0);
float2 l9_3529=float2(0.0);
float2 l9_3530=float2(0.0);
ssGlobals l9_3531=l9_3526;
float2 l9_3532;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3533=float2(0.0);
float2 l9_3534=float2(0.0);
float2 l9_3535=float2(0.0);
float2 l9_3536=float2(0.0);
float2 l9_3537=float2(0.0);
ssGlobals l9_3538=l9_3531;
float2 l9_3539;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3540=float2(0.0);
l9_3540=l9_3538.Surface_UVCoord0;
l9_3534=l9_3540;
l9_3539=l9_3534;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3541=float2(0.0);
l9_3541=l9_3538.Surface_UVCoord1;
l9_3535=l9_3541;
l9_3539=l9_3535;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3542=float2(0.0);
l9_3542=l9_3538.gScreenCoord;
l9_3536=l9_3542;
l9_3539=l9_3536;
}
else
{
float2 l9_3543=float2(0.0);
l9_3543=l9_3538.Surface_UVCoord0;
l9_3537=l9_3543;
l9_3539=l9_3537;
}
}
}
l9_3533=l9_3539;
float2 l9_3544=float2(0.0);
float2 l9_3545=(*sc_set0.UserUniforms).uv2Scale;
l9_3544=l9_3545;
float2 l9_3546=float2(0.0);
l9_3546=l9_3544;
float2 l9_3547=float2(0.0);
float2 l9_3548=(*sc_set0.UserUniforms).uv2Offset;
l9_3547=l9_3548;
float2 l9_3549=float2(0.0);
l9_3549=l9_3547;
float2 l9_3550=float2(0.0);
l9_3550=(l9_3533*l9_3546)+l9_3549;
float2 l9_3551=float2(0.0);
l9_3551=l9_3550+(l9_3549*(l9_3531.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3529=l9_3551;
l9_3532=l9_3529;
}
else
{
float2 l9_3552=float2(0.0);
float2 l9_3553=float2(0.0);
float2 l9_3554=float2(0.0);
float2 l9_3555=float2(0.0);
float2 l9_3556=float2(0.0);
ssGlobals l9_3557=l9_3531;
float2 l9_3558;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3559=float2(0.0);
l9_3559=l9_3557.Surface_UVCoord0;
l9_3553=l9_3559;
l9_3558=l9_3553;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3560=float2(0.0);
l9_3560=l9_3557.Surface_UVCoord1;
l9_3554=l9_3560;
l9_3558=l9_3554;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3561=float2(0.0);
l9_3561=l9_3557.gScreenCoord;
l9_3555=l9_3561;
l9_3558=l9_3555;
}
else
{
float2 l9_3562=float2(0.0);
l9_3562=l9_3557.Surface_UVCoord0;
l9_3556=l9_3562;
l9_3558=l9_3556;
}
}
}
l9_3552=l9_3558;
float2 l9_3563=float2(0.0);
float2 l9_3564=(*sc_set0.UserUniforms).uv2Scale;
l9_3563=l9_3564;
float2 l9_3565=float2(0.0);
l9_3565=l9_3563;
float2 l9_3566=float2(0.0);
float2 l9_3567=(*sc_set0.UserUniforms).uv2Offset;
l9_3566=l9_3567;
float2 l9_3568=float2(0.0);
l9_3568=l9_3566;
float2 l9_3569=float2(0.0);
l9_3569=(l9_3552*l9_3565)+l9_3568;
l9_3530=l9_3569;
l9_3532=l9_3530;
}
l9_3528=l9_3532;
l9_3524=l9_3528;
l9_3527=l9_3524;
}
else
{
float2 l9_3570=float2(0.0);
l9_3570=l9_3526.Surface_UVCoord0;
l9_3525=l9_3570;
l9_3527=l9_3525;
}
l9_3523=l9_3527;
float2 l9_3571=float2(0.0);
l9_3571=l9_3523;
float2 l9_3572=float2(0.0);
l9_3572=l9_3571;
l9_3516=l9_3572;
l9_3520=l9_3516;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_3573=float2(0.0);
float2 l9_3574=float2(0.0);
float2 l9_3575=float2(0.0);
ssGlobals l9_3576=l9_3519;
float2 l9_3577;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_3578=float2(0.0);
float2 l9_3579=float2(0.0);
float2 l9_3580=float2(0.0);
ssGlobals l9_3581=l9_3576;
float2 l9_3582;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_3583=float2(0.0);
float2 l9_3584=float2(0.0);
float2 l9_3585=float2(0.0);
float2 l9_3586=float2(0.0);
float2 l9_3587=float2(0.0);
float2 l9_3588=float2(0.0);
ssGlobals l9_3589=l9_3581;
float2 l9_3590;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3591=float2(0.0);
l9_3591=l9_3589.Surface_UVCoord0;
l9_3584=l9_3591;
l9_3590=l9_3584;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3592=float2(0.0);
l9_3592=l9_3589.Surface_UVCoord1;
l9_3585=l9_3592;
l9_3590=l9_3585;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3593=float2(0.0);
l9_3593=l9_3589.gScreenCoord;
l9_3586=l9_3593;
l9_3590=l9_3586;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3594=float2(0.0);
float2 l9_3595=float2(0.0);
float2 l9_3596=float2(0.0);
ssGlobals l9_3597=l9_3589;
float2 l9_3598;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_3599=float2(0.0);
float2 l9_3600=float2(0.0);
float2 l9_3601=float2(0.0);
ssGlobals l9_3602=l9_3597;
float2 l9_3603;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3604=float2(0.0);
float2 l9_3605=float2(0.0);
float2 l9_3606=float2(0.0);
float2 l9_3607=float2(0.0);
float2 l9_3608=float2(0.0);
ssGlobals l9_3609=l9_3602;
float2 l9_3610;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3611=float2(0.0);
l9_3611=l9_3609.Surface_UVCoord0;
l9_3605=l9_3611;
l9_3610=l9_3605;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3612=float2(0.0);
l9_3612=l9_3609.Surface_UVCoord1;
l9_3606=l9_3612;
l9_3610=l9_3606;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3613=float2(0.0);
l9_3613=l9_3609.gScreenCoord;
l9_3607=l9_3613;
l9_3610=l9_3607;
}
else
{
float2 l9_3614=float2(0.0);
l9_3614=l9_3609.Surface_UVCoord0;
l9_3608=l9_3614;
l9_3610=l9_3608;
}
}
}
l9_3604=l9_3610;
float2 l9_3615=float2(0.0);
float2 l9_3616=(*sc_set0.UserUniforms).uv2Scale;
l9_3615=l9_3616;
float2 l9_3617=float2(0.0);
l9_3617=l9_3615;
float2 l9_3618=float2(0.0);
float2 l9_3619=(*sc_set0.UserUniforms).uv2Offset;
l9_3618=l9_3619;
float2 l9_3620=float2(0.0);
l9_3620=l9_3618;
float2 l9_3621=float2(0.0);
l9_3621=(l9_3604*l9_3617)+l9_3620;
float2 l9_3622=float2(0.0);
l9_3622=l9_3621+(l9_3620*(l9_3602.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3600=l9_3622;
l9_3603=l9_3600;
}
else
{
float2 l9_3623=float2(0.0);
float2 l9_3624=float2(0.0);
float2 l9_3625=float2(0.0);
float2 l9_3626=float2(0.0);
float2 l9_3627=float2(0.0);
ssGlobals l9_3628=l9_3602;
float2 l9_3629;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3630=float2(0.0);
l9_3630=l9_3628.Surface_UVCoord0;
l9_3624=l9_3630;
l9_3629=l9_3624;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3631=float2(0.0);
l9_3631=l9_3628.Surface_UVCoord1;
l9_3625=l9_3631;
l9_3629=l9_3625;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3632=float2(0.0);
l9_3632=l9_3628.gScreenCoord;
l9_3626=l9_3632;
l9_3629=l9_3626;
}
else
{
float2 l9_3633=float2(0.0);
l9_3633=l9_3628.Surface_UVCoord0;
l9_3627=l9_3633;
l9_3629=l9_3627;
}
}
}
l9_3623=l9_3629;
float2 l9_3634=float2(0.0);
float2 l9_3635=(*sc_set0.UserUniforms).uv2Scale;
l9_3634=l9_3635;
float2 l9_3636=float2(0.0);
l9_3636=l9_3634;
float2 l9_3637=float2(0.0);
float2 l9_3638=(*sc_set0.UserUniforms).uv2Offset;
l9_3637=l9_3638;
float2 l9_3639=float2(0.0);
l9_3639=l9_3637;
float2 l9_3640=float2(0.0);
l9_3640=(l9_3623*l9_3636)+l9_3639;
l9_3601=l9_3640;
l9_3603=l9_3601;
}
l9_3599=l9_3603;
l9_3595=l9_3599;
l9_3598=l9_3595;
}
else
{
float2 l9_3641=float2(0.0);
l9_3641=l9_3597.Surface_UVCoord0;
l9_3596=l9_3641;
l9_3598=l9_3596;
}
l9_3594=l9_3598;
float2 l9_3642=float2(0.0);
l9_3642=l9_3594;
float2 l9_3643=float2(0.0);
l9_3643=l9_3642;
l9_3587=l9_3643;
l9_3590=l9_3587;
}
else
{
float2 l9_3644=float2(0.0);
l9_3644=l9_3589.Surface_UVCoord0;
l9_3588=l9_3644;
l9_3590=l9_3588;
}
}
}
}
l9_3583=l9_3590;
float2 l9_3645=float2(0.0);
float2 l9_3646=(*sc_set0.UserUniforms).uv3Scale;
l9_3645=l9_3646;
float2 l9_3647=float2(0.0);
l9_3647=l9_3645;
float2 l9_3648=float2(0.0);
float2 l9_3649=(*sc_set0.UserUniforms).uv3Offset;
l9_3648=l9_3649;
float2 l9_3650=float2(0.0);
l9_3650=l9_3648;
float2 l9_3651=float2(0.0);
l9_3651=(l9_3583*l9_3647)+l9_3650;
float2 l9_3652=float2(0.0);
l9_3652=l9_3651+(l9_3650*(l9_3581.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_3579=l9_3652;
l9_3582=l9_3579;
}
else
{
float2 l9_3653=float2(0.0);
float2 l9_3654=float2(0.0);
float2 l9_3655=float2(0.0);
float2 l9_3656=float2(0.0);
float2 l9_3657=float2(0.0);
float2 l9_3658=float2(0.0);
ssGlobals l9_3659=l9_3581;
float2 l9_3660;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_3661=float2(0.0);
l9_3661=l9_3659.Surface_UVCoord0;
l9_3654=l9_3661;
l9_3660=l9_3654;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_3662=float2(0.0);
l9_3662=l9_3659.Surface_UVCoord1;
l9_3655=l9_3662;
l9_3660=l9_3655;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_3663=float2(0.0);
l9_3663=l9_3659.gScreenCoord;
l9_3656=l9_3663;
l9_3660=l9_3656;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_3664=float2(0.0);
float2 l9_3665=float2(0.0);
float2 l9_3666=float2(0.0);
ssGlobals l9_3667=l9_3659;
float2 l9_3668;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_3669=float2(0.0);
float2 l9_3670=float2(0.0);
float2 l9_3671=float2(0.0);
ssGlobals l9_3672=l9_3667;
float2 l9_3673;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3674=float2(0.0);
float2 l9_3675=float2(0.0);
float2 l9_3676=float2(0.0);
float2 l9_3677=float2(0.0);
float2 l9_3678=float2(0.0);
ssGlobals l9_3679=l9_3672;
float2 l9_3680;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3681=float2(0.0);
l9_3681=l9_3679.Surface_UVCoord0;
l9_3675=l9_3681;
l9_3680=l9_3675;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3682=float2(0.0);
l9_3682=l9_3679.Surface_UVCoord1;
l9_3676=l9_3682;
l9_3680=l9_3676;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3683=float2(0.0);
l9_3683=l9_3679.gScreenCoord;
l9_3677=l9_3683;
l9_3680=l9_3677;
}
else
{
float2 l9_3684=float2(0.0);
l9_3684=l9_3679.Surface_UVCoord0;
l9_3678=l9_3684;
l9_3680=l9_3678;
}
}
}
l9_3674=l9_3680;
float2 l9_3685=float2(0.0);
float2 l9_3686=(*sc_set0.UserUniforms).uv2Scale;
l9_3685=l9_3686;
float2 l9_3687=float2(0.0);
l9_3687=l9_3685;
float2 l9_3688=float2(0.0);
float2 l9_3689=(*sc_set0.UserUniforms).uv2Offset;
l9_3688=l9_3689;
float2 l9_3690=float2(0.0);
l9_3690=l9_3688;
float2 l9_3691=float2(0.0);
l9_3691=(l9_3674*l9_3687)+l9_3690;
float2 l9_3692=float2(0.0);
l9_3692=l9_3691+(l9_3690*(l9_3672.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3670=l9_3692;
l9_3673=l9_3670;
}
else
{
float2 l9_3693=float2(0.0);
float2 l9_3694=float2(0.0);
float2 l9_3695=float2(0.0);
float2 l9_3696=float2(0.0);
float2 l9_3697=float2(0.0);
ssGlobals l9_3698=l9_3672;
float2 l9_3699;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3700=float2(0.0);
l9_3700=l9_3698.Surface_UVCoord0;
l9_3694=l9_3700;
l9_3699=l9_3694;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3701=float2(0.0);
l9_3701=l9_3698.Surface_UVCoord1;
l9_3695=l9_3701;
l9_3699=l9_3695;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3702=float2(0.0);
l9_3702=l9_3698.gScreenCoord;
l9_3696=l9_3702;
l9_3699=l9_3696;
}
else
{
float2 l9_3703=float2(0.0);
l9_3703=l9_3698.Surface_UVCoord0;
l9_3697=l9_3703;
l9_3699=l9_3697;
}
}
}
l9_3693=l9_3699;
float2 l9_3704=float2(0.0);
float2 l9_3705=(*sc_set0.UserUniforms).uv2Scale;
l9_3704=l9_3705;
float2 l9_3706=float2(0.0);
l9_3706=l9_3704;
float2 l9_3707=float2(0.0);
float2 l9_3708=(*sc_set0.UserUniforms).uv2Offset;
l9_3707=l9_3708;
float2 l9_3709=float2(0.0);
l9_3709=l9_3707;
float2 l9_3710=float2(0.0);
l9_3710=(l9_3693*l9_3706)+l9_3709;
l9_3671=l9_3710;
l9_3673=l9_3671;
}
l9_3669=l9_3673;
l9_3665=l9_3669;
l9_3668=l9_3665;
}
else
{
float2 l9_3711=float2(0.0);
l9_3711=l9_3667.Surface_UVCoord0;
l9_3666=l9_3711;
l9_3668=l9_3666;
}
l9_3664=l9_3668;
float2 l9_3712=float2(0.0);
l9_3712=l9_3664;
float2 l9_3713=float2(0.0);
l9_3713=l9_3712;
l9_3657=l9_3713;
l9_3660=l9_3657;
}
else
{
float2 l9_3714=float2(0.0);
l9_3714=l9_3659.Surface_UVCoord0;
l9_3658=l9_3714;
l9_3660=l9_3658;
}
}
}
}
l9_3653=l9_3660;
float2 l9_3715=float2(0.0);
float2 l9_3716=(*sc_set0.UserUniforms).uv3Scale;
l9_3715=l9_3716;
float2 l9_3717=float2(0.0);
l9_3717=l9_3715;
float2 l9_3718=float2(0.0);
float2 l9_3719=(*sc_set0.UserUniforms).uv3Offset;
l9_3718=l9_3719;
float2 l9_3720=float2(0.0);
l9_3720=l9_3718;
float2 l9_3721=float2(0.0);
l9_3721=(l9_3653*l9_3717)+l9_3720;
l9_3580=l9_3721;
l9_3582=l9_3580;
}
l9_3578=l9_3582;
l9_3574=l9_3578;
l9_3577=l9_3574;
}
else
{
float2 l9_3722=float2(0.0);
l9_3722=l9_3576.Surface_UVCoord0;
l9_3575=l9_3722;
l9_3577=l9_3575;
}
l9_3573=l9_3577;
float2 l9_3723=float2(0.0);
l9_3723=l9_3573;
float2 l9_3724=float2(0.0);
l9_3724=l9_3723;
l9_3517=l9_3724;
l9_3520=l9_3517;
}
else
{
float2 l9_3725=float2(0.0);
l9_3725=l9_3519.Surface_UVCoord0;
l9_3518=l9_3725;
l9_3520=l9_3518;
}
}
}
}
l9_3513=l9_3520;
float4 l9_3726=float4(0.0);
float2 l9_3727=l9_3513;
int l9_3728;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_3729=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3729=0;
}
else
{
l9_3729=in.varStereoViewID;
}
int l9_3730=l9_3729;
l9_3728=1-l9_3730;
}
else
{
int l9_3731=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3731=0;
}
else
{
l9_3731=in.varStereoViewID;
}
int l9_3732=l9_3731;
l9_3728=l9_3732;
}
int l9_3733=l9_3728;
int l9_3734=detailNormalTexLayout_tmp;
int l9_3735=l9_3733;
float2 l9_3736=l9_3727;
bool l9_3737=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_3738=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_3739=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_3740=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_3741=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_3742=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_3743=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_3744=0.0;
bool l9_3745=l9_3742&&(!l9_3740);
float l9_3746=1.0;
float l9_3747=l9_3736.x;
int l9_3748=l9_3739.x;
if (l9_3748==1)
{
l9_3747=fract(l9_3747);
}
else
{
if (l9_3748==2)
{
float l9_3749=fract(l9_3747);
float l9_3750=l9_3747-l9_3749;
float l9_3751=step(0.25,fract(l9_3750*0.5));
l9_3747=mix(l9_3749,1.0-l9_3749,fast::clamp(l9_3751,0.0,1.0));
}
}
l9_3736.x=l9_3747;
float l9_3752=l9_3736.y;
int l9_3753=l9_3739.y;
if (l9_3753==1)
{
l9_3752=fract(l9_3752);
}
else
{
if (l9_3753==2)
{
float l9_3754=fract(l9_3752);
float l9_3755=l9_3752-l9_3754;
float l9_3756=step(0.25,fract(l9_3755*0.5));
l9_3752=mix(l9_3754,1.0-l9_3754,fast::clamp(l9_3756,0.0,1.0));
}
}
l9_3736.y=l9_3752;
if (l9_3740)
{
bool l9_3757=l9_3742;
bool l9_3758;
if (l9_3757)
{
l9_3758=l9_3739.x==3;
}
else
{
l9_3758=l9_3757;
}
float l9_3759=l9_3736.x;
float l9_3760=l9_3741.x;
float l9_3761=l9_3741.z;
bool l9_3762=l9_3758;
float l9_3763=l9_3746;
float l9_3764=fast::clamp(l9_3759,l9_3760,l9_3761);
float l9_3765=step(abs(l9_3759-l9_3764),9.9999997e-06);
l9_3763*=(l9_3765+((1.0-float(l9_3762))*(1.0-l9_3765)));
l9_3759=l9_3764;
l9_3736.x=l9_3759;
l9_3746=l9_3763;
bool l9_3766=l9_3742;
bool l9_3767;
if (l9_3766)
{
l9_3767=l9_3739.y==3;
}
else
{
l9_3767=l9_3766;
}
float l9_3768=l9_3736.y;
float l9_3769=l9_3741.y;
float l9_3770=l9_3741.w;
bool l9_3771=l9_3767;
float l9_3772=l9_3746;
float l9_3773=fast::clamp(l9_3768,l9_3769,l9_3770);
float l9_3774=step(abs(l9_3768-l9_3773),9.9999997e-06);
l9_3772*=(l9_3774+((1.0-float(l9_3771))*(1.0-l9_3774)));
l9_3768=l9_3773;
l9_3736.y=l9_3768;
l9_3746=l9_3772;
}
float2 l9_3775=l9_3736;
bool l9_3776=l9_3737;
float3x3 l9_3777=l9_3738;
if (l9_3776)
{
l9_3775=float2((l9_3777*float3(l9_3775,1.0)).xy);
}
float2 l9_3778=l9_3775;
l9_3736=l9_3778;
float l9_3779=l9_3736.x;
int l9_3780=l9_3739.x;
bool l9_3781=l9_3745;
float l9_3782=l9_3746;
if ((l9_3780==0)||(l9_3780==3))
{
float l9_3783=l9_3779;
float l9_3784=0.0;
float l9_3785=1.0;
bool l9_3786=l9_3781;
float l9_3787=l9_3782;
float l9_3788=fast::clamp(l9_3783,l9_3784,l9_3785);
float l9_3789=step(abs(l9_3783-l9_3788),9.9999997e-06);
l9_3787*=(l9_3789+((1.0-float(l9_3786))*(1.0-l9_3789)));
l9_3783=l9_3788;
l9_3779=l9_3783;
l9_3782=l9_3787;
}
l9_3736.x=l9_3779;
l9_3746=l9_3782;
float l9_3790=l9_3736.y;
int l9_3791=l9_3739.y;
bool l9_3792=l9_3745;
float l9_3793=l9_3746;
if ((l9_3791==0)||(l9_3791==3))
{
float l9_3794=l9_3790;
float l9_3795=0.0;
float l9_3796=1.0;
bool l9_3797=l9_3792;
float l9_3798=l9_3793;
float l9_3799=fast::clamp(l9_3794,l9_3795,l9_3796);
float l9_3800=step(abs(l9_3794-l9_3799),9.9999997e-06);
l9_3798*=(l9_3800+((1.0-float(l9_3797))*(1.0-l9_3800)));
l9_3794=l9_3799;
l9_3790=l9_3794;
l9_3793=l9_3798;
}
l9_3736.y=l9_3790;
l9_3746=l9_3793;
float2 l9_3801=l9_3736;
int l9_3802=l9_3734;
int l9_3803=l9_3735;
float l9_3804=l9_3744;
float2 l9_3805=l9_3801;
int l9_3806=l9_3802;
int l9_3807=l9_3803;
float3 l9_3808=float3(0.0);
if (l9_3806==0)
{
l9_3808=float3(l9_3805,0.0);
}
else
{
if (l9_3806==1)
{
l9_3808=float3(l9_3805.x,(l9_3805.y*0.5)+(0.5-(float(l9_3807)*0.5)),0.0);
}
else
{
l9_3808=float3(l9_3805,float(l9_3807));
}
}
float3 l9_3809=l9_3808;
float3 l9_3810=l9_3809;
float4 l9_3811=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_3810.xy,bias(l9_3804));
float4 l9_3812=l9_3811;
if (l9_3742)
{
l9_3812=mix(l9_3743,l9_3812,float4(l9_3746));
}
float4 l9_3813=l9_3812;
float4 l9_3814=l9_3813;
float3 l9_3815=(l9_3814.xyz*1.9921875)-float3(1.0);
l9_3814=float4(l9_3815.x,l9_3815.y,l9_3815.z,l9_3814.w);
l9_3726=l9_3814;
l9_3509=l9_3726.xyz;
l9_3512=l9_3509;
}
else
{
l9_3512=l9_3510;
}
l9_3508=l9_3512;
float3 l9_3816=float3(0.0);
float3 l9_3817=l9_3418.xyz;
float l9_3818=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_3819=l9_3508;
float l9_3820=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_3821=l9_3817;
float l9_3822=l9_3818;
float3 l9_3823=l9_3819;
float l9_3824=l9_3820;
float3 l9_3825=mix(float3(0.0,0.0,1.0),l9_3821,float3(l9_3822))+float3(0.0,0.0,1.0);
float3 l9_3826=mix(float3(0.0,0.0,1.0),l9_3823,float3(l9_3824))*float3(-1.0,-1.0,1.0);
float3 l9_3827=normalize((l9_3825*dot(l9_3825,l9_3826))-(l9_3826*l9_3825.z));
l9_3819=l9_3827;
float3 l9_3828=l9_3819;
l9_3816=l9_3828;
float3 l9_3829=float3(0.0);
l9_3829=l9_3204*l9_3816;
float3 l9_3830=float3(0.0);
float3 l9_3831=l9_3829;
float l9_3832=dot(l9_3831,l9_3831);
float l9_3833;
if (l9_3832>0.0)
{
l9_3833=1.0/sqrt(l9_3832);
}
else
{
l9_3833=0.0;
}
float l9_3834=l9_3833;
float3 l9_3835=l9_3831*l9_3834;
l9_3830=l9_3835;
l9_3197=l9_3830;
l9_3200=l9_3197;
}
else
{
float3 l9_3836=float3(0.0);
l9_3836=l9_3199.VertexNormal_WorldSpace;
float3 l9_3837=float3(0.0);
float3 l9_3838=l9_3836;
float l9_3839=dot(l9_3838,l9_3838);
float l9_3840;
if (l9_3839>0.0)
{
l9_3840=1.0/sqrt(l9_3839);
}
else
{
l9_3840=0.0;
}
float l9_3841=l9_3840;
float3 l9_3842=l9_3838*l9_3841;
l9_3837=l9_3842;
l9_3198=l9_3837;
l9_3200=l9_3198;
}
l9_3196=l9_3200;
float3 l9_3843=float3(0.0);
l9_3843=l9_3196;
float3 l9_3844=float3(0.0);
l9_3844=l9_3843;
float3 l9_3845=float3(0.0);
l9_3845=reflect(l9_3195,l9_3844);
float3 l9_3846=float3(0.0);
l9_3846=l9_3845*(*sc_set0.UserUniforms).Port_Input1_N257;
float3 l9_3847=float3(0.0);
l9_3847=l9_3846;
float2 l9_3848=float2(0.0);
l9_3848=float2(l9_3847.x,l9_3847.y);
float l9_3849=0.0;
float l9_3850=0.0;
float l9_3851=0.0;
float3 l9_3852=l9_3847;
float l9_3853=l9_3852.x;
float l9_3854=l9_3852.y;
float l9_3855=l9_3852.z;
l9_3849=l9_3853;
l9_3850=l9_3854;
l9_3851=l9_3855;
float l9_3856=0.0;
l9_3856=l9_3849*l9_3849;
float l9_3857=0.0;
l9_3857=l9_3850*l9_3850;
float l9_3858=0.0;
l9_3858=l9_3851+(*sc_set0.UserUniforms).Port_Input1_N264;
float l9_3859=0.0;
l9_3859=l9_3858*l9_3858;
float l9_3860=0.0;
l9_3860=(l9_3856+l9_3857)+l9_3859;
float l9_3861=0.0;
float l9_3862;
if (l9_3860<=0.0)
{
l9_3862=0.0;
}
else
{
l9_3862=sqrt(l9_3860);
}
l9_3861=l9_3862;
float l9_3863=0.0;
l9_3863=l9_3861*(*sc_set0.UserUniforms).Port_Input1_N268;
float2 l9_3864=float2(0.0);
l9_3864=l9_3848/float2(l9_3863);
float2 l9_3865=float2(0.0);
l9_3865=l9_3864+float2((*sc_set0.UserUniforms).Port_Input1_N270);
float2 l9_3866=float2(0.0);
l9_3866=float2(1.0)-l9_3865;
float2 l9_3867=float2(0.0);
l9_3867=l9_3866;
float4 l9_3868=float4(0.0);
int l9_3869;
if ((int(reflectionTexHasSwappedViews_tmp)!=0))
{
int l9_3870=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3870=0;
}
else
{
l9_3870=in.varStereoViewID;
}
int l9_3871=l9_3870;
l9_3869=1-l9_3871;
}
else
{
int l9_3872=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3872=0;
}
else
{
l9_3872=in.varStereoViewID;
}
int l9_3873=l9_3872;
l9_3869=l9_3873;
}
int l9_3874=l9_3869;
int l9_3875=reflectionTexLayout_tmp;
int l9_3876=l9_3874;
float2 l9_3877=l9_3867;
bool l9_3878=(int(SC_USE_UV_TRANSFORM_reflectionTex_tmp)!=0);
float3x3 l9_3879=(*sc_set0.UserUniforms).reflectionTexTransform;
int2 l9_3880=int2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex_tmp,SC_SOFTWARE_WRAP_MODE_V_reflectionTex_tmp);
bool l9_3881=(int(SC_USE_UV_MIN_MAX_reflectionTex_tmp)!=0);
float4 l9_3882=(*sc_set0.UserUniforms).reflectionTexUvMinMax;
bool l9_3883=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex_tmp)!=0);
float4 l9_3884=(*sc_set0.UserUniforms).reflectionTexBorderColor;
float l9_3885=0.0;
bool l9_3886=l9_3883&&(!l9_3881);
float l9_3887=1.0;
float l9_3888=l9_3877.x;
int l9_3889=l9_3880.x;
if (l9_3889==1)
{
l9_3888=fract(l9_3888);
}
else
{
if (l9_3889==2)
{
float l9_3890=fract(l9_3888);
float l9_3891=l9_3888-l9_3890;
float l9_3892=step(0.25,fract(l9_3891*0.5));
l9_3888=mix(l9_3890,1.0-l9_3890,fast::clamp(l9_3892,0.0,1.0));
}
}
l9_3877.x=l9_3888;
float l9_3893=l9_3877.y;
int l9_3894=l9_3880.y;
if (l9_3894==1)
{
l9_3893=fract(l9_3893);
}
else
{
if (l9_3894==2)
{
float l9_3895=fract(l9_3893);
float l9_3896=l9_3893-l9_3895;
float l9_3897=step(0.25,fract(l9_3896*0.5));
l9_3893=mix(l9_3895,1.0-l9_3895,fast::clamp(l9_3897,0.0,1.0));
}
}
l9_3877.y=l9_3893;
if (l9_3881)
{
bool l9_3898=l9_3883;
bool l9_3899;
if (l9_3898)
{
l9_3899=l9_3880.x==3;
}
else
{
l9_3899=l9_3898;
}
float l9_3900=l9_3877.x;
float l9_3901=l9_3882.x;
float l9_3902=l9_3882.z;
bool l9_3903=l9_3899;
float l9_3904=l9_3887;
float l9_3905=fast::clamp(l9_3900,l9_3901,l9_3902);
float l9_3906=step(abs(l9_3900-l9_3905),9.9999997e-06);
l9_3904*=(l9_3906+((1.0-float(l9_3903))*(1.0-l9_3906)));
l9_3900=l9_3905;
l9_3877.x=l9_3900;
l9_3887=l9_3904;
bool l9_3907=l9_3883;
bool l9_3908;
if (l9_3907)
{
l9_3908=l9_3880.y==3;
}
else
{
l9_3908=l9_3907;
}
float l9_3909=l9_3877.y;
float l9_3910=l9_3882.y;
float l9_3911=l9_3882.w;
bool l9_3912=l9_3908;
float l9_3913=l9_3887;
float l9_3914=fast::clamp(l9_3909,l9_3910,l9_3911);
float l9_3915=step(abs(l9_3909-l9_3914),9.9999997e-06);
l9_3913*=(l9_3915+((1.0-float(l9_3912))*(1.0-l9_3915)));
l9_3909=l9_3914;
l9_3877.y=l9_3909;
l9_3887=l9_3913;
}
float2 l9_3916=l9_3877;
bool l9_3917=l9_3878;
float3x3 l9_3918=l9_3879;
if (l9_3917)
{
l9_3916=float2((l9_3918*float3(l9_3916,1.0)).xy);
}
float2 l9_3919=l9_3916;
l9_3877=l9_3919;
float l9_3920=l9_3877.x;
int l9_3921=l9_3880.x;
bool l9_3922=l9_3886;
float l9_3923=l9_3887;
if ((l9_3921==0)||(l9_3921==3))
{
float l9_3924=l9_3920;
float l9_3925=0.0;
float l9_3926=1.0;
bool l9_3927=l9_3922;
float l9_3928=l9_3923;
float l9_3929=fast::clamp(l9_3924,l9_3925,l9_3926);
float l9_3930=step(abs(l9_3924-l9_3929),9.9999997e-06);
l9_3928*=(l9_3930+((1.0-float(l9_3927))*(1.0-l9_3930)));
l9_3924=l9_3929;
l9_3920=l9_3924;
l9_3923=l9_3928;
}
l9_3877.x=l9_3920;
l9_3887=l9_3923;
float l9_3931=l9_3877.y;
int l9_3932=l9_3880.y;
bool l9_3933=l9_3886;
float l9_3934=l9_3887;
if ((l9_3932==0)||(l9_3932==3))
{
float l9_3935=l9_3931;
float l9_3936=0.0;
float l9_3937=1.0;
bool l9_3938=l9_3933;
float l9_3939=l9_3934;
float l9_3940=fast::clamp(l9_3935,l9_3936,l9_3937);
float l9_3941=step(abs(l9_3935-l9_3940),9.9999997e-06);
l9_3939*=(l9_3941+((1.0-float(l9_3938))*(1.0-l9_3941)));
l9_3935=l9_3940;
l9_3931=l9_3935;
l9_3934=l9_3939;
}
l9_3877.y=l9_3931;
l9_3887=l9_3934;
float2 l9_3942=l9_3877;
int l9_3943=l9_3875;
int l9_3944=l9_3876;
float l9_3945=l9_3885;
float2 l9_3946=l9_3942;
int l9_3947=l9_3943;
int l9_3948=l9_3944;
float3 l9_3949=float3(0.0);
if (l9_3947==0)
{
l9_3949=float3(l9_3946,0.0);
}
else
{
if (l9_3947==1)
{
l9_3949=float3(l9_3946.x,(l9_3946.y*0.5)+(0.5-(float(l9_3948)*0.5)),0.0);
}
else
{
l9_3949=float3(l9_3946,float(l9_3948));
}
}
float3 l9_3950=l9_3949;
float3 l9_3951=l9_3950;
float4 l9_3952=sc_set0.reflectionTex.sample(sc_set0.reflectionTexSmpSC,l9_3951.xy,bias(l9_3945));
float4 l9_3953=l9_3952;
if (l9_3883)
{
l9_3953=mix(l9_3884,l9_3953,float4(l9_3887));
}
float4 l9_3954=l9_3953;
l9_3868=l9_3954;
float3 l9_3955=float3(0.0);
float3 l9_3956=float3(0.0);
float3 l9_3957=(*sc_set0.UserUniforms).Port_Default_N041;
ssGlobals l9_3958=param_29;
float3 l9_3959;
if ((int(Tweak_N177_tmp)!=0))
{
float2 l9_3960=float2(0.0);
float2 l9_3961=float2(0.0);
float2 l9_3962=float2(0.0);
float2 l9_3963=float2(0.0);
float2 l9_3964=float2(0.0);
float2 l9_3965=float2(0.0);
ssGlobals l9_3966=l9_3958;
float2 l9_3967;
if (NODE_228_DROPLIST_ITEM_tmp==0)
{
float2 l9_3968=float2(0.0);
l9_3968=l9_3966.Surface_UVCoord0;
l9_3961=l9_3968;
l9_3967=l9_3961;
}
else
{
if (NODE_228_DROPLIST_ITEM_tmp==1)
{
float2 l9_3969=float2(0.0);
l9_3969=l9_3966.Surface_UVCoord1;
l9_3962=l9_3969;
l9_3967=l9_3962;
}
else
{
if (NODE_228_DROPLIST_ITEM_tmp==2)
{
float2 l9_3970=float2(0.0);
float2 l9_3971=float2(0.0);
float2 l9_3972=float2(0.0);
ssGlobals l9_3973=l9_3966;
float2 l9_3974;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_3975=float2(0.0);
float2 l9_3976=float2(0.0);
float2 l9_3977=float2(0.0);
ssGlobals l9_3978=l9_3973;
float2 l9_3979;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_3980=float2(0.0);
float2 l9_3981=float2(0.0);
float2 l9_3982=float2(0.0);
float2 l9_3983=float2(0.0);
float2 l9_3984=float2(0.0);
ssGlobals l9_3985=l9_3978;
float2 l9_3986;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_3987=float2(0.0);
l9_3987=l9_3985.Surface_UVCoord0;
l9_3981=l9_3987;
l9_3986=l9_3981;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_3988=float2(0.0);
l9_3988=l9_3985.Surface_UVCoord1;
l9_3982=l9_3988;
l9_3986=l9_3982;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_3989=float2(0.0);
l9_3989=l9_3985.gScreenCoord;
l9_3983=l9_3989;
l9_3986=l9_3983;
}
else
{
float2 l9_3990=float2(0.0);
l9_3990=l9_3985.Surface_UVCoord0;
l9_3984=l9_3990;
l9_3986=l9_3984;
}
}
}
l9_3980=l9_3986;
float2 l9_3991=float2(0.0);
float2 l9_3992=(*sc_set0.UserUniforms).uv2Scale;
l9_3991=l9_3992;
float2 l9_3993=float2(0.0);
l9_3993=l9_3991;
float2 l9_3994=float2(0.0);
float2 l9_3995=(*sc_set0.UserUniforms).uv2Offset;
l9_3994=l9_3995;
float2 l9_3996=float2(0.0);
l9_3996=l9_3994;
float2 l9_3997=float2(0.0);
l9_3997=(l9_3980*l9_3993)+l9_3996;
float2 l9_3998=float2(0.0);
l9_3998=l9_3997+(l9_3996*(l9_3978.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_3976=l9_3998;
l9_3979=l9_3976;
}
else
{
float2 l9_3999=float2(0.0);
float2 l9_4000=float2(0.0);
float2 l9_4001=float2(0.0);
float2 l9_4002=float2(0.0);
float2 l9_4003=float2(0.0);
ssGlobals l9_4004=l9_3978;
float2 l9_4005;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4006=float2(0.0);
l9_4006=l9_4004.Surface_UVCoord0;
l9_4000=l9_4006;
l9_4005=l9_4000;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4007=float2(0.0);
l9_4007=l9_4004.Surface_UVCoord1;
l9_4001=l9_4007;
l9_4005=l9_4001;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4008=float2(0.0);
l9_4008=l9_4004.gScreenCoord;
l9_4002=l9_4008;
l9_4005=l9_4002;
}
else
{
float2 l9_4009=float2(0.0);
l9_4009=l9_4004.Surface_UVCoord0;
l9_4003=l9_4009;
l9_4005=l9_4003;
}
}
}
l9_3999=l9_4005;
float2 l9_4010=float2(0.0);
float2 l9_4011=(*sc_set0.UserUniforms).uv2Scale;
l9_4010=l9_4011;
float2 l9_4012=float2(0.0);
l9_4012=l9_4010;
float2 l9_4013=float2(0.0);
float2 l9_4014=(*sc_set0.UserUniforms).uv2Offset;
l9_4013=l9_4014;
float2 l9_4015=float2(0.0);
l9_4015=l9_4013;
float2 l9_4016=float2(0.0);
l9_4016=(l9_3999*l9_4012)+l9_4015;
l9_3977=l9_4016;
l9_3979=l9_3977;
}
l9_3975=l9_3979;
l9_3971=l9_3975;
l9_3974=l9_3971;
}
else
{
float2 l9_4017=float2(0.0);
l9_4017=l9_3973.Surface_UVCoord0;
l9_3972=l9_4017;
l9_3974=l9_3972;
}
l9_3970=l9_3974;
float2 l9_4018=float2(0.0);
l9_4018=l9_3970;
float2 l9_4019=float2(0.0);
l9_4019=l9_4018;
l9_3963=l9_4019;
l9_3967=l9_3963;
}
else
{
if (NODE_228_DROPLIST_ITEM_tmp==3)
{
float2 l9_4020=float2(0.0);
float2 l9_4021=float2(0.0);
float2 l9_4022=float2(0.0);
ssGlobals l9_4023=l9_3966;
float2 l9_4024;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_4025=float2(0.0);
float2 l9_4026=float2(0.0);
float2 l9_4027=float2(0.0);
ssGlobals l9_4028=l9_4023;
float2 l9_4029;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_4030=float2(0.0);
float2 l9_4031=float2(0.0);
float2 l9_4032=float2(0.0);
float2 l9_4033=float2(0.0);
float2 l9_4034=float2(0.0);
float2 l9_4035=float2(0.0);
ssGlobals l9_4036=l9_4028;
float2 l9_4037;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4038=float2(0.0);
l9_4038=l9_4036.Surface_UVCoord0;
l9_4031=l9_4038;
l9_4037=l9_4031;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4039=float2(0.0);
l9_4039=l9_4036.Surface_UVCoord1;
l9_4032=l9_4039;
l9_4037=l9_4032;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4040=float2(0.0);
l9_4040=l9_4036.gScreenCoord;
l9_4033=l9_4040;
l9_4037=l9_4033;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4041=float2(0.0);
float2 l9_4042=float2(0.0);
float2 l9_4043=float2(0.0);
ssGlobals l9_4044=l9_4036;
float2 l9_4045;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4046=float2(0.0);
float2 l9_4047=float2(0.0);
float2 l9_4048=float2(0.0);
ssGlobals l9_4049=l9_4044;
float2 l9_4050;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4051=float2(0.0);
float2 l9_4052=float2(0.0);
float2 l9_4053=float2(0.0);
float2 l9_4054=float2(0.0);
float2 l9_4055=float2(0.0);
ssGlobals l9_4056=l9_4049;
float2 l9_4057;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4058=float2(0.0);
l9_4058=l9_4056.Surface_UVCoord0;
l9_4052=l9_4058;
l9_4057=l9_4052;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4059=float2(0.0);
l9_4059=l9_4056.Surface_UVCoord1;
l9_4053=l9_4059;
l9_4057=l9_4053;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4060=float2(0.0);
l9_4060=l9_4056.gScreenCoord;
l9_4054=l9_4060;
l9_4057=l9_4054;
}
else
{
float2 l9_4061=float2(0.0);
l9_4061=l9_4056.Surface_UVCoord0;
l9_4055=l9_4061;
l9_4057=l9_4055;
}
}
}
l9_4051=l9_4057;
float2 l9_4062=float2(0.0);
float2 l9_4063=(*sc_set0.UserUniforms).uv2Scale;
l9_4062=l9_4063;
float2 l9_4064=float2(0.0);
l9_4064=l9_4062;
float2 l9_4065=float2(0.0);
float2 l9_4066=(*sc_set0.UserUniforms).uv2Offset;
l9_4065=l9_4066;
float2 l9_4067=float2(0.0);
l9_4067=l9_4065;
float2 l9_4068=float2(0.0);
l9_4068=(l9_4051*l9_4064)+l9_4067;
float2 l9_4069=float2(0.0);
l9_4069=l9_4068+(l9_4067*(l9_4049.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4047=l9_4069;
l9_4050=l9_4047;
}
else
{
float2 l9_4070=float2(0.0);
float2 l9_4071=float2(0.0);
float2 l9_4072=float2(0.0);
float2 l9_4073=float2(0.0);
float2 l9_4074=float2(0.0);
ssGlobals l9_4075=l9_4049;
float2 l9_4076;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4077=float2(0.0);
l9_4077=l9_4075.Surface_UVCoord0;
l9_4071=l9_4077;
l9_4076=l9_4071;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4078=float2(0.0);
l9_4078=l9_4075.Surface_UVCoord1;
l9_4072=l9_4078;
l9_4076=l9_4072;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4079=float2(0.0);
l9_4079=l9_4075.gScreenCoord;
l9_4073=l9_4079;
l9_4076=l9_4073;
}
else
{
float2 l9_4080=float2(0.0);
l9_4080=l9_4075.Surface_UVCoord0;
l9_4074=l9_4080;
l9_4076=l9_4074;
}
}
}
l9_4070=l9_4076;
float2 l9_4081=float2(0.0);
float2 l9_4082=(*sc_set0.UserUniforms).uv2Scale;
l9_4081=l9_4082;
float2 l9_4083=float2(0.0);
l9_4083=l9_4081;
float2 l9_4084=float2(0.0);
float2 l9_4085=(*sc_set0.UserUniforms).uv2Offset;
l9_4084=l9_4085;
float2 l9_4086=float2(0.0);
l9_4086=l9_4084;
float2 l9_4087=float2(0.0);
l9_4087=(l9_4070*l9_4083)+l9_4086;
l9_4048=l9_4087;
l9_4050=l9_4048;
}
l9_4046=l9_4050;
l9_4042=l9_4046;
l9_4045=l9_4042;
}
else
{
float2 l9_4088=float2(0.0);
l9_4088=l9_4044.Surface_UVCoord0;
l9_4043=l9_4088;
l9_4045=l9_4043;
}
l9_4041=l9_4045;
float2 l9_4089=float2(0.0);
l9_4089=l9_4041;
float2 l9_4090=float2(0.0);
l9_4090=l9_4089;
l9_4034=l9_4090;
l9_4037=l9_4034;
}
else
{
float2 l9_4091=float2(0.0);
l9_4091=l9_4036.Surface_UVCoord0;
l9_4035=l9_4091;
l9_4037=l9_4035;
}
}
}
}
l9_4030=l9_4037;
float2 l9_4092=float2(0.0);
float2 l9_4093=(*sc_set0.UserUniforms).uv3Scale;
l9_4092=l9_4093;
float2 l9_4094=float2(0.0);
l9_4094=l9_4092;
float2 l9_4095=float2(0.0);
float2 l9_4096=(*sc_set0.UserUniforms).uv3Offset;
l9_4095=l9_4096;
float2 l9_4097=float2(0.0);
l9_4097=l9_4095;
float2 l9_4098=float2(0.0);
l9_4098=(l9_4030*l9_4094)+l9_4097;
float2 l9_4099=float2(0.0);
l9_4099=l9_4098+(l9_4097*(l9_4028.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_4026=l9_4099;
l9_4029=l9_4026;
}
else
{
float2 l9_4100=float2(0.0);
float2 l9_4101=float2(0.0);
float2 l9_4102=float2(0.0);
float2 l9_4103=float2(0.0);
float2 l9_4104=float2(0.0);
float2 l9_4105=float2(0.0);
ssGlobals l9_4106=l9_4028;
float2 l9_4107;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4108=float2(0.0);
l9_4108=l9_4106.Surface_UVCoord0;
l9_4101=l9_4108;
l9_4107=l9_4101;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4109=float2(0.0);
l9_4109=l9_4106.Surface_UVCoord1;
l9_4102=l9_4109;
l9_4107=l9_4102;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4110=float2(0.0);
l9_4110=l9_4106.gScreenCoord;
l9_4103=l9_4110;
l9_4107=l9_4103;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4111=float2(0.0);
float2 l9_4112=float2(0.0);
float2 l9_4113=float2(0.0);
ssGlobals l9_4114=l9_4106;
float2 l9_4115;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4116=float2(0.0);
float2 l9_4117=float2(0.0);
float2 l9_4118=float2(0.0);
ssGlobals l9_4119=l9_4114;
float2 l9_4120;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4121=float2(0.0);
float2 l9_4122=float2(0.0);
float2 l9_4123=float2(0.0);
float2 l9_4124=float2(0.0);
float2 l9_4125=float2(0.0);
ssGlobals l9_4126=l9_4119;
float2 l9_4127;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4128=float2(0.0);
l9_4128=l9_4126.Surface_UVCoord0;
l9_4122=l9_4128;
l9_4127=l9_4122;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4129=float2(0.0);
l9_4129=l9_4126.Surface_UVCoord1;
l9_4123=l9_4129;
l9_4127=l9_4123;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4130=float2(0.0);
l9_4130=l9_4126.gScreenCoord;
l9_4124=l9_4130;
l9_4127=l9_4124;
}
else
{
float2 l9_4131=float2(0.0);
l9_4131=l9_4126.Surface_UVCoord0;
l9_4125=l9_4131;
l9_4127=l9_4125;
}
}
}
l9_4121=l9_4127;
float2 l9_4132=float2(0.0);
float2 l9_4133=(*sc_set0.UserUniforms).uv2Scale;
l9_4132=l9_4133;
float2 l9_4134=float2(0.0);
l9_4134=l9_4132;
float2 l9_4135=float2(0.0);
float2 l9_4136=(*sc_set0.UserUniforms).uv2Offset;
l9_4135=l9_4136;
float2 l9_4137=float2(0.0);
l9_4137=l9_4135;
float2 l9_4138=float2(0.0);
l9_4138=(l9_4121*l9_4134)+l9_4137;
float2 l9_4139=float2(0.0);
l9_4139=l9_4138+(l9_4137*(l9_4119.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4117=l9_4139;
l9_4120=l9_4117;
}
else
{
float2 l9_4140=float2(0.0);
float2 l9_4141=float2(0.0);
float2 l9_4142=float2(0.0);
float2 l9_4143=float2(0.0);
float2 l9_4144=float2(0.0);
ssGlobals l9_4145=l9_4119;
float2 l9_4146;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4147=float2(0.0);
l9_4147=l9_4145.Surface_UVCoord0;
l9_4141=l9_4147;
l9_4146=l9_4141;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4148=float2(0.0);
l9_4148=l9_4145.Surface_UVCoord1;
l9_4142=l9_4148;
l9_4146=l9_4142;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4149=float2(0.0);
l9_4149=l9_4145.gScreenCoord;
l9_4143=l9_4149;
l9_4146=l9_4143;
}
else
{
float2 l9_4150=float2(0.0);
l9_4150=l9_4145.Surface_UVCoord0;
l9_4144=l9_4150;
l9_4146=l9_4144;
}
}
}
l9_4140=l9_4146;
float2 l9_4151=float2(0.0);
float2 l9_4152=(*sc_set0.UserUniforms).uv2Scale;
l9_4151=l9_4152;
float2 l9_4153=float2(0.0);
l9_4153=l9_4151;
float2 l9_4154=float2(0.0);
float2 l9_4155=(*sc_set0.UserUniforms).uv2Offset;
l9_4154=l9_4155;
float2 l9_4156=float2(0.0);
l9_4156=l9_4154;
float2 l9_4157=float2(0.0);
l9_4157=(l9_4140*l9_4153)+l9_4156;
l9_4118=l9_4157;
l9_4120=l9_4118;
}
l9_4116=l9_4120;
l9_4112=l9_4116;
l9_4115=l9_4112;
}
else
{
float2 l9_4158=float2(0.0);
l9_4158=l9_4114.Surface_UVCoord0;
l9_4113=l9_4158;
l9_4115=l9_4113;
}
l9_4111=l9_4115;
float2 l9_4159=float2(0.0);
l9_4159=l9_4111;
float2 l9_4160=float2(0.0);
l9_4160=l9_4159;
l9_4104=l9_4160;
l9_4107=l9_4104;
}
else
{
float2 l9_4161=float2(0.0);
l9_4161=l9_4106.Surface_UVCoord0;
l9_4105=l9_4161;
l9_4107=l9_4105;
}
}
}
}
l9_4100=l9_4107;
float2 l9_4162=float2(0.0);
float2 l9_4163=(*sc_set0.UserUniforms).uv3Scale;
l9_4162=l9_4163;
float2 l9_4164=float2(0.0);
l9_4164=l9_4162;
float2 l9_4165=float2(0.0);
float2 l9_4166=(*sc_set0.UserUniforms).uv3Offset;
l9_4165=l9_4166;
float2 l9_4167=float2(0.0);
l9_4167=l9_4165;
float2 l9_4168=float2(0.0);
l9_4168=(l9_4100*l9_4164)+l9_4167;
l9_4027=l9_4168;
l9_4029=l9_4027;
}
l9_4025=l9_4029;
l9_4021=l9_4025;
l9_4024=l9_4021;
}
else
{
float2 l9_4169=float2(0.0);
l9_4169=l9_4023.Surface_UVCoord0;
l9_4022=l9_4169;
l9_4024=l9_4022;
}
l9_4020=l9_4024;
float2 l9_4170=float2(0.0);
l9_4170=l9_4020;
float2 l9_4171=float2(0.0);
l9_4171=l9_4170;
l9_3964=l9_4171;
l9_3967=l9_3964;
}
else
{
float2 l9_4172=float2(0.0);
l9_4172=l9_3966.Surface_UVCoord0;
l9_3965=l9_4172;
l9_3967=l9_3965;
}
}
}
}
l9_3960=l9_3967;
float4 l9_4173=float4(0.0);
int l9_4174;
if ((int(reflectionModulationTexHasSwappedViews_tmp)!=0))
{
int l9_4175=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4175=0;
}
else
{
l9_4175=in.varStereoViewID;
}
int l9_4176=l9_4175;
l9_4174=1-l9_4176;
}
else
{
int l9_4177=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4177=0;
}
else
{
l9_4177=in.varStereoViewID;
}
int l9_4178=l9_4177;
l9_4174=l9_4178;
}
int l9_4179=l9_4174;
int l9_4180=reflectionModulationTexLayout_tmp;
int l9_4181=l9_4179;
float2 l9_4182=l9_3960;
bool l9_4183=(int(SC_USE_UV_TRANSFORM_reflectionModulationTex_tmp)!=0);
float3x3 l9_4184=(*sc_set0.UserUniforms).reflectionModulationTexTransform;
int2 l9_4185=int2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex_tmp,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex_tmp);
bool l9_4186=(int(SC_USE_UV_MIN_MAX_reflectionModulationTex_tmp)!=0);
float4 l9_4187=(*sc_set0.UserUniforms).reflectionModulationTexUvMinMax;
bool l9_4188=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex_tmp)!=0);
float4 l9_4189=(*sc_set0.UserUniforms).reflectionModulationTexBorderColor;
float l9_4190=0.0;
bool l9_4191=l9_4188&&(!l9_4186);
float l9_4192=1.0;
float l9_4193=l9_4182.x;
int l9_4194=l9_4185.x;
if (l9_4194==1)
{
l9_4193=fract(l9_4193);
}
else
{
if (l9_4194==2)
{
float l9_4195=fract(l9_4193);
float l9_4196=l9_4193-l9_4195;
float l9_4197=step(0.25,fract(l9_4196*0.5));
l9_4193=mix(l9_4195,1.0-l9_4195,fast::clamp(l9_4197,0.0,1.0));
}
}
l9_4182.x=l9_4193;
float l9_4198=l9_4182.y;
int l9_4199=l9_4185.y;
if (l9_4199==1)
{
l9_4198=fract(l9_4198);
}
else
{
if (l9_4199==2)
{
float l9_4200=fract(l9_4198);
float l9_4201=l9_4198-l9_4200;
float l9_4202=step(0.25,fract(l9_4201*0.5));
l9_4198=mix(l9_4200,1.0-l9_4200,fast::clamp(l9_4202,0.0,1.0));
}
}
l9_4182.y=l9_4198;
if (l9_4186)
{
bool l9_4203=l9_4188;
bool l9_4204;
if (l9_4203)
{
l9_4204=l9_4185.x==3;
}
else
{
l9_4204=l9_4203;
}
float l9_4205=l9_4182.x;
float l9_4206=l9_4187.x;
float l9_4207=l9_4187.z;
bool l9_4208=l9_4204;
float l9_4209=l9_4192;
float l9_4210=fast::clamp(l9_4205,l9_4206,l9_4207);
float l9_4211=step(abs(l9_4205-l9_4210),9.9999997e-06);
l9_4209*=(l9_4211+((1.0-float(l9_4208))*(1.0-l9_4211)));
l9_4205=l9_4210;
l9_4182.x=l9_4205;
l9_4192=l9_4209;
bool l9_4212=l9_4188;
bool l9_4213;
if (l9_4212)
{
l9_4213=l9_4185.y==3;
}
else
{
l9_4213=l9_4212;
}
float l9_4214=l9_4182.y;
float l9_4215=l9_4187.y;
float l9_4216=l9_4187.w;
bool l9_4217=l9_4213;
float l9_4218=l9_4192;
float l9_4219=fast::clamp(l9_4214,l9_4215,l9_4216);
float l9_4220=step(abs(l9_4214-l9_4219),9.9999997e-06);
l9_4218*=(l9_4220+((1.0-float(l9_4217))*(1.0-l9_4220)));
l9_4214=l9_4219;
l9_4182.y=l9_4214;
l9_4192=l9_4218;
}
float2 l9_4221=l9_4182;
bool l9_4222=l9_4183;
float3x3 l9_4223=l9_4184;
if (l9_4222)
{
l9_4221=float2((l9_4223*float3(l9_4221,1.0)).xy);
}
float2 l9_4224=l9_4221;
l9_4182=l9_4224;
float l9_4225=l9_4182.x;
int l9_4226=l9_4185.x;
bool l9_4227=l9_4191;
float l9_4228=l9_4192;
if ((l9_4226==0)||(l9_4226==3))
{
float l9_4229=l9_4225;
float l9_4230=0.0;
float l9_4231=1.0;
bool l9_4232=l9_4227;
float l9_4233=l9_4228;
float l9_4234=fast::clamp(l9_4229,l9_4230,l9_4231);
float l9_4235=step(abs(l9_4229-l9_4234),9.9999997e-06);
l9_4233*=(l9_4235+((1.0-float(l9_4232))*(1.0-l9_4235)));
l9_4229=l9_4234;
l9_4225=l9_4229;
l9_4228=l9_4233;
}
l9_4182.x=l9_4225;
l9_4192=l9_4228;
float l9_4236=l9_4182.y;
int l9_4237=l9_4185.y;
bool l9_4238=l9_4191;
float l9_4239=l9_4192;
if ((l9_4237==0)||(l9_4237==3))
{
float l9_4240=l9_4236;
float l9_4241=0.0;
float l9_4242=1.0;
bool l9_4243=l9_4238;
float l9_4244=l9_4239;
float l9_4245=fast::clamp(l9_4240,l9_4241,l9_4242);
float l9_4246=step(abs(l9_4240-l9_4245),9.9999997e-06);
l9_4244*=(l9_4246+((1.0-float(l9_4243))*(1.0-l9_4246)));
l9_4240=l9_4245;
l9_4236=l9_4240;
l9_4239=l9_4244;
}
l9_4182.y=l9_4236;
l9_4192=l9_4239;
float2 l9_4247=l9_4182;
int l9_4248=l9_4180;
int l9_4249=l9_4181;
float l9_4250=l9_4190;
float2 l9_4251=l9_4247;
int l9_4252=l9_4248;
int l9_4253=l9_4249;
float3 l9_4254=float3(0.0);
if (l9_4252==0)
{
l9_4254=float3(l9_4251,0.0);
}
else
{
if (l9_4252==1)
{
l9_4254=float3(l9_4251.x,(l9_4251.y*0.5)+(0.5-(float(l9_4253)*0.5)),0.0);
}
else
{
l9_4254=float3(l9_4251,float(l9_4253));
}
}
float3 l9_4255=l9_4254;
float3 l9_4256=l9_4255;
float4 l9_4257=sc_set0.reflectionModulationTex.sample(sc_set0.reflectionModulationTexSmpSC,l9_4256.xy,bias(l9_4250));
float4 l9_4258=l9_4257;
if (l9_4188)
{
l9_4258=mix(l9_4189,l9_4258,float4(l9_4192));
}
float4 l9_4259=l9_4258;
l9_4173=l9_4259;
l9_3956=l9_4173.xyz;
l9_3959=l9_3956;
}
else
{
l9_3959=l9_3957;
}
l9_3955=l9_3959;
float3 l9_4260=float3(0.0);
l9_4260=l9_3868.xyz*l9_3955;
float3 l9_4261=float3(0.0);
float3 l9_4262=l9_4260;
float3 l9_4263;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_4263=float3(pow(l9_4262.x,2.2),pow(l9_4262.y,2.2),pow(l9_4262.z,2.2));
}
else
{
l9_4263=l9_4262*l9_4262;
}
float3 l9_4264=l9_4263;
l9_4261=l9_4264;
float3 l9_4265=float3(0.0);
l9_4265=float3(l9_3194)*l9_4261;
param_26=l9_4265;
param_28=param_26;
}
else
{
param_28=param_27;
}
Result_N134=param_28;
float3 Export_N303=float3(0.0);
Export_N303=Result_N134;
float3 Value_N298=float3(0.0);
Value_N298=Export_N303;
float3 Result_N173=float3(0.0);
float3 param_30=float3(0.0);
float3 param_31=(*sc_set0.UserUniforms).Port_Default_N173;
ssGlobals param_33=Globals;
float3 param_32;
if ((int(Tweak_N74_tmp)!=0))
{
float3 l9_4266=float3(0.0);
float3 l9_4267=(*sc_set0.UserUniforms).rimColor;
l9_4266=l9_4267;
float3 l9_4268=float3(0.0);
l9_4268=l9_4266;
float l9_4269=0.0;
float l9_4270=(*sc_set0.UserUniforms).rimIntensity;
l9_4269=l9_4270;
float l9_4271=0.0;
l9_4271=l9_4269;
float3 l9_4272=float3(0.0);
float3 l9_4273=float3(0.0);
float3 l9_4274=(*sc_set0.UserUniforms).Port_Default_N170;
ssGlobals l9_4275=param_33;
float3 l9_4276;
if ((int(Tweak_N216_tmp)!=0))
{
float2 l9_4277=float2(0.0);
float2 l9_4278=float2(0.0);
float2 l9_4279=float2(0.0);
float2 l9_4280=float2(0.0);
float2 l9_4281=float2(0.0);
float2 l9_4282=float2(0.0);
ssGlobals l9_4283=l9_4275;
float2 l9_4284;
if (NODE_315_DROPLIST_ITEM_tmp==0)
{
float2 l9_4285=float2(0.0);
l9_4285=l9_4283.Surface_UVCoord0;
l9_4278=l9_4285;
l9_4284=l9_4278;
}
else
{
if (NODE_315_DROPLIST_ITEM_tmp==1)
{
float2 l9_4286=float2(0.0);
l9_4286=l9_4283.Surface_UVCoord1;
l9_4279=l9_4286;
l9_4284=l9_4279;
}
else
{
if (NODE_315_DROPLIST_ITEM_tmp==2)
{
float2 l9_4287=float2(0.0);
float2 l9_4288=float2(0.0);
float2 l9_4289=float2(0.0);
ssGlobals l9_4290=l9_4283;
float2 l9_4291;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4292=float2(0.0);
float2 l9_4293=float2(0.0);
float2 l9_4294=float2(0.0);
ssGlobals l9_4295=l9_4290;
float2 l9_4296;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4297=float2(0.0);
float2 l9_4298=float2(0.0);
float2 l9_4299=float2(0.0);
float2 l9_4300=float2(0.0);
float2 l9_4301=float2(0.0);
ssGlobals l9_4302=l9_4295;
float2 l9_4303;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4304=float2(0.0);
l9_4304=l9_4302.Surface_UVCoord0;
l9_4298=l9_4304;
l9_4303=l9_4298;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4305=float2(0.0);
l9_4305=l9_4302.Surface_UVCoord1;
l9_4299=l9_4305;
l9_4303=l9_4299;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4306=float2(0.0);
l9_4306=l9_4302.gScreenCoord;
l9_4300=l9_4306;
l9_4303=l9_4300;
}
else
{
float2 l9_4307=float2(0.0);
l9_4307=l9_4302.Surface_UVCoord0;
l9_4301=l9_4307;
l9_4303=l9_4301;
}
}
}
l9_4297=l9_4303;
float2 l9_4308=float2(0.0);
float2 l9_4309=(*sc_set0.UserUniforms).uv2Scale;
l9_4308=l9_4309;
float2 l9_4310=float2(0.0);
l9_4310=l9_4308;
float2 l9_4311=float2(0.0);
float2 l9_4312=(*sc_set0.UserUniforms).uv2Offset;
l9_4311=l9_4312;
float2 l9_4313=float2(0.0);
l9_4313=l9_4311;
float2 l9_4314=float2(0.0);
l9_4314=(l9_4297*l9_4310)+l9_4313;
float2 l9_4315=float2(0.0);
l9_4315=l9_4314+(l9_4313*(l9_4295.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4293=l9_4315;
l9_4296=l9_4293;
}
else
{
float2 l9_4316=float2(0.0);
float2 l9_4317=float2(0.0);
float2 l9_4318=float2(0.0);
float2 l9_4319=float2(0.0);
float2 l9_4320=float2(0.0);
ssGlobals l9_4321=l9_4295;
float2 l9_4322;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4323=float2(0.0);
l9_4323=l9_4321.Surface_UVCoord0;
l9_4317=l9_4323;
l9_4322=l9_4317;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4324=float2(0.0);
l9_4324=l9_4321.Surface_UVCoord1;
l9_4318=l9_4324;
l9_4322=l9_4318;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4325=float2(0.0);
l9_4325=l9_4321.gScreenCoord;
l9_4319=l9_4325;
l9_4322=l9_4319;
}
else
{
float2 l9_4326=float2(0.0);
l9_4326=l9_4321.Surface_UVCoord0;
l9_4320=l9_4326;
l9_4322=l9_4320;
}
}
}
l9_4316=l9_4322;
float2 l9_4327=float2(0.0);
float2 l9_4328=(*sc_set0.UserUniforms).uv2Scale;
l9_4327=l9_4328;
float2 l9_4329=float2(0.0);
l9_4329=l9_4327;
float2 l9_4330=float2(0.0);
float2 l9_4331=(*sc_set0.UserUniforms).uv2Offset;
l9_4330=l9_4331;
float2 l9_4332=float2(0.0);
l9_4332=l9_4330;
float2 l9_4333=float2(0.0);
l9_4333=(l9_4316*l9_4329)+l9_4332;
l9_4294=l9_4333;
l9_4296=l9_4294;
}
l9_4292=l9_4296;
l9_4288=l9_4292;
l9_4291=l9_4288;
}
else
{
float2 l9_4334=float2(0.0);
l9_4334=l9_4290.Surface_UVCoord0;
l9_4289=l9_4334;
l9_4291=l9_4289;
}
l9_4287=l9_4291;
float2 l9_4335=float2(0.0);
l9_4335=l9_4287;
float2 l9_4336=float2(0.0);
l9_4336=l9_4335;
l9_4280=l9_4336;
l9_4284=l9_4280;
}
else
{
if (NODE_315_DROPLIST_ITEM_tmp==3)
{
float2 l9_4337=float2(0.0);
float2 l9_4338=float2(0.0);
float2 l9_4339=float2(0.0);
ssGlobals l9_4340=l9_4283;
float2 l9_4341;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_4342=float2(0.0);
float2 l9_4343=float2(0.0);
float2 l9_4344=float2(0.0);
ssGlobals l9_4345=l9_4340;
float2 l9_4346;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_4347=float2(0.0);
float2 l9_4348=float2(0.0);
float2 l9_4349=float2(0.0);
float2 l9_4350=float2(0.0);
float2 l9_4351=float2(0.0);
float2 l9_4352=float2(0.0);
ssGlobals l9_4353=l9_4345;
float2 l9_4354;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4355=float2(0.0);
l9_4355=l9_4353.Surface_UVCoord0;
l9_4348=l9_4355;
l9_4354=l9_4348;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4356=float2(0.0);
l9_4356=l9_4353.Surface_UVCoord1;
l9_4349=l9_4356;
l9_4354=l9_4349;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4357=float2(0.0);
l9_4357=l9_4353.gScreenCoord;
l9_4350=l9_4357;
l9_4354=l9_4350;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4358=float2(0.0);
float2 l9_4359=float2(0.0);
float2 l9_4360=float2(0.0);
ssGlobals l9_4361=l9_4353;
float2 l9_4362;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4363=float2(0.0);
float2 l9_4364=float2(0.0);
float2 l9_4365=float2(0.0);
ssGlobals l9_4366=l9_4361;
float2 l9_4367;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4368=float2(0.0);
float2 l9_4369=float2(0.0);
float2 l9_4370=float2(0.0);
float2 l9_4371=float2(0.0);
float2 l9_4372=float2(0.0);
ssGlobals l9_4373=l9_4366;
float2 l9_4374;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4375=float2(0.0);
l9_4375=l9_4373.Surface_UVCoord0;
l9_4369=l9_4375;
l9_4374=l9_4369;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4376=float2(0.0);
l9_4376=l9_4373.Surface_UVCoord1;
l9_4370=l9_4376;
l9_4374=l9_4370;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4377=float2(0.0);
l9_4377=l9_4373.gScreenCoord;
l9_4371=l9_4377;
l9_4374=l9_4371;
}
else
{
float2 l9_4378=float2(0.0);
l9_4378=l9_4373.Surface_UVCoord0;
l9_4372=l9_4378;
l9_4374=l9_4372;
}
}
}
l9_4368=l9_4374;
float2 l9_4379=float2(0.0);
float2 l9_4380=(*sc_set0.UserUniforms).uv2Scale;
l9_4379=l9_4380;
float2 l9_4381=float2(0.0);
l9_4381=l9_4379;
float2 l9_4382=float2(0.0);
float2 l9_4383=(*sc_set0.UserUniforms).uv2Offset;
l9_4382=l9_4383;
float2 l9_4384=float2(0.0);
l9_4384=l9_4382;
float2 l9_4385=float2(0.0);
l9_4385=(l9_4368*l9_4381)+l9_4384;
float2 l9_4386=float2(0.0);
l9_4386=l9_4385+(l9_4384*(l9_4366.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4364=l9_4386;
l9_4367=l9_4364;
}
else
{
float2 l9_4387=float2(0.0);
float2 l9_4388=float2(0.0);
float2 l9_4389=float2(0.0);
float2 l9_4390=float2(0.0);
float2 l9_4391=float2(0.0);
ssGlobals l9_4392=l9_4366;
float2 l9_4393;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4394=float2(0.0);
l9_4394=l9_4392.Surface_UVCoord0;
l9_4388=l9_4394;
l9_4393=l9_4388;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4395=float2(0.0);
l9_4395=l9_4392.Surface_UVCoord1;
l9_4389=l9_4395;
l9_4393=l9_4389;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4396=float2(0.0);
l9_4396=l9_4392.gScreenCoord;
l9_4390=l9_4396;
l9_4393=l9_4390;
}
else
{
float2 l9_4397=float2(0.0);
l9_4397=l9_4392.Surface_UVCoord0;
l9_4391=l9_4397;
l9_4393=l9_4391;
}
}
}
l9_4387=l9_4393;
float2 l9_4398=float2(0.0);
float2 l9_4399=(*sc_set0.UserUniforms).uv2Scale;
l9_4398=l9_4399;
float2 l9_4400=float2(0.0);
l9_4400=l9_4398;
float2 l9_4401=float2(0.0);
float2 l9_4402=(*sc_set0.UserUniforms).uv2Offset;
l9_4401=l9_4402;
float2 l9_4403=float2(0.0);
l9_4403=l9_4401;
float2 l9_4404=float2(0.0);
l9_4404=(l9_4387*l9_4400)+l9_4403;
l9_4365=l9_4404;
l9_4367=l9_4365;
}
l9_4363=l9_4367;
l9_4359=l9_4363;
l9_4362=l9_4359;
}
else
{
float2 l9_4405=float2(0.0);
l9_4405=l9_4361.Surface_UVCoord0;
l9_4360=l9_4405;
l9_4362=l9_4360;
}
l9_4358=l9_4362;
float2 l9_4406=float2(0.0);
l9_4406=l9_4358;
float2 l9_4407=float2(0.0);
l9_4407=l9_4406;
l9_4351=l9_4407;
l9_4354=l9_4351;
}
else
{
float2 l9_4408=float2(0.0);
l9_4408=l9_4353.Surface_UVCoord0;
l9_4352=l9_4408;
l9_4354=l9_4352;
}
}
}
}
l9_4347=l9_4354;
float2 l9_4409=float2(0.0);
float2 l9_4410=(*sc_set0.UserUniforms).uv3Scale;
l9_4409=l9_4410;
float2 l9_4411=float2(0.0);
l9_4411=l9_4409;
float2 l9_4412=float2(0.0);
float2 l9_4413=(*sc_set0.UserUniforms).uv3Offset;
l9_4412=l9_4413;
float2 l9_4414=float2(0.0);
l9_4414=l9_4412;
float2 l9_4415=float2(0.0);
l9_4415=(l9_4347*l9_4411)+l9_4414;
float2 l9_4416=float2(0.0);
l9_4416=l9_4415+(l9_4414*(l9_4345.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_4343=l9_4416;
l9_4346=l9_4343;
}
else
{
float2 l9_4417=float2(0.0);
float2 l9_4418=float2(0.0);
float2 l9_4419=float2(0.0);
float2 l9_4420=float2(0.0);
float2 l9_4421=float2(0.0);
float2 l9_4422=float2(0.0);
ssGlobals l9_4423=l9_4345;
float2 l9_4424;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4425=float2(0.0);
l9_4425=l9_4423.Surface_UVCoord0;
l9_4418=l9_4425;
l9_4424=l9_4418;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4426=float2(0.0);
l9_4426=l9_4423.Surface_UVCoord1;
l9_4419=l9_4426;
l9_4424=l9_4419;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4427=float2(0.0);
l9_4427=l9_4423.gScreenCoord;
l9_4420=l9_4427;
l9_4424=l9_4420;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4428=float2(0.0);
float2 l9_4429=float2(0.0);
float2 l9_4430=float2(0.0);
ssGlobals l9_4431=l9_4423;
float2 l9_4432;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4433=float2(0.0);
float2 l9_4434=float2(0.0);
float2 l9_4435=float2(0.0);
ssGlobals l9_4436=l9_4431;
float2 l9_4437;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4438=float2(0.0);
float2 l9_4439=float2(0.0);
float2 l9_4440=float2(0.0);
float2 l9_4441=float2(0.0);
float2 l9_4442=float2(0.0);
ssGlobals l9_4443=l9_4436;
float2 l9_4444;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4445=float2(0.0);
l9_4445=l9_4443.Surface_UVCoord0;
l9_4439=l9_4445;
l9_4444=l9_4439;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4446=float2(0.0);
l9_4446=l9_4443.Surface_UVCoord1;
l9_4440=l9_4446;
l9_4444=l9_4440;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4447=float2(0.0);
l9_4447=l9_4443.gScreenCoord;
l9_4441=l9_4447;
l9_4444=l9_4441;
}
else
{
float2 l9_4448=float2(0.0);
l9_4448=l9_4443.Surface_UVCoord0;
l9_4442=l9_4448;
l9_4444=l9_4442;
}
}
}
l9_4438=l9_4444;
float2 l9_4449=float2(0.0);
float2 l9_4450=(*sc_set0.UserUniforms).uv2Scale;
l9_4449=l9_4450;
float2 l9_4451=float2(0.0);
l9_4451=l9_4449;
float2 l9_4452=float2(0.0);
float2 l9_4453=(*sc_set0.UserUniforms).uv2Offset;
l9_4452=l9_4453;
float2 l9_4454=float2(0.0);
l9_4454=l9_4452;
float2 l9_4455=float2(0.0);
l9_4455=(l9_4438*l9_4451)+l9_4454;
float2 l9_4456=float2(0.0);
l9_4456=l9_4455+(l9_4454*(l9_4436.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4434=l9_4456;
l9_4437=l9_4434;
}
else
{
float2 l9_4457=float2(0.0);
float2 l9_4458=float2(0.0);
float2 l9_4459=float2(0.0);
float2 l9_4460=float2(0.0);
float2 l9_4461=float2(0.0);
ssGlobals l9_4462=l9_4436;
float2 l9_4463;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4464=float2(0.0);
l9_4464=l9_4462.Surface_UVCoord0;
l9_4458=l9_4464;
l9_4463=l9_4458;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4465=float2(0.0);
l9_4465=l9_4462.Surface_UVCoord1;
l9_4459=l9_4465;
l9_4463=l9_4459;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4466=float2(0.0);
l9_4466=l9_4462.gScreenCoord;
l9_4460=l9_4466;
l9_4463=l9_4460;
}
else
{
float2 l9_4467=float2(0.0);
l9_4467=l9_4462.Surface_UVCoord0;
l9_4461=l9_4467;
l9_4463=l9_4461;
}
}
}
l9_4457=l9_4463;
float2 l9_4468=float2(0.0);
float2 l9_4469=(*sc_set0.UserUniforms).uv2Scale;
l9_4468=l9_4469;
float2 l9_4470=float2(0.0);
l9_4470=l9_4468;
float2 l9_4471=float2(0.0);
float2 l9_4472=(*sc_set0.UserUniforms).uv2Offset;
l9_4471=l9_4472;
float2 l9_4473=float2(0.0);
l9_4473=l9_4471;
float2 l9_4474=float2(0.0);
l9_4474=(l9_4457*l9_4470)+l9_4473;
l9_4435=l9_4474;
l9_4437=l9_4435;
}
l9_4433=l9_4437;
l9_4429=l9_4433;
l9_4432=l9_4429;
}
else
{
float2 l9_4475=float2(0.0);
l9_4475=l9_4431.Surface_UVCoord0;
l9_4430=l9_4475;
l9_4432=l9_4430;
}
l9_4428=l9_4432;
float2 l9_4476=float2(0.0);
l9_4476=l9_4428;
float2 l9_4477=float2(0.0);
l9_4477=l9_4476;
l9_4421=l9_4477;
l9_4424=l9_4421;
}
else
{
float2 l9_4478=float2(0.0);
l9_4478=l9_4423.Surface_UVCoord0;
l9_4422=l9_4478;
l9_4424=l9_4422;
}
}
}
}
l9_4417=l9_4424;
float2 l9_4479=float2(0.0);
float2 l9_4480=(*sc_set0.UserUniforms).uv3Scale;
l9_4479=l9_4480;
float2 l9_4481=float2(0.0);
l9_4481=l9_4479;
float2 l9_4482=float2(0.0);
float2 l9_4483=(*sc_set0.UserUniforms).uv3Offset;
l9_4482=l9_4483;
float2 l9_4484=float2(0.0);
l9_4484=l9_4482;
float2 l9_4485=float2(0.0);
l9_4485=(l9_4417*l9_4481)+l9_4484;
l9_4344=l9_4485;
l9_4346=l9_4344;
}
l9_4342=l9_4346;
l9_4338=l9_4342;
l9_4341=l9_4338;
}
else
{
float2 l9_4486=float2(0.0);
l9_4486=l9_4340.Surface_UVCoord0;
l9_4339=l9_4486;
l9_4341=l9_4339;
}
l9_4337=l9_4341;
float2 l9_4487=float2(0.0);
l9_4487=l9_4337;
float2 l9_4488=float2(0.0);
l9_4488=l9_4487;
l9_4281=l9_4488;
l9_4284=l9_4281;
}
else
{
float2 l9_4489=float2(0.0);
l9_4489=l9_4283.Surface_UVCoord0;
l9_4282=l9_4489;
l9_4284=l9_4282;
}
}
}
}
l9_4277=l9_4284;
float4 l9_4490=float4(0.0);
int l9_4491;
if ((int(rimColorTexHasSwappedViews_tmp)!=0))
{
int l9_4492=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4492=0;
}
else
{
l9_4492=in.varStereoViewID;
}
int l9_4493=l9_4492;
l9_4491=1-l9_4493;
}
else
{
int l9_4494=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4494=0;
}
else
{
l9_4494=in.varStereoViewID;
}
int l9_4495=l9_4494;
l9_4491=l9_4495;
}
int l9_4496=l9_4491;
int l9_4497=rimColorTexLayout_tmp;
int l9_4498=l9_4496;
float2 l9_4499=l9_4277;
bool l9_4500=(int(SC_USE_UV_TRANSFORM_rimColorTex_tmp)!=0);
float3x3 l9_4501=(*sc_set0.UserUniforms).rimColorTexTransform;
int2 l9_4502=int2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex_tmp,SC_SOFTWARE_WRAP_MODE_V_rimColorTex_tmp);
bool l9_4503=(int(SC_USE_UV_MIN_MAX_rimColorTex_tmp)!=0);
float4 l9_4504=(*sc_set0.UserUniforms).rimColorTexUvMinMax;
bool l9_4505=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex_tmp)!=0);
float4 l9_4506=(*sc_set0.UserUniforms).rimColorTexBorderColor;
float l9_4507=0.0;
bool l9_4508=l9_4505&&(!l9_4503);
float l9_4509=1.0;
float l9_4510=l9_4499.x;
int l9_4511=l9_4502.x;
if (l9_4511==1)
{
l9_4510=fract(l9_4510);
}
else
{
if (l9_4511==2)
{
float l9_4512=fract(l9_4510);
float l9_4513=l9_4510-l9_4512;
float l9_4514=step(0.25,fract(l9_4513*0.5));
l9_4510=mix(l9_4512,1.0-l9_4512,fast::clamp(l9_4514,0.0,1.0));
}
}
l9_4499.x=l9_4510;
float l9_4515=l9_4499.y;
int l9_4516=l9_4502.y;
if (l9_4516==1)
{
l9_4515=fract(l9_4515);
}
else
{
if (l9_4516==2)
{
float l9_4517=fract(l9_4515);
float l9_4518=l9_4515-l9_4517;
float l9_4519=step(0.25,fract(l9_4518*0.5));
l9_4515=mix(l9_4517,1.0-l9_4517,fast::clamp(l9_4519,0.0,1.0));
}
}
l9_4499.y=l9_4515;
if (l9_4503)
{
bool l9_4520=l9_4505;
bool l9_4521;
if (l9_4520)
{
l9_4521=l9_4502.x==3;
}
else
{
l9_4521=l9_4520;
}
float l9_4522=l9_4499.x;
float l9_4523=l9_4504.x;
float l9_4524=l9_4504.z;
bool l9_4525=l9_4521;
float l9_4526=l9_4509;
float l9_4527=fast::clamp(l9_4522,l9_4523,l9_4524);
float l9_4528=step(abs(l9_4522-l9_4527),9.9999997e-06);
l9_4526*=(l9_4528+((1.0-float(l9_4525))*(1.0-l9_4528)));
l9_4522=l9_4527;
l9_4499.x=l9_4522;
l9_4509=l9_4526;
bool l9_4529=l9_4505;
bool l9_4530;
if (l9_4529)
{
l9_4530=l9_4502.y==3;
}
else
{
l9_4530=l9_4529;
}
float l9_4531=l9_4499.y;
float l9_4532=l9_4504.y;
float l9_4533=l9_4504.w;
bool l9_4534=l9_4530;
float l9_4535=l9_4509;
float l9_4536=fast::clamp(l9_4531,l9_4532,l9_4533);
float l9_4537=step(abs(l9_4531-l9_4536),9.9999997e-06);
l9_4535*=(l9_4537+((1.0-float(l9_4534))*(1.0-l9_4537)));
l9_4531=l9_4536;
l9_4499.y=l9_4531;
l9_4509=l9_4535;
}
float2 l9_4538=l9_4499;
bool l9_4539=l9_4500;
float3x3 l9_4540=l9_4501;
if (l9_4539)
{
l9_4538=float2((l9_4540*float3(l9_4538,1.0)).xy);
}
float2 l9_4541=l9_4538;
l9_4499=l9_4541;
float l9_4542=l9_4499.x;
int l9_4543=l9_4502.x;
bool l9_4544=l9_4508;
float l9_4545=l9_4509;
if ((l9_4543==0)||(l9_4543==3))
{
float l9_4546=l9_4542;
float l9_4547=0.0;
float l9_4548=1.0;
bool l9_4549=l9_4544;
float l9_4550=l9_4545;
float l9_4551=fast::clamp(l9_4546,l9_4547,l9_4548);
float l9_4552=step(abs(l9_4546-l9_4551),9.9999997e-06);
l9_4550*=(l9_4552+((1.0-float(l9_4549))*(1.0-l9_4552)));
l9_4546=l9_4551;
l9_4542=l9_4546;
l9_4545=l9_4550;
}
l9_4499.x=l9_4542;
l9_4509=l9_4545;
float l9_4553=l9_4499.y;
int l9_4554=l9_4502.y;
bool l9_4555=l9_4508;
float l9_4556=l9_4509;
if ((l9_4554==0)||(l9_4554==3))
{
float l9_4557=l9_4553;
float l9_4558=0.0;
float l9_4559=1.0;
bool l9_4560=l9_4555;
float l9_4561=l9_4556;
float l9_4562=fast::clamp(l9_4557,l9_4558,l9_4559);
float l9_4563=step(abs(l9_4557-l9_4562),9.9999997e-06);
l9_4561*=(l9_4563+((1.0-float(l9_4560))*(1.0-l9_4563)));
l9_4557=l9_4562;
l9_4553=l9_4557;
l9_4556=l9_4561;
}
l9_4499.y=l9_4553;
l9_4509=l9_4556;
float2 l9_4564=l9_4499;
int l9_4565=l9_4497;
int l9_4566=l9_4498;
float l9_4567=l9_4507;
float2 l9_4568=l9_4564;
int l9_4569=l9_4565;
int l9_4570=l9_4566;
float3 l9_4571=float3(0.0);
if (l9_4569==0)
{
l9_4571=float3(l9_4568,0.0);
}
else
{
if (l9_4569==1)
{
l9_4571=float3(l9_4568.x,(l9_4568.y*0.5)+(0.5-(float(l9_4570)*0.5)),0.0);
}
else
{
l9_4571=float3(l9_4568,float(l9_4570));
}
}
float3 l9_4572=l9_4571;
float3 l9_4573=l9_4572;
float4 l9_4574=sc_set0.rimColorTex.sample(sc_set0.rimColorTexSmpSC,l9_4573.xy,bias(l9_4567));
float4 l9_4575=l9_4574;
if (l9_4505)
{
l9_4575=mix(l9_4506,l9_4575,float4(l9_4509));
}
float4 l9_4576=l9_4575;
l9_4490=l9_4576;
l9_4273=l9_4490.xyz;
l9_4276=l9_4273;
}
else
{
l9_4276=l9_4274;
}
l9_4272=l9_4276;
float3 l9_4577=float3(0.0);
l9_4577=(l9_4268*float3(l9_4271))*l9_4272;
float3 l9_4578=float3(0.0);
float3 l9_4579=l9_4577;
float3 l9_4580;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_4580=float3(pow(l9_4579.x,2.2),pow(l9_4579.y,2.2),pow(l9_4579.z,2.2));
}
else
{
l9_4580=l9_4579*l9_4579;
}
float3 l9_4581=l9_4580;
l9_4578=l9_4581;
float l9_4582=0.0;
float l9_4583=0.0;
float l9_4584=0.0;
ssGlobals l9_4585=param_33;
float l9_4586;
if ((int(rimInvert_tmp)!=0))
{
float3 l9_4587=float3(0.0);
float3 l9_4588=float3(0.0);
float3 l9_4589=float3(0.0);
ssGlobals l9_4590=l9_4585;
float3 l9_4591;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_4592=float3(0.0);
l9_4592=l9_4590.VertexTangent_WorldSpace;
float3 l9_4593=float3(0.0);
l9_4593=l9_4590.VertexBinormal_WorldSpace;
float3 l9_4594=float3(0.0);
l9_4594=l9_4590.VertexNormal_WorldSpace;
float3x3 l9_4595=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_4595=float3x3(float3(l9_4592),float3(l9_4593),float3(l9_4594));
float2 l9_4596=float2(0.0);
float2 l9_4597=float2(0.0);
float2 l9_4598=float2(0.0);
float2 l9_4599=float2(0.0);
float2 l9_4600=float2(0.0);
float2 l9_4601=float2(0.0);
ssGlobals l9_4602=l9_4590;
float2 l9_4603;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_4604=float2(0.0);
l9_4604=l9_4602.Surface_UVCoord0;
l9_4597=l9_4604;
l9_4603=l9_4597;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_4605=float2(0.0);
l9_4605=l9_4602.Surface_UVCoord1;
l9_4598=l9_4605;
l9_4603=l9_4598;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_4606=float2(0.0);
float2 l9_4607=float2(0.0);
float2 l9_4608=float2(0.0);
ssGlobals l9_4609=l9_4602;
float2 l9_4610;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4611=float2(0.0);
float2 l9_4612=float2(0.0);
float2 l9_4613=float2(0.0);
ssGlobals l9_4614=l9_4609;
float2 l9_4615;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4616=float2(0.0);
float2 l9_4617=float2(0.0);
float2 l9_4618=float2(0.0);
float2 l9_4619=float2(0.0);
float2 l9_4620=float2(0.0);
ssGlobals l9_4621=l9_4614;
float2 l9_4622;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4623=float2(0.0);
l9_4623=l9_4621.Surface_UVCoord0;
l9_4617=l9_4623;
l9_4622=l9_4617;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4624=float2(0.0);
l9_4624=l9_4621.Surface_UVCoord1;
l9_4618=l9_4624;
l9_4622=l9_4618;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4625=float2(0.0);
l9_4625=l9_4621.gScreenCoord;
l9_4619=l9_4625;
l9_4622=l9_4619;
}
else
{
float2 l9_4626=float2(0.0);
l9_4626=l9_4621.Surface_UVCoord0;
l9_4620=l9_4626;
l9_4622=l9_4620;
}
}
}
l9_4616=l9_4622;
float2 l9_4627=float2(0.0);
float2 l9_4628=(*sc_set0.UserUniforms).uv2Scale;
l9_4627=l9_4628;
float2 l9_4629=float2(0.0);
l9_4629=l9_4627;
float2 l9_4630=float2(0.0);
float2 l9_4631=(*sc_set0.UserUniforms).uv2Offset;
l9_4630=l9_4631;
float2 l9_4632=float2(0.0);
l9_4632=l9_4630;
float2 l9_4633=float2(0.0);
l9_4633=(l9_4616*l9_4629)+l9_4632;
float2 l9_4634=float2(0.0);
l9_4634=l9_4633+(l9_4632*(l9_4614.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4612=l9_4634;
l9_4615=l9_4612;
}
else
{
float2 l9_4635=float2(0.0);
float2 l9_4636=float2(0.0);
float2 l9_4637=float2(0.0);
float2 l9_4638=float2(0.0);
float2 l9_4639=float2(0.0);
ssGlobals l9_4640=l9_4614;
float2 l9_4641;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4642=float2(0.0);
l9_4642=l9_4640.Surface_UVCoord0;
l9_4636=l9_4642;
l9_4641=l9_4636;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4643=float2(0.0);
l9_4643=l9_4640.Surface_UVCoord1;
l9_4637=l9_4643;
l9_4641=l9_4637;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4644=float2(0.0);
l9_4644=l9_4640.gScreenCoord;
l9_4638=l9_4644;
l9_4641=l9_4638;
}
else
{
float2 l9_4645=float2(0.0);
l9_4645=l9_4640.Surface_UVCoord0;
l9_4639=l9_4645;
l9_4641=l9_4639;
}
}
}
l9_4635=l9_4641;
float2 l9_4646=float2(0.0);
float2 l9_4647=(*sc_set0.UserUniforms).uv2Scale;
l9_4646=l9_4647;
float2 l9_4648=float2(0.0);
l9_4648=l9_4646;
float2 l9_4649=float2(0.0);
float2 l9_4650=(*sc_set0.UserUniforms).uv2Offset;
l9_4649=l9_4650;
float2 l9_4651=float2(0.0);
l9_4651=l9_4649;
float2 l9_4652=float2(0.0);
l9_4652=(l9_4635*l9_4648)+l9_4651;
l9_4613=l9_4652;
l9_4615=l9_4613;
}
l9_4611=l9_4615;
l9_4607=l9_4611;
l9_4610=l9_4607;
}
else
{
float2 l9_4653=float2(0.0);
l9_4653=l9_4609.Surface_UVCoord0;
l9_4608=l9_4653;
l9_4610=l9_4608;
}
l9_4606=l9_4610;
float2 l9_4654=float2(0.0);
l9_4654=l9_4606;
float2 l9_4655=float2(0.0);
l9_4655=l9_4654;
l9_4599=l9_4655;
l9_4603=l9_4599;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_4656=float2(0.0);
float2 l9_4657=float2(0.0);
float2 l9_4658=float2(0.0);
ssGlobals l9_4659=l9_4602;
float2 l9_4660;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_4661=float2(0.0);
float2 l9_4662=float2(0.0);
float2 l9_4663=float2(0.0);
ssGlobals l9_4664=l9_4659;
float2 l9_4665;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_4666=float2(0.0);
float2 l9_4667=float2(0.0);
float2 l9_4668=float2(0.0);
float2 l9_4669=float2(0.0);
float2 l9_4670=float2(0.0);
float2 l9_4671=float2(0.0);
ssGlobals l9_4672=l9_4664;
float2 l9_4673;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4674=float2(0.0);
l9_4674=l9_4672.Surface_UVCoord0;
l9_4667=l9_4674;
l9_4673=l9_4667;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4675=float2(0.0);
l9_4675=l9_4672.Surface_UVCoord1;
l9_4668=l9_4675;
l9_4673=l9_4668;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4676=float2(0.0);
l9_4676=l9_4672.gScreenCoord;
l9_4669=l9_4676;
l9_4673=l9_4669;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4677=float2(0.0);
float2 l9_4678=float2(0.0);
float2 l9_4679=float2(0.0);
ssGlobals l9_4680=l9_4672;
float2 l9_4681;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4682=float2(0.0);
float2 l9_4683=float2(0.0);
float2 l9_4684=float2(0.0);
ssGlobals l9_4685=l9_4680;
float2 l9_4686;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4687=float2(0.0);
float2 l9_4688=float2(0.0);
float2 l9_4689=float2(0.0);
float2 l9_4690=float2(0.0);
float2 l9_4691=float2(0.0);
ssGlobals l9_4692=l9_4685;
float2 l9_4693;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4694=float2(0.0);
l9_4694=l9_4692.Surface_UVCoord0;
l9_4688=l9_4694;
l9_4693=l9_4688;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4695=float2(0.0);
l9_4695=l9_4692.Surface_UVCoord1;
l9_4689=l9_4695;
l9_4693=l9_4689;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4696=float2(0.0);
l9_4696=l9_4692.gScreenCoord;
l9_4690=l9_4696;
l9_4693=l9_4690;
}
else
{
float2 l9_4697=float2(0.0);
l9_4697=l9_4692.Surface_UVCoord0;
l9_4691=l9_4697;
l9_4693=l9_4691;
}
}
}
l9_4687=l9_4693;
float2 l9_4698=float2(0.0);
float2 l9_4699=(*sc_set0.UserUniforms).uv2Scale;
l9_4698=l9_4699;
float2 l9_4700=float2(0.0);
l9_4700=l9_4698;
float2 l9_4701=float2(0.0);
float2 l9_4702=(*sc_set0.UserUniforms).uv2Offset;
l9_4701=l9_4702;
float2 l9_4703=float2(0.0);
l9_4703=l9_4701;
float2 l9_4704=float2(0.0);
l9_4704=(l9_4687*l9_4700)+l9_4703;
float2 l9_4705=float2(0.0);
l9_4705=l9_4704+(l9_4703*(l9_4685.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4683=l9_4705;
l9_4686=l9_4683;
}
else
{
float2 l9_4706=float2(0.0);
float2 l9_4707=float2(0.0);
float2 l9_4708=float2(0.0);
float2 l9_4709=float2(0.0);
float2 l9_4710=float2(0.0);
ssGlobals l9_4711=l9_4685;
float2 l9_4712;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4713=float2(0.0);
l9_4713=l9_4711.Surface_UVCoord0;
l9_4707=l9_4713;
l9_4712=l9_4707;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4714=float2(0.0);
l9_4714=l9_4711.Surface_UVCoord1;
l9_4708=l9_4714;
l9_4712=l9_4708;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4715=float2(0.0);
l9_4715=l9_4711.gScreenCoord;
l9_4709=l9_4715;
l9_4712=l9_4709;
}
else
{
float2 l9_4716=float2(0.0);
l9_4716=l9_4711.Surface_UVCoord0;
l9_4710=l9_4716;
l9_4712=l9_4710;
}
}
}
l9_4706=l9_4712;
float2 l9_4717=float2(0.0);
float2 l9_4718=(*sc_set0.UserUniforms).uv2Scale;
l9_4717=l9_4718;
float2 l9_4719=float2(0.0);
l9_4719=l9_4717;
float2 l9_4720=float2(0.0);
float2 l9_4721=(*sc_set0.UserUniforms).uv2Offset;
l9_4720=l9_4721;
float2 l9_4722=float2(0.0);
l9_4722=l9_4720;
float2 l9_4723=float2(0.0);
l9_4723=(l9_4706*l9_4719)+l9_4722;
l9_4684=l9_4723;
l9_4686=l9_4684;
}
l9_4682=l9_4686;
l9_4678=l9_4682;
l9_4681=l9_4678;
}
else
{
float2 l9_4724=float2(0.0);
l9_4724=l9_4680.Surface_UVCoord0;
l9_4679=l9_4724;
l9_4681=l9_4679;
}
l9_4677=l9_4681;
float2 l9_4725=float2(0.0);
l9_4725=l9_4677;
float2 l9_4726=float2(0.0);
l9_4726=l9_4725;
l9_4670=l9_4726;
l9_4673=l9_4670;
}
else
{
float2 l9_4727=float2(0.0);
l9_4727=l9_4672.Surface_UVCoord0;
l9_4671=l9_4727;
l9_4673=l9_4671;
}
}
}
}
l9_4666=l9_4673;
float2 l9_4728=float2(0.0);
float2 l9_4729=(*sc_set0.UserUniforms).uv3Scale;
l9_4728=l9_4729;
float2 l9_4730=float2(0.0);
l9_4730=l9_4728;
float2 l9_4731=float2(0.0);
float2 l9_4732=(*sc_set0.UserUniforms).uv3Offset;
l9_4731=l9_4732;
float2 l9_4733=float2(0.0);
l9_4733=l9_4731;
float2 l9_4734=float2(0.0);
l9_4734=(l9_4666*l9_4730)+l9_4733;
float2 l9_4735=float2(0.0);
l9_4735=l9_4734+(l9_4733*(l9_4664.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_4662=l9_4735;
l9_4665=l9_4662;
}
else
{
float2 l9_4736=float2(0.0);
float2 l9_4737=float2(0.0);
float2 l9_4738=float2(0.0);
float2 l9_4739=float2(0.0);
float2 l9_4740=float2(0.0);
float2 l9_4741=float2(0.0);
ssGlobals l9_4742=l9_4664;
float2 l9_4743;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4744=float2(0.0);
l9_4744=l9_4742.Surface_UVCoord0;
l9_4737=l9_4744;
l9_4743=l9_4737;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4745=float2(0.0);
l9_4745=l9_4742.Surface_UVCoord1;
l9_4738=l9_4745;
l9_4743=l9_4738;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4746=float2(0.0);
l9_4746=l9_4742.gScreenCoord;
l9_4739=l9_4746;
l9_4743=l9_4739;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4747=float2(0.0);
float2 l9_4748=float2(0.0);
float2 l9_4749=float2(0.0);
ssGlobals l9_4750=l9_4742;
float2 l9_4751;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4752=float2(0.0);
float2 l9_4753=float2(0.0);
float2 l9_4754=float2(0.0);
ssGlobals l9_4755=l9_4750;
float2 l9_4756;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4757=float2(0.0);
float2 l9_4758=float2(0.0);
float2 l9_4759=float2(0.0);
float2 l9_4760=float2(0.0);
float2 l9_4761=float2(0.0);
ssGlobals l9_4762=l9_4755;
float2 l9_4763;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4764=float2(0.0);
l9_4764=l9_4762.Surface_UVCoord0;
l9_4758=l9_4764;
l9_4763=l9_4758;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4765=float2(0.0);
l9_4765=l9_4762.Surface_UVCoord1;
l9_4759=l9_4765;
l9_4763=l9_4759;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4766=float2(0.0);
l9_4766=l9_4762.gScreenCoord;
l9_4760=l9_4766;
l9_4763=l9_4760;
}
else
{
float2 l9_4767=float2(0.0);
l9_4767=l9_4762.Surface_UVCoord0;
l9_4761=l9_4767;
l9_4763=l9_4761;
}
}
}
l9_4757=l9_4763;
float2 l9_4768=float2(0.0);
float2 l9_4769=(*sc_set0.UserUniforms).uv2Scale;
l9_4768=l9_4769;
float2 l9_4770=float2(0.0);
l9_4770=l9_4768;
float2 l9_4771=float2(0.0);
float2 l9_4772=(*sc_set0.UserUniforms).uv2Offset;
l9_4771=l9_4772;
float2 l9_4773=float2(0.0);
l9_4773=l9_4771;
float2 l9_4774=float2(0.0);
l9_4774=(l9_4757*l9_4770)+l9_4773;
float2 l9_4775=float2(0.0);
l9_4775=l9_4774+(l9_4773*(l9_4755.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4753=l9_4775;
l9_4756=l9_4753;
}
else
{
float2 l9_4776=float2(0.0);
float2 l9_4777=float2(0.0);
float2 l9_4778=float2(0.0);
float2 l9_4779=float2(0.0);
float2 l9_4780=float2(0.0);
ssGlobals l9_4781=l9_4755;
float2 l9_4782;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4783=float2(0.0);
l9_4783=l9_4781.Surface_UVCoord0;
l9_4777=l9_4783;
l9_4782=l9_4777;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4784=float2(0.0);
l9_4784=l9_4781.Surface_UVCoord1;
l9_4778=l9_4784;
l9_4782=l9_4778;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4785=float2(0.0);
l9_4785=l9_4781.gScreenCoord;
l9_4779=l9_4785;
l9_4782=l9_4779;
}
else
{
float2 l9_4786=float2(0.0);
l9_4786=l9_4781.Surface_UVCoord0;
l9_4780=l9_4786;
l9_4782=l9_4780;
}
}
}
l9_4776=l9_4782;
float2 l9_4787=float2(0.0);
float2 l9_4788=(*sc_set0.UserUniforms).uv2Scale;
l9_4787=l9_4788;
float2 l9_4789=float2(0.0);
l9_4789=l9_4787;
float2 l9_4790=float2(0.0);
float2 l9_4791=(*sc_set0.UserUniforms).uv2Offset;
l9_4790=l9_4791;
float2 l9_4792=float2(0.0);
l9_4792=l9_4790;
float2 l9_4793=float2(0.0);
l9_4793=(l9_4776*l9_4789)+l9_4792;
l9_4754=l9_4793;
l9_4756=l9_4754;
}
l9_4752=l9_4756;
l9_4748=l9_4752;
l9_4751=l9_4748;
}
else
{
float2 l9_4794=float2(0.0);
l9_4794=l9_4750.Surface_UVCoord0;
l9_4749=l9_4794;
l9_4751=l9_4749;
}
l9_4747=l9_4751;
float2 l9_4795=float2(0.0);
l9_4795=l9_4747;
float2 l9_4796=float2(0.0);
l9_4796=l9_4795;
l9_4740=l9_4796;
l9_4743=l9_4740;
}
else
{
float2 l9_4797=float2(0.0);
l9_4797=l9_4742.Surface_UVCoord0;
l9_4741=l9_4797;
l9_4743=l9_4741;
}
}
}
}
l9_4736=l9_4743;
float2 l9_4798=float2(0.0);
float2 l9_4799=(*sc_set0.UserUniforms).uv3Scale;
l9_4798=l9_4799;
float2 l9_4800=float2(0.0);
l9_4800=l9_4798;
float2 l9_4801=float2(0.0);
float2 l9_4802=(*sc_set0.UserUniforms).uv3Offset;
l9_4801=l9_4802;
float2 l9_4803=float2(0.0);
l9_4803=l9_4801;
float2 l9_4804=float2(0.0);
l9_4804=(l9_4736*l9_4800)+l9_4803;
l9_4663=l9_4804;
l9_4665=l9_4663;
}
l9_4661=l9_4665;
l9_4657=l9_4661;
l9_4660=l9_4657;
}
else
{
float2 l9_4805=float2(0.0);
l9_4805=l9_4659.Surface_UVCoord0;
l9_4658=l9_4805;
l9_4660=l9_4658;
}
l9_4656=l9_4660;
float2 l9_4806=float2(0.0);
l9_4806=l9_4656;
float2 l9_4807=float2(0.0);
l9_4807=l9_4806;
l9_4600=l9_4807;
l9_4603=l9_4600;
}
else
{
float2 l9_4808=float2(0.0);
l9_4808=l9_4602.Surface_UVCoord0;
l9_4601=l9_4808;
l9_4603=l9_4601;
}
}
}
}
l9_4596=l9_4603;
float4 l9_4809=float4(0.0);
float2 l9_4810=l9_4596;
int l9_4811;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_4812=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4812=0;
}
else
{
l9_4812=in.varStereoViewID;
}
int l9_4813=l9_4812;
l9_4811=1-l9_4813;
}
else
{
int l9_4814=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4814=0;
}
else
{
l9_4814=in.varStereoViewID;
}
int l9_4815=l9_4814;
l9_4811=l9_4815;
}
int l9_4816=l9_4811;
int l9_4817=normalTexLayout_tmp;
int l9_4818=l9_4816;
float2 l9_4819=l9_4810;
bool l9_4820=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_4821=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_4822=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_4823=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_4824=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_4825=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_4826=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_4827=0.0;
bool l9_4828=l9_4825&&(!l9_4823);
float l9_4829=1.0;
float l9_4830=l9_4819.x;
int l9_4831=l9_4822.x;
if (l9_4831==1)
{
l9_4830=fract(l9_4830);
}
else
{
if (l9_4831==2)
{
float l9_4832=fract(l9_4830);
float l9_4833=l9_4830-l9_4832;
float l9_4834=step(0.25,fract(l9_4833*0.5));
l9_4830=mix(l9_4832,1.0-l9_4832,fast::clamp(l9_4834,0.0,1.0));
}
}
l9_4819.x=l9_4830;
float l9_4835=l9_4819.y;
int l9_4836=l9_4822.y;
if (l9_4836==1)
{
l9_4835=fract(l9_4835);
}
else
{
if (l9_4836==2)
{
float l9_4837=fract(l9_4835);
float l9_4838=l9_4835-l9_4837;
float l9_4839=step(0.25,fract(l9_4838*0.5));
l9_4835=mix(l9_4837,1.0-l9_4837,fast::clamp(l9_4839,0.0,1.0));
}
}
l9_4819.y=l9_4835;
if (l9_4823)
{
bool l9_4840=l9_4825;
bool l9_4841;
if (l9_4840)
{
l9_4841=l9_4822.x==3;
}
else
{
l9_4841=l9_4840;
}
float l9_4842=l9_4819.x;
float l9_4843=l9_4824.x;
float l9_4844=l9_4824.z;
bool l9_4845=l9_4841;
float l9_4846=l9_4829;
float l9_4847=fast::clamp(l9_4842,l9_4843,l9_4844);
float l9_4848=step(abs(l9_4842-l9_4847),9.9999997e-06);
l9_4846*=(l9_4848+((1.0-float(l9_4845))*(1.0-l9_4848)));
l9_4842=l9_4847;
l9_4819.x=l9_4842;
l9_4829=l9_4846;
bool l9_4849=l9_4825;
bool l9_4850;
if (l9_4849)
{
l9_4850=l9_4822.y==3;
}
else
{
l9_4850=l9_4849;
}
float l9_4851=l9_4819.y;
float l9_4852=l9_4824.y;
float l9_4853=l9_4824.w;
bool l9_4854=l9_4850;
float l9_4855=l9_4829;
float l9_4856=fast::clamp(l9_4851,l9_4852,l9_4853);
float l9_4857=step(abs(l9_4851-l9_4856),9.9999997e-06);
l9_4855*=(l9_4857+((1.0-float(l9_4854))*(1.0-l9_4857)));
l9_4851=l9_4856;
l9_4819.y=l9_4851;
l9_4829=l9_4855;
}
float2 l9_4858=l9_4819;
bool l9_4859=l9_4820;
float3x3 l9_4860=l9_4821;
if (l9_4859)
{
l9_4858=float2((l9_4860*float3(l9_4858,1.0)).xy);
}
float2 l9_4861=l9_4858;
l9_4819=l9_4861;
float l9_4862=l9_4819.x;
int l9_4863=l9_4822.x;
bool l9_4864=l9_4828;
float l9_4865=l9_4829;
if ((l9_4863==0)||(l9_4863==3))
{
float l9_4866=l9_4862;
float l9_4867=0.0;
float l9_4868=1.0;
bool l9_4869=l9_4864;
float l9_4870=l9_4865;
float l9_4871=fast::clamp(l9_4866,l9_4867,l9_4868);
float l9_4872=step(abs(l9_4866-l9_4871),9.9999997e-06);
l9_4870*=(l9_4872+((1.0-float(l9_4869))*(1.0-l9_4872)));
l9_4866=l9_4871;
l9_4862=l9_4866;
l9_4865=l9_4870;
}
l9_4819.x=l9_4862;
l9_4829=l9_4865;
float l9_4873=l9_4819.y;
int l9_4874=l9_4822.y;
bool l9_4875=l9_4828;
float l9_4876=l9_4829;
if ((l9_4874==0)||(l9_4874==3))
{
float l9_4877=l9_4873;
float l9_4878=0.0;
float l9_4879=1.0;
bool l9_4880=l9_4875;
float l9_4881=l9_4876;
float l9_4882=fast::clamp(l9_4877,l9_4878,l9_4879);
float l9_4883=step(abs(l9_4877-l9_4882),9.9999997e-06);
l9_4881*=(l9_4883+((1.0-float(l9_4880))*(1.0-l9_4883)));
l9_4877=l9_4882;
l9_4873=l9_4877;
l9_4876=l9_4881;
}
l9_4819.y=l9_4873;
l9_4829=l9_4876;
float2 l9_4884=l9_4819;
int l9_4885=l9_4817;
int l9_4886=l9_4818;
float l9_4887=l9_4827;
float2 l9_4888=l9_4884;
int l9_4889=l9_4885;
int l9_4890=l9_4886;
float3 l9_4891=float3(0.0);
if (l9_4889==0)
{
l9_4891=float3(l9_4888,0.0);
}
else
{
if (l9_4889==1)
{
l9_4891=float3(l9_4888.x,(l9_4888.y*0.5)+(0.5-(float(l9_4890)*0.5)),0.0);
}
else
{
l9_4891=float3(l9_4888,float(l9_4890));
}
}
float3 l9_4892=l9_4891;
float3 l9_4893=l9_4892;
float4 l9_4894=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_4893.xy,bias(l9_4887));
float4 l9_4895=l9_4894;
if (l9_4825)
{
l9_4895=mix(l9_4826,l9_4895,float4(l9_4829));
}
float4 l9_4896=l9_4895;
float4 l9_4897=l9_4896;
float3 l9_4898=(l9_4897.xyz*1.9921875)-float3(1.0);
l9_4897=float4(l9_4898.x,l9_4898.y,l9_4898.z,l9_4897.w);
l9_4809=l9_4897;
float3 l9_4899=float3(0.0);
float3 l9_4900=float3(0.0);
float3 l9_4901=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_4902=l9_4590;
float3 l9_4903;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_4904=float2(0.0);
float2 l9_4905=float2(0.0);
float2 l9_4906=float2(0.0);
float2 l9_4907=float2(0.0);
float2 l9_4908=float2(0.0);
float2 l9_4909=float2(0.0);
ssGlobals l9_4910=l9_4902;
float2 l9_4911;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_4912=float2(0.0);
l9_4912=l9_4910.Surface_UVCoord0;
l9_4905=l9_4912;
l9_4911=l9_4905;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_4913=float2(0.0);
l9_4913=l9_4910.Surface_UVCoord1;
l9_4906=l9_4913;
l9_4911=l9_4906;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_4914=float2(0.0);
float2 l9_4915=float2(0.0);
float2 l9_4916=float2(0.0);
ssGlobals l9_4917=l9_4910;
float2 l9_4918;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4919=float2(0.0);
float2 l9_4920=float2(0.0);
float2 l9_4921=float2(0.0);
ssGlobals l9_4922=l9_4917;
float2 l9_4923;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4924=float2(0.0);
float2 l9_4925=float2(0.0);
float2 l9_4926=float2(0.0);
float2 l9_4927=float2(0.0);
float2 l9_4928=float2(0.0);
ssGlobals l9_4929=l9_4922;
float2 l9_4930;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4931=float2(0.0);
l9_4931=l9_4929.Surface_UVCoord0;
l9_4925=l9_4931;
l9_4930=l9_4925;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4932=float2(0.0);
l9_4932=l9_4929.Surface_UVCoord1;
l9_4926=l9_4932;
l9_4930=l9_4926;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4933=float2(0.0);
l9_4933=l9_4929.gScreenCoord;
l9_4927=l9_4933;
l9_4930=l9_4927;
}
else
{
float2 l9_4934=float2(0.0);
l9_4934=l9_4929.Surface_UVCoord0;
l9_4928=l9_4934;
l9_4930=l9_4928;
}
}
}
l9_4924=l9_4930;
float2 l9_4935=float2(0.0);
float2 l9_4936=(*sc_set0.UserUniforms).uv2Scale;
l9_4935=l9_4936;
float2 l9_4937=float2(0.0);
l9_4937=l9_4935;
float2 l9_4938=float2(0.0);
float2 l9_4939=(*sc_set0.UserUniforms).uv2Offset;
l9_4938=l9_4939;
float2 l9_4940=float2(0.0);
l9_4940=l9_4938;
float2 l9_4941=float2(0.0);
l9_4941=(l9_4924*l9_4937)+l9_4940;
float2 l9_4942=float2(0.0);
l9_4942=l9_4941+(l9_4940*(l9_4922.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4920=l9_4942;
l9_4923=l9_4920;
}
else
{
float2 l9_4943=float2(0.0);
float2 l9_4944=float2(0.0);
float2 l9_4945=float2(0.0);
float2 l9_4946=float2(0.0);
float2 l9_4947=float2(0.0);
ssGlobals l9_4948=l9_4922;
float2 l9_4949;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_4950=float2(0.0);
l9_4950=l9_4948.Surface_UVCoord0;
l9_4944=l9_4950;
l9_4949=l9_4944;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_4951=float2(0.0);
l9_4951=l9_4948.Surface_UVCoord1;
l9_4945=l9_4951;
l9_4949=l9_4945;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_4952=float2(0.0);
l9_4952=l9_4948.gScreenCoord;
l9_4946=l9_4952;
l9_4949=l9_4946;
}
else
{
float2 l9_4953=float2(0.0);
l9_4953=l9_4948.Surface_UVCoord0;
l9_4947=l9_4953;
l9_4949=l9_4947;
}
}
}
l9_4943=l9_4949;
float2 l9_4954=float2(0.0);
float2 l9_4955=(*sc_set0.UserUniforms).uv2Scale;
l9_4954=l9_4955;
float2 l9_4956=float2(0.0);
l9_4956=l9_4954;
float2 l9_4957=float2(0.0);
float2 l9_4958=(*sc_set0.UserUniforms).uv2Offset;
l9_4957=l9_4958;
float2 l9_4959=float2(0.0);
l9_4959=l9_4957;
float2 l9_4960=float2(0.0);
l9_4960=(l9_4943*l9_4956)+l9_4959;
l9_4921=l9_4960;
l9_4923=l9_4921;
}
l9_4919=l9_4923;
l9_4915=l9_4919;
l9_4918=l9_4915;
}
else
{
float2 l9_4961=float2(0.0);
l9_4961=l9_4917.Surface_UVCoord0;
l9_4916=l9_4961;
l9_4918=l9_4916;
}
l9_4914=l9_4918;
float2 l9_4962=float2(0.0);
l9_4962=l9_4914;
float2 l9_4963=float2(0.0);
l9_4963=l9_4962;
l9_4907=l9_4963;
l9_4911=l9_4907;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_4964=float2(0.0);
float2 l9_4965=float2(0.0);
float2 l9_4966=float2(0.0);
ssGlobals l9_4967=l9_4910;
float2 l9_4968;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_4969=float2(0.0);
float2 l9_4970=float2(0.0);
float2 l9_4971=float2(0.0);
ssGlobals l9_4972=l9_4967;
float2 l9_4973;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_4974=float2(0.0);
float2 l9_4975=float2(0.0);
float2 l9_4976=float2(0.0);
float2 l9_4977=float2(0.0);
float2 l9_4978=float2(0.0);
float2 l9_4979=float2(0.0);
ssGlobals l9_4980=l9_4972;
float2 l9_4981;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_4982=float2(0.0);
l9_4982=l9_4980.Surface_UVCoord0;
l9_4975=l9_4982;
l9_4981=l9_4975;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_4983=float2(0.0);
l9_4983=l9_4980.Surface_UVCoord1;
l9_4976=l9_4983;
l9_4981=l9_4976;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_4984=float2(0.0);
l9_4984=l9_4980.gScreenCoord;
l9_4977=l9_4984;
l9_4981=l9_4977;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_4985=float2(0.0);
float2 l9_4986=float2(0.0);
float2 l9_4987=float2(0.0);
ssGlobals l9_4988=l9_4980;
float2 l9_4989;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_4990=float2(0.0);
float2 l9_4991=float2(0.0);
float2 l9_4992=float2(0.0);
ssGlobals l9_4993=l9_4988;
float2 l9_4994;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_4995=float2(0.0);
float2 l9_4996=float2(0.0);
float2 l9_4997=float2(0.0);
float2 l9_4998=float2(0.0);
float2 l9_4999=float2(0.0);
ssGlobals l9_5000=l9_4993;
float2 l9_5001;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5002=float2(0.0);
l9_5002=l9_5000.Surface_UVCoord0;
l9_4996=l9_5002;
l9_5001=l9_4996;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5003=float2(0.0);
l9_5003=l9_5000.Surface_UVCoord1;
l9_4997=l9_5003;
l9_5001=l9_4997;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5004=float2(0.0);
l9_5004=l9_5000.gScreenCoord;
l9_4998=l9_5004;
l9_5001=l9_4998;
}
else
{
float2 l9_5005=float2(0.0);
l9_5005=l9_5000.Surface_UVCoord0;
l9_4999=l9_5005;
l9_5001=l9_4999;
}
}
}
l9_4995=l9_5001;
float2 l9_5006=float2(0.0);
float2 l9_5007=(*sc_set0.UserUniforms).uv2Scale;
l9_5006=l9_5007;
float2 l9_5008=float2(0.0);
l9_5008=l9_5006;
float2 l9_5009=float2(0.0);
float2 l9_5010=(*sc_set0.UserUniforms).uv2Offset;
l9_5009=l9_5010;
float2 l9_5011=float2(0.0);
l9_5011=l9_5009;
float2 l9_5012=float2(0.0);
l9_5012=(l9_4995*l9_5008)+l9_5011;
float2 l9_5013=float2(0.0);
l9_5013=l9_5012+(l9_5011*(l9_4993.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_4991=l9_5013;
l9_4994=l9_4991;
}
else
{
float2 l9_5014=float2(0.0);
float2 l9_5015=float2(0.0);
float2 l9_5016=float2(0.0);
float2 l9_5017=float2(0.0);
float2 l9_5018=float2(0.0);
ssGlobals l9_5019=l9_4993;
float2 l9_5020;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5021=float2(0.0);
l9_5021=l9_5019.Surface_UVCoord0;
l9_5015=l9_5021;
l9_5020=l9_5015;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5022=float2(0.0);
l9_5022=l9_5019.Surface_UVCoord1;
l9_5016=l9_5022;
l9_5020=l9_5016;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5023=float2(0.0);
l9_5023=l9_5019.gScreenCoord;
l9_5017=l9_5023;
l9_5020=l9_5017;
}
else
{
float2 l9_5024=float2(0.0);
l9_5024=l9_5019.Surface_UVCoord0;
l9_5018=l9_5024;
l9_5020=l9_5018;
}
}
}
l9_5014=l9_5020;
float2 l9_5025=float2(0.0);
float2 l9_5026=(*sc_set0.UserUniforms).uv2Scale;
l9_5025=l9_5026;
float2 l9_5027=float2(0.0);
l9_5027=l9_5025;
float2 l9_5028=float2(0.0);
float2 l9_5029=(*sc_set0.UserUniforms).uv2Offset;
l9_5028=l9_5029;
float2 l9_5030=float2(0.0);
l9_5030=l9_5028;
float2 l9_5031=float2(0.0);
l9_5031=(l9_5014*l9_5027)+l9_5030;
l9_4992=l9_5031;
l9_4994=l9_4992;
}
l9_4990=l9_4994;
l9_4986=l9_4990;
l9_4989=l9_4986;
}
else
{
float2 l9_5032=float2(0.0);
l9_5032=l9_4988.Surface_UVCoord0;
l9_4987=l9_5032;
l9_4989=l9_4987;
}
l9_4985=l9_4989;
float2 l9_5033=float2(0.0);
l9_5033=l9_4985;
float2 l9_5034=float2(0.0);
l9_5034=l9_5033;
l9_4978=l9_5034;
l9_4981=l9_4978;
}
else
{
float2 l9_5035=float2(0.0);
l9_5035=l9_4980.Surface_UVCoord0;
l9_4979=l9_5035;
l9_4981=l9_4979;
}
}
}
}
l9_4974=l9_4981;
float2 l9_5036=float2(0.0);
float2 l9_5037=(*sc_set0.UserUniforms).uv3Scale;
l9_5036=l9_5037;
float2 l9_5038=float2(0.0);
l9_5038=l9_5036;
float2 l9_5039=float2(0.0);
float2 l9_5040=(*sc_set0.UserUniforms).uv3Offset;
l9_5039=l9_5040;
float2 l9_5041=float2(0.0);
l9_5041=l9_5039;
float2 l9_5042=float2(0.0);
l9_5042=(l9_4974*l9_5038)+l9_5041;
float2 l9_5043=float2(0.0);
l9_5043=l9_5042+(l9_5041*(l9_4972.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_4970=l9_5043;
l9_4973=l9_4970;
}
else
{
float2 l9_5044=float2(0.0);
float2 l9_5045=float2(0.0);
float2 l9_5046=float2(0.0);
float2 l9_5047=float2(0.0);
float2 l9_5048=float2(0.0);
float2 l9_5049=float2(0.0);
ssGlobals l9_5050=l9_4972;
float2 l9_5051;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_5052=float2(0.0);
l9_5052=l9_5050.Surface_UVCoord0;
l9_5045=l9_5052;
l9_5051=l9_5045;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_5053=float2(0.0);
l9_5053=l9_5050.Surface_UVCoord1;
l9_5046=l9_5053;
l9_5051=l9_5046;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_5054=float2(0.0);
l9_5054=l9_5050.gScreenCoord;
l9_5047=l9_5054;
l9_5051=l9_5047;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_5055=float2(0.0);
float2 l9_5056=float2(0.0);
float2 l9_5057=float2(0.0);
ssGlobals l9_5058=l9_5050;
float2 l9_5059;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5060=float2(0.0);
float2 l9_5061=float2(0.0);
float2 l9_5062=float2(0.0);
ssGlobals l9_5063=l9_5058;
float2 l9_5064;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5065=float2(0.0);
float2 l9_5066=float2(0.0);
float2 l9_5067=float2(0.0);
float2 l9_5068=float2(0.0);
float2 l9_5069=float2(0.0);
ssGlobals l9_5070=l9_5063;
float2 l9_5071;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5072=float2(0.0);
l9_5072=l9_5070.Surface_UVCoord0;
l9_5066=l9_5072;
l9_5071=l9_5066;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5073=float2(0.0);
l9_5073=l9_5070.Surface_UVCoord1;
l9_5067=l9_5073;
l9_5071=l9_5067;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5074=float2(0.0);
l9_5074=l9_5070.gScreenCoord;
l9_5068=l9_5074;
l9_5071=l9_5068;
}
else
{
float2 l9_5075=float2(0.0);
l9_5075=l9_5070.Surface_UVCoord0;
l9_5069=l9_5075;
l9_5071=l9_5069;
}
}
}
l9_5065=l9_5071;
float2 l9_5076=float2(0.0);
float2 l9_5077=(*sc_set0.UserUniforms).uv2Scale;
l9_5076=l9_5077;
float2 l9_5078=float2(0.0);
l9_5078=l9_5076;
float2 l9_5079=float2(0.0);
float2 l9_5080=(*sc_set0.UserUniforms).uv2Offset;
l9_5079=l9_5080;
float2 l9_5081=float2(0.0);
l9_5081=l9_5079;
float2 l9_5082=float2(0.0);
l9_5082=(l9_5065*l9_5078)+l9_5081;
float2 l9_5083=float2(0.0);
l9_5083=l9_5082+(l9_5081*(l9_5063.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5061=l9_5083;
l9_5064=l9_5061;
}
else
{
float2 l9_5084=float2(0.0);
float2 l9_5085=float2(0.0);
float2 l9_5086=float2(0.0);
float2 l9_5087=float2(0.0);
float2 l9_5088=float2(0.0);
ssGlobals l9_5089=l9_5063;
float2 l9_5090;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5091=float2(0.0);
l9_5091=l9_5089.Surface_UVCoord0;
l9_5085=l9_5091;
l9_5090=l9_5085;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5092=float2(0.0);
l9_5092=l9_5089.Surface_UVCoord1;
l9_5086=l9_5092;
l9_5090=l9_5086;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5093=float2(0.0);
l9_5093=l9_5089.gScreenCoord;
l9_5087=l9_5093;
l9_5090=l9_5087;
}
else
{
float2 l9_5094=float2(0.0);
l9_5094=l9_5089.Surface_UVCoord0;
l9_5088=l9_5094;
l9_5090=l9_5088;
}
}
}
l9_5084=l9_5090;
float2 l9_5095=float2(0.0);
float2 l9_5096=(*sc_set0.UserUniforms).uv2Scale;
l9_5095=l9_5096;
float2 l9_5097=float2(0.0);
l9_5097=l9_5095;
float2 l9_5098=float2(0.0);
float2 l9_5099=(*sc_set0.UserUniforms).uv2Offset;
l9_5098=l9_5099;
float2 l9_5100=float2(0.0);
l9_5100=l9_5098;
float2 l9_5101=float2(0.0);
l9_5101=(l9_5084*l9_5097)+l9_5100;
l9_5062=l9_5101;
l9_5064=l9_5062;
}
l9_5060=l9_5064;
l9_5056=l9_5060;
l9_5059=l9_5056;
}
else
{
float2 l9_5102=float2(0.0);
l9_5102=l9_5058.Surface_UVCoord0;
l9_5057=l9_5102;
l9_5059=l9_5057;
}
l9_5055=l9_5059;
float2 l9_5103=float2(0.0);
l9_5103=l9_5055;
float2 l9_5104=float2(0.0);
l9_5104=l9_5103;
l9_5048=l9_5104;
l9_5051=l9_5048;
}
else
{
float2 l9_5105=float2(0.0);
l9_5105=l9_5050.Surface_UVCoord0;
l9_5049=l9_5105;
l9_5051=l9_5049;
}
}
}
}
l9_5044=l9_5051;
float2 l9_5106=float2(0.0);
float2 l9_5107=(*sc_set0.UserUniforms).uv3Scale;
l9_5106=l9_5107;
float2 l9_5108=float2(0.0);
l9_5108=l9_5106;
float2 l9_5109=float2(0.0);
float2 l9_5110=(*sc_set0.UserUniforms).uv3Offset;
l9_5109=l9_5110;
float2 l9_5111=float2(0.0);
l9_5111=l9_5109;
float2 l9_5112=float2(0.0);
l9_5112=(l9_5044*l9_5108)+l9_5111;
l9_4971=l9_5112;
l9_4973=l9_4971;
}
l9_4969=l9_4973;
l9_4965=l9_4969;
l9_4968=l9_4965;
}
else
{
float2 l9_5113=float2(0.0);
l9_5113=l9_4967.Surface_UVCoord0;
l9_4966=l9_5113;
l9_4968=l9_4966;
}
l9_4964=l9_4968;
float2 l9_5114=float2(0.0);
l9_5114=l9_4964;
float2 l9_5115=float2(0.0);
l9_5115=l9_5114;
l9_4908=l9_5115;
l9_4911=l9_4908;
}
else
{
float2 l9_5116=float2(0.0);
l9_5116=l9_4910.Surface_UVCoord0;
l9_4909=l9_5116;
l9_4911=l9_4909;
}
}
}
}
l9_4904=l9_4911;
float4 l9_5117=float4(0.0);
float2 l9_5118=l9_4904;
int l9_5119;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_5120=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5120=0;
}
else
{
l9_5120=in.varStereoViewID;
}
int l9_5121=l9_5120;
l9_5119=1-l9_5121;
}
else
{
int l9_5122=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5122=0;
}
else
{
l9_5122=in.varStereoViewID;
}
int l9_5123=l9_5122;
l9_5119=l9_5123;
}
int l9_5124=l9_5119;
int l9_5125=detailNormalTexLayout_tmp;
int l9_5126=l9_5124;
float2 l9_5127=l9_5118;
bool l9_5128=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_5129=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_5130=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_5131=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_5132=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_5133=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_5134=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_5135=0.0;
bool l9_5136=l9_5133&&(!l9_5131);
float l9_5137=1.0;
float l9_5138=l9_5127.x;
int l9_5139=l9_5130.x;
if (l9_5139==1)
{
l9_5138=fract(l9_5138);
}
else
{
if (l9_5139==2)
{
float l9_5140=fract(l9_5138);
float l9_5141=l9_5138-l9_5140;
float l9_5142=step(0.25,fract(l9_5141*0.5));
l9_5138=mix(l9_5140,1.0-l9_5140,fast::clamp(l9_5142,0.0,1.0));
}
}
l9_5127.x=l9_5138;
float l9_5143=l9_5127.y;
int l9_5144=l9_5130.y;
if (l9_5144==1)
{
l9_5143=fract(l9_5143);
}
else
{
if (l9_5144==2)
{
float l9_5145=fract(l9_5143);
float l9_5146=l9_5143-l9_5145;
float l9_5147=step(0.25,fract(l9_5146*0.5));
l9_5143=mix(l9_5145,1.0-l9_5145,fast::clamp(l9_5147,0.0,1.0));
}
}
l9_5127.y=l9_5143;
if (l9_5131)
{
bool l9_5148=l9_5133;
bool l9_5149;
if (l9_5148)
{
l9_5149=l9_5130.x==3;
}
else
{
l9_5149=l9_5148;
}
float l9_5150=l9_5127.x;
float l9_5151=l9_5132.x;
float l9_5152=l9_5132.z;
bool l9_5153=l9_5149;
float l9_5154=l9_5137;
float l9_5155=fast::clamp(l9_5150,l9_5151,l9_5152);
float l9_5156=step(abs(l9_5150-l9_5155),9.9999997e-06);
l9_5154*=(l9_5156+((1.0-float(l9_5153))*(1.0-l9_5156)));
l9_5150=l9_5155;
l9_5127.x=l9_5150;
l9_5137=l9_5154;
bool l9_5157=l9_5133;
bool l9_5158;
if (l9_5157)
{
l9_5158=l9_5130.y==3;
}
else
{
l9_5158=l9_5157;
}
float l9_5159=l9_5127.y;
float l9_5160=l9_5132.y;
float l9_5161=l9_5132.w;
bool l9_5162=l9_5158;
float l9_5163=l9_5137;
float l9_5164=fast::clamp(l9_5159,l9_5160,l9_5161);
float l9_5165=step(abs(l9_5159-l9_5164),9.9999997e-06);
l9_5163*=(l9_5165+((1.0-float(l9_5162))*(1.0-l9_5165)));
l9_5159=l9_5164;
l9_5127.y=l9_5159;
l9_5137=l9_5163;
}
float2 l9_5166=l9_5127;
bool l9_5167=l9_5128;
float3x3 l9_5168=l9_5129;
if (l9_5167)
{
l9_5166=float2((l9_5168*float3(l9_5166,1.0)).xy);
}
float2 l9_5169=l9_5166;
l9_5127=l9_5169;
float l9_5170=l9_5127.x;
int l9_5171=l9_5130.x;
bool l9_5172=l9_5136;
float l9_5173=l9_5137;
if ((l9_5171==0)||(l9_5171==3))
{
float l9_5174=l9_5170;
float l9_5175=0.0;
float l9_5176=1.0;
bool l9_5177=l9_5172;
float l9_5178=l9_5173;
float l9_5179=fast::clamp(l9_5174,l9_5175,l9_5176);
float l9_5180=step(abs(l9_5174-l9_5179),9.9999997e-06);
l9_5178*=(l9_5180+((1.0-float(l9_5177))*(1.0-l9_5180)));
l9_5174=l9_5179;
l9_5170=l9_5174;
l9_5173=l9_5178;
}
l9_5127.x=l9_5170;
l9_5137=l9_5173;
float l9_5181=l9_5127.y;
int l9_5182=l9_5130.y;
bool l9_5183=l9_5136;
float l9_5184=l9_5137;
if ((l9_5182==0)||(l9_5182==3))
{
float l9_5185=l9_5181;
float l9_5186=0.0;
float l9_5187=1.0;
bool l9_5188=l9_5183;
float l9_5189=l9_5184;
float l9_5190=fast::clamp(l9_5185,l9_5186,l9_5187);
float l9_5191=step(abs(l9_5185-l9_5190),9.9999997e-06);
l9_5189*=(l9_5191+((1.0-float(l9_5188))*(1.0-l9_5191)));
l9_5185=l9_5190;
l9_5181=l9_5185;
l9_5184=l9_5189;
}
l9_5127.y=l9_5181;
l9_5137=l9_5184;
float2 l9_5192=l9_5127;
int l9_5193=l9_5125;
int l9_5194=l9_5126;
float l9_5195=l9_5135;
float2 l9_5196=l9_5192;
int l9_5197=l9_5193;
int l9_5198=l9_5194;
float3 l9_5199=float3(0.0);
if (l9_5197==0)
{
l9_5199=float3(l9_5196,0.0);
}
else
{
if (l9_5197==1)
{
l9_5199=float3(l9_5196.x,(l9_5196.y*0.5)+(0.5-(float(l9_5198)*0.5)),0.0);
}
else
{
l9_5199=float3(l9_5196,float(l9_5198));
}
}
float3 l9_5200=l9_5199;
float3 l9_5201=l9_5200;
float4 l9_5202=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_5201.xy,bias(l9_5195));
float4 l9_5203=l9_5202;
if (l9_5133)
{
l9_5203=mix(l9_5134,l9_5203,float4(l9_5137));
}
float4 l9_5204=l9_5203;
float4 l9_5205=l9_5204;
float3 l9_5206=(l9_5205.xyz*1.9921875)-float3(1.0);
l9_5205=float4(l9_5206.x,l9_5206.y,l9_5206.z,l9_5205.w);
l9_5117=l9_5205;
l9_4900=l9_5117.xyz;
l9_4903=l9_4900;
}
else
{
l9_4903=l9_4901;
}
l9_4899=l9_4903;
float3 l9_5207=float3(0.0);
float3 l9_5208=l9_4809.xyz;
float l9_5209=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_5210=l9_4899;
float l9_5211=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_5212=l9_5208;
float l9_5213=l9_5209;
float3 l9_5214=l9_5210;
float l9_5215=l9_5211;
float3 l9_5216=mix(float3(0.0,0.0,1.0),l9_5212,float3(l9_5213))+float3(0.0,0.0,1.0);
float3 l9_5217=mix(float3(0.0,0.0,1.0),l9_5214,float3(l9_5215))*float3(-1.0,-1.0,1.0);
float3 l9_5218=normalize((l9_5216*dot(l9_5216,l9_5217))-(l9_5217*l9_5216.z));
l9_5210=l9_5218;
float3 l9_5219=l9_5210;
l9_5207=l9_5219;
float3 l9_5220=float3(0.0);
l9_5220=l9_4595*l9_5207;
float3 l9_5221=float3(0.0);
float3 l9_5222=l9_5220;
float l9_5223=dot(l9_5222,l9_5222);
float l9_5224;
if (l9_5223>0.0)
{
l9_5224=1.0/sqrt(l9_5223);
}
else
{
l9_5224=0.0;
}
float l9_5225=l9_5224;
float3 l9_5226=l9_5222*l9_5225;
l9_5221=l9_5226;
l9_4588=l9_5221;
l9_4591=l9_4588;
}
else
{
float3 l9_5227=float3(0.0);
l9_5227=l9_4590.VertexNormal_WorldSpace;
float3 l9_5228=float3(0.0);
float3 l9_5229=l9_5227;
float l9_5230=dot(l9_5229,l9_5229);
float l9_5231;
if (l9_5230>0.0)
{
l9_5231=1.0/sqrt(l9_5230);
}
else
{
l9_5231=0.0;
}
float l9_5232=l9_5231;
float3 l9_5233=l9_5229*l9_5232;
l9_5228=l9_5233;
l9_4589=l9_5228;
l9_4591=l9_4589;
}
l9_4587=l9_4591;
float3 l9_5234=float3(0.0);
l9_5234=l9_4587;
float3 l9_5235=float3(0.0);
l9_5235=l9_5234;
float3 l9_5236=float3(0.0);
l9_5236=-l9_4585.ViewDirWS;
float l9_5237=0.0;
l9_5237=dot(l9_5235,l9_5236);
float l9_5238=0.0;
l9_5238=abs(l9_5237);
l9_4583=l9_5238;
l9_4586=l9_4583;
}
else
{
float3 l9_5239=float3(0.0);
float3 l9_5240=float3(0.0);
float3 l9_5241=float3(0.0);
ssGlobals l9_5242=l9_4585;
float3 l9_5243;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_5244=float3(0.0);
l9_5244=l9_5242.VertexTangent_WorldSpace;
float3 l9_5245=float3(0.0);
l9_5245=l9_5242.VertexBinormal_WorldSpace;
float3 l9_5246=float3(0.0);
l9_5246=l9_5242.VertexNormal_WorldSpace;
float3x3 l9_5247=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_5247=float3x3(float3(l9_5244),float3(l9_5245),float3(l9_5246));
float2 l9_5248=float2(0.0);
float2 l9_5249=float2(0.0);
float2 l9_5250=float2(0.0);
float2 l9_5251=float2(0.0);
float2 l9_5252=float2(0.0);
float2 l9_5253=float2(0.0);
ssGlobals l9_5254=l9_5242;
float2 l9_5255;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_5256=float2(0.0);
l9_5256=l9_5254.Surface_UVCoord0;
l9_5249=l9_5256;
l9_5255=l9_5249;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_5257=float2(0.0);
l9_5257=l9_5254.Surface_UVCoord1;
l9_5250=l9_5257;
l9_5255=l9_5250;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_5258=float2(0.0);
float2 l9_5259=float2(0.0);
float2 l9_5260=float2(0.0);
ssGlobals l9_5261=l9_5254;
float2 l9_5262;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5263=float2(0.0);
float2 l9_5264=float2(0.0);
float2 l9_5265=float2(0.0);
ssGlobals l9_5266=l9_5261;
float2 l9_5267;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5268=float2(0.0);
float2 l9_5269=float2(0.0);
float2 l9_5270=float2(0.0);
float2 l9_5271=float2(0.0);
float2 l9_5272=float2(0.0);
ssGlobals l9_5273=l9_5266;
float2 l9_5274;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5275=float2(0.0);
l9_5275=l9_5273.Surface_UVCoord0;
l9_5269=l9_5275;
l9_5274=l9_5269;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5276=float2(0.0);
l9_5276=l9_5273.Surface_UVCoord1;
l9_5270=l9_5276;
l9_5274=l9_5270;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5277=float2(0.0);
l9_5277=l9_5273.gScreenCoord;
l9_5271=l9_5277;
l9_5274=l9_5271;
}
else
{
float2 l9_5278=float2(0.0);
l9_5278=l9_5273.Surface_UVCoord0;
l9_5272=l9_5278;
l9_5274=l9_5272;
}
}
}
l9_5268=l9_5274;
float2 l9_5279=float2(0.0);
float2 l9_5280=(*sc_set0.UserUniforms).uv2Scale;
l9_5279=l9_5280;
float2 l9_5281=float2(0.0);
l9_5281=l9_5279;
float2 l9_5282=float2(0.0);
float2 l9_5283=(*sc_set0.UserUniforms).uv2Offset;
l9_5282=l9_5283;
float2 l9_5284=float2(0.0);
l9_5284=l9_5282;
float2 l9_5285=float2(0.0);
l9_5285=(l9_5268*l9_5281)+l9_5284;
float2 l9_5286=float2(0.0);
l9_5286=l9_5285+(l9_5284*(l9_5266.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5264=l9_5286;
l9_5267=l9_5264;
}
else
{
float2 l9_5287=float2(0.0);
float2 l9_5288=float2(0.0);
float2 l9_5289=float2(0.0);
float2 l9_5290=float2(0.0);
float2 l9_5291=float2(0.0);
ssGlobals l9_5292=l9_5266;
float2 l9_5293;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5294=float2(0.0);
l9_5294=l9_5292.Surface_UVCoord0;
l9_5288=l9_5294;
l9_5293=l9_5288;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5295=float2(0.0);
l9_5295=l9_5292.Surface_UVCoord1;
l9_5289=l9_5295;
l9_5293=l9_5289;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5296=float2(0.0);
l9_5296=l9_5292.gScreenCoord;
l9_5290=l9_5296;
l9_5293=l9_5290;
}
else
{
float2 l9_5297=float2(0.0);
l9_5297=l9_5292.Surface_UVCoord0;
l9_5291=l9_5297;
l9_5293=l9_5291;
}
}
}
l9_5287=l9_5293;
float2 l9_5298=float2(0.0);
float2 l9_5299=(*sc_set0.UserUniforms).uv2Scale;
l9_5298=l9_5299;
float2 l9_5300=float2(0.0);
l9_5300=l9_5298;
float2 l9_5301=float2(0.0);
float2 l9_5302=(*sc_set0.UserUniforms).uv2Offset;
l9_5301=l9_5302;
float2 l9_5303=float2(0.0);
l9_5303=l9_5301;
float2 l9_5304=float2(0.0);
l9_5304=(l9_5287*l9_5300)+l9_5303;
l9_5265=l9_5304;
l9_5267=l9_5265;
}
l9_5263=l9_5267;
l9_5259=l9_5263;
l9_5262=l9_5259;
}
else
{
float2 l9_5305=float2(0.0);
l9_5305=l9_5261.Surface_UVCoord0;
l9_5260=l9_5305;
l9_5262=l9_5260;
}
l9_5258=l9_5262;
float2 l9_5306=float2(0.0);
l9_5306=l9_5258;
float2 l9_5307=float2(0.0);
l9_5307=l9_5306;
l9_5251=l9_5307;
l9_5255=l9_5251;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_5308=float2(0.0);
float2 l9_5309=float2(0.0);
float2 l9_5310=float2(0.0);
ssGlobals l9_5311=l9_5254;
float2 l9_5312;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_5313=float2(0.0);
float2 l9_5314=float2(0.0);
float2 l9_5315=float2(0.0);
ssGlobals l9_5316=l9_5311;
float2 l9_5317;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_5318=float2(0.0);
float2 l9_5319=float2(0.0);
float2 l9_5320=float2(0.0);
float2 l9_5321=float2(0.0);
float2 l9_5322=float2(0.0);
float2 l9_5323=float2(0.0);
ssGlobals l9_5324=l9_5316;
float2 l9_5325;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_5326=float2(0.0);
l9_5326=l9_5324.Surface_UVCoord0;
l9_5319=l9_5326;
l9_5325=l9_5319;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_5327=float2(0.0);
l9_5327=l9_5324.Surface_UVCoord1;
l9_5320=l9_5327;
l9_5325=l9_5320;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_5328=float2(0.0);
l9_5328=l9_5324.gScreenCoord;
l9_5321=l9_5328;
l9_5325=l9_5321;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_5329=float2(0.0);
float2 l9_5330=float2(0.0);
float2 l9_5331=float2(0.0);
ssGlobals l9_5332=l9_5324;
float2 l9_5333;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5334=float2(0.0);
float2 l9_5335=float2(0.0);
float2 l9_5336=float2(0.0);
ssGlobals l9_5337=l9_5332;
float2 l9_5338;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5339=float2(0.0);
float2 l9_5340=float2(0.0);
float2 l9_5341=float2(0.0);
float2 l9_5342=float2(0.0);
float2 l9_5343=float2(0.0);
ssGlobals l9_5344=l9_5337;
float2 l9_5345;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5346=float2(0.0);
l9_5346=l9_5344.Surface_UVCoord0;
l9_5340=l9_5346;
l9_5345=l9_5340;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5347=float2(0.0);
l9_5347=l9_5344.Surface_UVCoord1;
l9_5341=l9_5347;
l9_5345=l9_5341;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5348=float2(0.0);
l9_5348=l9_5344.gScreenCoord;
l9_5342=l9_5348;
l9_5345=l9_5342;
}
else
{
float2 l9_5349=float2(0.0);
l9_5349=l9_5344.Surface_UVCoord0;
l9_5343=l9_5349;
l9_5345=l9_5343;
}
}
}
l9_5339=l9_5345;
float2 l9_5350=float2(0.0);
float2 l9_5351=(*sc_set0.UserUniforms).uv2Scale;
l9_5350=l9_5351;
float2 l9_5352=float2(0.0);
l9_5352=l9_5350;
float2 l9_5353=float2(0.0);
float2 l9_5354=(*sc_set0.UserUniforms).uv2Offset;
l9_5353=l9_5354;
float2 l9_5355=float2(0.0);
l9_5355=l9_5353;
float2 l9_5356=float2(0.0);
l9_5356=(l9_5339*l9_5352)+l9_5355;
float2 l9_5357=float2(0.0);
l9_5357=l9_5356+(l9_5355*(l9_5337.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5335=l9_5357;
l9_5338=l9_5335;
}
else
{
float2 l9_5358=float2(0.0);
float2 l9_5359=float2(0.0);
float2 l9_5360=float2(0.0);
float2 l9_5361=float2(0.0);
float2 l9_5362=float2(0.0);
ssGlobals l9_5363=l9_5337;
float2 l9_5364;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5365=float2(0.0);
l9_5365=l9_5363.Surface_UVCoord0;
l9_5359=l9_5365;
l9_5364=l9_5359;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5366=float2(0.0);
l9_5366=l9_5363.Surface_UVCoord1;
l9_5360=l9_5366;
l9_5364=l9_5360;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5367=float2(0.0);
l9_5367=l9_5363.gScreenCoord;
l9_5361=l9_5367;
l9_5364=l9_5361;
}
else
{
float2 l9_5368=float2(0.0);
l9_5368=l9_5363.Surface_UVCoord0;
l9_5362=l9_5368;
l9_5364=l9_5362;
}
}
}
l9_5358=l9_5364;
float2 l9_5369=float2(0.0);
float2 l9_5370=(*sc_set0.UserUniforms).uv2Scale;
l9_5369=l9_5370;
float2 l9_5371=float2(0.0);
l9_5371=l9_5369;
float2 l9_5372=float2(0.0);
float2 l9_5373=(*sc_set0.UserUniforms).uv2Offset;
l9_5372=l9_5373;
float2 l9_5374=float2(0.0);
l9_5374=l9_5372;
float2 l9_5375=float2(0.0);
l9_5375=(l9_5358*l9_5371)+l9_5374;
l9_5336=l9_5375;
l9_5338=l9_5336;
}
l9_5334=l9_5338;
l9_5330=l9_5334;
l9_5333=l9_5330;
}
else
{
float2 l9_5376=float2(0.0);
l9_5376=l9_5332.Surface_UVCoord0;
l9_5331=l9_5376;
l9_5333=l9_5331;
}
l9_5329=l9_5333;
float2 l9_5377=float2(0.0);
l9_5377=l9_5329;
float2 l9_5378=float2(0.0);
l9_5378=l9_5377;
l9_5322=l9_5378;
l9_5325=l9_5322;
}
else
{
float2 l9_5379=float2(0.0);
l9_5379=l9_5324.Surface_UVCoord0;
l9_5323=l9_5379;
l9_5325=l9_5323;
}
}
}
}
l9_5318=l9_5325;
float2 l9_5380=float2(0.0);
float2 l9_5381=(*sc_set0.UserUniforms).uv3Scale;
l9_5380=l9_5381;
float2 l9_5382=float2(0.0);
l9_5382=l9_5380;
float2 l9_5383=float2(0.0);
float2 l9_5384=(*sc_set0.UserUniforms).uv3Offset;
l9_5383=l9_5384;
float2 l9_5385=float2(0.0);
l9_5385=l9_5383;
float2 l9_5386=float2(0.0);
l9_5386=(l9_5318*l9_5382)+l9_5385;
float2 l9_5387=float2(0.0);
l9_5387=l9_5386+(l9_5385*(l9_5316.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_5314=l9_5387;
l9_5317=l9_5314;
}
else
{
float2 l9_5388=float2(0.0);
float2 l9_5389=float2(0.0);
float2 l9_5390=float2(0.0);
float2 l9_5391=float2(0.0);
float2 l9_5392=float2(0.0);
float2 l9_5393=float2(0.0);
ssGlobals l9_5394=l9_5316;
float2 l9_5395;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_5396=float2(0.0);
l9_5396=l9_5394.Surface_UVCoord0;
l9_5389=l9_5396;
l9_5395=l9_5389;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_5397=float2(0.0);
l9_5397=l9_5394.Surface_UVCoord1;
l9_5390=l9_5397;
l9_5395=l9_5390;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_5398=float2(0.0);
l9_5398=l9_5394.gScreenCoord;
l9_5391=l9_5398;
l9_5395=l9_5391;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_5399=float2(0.0);
float2 l9_5400=float2(0.0);
float2 l9_5401=float2(0.0);
ssGlobals l9_5402=l9_5394;
float2 l9_5403;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5404=float2(0.0);
float2 l9_5405=float2(0.0);
float2 l9_5406=float2(0.0);
ssGlobals l9_5407=l9_5402;
float2 l9_5408;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5409=float2(0.0);
float2 l9_5410=float2(0.0);
float2 l9_5411=float2(0.0);
float2 l9_5412=float2(0.0);
float2 l9_5413=float2(0.0);
ssGlobals l9_5414=l9_5407;
float2 l9_5415;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5416=float2(0.0);
l9_5416=l9_5414.Surface_UVCoord0;
l9_5410=l9_5416;
l9_5415=l9_5410;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5417=float2(0.0);
l9_5417=l9_5414.Surface_UVCoord1;
l9_5411=l9_5417;
l9_5415=l9_5411;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5418=float2(0.0);
l9_5418=l9_5414.gScreenCoord;
l9_5412=l9_5418;
l9_5415=l9_5412;
}
else
{
float2 l9_5419=float2(0.0);
l9_5419=l9_5414.Surface_UVCoord0;
l9_5413=l9_5419;
l9_5415=l9_5413;
}
}
}
l9_5409=l9_5415;
float2 l9_5420=float2(0.0);
float2 l9_5421=(*sc_set0.UserUniforms).uv2Scale;
l9_5420=l9_5421;
float2 l9_5422=float2(0.0);
l9_5422=l9_5420;
float2 l9_5423=float2(0.0);
float2 l9_5424=(*sc_set0.UserUniforms).uv2Offset;
l9_5423=l9_5424;
float2 l9_5425=float2(0.0);
l9_5425=l9_5423;
float2 l9_5426=float2(0.0);
l9_5426=(l9_5409*l9_5422)+l9_5425;
float2 l9_5427=float2(0.0);
l9_5427=l9_5426+(l9_5425*(l9_5407.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5405=l9_5427;
l9_5408=l9_5405;
}
else
{
float2 l9_5428=float2(0.0);
float2 l9_5429=float2(0.0);
float2 l9_5430=float2(0.0);
float2 l9_5431=float2(0.0);
float2 l9_5432=float2(0.0);
ssGlobals l9_5433=l9_5407;
float2 l9_5434;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5435=float2(0.0);
l9_5435=l9_5433.Surface_UVCoord0;
l9_5429=l9_5435;
l9_5434=l9_5429;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5436=float2(0.0);
l9_5436=l9_5433.Surface_UVCoord1;
l9_5430=l9_5436;
l9_5434=l9_5430;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5437=float2(0.0);
l9_5437=l9_5433.gScreenCoord;
l9_5431=l9_5437;
l9_5434=l9_5431;
}
else
{
float2 l9_5438=float2(0.0);
l9_5438=l9_5433.Surface_UVCoord0;
l9_5432=l9_5438;
l9_5434=l9_5432;
}
}
}
l9_5428=l9_5434;
float2 l9_5439=float2(0.0);
float2 l9_5440=(*sc_set0.UserUniforms).uv2Scale;
l9_5439=l9_5440;
float2 l9_5441=float2(0.0);
l9_5441=l9_5439;
float2 l9_5442=float2(0.0);
float2 l9_5443=(*sc_set0.UserUniforms).uv2Offset;
l9_5442=l9_5443;
float2 l9_5444=float2(0.0);
l9_5444=l9_5442;
float2 l9_5445=float2(0.0);
l9_5445=(l9_5428*l9_5441)+l9_5444;
l9_5406=l9_5445;
l9_5408=l9_5406;
}
l9_5404=l9_5408;
l9_5400=l9_5404;
l9_5403=l9_5400;
}
else
{
float2 l9_5446=float2(0.0);
l9_5446=l9_5402.Surface_UVCoord0;
l9_5401=l9_5446;
l9_5403=l9_5401;
}
l9_5399=l9_5403;
float2 l9_5447=float2(0.0);
l9_5447=l9_5399;
float2 l9_5448=float2(0.0);
l9_5448=l9_5447;
l9_5392=l9_5448;
l9_5395=l9_5392;
}
else
{
float2 l9_5449=float2(0.0);
l9_5449=l9_5394.Surface_UVCoord0;
l9_5393=l9_5449;
l9_5395=l9_5393;
}
}
}
}
l9_5388=l9_5395;
float2 l9_5450=float2(0.0);
float2 l9_5451=(*sc_set0.UserUniforms).uv3Scale;
l9_5450=l9_5451;
float2 l9_5452=float2(0.0);
l9_5452=l9_5450;
float2 l9_5453=float2(0.0);
float2 l9_5454=(*sc_set0.UserUniforms).uv3Offset;
l9_5453=l9_5454;
float2 l9_5455=float2(0.0);
l9_5455=l9_5453;
float2 l9_5456=float2(0.0);
l9_5456=(l9_5388*l9_5452)+l9_5455;
l9_5315=l9_5456;
l9_5317=l9_5315;
}
l9_5313=l9_5317;
l9_5309=l9_5313;
l9_5312=l9_5309;
}
else
{
float2 l9_5457=float2(0.0);
l9_5457=l9_5311.Surface_UVCoord0;
l9_5310=l9_5457;
l9_5312=l9_5310;
}
l9_5308=l9_5312;
float2 l9_5458=float2(0.0);
l9_5458=l9_5308;
float2 l9_5459=float2(0.0);
l9_5459=l9_5458;
l9_5252=l9_5459;
l9_5255=l9_5252;
}
else
{
float2 l9_5460=float2(0.0);
l9_5460=l9_5254.Surface_UVCoord0;
l9_5253=l9_5460;
l9_5255=l9_5253;
}
}
}
}
l9_5248=l9_5255;
float4 l9_5461=float4(0.0);
float2 l9_5462=l9_5248;
int l9_5463;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_5464=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5464=0;
}
else
{
l9_5464=in.varStereoViewID;
}
int l9_5465=l9_5464;
l9_5463=1-l9_5465;
}
else
{
int l9_5466=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5466=0;
}
else
{
l9_5466=in.varStereoViewID;
}
int l9_5467=l9_5466;
l9_5463=l9_5467;
}
int l9_5468=l9_5463;
int l9_5469=normalTexLayout_tmp;
int l9_5470=l9_5468;
float2 l9_5471=l9_5462;
bool l9_5472=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_5473=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_5474=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_5475=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_5476=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_5477=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_5478=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_5479=0.0;
bool l9_5480=l9_5477&&(!l9_5475);
float l9_5481=1.0;
float l9_5482=l9_5471.x;
int l9_5483=l9_5474.x;
if (l9_5483==1)
{
l9_5482=fract(l9_5482);
}
else
{
if (l9_5483==2)
{
float l9_5484=fract(l9_5482);
float l9_5485=l9_5482-l9_5484;
float l9_5486=step(0.25,fract(l9_5485*0.5));
l9_5482=mix(l9_5484,1.0-l9_5484,fast::clamp(l9_5486,0.0,1.0));
}
}
l9_5471.x=l9_5482;
float l9_5487=l9_5471.y;
int l9_5488=l9_5474.y;
if (l9_5488==1)
{
l9_5487=fract(l9_5487);
}
else
{
if (l9_5488==2)
{
float l9_5489=fract(l9_5487);
float l9_5490=l9_5487-l9_5489;
float l9_5491=step(0.25,fract(l9_5490*0.5));
l9_5487=mix(l9_5489,1.0-l9_5489,fast::clamp(l9_5491,0.0,1.0));
}
}
l9_5471.y=l9_5487;
if (l9_5475)
{
bool l9_5492=l9_5477;
bool l9_5493;
if (l9_5492)
{
l9_5493=l9_5474.x==3;
}
else
{
l9_5493=l9_5492;
}
float l9_5494=l9_5471.x;
float l9_5495=l9_5476.x;
float l9_5496=l9_5476.z;
bool l9_5497=l9_5493;
float l9_5498=l9_5481;
float l9_5499=fast::clamp(l9_5494,l9_5495,l9_5496);
float l9_5500=step(abs(l9_5494-l9_5499),9.9999997e-06);
l9_5498*=(l9_5500+((1.0-float(l9_5497))*(1.0-l9_5500)));
l9_5494=l9_5499;
l9_5471.x=l9_5494;
l9_5481=l9_5498;
bool l9_5501=l9_5477;
bool l9_5502;
if (l9_5501)
{
l9_5502=l9_5474.y==3;
}
else
{
l9_5502=l9_5501;
}
float l9_5503=l9_5471.y;
float l9_5504=l9_5476.y;
float l9_5505=l9_5476.w;
bool l9_5506=l9_5502;
float l9_5507=l9_5481;
float l9_5508=fast::clamp(l9_5503,l9_5504,l9_5505);
float l9_5509=step(abs(l9_5503-l9_5508),9.9999997e-06);
l9_5507*=(l9_5509+((1.0-float(l9_5506))*(1.0-l9_5509)));
l9_5503=l9_5508;
l9_5471.y=l9_5503;
l9_5481=l9_5507;
}
float2 l9_5510=l9_5471;
bool l9_5511=l9_5472;
float3x3 l9_5512=l9_5473;
if (l9_5511)
{
l9_5510=float2((l9_5512*float3(l9_5510,1.0)).xy);
}
float2 l9_5513=l9_5510;
l9_5471=l9_5513;
float l9_5514=l9_5471.x;
int l9_5515=l9_5474.x;
bool l9_5516=l9_5480;
float l9_5517=l9_5481;
if ((l9_5515==0)||(l9_5515==3))
{
float l9_5518=l9_5514;
float l9_5519=0.0;
float l9_5520=1.0;
bool l9_5521=l9_5516;
float l9_5522=l9_5517;
float l9_5523=fast::clamp(l9_5518,l9_5519,l9_5520);
float l9_5524=step(abs(l9_5518-l9_5523),9.9999997e-06);
l9_5522*=(l9_5524+((1.0-float(l9_5521))*(1.0-l9_5524)));
l9_5518=l9_5523;
l9_5514=l9_5518;
l9_5517=l9_5522;
}
l9_5471.x=l9_5514;
l9_5481=l9_5517;
float l9_5525=l9_5471.y;
int l9_5526=l9_5474.y;
bool l9_5527=l9_5480;
float l9_5528=l9_5481;
if ((l9_5526==0)||(l9_5526==3))
{
float l9_5529=l9_5525;
float l9_5530=0.0;
float l9_5531=1.0;
bool l9_5532=l9_5527;
float l9_5533=l9_5528;
float l9_5534=fast::clamp(l9_5529,l9_5530,l9_5531);
float l9_5535=step(abs(l9_5529-l9_5534),9.9999997e-06);
l9_5533*=(l9_5535+((1.0-float(l9_5532))*(1.0-l9_5535)));
l9_5529=l9_5534;
l9_5525=l9_5529;
l9_5528=l9_5533;
}
l9_5471.y=l9_5525;
l9_5481=l9_5528;
float2 l9_5536=l9_5471;
int l9_5537=l9_5469;
int l9_5538=l9_5470;
float l9_5539=l9_5479;
float2 l9_5540=l9_5536;
int l9_5541=l9_5537;
int l9_5542=l9_5538;
float3 l9_5543=float3(0.0);
if (l9_5541==0)
{
l9_5543=float3(l9_5540,0.0);
}
else
{
if (l9_5541==1)
{
l9_5543=float3(l9_5540.x,(l9_5540.y*0.5)+(0.5-(float(l9_5542)*0.5)),0.0);
}
else
{
l9_5543=float3(l9_5540,float(l9_5542));
}
}
float3 l9_5544=l9_5543;
float3 l9_5545=l9_5544;
float4 l9_5546=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_5545.xy,bias(l9_5539));
float4 l9_5547=l9_5546;
if (l9_5477)
{
l9_5547=mix(l9_5478,l9_5547,float4(l9_5481));
}
float4 l9_5548=l9_5547;
float4 l9_5549=l9_5548;
float3 l9_5550=(l9_5549.xyz*1.9921875)-float3(1.0);
l9_5549=float4(l9_5550.x,l9_5550.y,l9_5550.z,l9_5549.w);
l9_5461=l9_5549;
float3 l9_5551=float3(0.0);
float3 l9_5552=float3(0.0);
float3 l9_5553=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_5554=l9_5242;
float3 l9_5555;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_5556=float2(0.0);
float2 l9_5557=float2(0.0);
float2 l9_5558=float2(0.0);
float2 l9_5559=float2(0.0);
float2 l9_5560=float2(0.0);
float2 l9_5561=float2(0.0);
ssGlobals l9_5562=l9_5554;
float2 l9_5563;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_5564=float2(0.0);
l9_5564=l9_5562.Surface_UVCoord0;
l9_5557=l9_5564;
l9_5563=l9_5557;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_5565=float2(0.0);
l9_5565=l9_5562.Surface_UVCoord1;
l9_5558=l9_5565;
l9_5563=l9_5558;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_5566=float2(0.0);
float2 l9_5567=float2(0.0);
float2 l9_5568=float2(0.0);
ssGlobals l9_5569=l9_5562;
float2 l9_5570;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5571=float2(0.0);
float2 l9_5572=float2(0.0);
float2 l9_5573=float2(0.0);
ssGlobals l9_5574=l9_5569;
float2 l9_5575;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5576=float2(0.0);
float2 l9_5577=float2(0.0);
float2 l9_5578=float2(0.0);
float2 l9_5579=float2(0.0);
float2 l9_5580=float2(0.0);
ssGlobals l9_5581=l9_5574;
float2 l9_5582;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5583=float2(0.0);
l9_5583=l9_5581.Surface_UVCoord0;
l9_5577=l9_5583;
l9_5582=l9_5577;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5584=float2(0.0);
l9_5584=l9_5581.Surface_UVCoord1;
l9_5578=l9_5584;
l9_5582=l9_5578;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5585=float2(0.0);
l9_5585=l9_5581.gScreenCoord;
l9_5579=l9_5585;
l9_5582=l9_5579;
}
else
{
float2 l9_5586=float2(0.0);
l9_5586=l9_5581.Surface_UVCoord0;
l9_5580=l9_5586;
l9_5582=l9_5580;
}
}
}
l9_5576=l9_5582;
float2 l9_5587=float2(0.0);
float2 l9_5588=(*sc_set0.UserUniforms).uv2Scale;
l9_5587=l9_5588;
float2 l9_5589=float2(0.0);
l9_5589=l9_5587;
float2 l9_5590=float2(0.0);
float2 l9_5591=(*sc_set0.UserUniforms).uv2Offset;
l9_5590=l9_5591;
float2 l9_5592=float2(0.0);
l9_5592=l9_5590;
float2 l9_5593=float2(0.0);
l9_5593=(l9_5576*l9_5589)+l9_5592;
float2 l9_5594=float2(0.0);
l9_5594=l9_5593+(l9_5592*(l9_5574.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5572=l9_5594;
l9_5575=l9_5572;
}
else
{
float2 l9_5595=float2(0.0);
float2 l9_5596=float2(0.0);
float2 l9_5597=float2(0.0);
float2 l9_5598=float2(0.0);
float2 l9_5599=float2(0.0);
ssGlobals l9_5600=l9_5574;
float2 l9_5601;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5602=float2(0.0);
l9_5602=l9_5600.Surface_UVCoord0;
l9_5596=l9_5602;
l9_5601=l9_5596;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5603=float2(0.0);
l9_5603=l9_5600.Surface_UVCoord1;
l9_5597=l9_5603;
l9_5601=l9_5597;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5604=float2(0.0);
l9_5604=l9_5600.gScreenCoord;
l9_5598=l9_5604;
l9_5601=l9_5598;
}
else
{
float2 l9_5605=float2(0.0);
l9_5605=l9_5600.Surface_UVCoord0;
l9_5599=l9_5605;
l9_5601=l9_5599;
}
}
}
l9_5595=l9_5601;
float2 l9_5606=float2(0.0);
float2 l9_5607=(*sc_set0.UserUniforms).uv2Scale;
l9_5606=l9_5607;
float2 l9_5608=float2(0.0);
l9_5608=l9_5606;
float2 l9_5609=float2(0.0);
float2 l9_5610=(*sc_set0.UserUniforms).uv2Offset;
l9_5609=l9_5610;
float2 l9_5611=float2(0.0);
l9_5611=l9_5609;
float2 l9_5612=float2(0.0);
l9_5612=(l9_5595*l9_5608)+l9_5611;
l9_5573=l9_5612;
l9_5575=l9_5573;
}
l9_5571=l9_5575;
l9_5567=l9_5571;
l9_5570=l9_5567;
}
else
{
float2 l9_5613=float2(0.0);
l9_5613=l9_5569.Surface_UVCoord0;
l9_5568=l9_5613;
l9_5570=l9_5568;
}
l9_5566=l9_5570;
float2 l9_5614=float2(0.0);
l9_5614=l9_5566;
float2 l9_5615=float2(0.0);
l9_5615=l9_5614;
l9_5559=l9_5615;
l9_5563=l9_5559;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_5616=float2(0.0);
float2 l9_5617=float2(0.0);
float2 l9_5618=float2(0.0);
ssGlobals l9_5619=l9_5562;
float2 l9_5620;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_5621=float2(0.0);
float2 l9_5622=float2(0.0);
float2 l9_5623=float2(0.0);
ssGlobals l9_5624=l9_5619;
float2 l9_5625;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_5626=float2(0.0);
float2 l9_5627=float2(0.0);
float2 l9_5628=float2(0.0);
float2 l9_5629=float2(0.0);
float2 l9_5630=float2(0.0);
float2 l9_5631=float2(0.0);
ssGlobals l9_5632=l9_5624;
float2 l9_5633;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_5634=float2(0.0);
l9_5634=l9_5632.Surface_UVCoord0;
l9_5627=l9_5634;
l9_5633=l9_5627;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_5635=float2(0.0);
l9_5635=l9_5632.Surface_UVCoord1;
l9_5628=l9_5635;
l9_5633=l9_5628;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_5636=float2(0.0);
l9_5636=l9_5632.gScreenCoord;
l9_5629=l9_5636;
l9_5633=l9_5629;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_5637=float2(0.0);
float2 l9_5638=float2(0.0);
float2 l9_5639=float2(0.0);
ssGlobals l9_5640=l9_5632;
float2 l9_5641;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5642=float2(0.0);
float2 l9_5643=float2(0.0);
float2 l9_5644=float2(0.0);
ssGlobals l9_5645=l9_5640;
float2 l9_5646;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5647=float2(0.0);
float2 l9_5648=float2(0.0);
float2 l9_5649=float2(0.0);
float2 l9_5650=float2(0.0);
float2 l9_5651=float2(0.0);
ssGlobals l9_5652=l9_5645;
float2 l9_5653;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5654=float2(0.0);
l9_5654=l9_5652.Surface_UVCoord0;
l9_5648=l9_5654;
l9_5653=l9_5648;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5655=float2(0.0);
l9_5655=l9_5652.Surface_UVCoord1;
l9_5649=l9_5655;
l9_5653=l9_5649;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5656=float2(0.0);
l9_5656=l9_5652.gScreenCoord;
l9_5650=l9_5656;
l9_5653=l9_5650;
}
else
{
float2 l9_5657=float2(0.0);
l9_5657=l9_5652.Surface_UVCoord0;
l9_5651=l9_5657;
l9_5653=l9_5651;
}
}
}
l9_5647=l9_5653;
float2 l9_5658=float2(0.0);
float2 l9_5659=(*sc_set0.UserUniforms).uv2Scale;
l9_5658=l9_5659;
float2 l9_5660=float2(0.0);
l9_5660=l9_5658;
float2 l9_5661=float2(0.0);
float2 l9_5662=(*sc_set0.UserUniforms).uv2Offset;
l9_5661=l9_5662;
float2 l9_5663=float2(0.0);
l9_5663=l9_5661;
float2 l9_5664=float2(0.0);
l9_5664=(l9_5647*l9_5660)+l9_5663;
float2 l9_5665=float2(0.0);
l9_5665=l9_5664+(l9_5663*(l9_5645.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5643=l9_5665;
l9_5646=l9_5643;
}
else
{
float2 l9_5666=float2(0.0);
float2 l9_5667=float2(0.0);
float2 l9_5668=float2(0.0);
float2 l9_5669=float2(0.0);
float2 l9_5670=float2(0.0);
ssGlobals l9_5671=l9_5645;
float2 l9_5672;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5673=float2(0.0);
l9_5673=l9_5671.Surface_UVCoord0;
l9_5667=l9_5673;
l9_5672=l9_5667;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5674=float2(0.0);
l9_5674=l9_5671.Surface_UVCoord1;
l9_5668=l9_5674;
l9_5672=l9_5668;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5675=float2(0.0);
l9_5675=l9_5671.gScreenCoord;
l9_5669=l9_5675;
l9_5672=l9_5669;
}
else
{
float2 l9_5676=float2(0.0);
l9_5676=l9_5671.Surface_UVCoord0;
l9_5670=l9_5676;
l9_5672=l9_5670;
}
}
}
l9_5666=l9_5672;
float2 l9_5677=float2(0.0);
float2 l9_5678=(*sc_set0.UserUniforms).uv2Scale;
l9_5677=l9_5678;
float2 l9_5679=float2(0.0);
l9_5679=l9_5677;
float2 l9_5680=float2(0.0);
float2 l9_5681=(*sc_set0.UserUniforms).uv2Offset;
l9_5680=l9_5681;
float2 l9_5682=float2(0.0);
l9_5682=l9_5680;
float2 l9_5683=float2(0.0);
l9_5683=(l9_5666*l9_5679)+l9_5682;
l9_5644=l9_5683;
l9_5646=l9_5644;
}
l9_5642=l9_5646;
l9_5638=l9_5642;
l9_5641=l9_5638;
}
else
{
float2 l9_5684=float2(0.0);
l9_5684=l9_5640.Surface_UVCoord0;
l9_5639=l9_5684;
l9_5641=l9_5639;
}
l9_5637=l9_5641;
float2 l9_5685=float2(0.0);
l9_5685=l9_5637;
float2 l9_5686=float2(0.0);
l9_5686=l9_5685;
l9_5630=l9_5686;
l9_5633=l9_5630;
}
else
{
float2 l9_5687=float2(0.0);
l9_5687=l9_5632.Surface_UVCoord0;
l9_5631=l9_5687;
l9_5633=l9_5631;
}
}
}
}
l9_5626=l9_5633;
float2 l9_5688=float2(0.0);
float2 l9_5689=(*sc_set0.UserUniforms).uv3Scale;
l9_5688=l9_5689;
float2 l9_5690=float2(0.0);
l9_5690=l9_5688;
float2 l9_5691=float2(0.0);
float2 l9_5692=(*sc_set0.UserUniforms).uv3Offset;
l9_5691=l9_5692;
float2 l9_5693=float2(0.0);
l9_5693=l9_5691;
float2 l9_5694=float2(0.0);
l9_5694=(l9_5626*l9_5690)+l9_5693;
float2 l9_5695=float2(0.0);
l9_5695=l9_5694+(l9_5693*(l9_5624.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_5622=l9_5695;
l9_5625=l9_5622;
}
else
{
float2 l9_5696=float2(0.0);
float2 l9_5697=float2(0.0);
float2 l9_5698=float2(0.0);
float2 l9_5699=float2(0.0);
float2 l9_5700=float2(0.0);
float2 l9_5701=float2(0.0);
ssGlobals l9_5702=l9_5624;
float2 l9_5703;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_5704=float2(0.0);
l9_5704=l9_5702.Surface_UVCoord0;
l9_5697=l9_5704;
l9_5703=l9_5697;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_5705=float2(0.0);
l9_5705=l9_5702.Surface_UVCoord1;
l9_5698=l9_5705;
l9_5703=l9_5698;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_5706=float2(0.0);
l9_5706=l9_5702.gScreenCoord;
l9_5699=l9_5706;
l9_5703=l9_5699;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_5707=float2(0.0);
float2 l9_5708=float2(0.0);
float2 l9_5709=float2(0.0);
ssGlobals l9_5710=l9_5702;
float2 l9_5711;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5712=float2(0.0);
float2 l9_5713=float2(0.0);
float2 l9_5714=float2(0.0);
ssGlobals l9_5715=l9_5710;
float2 l9_5716;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5717=float2(0.0);
float2 l9_5718=float2(0.0);
float2 l9_5719=float2(0.0);
float2 l9_5720=float2(0.0);
float2 l9_5721=float2(0.0);
ssGlobals l9_5722=l9_5715;
float2 l9_5723;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5724=float2(0.0);
l9_5724=l9_5722.Surface_UVCoord0;
l9_5718=l9_5724;
l9_5723=l9_5718;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5725=float2(0.0);
l9_5725=l9_5722.Surface_UVCoord1;
l9_5719=l9_5725;
l9_5723=l9_5719;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5726=float2(0.0);
l9_5726=l9_5722.gScreenCoord;
l9_5720=l9_5726;
l9_5723=l9_5720;
}
else
{
float2 l9_5727=float2(0.0);
l9_5727=l9_5722.Surface_UVCoord0;
l9_5721=l9_5727;
l9_5723=l9_5721;
}
}
}
l9_5717=l9_5723;
float2 l9_5728=float2(0.0);
float2 l9_5729=(*sc_set0.UserUniforms).uv2Scale;
l9_5728=l9_5729;
float2 l9_5730=float2(0.0);
l9_5730=l9_5728;
float2 l9_5731=float2(0.0);
float2 l9_5732=(*sc_set0.UserUniforms).uv2Offset;
l9_5731=l9_5732;
float2 l9_5733=float2(0.0);
l9_5733=l9_5731;
float2 l9_5734=float2(0.0);
l9_5734=(l9_5717*l9_5730)+l9_5733;
float2 l9_5735=float2(0.0);
l9_5735=l9_5734+(l9_5733*(l9_5715.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5713=l9_5735;
l9_5716=l9_5713;
}
else
{
float2 l9_5736=float2(0.0);
float2 l9_5737=float2(0.0);
float2 l9_5738=float2(0.0);
float2 l9_5739=float2(0.0);
float2 l9_5740=float2(0.0);
ssGlobals l9_5741=l9_5715;
float2 l9_5742;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5743=float2(0.0);
l9_5743=l9_5741.Surface_UVCoord0;
l9_5737=l9_5743;
l9_5742=l9_5737;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5744=float2(0.0);
l9_5744=l9_5741.Surface_UVCoord1;
l9_5738=l9_5744;
l9_5742=l9_5738;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5745=float2(0.0);
l9_5745=l9_5741.gScreenCoord;
l9_5739=l9_5745;
l9_5742=l9_5739;
}
else
{
float2 l9_5746=float2(0.0);
l9_5746=l9_5741.Surface_UVCoord0;
l9_5740=l9_5746;
l9_5742=l9_5740;
}
}
}
l9_5736=l9_5742;
float2 l9_5747=float2(0.0);
float2 l9_5748=(*sc_set0.UserUniforms).uv2Scale;
l9_5747=l9_5748;
float2 l9_5749=float2(0.0);
l9_5749=l9_5747;
float2 l9_5750=float2(0.0);
float2 l9_5751=(*sc_set0.UserUniforms).uv2Offset;
l9_5750=l9_5751;
float2 l9_5752=float2(0.0);
l9_5752=l9_5750;
float2 l9_5753=float2(0.0);
l9_5753=(l9_5736*l9_5749)+l9_5752;
l9_5714=l9_5753;
l9_5716=l9_5714;
}
l9_5712=l9_5716;
l9_5708=l9_5712;
l9_5711=l9_5708;
}
else
{
float2 l9_5754=float2(0.0);
l9_5754=l9_5710.Surface_UVCoord0;
l9_5709=l9_5754;
l9_5711=l9_5709;
}
l9_5707=l9_5711;
float2 l9_5755=float2(0.0);
l9_5755=l9_5707;
float2 l9_5756=float2(0.0);
l9_5756=l9_5755;
l9_5700=l9_5756;
l9_5703=l9_5700;
}
else
{
float2 l9_5757=float2(0.0);
l9_5757=l9_5702.Surface_UVCoord0;
l9_5701=l9_5757;
l9_5703=l9_5701;
}
}
}
}
l9_5696=l9_5703;
float2 l9_5758=float2(0.0);
float2 l9_5759=(*sc_set0.UserUniforms).uv3Scale;
l9_5758=l9_5759;
float2 l9_5760=float2(0.0);
l9_5760=l9_5758;
float2 l9_5761=float2(0.0);
float2 l9_5762=(*sc_set0.UserUniforms).uv3Offset;
l9_5761=l9_5762;
float2 l9_5763=float2(0.0);
l9_5763=l9_5761;
float2 l9_5764=float2(0.0);
l9_5764=(l9_5696*l9_5760)+l9_5763;
l9_5623=l9_5764;
l9_5625=l9_5623;
}
l9_5621=l9_5625;
l9_5617=l9_5621;
l9_5620=l9_5617;
}
else
{
float2 l9_5765=float2(0.0);
l9_5765=l9_5619.Surface_UVCoord0;
l9_5618=l9_5765;
l9_5620=l9_5618;
}
l9_5616=l9_5620;
float2 l9_5766=float2(0.0);
l9_5766=l9_5616;
float2 l9_5767=float2(0.0);
l9_5767=l9_5766;
l9_5560=l9_5767;
l9_5563=l9_5560;
}
else
{
float2 l9_5768=float2(0.0);
l9_5768=l9_5562.Surface_UVCoord0;
l9_5561=l9_5768;
l9_5563=l9_5561;
}
}
}
}
l9_5556=l9_5563;
float4 l9_5769=float4(0.0);
float2 l9_5770=l9_5556;
int l9_5771;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_5772=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5772=0;
}
else
{
l9_5772=in.varStereoViewID;
}
int l9_5773=l9_5772;
l9_5771=1-l9_5773;
}
else
{
int l9_5774=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5774=0;
}
else
{
l9_5774=in.varStereoViewID;
}
int l9_5775=l9_5774;
l9_5771=l9_5775;
}
int l9_5776=l9_5771;
int l9_5777=detailNormalTexLayout_tmp;
int l9_5778=l9_5776;
float2 l9_5779=l9_5770;
bool l9_5780=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_5781=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_5782=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_5783=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_5784=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_5785=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_5786=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_5787=0.0;
bool l9_5788=l9_5785&&(!l9_5783);
float l9_5789=1.0;
float l9_5790=l9_5779.x;
int l9_5791=l9_5782.x;
if (l9_5791==1)
{
l9_5790=fract(l9_5790);
}
else
{
if (l9_5791==2)
{
float l9_5792=fract(l9_5790);
float l9_5793=l9_5790-l9_5792;
float l9_5794=step(0.25,fract(l9_5793*0.5));
l9_5790=mix(l9_5792,1.0-l9_5792,fast::clamp(l9_5794,0.0,1.0));
}
}
l9_5779.x=l9_5790;
float l9_5795=l9_5779.y;
int l9_5796=l9_5782.y;
if (l9_5796==1)
{
l9_5795=fract(l9_5795);
}
else
{
if (l9_5796==2)
{
float l9_5797=fract(l9_5795);
float l9_5798=l9_5795-l9_5797;
float l9_5799=step(0.25,fract(l9_5798*0.5));
l9_5795=mix(l9_5797,1.0-l9_5797,fast::clamp(l9_5799,0.0,1.0));
}
}
l9_5779.y=l9_5795;
if (l9_5783)
{
bool l9_5800=l9_5785;
bool l9_5801;
if (l9_5800)
{
l9_5801=l9_5782.x==3;
}
else
{
l9_5801=l9_5800;
}
float l9_5802=l9_5779.x;
float l9_5803=l9_5784.x;
float l9_5804=l9_5784.z;
bool l9_5805=l9_5801;
float l9_5806=l9_5789;
float l9_5807=fast::clamp(l9_5802,l9_5803,l9_5804);
float l9_5808=step(abs(l9_5802-l9_5807),9.9999997e-06);
l9_5806*=(l9_5808+((1.0-float(l9_5805))*(1.0-l9_5808)));
l9_5802=l9_5807;
l9_5779.x=l9_5802;
l9_5789=l9_5806;
bool l9_5809=l9_5785;
bool l9_5810;
if (l9_5809)
{
l9_5810=l9_5782.y==3;
}
else
{
l9_5810=l9_5809;
}
float l9_5811=l9_5779.y;
float l9_5812=l9_5784.y;
float l9_5813=l9_5784.w;
bool l9_5814=l9_5810;
float l9_5815=l9_5789;
float l9_5816=fast::clamp(l9_5811,l9_5812,l9_5813);
float l9_5817=step(abs(l9_5811-l9_5816),9.9999997e-06);
l9_5815*=(l9_5817+((1.0-float(l9_5814))*(1.0-l9_5817)));
l9_5811=l9_5816;
l9_5779.y=l9_5811;
l9_5789=l9_5815;
}
float2 l9_5818=l9_5779;
bool l9_5819=l9_5780;
float3x3 l9_5820=l9_5781;
if (l9_5819)
{
l9_5818=float2((l9_5820*float3(l9_5818,1.0)).xy);
}
float2 l9_5821=l9_5818;
l9_5779=l9_5821;
float l9_5822=l9_5779.x;
int l9_5823=l9_5782.x;
bool l9_5824=l9_5788;
float l9_5825=l9_5789;
if ((l9_5823==0)||(l9_5823==3))
{
float l9_5826=l9_5822;
float l9_5827=0.0;
float l9_5828=1.0;
bool l9_5829=l9_5824;
float l9_5830=l9_5825;
float l9_5831=fast::clamp(l9_5826,l9_5827,l9_5828);
float l9_5832=step(abs(l9_5826-l9_5831),9.9999997e-06);
l9_5830*=(l9_5832+((1.0-float(l9_5829))*(1.0-l9_5832)));
l9_5826=l9_5831;
l9_5822=l9_5826;
l9_5825=l9_5830;
}
l9_5779.x=l9_5822;
l9_5789=l9_5825;
float l9_5833=l9_5779.y;
int l9_5834=l9_5782.y;
bool l9_5835=l9_5788;
float l9_5836=l9_5789;
if ((l9_5834==0)||(l9_5834==3))
{
float l9_5837=l9_5833;
float l9_5838=0.0;
float l9_5839=1.0;
bool l9_5840=l9_5835;
float l9_5841=l9_5836;
float l9_5842=fast::clamp(l9_5837,l9_5838,l9_5839);
float l9_5843=step(abs(l9_5837-l9_5842),9.9999997e-06);
l9_5841*=(l9_5843+((1.0-float(l9_5840))*(1.0-l9_5843)));
l9_5837=l9_5842;
l9_5833=l9_5837;
l9_5836=l9_5841;
}
l9_5779.y=l9_5833;
l9_5789=l9_5836;
float2 l9_5844=l9_5779;
int l9_5845=l9_5777;
int l9_5846=l9_5778;
float l9_5847=l9_5787;
float2 l9_5848=l9_5844;
int l9_5849=l9_5845;
int l9_5850=l9_5846;
float3 l9_5851=float3(0.0);
if (l9_5849==0)
{
l9_5851=float3(l9_5848,0.0);
}
else
{
if (l9_5849==1)
{
l9_5851=float3(l9_5848.x,(l9_5848.y*0.5)+(0.5-(float(l9_5850)*0.5)),0.0);
}
else
{
l9_5851=float3(l9_5848,float(l9_5850));
}
}
float3 l9_5852=l9_5851;
float3 l9_5853=l9_5852;
float4 l9_5854=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_5853.xy,bias(l9_5847));
float4 l9_5855=l9_5854;
if (l9_5785)
{
l9_5855=mix(l9_5786,l9_5855,float4(l9_5789));
}
float4 l9_5856=l9_5855;
float4 l9_5857=l9_5856;
float3 l9_5858=(l9_5857.xyz*1.9921875)-float3(1.0);
l9_5857=float4(l9_5858.x,l9_5858.y,l9_5858.z,l9_5857.w);
l9_5769=l9_5857;
l9_5552=l9_5769.xyz;
l9_5555=l9_5552;
}
else
{
l9_5555=l9_5553;
}
l9_5551=l9_5555;
float3 l9_5859=float3(0.0);
float3 l9_5860=l9_5461.xyz;
float l9_5861=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_5862=l9_5551;
float l9_5863=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_5864=l9_5860;
float l9_5865=l9_5861;
float3 l9_5866=l9_5862;
float l9_5867=l9_5863;
float3 l9_5868=mix(float3(0.0,0.0,1.0),l9_5864,float3(l9_5865))+float3(0.0,0.0,1.0);
float3 l9_5869=mix(float3(0.0,0.0,1.0),l9_5866,float3(l9_5867))*float3(-1.0,-1.0,1.0);
float3 l9_5870=normalize((l9_5868*dot(l9_5868,l9_5869))-(l9_5869*l9_5868.z));
l9_5862=l9_5870;
float3 l9_5871=l9_5862;
l9_5859=l9_5871;
float3 l9_5872=float3(0.0);
l9_5872=l9_5247*l9_5859;
float3 l9_5873=float3(0.0);
float3 l9_5874=l9_5872;
float l9_5875=dot(l9_5874,l9_5874);
float l9_5876;
if (l9_5875>0.0)
{
l9_5876=1.0/sqrt(l9_5875);
}
else
{
l9_5876=0.0;
}
float l9_5877=l9_5876;
float3 l9_5878=l9_5874*l9_5877;
l9_5873=l9_5878;
l9_5240=l9_5873;
l9_5243=l9_5240;
}
else
{
float3 l9_5879=float3(0.0);
l9_5879=l9_5242.VertexNormal_WorldSpace;
float3 l9_5880=float3(0.0);
float3 l9_5881=l9_5879;
float l9_5882=dot(l9_5881,l9_5881);
float l9_5883;
if (l9_5882>0.0)
{
l9_5883=1.0/sqrt(l9_5882);
}
else
{
l9_5883=0.0;
}
float l9_5884=l9_5883;
float3 l9_5885=l9_5881*l9_5884;
l9_5880=l9_5885;
l9_5241=l9_5880;
l9_5243=l9_5241;
}
l9_5239=l9_5243;
float3 l9_5886=float3(0.0);
l9_5886=l9_5239;
float3 l9_5887=float3(0.0);
l9_5887=l9_5886;
float3 l9_5888=float3(0.0);
l9_5888=-l9_4585.ViewDirWS;
float l9_5889=0.0;
l9_5889=dot(l9_5887,l9_5888);
float l9_5890=0.0;
l9_5890=abs(l9_5889);
float l9_5891=0.0;
l9_5891=1.0-l9_5890;
l9_4584=l9_5891;
l9_4586=l9_4584;
}
l9_4582=l9_4586;
float l9_5892=0.0;
float l9_5893=(*sc_set0.UserUniforms).rimExponent;
l9_5892=l9_5893;
float l9_5894=0.0;
l9_5894=l9_5892;
float l9_5895=0.0;
float l9_5896;
if (l9_4582<=0.0)
{
l9_5896=0.0;
}
else
{
l9_5896=pow(l9_4582,l9_5894);
}
l9_5895=l9_5896;
float3 l9_5897=float3(0.0);
l9_5897=l9_4578*float3(l9_5895);
param_30=l9_5897;
param_32=param_30;
}
else
{
param_32=param_31;
}
Result_N173=param_32;
float3 Export_N347=float3(0.0);
Export_N347=Result_N173;
float3 Value_N306=float3(0.0);
Value_N306=Export_N347;
float3 Output_N299=float3(0.0);
Output_N299=(Result_N103+Value_N298)+Value_N306;
float3 Output_N251=float3(0.0);
float3 param_34=Output_N299;
float3 l9_5898;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_5898=float3(pow(param_34.x,0.45454544),pow(param_34.y,0.45454544),pow(param_34.z,0.45454544));
}
else
{
l9_5898=sqrt(param_34);
}
float3 l9_5899=l9_5898;
Output_N251=l9_5899;
float3 Export_N300=float3(0.0);
Export_N300=Output_N251;
float Output_N242=0.0;
float param_35=(*sc_set0.UserUniforms).metallic;
Output_N242=param_35;
float Value_N277=0.0;
Value_N277=Output_N242;
float2 Result_N176=float2(0.0);
float2 param_36=float2(0.0);
float2 param_37=float2(0.0);
float2 param_38=float2(0.0);
float2 param_39=float2(0.0);
float2 param_40=float2(0.0);
ssGlobals param_42=Globals;
float2 param_41;
if (NODE_221_DROPLIST_ITEM_tmp==0)
{
float2 l9_5900=float2(0.0);
l9_5900=param_42.Surface_UVCoord0;
param_36=l9_5900;
param_41=param_36;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==1)
{
float2 l9_5901=float2(0.0);
l9_5901=param_42.Surface_UVCoord1;
param_37=l9_5901;
param_41=param_37;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==2)
{
float2 l9_5902=float2(0.0);
float2 l9_5903=float2(0.0);
float2 l9_5904=float2(0.0);
ssGlobals l9_5905=param_42;
float2 l9_5906;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5907=float2(0.0);
float2 l9_5908=float2(0.0);
float2 l9_5909=float2(0.0);
ssGlobals l9_5910=l9_5905;
float2 l9_5911;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5912=float2(0.0);
float2 l9_5913=float2(0.0);
float2 l9_5914=float2(0.0);
float2 l9_5915=float2(0.0);
float2 l9_5916=float2(0.0);
ssGlobals l9_5917=l9_5910;
float2 l9_5918;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5919=float2(0.0);
l9_5919=l9_5917.Surface_UVCoord0;
l9_5913=l9_5919;
l9_5918=l9_5913;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5920=float2(0.0);
l9_5920=l9_5917.Surface_UVCoord1;
l9_5914=l9_5920;
l9_5918=l9_5914;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5921=float2(0.0);
l9_5921=l9_5917.gScreenCoord;
l9_5915=l9_5921;
l9_5918=l9_5915;
}
else
{
float2 l9_5922=float2(0.0);
l9_5922=l9_5917.Surface_UVCoord0;
l9_5916=l9_5922;
l9_5918=l9_5916;
}
}
}
l9_5912=l9_5918;
float2 l9_5923=float2(0.0);
float2 l9_5924=(*sc_set0.UserUniforms).uv2Scale;
l9_5923=l9_5924;
float2 l9_5925=float2(0.0);
l9_5925=l9_5923;
float2 l9_5926=float2(0.0);
float2 l9_5927=(*sc_set0.UserUniforms).uv2Offset;
l9_5926=l9_5927;
float2 l9_5928=float2(0.0);
l9_5928=l9_5926;
float2 l9_5929=float2(0.0);
l9_5929=(l9_5912*l9_5925)+l9_5928;
float2 l9_5930=float2(0.0);
l9_5930=l9_5929+(l9_5928*(l9_5910.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5908=l9_5930;
l9_5911=l9_5908;
}
else
{
float2 l9_5931=float2(0.0);
float2 l9_5932=float2(0.0);
float2 l9_5933=float2(0.0);
float2 l9_5934=float2(0.0);
float2 l9_5935=float2(0.0);
ssGlobals l9_5936=l9_5910;
float2 l9_5937;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5938=float2(0.0);
l9_5938=l9_5936.Surface_UVCoord0;
l9_5932=l9_5938;
l9_5937=l9_5932;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5939=float2(0.0);
l9_5939=l9_5936.Surface_UVCoord1;
l9_5933=l9_5939;
l9_5937=l9_5933;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5940=float2(0.0);
l9_5940=l9_5936.gScreenCoord;
l9_5934=l9_5940;
l9_5937=l9_5934;
}
else
{
float2 l9_5941=float2(0.0);
l9_5941=l9_5936.Surface_UVCoord0;
l9_5935=l9_5941;
l9_5937=l9_5935;
}
}
}
l9_5931=l9_5937;
float2 l9_5942=float2(0.0);
float2 l9_5943=(*sc_set0.UserUniforms).uv2Scale;
l9_5942=l9_5943;
float2 l9_5944=float2(0.0);
l9_5944=l9_5942;
float2 l9_5945=float2(0.0);
float2 l9_5946=(*sc_set0.UserUniforms).uv2Offset;
l9_5945=l9_5946;
float2 l9_5947=float2(0.0);
l9_5947=l9_5945;
float2 l9_5948=float2(0.0);
l9_5948=(l9_5931*l9_5944)+l9_5947;
l9_5909=l9_5948;
l9_5911=l9_5909;
}
l9_5907=l9_5911;
l9_5903=l9_5907;
l9_5906=l9_5903;
}
else
{
float2 l9_5949=float2(0.0);
l9_5949=l9_5905.Surface_UVCoord0;
l9_5904=l9_5949;
l9_5906=l9_5904;
}
l9_5902=l9_5906;
float2 l9_5950=float2(0.0);
l9_5950=l9_5902;
float2 l9_5951=float2(0.0);
l9_5951=l9_5950;
param_38=l9_5951;
param_41=param_38;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==3)
{
float2 l9_5952=float2(0.0);
float2 l9_5953=float2(0.0);
float2 l9_5954=float2(0.0);
ssGlobals l9_5955=param_42;
float2 l9_5956;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_5957=float2(0.0);
float2 l9_5958=float2(0.0);
float2 l9_5959=float2(0.0);
ssGlobals l9_5960=l9_5955;
float2 l9_5961;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_5962=float2(0.0);
float2 l9_5963=float2(0.0);
float2 l9_5964=float2(0.0);
float2 l9_5965=float2(0.0);
float2 l9_5966=float2(0.0);
float2 l9_5967=float2(0.0);
ssGlobals l9_5968=l9_5960;
float2 l9_5969;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_5970=float2(0.0);
l9_5970=l9_5968.Surface_UVCoord0;
l9_5963=l9_5970;
l9_5969=l9_5963;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_5971=float2(0.0);
l9_5971=l9_5968.Surface_UVCoord1;
l9_5964=l9_5971;
l9_5969=l9_5964;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_5972=float2(0.0);
l9_5972=l9_5968.gScreenCoord;
l9_5965=l9_5972;
l9_5969=l9_5965;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_5973=float2(0.0);
float2 l9_5974=float2(0.0);
float2 l9_5975=float2(0.0);
ssGlobals l9_5976=l9_5968;
float2 l9_5977;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_5978=float2(0.0);
float2 l9_5979=float2(0.0);
float2 l9_5980=float2(0.0);
ssGlobals l9_5981=l9_5976;
float2 l9_5982;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_5983=float2(0.0);
float2 l9_5984=float2(0.0);
float2 l9_5985=float2(0.0);
float2 l9_5986=float2(0.0);
float2 l9_5987=float2(0.0);
ssGlobals l9_5988=l9_5981;
float2 l9_5989;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_5990=float2(0.0);
l9_5990=l9_5988.Surface_UVCoord0;
l9_5984=l9_5990;
l9_5989=l9_5984;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_5991=float2(0.0);
l9_5991=l9_5988.Surface_UVCoord1;
l9_5985=l9_5991;
l9_5989=l9_5985;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_5992=float2(0.0);
l9_5992=l9_5988.gScreenCoord;
l9_5986=l9_5992;
l9_5989=l9_5986;
}
else
{
float2 l9_5993=float2(0.0);
l9_5993=l9_5988.Surface_UVCoord0;
l9_5987=l9_5993;
l9_5989=l9_5987;
}
}
}
l9_5983=l9_5989;
float2 l9_5994=float2(0.0);
float2 l9_5995=(*sc_set0.UserUniforms).uv2Scale;
l9_5994=l9_5995;
float2 l9_5996=float2(0.0);
l9_5996=l9_5994;
float2 l9_5997=float2(0.0);
float2 l9_5998=(*sc_set0.UserUniforms).uv2Offset;
l9_5997=l9_5998;
float2 l9_5999=float2(0.0);
l9_5999=l9_5997;
float2 l9_6000=float2(0.0);
l9_6000=(l9_5983*l9_5996)+l9_5999;
float2 l9_6001=float2(0.0);
l9_6001=l9_6000+(l9_5999*(l9_5981.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_5979=l9_6001;
l9_5982=l9_5979;
}
else
{
float2 l9_6002=float2(0.0);
float2 l9_6003=float2(0.0);
float2 l9_6004=float2(0.0);
float2 l9_6005=float2(0.0);
float2 l9_6006=float2(0.0);
ssGlobals l9_6007=l9_5981;
float2 l9_6008;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6009=float2(0.0);
l9_6009=l9_6007.Surface_UVCoord0;
l9_6003=l9_6009;
l9_6008=l9_6003;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6010=float2(0.0);
l9_6010=l9_6007.Surface_UVCoord1;
l9_6004=l9_6010;
l9_6008=l9_6004;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6011=float2(0.0);
l9_6011=l9_6007.gScreenCoord;
l9_6005=l9_6011;
l9_6008=l9_6005;
}
else
{
float2 l9_6012=float2(0.0);
l9_6012=l9_6007.Surface_UVCoord0;
l9_6006=l9_6012;
l9_6008=l9_6006;
}
}
}
l9_6002=l9_6008;
float2 l9_6013=float2(0.0);
float2 l9_6014=(*sc_set0.UserUniforms).uv2Scale;
l9_6013=l9_6014;
float2 l9_6015=float2(0.0);
l9_6015=l9_6013;
float2 l9_6016=float2(0.0);
float2 l9_6017=(*sc_set0.UserUniforms).uv2Offset;
l9_6016=l9_6017;
float2 l9_6018=float2(0.0);
l9_6018=l9_6016;
float2 l9_6019=float2(0.0);
l9_6019=(l9_6002*l9_6015)+l9_6018;
l9_5980=l9_6019;
l9_5982=l9_5980;
}
l9_5978=l9_5982;
l9_5974=l9_5978;
l9_5977=l9_5974;
}
else
{
float2 l9_6020=float2(0.0);
l9_6020=l9_5976.Surface_UVCoord0;
l9_5975=l9_6020;
l9_5977=l9_5975;
}
l9_5973=l9_5977;
float2 l9_6021=float2(0.0);
l9_6021=l9_5973;
float2 l9_6022=float2(0.0);
l9_6022=l9_6021;
l9_5966=l9_6022;
l9_5969=l9_5966;
}
else
{
float2 l9_6023=float2(0.0);
l9_6023=l9_5968.Surface_UVCoord0;
l9_5967=l9_6023;
l9_5969=l9_5967;
}
}
}
}
l9_5962=l9_5969;
float2 l9_6024=float2(0.0);
float2 l9_6025=(*sc_set0.UserUniforms).uv3Scale;
l9_6024=l9_6025;
float2 l9_6026=float2(0.0);
l9_6026=l9_6024;
float2 l9_6027=float2(0.0);
float2 l9_6028=(*sc_set0.UserUniforms).uv3Offset;
l9_6027=l9_6028;
float2 l9_6029=float2(0.0);
l9_6029=l9_6027;
float2 l9_6030=float2(0.0);
l9_6030=(l9_5962*l9_6026)+l9_6029;
float2 l9_6031=float2(0.0);
l9_6031=l9_6030+(l9_6029*(l9_5960.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_5958=l9_6031;
l9_5961=l9_5958;
}
else
{
float2 l9_6032=float2(0.0);
float2 l9_6033=float2(0.0);
float2 l9_6034=float2(0.0);
float2 l9_6035=float2(0.0);
float2 l9_6036=float2(0.0);
float2 l9_6037=float2(0.0);
ssGlobals l9_6038=l9_5960;
float2 l9_6039;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_6040=float2(0.0);
l9_6040=l9_6038.Surface_UVCoord0;
l9_6033=l9_6040;
l9_6039=l9_6033;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_6041=float2(0.0);
l9_6041=l9_6038.Surface_UVCoord1;
l9_6034=l9_6041;
l9_6039=l9_6034;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_6042=float2(0.0);
l9_6042=l9_6038.gScreenCoord;
l9_6035=l9_6042;
l9_6039=l9_6035;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_6043=float2(0.0);
float2 l9_6044=float2(0.0);
float2 l9_6045=float2(0.0);
ssGlobals l9_6046=l9_6038;
float2 l9_6047;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6048=float2(0.0);
float2 l9_6049=float2(0.0);
float2 l9_6050=float2(0.0);
ssGlobals l9_6051=l9_6046;
float2 l9_6052;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6053=float2(0.0);
float2 l9_6054=float2(0.0);
float2 l9_6055=float2(0.0);
float2 l9_6056=float2(0.0);
float2 l9_6057=float2(0.0);
ssGlobals l9_6058=l9_6051;
float2 l9_6059;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6060=float2(0.0);
l9_6060=l9_6058.Surface_UVCoord0;
l9_6054=l9_6060;
l9_6059=l9_6054;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6061=float2(0.0);
l9_6061=l9_6058.Surface_UVCoord1;
l9_6055=l9_6061;
l9_6059=l9_6055;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6062=float2(0.0);
l9_6062=l9_6058.gScreenCoord;
l9_6056=l9_6062;
l9_6059=l9_6056;
}
else
{
float2 l9_6063=float2(0.0);
l9_6063=l9_6058.Surface_UVCoord0;
l9_6057=l9_6063;
l9_6059=l9_6057;
}
}
}
l9_6053=l9_6059;
float2 l9_6064=float2(0.0);
float2 l9_6065=(*sc_set0.UserUniforms).uv2Scale;
l9_6064=l9_6065;
float2 l9_6066=float2(0.0);
l9_6066=l9_6064;
float2 l9_6067=float2(0.0);
float2 l9_6068=(*sc_set0.UserUniforms).uv2Offset;
l9_6067=l9_6068;
float2 l9_6069=float2(0.0);
l9_6069=l9_6067;
float2 l9_6070=float2(0.0);
l9_6070=(l9_6053*l9_6066)+l9_6069;
float2 l9_6071=float2(0.0);
l9_6071=l9_6070+(l9_6069*(l9_6051.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6049=l9_6071;
l9_6052=l9_6049;
}
else
{
float2 l9_6072=float2(0.0);
float2 l9_6073=float2(0.0);
float2 l9_6074=float2(0.0);
float2 l9_6075=float2(0.0);
float2 l9_6076=float2(0.0);
ssGlobals l9_6077=l9_6051;
float2 l9_6078;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6079=float2(0.0);
l9_6079=l9_6077.Surface_UVCoord0;
l9_6073=l9_6079;
l9_6078=l9_6073;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6080=float2(0.0);
l9_6080=l9_6077.Surface_UVCoord1;
l9_6074=l9_6080;
l9_6078=l9_6074;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6081=float2(0.0);
l9_6081=l9_6077.gScreenCoord;
l9_6075=l9_6081;
l9_6078=l9_6075;
}
else
{
float2 l9_6082=float2(0.0);
l9_6082=l9_6077.Surface_UVCoord0;
l9_6076=l9_6082;
l9_6078=l9_6076;
}
}
}
l9_6072=l9_6078;
float2 l9_6083=float2(0.0);
float2 l9_6084=(*sc_set0.UserUniforms).uv2Scale;
l9_6083=l9_6084;
float2 l9_6085=float2(0.0);
l9_6085=l9_6083;
float2 l9_6086=float2(0.0);
float2 l9_6087=(*sc_set0.UserUniforms).uv2Offset;
l9_6086=l9_6087;
float2 l9_6088=float2(0.0);
l9_6088=l9_6086;
float2 l9_6089=float2(0.0);
l9_6089=(l9_6072*l9_6085)+l9_6088;
l9_6050=l9_6089;
l9_6052=l9_6050;
}
l9_6048=l9_6052;
l9_6044=l9_6048;
l9_6047=l9_6044;
}
else
{
float2 l9_6090=float2(0.0);
l9_6090=l9_6046.Surface_UVCoord0;
l9_6045=l9_6090;
l9_6047=l9_6045;
}
l9_6043=l9_6047;
float2 l9_6091=float2(0.0);
l9_6091=l9_6043;
float2 l9_6092=float2(0.0);
l9_6092=l9_6091;
l9_6036=l9_6092;
l9_6039=l9_6036;
}
else
{
float2 l9_6093=float2(0.0);
l9_6093=l9_6038.Surface_UVCoord0;
l9_6037=l9_6093;
l9_6039=l9_6037;
}
}
}
}
l9_6032=l9_6039;
float2 l9_6094=float2(0.0);
float2 l9_6095=(*sc_set0.UserUniforms).uv3Scale;
l9_6094=l9_6095;
float2 l9_6096=float2(0.0);
l9_6096=l9_6094;
float2 l9_6097=float2(0.0);
float2 l9_6098=(*sc_set0.UserUniforms).uv3Offset;
l9_6097=l9_6098;
float2 l9_6099=float2(0.0);
l9_6099=l9_6097;
float2 l9_6100=float2(0.0);
l9_6100=(l9_6032*l9_6096)+l9_6099;
l9_5959=l9_6100;
l9_5961=l9_5959;
}
l9_5957=l9_5961;
l9_5953=l9_5957;
l9_5956=l9_5953;
}
else
{
float2 l9_6101=float2(0.0);
l9_6101=l9_5955.Surface_UVCoord0;
l9_5954=l9_6101;
l9_5956=l9_5954;
}
l9_5952=l9_5956;
float2 l9_6102=float2(0.0);
l9_6102=l9_5952;
float2 l9_6103=float2(0.0);
l9_6103=l9_6102;
param_39=l9_6103;
param_41=param_39;
}
else
{
float2 l9_6104=float2(0.0);
l9_6104=param_42.Surface_UVCoord0;
param_40=l9_6104;
param_41=param_40;
}
}
}
}
Result_N176=param_41;
float4 Color_N66=float4(0.0);
int l9_6105;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_6106=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6106=0;
}
else
{
l9_6106=in.varStereoViewID;
}
int l9_6107=l9_6106;
l9_6105=1-l9_6107;
}
else
{
int l9_6108=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6108=0;
}
else
{
l9_6108=in.varStereoViewID;
}
int l9_6109=l9_6108;
l9_6105=l9_6109;
}
int l9_6110=l9_6105;
int param_43=materialParamsTexLayout_tmp;
int param_44=l9_6110;
float2 param_45=Result_N176;
bool param_46=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 param_47=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 param_48=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool param_49=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 param_50=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool param_51=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 param_52=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float param_53=0.0;
bool l9_6111=param_51&&(!param_49);
float l9_6112=1.0;
float l9_6113=param_45.x;
int l9_6114=param_48.x;
if (l9_6114==1)
{
l9_6113=fract(l9_6113);
}
else
{
if (l9_6114==2)
{
float l9_6115=fract(l9_6113);
float l9_6116=l9_6113-l9_6115;
float l9_6117=step(0.25,fract(l9_6116*0.5));
l9_6113=mix(l9_6115,1.0-l9_6115,fast::clamp(l9_6117,0.0,1.0));
}
}
param_45.x=l9_6113;
float l9_6118=param_45.y;
int l9_6119=param_48.y;
if (l9_6119==1)
{
l9_6118=fract(l9_6118);
}
else
{
if (l9_6119==2)
{
float l9_6120=fract(l9_6118);
float l9_6121=l9_6118-l9_6120;
float l9_6122=step(0.25,fract(l9_6121*0.5));
l9_6118=mix(l9_6120,1.0-l9_6120,fast::clamp(l9_6122,0.0,1.0));
}
}
param_45.y=l9_6118;
if (param_49)
{
bool l9_6123=param_51;
bool l9_6124;
if (l9_6123)
{
l9_6124=param_48.x==3;
}
else
{
l9_6124=l9_6123;
}
float l9_6125=param_45.x;
float l9_6126=param_50.x;
float l9_6127=param_50.z;
bool l9_6128=l9_6124;
float l9_6129=l9_6112;
float l9_6130=fast::clamp(l9_6125,l9_6126,l9_6127);
float l9_6131=step(abs(l9_6125-l9_6130),9.9999997e-06);
l9_6129*=(l9_6131+((1.0-float(l9_6128))*(1.0-l9_6131)));
l9_6125=l9_6130;
param_45.x=l9_6125;
l9_6112=l9_6129;
bool l9_6132=param_51;
bool l9_6133;
if (l9_6132)
{
l9_6133=param_48.y==3;
}
else
{
l9_6133=l9_6132;
}
float l9_6134=param_45.y;
float l9_6135=param_50.y;
float l9_6136=param_50.w;
bool l9_6137=l9_6133;
float l9_6138=l9_6112;
float l9_6139=fast::clamp(l9_6134,l9_6135,l9_6136);
float l9_6140=step(abs(l9_6134-l9_6139),9.9999997e-06);
l9_6138*=(l9_6140+((1.0-float(l9_6137))*(1.0-l9_6140)));
l9_6134=l9_6139;
param_45.y=l9_6134;
l9_6112=l9_6138;
}
float2 l9_6141=param_45;
bool l9_6142=param_46;
float3x3 l9_6143=param_47;
if (l9_6142)
{
l9_6141=float2((l9_6143*float3(l9_6141,1.0)).xy);
}
float2 l9_6144=l9_6141;
param_45=l9_6144;
float l9_6145=param_45.x;
int l9_6146=param_48.x;
bool l9_6147=l9_6111;
float l9_6148=l9_6112;
if ((l9_6146==0)||(l9_6146==3))
{
float l9_6149=l9_6145;
float l9_6150=0.0;
float l9_6151=1.0;
bool l9_6152=l9_6147;
float l9_6153=l9_6148;
float l9_6154=fast::clamp(l9_6149,l9_6150,l9_6151);
float l9_6155=step(abs(l9_6149-l9_6154),9.9999997e-06);
l9_6153*=(l9_6155+((1.0-float(l9_6152))*(1.0-l9_6155)));
l9_6149=l9_6154;
l9_6145=l9_6149;
l9_6148=l9_6153;
}
param_45.x=l9_6145;
l9_6112=l9_6148;
float l9_6156=param_45.y;
int l9_6157=param_48.y;
bool l9_6158=l9_6111;
float l9_6159=l9_6112;
if ((l9_6157==0)||(l9_6157==3))
{
float l9_6160=l9_6156;
float l9_6161=0.0;
float l9_6162=1.0;
bool l9_6163=l9_6158;
float l9_6164=l9_6159;
float l9_6165=fast::clamp(l9_6160,l9_6161,l9_6162);
float l9_6166=step(abs(l9_6160-l9_6165),9.9999997e-06);
l9_6164*=(l9_6166+((1.0-float(l9_6163))*(1.0-l9_6166)));
l9_6160=l9_6165;
l9_6156=l9_6160;
l9_6159=l9_6164;
}
param_45.y=l9_6156;
l9_6112=l9_6159;
float2 l9_6167=param_45;
int l9_6168=param_43;
int l9_6169=param_44;
float l9_6170=param_53;
float2 l9_6171=l9_6167;
int l9_6172=l9_6168;
int l9_6173=l9_6169;
float3 l9_6174=float3(0.0);
if (l9_6172==0)
{
l9_6174=float3(l9_6171,0.0);
}
else
{
if (l9_6172==1)
{
l9_6174=float3(l9_6171.x,(l9_6171.y*0.5)+(0.5-(float(l9_6173)*0.5)),0.0);
}
else
{
l9_6174=float3(l9_6171,float(l9_6173));
}
}
float3 l9_6175=l9_6174;
float3 l9_6176=l9_6175;
float4 l9_6177=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_6176.xy,bias(l9_6170));
float4 l9_6178=l9_6177;
if (param_51)
{
l9_6178=mix(param_52,l9_6178,float4(l9_6112));
}
float4 l9_6179=l9_6178;
Color_N66=l9_6179;
float Value1_N304=0.0;
float Value2_N304=0.0;
float2 param_54=Color_N66.xy;
float param_55=param_54.x;
float param_56=param_54.y;
Value1_N304=param_55;
Value2_N304=param_56;
float Output_N317=0.0;
Output_N317=Value_N277*Value1_N304;
float Export_N222=0.0;
Export_N222=Output_N317;
float Output_N243=0.0;
float param_57=(*sc_set0.UserUniforms).roughness;
Output_N243=param_57;
float Value_N278=0.0;
Value_N278=Output_N243;
float Output_N313=0.0;
Output_N313=Value_N278*Value2_N304;
float Export_N224=0.0;
Export_N224=Output_N313;
float3 Result_N188=float3(0.0);
float3 param_58=float3(0.0);
float3 param_59=float3(0.0);
ssGlobals param_61=Globals;
float3 param_60;
if (NODE_38_DROPLIST_ITEM_tmp==3)
{
float4 l9_6180=float4(0.0);
l9_6180=param_61.VertexColor;
float2 l9_6181=float2(0.0);
float2 l9_6182=float2(0.0);
float2 l9_6183=float2(0.0);
float2 l9_6184=float2(0.0);
float2 l9_6185=float2(0.0);
float2 l9_6186=float2(0.0);
ssGlobals l9_6187=param_61;
float2 l9_6188;
if (NODE_221_DROPLIST_ITEM_tmp==0)
{
float2 l9_6189=float2(0.0);
l9_6189=l9_6187.Surface_UVCoord0;
l9_6182=l9_6189;
l9_6188=l9_6182;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==1)
{
float2 l9_6190=float2(0.0);
l9_6190=l9_6187.Surface_UVCoord1;
l9_6183=l9_6190;
l9_6188=l9_6183;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==2)
{
float2 l9_6191=float2(0.0);
float2 l9_6192=float2(0.0);
float2 l9_6193=float2(0.0);
ssGlobals l9_6194=l9_6187;
float2 l9_6195;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6196=float2(0.0);
float2 l9_6197=float2(0.0);
float2 l9_6198=float2(0.0);
ssGlobals l9_6199=l9_6194;
float2 l9_6200;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6201=float2(0.0);
float2 l9_6202=float2(0.0);
float2 l9_6203=float2(0.0);
float2 l9_6204=float2(0.0);
float2 l9_6205=float2(0.0);
ssGlobals l9_6206=l9_6199;
float2 l9_6207;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6208=float2(0.0);
l9_6208=l9_6206.Surface_UVCoord0;
l9_6202=l9_6208;
l9_6207=l9_6202;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6209=float2(0.0);
l9_6209=l9_6206.Surface_UVCoord1;
l9_6203=l9_6209;
l9_6207=l9_6203;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6210=float2(0.0);
l9_6210=l9_6206.gScreenCoord;
l9_6204=l9_6210;
l9_6207=l9_6204;
}
else
{
float2 l9_6211=float2(0.0);
l9_6211=l9_6206.Surface_UVCoord0;
l9_6205=l9_6211;
l9_6207=l9_6205;
}
}
}
l9_6201=l9_6207;
float2 l9_6212=float2(0.0);
float2 l9_6213=(*sc_set0.UserUniforms).uv2Scale;
l9_6212=l9_6213;
float2 l9_6214=float2(0.0);
l9_6214=l9_6212;
float2 l9_6215=float2(0.0);
float2 l9_6216=(*sc_set0.UserUniforms).uv2Offset;
l9_6215=l9_6216;
float2 l9_6217=float2(0.0);
l9_6217=l9_6215;
float2 l9_6218=float2(0.0);
l9_6218=(l9_6201*l9_6214)+l9_6217;
float2 l9_6219=float2(0.0);
l9_6219=l9_6218+(l9_6217*(l9_6199.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6197=l9_6219;
l9_6200=l9_6197;
}
else
{
float2 l9_6220=float2(0.0);
float2 l9_6221=float2(0.0);
float2 l9_6222=float2(0.0);
float2 l9_6223=float2(0.0);
float2 l9_6224=float2(0.0);
ssGlobals l9_6225=l9_6199;
float2 l9_6226;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6227=float2(0.0);
l9_6227=l9_6225.Surface_UVCoord0;
l9_6221=l9_6227;
l9_6226=l9_6221;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6228=float2(0.0);
l9_6228=l9_6225.Surface_UVCoord1;
l9_6222=l9_6228;
l9_6226=l9_6222;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6229=float2(0.0);
l9_6229=l9_6225.gScreenCoord;
l9_6223=l9_6229;
l9_6226=l9_6223;
}
else
{
float2 l9_6230=float2(0.0);
l9_6230=l9_6225.Surface_UVCoord0;
l9_6224=l9_6230;
l9_6226=l9_6224;
}
}
}
l9_6220=l9_6226;
float2 l9_6231=float2(0.0);
float2 l9_6232=(*sc_set0.UserUniforms).uv2Scale;
l9_6231=l9_6232;
float2 l9_6233=float2(0.0);
l9_6233=l9_6231;
float2 l9_6234=float2(0.0);
float2 l9_6235=(*sc_set0.UserUniforms).uv2Offset;
l9_6234=l9_6235;
float2 l9_6236=float2(0.0);
l9_6236=l9_6234;
float2 l9_6237=float2(0.0);
l9_6237=(l9_6220*l9_6233)+l9_6236;
l9_6198=l9_6237;
l9_6200=l9_6198;
}
l9_6196=l9_6200;
l9_6192=l9_6196;
l9_6195=l9_6192;
}
else
{
float2 l9_6238=float2(0.0);
l9_6238=l9_6194.Surface_UVCoord0;
l9_6193=l9_6238;
l9_6195=l9_6193;
}
l9_6191=l9_6195;
float2 l9_6239=float2(0.0);
l9_6239=l9_6191;
float2 l9_6240=float2(0.0);
l9_6240=l9_6239;
l9_6184=l9_6240;
l9_6188=l9_6184;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==3)
{
float2 l9_6241=float2(0.0);
float2 l9_6242=float2(0.0);
float2 l9_6243=float2(0.0);
ssGlobals l9_6244=l9_6187;
float2 l9_6245;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_6246=float2(0.0);
float2 l9_6247=float2(0.0);
float2 l9_6248=float2(0.0);
ssGlobals l9_6249=l9_6244;
float2 l9_6250;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_6251=float2(0.0);
float2 l9_6252=float2(0.0);
float2 l9_6253=float2(0.0);
float2 l9_6254=float2(0.0);
float2 l9_6255=float2(0.0);
float2 l9_6256=float2(0.0);
ssGlobals l9_6257=l9_6249;
float2 l9_6258;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_6259=float2(0.0);
l9_6259=l9_6257.Surface_UVCoord0;
l9_6252=l9_6259;
l9_6258=l9_6252;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_6260=float2(0.0);
l9_6260=l9_6257.Surface_UVCoord1;
l9_6253=l9_6260;
l9_6258=l9_6253;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_6261=float2(0.0);
l9_6261=l9_6257.gScreenCoord;
l9_6254=l9_6261;
l9_6258=l9_6254;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_6262=float2(0.0);
float2 l9_6263=float2(0.0);
float2 l9_6264=float2(0.0);
ssGlobals l9_6265=l9_6257;
float2 l9_6266;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6267=float2(0.0);
float2 l9_6268=float2(0.0);
float2 l9_6269=float2(0.0);
ssGlobals l9_6270=l9_6265;
float2 l9_6271;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6272=float2(0.0);
float2 l9_6273=float2(0.0);
float2 l9_6274=float2(0.0);
float2 l9_6275=float2(0.0);
float2 l9_6276=float2(0.0);
ssGlobals l9_6277=l9_6270;
float2 l9_6278;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6279=float2(0.0);
l9_6279=l9_6277.Surface_UVCoord0;
l9_6273=l9_6279;
l9_6278=l9_6273;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6280=float2(0.0);
l9_6280=l9_6277.Surface_UVCoord1;
l9_6274=l9_6280;
l9_6278=l9_6274;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6281=float2(0.0);
l9_6281=l9_6277.gScreenCoord;
l9_6275=l9_6281;
l9_6278=l9_6275;
}
else
{
float2 l9_6282=float2(0.0);
l9_6282=l9_6277.Surface_UVCoord0;
l9_6276=l9_6282;
l9_6278=l9_6276;
}
}
}
l9_6272=l9_6278;
float2 l9_6283=float2(0.0);
float2 l9_6284=(*sc_set0.UserUniforms).uv2Scale;
l9_6283=l9_6284;
float2 l9_6285=float2(0.0);
l9_6285=l9_6283;
float2 l9_6286=float2(0.0);
float2 l9_6287=(*sc_set0.UserUniforms).uv2Offset;
l9_6286=l9_6287;
float2 l9_6288=float2(0.0);
l9_6288=l9_6286;
float2 l9_6289=float2(0.0);
l9_6289=(l9_6272*l9_6285)+l9_6288;
float2 l9_6290=float2(0.0);
l9_6290=l9_6289+(l9_6288*(l9_6270.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6268=l9_6290;
l9_6271=l9_6268;
}
else
{
float2 l9_6291=float2(0.0);
float2 l9_6292=float2(0.0);
float2 l9_6293=float2(0.0);
float2 l9_6294=float2(0.0);
float2 l9_6295=float2(0.0);
ssGlobals l9_6296=l9_6270;
float2 l9_6297;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6298=float2(0.0);
l9_6298=l9_6296.Surface_UVCoord0;
l9_6292=l9_6298;
l9_6297=l9_6292;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6299=float2(0.0);
l9_6299=l9_6296.Surface_UVCoord1;
l9_6293=l9_6299;
l9_6297=l9_6293;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6300=float2(0.0);
l9_6300=l9_6296.gScreenCoord;
l9_6294=l9_6300;
l9_6297=l9_6294;
}
else
{
float2 l9_6301=float2(0.0);
l9_6301=l9_6296.Surface_UVCoord0;
l9_6295=l9_6301;
l9_6297=l9_6295;
}
}
}
l9_6291=l9_6297;
float2 l9_6302=float2(0.0);
float2 l9_6303=(*sc_set0.UserUniforms).uv2Scale;
l9_6302=l9_6303;
float2 l9_6304=float2(0.0);
l9_6304=l9_6302;
float2 l9_6305=float2(0.0);
float2 l9_6306=(*sc_set0.UserUniforms).uv2Offset;
l9_6305=l9_6306;
float2 l9_6307=float2(0.0);
l9_6307=l9_6305;
float2 l9_6308=float2(0.0);
l9_6308=(l9_6291*l9_6304)+l9_6307;
l9_6269=l9_6308;
l9_6271=l9_6269;
}
l9_6267=l9_6271;
l9_6263=l9_6267;
l9_6266=l9_6263;
}
else
{
float2 l9_6309=float2(0.0);
l9_6309=l9_6265.Surface_UVCoord0;
l9_6264=l9_6309;
l9_6266=l9_6264;
}
l9_6262=l9_6266;
float2 l9_6310=float2(0.0);
l9_6310=l9_6262;
float2 l9_6311=float2(0.0);
l9_6311=l9_6310;
l9_6255=l9_6311;
l9_6258=l9_6255;
}
else
{
float2 l9_6312=float2(0.0);
l9_6312=l9_6257.Surface_UVCoord0;
l9_6256=l9_6312;
l9_6258=l9_6256;
}
}
}
}
l9_6251=l9_6258;
float2 l9_6313=float2(0.0);
float2 l9_6314=(*sc_set0.UserUniforms).uv3Scale;
l9_6313=l9_6314;
float2 l9_6315=float2(0.0);
l9_6315=l9_6313;
float2 l9_6316=float2(0.0);
float2 l9_6317=(*sc_set0.UserUniforms).uv3Offset;
l9_6316=l9_6317;
float2 l9_6318=float2(0.0);
l9_6318=l9_6316;
float2 l9_6319=float2(0.0);
l9_6319=(l9_6251*l9_6315)+l9_6318;
float2 l9_6320=float2(0.0);
l9_6320=l9_6319+(l9_6318*(l9_6249.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_6247=l9_6320;
l9_6250=l9_6247;
}
else
{
float2 l9_6321=float2(0.0);
float2 l9_6322=float2(0.0);
float2 l9_6323=float2(0.0);
float2 l9_6324=float2(0.0);
float2 l9_6325=float2(0.0);
float2 l9_6326=float2(0.0);
ssGlobals l9_6327=l9_6249;
float2 l9_6328;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_6329=float2(0.0);
l9_6329=l9_6327.Surface_UVCoord0;
l9_6322=l9_6329;
l9_6328=l9_6322;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_6330=float2(0.0);
l9_6330=l9_6327.Surface_UVCoord1;
l9_6323=l9_6330;
l9_6328=l9_6323;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_6331=float2(0.0);
l9_6331=l9_6327.gScreenCoord;
l9_6324=l9_6331;
l9_6328=l9_6324;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_6332=float2(0.0);
float2 l9_6333=float2(0.0);
float2 l9_6334=float2(0.0);
ssGlobals l9_6335=l9_6327;
float2 l9_6336;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6337=float2(0.0);
float2 l9_6338=float2(0.0);
float2 l9_6339=float2(0.0);
ssGlobals l9_6340=l9_6335;
float2 l9_6341;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6342=float2(0.0);
float2 l9_6343=float2(0.0);
float2 l9_6344=float2(0.0);
float2 l9_6345=float2(0.0);
float2 l9_6346=float2(0.0);
ssGlobals l9_6347=l9_6340;
float2 l9_6348;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6349=float2(0.0);
l9_6349=l9_6347.Surface_UVCoord0;
l9_6343=l9_6349;
l9_6348=l9_6343;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6350=float2(0.0);
l9_6350=l9_6347.Surface_UVCoord1;
l9_6344=l9_6350;
l9_6348=l9_6344;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6351=float2(0.0);
l9_6351=l9_6347.gScreenCoord;
l9_6345=l9_6351;
l9_6348=l9_6345;
}
else
{
float2 l9_6352=float2(0.0);
l9_6352=l9_6347.Surface_UVCoord0;
l9_6346=l9_6352;
l9_6348=l9_6346;
}
}
}
l9_6342=l9_6348;
float2 l9_6353=float2(0.0);
float2 l9_6354=(*sc_set0.UserUniforms).uv2Scale;
l9_6353=l9_6354;
float2 l9_6355=float2(0.0);
l9_6355=l9_6353;
float2 l9_6356=float2(0.0);
float2 l9_6357=(*sc_set0.UserUniforms).uv2Offset;
l9_6356=l9_6357;
float2 l9_6358=float2(0.0);
l9_6358=l9_6356;
float2 l9_6359=float2(0.0);
l9_6359=(l9_6342*l9_6355)+l9_6358;
float2 l9_6360=float2(0.0);
l9_6360=l9_6359+(l9_6358*(l9_6340.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6338=l9_6360;
l9_6341=l9_6338;
}
else
{
float2 l9_6361=float2(0.0);
float2 l9_6362=float2(0.0);
float2 l9_6363=float2(0.0);
float2 l9_6364=float2(0.0);
float2 l9_6365=float2(0.0);
ssGlobals l9_6366=l9_6340;
float2 l9_6367;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6368=float2(0.0);
l9_6368=l9_6366.Surface_UVCoord0;
l9_6362=l9_6368;
l9_6367=l9_6362;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6369=float2(0.0);
l9_6369=l9_6366.Surface_UVCoord1;
l9_6363=l9_6369;
l9_6367=l9_6363;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6370=float2(0.0);
l9_6370=l9_6366.gScreenCoord;
l9_6364=l9_6370;
l9_6367=l9_6364;
}
else
{
float2 l9_6371=float2(0.0);
l9_6371=l9_6366.Surface_UVCoord0;
l9_6365=l9_6371;
l9_6367=l9_6365;
}
}
}
l9_6361=l9_6367;
float2 l9_6372=float2(0.0);
float2 l9_6373=(*sc_set0.UserUniforms).uv2Scale;
l9_6372=l9_6373;
float2 l9_6374=float2(0.0);
l9_6374=l9_6372;
float2 l9_6375=float2(0.0);
float2 l9_6376=(*sc_set0.UserUniforms).uv2Offset;
l9_6375=l9_6376;
float2 l9_6377=float2(0.0);
l9_6377=l9_6375;
float2 l9_6378=float2(0.0);
l9_6378=(l9_6361*l9_6374)+l9_6377;
l9_6339=l9_6378;
l9_6341=l9_6339;
}
l9_6337=l9_6341;
l9_6333=l9_6337;
l9_6336=l9_6333;
}
else
{
float2 l9_6379=float2(0.0);
l9_6379=l9_6335.Surface_UVCoord0;
l9_6334=l9_6379;
l9_6336=l9_6334;
}
l9_6332=l9_6336;
float2 l9_6380=float2(0.0);
l9_6380=l9_6332;
float2 l9_6381=float2(0.0);
l9_6381=l9_6380;
l9_6325=l9_6381;
l9_6328=l9_6325;
}
else
{
float2 l9_6382=float2(0.0);
l9_6382=l9_6327.Surface_UVCoord0;
l9_6326=l9_6382;
l9_6328=l9_6326;
}
}
}
}
l9_6321=l9_6328;
float2 l9_6383=float2(0.0);
float2 l9_6384=(*sc_set0.UserUniforms).uv3Scale;
l9_6383=l9_6384;
float2 l9_6385=float2(0.0);
l9_6385=l9_6383;
float2 l9_6386=float2(0.0);
float2 l9_6387=(*sc_set0.UserUniforms).uv3Offset;
l9_6386=l9_6387;
float2 l9_6388=float2(0.0);
l9_6388=l9_6386;
float2 l9_6389=float2(0.0);
l9_6389=(l9_6321*l9_6385)+l9_6388;
l9_6248=l9_6389;
l9_6250=l9_6248;
}
l9_6246=l9_6250;
l9_6242=l9_6246;
l9_6245=l9_6242;
}
else
{
float2 l9_6390=float2(0.0);
l9_6390=l9_6244.Surface_UVCoord0;
l9_6243=l9_6390;
l9_6245=l9_6243;
}
l9_6241=l9_6245;
float2 l9_6391=float2(0.0);
l9_6391=l9_6241;
float2 l9_6392=float2(0.0);
l9_6392=l9_6391;
l9_6185=l9_6392;
l9_6188=l9_6185;
}
else
{
float2 l9_6393=float2(0.0);
l9_6393=l9_6187.Surface_UVCoord0;
l9_6186=l9_6393;
l9_6188=l9_6186;
}
}
}
}
l9_6181=l9_6188;
float4 l9_6394=float4(0.0);
int l9_6395;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_6396=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6396=0;
}
else
{
l9_6396=in.varStereoViewID;
}
int l9_6397=l9_6396;
l9_6395=1-l9_6397;
}
else
{
int l9_6398=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6398=0;
}
else
{
l9_6398=in.varStereoViewID;
}
int l9_6399=l9_6398;
l9_6395=l9_6399;
}
int l9_6400=l9_6395;
int l9_6401=materialParamsTexLayout_tmp;
int l9_6402=l9_6400;
float2 l9_6403=l9_6181;
bool l9_6404=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 l9_6405=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 l9_6406=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool l9_6407=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 l9_6408=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool l9_6409=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 l9_6410=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float l9_6411=0.0;
bool l9_6412=l9_6409&&(!l9_6407);
float l9_6413=1.0;
float l9_6414=l9_6403.x;
int l9_6415=l9_6406.x;
if (l9_6415==1)
{
l9_6414=fract(l9_6414);
}
else
{
if (l9_6415==2)
{
float l9_6416=fract(l9_6414);
float l9_6417=l9_6414-l9_6416;
float l9_6418=step(0.25,fract(l9_6417*0.5));
l9_6414=mix(l9_6416,1.0-l9_6416,fast::clamp(l9_6418,0.0,1.0));
}
}
l9_6403.x=l9_6414;
float l9_6419=l9_6403.y;
int l9_6420=l9_6406.y;
if (l9_6420==1)
{
l9_6419=fract(l9_6419);
}
else
{
if (l9_6420==2)
{
float l9_6421=fract(l9_6419);
float l9_6422=l9_6419-l9_6421;
float l9_6423=step(0.25,fract(l9_6422*0.5));
l9_6419=mix(l9_6421,1.0-l9_6421,fast::clamp(l9_6423,0.0,1.0));
}
}
l9_6403.y=l9_6419;
if (l9_6407)
{
bool l9_6424=l9_6409;
bool l9_6425;
if (l9_6424)
{
l9_6425=l9_6406.x==3;
}
else
{
l9_6425=l9_6424;
}
float l9_6426=l9_6403.x;
float l9_6427=l9_6408.x;
float l9_6428=l9_6408.z;
bool l9_6429=l9_6425;
float l9_6430=l9_6413;
float l9_6431=fast::clamp(l9_6426,l9_6427,l9_6428);
float l9_6432=step(abs(l9_6426-l9_6431),9.9999997e-06);
l9_6430*=(l9_6432+((1.0-float(l9_6429))*(1.0-l9_6432)));
l9_6426=l9_6431;
l9_6403.x=l9_6426;
l9_6413=l9_6430;
bool l9_6433=l9_6409;
bool l9_6434;
if (l9_6433)
{
l9_6434=l9_6406.y==3;
}
else
{
l9_6434=l9_6433;
}
float l9_6435=l9_6403.y;
float l9_6436=l9_6408.y;
float l9_6437=l9_6408.w;
bool l9_6438=l9_6434;
float l9_6439=l9_6413;
float l9_6440=fast::clamp(l9_6435,l9_6436,l9_6437);
float l9_6441=step(abs(l9_6435-l9_6440),9.9999997e-06);
l9_6439*=(l9_6441+((1.0-float(l9_6438))*(1.0-l9_6441)));
l9_6435=l9_6440;
l9_6403.y=l9_6435;
l9_6413=l9_6439;
}
float2 l9_6442=l9_6403;
bool l9_6443=l9_6404;
float3x3 l9_6444=l9_6405;
if (l9_6443)
{
l9_6442=float2((l9_6444*float3(l9_6442,1.0)).xy);
}
float2 l9_6445=l9_6442;
l9_6403=l9_6445;
float l9_6446=l9_6403.x;
int l9_6447=l9_6406.x;
bool l9_6448=l9_6412;
float l9_6449=l9_6413;
if ((l9_6447==0)||(l9_6447==3))
{
float l9_6450=l9_6446;
float l9_6451=0.0;
float l9_6452=1.0;
bool l9_6453=l9_6448;
float l9_6454=l9_6449;
float l9_6455=fast::clamp(l9_6450,l9_6451,l9_6452);
float l9_6456=step(abs(l9_6450-l9_6455),9.9999997e-06);
l9_6454*=(l9_6456+((1.0-float(l9_6453))*(1.0-l9_6456)));
l9_6450=l9_6455;
l9_6446=l9_6450;
l9_6449=l9_6454;
}
l9_6403.x=l9_6446;
l9_6413=l9_6449;
float l9_6457=l9_6403.y;
int l9_6458=l9_6406.y;
bool l9_6459=l9_6412;
float l9_6460=l9_6413;
if ((l9_6458==0)||(l9_6458==3))
{
float l9_6461=l9_6457;
float l9_6462=0.0;
float l9_6463=1.0;
bool l9_6464=l9_6459;
float l9_6465=l9_6460;
float l9_6466=fast::clamp(l9_6461,l9_6462,l9_6463);
float l9_6467=step(abs(l9_6461-l9_6466),9.9999997e-06);
l9_6465*=(l9_6467+((1.0-float(l9_6464))*(1.0-l9_6467)));
l9_6461=l9_6466;
l9_6457=l9_6461;
l9_6460=l9_6465;
}
l9_6403.y=l9_6457;
l9_6413=l9_6460;
float2 l9_6468=l9_6403;
int l9_6469=l9_6401;
int l9_6470=l9_6402;
float l9_6471=l9_6411;
float2 l9_6472=l9_6468;
int l9_6473=l9_6469;
int l9_6474=l9_6470;
float3 l9_6475=float3(0.0);
if (l9_6473==0)
{
l9_6475=float3(l9_6472,0.0);
}
else
{
if (l9_6473==1)
{
l9_6475=float3(l9_6472.x,(l9_6472.y*0.5)+(0.5-(float(l9_6474)*0.5)),0.0);
}
else
{
l9_6475=float3(l9_6472,float(l9_6474));
}
}
float3 l9_6476=l9_6475;
float3 l9_6477=l9_6476;
float4 l9_6478=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_6477.xy,bias(l9_6471));
float4 l9_6479=l9_6478;
if (l9_6409)
{
l9_6479=mix(l9_6410,l9_6479,float4(l9_6413));
}
float4 l9_6480=l9_6479;
l9_6394=l9_6480;
float3 l9_6481=float3(0.0);
l9_6481=float3(l9_6394.z,l9_6394.z,l9_6394.z);
float3 l9_6482=float3(0.0);
l9_6482=l9_6180.xyz*l9_6481;
param_58=l9_6482;
param_60=param_58;
}
else
{
float2 l9_6483=float2(0.0);
float2 l9_6484=float2(0.0);
float2 l9_6485=float2(0.0);
float2 l9_6486=float2(0.0);
float2 l9_6487=float2(0.0);
float2 l9_6488=float2(0.0);
ssGlobals l9_6489=param_61;
float2 l9_6490;
if (NODE_221_DROPLIST_ITEM_tmp==0)
{
float2 l9_6491=float2(0.0);
l9_6491=l9_6489.Surface_UVCoord0;
l9_6484=l9_6491;
l9_6490=l9_6484;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==1)
{
float2 l9_6492=float2(0.0);
l9_6492=l9_6489.Surface_UVCoord1;
l9_6485=l9_6492;
l9_6490=l9_6485;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==2)
{
float2 l9_6493=float2(0.0);
float2 l9_6494=float2(0.0);
float2 l9_6495=float2(0.0);
ssGlobals l9_6496=l9_6489;
float2 l9_6497;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6498=float2(0.0);
float2 l9_6499=float2(0.0);
float2 l9_6500=float2(0.0);
ssGlobals l9_6501=l9_6496;
float2 l9_6502;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6503=float2(0.0);
float2 l9_6504=float2(0.0);
float2 l9_6505=float2(0.0);
float2 l9_6506=float2(0.0);
float2 l9_6507=float2(0.0);
ssGlobals l9_6508=l9_6501;
float2 l9_6509;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6510=float2(0.0);
l9_6510=l9_6508.Surface_UVCoord0;
l9_6504=l9_6510;
l9_6509=l9_6504;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6511=float2(0.0);
l9_6511=l9_6508.Surface_UVCoord1;
l9_6505=l9_6511;
l9_6509=l9_6505;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6512=float2(0.0);
l9_6512=l9_6508.gScreenCoord;
l9_6506=l9_6512;
l9_6509=l9_6506;
}
else
{
float2 l9_6513=float2(0.0);
l9_6513=l9_6508.Surface_UVCoord0;
l9_6507=l9_6513;
l9_6509=l9_6507;
}
}
}
l9_6503=l9_6509;
float2 l9_6514=float2(0.0);
float2 l9_6515=(*sc_set0.UserUniforms).uv2Scale;
l9_6514=l9_6515;
float2 l9_6516=float2(0.0);
l9_6516=l9_6514;
float2 l9_6517=float2(0.0);
float2 l9_6518=(*sc_set0.UserUniforms).uv2Offset;
l9_6517=l9_6518;
float2 l9_6519=float2(0.0);
l9_6519=l9_6517;
float2 l9_6520=float2(0.0);
l9_6520=(l9_6503*l9_6516)+l9_6519;
float2 l9_6521=float2(0.0);
l9_6521=l9_6520+(l9_6519*(l9_6501.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6499=l9_6521;
l9_6502=l9_6499;
}
else
{
float2 l9_6522=float2(0.0);
float2 l9_6523=float2(0.0);
float2 l9_6524=float2(0.0);
float2 l9_6525=float2(0.0);
float2 l9_6526=float2(0.0);
ssGlobals l9_6527=l9_6501;
float2 l9_6528;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6529=float2(0.0);
l9_6529=l9_6527.Surface_UVCoord0;
l9_6523=l9_6529;
l9_6528=l9_6523;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6530=float2(0.0);
l9_6530=l9_6527.Surface_UVCoord1;
l9_6524=l9_6530;
l9_6528=l9_6524;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6531=float2(0.0);
l9_6531=l9_6527.gScreenCoord;
l9_6525=l9_6531;
l9_6528=l9_6525;
}
else
{
float2 l9_6532=float2(0.0);
l9_6532=l9_6527.Surface_UVCoord0;
l9_6526=l9_6532;
l9_6528=l9_6526;
}
}
}
l9_6522=l9_6528;
float2 l9_6533=float2(0.0);
float2 l9_6534=(*sc_set0.UserUniforms).uv2Scale;
l9_6533=l9_6534;
float2 l9_6535=float2(0.0);
l9_6535=l9_6533;
float2 l9_6536=float2(0.0);
float2 l9_6537=(*sc_set0.UserUniforms).uv2Offset;
l9_6536=l9_6537;
float2 l9_6538=float2(0.0);
l9_6538=l9_6536;
float2 l9_6539=float2(0.0);
l9_6539=(l9_6522*l9_6535)+l9_6538;
l9_6500=l9_6539;
l9_6502=l9_6500;
}
l9_6498=l9_6502;
l9_6494=l9_6498;
l9_6497=l9_6494;
}
else
{
float2 l9_6540=float2(0.0);
l9_6540=l9_6496.Surface_UVCoord0;
l9_6495=l9_6540;
l9_6497=l9_6495;
}
l9_6493=l9_6497;
float2 l9_6541=float2(0.0);
l9_6541=l9_6493;
float2 l9_6542=float2(0.0);
l9_6542=l9_6541;
l9_6486=l9_6542;
l9_6490=l9_6486;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==3)
{
float2 l9_6543=float2(0.0);
float2 l9_6544=float2(0.0);
float2 l9_6545=float2(0.0);
ssGlobals l9_6546=l9_6489;
float2 l9_6547;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_6548=float2(0.0);
float2 l9_6549=float2(0.0);
float2 l9_6550=float2(0.0);
ssGlobals l9_6551=l9_6546;
float2 l9_6552;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_6553=float2(0.0);
float2 l9_6554=float2(0.0);
float2 l9_6555=float2(0.0);
float2 l9_6556=float2(0.0);
float2 l9_6557=float2(0.0);
float2 l9_6558=float2(0.0);
ssGlobals l9_6559=l9_6551;
float2 l9_6560;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_6561=float2(0.0);
l9_6561=l9_6559.Surface_UVCoord0;
l9_6554=l9_6561;
l9_6560=l9_6554;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_6562=float2(0.0);
l9_6562=l9_6559.Surface_UVCoord1;
l9_6555=l9_6562;
l9_6560=l9_6555;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_6563=float2(0.0);
l9_6563=l9_6559.gScreenCoord;
l9_6556=l9_6563;
l9_6560=l9_6556;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_6564=float2(0.0);
float2 l9_6565=float2(0.0);
float2 l9_6566=float2(0.0);
ssGlobals l9_6567=l9_6559;
float2 l9_6568;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6569=float2(0.0);
float2 l9_6570=float2(0.0);
float2 l9_6571=float2(0.0);
ssGlobals l9_6572=l9_6567;
float2 l9_6573;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6574=float2(0.0);
float2 l9_6575=float2(0.0);
float2 l9_6576=float2(0.0);
float2 l9_6577=float2(0.0);
float2 l9_6578=float2(0.0);
ssGlobals l9_6579=l9_6572;
float2 l9_6580;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6581=float2(0.0);
l9_6581=l9_6579.Surface_UVCoord0;
l9_6575=l9_6581;
l9_6580=l9_6575;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6582=float2(0.0);
l9_6582=l9_6579.Surface_UVCoord1;
l9_6576=l9_6582;
l9_6580=l9_6576;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6583=float2(0.0);
l9_6583=l9_6579.gScreenCoord;
l9_6577=l9_6583;
l9_6580=l9_6577;
}
else
{
float2 l9_6584=float2(0.0);
l9_6584=l9_6579.Surface_UVCoord0;
l9_6578=l9_6584;
l9_6580=l9_6578;
}
}
}
l9_6574=l9_6580;
float2 l9_6585=float2(0.0);
float2 l9_6586=(*sc_set0.UserUniforms).uv2Scale;
l9_6585=l9_6586;
float2 l9_6587=float2(0.0);
l9_6587=l9_6585;
float2 l9_6588=float2(0.0);
float2 l9_6589=(*sc_set0.UserUniforms).uv2Offset;
l9_6588=l9_6589;
float2 l9_6590=float2(0.0);
l9_6590=l9_6588;
float2 l9_6591=float2(0.0);
l9_6591=(l9_6574*l9_6587)+l9_6590;
float2 l9_6592=float2(0.0);
l9_6592=l9_6591+(l9_6590*(l9_6572.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6570=l9_6592;
l9_6573=l9_6570;
}
else
{
float2 l9_6593=float2(0.0);
float2 l9_6594=float2(0.0);
float2 l9_6595=float2(0.0);
float2 l9_6596=float2(0.0);
float2 l9_6597=float2(0.0);
ssGlobals l9_6598=l9_6572;
float2 l9_6599;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6600=float2(0.0);
l9_6600=l9_6598.Surface_UVCoord0;
l9_6594=l9_6600;
l9_6599=l9_6594;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6601=float2(0.0);
l9_6601=l9_6598.Surface_UVCoord1;
l9_6595=l9_6601;
l9_6599=l9_6595;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6602=float2(0.0);
l9_6602=l9_6598.gScreenCoord;
l9_6596=l9_6602;
l9_6599=l9_6596;
}
else
{
float2 l9_6603=float2(0.0);
l9_6603=l9_6598.Surface_UVCoord0;
l9_6597=l9_6603;
l9_6599=l9_6597;
}
}
}
l9_6593=l9_6599;
float2 l9_6604=float2(0.0);
float2 l9_6605=(*sc_set0.UserUniforms).uv2Scale;
l9_6604=l9_6605;
float2 l9_6606=float2(0.0);
l9_6606=l9_6604;
float2 l9_6607=float2(0.0);
float2 l9_6608=(*sc_set0.UserUniforms).uv2Offset;
l9_6607=l9_6608;
float2 l9_6609=float2(0.0);
l9_6609=l9_6607;
float2 l9_6610=float2(0.0);
l9_6610=(l9_6593*l9_6606)+l9_6609;
l9_6571=l9_6610;
l9_6573=l9_6571;
}
l9_6569=l9_6573;
l9_6565=l9_6569;
l9_6568=l9_6565;
}
else
{
float2 l9_6611=float2(0.0);
l9_6611=l9_6567.Surface_UVCoord0;
l9_6566=l9_6611;
l9_6568=l9_6566;
}
l9_6564=l9_6568;
float2 l9_6612=float2(0.0);
l9_6612=l9_6564;
float2 l9_6613=float2(0.0);
l9_6613=l9_6612;
l9_6557=l9_6613;
l9_6560=l9_6557;
}
else
{
float2 l9_6614=float2(0.0);
l9_6614=l9_6559.Surface_UVCoord0;
l9_6558=l9_6614;
l9_6560=l9_6558;
}
}
}
}
l9_6553=l9_6560;
float2 l9_6615=float2(0.0);
float2 l9_6616=(*sc_set0.UserUniforms).uv3Scale;
l9_6615=l9_6616;
float2 l9_6617=float2(0.0);
l9_6617=l9_6615;
float2 l9_6618=float2(0.0);
float2 l9_6619=(*sc_set0.UserUniforms).uv3Offset;
l9_6618=l9_6619;
float2 l9_6620=float2(0.0);
l9_6620=l9_6618;
float2 l9_6621=float2(0.0);
l9_6621=(l9_6553*l9_6617)+l9_6620;
float2 l9_6622=float2(0.0);
l9_6622=l9_6621+(l9_6620*(l9_6551.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_6549=l9_6622;
l9_6552=l9_6549;
}
else
{
float2 l9_6623=float2(0.0);
float2 l9_6624=float2(0.0);
float2 l9_6625=float2(0.0);
float2 l9_6626=float2(0.0);
float2 l9_6627=float2(0.0);
float2 l9_6628=float2(0.0);
ssGlobals l9_6629=l9_6551;
float2 l9_6630;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_6631=float2(0.0);
l9_6631=l9_6629.Surface_UVCoord0;
l9_6624=l9_6631;
l9_6630=l9_6624;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_6632=float2(0.0);
l9_6632=l9_6629.Surface_UVCoord1;
l9_6625=l9_6632;
l9_6630=l9_6625;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_6633=float2(0.0);
l9_6633=l9_6629.gScreenCoord;
l9_6626=l9_6633;
l9_6630=l9_6626;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_6634=float2(0.0);
float2 l9_6635=float2(0.0);
float2 l9_6636=float2(0.0);
ssGlobals l9_6637=l9_6629;
float2 l9_6638;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6639=float2(0.0);
float2 l9_6640=float2(0.0);
float2 l9_6641=float2(0.0);
ssGlobals l9_6642=l9_6637;
float2 l9_6643;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6644=float2(0.0);
float2 l9_6645=float2(0.0);
float2 l9_6646=float2(0.0);
float2 l9_6647=float2(0.0);
float2 l9_6648=float2(0.0);
ssGlobals l9_6649=l9_6642;
float2 l9_6650;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6651=float2(0.0);
l9_6651=l9_6649.Surface_UVCoord0;
l9_6645=l9_6651;
l9_6650=l9_6645;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6652=float2(0.0);
l9_6652=l9_6649.Surface_UVCoord1;
l9_6646=l9_6652;
l9_6650=l9_6646;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6653=float2(0.0);
l9_6653=l9_6649.gScreenCoord;
l9_6647=l9_6653;
l9_6650=l9_6647;
}
else
{
float2 l9_6654=float2(0.0);
l9_6654=l9_6649.Surface_UVCoord0;
l9_6648=l9_6654;
l9_6650=l9_6648;
}
}
}
l9_6644=l9_6650;
float2 l9_6655=float2(0.0);
float2 l9_6656=(*sc_set0.UserUniforms).uv2Scale;
l9_6655=l9_6656;
float2 l9_6657=float2(0.0);
l9_6657=l9_6655;
float2 l9_6658=float2(0.0);
float2 l9_6659=(*sc_set0.UserUniforms).uv2Offset;
l9_6658=l9_6659;
float2 l9_6660=float2(0.0);
l9_6660=l9_6658;
float2 l9_6661=float2(0.0);
l9_6661=(l9_6644*l9_6657)+l9_6660;
float2 l9_6662=float2(0.0);
l9_6662=l9_6661+(l9_6660*(l9_6642.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6640=l9_6662;
l9_6643=l9_6640;
}
else
{
float2 l9_6663=float2(0.0);
float2 l9_6664=float2(0.0);
float2 l9_6665=float2(0.0);
float2 l9_6666=float2(0.0);
float2 l9_6667=float2(0.0);
ssGlobals l9_6668=l9_6642;
float2 l9_6669;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6670=float2(0.0);
l9_6670=l9_6668.Surface_UVCoord0;
l9_6664=l9_6670;
l9_6669=l9_6664;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6671=float2(0.0);
l9_6671=l9_6668.Surface_UVCoord1;
l9_6665=l9_6671;
l9_6669=l9_6665;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6672=float2(0.0);
l9_6672=l9_6668.gScreenCoord;
l9_6666=l9_6672;
l9_6669=l9_6666;
}
else
{
float2 l9_6673=float2(0.0);
l9_6673=l9_6668.Surface_UVCoord0;
l9_6667=l9_6673;
l9_6669=l9_6667;
}
}
}
l9_6663=l9_6669;
float2 l9_6674=float2(0.0);
float2 l9_6675=(*sc_set0.UserUniforms).uv2Scale;
l9_6674=l9_6675;
float2 l9_6676=float2(0.0);
l9_6676=l9_6674;
float2 l9_6677=float2(0.0);
float2 l9_6678=(*sc_set0.UserUniforms).uv2Offset;
l9_6677=l9_6678;
float2 l9_6679=float2(0.0);
l9_6679=l9_6677;
float2 l9_6680=float2(0.0);
l9_6680=(l9_6663*l9_6676)+l9_6679;
l9_6641=l9_6680;
l9_6643=l9_6641;
}
l9_6639=l9_6643;
l9_6635=l9_6639;
l9_6638=l9_6635;
}
else
{
float2 l9_6681=float2(0.0);
l9_6681=l9_6637.Surface_UVCoord0;
l9_6636=l9_6681;
l9_6638=l9_6636;
}
l9_6634=l9_6638;
float2 l9_6682=float2(0.0);
l9_6682=l9_6634;
float2 l9_6683=float2(0.0);
l9_6683=l9_6682;
l9_6627=l9_6683;
l9_6630=l9_6627;
}
else
{
float2 l9_6684=float2(0.0);
l9_6684=l9_6629.Surface_UVCoord0;
l9_6628=l9_6684;
l9_6630=l9_6628;
}
}
}
}
l9_6623=l9_6630;
float2 l9_6685=float2(0.0);
float2 l9_6686=(*sc_set0.UserUniforms).uv3Scale;
l9_6685=l9_6686;
float2 l9_6687=float2(0.0);
l9_6687=l9_6685;
float2 l9_6688=float2(0.0);
float2 l9_6689=(*sc_set0.UserUniforms).uv3Offset;
l9_6688=l9_6689;
float2 l9_6690=float2(0.0);
l9_6690=l9_6688;
float2 l9_6691=float2(0.0);
l9_6691=(l9_6623*l9_6687)+l9_6690;
l9_6550=l9_6691;
l9_6552=l9_6550;
}
l9_6548=l9_6552;
l9_6544=l9_6548;
l9_6547=l9_6544;
}
else
{
float2 l9_6692=float2(0.0);
l9_6692=l9_6546.Surface_UVCoord0;
l9_6545=l9_6692;
l9_6547=l9_6545;
}
l9_6543=l9_6547;
float2 l9_6693=float2(0.0);
l9_6693=l9_6543;
float2 l9_6694=float2(0.0);
l9_6694=l9_6693;
l9_6487=l9_6694;
l9_6490=l9_6487;
}
else
{
float2 l9_6695=float2(0.0);
l9_6695=l9_6489.Surface_UVCoord0;
l9_6488=l9_6695;
l9_6490=l9_6488;
}
}
}
}
l9_6483=l9_6490;
float4 l9_6696=float4(0.0);
int l9_6697;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_6698=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6698=0;
}
else
{
l9_6698=in.varStereoViewID;
}
int l9_6699=l9_6698;
l9_6697=1-l9_6699;
}
else
{
int l9_6700=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6700=0;
}
else
{
l9_6700=in.varStereoViewID;
}
int l9_6701=l9_6700;
l9_6697=l9_6701;
}
int l9_6702=l9_6697;
int l9_6703=materialParamsTexLayout_tmp;
int l9_6704=l9_6702;
float2 l9_6705=l9_6483;
bool l9_6706=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 l9_6707=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 l9_6708=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool l9_6709=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 l9_6710=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool l9_6711=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 l9_6712=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float l9_6713=0.0;
bool l9_6714=l9_6711&&(!l9_6709);
float l9_6715=1.0;
float l9_6716=l9_6705.x;
int l9_6717=l9_6708.x;
if (l9_6717==1)
{
l9_6716=fract(l9_6716);
}
else
{
if (l9_6717==2)
{
float l9_6718=fract(l9_6716);
float l9_6719=l9_6716-l9_6718;
float l9_6720=step(0.25,fract(l9_6719*0.5));
l9_6716=mix(l9_6718,1.0-l9_6718,fast::clamp(l9_6720,0.0,1.0));
}
}
l9_6705.x=l9_6716;
float l9_6721=l9_6705.y;
int l9_6722=l9_6708.y;
if (l9_6722==1)
{
l9_6721=fract(l9_6721);
}
else
{
if (l9_6722==2)
{
float l9_6723=fract(l9_6721);
float l9_6724=l9_6721-l9_6723;
float l9_6725=step(0.25,fract(l9_6724*0.5));
l9_6721=mix(l9_6723,1.0-l9_6723,fast::clamp(l9_6725,0.0,1.0));
}
}
l9_6705.y=l9_6721;
if (l9_6709)
{
bool l9_6726=l9_6711;
bool l9_6727;
if (l9_6726)
{
l9_6727=l9_6708.x==3;
}
else
{
l9_6727=l9_6726;
}
float l9_6728=l9_6705.x;
float l9_6729=l9_6710.x;
float l9_6730=l9_6710.z;
bool l9_6731=l9_6727;
float l9_6732=l9_6715;
float l9_6733=fast::clamp(l9_6728,l9_6729,l9_6730);
float l9_6734=step(abs(l9_6728-l9_6733),9.9999997e-06);
l9_6732*=(l9_6734+((1.0-float(l9_6731))*(1.0-l9_6734)));
l9_6728=l9_6733;
l9_6705.x=l9_6728;
l9_6715=l9_6732;
bool l9_6735=l9_6711;
bool l9_6736;
if (l9_6735)
{
l9_6736=l9_6708.y==3;
}
else
{
l9_6736=l9_6735;
}
float l9_6737=l9_6705.y;
float l9_6738=l9_6710.y;
float l9_6739=l9_6710.w;
bool l9_6740=l9_6736;
float l9_6741=l9_6715;
float l9_6742=fast::clamp(l9_6737,l9_6738,l9_6739);
float l9_6743=step(abs(l9_6737-l9_6742),9.9999997e-06);
l9_6741*=(l9_6743+((1.0-float(l9_6740))*(1.0-l9_6743)));
l9_6737=l9_6742;
l9_6705.y=l9_6737;
l9_6715=l9_6741;
}
float2 l9_6744=l9_6705;
bool l9_6745=l9_6706;
float3x3 l9_6746=l9_6707;
if (l9_6745)
{
l9_6744=float2((l9_6746*float3(l9_6744,1.0)).xy);
}
float2 l9_6747=l9_6744;
l9_6705=l9_6747;
float l9_6748=l9_6705.x;
int l9_6749=l9_6708.x;
bool l9_6750=l9_6714;
float l9_6751=l9_6715;
if ((l9_6749==0)||(l9_6749==3))
{
float l9_6752=l9_6748;
float l9_6753=0.0;
float l9_6754=1.0;
bool l9_6755=l9_6750;
float l9_6756=l9_6751;
float l9_6757=fast::clamp(l9_6752,l9_6753,l9_6754);
float l9_6758=step(abs(l9_6752-l9_6757),9.9999997e-06);
l9_6756*=(l9_6758+((1.0-float(l9_6755))*(1.0-l9_6758)));
l9_6752=l9_6757;
l9_6748=l9_6752;
l9_6751=l9_6756;
}
l9_6705.x=l9_6748;
l9_6715=l9_6751;
float l9_6759=l9_6705.y;
int l9_6760=l9_6708.y;
bool l9_6761=l9_6714;
float l9_6762=l9_6715;
if ((l9_6760==0)||(l9_6760==3))
{
float l9_6763=l9_6759;
float l9_6764=0.0;
float l9_6765=1.0;
bool l9_6766=l9_6761;
float l9_6767=l9_6762;
float l9_6768=fast::clamp(l9_6763,l9_6764,l9_6765);
float l9_6769=step(abs(l9_6763-l9_6768),9.9999997e-06);
l9_6767*=(l9_6769+((1.0-float(l9_6766))*(1.0-l9_6769)));
l9_6763=l9_6768;
l9_6759=l9_6763;
l9_6762=l9_6767;
}
l9_6705.y=l9_6759;
l9_6715=l9_6762;
float2 l9_6770=l9_6705;
int l9_6771=l9_6703;
int l9_6772=l9_6704;
float l9_6773=l9_6713;
float2 l9_6774=l9_6770;
int l9_6775=l9_6771;
int l9_6776=l9_6772;
float3 l9_6777=float3(0.0);
if (l9_6775==0)
{
l9_6777=float3(l9_6774,0.0);
}
else
{
if (l9_6775==1)
{
l9_6777=float3(l9_6774.x,(l9_6774.y*0.5)+(0.5-(float(l9_6776)*0.5)),0.0);
}
else
{
l9_6777=float3(l9_6774,float(l9_6776));
}
}
float3 l9_6778=l9_6777;
float3 l9_6779=l9_6778;
float4 l9_6780=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_6779.xy,bias(l9_6773));
float4 l9_6781=l9_6780;
if (l9_6711)
{
l9_6781=mix(l9_6712,l9_6781,float4(l9_6715));
}
float4 l9_6782=l9_6781;
l9_6696=l9_6782;
float3 l9_6783=float3(0.0);
l9_6783=float3(l9_6696.z,l9_6696.z,l9_6696.z);
param_59=l9_6783;
param_60=param_59;
}
Result_N188=param_60;
float3 Export_N230=float3(0.0);
Export_N230=Result_N188;
float3 Result_N79=float3(0.0);
float3 param_62=(*sc_set0.UserUniforms).Port_Value1_N079;
float3 param_63=float3(0.0);
ssGlobals param_65=Globals;
float3 param_64;
if ((int(Tweak_N179_tmp)!=0))
{
param_64=param_62;
}
else
{
float3 l9_6784=float3(0.0);
float3 l9_6785=float3(0.0);
float3 l9_6786=(*sc_set0.UserUniforms).Port_Default_N326;
ssGlobals l9_6787=param_65;
float3 l9_6788;
if ((int(Tweak_N219_tmp)!=0))
{
float l9_6789=0.0;
float l9_6790=(*sc_set0.UserUniforms).specularAoDarkening;
l9_6789=l9_6790;
float l9_6791=0.0;
l9_6791=l9_6789;
float l9_6792=0.0;
l9_6792=1.0-l9_6791;
float3 l9_6793=float3(0.0);
l9_6793=(*sc_set0.UserUniforms).Port_Import_N235;
float l9_6794=0.0;
float l9_6795=(*sc_set0.UserUniforms).metallic;
l9_6794=l9_6795;
float l9_6796=0.0;
l9_6796=l9_6794;
float2 l9_6797=float2(0.0);
float2 l9_6798=float2(0.0);
float2 l9_6799=float2(0.0);
float2 l9_6800=float2(0.0);
float2 l9_6801=float2(0.0);
float2 l9_6802=float2(0.0);
ssGlobals l9_6803=l9_6787;
float2 l9_6804;
if (NODE_221_DROPLIST_ITEM_tmp==0)
{
float2 l9_6805=float2(0.0);
l9_6805=l9_6803.Surface_UVCoord0;
l9_6798=l9_6805;
l9_6804=l9_6798;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==1)
{
float2 l9_6806=float2(0.0);
l9_6806=l9_6803.Surface_UVCoord1;
l9_6799=l9_6806;
l9_6804=l9_6799;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==2)
{
float2 l9_6807=float2(0.0);
float2 l9_6808=float2(0.0);
float2 l9_6809=float2(0.0);
ssGlobals l9_6810=l9_6803;
float2 l9_6811;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6812=float2(0.0);
float2 l9_6813=float2(0.0);
float2 l9_6814=float2(0.0);
ssGlobals l9_6815=l9_6810;
float2 l9_6816;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6817=float2(0.0);
float2 l9_6818=float2(0.0);
float2 l9_6819=float2(0.0);
float2 l9_6820=float2(0.0);
float2 l9_6821=float2(0.0);
ssGlobals l9_6822=l9_6815;
float2 l9_6823;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6824=float2(0.0);
l9_6824=l9_6822.Surface_UVCoord0;
l9_6818=l9_6824;
l9_6823=l9_6818;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6825=float2(0.0);
l9_6825=l9_6822.Surface_UVCoord1;
l9_6819=l9_6825;
l9_6823=l9_6819;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6826=float2(0.0);
l9_6826=l9_6822.gScreenCoord;
l9_6820=l9_6826;
l9_6823=l9_6820;
}
else
{
float2 l9_6827=float2(0.0);
l9_6827=l9_6822.Surface_UVCoord0;
l9_6821=l9_6827;
l9_6823=l9_6821;
}
}
}
l9_6817=l9_6823;
float2 l9_6828=float2(0.0);
float2 l9_6829=(*sc_set0.UserUniforms).uv2Scale;
l9_6828=l9_6829;
float2 l9_6830=float2(0.0);
l9_6830=l9_6828;
float2 l9_6831=float2(0.0);
float2 l9_6832=(*sc_set0.UserUniforms).uv2Offset;
l9_6831=l9_6832;
float2 l9_6833=float2(0.0);
l9_6833=l9_6831;
float2 l9_6834=float2(0.0);
l9_6834=(l9_6817*l9_6830)+l9_6833;
float2 l9_6835=float2(0.0);
l9_6835=l9_6834+(l9_6833*(l9_6815.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6813=l9_6835;
l9_6816=l9_6813;
}
else
{
float2 l9_6836=float2(0.0);
float2 l9_6837=float2(0.0);
float2 l9_6838=float2(0.0);
float2 l9_6839=float2(0.0);
float2 l9_6840=float2(0.0);
ssGlobals l9_6841=l9_6815;
float2 l9_6842;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6843=float2(0.0);
l9_6843=l9_6841.Surface_UVCoord0;
l9_6837=l9_6843;
l9_6842=l9_6837;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6844=float2(0.0);
l9_6844=l9_6841.Surface_UVCoord1;
l9_6838=l9_6844;
l9_6842=l9_6838;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6845=float2(0.0);
l9_6845=l9_6841.gScreenCoord;
l9_6839=l9_6845;
l9_6842=l9_6839;
}
else
{
float2 l9_6846=float2(0.0);
l9_6846=l9_6841.Surface_UVCoord0;
l9_6840=l9_6846;
l9_6842=l9_6840;
}
}
}
l9_6836=l9_6842;
float2 l9_6847=float2(0.0);
float2 l9_6848=(*sc_set0.UserUniforms).uv2Scale;
l9_6847=l9_6848;
float2 l9_6849=float2(0.0);
l9_6849=l9_6847;
float2 l9_6850=float2(0.0);
float2 l9_6851=(*sc_set0.UserUniforms).uv2Offset;
l9_6850=l9_6851;
float2 l9_6852=float2(0.0);
l9_6852=l9_6850;
float2 l9_6853=float2(0.0);
l9_6853=(l9_6836*l9_6849)+l9_6852;
l9_6814=l9_6853;
l9_6816=l9_6814;
}
l9_6812=l9_6816;
l9_6808=l9_6812;
l9_6811=l9_6808;
}
else
{
float2 l9_6854=float2(0.0);
l9_6854=l9_6810.Surface_UVCoord0;
l9_6809=l9_6854;
l9_6811=l9_6809;
}
l9_6807=l9_6811;
float2 l9_6855=float2(0.0);
l9_6855=l9_6807;
float2 l9_6856=float2(0.0);
l9_6856=l9_6855;
l9_6800=l9_6856;
l9_6804=l9_6800;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==3)
{
float2 l9_6857=float2(0.0);
float2 l9_6858=float2(0.0);
float2 l9_6859=float2(0.0);
ssGlobals l9_6860=l9_6803;
float2 l9_6861;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_6862=float2(0.0);
float2 l9_6863=float2(0.0);
float2 l9_6864=float2(0.0);
ssGlobals l9_6865=l9_6860;
float2 l9_6866;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_6867=float2(0.0);
float2 l9_6868=float2(0.0);
float2 l9_6869=float2(0.0);
float2 l9_6870=float2(0.0);
float2 l9_6871=float2(0.0);
float2 l9_6872=float2(0.0);
ssGlobals l9_6873=l9_6865;
float2 l9_6874;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_6875=float2(0.0);
l9_6875=l9_6873.Surface_UVCoord0;
l9_6868=l9_6875;
l9_6874=l9_6868;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_6876=float2(0.0);
l9_6876=l9_6873.Surface_UVCoord1;
l9_6869=l9_6876;
l9_6874=l9_6869;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_6877=float2(0.0);
l9_6877=l9_6873.gScreenCoord;
l9_6870=l9_6877;
l9_6874=l9_6870;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_6878=float2(0.0);
float2 l9_6879=float2(0.0);
float2 l9_6880=float2(0.0);
ssGlobals l9_6881=l9_6873;
float2 l9_6882;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6883=float2(0.0);
float2 l9_6884=float2(0.0);
float2 l9_6885=float2(0.0);
ssGlobals l9_6886=l9_6881;
float2 l9_6887;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6888=float2(0.0);
float2 l9_6889=float2(0.0);
float2 l9_6890=float2(0.0);
float2 l9_6891=float2(0.0);
float2 l9_6892=float2(0.0);
ssGlobals l9_6893=l9_6886;
float2 l9_6894;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6895=float2(0.0);
l9_6895=l9_6893.Surface_UVCoord0;
l9_6889=l9_6895;
l9_6894=l9_6889;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6896=float2(0.0);
l9_6896=l9_6893.Surface_UVCoord1;
l9_6890=l9_6896;
l9_6894=l9_6890;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6897=float2(0.0);
l9_6897=l9_6893.gScreenCoord;
l9_6891=l9_6897;
l9_6894=l9_6891;
}
else
{
float2 l9_6898=float2(0.0);
l9_6898=l9_6893.Surface_UVCoord0;
l9_6892=l9_6898;
l9_6894=l9_6892;
}
}
}
l9_6888=l9_6894;
float2 l9_6899=float2(0.0);
float2 l9_6900=(*sc_set0.UserUniforms).uv2Scale;
l9_6899=l9_6900;
float2 l9_6901=float2(0.0);
l9_6901=l9_6899;
float2 l9_6902=float2(0.0);
float2 l9_6903=(*sc_set0.UserUniforms).uv2Offset;
l9_6902=l9_6903;
float2 l9_6904=float2(0.0);
l9_6904=l9_6902;
float2 l9_6905=float2(0.0);
l9_6905=(l9_6888*l9_6901)+l9_6904;
float2 l9_6906=float2(0.0);
l9_6906=l9_6905+(l9_6904*(l9_6886.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6884=l9_6906;
l9_6887=l9_6884;
}
else
{
float2 l9_6907=float2(0.0);
float2 l9_6908=float2(0.0);
float2 l9_6909=float2(0.0);
float2 l9_6910=float2(0.0);
float2 l9_6911=float2(0.0);
ssGlobals l9_6912=l9_6886;
float2 l9_6913;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6914=float2(0.0);
l9_6914=l9_6912.Surface_UVCoord0;
l9_6908=l9_6914;
l9_6913=l9_6908;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6915=float2(0.0);
l9_6915=l9_6912.Surface_UVCoord1;
l9_6909=l9_6915;
l9_6913=l9_6909;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6916=float2(0.0);
l9_6916=l9_6912.gScreenCoord;
l9_6910=l9_6916;
l9_6913=l9_6910;
}
else
{
float2 l9_6917=float2(0.0);
l9_6917=l9_6912.Surface_UVCoord0;
l9_6911=l9_6917;
l9_6913=l9_6911;
}
}
}
l9_6907=l9_6913;
float2 l9_6918=float2(0.0);
float2 l9_6919=(*sc_set0.UserUniforms).uv2Scale;
l9_6918=l9_6919;
float2 l9_6920=float2(0.0);
l9_6920=l9_6918;
float2 l9_6921=float2(0.0);
float2 l9_6922=(*sc_set0.UserUniforms).uv2Offset;
l9_6921=l9_6922;
float2 l9_6923=float2(0.0);
l9_6923=l9_6921;
float2 l9_6924=float2(0.0);
l9_6924=(l9_6907*l9_6920)+l9_6923;
l9_6885=l9_6924;
l9_6887=l9_6885;
}
l9_6883=l9_6887;
l9_6879=l9_6883;
l9_6882=l9_6879;
}
else
{
float2 l9_6925=float2(0.0);
l9_6925=l9_6881.Surface_UVCoord0;
l9_6880=l9_6925;
l9_6882=l9_6880;
}
l9_6878=l9_6882;
float2 l9_6926=float2(0.0);
l9_6926=l9_6878;
float2 l9_6927=float2(0.0);
l9_6927=l9_6926;
l9_6871=l9_6927;
l9_6874=l9_6871;
}
else
{
float2 l9_6928=float2(0.0);
l9_6928=l9_6873.Surface_UVCoord0;
l9_6872=l9_6928;
l9_6874=l9_6872;
}
}
}
}
l9_6867=l9_6874;
float2 l9_6929=float2(0.0);
float2 l9_6930=(*sc_set0.UserUniforms).uv3Scale;
l9_6929=l9_6930;
float2 l9_6931=float2(0.0);
l9_6931=l9_6929;
float2 l9_6932=float2(0.0);
float2 l9_6933=(*sc_set0.UserUniforms).uv3Offset;
l9_6932=l9_6933;
float2 l9_6934=float2(0.0);
l9_6934=l9_6932;
float2 l9_6935=float2(0.0);
l9_6935=(l9_6867*l9_6931)+l9_6934;
float2 l9_6936=float2(0.0);
l9_6936=l9_6935+(l9_6934*(l9_6865.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_6863=l9_6936;
l9_6866=l9_6863;
}
else
{
float2 l9_6937=float2(0.0);
float2 l9_6938=float2(0.0);
float2 l9_6939=float2(0.0);
float2 l9_6940=float2(0.0);
float2 l9_6941=float2(0.0);
float2 l9_6942=float2(0.0);
ssGlobals l9_6943=l9_6865;
float2 l9_6944;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_6945=float2(0.0);
l9_6945=l9_6943.Surface_UVCoord0;
l9_6938=l9_6945;
l9_6944=l9_6938;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_6946=float2(0.0);
l9_6946=l9_6943.Surface_UVCoord1;
l9_6939=l9_6946;
l9_6944=l9_6939;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_6947=float2(0.0);
l9_6947=l9_6943.gScreenCoord;
l9_6940=l9_6947;
l9_6944=l9_6940;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_6948=float2(0.0);
float2 l9_6949=float2(0.0);
float2 l9_6950=float2(0.0);
ssGlobals l9_6951=l9_6943;
float2 l9_6952;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_6953=float2(0.0);
float2 l9_6954=float2(0.0);
float2 l9_6955=float2(0.0);
ssGlobals l9_6956=l9_6951;
float2 l9_6957;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_6958=float2(0.0);
float2 l9_6959=float2(0.0);
float2 l9_6960=float2(0.0);
float2 l9_6961=float2(0.0);
float2 l9_6962=float2(0.0);
ssGlobals l9_6963=l9_6956;
float2 l9_6964;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6965=float2(0.0);
l9_6965=l9_6963.Surface_UVCoord0;
l9_6959=l9_6965;
l9_6964=l9_6959;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6966=float2(0.0);
l9_6966=l9_6963.Surface_UVCoord1;
l9_6960=l9_6966;
l9_6964=l9_6960;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6967=float2(0.0);
l9_6967=l9_6963.gScreenCoord;
l9_6961=l9_6967;
l9_6964=l9_6961;
}
else
{
float2 l9_6968=float2(0.0);
l9_6968=l9_6963.Surface_UVCoord0;
l9_6962=l9_6968;
l9_6964=l9_6962;
}
}
}
l9_6958=l9_6964;
float2 l9_6969=float2(0.0);
float2 l9_6970=(*sc_set0.UserUniforms).uv2Scale;
l9_6969=l9_6970;
float2 l9_6971=float2(0.0);
l9_6971=l9_6969;
float2 l9_6972=float2(0.0);
float2 l9_6973=(*sc_set0.UserUniforms).uv2Offset;
l9_6972=l9_6973;
float2 l9_6974=float2(0.0);
l9_6974=l9_6972;
float2 l9_6975=float2(0.0);
l9_6975=(l9_6958*l9_6971)+l9_6974;
float2 l9_6976=float2(0.0);
l9_6976=l9_6975+(l9_6974*(l9_6956.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_6954=l9_6976;
l9_6957=l9_6954;
}
else
{
float2 l9_6977=float2(0.0);
float2 l9_6978=float2(0.0);
float2 l9_6979=float2(0.0);
float2 l9_6980=float2(0.0);
float2 l9_6981=float2(0.0);
ssGlobals l9_6982=l9_6956;
float2 l9_6983;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_6984=float2(0.0);
l9_6984=l9_6982.Surface_UVCoord0;
l9_6978=l9_6984;
l9_6983=l9_6978;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_6985=float2(0.0);
l9_6985=l9_6982.Surface_UVCoord1;
l9_6979=l9_6985;
l9_6983=l9_6979;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_6986=float2(0.0);
l9_6986=l9_6982.gScreenCoord;
l9_6980=l9_6986;
l9_6983=l9_6980;
}
else
{
float2 l9_6987=float2(0.0);
l9_6987=l9_6982.Surface_UVCoord0;
l9_6981=l9_6987;
l9_6983=l9_6981;
}
}
}
l9_6977=l9_6983;
float2 l9_6988=float2(0.0);
float2 l9_6989=(*sc_set0.UserUniforms).uv2Scale;
l9_6988=l9_6989;
float2 l9_6990=float2(0.0);
l9_6990=l9_6988;
float2 l9_6991=float2(0.0);
float2 l9_6992=(*sc_set0.UserUniforms).uv2Offset;
l9_6991=l9_6992;
float2 l9_6993=float2(0.0);
l9_6993=l9_6991;
float2 l9_6994=float2(0.0);
l9_6994=(l9_6977*l9_6990)+l9_6993;
l9_6955=l9_6994;
l9_6957=l9_6955;
}
l9_6953=l9_6957;
l9_6949=l9_6953;
l9_6952=l9_6949;
}
else
{
float2 l9_6995=float2(0.0);
l9_6995=l9_6951.Surface_UVCoord0;
l9_6950=l9_6995;
l9_6952=l9_6950;
}
l9_6948=l9_6952;
float2 l9_6996=float2(0.0);
l9_6996=l9_6948;
float2 l9_6997=float2(0.0);
l9_6997=l9_6996;
l9_6941=l9_6997;
l9_6944=l9_6941;
}
else
{
float2 l9_6998=float2(0.0);
l9_6998=l9_6943.Surface_UVCoord0;
l9_6942=l9_6998;
l9_6944=l9_6942;
}
}
}
}
l9_6937=l9_6944;
float2 l9_6999=float2(0.0);
float2 l9_7000=(*sc_set0.UserUniforms).uv3Scale;
l9_6999=l9_7000;
float2 l9_7001=float2(0.0);
l9_7001=l9_6999;
float2 l9_7002=float2(0.0);
float2 l9_7003=(*sc_set0.UserUniforms).uv3Offset;
l9_7002=l9_7003;
float2 l9_7004=float2(0.0);
l9_7004=l9_7002;
float2 l9_7005=float2(0.0);
l9_7005=(l9_6937*l9_7001)+l9_7004;
l9_6864=l9_7005;
l9_6866=l9_6864;
}
l9_6862=l9_6866;
l9_6858=l9_6862;
l9_6861=l9_6858;
}
else
{
float2 l9_7006=float2(0.0);
l9_7006=l9_6860.Surface_UVCoord0;
l9_6859=l9_7006;
l9_6861=l9_6859;
}
l9_6857=l9_6861;
float2 l9_7007=float2(0.0);
l9_7007=l9_6857;
float2 l9_7008=float2(0.0);
l9_7008=l9_7007;
l9_6801=l9_7008;
l9_6804=l9_6801;
}
else
{
float2 l9_7009=float2(0.0);
l9_7009=l9_6803.Surface_UVCoord0;
l9_6802=l9_7009;
l9_6804=l9_6802;
}
}
}
}
l9_6797=l9_6804;
float4 l9_7010=float4(0.0);
int l9_7011;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_7012=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7012=0;
}
else
{
l9_7012=in.varStereoViewID;
}
int l9_7013=l9_7012;
l9_7011=1-l9_7013;
}
else
{
int l9_7014=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7014=0;
}
else
{
l9_7014=in.varStereoViewID;
}
int l9_7015=l9_7014;
l9_7011=l9_7015;
}
int l9_7016=l9_7011;
int l9_7017=materialParamsTexLayout_tmp;
int l9_7018=l9_7016;
float2 l9_7019=l9_6797;
bool l9_7020=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 l9_7021=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 l9_7022=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool l9_7023=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 l9_7024=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool l9_7025=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 l9_7026=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float l9_7027=0.0;
bool l9_7028=l9_7025&&(!l9_7023);
float l9_7029=1.0;
float l9_7030=l9_7019.x;
int l9_7031=l9_7022.x;
if (l9_7031==1)
{
l9_7030=fract(l9_7030);
}
else
{
if (l9_7031==2)
{
float l9_7032=fract(l9_7030);
float l9_7033=l9_7030-l9_7032;
float l9_7034=step(0.25,fract(l9_7033*0.5));
l9_7030=mix(l9_7032,1.0-l9_7032,fast::clamp(l9_7034,0.0,1.0));
}
}
l9_7019.x=l9_7030;
float l9_7035=l9_7019.y;
int l9_7036=l9_7022.y;
if (l9_7036==1)
{
l9_7035=fract(l9_7035);
}
else
{
if (l9_7036==2)
{
float l9_7037=fract(l9_7035);
float l9_7038=l9_7035-l9_7037;
float l9_7039=step(0.25,fract(l9_7038*0.5));
l9_7035=mix(l9_7037,1.0-l9_7037,fast::clamp(l9_7039,0.0,1.0));
}
}
l9_7019.y=l9_7035;
if (l9_7023)
{
bool l9_7040=l9_7025;
bool l9_7041;
if (l9_7040)
{
l9_7041=l9_7022.x==3;
}
else
{
l9_7041=l9_7040;
}
float l9_7042=l9_7019.x;
float l9_7043=l9_7024.x;
float l9_7044=l9_7024.z;
bool l9_7045=l9_7041;
float l9_7046=l9_7029;
float l9_7047=fast::clamp(l9_7042,l9_7043,l9_7044);
float l9_7048=step(abs(l9_7042-l9_7047),9.9999997e-06);
l9_7046*=(l9_7048+((1.0-float(l9_7045))*(1.0-l9_7048)));
l9_7042=l9_7047;
l9_7019.x=l9_7042;
l9_7029=l9_7046;
bool l9_7049=l9_7025;
bool l9_7050;
if (l9_7049)
{
l9_7050=l9_7022.y==3;
}
else
{
l9_7050=l9_7049;
}
float l9_7051=l9_7019.y;
float l9_7052=l9_7024.y;
float l9_7053=l9_7024.w;
bool l9_7054=l9_7050;
float l9_7055=l9_7029;
float l9_7056=fast::clamp(l9_7051,l9_7052,l9_7053);
float l9_7057=step(abs(l9_7051-l9_7056),9.9999997e-06);
l9_7055*=(l9_7057+((1.0-float(l9_7054))*(1.0-l9_7057)));
l9_7051=l9_7056;
l9_7019.y=l9_7051;
l9_7029=l9_7055;
}
float2 l9_7058=l9_7019;
bool l9_7059=l9_7020;
float3x3 l9_7060=l9_7021;
if (l9_7059)
{
l9_7058=float2((l9_7060*float3(l9_7058,1.0)).xy);
}
float2 l9_7061=l9_7058;
l9_7019=l9_7061;
float l9_7062=l9_7019.x;
int l9_7063=l9_7022.x;
bool l9_7064=l9_7028;
float l9_7065=l9_7029;
if ((l9_7063==0)||(l9_7063==3))
{
float l9_7066=l9_7062;
float l9_7067=0.0;
float l9_7068=1.0;
bool l9_7069=l9_7064;
float l9_7070=l9_7065;
float l9_7071=fast::clamp(l9_7066,l9_7067,l9_7068);
float l9_7072=step(abs(l9_7066-l9_7071),9.9999997e-06);
l9_7070*=(l9_7072+((1.0-float(l9_7069))*(1.0-l9_7072)));
l9_7066=l9_7071;
l9_7062=l9_7066;
l9_7065=l9_7070;
}
l9_7019.x=l9_7062;
l9_7029=l9_7065;
float l9_7073=l9_7019.y;
int l9_7074=l9_7022.y;
bool l9_7075=l9_7028;
float l9_7076=l9_7029;
if ((l9_7074==0)||(l9_7074==3))
{
float l9_7077=l9_7073;
float l9_7078=0.0;
float l9_7079=1.0;
bool l9_7080=l9_7075;
float l9_7081=l9_7076;
float l9_7082=fast::clamp(l9_7077,l9_7078,l9_7079);
float l9_7083=step(abs(l9_7077-l9_7082),9.9999997e-06);
l9_7081*=(l9_7083+((1.0-float(l9_7080))*(1.0-l9_7083)));
l9_7077=l9_7082;
l9_7073=l9_7077;
l9_7076=l9_7081;
}
l9_7019.y=l9_7073;
l9_7029=l9_7076;
float2 l9_7084=l9_7019;
int l9_7085=l9_7017;
int l9_7086=l9_7018;
float l9_7087=l9_7027;
float2 l9_7088=l9_7084;
int l9_7089=l9_7085;
int l9_7090=l9_7086;
float3 l9_7091=float3(0.0);
if (l9_7089==0)
{
l9_7091=float3(l9_7088,0.0);
}
else
{
if (l9_7089==1)
{
l9_7091=float3(l9_7088.x,(l9_7088.y*0.5)+(0.5-(float(l9_7090)*0.5)),0.0);
}
else
{
l9_7091=float3(l9_7088,float(l9_7090));
}
}
float3 l9_7092=l9_7091;
float3 l9_7093=l9_7092;
float4 l9_7094=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_7093.xy,bias(l9_7087));
float4 l9_7095=l9_7094;
if (l9_7025)
{
l9_7095=mix(l9_7026,l9_7095,float4(l9_7029));
}
float4 l9_7096=l9_7095;
l9_7010=l9_7096;
float l9_7097=0.0;
float2 l9_7098=l9_7010.xy;
float l9_7099=l9_7098.x;
l9_7097=l9_7099;
float l9_7100=0.0;
l9_7100=l9_6796*l9_7097;
float3 l9_7101=float3(0.0);
l9_7101=l9_6793*float3(l9_7100);
float3 l9_7102=float3(0.0);
l9_7102=mix((*sc_set0.UserUniforms).Port_Input0_N239,l9_7101,float3(l9_7100));
float3 l9_7103=float3(0.0);
l9_7103=(float3(l9_6792)*l9_7102)*l9_7102;
float3 l9_7104=float3(0.0);
float3 l9_7105=float3(0.0);
float3 l9_7106=float3(0.0);
ssGlobals l9_7107=l9_6787;
float3 l9_7108;
if (NODE_38_DROPLIST_ITEM_tmp==3)
{
float4 l9_7109=float4(0.0);
l9_7109=l9_7107.VertexColor;
float2 l9_7110=float2(0.0);
float2 l9_7111=float2(0.0);
float2 l9_7112=float2(0.0);
float2 l9_7113=float2(0.0);
float2 l9_7114=float2(0.0);
float2 l9_7115=float2(0.0);
ssGlobals l9_7116=l9_7107;
float2 l9_7117;
if (NODE_221_DROPLIST_ITEM_tmp==0)
{
float2 l9_7118=float2(0.0);
l9_7118=l9_7116.Surface_UVCoord0;
l9_7111=l9_7118;
l9_7117=l9_7111;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==1)
{
float2 l9_7119=float2(0.0);
l9_7119=l9_7116.Surface_UVCoord1;
l9_7112=l9_7119;
l9_7117=l9_7112;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==2)
{
float2 l9_7120=float2(0.0);
float2 l9_7121=float2(0.0);
float2 l9_7122=float2(0.0);
ssGlobals l9_7123=l9_7116;
float2 l9_7124;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_7125=float2(0.0);
float2 l9_7126=float2(0.0);
float2 l9_7127=float2(0.0);
ssGlobals l9_7128=l9_7123;
float2 l9_7129;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_7130=float2(0.0);
float2 l9_7131=float2(0.0);
float2 l9_7132=float2(0.0);
float2 l9_7133=float2(0.0);
float2 l9_7134=float2(0.0);
ssGlobals l9_7135=l9_7128;
float2 l9_7136;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7137=float2(0.0);
l9_7137=l9_7135.Surface_UVCoord0;
l9_7131=l9_7137;
l9_7136=l9_7131;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7138=float2(0.0);
l9_7138=l9_7135.Surface_UVCoord1;
l9_7132=l9_7138;
l9_7136=l9_7132;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7139=float2(0.0);
l9_7139=l9_7135.gScreenCoord;
l9_7133=l9_7139;
l9_7136=l9_7133;
}
else
{
float2 l9_7140=float2(0.0);
l9_7140=l9_7135.Surface_UVCoord0;
l9_7134=l9_7140;
l9_7136=l9_7134;
}
}
}
l9_7130=l9_7136;
float2 l9_7141=float2(0.0);
float2 l9_7142=(*sc_set0.UserUniforms).uv2Scale;
l9_7141=l9_7142;
float2 l9_7143=float2(0.0);
l9_7143=l9_7141;
float2 l9_7144=float2(0.0);
float2 l9_7145=(*sc_set0.UserUniforms).uv2Offset;
l9_7144=l9_7145;
float2 l9_7146=float2(0.0);
l9_7146=l9_7144;
float2 l9_7147=float2(0.0);
l9_7147=(l9_7130*l9_7143)+l9_7146;
float2 l9_7148=float2(0.0);
l9_7148=l9_7147+(l9_7146*(l9_7128.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_7126=l9_7148;
l9_7129=l9_7126;
}
else
{
float2 l9_7149=float2(0.0);
float2 l9_7150=float2(0.0);
float2 l9_7151=float2(0.0);
float2 l9_7152=float2(0.0);
float2 l9_7153=float2(0.0);
ssGlobals l9_7154=l9_7128;
float2 l9_7155;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7156=float2(0.0);
l9_7156=l9_7154.Surface_UVCoord0;
l9_7150=l9_7156;
l9_7155=l9_7150;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7157=float2(0.0);
l9_7157=l9_7154.Surface_UVCoord1;
l9_7151=l9_7157;
l9_7155=l9_7151;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7158=float2(0.0);
l9_7158=l9_7154.gScreenCoord;
l9_7152=l9_7158;
l9_7155=l9_7152;
}
else
{
float2 l9_7159=float2(0.0);
l9_7159=l9_7154.Surface_UVCoord0;
l9_7153=l9_7159;
l9_7155=l9_7153;
}
}
}
l9_7149=l9_7155;
float2 l9_7160=float2(0.0);
float2 l9_7161=(*sc_set0.UserUniforms).uv2Scale;
l9_7160=l9_7161;
float2 l9_7162=float2(0.0);
l9_7162=l9_7160;
float2 l9_7163=float2(0.0);
float2 l9_7164=(*sc_set0.UserUniforms).uv2Offset;
l9_7163=l9_7164;
float2 l9_7165=float2(0.0);
l9_7165=l9_7163;
float2 l9_7166=float2(0.0);
l9_7166=(l9_7149*l9_7162)+l9_7165;
l9_7127=l9_7166;
l9_7129=l9_7127;
}
l9_7125=l9_7129;
l9_7121=l9_7125;
l9_7124=l9_7121;
}
else
{
float2 l9_7167=float2(0.0);
l9_7167=l9_7123.Surface_UVCoord0;
l9_7122=l9_7167;
l9_7124=l9_7122;
}
l9_7120=l9_7124;
float2 l9_7168=float2(0.0);
l9_7168=l9_7120;
float2 l9_7169=float2(0.0);
l9_7169=l9_7168;
l9_7113=l9_7169;
l9_7117=l9_7113;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==3)
{
float2 l9_7170=float2(0.0);
float2 l9_7171=float2(0.0);
float2 l9_7172=float2(0.0);
ssGlobals l9_7173=l9_7116;
float2 l9_7174;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_7175=float2(0.0);
float2 l9_7176=float2(0.0);
float2 l9_7177=float2(0.0);
ssGlobals l9_7178=l9_7173;
float2 l9_7179;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_7180=float2(0.0);
float2 l9_7181=float2(0.0);
float2 l9_7182=float2(0.0);
float2 l9_7183=float2(0.0);
float2 l9_7184=float2(0.0);
float2 l9_7185=float2(0.0);
ssGlobals l9_7186=l9_7178;
float2 l9_7187;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_7188=float2(0.0);
l9_7188=l9_7186.Surface_UVCoord0;
l9_7181=l9_7188;
l9_7187=l9_7181;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_7189=float2(0.0);
l9_7189=l9_7186.Surface_UVCoord1;
l9_7182=l9_7189;
l9_7187=l9_7182;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_7190=float2(0.0);
l9_7190=l9_7186.gScreenCoord;
l9_7183=l9_7190;
l9_7187=l9_7183;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_7191=float2(0.0);
float2 l9_7192=float2(0.0);
float2 l9_7193=float2(0.0);
ssGlobals l9_7194=l9_7186;
float2 l9_7195;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_7196=float2(0.0);
float2 l9_7197=float2(0.0);
float2 l9_7198=float2(0.0);
ssGlobals l9_7199=l9_7194;
float2 l9_7200;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_7201=float2(0.0);
float2 l9_7202=float2(0.0);
float2 l9_7203=float2(0.0);
float2 l9_7204=float2(0.0);
float2 l9_7205=float2(0.0);
ssGlobals l9_7206=l9_7199;
float2 l9_7207;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7208=float2(0.0);
l9_7208=l9_7206.Surface_UVCoord0;
l9_7202=l9_7208;
l9_7207=l9_7202;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7209=float2(0.0);
l9_7209=l9_7206.Surface_UVCoord1;
l9_7203=l9_7209;
l9_7207=l9_7203;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7210=float2(0.0);
l9_7210=l9_7206.gScreenCoord;
l9_7204=l9_7210;
l9_7207=l9_7204;
}
else
{
float2 l9_7211=float2(0.0);
l9_7211=l9_7206.Surface_UVCoord0;
l9_7205=l9_7211;
l9_7207=l9_7205;
}
}
}
l9_7201=l9_7207;
float2 l9_7212=float2(0.0);
float2 l9_7213=(*sc_set0.UserUniforms).uv2Scale;
l9_7212=l9_7213;
float2 l9_7214=float2(0.0);
l9_7214=l9_7212;
float2 l9_7215=float2(0.0);
float2 l9_7216=(*sc_set0.UserUniforms).uv2Offset;
l9_7215=l9_7216;
float2 l9_7217=float2(0.0);
l9_7217=l9_7215;
float2 l9_7218=float2(0.0);
l9_7218=(l9_7201*l9_7214)+l9_7217;
float2 l9_7219=float2(0.0);
l9_7219=l9_7218+(l9_7217*(l9_7199.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_7197=l9_7219;
l9_7200=l9_7197;
}
else
{
float2 l9_7220=float2(0.0);
float2 l9_7221=float2(0.0);
float2 l9_7222=float2(0.0);
float2 l9_7223=float2(0.0);
float2 l9_7224=float2(0.0);
ssGlobals l9_7225=l9_7199;
float2 l9_7226;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7227=float2(0.0);
l9_7227=l9_7225.Surface_UVCoord0;
l9_7221=l9_7227;
l9_7226=l9_7221;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7228=float2(0.0);
l9_7228=l9_7225.Surface_UVCoord1;
l9_7222=l9_7228;
l9_7226=l9_7222;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7229=float2(0.0);
l9_7229=l9_7225.gScreenCoord;
l9_7223=l9_7229;
l9_7226=l9_7223;
}
else
{
float2 l9_7230=float2(0.0);
l9_7230=l9_7225.Surface_UVCoord0;
l9_7224=l9_7230;
l9_7226=l9_7224;
}
}
}
l9_7220=l9_7226;
float2 l9_7231=float2(0.0);
float2 l9_7232=(*sc_set0.UserUniforms).uv2Scale;
l9_7231=l9_7232;
float2 l9_7233=float2(0.0);
l9_7233=l9_7231;
float2 l9_7234=float2(0.0);
float2 l9_7235=(*sc_set0.UserUniforms).uv2Offset;
l9_7234=l9_7235;
float2 l9_7236=float2(0.0);
l9_7236=l9_7234;
float2 l9_7237=float2(0.0);
l9_7237=(l9_7220*l9_7233)+l9_7236;
l9_7198=l9_7237;
l9_7200=l9_7198;
}
l9_7196=l9_7200;
l9_7192=l9_7196;
l9_7195=l9_7192;
}
else
{
float2 l9_7238=float2(0.0);
l9_7238=l9_7194.Surface_UVCoord0;
l9_7193=l9_7238;
l9_7195=l9_7193;
}
l9_7191=l9_7195;
float2 l9_7239=float2(0.0);
l9_7239=l9_7191;
float2 l9_7240=float2(0.0);
l9_7240=l9_7239;
l9_7184=l9_7240;
l9_7187=l9_7184;
}
else
{
float2 l9_7241=float2(0.0);
l9_7241=l9_7186.Surface_UVCoord0;
l9_7185=l9_7241;
l9_7187=l9_7185;
}
}
}
}
l9_7180=l9_7187;
float2 l9_7242=float2(0.0);
float2 l9_7243=(*sc_set0.UserUniforms).uv3Scale;
l9_7242=l9_7243;
float2 l9_7244=float2(0.0);
l9_7244=l9_7242;
float2 l9_7245=float2(0.0);
float2 l9_7246=(*sc_set0.UserUniforms).uv3Offset;
l9_7245=l9_7246;
float2 l9_7247=float2(0.0);
l9_7247=l9_7245;
float2 l9_7248=float2(0.0);
l9_7248=(l9_7180*l9_7244)+l9_7247;
float2 l9_7249=float2(0.0);
l9_7249=l9_7248+(l9_7247*(l9_7178.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_7176=l9_7249;
l9_7179=l9_7176;
}
else
{
float2 l9_7250=float2(0.0);
float2 l9_7251=float2(0.0);
float2 l9_7252=float2(0.0);
float2 l9_7253=float2(0.0);
float2 l9_7254=float2(0.0);
float2 l9_7255=float2(0.0);
ssGlobals l9_7256=l9_7178;
float2 l9_7257;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_7258=float2(0.0);
l9_7258=l9_7256.Surface_UVCoord0;
l9_7251=l9_7258;
l9_7257=l9_7251;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_7259=float2(0.0);
l9_7259=l9_7256.Surface_UVCoord1;
l9_7252=l9_7259;
l9_7257=l9_7252;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_7260=float2(0.0);
l9_7260=l9_7256.gScreenCoord;
l9_7253=l9_7260;
l9_7257=l9_7253;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_7261=float2(0.0);
float2 l9_7262=float2(0.0);
float2 l9_7263=float2(0.0);
ssGlobals l9_7264=l9_7256;
float2 l9_7265;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_7266=float2(0.0);
float2 l9_7267=float2(0.0);
float2 l9_7268=float2(0.0);
ssGlobals l9_7269=l9_7264;
float2 l9_7270;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_7271=float2(0.0);
float2 l9_7272=float2(0.0);
float2 l9_7273=float2(0.0);
float2 l9_7274=float2(0.0);
float2 l9_7275=float2(0.0);
ssGlobals l9_7276=l9_7269;
float2 l9_7277;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7278=float2(0.0);
l9_7278=l9_7276.Surface_UVCoord0;
l9_7272=l9_7278;
l9_7277=l9_7272;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7279=float2(0.0);
l9_7279=l9_7276.Surface_UVCoord1;
l9_7273=l9_7279;
l9_7277=l9_7273;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7280=float2(0.0);
l9_7280=l9_7276.gScreenCoord;
l9_7274=l9_7280;
l9_7277=l9_7274;
}
else
{
float2 l9_7281=float2(0.0);
l9_7281=l9_7276.Surface_UVCoord0;
l9_7275=l9_7281;
l9_7277=l9_7275;
}
}
}
l9_7271=l9_7277;
float2 l9_7282=float2(0.0);
float2 l9_7283=(*sc_set0.UserUniforms).uv2Scale;
l9_7282=l9_7283;
float2 l9_7284=float2(0.0);
l9_7284=l9_7282;
float2 l9_7285=float2(0.0);
float2 l9_7286=(*sc_set0.UserUniforms).uv2Offset;
l9_7285=l9_7286;
float2 l9_7287=float2(0.0);
l9_7287=l9_7285;
float2 l9_7288=float2(0.0);
l9_7288=(l9_7271*l9_7284)+l9_7287;
float2 l9_7289=float2(0.0);
l9_7289=l9_7288+(l9_7287*(l9_7269.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_7267=l9_7289;
l9_7270=l9_7267;
}
else
{
float2 l9_7290=float2(0.0);
float2 l9_7291=float2(0.0);
float2 l9_7292=float2(0.0);
float2 l9_7293=float2(0.0);
float2 l9_7294=float2(0.0);
ssGlobals l9_7295=l9_7269;
float2 l9_7296;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7297=float2(0.0);
l9_7297=l9_7295.Surface_UVCoord0;
l9_7291=l9_7297;
l9_7296=l9_7291;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7298=float2(0.0);
l9_7298=l9_7295.Surface_UVCoord1;
l9_7292=l9_7298;
l9_7296=l9_7292;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7299=float2(0.0);
l9_7299=l9_7295.gScreenCoord;
l9_7293=l9_7299;
l9_7296=l9_7293;
}
else
{
float2 l9_7300=float2(0.0);
l9_7300=l9_7295.Surface_UVCoord0;
l9_7294=l9_7300;
l9_7296=l9_7294;
}
}
}
l9_7290=l9_7296;
float2 l9_7301=float2(0.0);
float2 l9_7302=(*sc_set0.UserUniforms).uv2Scale;
l9_7301=l9_7302;
float2 l9_7303=float2(0.0);
l9_7303=l9_7301;
float2 l9_7304=float2(0.0);
float2 l9_7305=(*sc_set0.UserUniforms).uv2Offset;
l9_7304=l9_7305;
float2 l9_7306=float2(0.0);
l9_7306=l9_7304;
float2 l9_7307=float2(0.0);
l9_7307=(l9_7290*l9_7303)+l9_7306;
l9_7268=l9_7307;
l9_7270=l9_7268;
}
l9_7266=l9_7270;
l9_7262=l9_7266;
l9_7265=l9_7262;
}
else
{
float2 l9_7308=float2(0.0);
l9_7308=l9_7264.Surface_UVCoord0;
l9_7263=l9_7308;
l9_7265=l9_7263;
}
l9_7261=l9_7265;
float2 l9_7309=float2(0.0);
l9_7309=l9_7261;
float2 l9_7310=float2(0.0);
l9_7310=l9_7309;
l9_7254=l9_7310;
l9_7257=l9_7254;
}
else
{
float2 l9_7311=float2(0.0);
l9_7311=l9_7256.Surface_UVCoord0;
l9_7255=l9_7311;
l9_7257=l9_7255;
}
}
}
}
l9_7250=l9_7257;
float2 l9_7312=float2(0.0);
float2 l9_7313=(*sc_set0.UserUniforms).uv3Scale;
l9_7312=l9_7313;
float2 l9_7314=float2(0.0);
l9_7314=l9_7312;
float2 l9_7315=float2(0.0);
float2 l9_7316=(*sc_set0.UserUniforms).uv3Offset;
l9_7315=l9_7316;
float2 l9_7317=float2(0.0);
l9_7317=l9_7315;
float2 l9_7318=float2(0.0);
l9_7318=(l9_7250*l9_7314)+l9_7317;
l9_7177=l9_7318;
l9_7179=l9_7177;
}
l9_7175=l9_7179;
l9_7171=l9_7175;
l9_7174=l9_7171;
}
else
{
float2 l9_7319=float2(0.0);
l9_7319=l9_7173.Surface_UVCoord0;
l9_7172=l9_7319;
l9_7174=l9_7172;
}
l9_7170=l9_7174;
float2 l9_7320=float2(0.0);
l9_7320=l9_7170;
float2 l9_7321=float2(0.0);
l9_7321=l9_7320;
l9_7114=l9_7321;
l9_7117=l9_7114;
}
else
{
float2 l9_7322=float2(0.0);
l9_7322=l9_7116.Surface_UVCoord0;
l9_7115=l9_7322;
l9_7117=l9_7115;
}
}
}
}
l9_7110=l9_7117;
float4 l9_7323=float4(0.0);
int l9_7324;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_7325=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7325=0;
}
else
{
l9_7325=in.varStereoViewID;
}
int l9_7326=l9_7325;
l9_7324=1-l9_7326;
}
else
{
int l9_7327=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7327=0;
}
else
{
l9_7327=in.varStereoViewID;
}
int l9_7328=l9_7327;
l9_7324=l9_7328;
}
int l9_7329=l9_7324;
int l9_7330=materialParamsTexLayout_tmp;
int l9_7331=l9_7329;
float2 l9_7332=l9_7110;
bool l9_7333=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 l9_7334=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 l9_7335=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool l9_7336=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 l9_7337=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool l9_7338=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 l9_7339=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float l9_7340=0.0;
bool l9_7341=l9_7338&&(!l9_7336);
float l9_7342=1.0;
float l9_7343=l9_7332.x;
int l9_7344=l9_7335.x;
if (l9_7344==1)
{
l9_7343=fract(l9_7343);
}
else
{
if (l9_7344==2)
{
float l9_7345=fract(l9_7343);
float l9_7346=l9_7343-l9_7345;
float l9_7347=step(0.25,fract(l9_7346*0.5));
l9_7343=mix(l9_7345,1.0-l9_7345,fast::clamp(l9_7347,0.0,1.0));
}
}
l9_7332.x=l9_7343;
float l9_7348=l9_7332.y;
int l9_7349=l9_7335.y;
if (l9_7349==1)
{
l9_7348=fract(l9_7348);
}
else
{
if (l9_7349==2)
{
float l9_7350=fract(l9_7348);
float l9_7351=l9_7348-l9_7350;
float l9_7352=step(0.25,fract(l9_7351*0.5));
l9_7348=mix(l9_7350,1.0-l9_7350,fast::clamp(l9_7352,0.0,1.0));
}
}
l9_7332.y=l9_7348;
if (l9_7336)
{
bool l9_7353=l9_7338;
bool l9_7354;
if (l9_7353)
{
l9_7354=l9_7335.x==3;
}
else
{
l9_7354=l9_7353;
}
float l9_7355=l9_7332.x;
float l9_7356=l9_7337.x;
float l9_7357=l9_7337.z;
bool l9_7358=l9_7354;
float l9_7359=l9_7342;
float l9_7360=fast::clamp(l9_7355,l9_7356,l9_7357);
float l9_7361=step(abs(l9_7355-l9_7360),9.9999997e-06);
l9_7359*=(l9_7361+((1.0-float(l9_7358))*(1.0-l9_7361)));
l9_7355=l9_7360;
l9_7332.x=l9_7355;
l9_7342=l9_7359;
bool l9_7362=l9_7338;
bool l9_7363;
if (l9_7362)
{
l9_7363=l9_7335.y==3;
}
else
{
l9_7363=l9_7362;
}
float l9_7364=l9_7332.y;
float l9_7365=l9_7337.y;
float l9_7366=l9_7337.w;
bool l9_7367=l9_7363;
float l9_7368=l9_7342;
float l9_7369=fast::clamp(l9_7364,l9_7365,l9_7366);
float l9_7370=step(abs(l9_7364-l9_7369),9.9999997e-06);
l9_7368*=(l9_7370+((1.0-float(l9_7367))*(1.0-l9_7370)));
l9_7364=l9_7369;
l9_7332.y=l9_7364;
l9_7342=l9_7368;
}
float2 l9_7371=l9_7332;
bool l9_7372=l9_7333;
float3x3 l9_7373=l9_7334;
if (l9_7372)
{
l9_7371=float2((l9_7373*float3(l9_7371,1.0)).xy);
}
float2 l9_7374=l9_7371;
l9_7332=l9_7374;
float l9_7375=l9_7332.x;
int l9_7376=l9_7335.x;
bool l9_7377=l9_7341;
float l9_7378=l9_7342;
if ((l9_7376==0)||(l9_7376==3))
{
float l9_7379=l9_7375;
float l9_7380=0.0;
float l9_7381=1.0;
bool l9_7382=l9_7377;
float l9_7383=l9_7378;
float l9_7384=fast::clamp(l9_7379,l9_7380,l9_7381);
float l9_7385=step(abs(l9_7379-l9_7384),9.9999997e-06);
l9_7383*=(l9_7385+((1.0-float(l9_7382))*(1.0-l9_7385)));
l9_7379=l9_7384;
l9_7375=l9_7379;
l9_7378=l9_7383;
}
l9_7332.x=l9_7375;
l9_7342=l9_7378;
float l9_7386=l9_7332.y;
int l9_7387=l9_7335.y;
bool l9_7388=l9_7341;
float l9_7389=l9_7342;
if ((l9_7387==0)||(l9_7387==3))
{
float l9_7390=l9_7386;
float l9_7391=0.0;
float l9_7392=1.0;
bool l9_7393=l9_7388;
float l9_7394=l9_7389;
float l9_7395=fast::clamp(l9_7390,l9_7391,l9_7392);
float l9_7396=step(abs(l9_7390-l9_7395),9.9999997e-06);
l9_7394*=(l9_7396+((1.0-float(l9_7393))*(1.0-l9_7396)));
l9_7390=l9_7395;
l9_7386=l9_7390;
l9_7389=l9_7394;
}
l9_7332.y=l9_7386;
l9_7342=l9_7389;
float2 l9_7397=l9_7332;
int l9_7398=l9_7330;
int l9_7399=l9_7331;
float l9_7400=l9_7340;
float2 l9_7401=l9_7397;
int l9_7402=l9_7398;
int l9_7403=l9_7399;
float3 l9_7404=float3(0.0);
if (l9_7402==0)
{
l9_7404=float3(l9_7401,0.0);
}
else
{
if (l9_7402==1)
{
l9_7404=float3(l9_7401.x,(l9_7401.y*0.5)+(0.5-(float(l9_7403)*0.5)),0.0);
}
else
{
l9_7404=float3(l9_7401,float(l9_7403));
}
}
float3 l9_7405=l9_7404;
float3 l9_7406=l9_7405;
float4 l9_7407=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_7406.xy,bias(l9_7400));
float4 l9_7408=l9_7407;
if (l9_7338)
{
l9_7408=mix(l9_7339,l9_7408,float4(l9_7342));
}
float4 l9_7409=l9_7408;
l9_7323=l9_7409;
float3 l9_7410=float3(0.0);
l9_7410=float3(l9_7323.z,l9_7323.z,l9_7323.z);
float3 l9_7411=float3(0.0);
l9_7411=l9_7109.xyz*l9_7410;
l9_7105=l9_7411;
l9_7108=l9_7105;
}
else
{
float2 l9_7412=float2(0.0);
float2 l9_7413=float2(0.0);
float2 l9_7414=float2(0.0);
float2 l9_7415=float2(0.0);
float2 l9_7416=float2(0.0);
float2 l9_7417=float2(0.0);
ssGlobals l9_7418=l9_7107;
float2 l9_7419;
if (NODE_221_DROPLIST_ITEM_tmp==0)
{
float2 l9_7420=float2(0.0);
l9_7420=l9_7418.Surface_UVCoord0;
l9_7413=l9_7420;
l9_7419=l9_7413;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==1)
{
float2 l9_7421=float2(0.0);
l9_7421=l9_7418.Surface_UVCoord1;
l9_7414=l9_7421;
l9_7419=l9_7414;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==2)
{
float2 l9_7422=float2(0.0);
float2 l9_7423=float2(0.0);
float2 l9_7424=float2(0.0);
ssGlobals l9_7425=l9_7418;
float2 l9_7426;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_7427=float2(0.0);
float2 l9_7428=float2(0.0);
float2 l9_7429=float2(0.0);
ssGlobals l9_7430=l9_7425;
float2 l9_7431;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_7432=float2(0.0);
float2 l9_7433=float2(0.0);
float2 l9_7434=float2(0.0);
float2 l9_7435=float2(0.0);
float2 l9_7436=float2(0.0);
ssGlobals l9_7437=l9_7430;
float2 l9_7438;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7439=float2(0.0);
l9_7439=l9_7437.Surface_UVCoord0;
l9_7433=l9_7439;
l9_7438=l9_7433;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7440=float2(0.0);
l9_7440=l9_7437.Surface_UVCoord1;
l9_7434=l9_7440;
l9_7438=l9_7434;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7441=float2(0.0);
l9_7441=l9_7437.gScreenCoord;
l9_7435=l9_7441;
l9_7438=l9_7435;
}
else
{
float2 l9_7442=float2(0.0);
l9_7442=l9_7437.Surface_UVCoord0;
l9_7436=l9_7442;
l9_7438=l9_7436;
}
}
}
l9_7432=l9_7438;
float2 l9_7443=float2(0.0);
float2 l9_7444=(*sc_set0.UserUniforms).uv2Scale;
l9_7443=l9_7444;
float2 l9_7445=float2(0.0);
l9_7445=l9_7443;
float2 l9_7446=float2(0.0);
float2 l9_7447=(*sc_set0.UserUniforms).uv2Offset;
l9_7446=l9_7447;
float2 l9_7448=float2(0.0);
l9_7448=l9_7446;
float2 l9_7449=float2(0.0);
l9_7449=(l9_7432*l9_7445)+l9_7448;
float2 l9_7450=float2(0.0);
l9_7450=l9_7449+(l9_7448*(l9_7430.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_7428=l9_7450;
l9_7431=l9_7428;
}
else
{
float2 l9_7451=float2(0.0);
float2 l9_7452=float2(0.0);
float2 l9_7453=float2(0.0);
float2 l9_7454=float2(0.0);
float2 l9_7455=float2(0.0);
ssGlobals l9_7456=l9_7430;
float2 l9_7457;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7458=float2(0.0);
l9_7458=l9_7456.Surface_UVCoord0;
l9_7452=l9_7458;
l9_7457=l9_7452;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7459=float2(0.0);
l9_7459=l9_7456.Surface_UVCoord1;
l9_7453=l9_7459;
l9_7457=l9_7453;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7460=float2(0.0);
l9_7460=l9_7456.gScreenCoord;
l9_7454=l9_7460;
l9_7457=l9_7454;
}
else
{
float2 l9_7461=float2(0.0);
l9_7461=l9_7456.Surface_UVCoord0;
l9_7455=l9_7461;
l9_7457=l9_7455;
}
}
}
l9_7451=l9_7457;
float2 l9_7462=float2(0.0);
float2 l9_7463=(*sc_set0.UserUniforms).uv2Scale;
l9_7462=l9_7463;
float2 l9_7464=float2(0.0);
l9_7464=l9_7462;
float2 l9_7465=float2(0.0);
float2 l9_7466=(*sc_set0.UserUniforms).uv2Offset;
l9_7465=l9_7466;
float2 l9_7467=float2(0.0);
l9_7467=l9_7465;
float2 l9_7468=float2(0.0);
l9_7468=(l9_7451*l9_7464)+l9_7467;
l9_7429=l9_7468;
l9_7431=l9_7429;
}
l9_7427=l9_7431;
l9_7423=l9_7427;
l9_7426=l9_7423;
}
else
{
float2 l9_7469=float2(0.0);
l9_7469=l9_7425.Surface_UVCoord0;
l9_7424=l9_7469;
l9_7426=l9_7424;
}
l9_7422=l9_7426;
float2 l9_7470=float2(0.0);
l9_7470=l9_7422;
float2 l9_7471=float2(0.0);
l9_7471=l9_7470;
l9_7415=l9_7471;
l9_7419=l9_7415;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==3)
{
float2 l9_7472=float2(0.0);
float2 l9_7473=float2(0.0);
float2 l9_7474=float2(0.0);
ssGlobals l9_7475=l9_7418;
float2 l9_7476;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_7477=float2(0.0);
float2 l9_7478=float2(0.0);
float2 l9_7479=float2(0.0);
ssGlobals l9_7480=l9_7475;
float2 l9_7481;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_7482=float2(0.0);
float2 l9_7483=float2(0.0);
float2 l9_7484=float2(0.0);
float2 l9_7485=float2(0.0);
float2 l9_7486=float2(0.0);
float2 l9_7487=float2(0.0);
ssGlobals l9_7488=l9_7480;
float2 l9_7489;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_7490=float2(0.0);
l9_7490=l9_7488.Surface_UVCoord0;
l9_7483=l9_7490;
l9_7489=l9_7483;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_7491=float2(0.0);
l9_7491=l9_7488.Surface_UVCoord1;
l9_7484=l9_7491;
l9_7489=l9_7484;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_7492=float2(0.0);
l9_7492=l9_7488.gScreenCoord;
l9_7485=l9_7492;
l9_7489=l9_7485;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_7493=float2(0.0);
float2 l9_7494=float2(0.0);
float2 l9_7495=float2(0.0);
ssGlobals l9_7496=l9_7488;
float2 l9_7497;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_7498=float2(0.0);
float2 l9_7499=float2(0.0);
float2 l9_7500=float2(0.0);
ssGlobals l9_7501=l9_7496;
float2 l9_7502;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_7503=float2(0.0);
float2 l9_7504=float2(0.0);
float2 l9_7505=float2(0.0);
float2 l9_7506=float2(0.0);
float2 l9_7507=float2(0.0);
ssGlobals l9_7508=l9_7501;
float2 l9_7509;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7510=float2(0.0);
l9_7510=l9_7508.Surface_UVCoord0;
l9_7504=l9_7510;
l9_7509=l9_7504;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7511=float2(0.0);
l9_7511=l9_7508.Surface_UVCoord1;
l9_7505=l9_7511;
l9_7509=l9_7505;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7512=float2(0.0);
l9_7512=l9_7508.gScreenCoord;
l9_7506=l9_7512;
l9_7509=l9_7506;
}
else
{
float2 l9_7513=float2(0.0);
l9_7513=l9_7508.Surface_UVCoord0;
l9_7507=l9_7513;
l9_7509=l9_7507;
}
}
}
l9_7503=l9_7509;
float2 l9_7514=float2(0.0);
float2 l9_7515=(*sc_set0.UserUniforms).uv2Scale;
l9_7514=l9_7515;
float2 l9_7516=float2(0.0);
l9_7516=l9_7514;
float2 l9_7517=float2(0.0);
float2 l9_7518=(*sc_set0.UserUniforms).uv2Offset;
l9_7517=l9_7518;
float2 l9_7519=float2(0.0);
l9_7519=l9_7517;
float2 l9_7520=float2(0.0);
l9_7520=(l9_7503*l9_7516)+l9_7519;
float2 l9_7521=float2(0.0);
l9_7521=l9_7520+(l9_7519*(l9_7501.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_7499=l9_7521;
l9_7502=l9_7499;
}
else
{
float2 l9_7522=float2(0.0);
float2 l9_7523=float2(0.0);
float2 l9_7524=float2(0.0);
float2 l9_7525=float2(0.0);
float2 l9_7526=float2(0.0);
ssGlobals l9_7527=l9_7501;
float2 l9_7528;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7529=float2(0.0);
l9_7529=l9_7527.Surface_UVCoord0;
l9_7523=l9_7529;
l9_7528=l9_7523;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7530=float2(0.0);
l9_7530=l9_7527.Surface_UVCoord1;
l9_7524=l9_7530;
l9_7528=l9_7524;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7531=float2(0.0);
l9_7531=l9_7527.gScreenCoord;
l9_7525=l9_7531;
l9_7528=l9_7525;
}
else
{
float2 l9_7532=float2(0.0);
l9_7532=l9_7527.Surface_UVCoord0;
l9_7526=l9_7532;
l9_7528=l9_7526;
}
}
}
l9_7522=l9_7528;
float2 l9_7533=float2(0.0);
float2 l9_7534=(*sc_set0.UserUniforms).uv2Scale;
l9_7533=l9_7534;
float2 l9_7535=float2(0.0);
l9_7535=l9_7533;
float2 l9_7536=float2(0.0);
float2 l9_7537=(*sc_set0.UserUniforms).uv2Offset;
l9_7536=l9_7537;
float2 l9_7538=float2(0.0);
l9_7538=l9_7536;
float2 l9_7539=float2(0.0);
l9_7539=(l9_7522*l9_7535)+l9_7538;
l9_7500=l9_7539;
l9_7502=l9_7500;
}
l9_7498=l9_7502;
l9_7494=l9_7498;
l9_7497=l9_7494;
}
else
{
float2 l9_7540=float2(0.0);
l9_7540=l9_7496.Surface_UVCoord0;
l9_7495=l9_7540;
l9_7497=l9_7495;
}
l9_7493=l9_7497;
float2 l9_7541=float2(0.0);
l9_7541=l9_7493;
float2 l9_7542=float2(0.0);
l9_7542=l9_7541;
l9_7486=l9_7542;
l9_7489=l9_7486;
}
else
{
float2 l9_7543=float2(0.0);
l9_7543=l9_7488.Surface_UVCoord0;
l9_7487=l9_7543;
l9_7489=l9_7487;
}
}
}
}
l9_7482=l9_7489;
float2 l9_7544=float2(0.0);
float2 l9_7545=(*sc_set0.UserUniforms).uv3Scale;
l9_7544=l9_7545;
float2 l9_7546=float2(0.0);
l9_7546=l9_7544;
float2 l9_7547=float2(0.0);
float2 l9_7548=(*sc_set0.UserUniforms).uv3Offset;
l9_7547=l9_7548;
float2 l9_7549=float2(0.0);
l9_7549=l9_7547;
float2 l9_7550=float2(0.0);
l9_7550=(l9_7482*l9_7546)+l9_7549;
float2 l9_7551=float2(0.0);
l9_7551=l9_7550+(l9_7549*(l9_7480.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_7478=l9_7551;
l9_7481=l9_7478;
}
else
{
float2 l9_7552=float2(0.0);
float2 l9_7553=float2(0.0);
float2 l9_7554=float2(0.0);
float2 l9_7555=float2(0.0);
float2 l9_7556=float2(0.0);
float2 l9_7557=float2(0.0);
ssGlobals l9_7558=l9_7480;
float2 l9_7559;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_7560=float2(0.0);
l9_7560=l9_7558.Surface_UVCoord0;
l9_7553=l9_7560;
l9_7559=l9_7553;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_7561=float2(0.0);
l9_7561=l9_7558.Surface_UVCoord1;
l9_7554=l9_7561;
l9_7559=l9_7554;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_7562=float2(0.0);
l9_7562=l9_7558.gScreenCoord;
l9_7555=l9_7562;
l9_7559=l9_7555;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_7563=float2(0.0);
float2 l9_7564=float2(0.0);
float2 l9_7565=float2(0.0);
ssGlobals l9_7566=l9_7558;
float2 l9_7567;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_7568=float2(0.0);
float2 l9_7569=float2(0.0);
float2 l9_7570=float2(0.0);
ssGlobals l9_7571=l9_7566;
float2 l9_7572;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_7573=float2(0.0);
float2 l9_7574=float2(0.0);
float2 l9_7575=float2(0.0);
float2 l9_7576=float2(0.0);
float2 l9_7577=float2(0.0);
ssGlobals l9_7578=l9_7571;
float2 l9_7579;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7580=float2(0.0);
l9_7580=l9_7578.Surface_UVCoord0;
l9_7574=l9_7580;
l9_7579=l9_7574;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7581=float2(0.0);
l9_7581=l9_7578.Surface_UVCoord1;
l9_7575=l9_7581;
l9_7579=l9_7575;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7582=float2(0.0);
l9_7582=l9_7578.gScreenCoord;
l9_7576=l9_7582;
l9_7579=l9_7576;
}
else
{
float2 l9_7583=float2(0.0);
l9_7583=l9_7578.Surface_UVCoord0;
l9_7577=l9_7583;
l9_7579=l9_7577;
}
}
}
l9_7573=l9_7579;
float2 l9_7584=float2(0.0);
float2 l9_7585=(*sc_set0.UserUniforms).uv2Scale;
l9_7584=l9_7585;
float2 l9_7586=float2(0.0);
l9_7586=l9_7584;
float2 l9_7587=float2(0.0);
float2 l9_7588=(*sc_set0.UserUniforms).uv2Offset;
l9_7587=l9_7588;
float2 l9_7589=float2(0.0);
l9_7589=l9_7587;
float2 l9_7590=float2(0.0);
l9_7590=(l9_7573*l9_7586)+l9_7589;
float2 l9_7591=float2(0.0);
l9_7591=l9_7590+(l9_7589*(l9_7571.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_7569=l9_7591;
l9_7572=l9_7569;
}
else
{
float2 l9_7592=float2(0.0);
float2 l9_7593=float2(0.0);
float2 l9_7594=float2(0.0);
float2 l9_7595=float2(0.0);
float2 l9_7596=float2(0.0);
ssGlobals l9_7597=l9_7571;
float2 l9_7598;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_7599=float2(0.0);
l9_7599=l9_7597.Surface_UVCoord0;
l9_7593=l9_7599;
l9_7598=l9_7593;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_7600=float2(0.0);
l9_7600=l9_7597.Surface_UVCoord1;
l9_7594=l9_7600;
l9_7598=l9_7594;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_7601=float2(0.0);
l9_7601=l9_7597.gScreenCoord;
l9_7595=l9_7601;
l9_7598=l9_7595;
}
else
{
float2 l9_7602=float2(0.0);
l9_7602=l9_7597.Surface_UVCoord0;
l9_7596=l9_7602;
l9_7598=l9_7596;
}
}
}
l9_7592=l9_7598;
float2 l9_7603=float2(0.0);
float2 l9_7604=(*sc_set0.UserUniforms).uv2Scale;
l9_7603=l9_7604;
float2 l9_7605=float2(0.0);
l9_7605=l9_7603;
float2 l9_7606=float2(0.0);
float2 l9_7607=(*sc_set0.UserUniforms).uv2Offset;
l9_7606=l9_7607;
float2 l9_7608=float2(0.0);
l9_7608=l9_7606;
float2 l9_7609=float2(0.0);
l9_7609=(l9_7592*l9_7605)+l9_7608;
l9_7570=l9_7609;
l9_7572=l9_7570;
}
l9_7568=l9_7572;
l9_7564=l9_7568;
l9_7567=l9_7564;
}
else
{
float2 l9_7610=float2(0.0);
l9_7610=l9_7566.Surface_UVCoord0;
l9_7565=l9_7610;
l9_7567=l9_7565;
}
l9_7563=l9_7567;
float2 l9_7611=float2(0.0);
l9_7611=l9_7563;
float2 l9_7612=float2(0.0);
l9_7612=l9_7611;
l9_7556=l9_7612;
l9_7559=l9_7556;
}
else
{
float2 l9_7613=float2(0.0);
l9_7613=l9_7558.Surface_UVCoord0;
l9_7557=l9_7613;
l9_7559=l9_7557;
}
}
}
}
l9_7552=l9_7559;
float2 l9_7614=float2(0.0);
float2 l9_7615=(*sc_set0.UserUniforms).uv3Scale;
l9_7614=l9_7615;
float2 l9_7616=float2(0.0);
l9_7616=l9_7614;
float2 l9_7617=float2(0.0);
float2 l9_7618=(*sc_set0.UserUniforms).uv3Offset;
l9_7617=l9_7618;
float2 l9_7619=float2(0.0);
l9_7619=l9_7617;
float2 l9_7620=float2(0.0);
l9_7620=(l9_7552*l9_7616)+l9_7619;
l9_7479=l9_7620;
l9_7481=l9_7479;
}
l9_7477=l9_7481;
l9_7473=l9_7477;
l9_7476=l9_7473;
}
else
{
float2 l9_7621=float2(0.0);
l9_7621=l9_7475.Surface_UVCoord0;
l9_7474=l9_7621;
l9_7476=l9_7474;
}
l9_7472=l9_7476;
float2 l9_7622=float2(0.0);
l9_7622=l9_7472;
float2 l9_7623=float2(0.0);
l9_7623=l9_7622;
l9_7416=l9_7623;
l9_7419=l9_7416;
}
else
{
float2 l9_7624=float2(0.0);
l9_7624=l9_7418.Surface_UVCoord0;
l9_7417=l9_7624;
l9_7419=l9_7417;
}
}
}
}
l9_7412=l9_7419;
float4 l9_7625=float4(0.0);
int l9_7626;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_7627=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7627=0;
}
else
{
l9_7627=in.varStereoViewID;
}
int l9_7628=l9_7627;
l9_7626=1-l9_7628;
}
else
{
int l9_7629=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7629=0;
}
else
{
l9_7629=in.varStereoViewID;
}
int l9_7630=l9_7629;
l9_7626=l9_7630;
}
int l9_7631=l9_7626;
int l9_7632=materialParamsTexLayout_tmp;
int l9_7633=l9_7631;
float2 l9_7634=l9_7412;
bool l9_7635=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 l9_7636=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 l9_7637=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool l9_7638=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 l9_7639=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool l9_7640=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 l9_7641=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float l9_7642=0.0;
bool l9_7643=l9_7640&&(!l9_7638);
float l9_7644=1.0;
float l9_7645=l9_7634.x;
int l9_7646=l9_7637.x;
if (l9_7646==1)
{
l9_7645=fract(l9_7645);
}
else
{
if (l9_7646==2)
{
float l9_7647=fract(l9_7645);
float l9_7648=l9_7645-l9_7647;
float l9_7649=step(0.25,fract(l9_7648*0.5));
l9_7645=mix(l9_7647,1.0-l9_7647,fast::clamp(l9_7649,0.0,1.0));
}
}
l9_7634.x=l9_7645;
float l9_7650=l9_7634.y;
int l9_7651=l9_7637.y;
if (l9_7651==1)
{
l9_7650=fract(l9_7650);
}
else
{
if (l9_7651==2)
{
float l9_7652=fract(l9_7650);
float l9_7653=l9_7650-l9_7652;
float l9_7654=step(0.25,fract(l9_7653*0.5));
l9_7650=mix(l9_7652,1.0-l9_7652,fast::clamp(l9_7654,0.0,1.0));
}
}
l9_7634.y=l9_7650;
if (l9_7638)
{
bool l9_7655=l9_7640;
bool l9_7656;
if (l9_7655)
{
l9_7656=l9_7637.x==3;
}
else
{
l9_7656=l9_7655;
}
float l9_7657=l9_7634.x;
float l9_7658=l9_7639.x;
float l9_7659=l9_7639.z;
bool l9_7660=l9_7656;
float l9_7661=l9_7644;
float l9_7662=fast::clamp(l9_7657,l9_7658,l9_7659);
float l9_7663=step(abs(l9_7657-l9_7662),9.9999997e-06);
l9_7661*=(l9_7663+((1.0-float(l9_7660))*(1.0-l9_7663)));
l9_7657=l9_7662;
l9_7634.x=l9_7657;
l9_7644=l9_7661;
bool l9_7664=l9_7640;
bool l9_7665;
if (l9_7664)
{
l9_7665=l9_7637.y==3;
}
else
{
l9_7665=l9_7664;
}
float l9_7666=l9_7634.y;
float l9_7667=l9_7639.y;
float l9_7668=l9_7639.w;
bool l9_7669=l9_7665;
float l9_7670=l9_7644;
float l9_7671=fast::clamp(l9_7666,l9_7667,l9_7668);
float l9_7672=step(abs(l9_7666-l9_7671),9.9999997e-06);
l9_7670*=(l9_7672+((1.0-float(l9_7669))*(1.0-l9_7672)));
l9_7666=l9_7671;
l9_7634.y=l9_7666;
l9_7644=l9_7670;
}
float2 l9_7673=l9_7634;
bool l9_7674=l9_7635;
float3x3 l9_7675=l9_7636;
if (l9_7674)
{
l9_7673=float2((l9_7675*float3(l9_7673,1.0)).xy);
}
float2 l9_7676=l9_7673;
l9_7634=l9_7676;
float l9_7677=l9_7634.x;
int l9_7678=l9_7637.x;
bool l9_7679=l9_7643;
float l9_7680=l9_7644;
if ((l9_7678==0)||(l9_7678==3))
{
float l9_7681=l9_7677;
float l9_7682=0.0;
float l9_7683=1.0;
bool l9_7684=l9_7679;
float l9_7685=l9_7680;
float l9_7686=fast::clamp(l9_7681,l9_7682,l9_7683);
float l9_7687=step(abs(l9_7681-l9_7686),9.9999997e-06);
l9_7685*=(l9_7687+((1.0-float(l9_7684))*(1.0-l9_7687)));
l9_7681=l9_7686;
l9_7677=l9_7681;
l9_7680=l9_7685;
}
l9_7634.x=l9_7677;
l9_7644=l9_7680;
float l9_7688=l9_7634.y;
int l9_7689=l9_7637.y;
bool l9_7690=l9_7643;
float l9_7691=l9_7644;
if ((l9_7689==0)||(l9_7689==3))
{
float l9_7692=l9_7688;
float l9_7693=0.0;
float l9_7694=1.0;
bool l9_7695=l9_7690;
float l9_7696=l9_7691;
float l9_7697=fast::clamp(l9_7692,l9_7693,l9_7694);
float l9_7698=step(abs(l9_7692-l9_7697),9.9999997e-06);
l9_7696*=(l9_7698+((1.0-float(l9_7695))*(1.0-l9_7698)));
l9_7692=l9_7697;
l9_7688=l9_7692;
l9_7691=l9_7696;
}
l9_7634.y=l9_7688;
l9_7644=l9_7691;
float2 l9_7699=l9_7634;
int l9_7700=l9_7632;
int l9_7701=l9_7633;
float l9_7702=l9_7642;
float2 l9_7703=l9_7699;
int l9_7704=l9_7700;
int l9_7705=l9_7701;
float3 l9_7706=float3(0.0);
if (l9_7704==0)
{
l9_7706=float3(l9_7703,0.0);
}
else
{
if (l9_7704==1)
{
l9_7706=float3(l9_7703.x,(l9_7703.y*0.5)+(0.5-(float(l9_7705)*0.5)),0.0);
}
else
{
l9_7706=float3(l9_7703,float(l9_7705));
}
}
float3 l9_7707=l9_7706;
float3 l9_7708=l9_7707;
float4 l9_7709=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_7708.xy,bias(l9_7702));
float4 l9_7710=l9_7709;
if (l9_7640)
{
l9_7710=mix(l9_7641,l9_7710,float4(l9_7644));
}
float4 l9_7711=l9_7710;
l9_7625=l9_7711;
float3 l9_7712=float3(0.0);
l9_7712=float3(l9_7625.z,l9_7625.z,l9_7625.z);
l9_7106=l9_7712;
l9_7108=l9_7106;
}
l9_7104=l9_7108;
float3 l9_7713=float3(0.0);
l9_7713=mix(l9_7103,(*sc_set0.UserUniforms).Port_Input1_N322,l9_7104);
float l9_7714=0.0;
float l9_7715=(*sc_set0.UserUniforms).specularAoIntensity;
l9_7714=l9_7715;
float l9_7716=0.0;
l9_7716=l9_7714;
float3 l9_7717=float3(0.0);
l9_7717=mix((*sc_set0.UserUniforms).Port_Input0_N325,l9_7713,float3(l9_7716));
l9_6785=l9_7717;
l9_6788=l9_6785;
}
else
{
l9_6788=l9_6786;
}
l9_6784=l9_6788;
param_63=l9_6784;
param_64=param_63;
}
Result_N79=param_64;
float3 Export_N232=float3(0.0);
Export_N232=Result_N79;
float4 Output_N36=float4(0.0);
float3 param_66=Export_N364.xyz;
float param_67=Export_N158;
float3 param_68=Export_N334;
float3 param_69=Export_N300;
float param_70=Export_N222;
float param_71=Export_N224;
float3 param_72=Export_N230;
float3 param_73=Export_N232;
ssGlobals param_75=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_75.BumpedNormal=param_68;
}
param_67=fast::clamp(param_67,0.0,1.0);
float l9_7718=param_67;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_7718<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_7719=gl_FragCoord;
float2 l9_7720=floor(mod(l9_7719.xy,float2(4.0)));
float l9_7721=(mod(dot(l9_7720,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_7718<l9_7721)
{
discard_fragment();
}
}
param_66=fast::max(param_66,float3(0.0));
float4 param_74;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_74=float4(param_66,param_67);
}
else
{
param_69=fast::max(param_69,float3(0.0));
param_70=fast::clamp(param_70,0.0,1.0);
param_71=fast::clamp(param_71,0.0,1.0);
param_72=fast::clamp(param_72,float3(0.0),float3(1.0));
param_73=fast::clamp(param_73,float3(0.0),float3(1.0));
float3 l9_7722=param_66;
float l9_7723=param_67;
float3 l9_7724=param_75.BumpedNormal;
float3 l9_7725=param_75.PositionWS;
float3 l9_7726=param_75.ViewDirWS;
float3 l9_7727=param_69;
float l9_7728=param_70;
float l9_7729=param_71;
float3 l9_7730=param_72;
float3 l9_7731=param_73;
param_74=ngsCalculateLighting(l9_7722,l9_7723,l9_7724,l9_7725,l9_7726,l9_7727,l9_7728,l9_7729,l9_7730,l9_7731,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,out.FragColor0);
}
param_74=fast::max(param_74,float4(0.0));
Output_N36=param_74;
FinalColor=Output_N36;
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param_76=FinalColor;
if ((int(sc_RayTracingCasterForceOpaque_tmp)!=0))
{
param_76.w=1.0;
}
float4 l9_7732=fast::max(param_76,float4(0.0));
float4 param_77=l9_7732;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_77.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=param_77;
return out;
}
float4 param_78=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_7733=param_78;
float4 l9_7734=l9_7733;
float l9_7735=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_7735=l9_7734.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_7735=fast::clamp(l9_7734.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_7735=fast::clamp(dot(l9_7734.xyz,float3(l9_7734.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_7735=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_7735=(1.0-dot(l9_7734.xyz,float3(0.33333001)))*l9_7734.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_7735=(1.0-fast::clamp(dot(l9_7734.xyz,float3(1.0)),0.0,1.0))*l9_7734.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_7735=fast::clamp(dot(l9_7734.xyz,float3(1.0)),0.0,1.0)*l9_7734.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_7735=fast::clamp(dot(l9_7734.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_7735=fast::clamp(dot(l9_7734.xyz,float3(1.0)),0.0,1.0)*l9_7734.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_7735=dot(l9_7734.xyz,float3(0.33333001))*l9_7734.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_7735=1.0-fast::clamp(dot(l9_7734.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_7735=fast::clamp(dot(l9_7734.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_7736=l9_7735;
float l9_7737=l9_7736;
float l9_7738=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_7737;
float3 l9_7739=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_7733.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_7740=float4(l9_7739.x,l9_7739.y,l9_7739.z,l9_7738);
param_78=l9_7740;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_78=float4(param_78.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_7741=param_78;
float4 l9_7742=float4(0.0);
float4 l9_7743=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_7744=out.FragColor0;
float4 l9_7745=l9_7744;
l9_7743=l9_7745;
}
else
{
float4 l9_7746=gl_FragCoord;
float2 l9_7747=l9_7746.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_7748=l9_7747;
float2 l9_7749=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_7750=1;
int l9_7751=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7751=0;
}
else
{
l9_7751=in.varStereoViewID;
}
int l9_7752=l9_7751;
int l9_7753=l9_7752;
float3 l9_7754=float3(l9_7748,0.0);
int l9_7755=l9_7750;
int l9_7756=l9_7753;
if (l9_7755==1)
{
l9_7754.y=((2.0*l9_7754.y)+float(l9_7756))-1.0;
}
float2 l9_7757=l9_7754.xy;
l9_7749=l9_7757;
}
else
{
l9_7749=l9_7748;
}
float2 l9_7758=l9_7749;
float2 l9_7759=l9_7758;
float2 l9_7760=l9_7759;
float2 l9_7761=l9_7760;
float l9_7762=0.0;
int l9_7763;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_7764=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7764=0;
}
else
{
l9_7764=in.varStereoViewID;
}
int l9_7765=l9_7764;
l9_7763=1-l9_7765;
}
else
{
int l9_7766=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7766=0;
}
else
{
l9_7766=in.varStereoViewID;
}
int l9_7767=l9_7766;
l9_7763=l9_7767;
}
int l9_7768=l9_7763;
float2 l9_7769=l9_7761;
int l9_7770=sc_ScreenTextureLayout_tmp;
int l9_7771=l9_7768;
float l9_7772=l9_7762;
float2 l9_7773=l9_7769;
int l9_7774=l9_7770;
int l9_7775=l9_7771;
float3 l9_7776=float3(0.0);
if (l9_7774==0)
{
l9_7776=float3(l9_7773,0.0);
}
else
{
if (l9_7774==1)
{
l9_7776=float3(l9_7773.x,(l9_7773.y*0.5)+(0.5-(float(l9_7775)*0.5)),0.0);
}
else
{
l9_7776=float3(l9_7773,float(l9_7775));
}
}
float3 l9_7777=l9_7776;
float3 l9_7778=l9_7777;
float4 l9_7779=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_7778.xy,bias(l9_7772));
float4 l9_7780=l9_7779;
float4 l9_7781=l9_7780;
l9_7743=l9_7781;
}
float4 l9_7782=l9_7743;
float3 l9_7783=l9_7782.xyz;
float3 l9_7784=l9_7783;
float3 l9_7785=l9_7741.xyz;
float3 l9_7786=definedBlend(l9_7784,l9_7785,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_7742=float4(l9_7786.x,l9_7786.y,l9_7786.z,l9_7742.w);
float3 l9_7787=mix(l9_7783,l9_7742.xyz,float3(l9_7741.w));
l9_7742=float4(l9_7787.x,l9_7787.y,l9_7787.z,l9_7742.w);
l9_7742.w=1.0;
float4 l9_7788=l9_7742;
param_78=l9_7788;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_7789=float4(in.varScreenPos.xyz,1.0);
param_78=l9_7789;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_7790=gl_FragCoord;
float l9_7791=fast::clamp(abs(l9_7790.z),0.0,1.0);
float4 l9_7792=float4(l9_7791,1.0-l9_7791,1.0,1.0);
param_78=l9_7792;
}
else
{
float4 l9_7793=param_78;
float4 l9_7794=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_7794=float4(mix(float3(1.0),l9_7793.xyz,float3(l9_7793.w)),l9_7793.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_7795=l9_7793.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_7795=fast::clamp(l9_7795,0.0,1.0);
}
l9_7794=float4(l9_7793.xyz*l9_7795,l9_7795);
}
else
{
l9_7794=l9_7793;
}
}
float4 l9_7796=l9_7794;
param_78=l9_7796;
}
}
}
}
}
float4 l9_7797=param_78;
FinalColor=l9_7797;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_7798=float4(0.0);
l9_7798=float4(0.0);
float4 l9_7799=l9_7798;
float4 Cost=l9_7799;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_79=in.varPos;
float4 param_80=FinalColor;
FinalColor=sc_OutputMotionVectorsIfNeeded(param_79,param_80,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_81=FinalColor;
float4 l9_7800=param_81;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_7800.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_7800;
return out;
}
} // FRAGMENT SHADER

namespace SNAP_RECV {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 BumpedNormal;
float3 ViewDirWS;
float3 PositionWS;
float4 VertexColor;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float2 gScreenCoord;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float3 SurfacePosition_WorldSpace;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int sc_RayTracingReceiverEffectsMask;
float4 sc_RayTracingReflectionsSize;
float4 sc_RayTracingReflectionsDims;
float4 sc_RayTracingReflectionsView;
float4 sc_RayTracingGlobalIlluminationSize;
float4 sc_RayTracingGlobalIlluminationDims;
float4 sc_RayTracingGlobalIlluminationView;
float4 sc_RayTracingShadowsSize;
float4 sc_RayTracingShadowsDims;
float4 sc_RayTracingShadowsView;
float3 sc_RayTracingOriginScale;
uint sc_RayTracingReceiverMask;
float3 sc_RayTracingOriginScaleInv;
float3 sc_RayTracingOriginOffset;
uint sc_RayTracingReceiverId;
uint4 sc_RayTracingCasterConfiguration;
uint4 sc_RayTracingCasterOffsetPNTC;
uint4 sc_RayTracingCasterOffsetTexture;
uint4 sc_RayTracingCasterFormatPNTC;
uint4 sc_RayTracingCasterFormatTexture;
float4 sc_RayTracingRayDirectionSize;
float4 sc_RayTracingRayDirectionDims;
float4 sc_RayTracingRayDirectionView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float3 recolorRed;
float4 baseColor;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float2 uv2Scale;
float2 uv2Offset;
float2 uv3Scale;
float2 uv3Offset;
float3 recolorGreen;
float3 recolorBlue;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float4 detailNormalTexSize;
float4 detailNormalTexDims;
float4 detailNormalTexView;
float3x3 detailNormalTexTransform;
float4 detailNormalTexUvMinMax;
float4 detailNormalTexBorderColor;
float4 emissiveTexSize;
float4 emissiveTexDims;
float4 emissiveTexView;
float3x3 emissiveTexTransform;
float4 emissiveTexUvMinMax;
float4 emissiveTexBorderColor;
float3 emissiveColor;
float emissiveIntensity;
float reflectionIntensity;
float4 reflectionTexSize;
float4 reflectionTexDims;
float4 reflectionTexView;
float3x3 reflectionTexTransform;
float4 reflectionTexUvMinMax;
float4 reflectionTexBorderColor;
float4 reflectionModulationTexSize;
float4 reflectionModulationTexDims;
float4 reflectionModulationTexView;
float3x3 reflectionModulationTexTransform;
float4 reflectionModulationTexUvMinMax;
float4 reflectionModulationTexBorderColor;
float3 rimColor;
float rimIntensity;
float4 rimColorTexSize;
float4 rimColorTexDims;
float4 rimColorTexView;
float3x3 rimColorTexTransform;
float4 rimColorTexUvMinMax;
float4 rimColorTexBorderColor;
float rimExponent;
float metallic;
float4 materialParamsTexSize;
float4 materialParamsTexDims;
float4 materialParamsTexView;
float3x3 materialParamsTexTransform;
float4 materialParamsTexUvMinMax;
float4 materialParamsTexBorderColor;
float roughness;
float specularAoDarkening;
float specularAoIntensity;
float4 Port_Import_N042;
float Port_Input1_N044;
float Port_Import_N088;
float3 Port_Import_N089;
float4 Port_Import_N384;
float Port_Import_N307;
float Port_Import_N201;
float Port_Import_N012;
float Port_Import_N010;
float Port_Import_N007;
float2 Port_Import_N008;
float2 Port_Import_N009;
float Port_Speed_N022;
float2 Port_Import_N254;
float Port_Import_N065;
float Port_Import_N055;
float Port_Import_N056;
float2 Port_Import_N000;
float2 Port_Import_N060;
float2 Port_Import_N061;
float Port_Speed_N063;
float2 Port_Import_N255;
float4 Port_Default_N369;
float4 Port_Import_N092;
float3 Port_Import_N090;
float3 Port_Import_N091;
float3 Port_Import_N144;
float Port_Value2_N073;
float4 Port_Import_N166;
float Port_Import_N206;
float Port_Import_N043;
float2 Port_Import_N151;
float2 Port_Import_N155;
float Port_Default_N204;
float Port_Import_N047;
float Port_Input1_N002;
float Port_Input2_N072;
float Port_Import_N336;
float Port_Import_N160;
float2 Port_Import_N167;
float2 Port_Import_N207;
float Port_Strength1_N200;
float Port_Import_N095;
float Port_Import_N108;
float3 Port_Default_N113;
float Port_Strength2_N200;
float Port_Import_N273;
float Port_Input1_N274;
float Port_Import_N131;
float Port_Import_N116;
float2 Port_Import_N120;
float2 Port_Import_N127;
float3 Port_Default_N132;
float3 Port_Import_N295;
float Port_Import_N296;
float3 Port_Default_N103;
float Port_Import_N133;
float Port_Import_N231;
float3 Port_Import_N327;
float3 Port_Input1_N257;
float3 Port_Import_N259;
float Port_Input1_N264;
float Port_Input1_N268;
float Port_Input1_N270;
float Port_Import_N123;
float Port_Import_N025;
float2 Port_Import_N030;
float2 Port_Import_N031;
float3 Port_Default_N041;
float3 Port_Default_N134;
float3 Port_Import_N298;
float Port_Import_N172;
float3 Port_Import_N318;
float Port_Import_N319;
float Port_Import_N171;
float Port_Import_N135;
float2 Port_Import_N150;
float2 Port_Import_N152;
float3 Port_Default_N170;
float Port_Import_N339;
float3 Port_Import_N328;
float Port_Import_N340;
float3 Port_Default_N173;
float3 Port_Import_N306;
float Port_Import_N277;
float Port_Import_N280;
float2 Port_Import_N241;
float2 Port_Import_N246;
float Port_Import_N278;
float Port_Import_N186;
float Port_Input1_N187;
float Port_Import_N078;
float3 Port_Value1_N079;
float Port_Import_N281;
float3 Port_Input0_N325;
float Port_Import_N283;
float3 Port_Input0_N239;
float3 Port_Import_N235;
float3 Port_Input1_N322;
float Port_Import_N282;
float3 Port_Default_N326;
float depthRef;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_RayTracingCasterIndexBuffer_obj
{
uint sc_RayTracingCasterTriangles[1];
};
struct sc_RayTracingCasterVertexBuffer_obj
{
float sc_RayTracingCasterVertices[1];
};
struct sc_RayTracingCasterNonAnimatedVertexBuffer_obj
{
float sc_RayTracingCasterNonAnimatedVertices[1];
};
struct sc_Set0
{
const device sc_RayTracingCasterIndexBuffer_obj* sc_RayTracingCasterIndexBuffer [[id(0)]];
const device sc_RayTracingCasterVertexBuffer_obj* sc_RayTracingCasterVertexBuffer [[id(1)]];
const device sc_RayTracingCasterNonAnimatedVertexBuffer_obj* sc_RayTracingCasterNonAnimatedVertexBuffer [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> baseTex [[id(4)]];
texture2d<float> detailNormalTex [[id(5)]];
texture2d<float> emissiveTex [[id(6)]];
texture2d<float> intensityTexture [[id(7)]];
texture2d<float> materialParamsTex [[id(8)]];
texture2d<float> normalTex [[id(9)]];
texture2d<float> opacityTex [[id(10)]];
texture2d<float> reflectionModulationTex [[id(11)]];
texture2d<float> reflectionTex [[id(12)]];
texture2d<float> rimColorTex [[id(13)]];
texture2d<float> sc_EnvmapDiffuse [[id(14)]];
texture2d<float> sc_EnvmapSpecular [[id(15)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(24)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(25)]];
texture2d<float> sc_RayTracingRayDirection [[id(26)]];
texture2d<float> sc_RayTracingReflections [[id(27)]];
texture2d<float> sc_RayTracingShadows [[id(28)]];
texture2d<float> sc_SSAOTexture [[id(29)]];
texture2d<float> sc_ScreenTexture [[id(30)]];
texture2d<float> sc_ShadowTexture [[id(31)]];
sampler baseTexSmpSC [[id(33)]];
sampler detailNormalTexSmpSC [[id(34)]];
sampler emissiveTexSmpSC [[id(35)]];
sampler intensityTextureSmpSC [[id(36)]];
sampler materialParamsTexSmpSC [[id(37)]];
sampler normalTexSmpSC [[id(38)]];
sampler opacityTexSmpSC [[id(39)]];
sampler reflectionModulationTexSmpSC [[id(40)]];
sampler reflectionTexSmpSC [[id(41)]];
sampler rimColorTexSmpSC [[id(42)]];
sampler sc_EnvmapDiffuseSmpSC [[id(43)]];
sampler sc_EnvmapSpecularSmpSC [[id(44)]];
sampler sc_RayTracingGlobalIlluminationSmpSC [[id(46)]];
sampler sc_RayTracingHitCasterIdAndBarycentricSmpSC [[id(47)]];
sampler sc_RayTracingRayDirectionSmpSC [[id(48)]];
sampler sc_RayTracingReflectionsSmpSC [[id(49)]];
sampler sc_RayTracingShadowsSmpSC [[id(50)]];
sampler sc_SSAOTextureSmpSC [[id(51)]];
sampler sc_ScreenTextureSmpSC [[id(52)]];
sampler sc_ShadowTextureSmpSC [[id(53)]];
constant userUniformsObj* UserUniforms [[id(55)]];
};
struct main_recv_out
{
uint4 sc_RayTracingPositionAndMask [[color(0)]];
uint4 sc_RayTracingNormalAndMore [[color(1)]];
};
struct main_recv_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_recv_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
Globals.VertexColor=in.varColor;
Globals.Surface_UVCoord0=in.varPackedTex.xy;
Globals.Surface_UVCoord1=in.varPackedTex.zw;
float4 l9_0=gl_FragCoord;
float2 l9_1=l9_0.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2=l9_1;
float2 l9_3=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4=1;
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=in.varStereoViewID;
}
int l9_6=l9_5;
int l9_7=l9_6;
float3 l9_8=float3(l9_2,0.0);
int l9_9=l9_4;
int l9_10=l9_7;
if (l9_9==1)
{
l9_8.y=((2.0*l9_8.y)+float(l9_10))-1.0;
}
float2 l9_11=l9_8.xy;
l9_3=l9_11;
}
else
{
l9_3=l9_2;
}
float2 l9_12=l9_3;
float2 l9_13=l9_12;
Globals.gScreenCoord=l9_13;
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
float4 Output_N5=float4(0.0);
float4 param=(*sc_set0.UserUniforms).baseColor;
Output_N5=param;
float4 Value_N384=float4(0.0);
Value_N384=Output_N5;
float4 Result_N369=float4(0.0);
float4 param_1=float4(0.0);
float4 param_2=(*sc_set0.UserUniforms).Port_Default_N369;
ssGlobals param_4=Globals;
float4 param_3;
if ((int(Tweak_N121_tmp)!=0))
{
float2 l9_14=float2(0.0);
float2 l9_15=float2(0.0);
float2 l9_16=float2(0.0);
float2 l9_17=float2(0.0);
float2 l9_18=float2(0.0);
float2 l9_19=float2(0.0);
ssGlobals l9_20=param_4;
float2 l9_21;
if (NODE_27_DROPLIST_ITEM_tmp==0)
{
float2 l9_22=float2(0.0);
l9_22=l9_20.Surface_UVCoord0;
l9_15=l9_22;
l9_21=l9_15;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==1)
{
float2 l9_23=float2(0.0);
l9_23=l9_20.Surface_UVCoord1;
l9_16=l9_23;
l9_21=l9_16;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==2)
{
float2 l9_24=float2(0.0);
float2 l9_25=float2(0.0);
float2 l9_26=float2(0.0);
ssGlobals l9_27=l9_20;
float2 l9_28;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_29=float2(0.0);
float2 l9_30=float2(0.0);
float2 l9_31=float2(0.0);
ssGlobals l9_32=l9_27;
float2 l9_33;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_34=float2(0.0);
float2 l9_35=float2(0.0);
float2 l9_36=float2(0.0);
float2 l9_37=float2(0.0);
float2 l9_38=float2(0.0);
ssGlobals l9_39=l9_32;
float2 l9_40;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_41=float2(0.0);
l9_41=l9_39.Surface_UVCoord0;
l9_35=l9_41;
l9_40=l9_35;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_42=float2(0.0);
l9_42=l9_39.Surface_UVCoord1;
l9_36=l9_42;
l9_40=l9_36;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_43=float2(0.0);
l9_43=l9_39.gScreenCoord;
l9_37=l9_43;
l9_40=l9_37;
}
else
{
float2 l9_44=float2(0.0);
l9_44=l9_39.Surface_UVCoord0;
l9_38=l9_44;
l9_40=l9_38;
}
}
}
l9_34=l9_40;
float2 l9_45=float2(0.0);
float2 l9_46=(*sc_set0.UserUniforms).uv2Scale;
l9_45=l9_46;
float2 l9_47=float2(0.0);
l9_47=l9_45;
float2 l9_48=float2(0.0);
float2 l9_49=(*sc_set0.UserUniforms).uv2Offset;
l9_48=l9_49;
float2 l9_50=float2(0.0);
l9_50=l9_48;
float2 l9_51=float2(0.0);
l9_51=(l9_34*l9_47)+l9_50;
float2 l9_52=float2(0.0);
l9_52=l9_51+(l9_50*(l9_32.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_30=l9_52;
l9_33=l9_30;
}
else
{
float2 l9_53=float2(0.0);
float2 l9_54=float2(0.0);
float2 l9_55=float2(0.0);
float2 l9_56=float2(0.0);
float2 l9_57=float2(0.0);
ssGlobals l9_58=l9_32;
float2 l9_59;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_60=float2(0.0);
l9_60=l9_58.Surface_UVCoord0;
l9_54=l9_60;
l9_59=l9_54;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_61=float2(0.0);
l9_61=l9_58.Surface_UVCoord1;
l9_55=l9_61;
l9_59=l9_55;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_62=float2(0.0);
l9_62=l9_58.gScreenCoord;
l9_56=l9_62;
l9_59=l9_56;
}
else
{
float2 l9_63=float2(0.0);
l9_63=l9_58.Surface_UVCoord0;
l9_57=l9_63;
l9_59=l9_57;
}
}
}
l9_53=l9_59;
float2 l9_64=float2(0.0);
float2 l9_65=(*sc_set0.UserUniforms).uv2Scale;
l9_64=l9_65;
float2 l9_66=float2(0.0);
l9_66=l9_64;
float2 l9_67=float2(0.0);
float2 l9_68=(*sc_set0.UserUniforms).uv2Offset;
l9_67=l9_68;
float2 l9_69=float2(0.0);
l9_69=l9_67;
float2 l9_70=float2(0.0);
l9_70=(l9_53*l9_66)+l9_69;
l9_31=l9_70;
l9_33=l9_31;
}
l9_29=l9_33;
l9_25=l9_29;
l9_28=l9_25;
}
else
{
float2 l9_71=float2(0.0);
l9_71=l9_27.Surface_UVCoord0;
l9_26=l9_71;
l9_28=l9_26;
}
l9_24=l9_28;
float2 l9_72=float2(0.0);
l9_72=l9_24;
float2 l9_73=float2(0.0);
l9_73=l9_72;
l9_17=l9_73;
l9_21=l9_17;
}
else
{
if (NODE_27_DROPLIST_ITEM_tmp==3)
{
float2 l9_74=float2(0.0);
float2 l9_75=float2(0.0);
float2 l9_76=float2(0.0);
ssGlobals l9_77=l9_20;
float2 l9_78;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_79=float2(0.0);
float2 l9_80=float2(0.0);
float2 l9_81=float2(0.0);
ssGlobals l9_82=l9_77;
float2 l9_83;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_84=float2(0.0);
float2 l9_85=float2(0.0);
float2 l9_86=float2(0.0);
float2 l9_87=float2(0.0);
float2 l9_88=float2(0.0);
float2 l9_89=float2(0.0);
ssGlobals l9_90=l9_82;
float2 l9_91;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_92=float2(0.0);
l9_92=l9_90.Surface_UVCoord0;
l9_85=l9_92;
l9_91=l9_85;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_93=float2(0.0);
l9_93=l9_90.Surface_UVCoord1;
l9_86=l9_93;
l9_91=l9_86;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_94=float2(0.0);
l9_94=l9_90.gScreenCoord;
l9_87=l9_94;
l9_91=l9_87;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_95=float2(0.0);
float2 l9_96=float2(0.0);
float2 l9_97=float2(0.0);
ssGlobals l9_98=l9_90;
float2 l9_99;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_100=float2(0.0);
float2 l9_101=float2(0.0);
float2 l9_102=float2(0.0);
ssGlobals l9_103=l9_98;
float2 l9_104;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_105=float2(0.0);
float2 l9_106=float2(0.0);
float2 l9_107=float2(0.0);
float2 l9_108=float2(0.0);
float2 l9_109=float2(0.0);
ssGlobals l9_110=l9_103;
float2 l9_111;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_112=float2(0.0);
l9_112=l9_110.Surface_UVCoord0;
l9_106=l9_112;
l9_111=l9_106;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_113=float2(0.0);
l9_113=l9_110.Surface_UVCoord1;
l9_107=l9_113;
l9_111=l9_107;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_114=float2(0.0);
l9_114=l9_110.gScreenCoord;
l9_108=l9_114;
l9_111=l9_108;
}
else
{
float2 l9_115=float2(0.0);
l9_115=l9_110.Surface_UVCoord0;
l9_109=l9_115;
l9_111=l9_109;
}
}
}
l9_105=l9_111;
float2 l9_116=float2(0.0);
float2 l9_117=(*sc_set0.UserUniforms).uv2Scale;
l9_116=l9_117;
float2 l9_118=float2(0.0);
l9_118=l9_116;
float2 l9_119=float2(0.0);
float2 l9_120=(*sc_set0.UserUniforms).uv2Offset;
l9_119=l9_120;
float2 l9_121=float2(0.0);
l9_121=l9_119;
float2 l9_122=float2(0.0);
l9_122=(l9_105*l9_118)+l9_121;
float2 l9_123=float2(0.0);
l9_123=l9_122+(l9_121*(l9_103.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_101=l9_123;
l9_104=l9_101;
}
else
{
float2 l9_124=float2(0.0);
float2 l9_125=float2(0.0);
float2 l9_126=float2(0.0);
float2 l9_127=float2(0.0);
float2 l9_128=float2(0.0);
ssGlobals l9_129=l9_103;
float2 l9_130;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_131=float2(0.0);
l9_131=l9_129.Surface_UVCoord0;
l9_125=l9_131;
l9_130=l9_125;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_132=float2(0.0);
l9_132=l9_129.Surface_UVCoord1;
l9_126=l9_132;
l9_130=l9_126;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_133=float2(0.0);
l9_133=l9_129.gScreenCoord;
l9_127=l9_133;
l9_130=l9_127;
}
else
{
float2 l9_134=float2(0.0);
l9_134=l9_129.Surface_UVCoord0;
l9_128=l9_134;
l9_130=l9_128;
}
}
}
l9_124=l9_130;
float2 l9_135=float2(0.0);
float2 l9_136=(*sc_set0.UserUniforms).uv2Scale;
l9_135=l9_136;
float2 l9_137=float2(0.0);
l9_137=l9_135;
float2 l9_138=float2(0.0);
float2 l9_139=(*sc_set0.UserUniforms).uv2Offset;
l9_138=l9_139;
float2 l9_140=float2(0.0);
l9_140=l9_138;
float2 l9_141=float2(0.0);
l9_141=(l9_124*l9_137)+l9_140;
l9_102=l9_141;
l9_104=l9_102;
}
l9_100=l9_104;
l9_96=l9_100;
l9_99=l9_96;
}
else
{
float2 l9_142=float2(0.0);
l9_142=l9_98.Surface_UVCoord0;
l9_97=l9_142;
l9_99=l9_97;
}
l9_95=l9_99;
float2 l9_143=float2(0.0);
l9_143=l9_95;
float2 l9_144=float2(0.0);
l9_144=l9_143;
l9_88=l9_144;
l9_91=l9_88;
}
else
{
float2 l9_145=float2(0.0);
l9_145=l9_90.Surface_UVCoord0;
l9_89=l9_145;
l9_91=l9_89;
}
}
}
}
l9_84=l9_91;
float2 l9_146=float2(0.0);
float2 l9_147=(*sc_set0.UserUniforms).uv3Scale;
l9_146=l9_147;
float2 l9_148=float2(0.0);
l9_148=l9_146;
float2 l9_149=float2(0.0);
float2 l9_150=(*sc_set0.UserUniforms).uv3Offset;
l9_149=l9_150;
float2 l9_151=float2(0.0);
l9_151=l9_149;
float2 l9_152=float2(0.0);
l9_152=(l9_84*l9_148)+l9_151;
float2 l9_153=float2(0.0);
l9_153=l9_152+(l9_151*(l9_82.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_80=l9_153;
l9_83=l9_80;
}
else
{
float2 l9_154=float2(0.0);
float2 l9_155=float2(0.0);
float2 l9_156=float2(0.0);
float2 l9_157=float2(0.0);
float2 l9_158=float2(0.0);
float2 l9_159=float2(0.0);
ssGlobals l9_160=l9_82;
float2 l9_161;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_162=float2(0.0);
l9_162=l9_160.Surface_UVCoord0;
l9_155=l9_162;
l9_161=l9_155;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_163=float2(0.0);
l9_163=l9_160.Surface_UVCoord1;
l9_156=l9_163;
l9_161=l9_156;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_164=float2(0.0);
l9_164=l9_160.gScreenCoord;
l9_157=l9_164;
l9_161=l9_157;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_165=float2(0.0);
float2 l9_166=float2(0.0);
float2 l9_167=float2(0.0);
ssGlobals l9_168=l9_160;
float2 l9_169;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_170=float2(0.0);
float2 l9_171=float2(0.0);
float2 l9_172=float2(0.0);
ssGlobals l9_173=l9_168;
float2 l9_174;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_175=float2(0.0);
float2 l9_176=float2(0.0);
float2 l9_177=float2(0.0);
float2 l9_178=float2(0.0);
float2 l9_179=float2(0.0);
ssGlobals l9_180=l9_173;
float2 l9_181;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_182=float2(0.0);
l9_182=l9_180.Surface_UVCoord0;
l9_176=l9_182;
l9_181=l9_176;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_183=float2(0.0);
l9_183=l9_180.Surface_UVCoord1;
l9_177=l9_183;
l9_181=l9_177;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_184=float2(0.0);
l9_184=l9_180.gScreenCoord;
l9_178=l9_184;
l9_181=l9_178;
}
else
{
float2 l9_185=float2(0.0);
l9_185=l9_180.Surface_UVCoord0;
l9_179=l9_185;
l9_181=l9_179;
}
}
}
l9_175=l9_181;
float2 l9_186=float2(0.0);
float2 l9_187=(*sc_set0.UserUniforms).uv2Scale;
l9_186=l9_187;
float2 l9_188=float2(0.0);
l9_188=l9_186;
float2 l9_189=float2(0.0);
float2 l9_190=(*sc_set0.UserUniforms).uv2Offset;
l9_189=l9_190;
float2 l9_191=float2(0.0);
l9_191=l9_189;
float2 l9_192=float2(0.0);
l9_192=(l9_175*l9_188)+l9_191;
float2 l9_193=float2(0.0);
l9_193=l9_192+(l9_191*(l9_173.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_171=l9_193;
l9_174=l9_171;
}
else
{
float2 l9_194=float2(0.0);
float2 l9_195=float2(0.0);
float2 l9_196=float2(0.0);
float2 l9_197=float2(0.0);
float2 l9_198=float2(0.0);
ssGlobals l9_199=l9_173;
float2 l9_200;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_201=float2(0.0);
l9_201=l9_199.Surface_UVCoord0;
l9_195=l9_201;
l9_200=l9_195;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_202=float2(0.0);
l9_202=l9_199.Surface_UVCoord1;
l9_196=l9_202;
l9_200=l9_196;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_203=float2(0.0);
l9_203=l9_199.gScreenCoord;
l9_197=l9_203;
l9_200=l9_197;
}
else
{
float2 l9_204=float2(0.0);
l9_204=l9_199.Surface_UVCoord0;
l9_198=l9_204;
l9_200=l9_198;
}
}
}
l9_194=l9_200;
float2 l9_205=float2(0.0);
float2 l9_206=(*sc_set0.UserUniforms).uv2Scale;
l9_205=l9_206;
float2 l9_207=float2(0.0);
l9_207=l9_205;
float2 l9_208=float2(0.0);
float2 l9_209=(*sc_set0.UserUniforms).uv2Offset;
l9_208=l9_209;
float2 l9_210=float2(0.0);
l9_210=l9_208;
float2 l9_211=float2(0.0);
l9_211=(l9_194*l9_207)+l9_210;
l9_172=l9_211;
l9_174=l9_172;
}
l9_170=l9_174;
l9_166=l9_170;
l9_169=l9_166;
}
else
{
float2 l9_212=float2(0.0);
l9_212=l9_168.Surface_UVCoord0;
l9_167=l9_212;
l9_169=l9_167;
}
l9_165=l9_169;
float2 l9_213=float2(0.0);
l9_213=l9_165;
float2 l9_214=float2(0.0);
l9_214=l9_213;
l9_158=l9_214;
l9_161=l9_158;
}
else
{
float2 l9_215=float2(0.0);
l9_215=l9_160.Surface_UVCoord0;
l9_159=l9_215;
l9_161=l9_159;
}
}
}
}
l9_154=l9_161;
float2 l9_216=float2(0.0);
float2 l9_217=(*sc_set0.UserUniforms).uv3Scale;
l9_216=l9_217;
float2 l9_218=float2(0.0);
l9_218=l9_216;
float2 l9_219=float2(0.0);
float2 l9_220=(*sc_set0.UserUniforms).uv3Offset;
l9_219=l9_220;
float2 l9_221=float2(0.0);
l9_221=l9_219;
float2 l9_222=float2(0.0);
l9_222=(l9_154*l9_218)+l9_221;
l9_81=l9_222;
l9_83=l9_81;
}
l9_79=l9_83;
l9_75=l9_79;
l9_78=l9_75;
}
else
{
float2 l9_223=float2(0.0);
l9_223=l9_77.Surface_UVCoord0;
l9_76=l9_223;
l9_78=l9_76;
}
l9_74=l9_78;
float2 l9_224=float2(0.0);
l9_224=l9_74;
float2 l9_225=float2(0.0);
l9_225=l9_224;
l9_18=l9_225;
l9_21=l9_18;
}
else
{
float2 l9_226=float2(0.0);
l9_226=l9_20.Surface_UVCoord0;
l9_19=l9_226;
l9_21=l9_19;
}
}
}
}
l9_14=l9_21;
float4 l9_227=float4(0.0);
int l9_228;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=in.varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=in.varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=baseTexLayout_tmp;
int l9_235=l9_233;
float2 l9_236=l9_14;
bool l9_237=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_238=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_241=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_243=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
l9_227=l9_313;
param_1=l9_227;
param_3=param_1;
}
else
{
param_3=param_2;
}
Result_N369=param_3;
float4 Output_N148=float4(0.0);
Output_N148=Value_N384*Result_N369;
float4 Export_N385=float4(0.0);
Export_N385=Output_N148;
float4 Value_N166=float4(0.0);
Value_N166=Export_N385;
float Output_N168=0.0;
Output_N168=Value_N166.w;
float Result_N204=0.0;
float param_5=0.0;
float param_6=(*sc_set0.UserUniforms).Port_Default_N204;
ssGlobals param_8=Globals;
float param_7;
if ((int(Tweak_N308_tmp)!=0))
{
float2 l9_314=float2(0.0);
float2 l9_315=float2(0.0);
float2 l9_316=float2(0.0);
float2 l9_317=float2(0.0);
float2 l9_318=float2(0.0);
float2 l9_319=float2(0.0);
ssGlobals l9_320=param_8;
float2 l9_321;
if (NODE_69_DROPLIST_ITEM_tmp==0)
{
float2 l9_322=float2(0.0);
l9_322=l9_320.Surface_UVCoord0;
l9_315=l9_322;
l9_321=l9_315;
}
else
{
if (NODE_69_DROPLIST_ITEM_tmp==1)
{
float2 l9_323=float2(0.0);
l9_323=l9_320.Surface_UVCoord1;
l9_316=l9_323;
l9_321=l9_316;
}
else
{
if (NODE_69_DROPLIST_ITEM_tmp==2)
{
float2 l9_324=float2(0.0);
float2 l9_325=float2(0.0);
float2 l9_326=float2(0.0);
ssGlobals l9_327=l9_320;
float2 l9_328;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_329=float2(0.0);
float2 l9_330=float2(0.0);
float2 l9_331=float2(0.0);
ssGlobals l9_332=l9_327;
float2 l9_333;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_334=float2(0.0);
float2 l9_335=float2(0.0);
float2 l9_336=float2(0.0);
float2 l9_337=float2(0.0);
float2 l9_338=float2(0.0);
ssGlobals l9_339=l9_332;
float2 l9_340;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_341=float2(0.0);
l9_341=l9_339.Surface_UVCoord0;
l9_335=l9_341;
l9_340=l9_335;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_342=float2(0.0);
l9_342=l9_339.Surface_UVCoord1;
l9_336=l9_342;
l9_340=l9_336;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_343=float2(0.0);
l9_343=l9_339.gScreenCoord;
l9_337=l9_343;
l9_340=l9_337;
}
else
{
float2 l9_344=float2(0.0);
l9_344=l9_339.Surface_UVCoord0;
l9_338=l9_344;
l9_340=l9_338;
}
}
}
l9_334=l9_340;
float2 l9_345=float2(0.0);
float2 l9_346=(*sc_set0.UserUniforms).uv2Scale;
l9_345=l9_346;
float2 l9_347=float2(0.0);
l9_347=l9_345;
float2 l9_348=float2(0.0);
float2 l9_349=(*sc_set0.UserUniforms).uv2Offset;
l9_348=l9_349;
float2 l9_350=float2(0.0);
l9_350=l9_348;
float2 l9_351=float2(0.0);
l9_351=(l9_334*l9_347)+l9_350;
float2 l9_352=float2(0.0);
l9_352=l9_351+(l9_350*(l9_332.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_330=l9_352;
l9_333=l9_330;
}
else
{
float2 l9_353=float2(0.0);
float2 l9_354=float2(0.0);
float2 l9_355=float2(0.0);
float2 l9_356=float2(0.0);
float2 l9_357=float2(0.0);
ssGlobals l9_358=l9_332;
float2 l9_359;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_360=float2(0.0);
l9_360=l9_358.Surface_UVCoord0;
l9_354=l9_360;
l9_359=l9_354;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_361=float2(0.0);
l9_361=l9_358.Surface_UVCoord1;
l9_355=l9_361;
l9_359=l9_355;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_362=float2(0.0);
l9_362=l9_358.gScreenCoord;
l9_356=l9_362;
l9_359=l9_356;
}
else
{
float2 l9_363=float2(0.0);
l9_363=l9_358.Surface_UVCoord0;
l9_357=l9_363;
l9_359=l9_357;
}
}
}
l9_353=l9_359;
float2 l9_364=float2(0.0);
float2 l9_365=(*sc_set0.UserUniforms).uv2Scale;
l9_364=l9_365;
float2 l9_366=float2(0.0);
l9_366=l9_364;
float2 l9_367=float2(0.0);
float2 l9_368=(*sc_set0.UserUniforms).uv2Offset;
l9_367=l9_368;
float2 l9_369=float2(0.0);
l9_369=l9_367;
float2 l9_370=float2(0.0);
l9_370=(l9_353*l9_366)+l9_369;
l9_331=l9_370;
l9_333=l9_331;
}
l9_329=l9_333;
l9_325=l9_329;
l9_328=l9_325;
}
else
{
float2 l9_371=float2(0.0);
l9_371=l9_327.Surface_UVCoord0;
l9_326=l9_371;
l9_328=l9_326;
}
l9_324=l9_328;
float2 l9_372=float2(0.0);
l9_372=l9_324;
float2 l9_373=float2(0.0);
l9_373=l9_372;
l9_317=l9_373;
l9_321=l9_317;
}
else
{
if (NODE_69_DROPLIST_ITEM_tmp==3)
{
float2 l9_374=float2(0.0);
float2 l9_375=float2(0.0);
float2 l9_376=float2(0.0);
ssGlobals l9_377=l9_320;
float2 l9_378;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_379=float2(0.0);
float2 l9_380=float2(0.0);
float2 l9_381=float2(0.0);
ssGlobals l9_382=l9_377;
float2 l9_383;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_384=float2(0.0);
float2 l9_385=float2(0.0);
float2 l9_386=float2(0.0);
float2 l9_387=float2(0.0);
float2 l9_388=float2(0.0);
float2 l9_389=float2(0.0);
ssGlobals l9_390=l9_382;
float2 l9_391;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_392=float2(0.0);
l9_392=l9_390.Surface_UVCoord0;
l9_385=l9_392;
l9_391=l9_385;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_393=float2(0.0);
l9_393=l9_390.Surface_UVCoord1;
l9_386=l9_393;
l9_391=l9_386;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_394=float2(0.0);
l9_394=l9_390.gScreenCoord;
l9_387=l9_394;
l9_391=l9_387;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_395=float2(0.0);
float2 l9_396=float2(0.0);
float2 l9_397=float2(0.0);
ssGlobals l9_398=l9_390;
float2 l9_399;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_400=float2(0.0);
float2 l9_401=float2(0.0);
float2 l9_402=float2(0.0);
ssGlobals l9_403=l9_398;
float2 l9_404;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_405=float2(0.0);
float2 l9_406=float2(0.0);
float2 l9_407=float2(0.0);
float2 l9_408=float2(0.0);
float2 l9_409=float2(0.0);
ssGlobals l9_410=l9_403;
float2 l9_411;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_412=float2(0.0);
l9_412=l9_410.Surface_UVCoord0;
l9_406=l9_412;
l9_411=l9_406;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_413=float2(0.0);
l9_413=l9_410.Surface_UVCoord1;
l9_407=l9_413;
l9_411=l9_407;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_414=float2(0.0);
l9_414=l9_410.gScreenCoord;
l9_408=l9_414;
l9_411=l9_408;
}
else
{
float2 l9_415=float2(0.0);
l9_415=l9_410.Surface_UVCoord0;
l9_409=l9_415;
l9_411=l9_409;
}
}
}
l9_405=l9_411;
float2 l9_416=float2(0.0);
float2 l9_417=(*sc_set0.UserUniforms).uv2Scale;
l9_416=l9_417;
float2 l9_418=float2(0.0);
l9_418=l9_416;
float2 l9_419=float2(0.0);
float2 l9_420=(*sc_set0.UserUniforms).uv2Offset;
l9_419=l9_420;
float2 l9_421=float2(0.0);
l9_421=l9_419;
float2 l9_422=float2(0.0);
l9_422=(l9_405*l9_418)+l9_421;
float2 l9_423=float2(0.0);
l9_423=l9_422+(l9_421*(l9_403.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_401=l9_423;
l9_404=l9_401;
}
else
{
float2 l9_424=float2(0.0);
float2 l9_425=float2(0.0);
float2 l9_426=float2(0.0);
float2 l9_427=float2(0.0);
float2 l9_428=float2(0.0);
ssGlobals l9_429=l9_403;
float2 l9_430;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_431=float2(0.0);
l9_431=l9_429.Surface_UVCoord0;
l9_425=l9_431;
l9_430=l9_425;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_432=float2(0.0);
l9_432=l9_429.Surface_UVCoord1;
l9_426=l9_432;
l9_430=l9_426;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_433=float2(0.0);
l9_433=l9_429.gScreenCoord;
l9_427=l9_433;
l9_430=l9_427;
}
else
{
float2 l9_434=float2(0.0);
l9_434=l9_429.Surface_UVCoord0;
l9_428=l9_434;
l9_430=l9_428;
}
}
}
l9_424=l9_430;
float2 l9_435=float2(0.0);
float2 l9_436=(*sc_set0.UserUniforms).uv2Scale;
l9_435=l9_436;
float2 l9_437=float2(0.0);
l9_437=l9_435;
float2 l9_438=float2(0.0);
float2 l9_439=(*sc_set0.UserUniforms).uv2Offset;
l9_438=l9_439;
float2 l9_440=float2(0.0);
l9_440=l9_438;
float2 l9_441=float2(0.0);
l9_441=(l9_424*l9_437)+l9_440;
l9_402=l9_441;
l9_404=l9_402;
}
l9_400=l9_404;
l9_396=l9_400;
l9_399=l9_396;
}
else
{
float2 l9_442=float2(0.0);
l9_442=l9_398.Surface_UVCoord0;
l9_397=l9_442;
l9_399=l9_397;
}
l9_395=l9_399;
float2 l9_443=float2(0.0);
l9_443=l9_395;
float2 l9_444=float2(0.0);
l9_444=l9_443;
l9_388=l9_444;
l9_391=l9_388;
}
else
{
float2 l9_445=float2(0.0);
l9_445=l9_390.Surface_UVCoord0;
l9_389=l9_445;
l9_391=l9_389;
}
}
}
}
l9_384=l9_391;
float2 l9_446=float2(0.0);
float2 l9_447=(*sc_set0.UserUniforms).uv3Scale;
l9_446=l9_447;
float2 l9_448=float2(0.0);
l9_448=l9_446;
float2 l9_449=float2(0.0);
float2 l9_450=(*sc_set0.UserUniforms).uv3Offset;
l9_449=l9_450;
float2 l9_451=float2(0.0);
l9_451=l9_449;
float2 l9_452=float2(0.0);
l9_452=(l9_384*l9_448)+l9_451;
float2 l9_453=float2(0.0);
l9_453=l9_452+(l9_451*(l9_382.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_380=l9_453;
l9_383=l9_380;
}
else
{
float2 l9_454=float2(0.0);
float2 l9_455=float2(0.0);
float2 l9_456=float2(0.0);
float2 l9_457=float2(0.0);
float2 l9_458=float2(0.0);
float2 l9_459=float2(0.0);
ssGlobals l9_460=l9_382;
float2 l9_461;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_462=float2(0.0);
l9_462=l9_460.Surface_UVCoord0;
l9_455=l9_462;
l9_461=l9_455;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_463=float2(0.0);
l9_463=l9_460.Surface_UVCoord1;
l9_456=l9_463;
l9_461=l9_456;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_464=float2(0.0);
l9_464=l9_460.gScreenCoord;
l9_457=l9_464;
l9_461=l9_457;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_465=float2(0.0);
float2 l9_466=float2(0.0);
float2 l9_467=float2(0.0);
ssGlobals l9_468=l9_460;
float2 l9_469;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_470=float2(0.0);
float2 l9_471=float2(0.0);
float2 l9_472=float2(0.0);
ssGlobals l9_473=l9_468;
float2 l9_474;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_475=float2(0.0);
float2 l9_476=float2(0.0);
float2 l9_477=float2(0.0);
float2 l9_478=float2(0.0);
float2 l9_479=float2(0.0);
ssGlobals l9_480=l9_473;
float2 l9_481;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_482=float2(0.0);
l9_482=l9_480.Surface_UVCoord0;
l9_476=l9_482;
l9_481=l9_476;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_483=float2(0.0);
l9_483=l9_480.Surface_UVCoord1;
l9_477=l9_483;
l9_481=l9_477;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_484=float2(0.0);
l9_484=l9_480.gScreenCoord;
l9_478=l9_484;
l9_481=l9_478;
}
else
{
float2 l9_485=float2(0.0);
l9_485=l9_480.Surface_UVCoord0;
l9_479=l9_485;
l9_481=l9_479;
}
}
}
l9_475=l9_481;
float2 l9_486=float2(0.0);
float2 l9_487=(*sc_set0.UserUniforms).uv2Scale;
l9_486=l9_487;
float2 l9_488=float2(0.0);
l9_488=l9_486;
float2 l9_489=float2(0.0);
float2 l9_490=(*sc_set0.UserUniforms).uv2Offset;
l9_489=l9_490;
float2 l9_491=float2(0.0);
l9_491=l9_489;
float2 l9_492=float2(0.0);
l9_492=(l9_475*l9_488)+l9_491;
float2 l9_493=float2(0.0);
l9_493=l9_492+(l9_491*(l9_473.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_471=l9_493;
l9_474=l9_471;
}
else
{
float2 l9_494=float2(0.0);
float2 l9_495=float2(0.0);
float2 l9_496=float2(0.0);
float2 l9_497=float2(0.0);
float2 l9_498=float2(0.0);
ssGlobals l9_499=l9_473;
float2 l9_500;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_501=float2(0.0);
l9_501=l9_499.Surface_UVCoord0;
l9_495=l9_501;
l9_500=l9_495;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_502=float2(0.0);
l9_502=l9_499.Surface_UVCoord1;
l9_496=l9_502;
l9_500=l9_496;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_503=float2(0.0);
l9_503=l9_499.gScreenCoord;
l9_497=l9_503;
l9_500=l9_497;
}
else
{
float2 l9_504=float2(0.0);
l9_504=l9_499.Surface_UVCoord0;
l9_498=l9_504;
l9_500=l9_498;
}
}
}
l9_494=l9_500;
float2 l9_505=float2(0.0);
float2 l9_506=(*sc_set0.UserUniforms).uv2Scale;
l9_505=l9_506;
float2 l9_507=float2(0.0);
l9_507=l9_505;
float2 l9_508=float2(0.0);
float2 l9_509=(*sc_set0.UserUniforms).uv2Offset;
l9_508=l9_509;
float2 l9_510=float2(0.0);
l9_510=l9_508;
float2 l9_511=float2(0.0);
l9_511=(l9_494*l9_507)+l9_510;
l9_472=l9_511;
l9_474=l9_472;
}
l9_470=l9_474;
l9_466=l9_470;
l9_469=l9_466;
}
else
{
float2 l9_512=float2(0.0);
l9_512=l9_468.Surface_UVCoord0;
l9_467=l9_512;
l9_469=l9_467;
}
l9_465=l9_469;
float2 l9_513=float2(0.0);
l9_513=l9_465;
float2 l9_514=float2(0.0);
l9_514=l9_513;
l9_458=l9_514;
l9_461=l9_458;
}
else
{
float2 l9_515=float2(0.0);
l9_515=l9_460.Surface_UVCoord0;
l9_459=l9_515;
l9_461=l9_459;
}
}
}
}
l9_454=l9_461;
float2 l9_516=float2(0.0);
float2 l9_517=(*sc_set0.UserUniforms).uv3Scale;
l9_516=l9_517;
float2 l9_518=float2(0.0);
l9_518=l9_516;
float2 l9_519=float2(0.0);
float2 l9_520=(*sc_set0.UserUniforms).uv3Offset;
l9_519=l9_520;
float2 l9_521=float2(0.0);
l9_521=l9_519;
float2 l9_522=float2(0.0);
l9_522=(l9_454*l9_518)+l9_521;
l9_381=l9_522;
l9_383=l9_381;
}
l9_379=l9_383;
l9_375=l9_379;
l9_378=l9_375;
}
else
{
float2 l9_523=float2(0.0);
l9_523=l9_377.Surface_UVCoord0;
l9_376=l9_523;
l9_378=l9_376;
}
l9_374=l9_378;
float2 l9_524=float2(0.0);
l9_524=l9_374;
float2 l9_525=float2(0.0);
l9_525=l9_524;
l9_318=l9_525;
l9_321=l9_318;
}
else
{
float2 l9_526=float2(0.0);
l9_526=l9_320.Surface_UVCoord0;
l9_319=l9_526;
l9_321=l9_319;
}
}
}
}
l9_314=l9_321;
float4 l9_527=float4(0.0);
int l9_528;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_529=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_529=0;
}
else
{
l9_529=in.varStereoViewID;
}
int l9_530=l9_529;
l9_528=1-l9_530;
}
else
{
int l9_531=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_531=0;
}
else
{
l9_531=in.varStereoViewID;
}
int l9_532=l9_531;
l9_528=l9_532;
}
int l9_533=l9_528;
int l9_534=opacityTexLayout_tmp;
int l9_535=l9_533;
float2 l9_536=l9_314;
bool l9_537=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_538=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_539=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_540=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_541=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_542=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_543=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_544=0.0;
bool l9_545=l9_542&&(!l9_540);
float l9_546=1.0;
float l9_547=l9_536.x;
int l9_548=l9_539.x;
if (l9_548==1)
{
l9_547=fract(l9_547);
}
else
{
if (l9_548==2)
{
float l9_549=fract(l9_547);
float l9_550=l9_547-l9_549;
float l9_551=step(0.25,fract(l9_550*0.5));
l9_547=mix(l9_549,1.0-l9_549,fast::clamp(l9_551,0.0,1.0));
}
}
l9_536.x=l9_547;
float l9_552=l9_536.y;
int l9_553=l9_539.y;
if (l9_553==1)
{
l9_552=fract(l9_552);
}
else
{
if (l9_553==2)
{
float l9_554=fract(l9_552);
float l9_555=l9_552-l9_554;
float l9_556=step(0.25,fract(l9_555*0.5));
l9_552=mix(l9_554,1.0-l9_554,fast::clamp(l9_556,0.0,1.0));
}
}
l9_536.y=l9_552;
if (l9_540)
{
bool l9_557=l9_542;
bool l9_558;
if (l9_557)
{
l9_558=l9_539.x==3;
}
else
{
l9_558=l9_557;
}
float l9_559=l9_536.x;
float l9_560=l9_541.x;
float l9_561=l9_541.z;
bool l9_562=l9_558;
float l9_563=l9_546;
float l9_564=fast::clamp(l9_559,l9_560,l9_561);
float l9_565=step(abs(l9_559-l9_564),9.9999997e-06);
l9_563*=(l9_565+((1.0-float(l9_562))*(1.0-l9_565)));
l9_559=l9_564;
l9_536.x=l9_559;
l9_546=l9_563;
bool l9_566=l9_542;
bool l9_567;
if (l9_566)
{
l9_567=l9_539.y==3;
}
else
{
l9_567=l9_566;
}
float l9_568=l9_536.y;
float l9_569=l9_541.y;
float l9_570=l9_541.w;
bool l9_571=l9_567;
float l9_572=l9_546;
float l9_573=fast::clamp(l9_568,l9_569,l9_570);
float l9_574=step(abs(l9_568-l9_573),9.9999997e-06);
l9_572*=(l9_574+((1.0-float(l9_571))*(1.0-l9_574)));
l9_568=l9_573;
l9_536.y=l9_568;
l9_546=l9_572;
}
float2 l9_575=l9_536;
bool l9_576=l9_537;
float3x3 l9_577=l9_538;
if (l9_576)
{
l9_575=float2((l9_577*float3(l9_575,1.0)).xy);
}
float2 l9_578=l9_575;
l9_536=l9_578;
float l9_579=l9_536.x;
int l9_580=l9_539.x;
bool l9_581=l9_545;
float l9_582=l9_546;
if ((l9_580==0)||(l9_580==3))
{
float l9_583=l9_579;
float l9_584=0.0;
float l9_585=1.0;
bool l9_586=l9_581;
float l9_587=l9_582;
float l9_588=fast::clamp(l9_583,l9_584,l9_585);
float l9_589=step(abs(l9_583-l9_588),9.9999997e-06);
l9_587*=(l9_589+((1.0-float(l9_586))*(1.0-l9_589)));
l9_583=l9_588;
l9_579=l9_583;
l9_582=l9_587;
}
l9_536.x=l9_579;
l9_546=l9_582;
float l9_590=l9_536.y;
int l9_591=l9_539.y;
bool l9_592=l9_545;
float l9_593=l9_546;
if ((l9_591==0)||(l9_591==3))
{
float l9_594=l9_590;
float l9_595=0.0;
float l9_596=1.0;
bool l9_597=l9_592;
float l9_598=l9_593;
float l9_599=fast::clamp(l9_594,l9_595,l9_596);
float l9_600=step(abs(l9_594-l9_599),9.9999997e-06);
l9_598*=(l9_600+((1.0-float(l9_597))*(1.0-l9_600)));
l9_594=l9_599;
l9_590=l9_594;
l9_593=l9_598;
}
l9_536.y=l9_590;
l9_546=l9_593;
float2 l9_601=l9_536;
int l9_602=l9_534;
int l9_603=l9_535;
float l9_604=l9_544;
float2 l9_605=l9_601;
int l9_606=l9_602;
int l9_607=l9_603;
float3 l9_608=float3(0.0);
if (l9_606==0)
{
l9_608=float3(l9_605,0.0);
}
else
{
if (l9_606==1)
{
l9_608=float3(l9_605.x,(l9_605.y*0.5)+(0.5-(float(l9_607)*0.5)),0.0);
}
else
{
l9_608=float3(l9_605,float(l9_607));
}
}
float3 l9_609=l9_608;
float3 l9_610=l9_609;
float4 l9_611=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_610.xy,bias(l9_604));
float4 l9_612=l9_611;
if (l9_542)
{
l9_612=mix(l9_543,l9_612,float4(l9_546));
}
float4 l9_613=l9_612;
l9_527=l9_613;
float l9_614=0.0;
l9_614=l9_527.x;
param_5=l9_614;
param_7=param_5;
}
else
{
param_7=param_6;
}
Result_N204=param_7;
float Output_N72=0.0;
float param_9=1.0;
float param_10=(*sc_set0.UserUniforms).Port_Input2_N072;
ssGlobals param_12=Globals;
float param_11;
if (NODE_38_DROPLIST_ITEM_tmp==1)
{
float4 l9_615=float4(0.0);
l9_615=param_12.VertexColor;
float l9_616=0.0;
l9_616=l9_615.w;
param_9=l9_616;
param_11=param_9;
}
else
{
param_11=param_10;
}
Output_N72=param_11;
float Output_N205=0.0;
Output_N205=(Output_N168*Result_N204)*Output_N72;
float Export_N158=0.0;
Export_N158=Output_N205;
float3 Result_N337=float3(0.0);
float3 param_13=float3(0.0);
float3 param_14=float3(0.0);
ssGlobals param_16=Globals;
float3 param_15;
if ((int(Tweak_N354_tmp)!=0))
{
float3 l9_617=float3(0.0);
l9_617=param_16.VertexTangent_WorldSpace;
float3 l9_618=float3(0.0);
l9_618=param_16.VertexBinormal_WorldSpace;
float3 l9_619=float3(0.0);
l9_619=param_16.VertexNormal_WorldSpace;
float3x3 l9_620=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_620=float3x3(float3(l9_617),float3(l9_618),float3(l9_619));
float2 l9_621=float2(0.0);
float2 l9_622=float2(0.0);
float2 l9_623=float2(0.0);
float2 l9_624=float2(0.0);
float2 l9_625=float2(0.0);
float2 l9_626=float2(0.0);
ssGlobals l9_627=param_16;
float2 l9_628;
if (NODE_181_DROPLIST_ITEM_tmp==0)
{
float2 l9_629=float2(0.0);
l9_629=l9_627.Surface_UVCoord0;
l9_622=l9_629;
l9_628=l9_622;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==1)
{
float2 l9_630=float2(0.0);
l9_630=l9_627.Surface_UVCoord1;
l9_623=l9_630;
l9_628=l9_623;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==2)
{
float2 l9_631=float2(0.0);
float2 l9_632=float2(0.0);
float2 l9_633=float2(0.0);
ssGlobals l9_634=l9_627;
float2 l9_635;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_636=float2(0.0);
float2 l9_637=float2(0.0);
float2 l9_638=float2(0.0);
ssGlobals l9_639=l9_634;
float2 l9_640;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_641=float2(0.0);
float2 l9_642=float2(0.0);
float2 l9_643=float2(0.0);
float2 l9_644=float2(0.0);
float2 l9_645=float2(0.0);
ssGlobals l9_646=l9_639;
float2 l9_647;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_648=float2(0.0);
l9_648=l9_646.Surface_UVCoord0;
l9_642=l9_648;
l9_647=l9_642;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_649=float2(0.0);
l9_649=l9_646.Surface_UVCoord1;
l9_643=l9_649;
l9_647=l9_643;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_650=float2(0.0);
l9_650=l9_646.gScreenCoord;
l9_644=l9_650;
l9_647=l9_644;
}
else
{
float2 l9_651=float2(0.0);
l9_651=l9_646.Surface_UVCoord0;
l9_645=l9_651;
l9_647=l9_645;
}
}
}
l9_641=l9_647;
float2 l9_652=float2(0.0);
float2 l9_653=(*sc_set0.UserUniforms).uv2Scale;
l9_652=l9_653;
float2 l9_654=float2(0.0);
l9_654=l9_652;
float2 l9_655=float2(0.0);
float2 l9_656=(*sc_set0.UserUniforms).uv2Offset;
l9_655=l9_656;
float2 l9_657=float2(0.0);
l9_657=l9_655;
float2 l9_658=float2(0.0);
l9_658=(l9_641*l9_654)+l9_657;
float2 l9_659=float2(0.0);
l9_659=l9_658+(l9_657*(l9_639.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_637=l9_659;
l9_640=l9_637;
}
else
{
float2 l9_660=float2(0.0);
float2 l9_661=float2(0.0);
float2 l9_662=float2(0.0);
float2 l9_663=float2(0.0);
float2 l9_664=float2(0.0);
ssGlobals l9_665=l9_639;
float2 l9_666;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_667=float2(0.0);
l9_667=l9_665.Surface_UVCoord0;
l9_661=l9_667;
l9_666=l9_661;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_668=float2(0.0);
l9_668=l9_665.Surface_UVCoord1;
l9_662=l9_668;
l9_666=l9_662;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_669=float2(0.0);
l9_669=l9_665.gScreenCoord;
l9_663=l9_669;
l9_666=l9_663;
}
else
{
float2 l9_670=float2(0.0);
l9_670=l9_665.Surface_UVCoord0;
l9_664=l9_670;
l9_666=l9_664;
}
}
}
l9_660=l9_666;
float2 l9_671=float2(0.0);
float2 l9_672=(*sc_set0.UserUniforms).uv2Scale;
l9_671=l9_672;
float2 l9_673=float2(0.0);
l9_673=l9_671;
float2 l9_674=float2(0.0);
float2 l9_675=(*sc_set0.UserUniforms).uv2Offset;
l9_674=l9_675;
float2 l9_676=float2(0.0);
l9_676=l9_674;
float2 l9_677=float2(0.0);
l9_677=(l9_660*l9_673)+l9_676;
l9_638=l9_677;
l9_640=l9_638;
}
l9_636=l9_640;
l9_632=l9_636;
l9_635=l9_632;
}
else
{
float2 l9_678=float2(0.0);
l9_678=l9_634.Surface_UVCoord0;
l9_633=l9_678;
l9_635=l9_633;
}
l9_631=l9_635;
float2 l9_679=float2(0.0);
l9_679=l9_631;
float2 l9_680=float2(0.0);
l9_680=l9_679;
l9_624=l9_680;
l9_628=l9_624;
}
else
{
if (NODE_181_DROPLIST_ITEM_tmp==3)
{
float2 l9_681=float2(0.0);
float2 l9_682=float2(0.0);
float2 l9_683=float2(0.0);
ssGlobals l9_684=l9_627;
float2 l9_685;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_686=float2(0.0);
float2 l9_687=float2(0.0);
float2 l9_688=float2(0.0);
ssGlobals l9_689=l9_684;
float2 l9_690;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_691=float2(0.0);
float2 l9_692=float2(0.0);
float2 l9_693=float2(0.0);
float2 l9_694=float2(0.0);
float2 l9_695=float2(0.0);
float2 l9_696=float2(0.0);
ssGlobals l9_697=l9_689;
float2 l9_698;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_699=float2(0.0);
l9_699=l9_697.Surface_UVCoord0;
l9_692=l9_699;
l9_698=l9_692;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_700=float2(0.0);
l9_700=l9_697.Surface_UVCoord1;
l9_693=l9_700;
l9_698=l9_693;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_701=float2(0.0);
l9_701=l9_697.gScreenCoord;
l9_694=l9_701;
l9_698=l9_694;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_702=float2(0.0);
float2 l9_703=float2(0.0);
float2 l9_704=float2(0.0);
ssGlobals l9_705=l9_697;
float2 l9_706;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_707=float2(0.0);
float2 l9_708=float2(0.0);
float2 l9_709=float2(0.0);
ssGlobals l9_710=l9_705;
float2 l9_711;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_712=float2(0.0);
float2 l9_713=float2(0.0);
float2 l9_714=float2(0.0);
float2 l9_715=float2(0.0);
float2 l9_716=float2(0.0);
ssGlobals l9_717=l9_710;
float2 l9_718;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_719=float2(0.0);
l9_719=l9_717.Surface_UVCoord0;
l9_713=l9_719;
l9_718=l9_713;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_720=float2(0.0);
l9_720=l9_717.Surface_UVCoord1;
l9_714=l9_720;
l9_718=l9_714;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_721=float2(0.0);
l9_721=l9_717.gScreenCoord;
l9_715=l9_721;
l9_718=l9_715;
}
else
{
float2 l9_722=float2(0.0);
l9_722=l9_717.Surface_UVCoord0;
l9_716=l9_722;
l9_718=l9_716;
}
}
}
l9_712=l9_718;
float2 l9_723=float2(0.0);
float2 l9_724=(*sc_set0.UserUniforms).uv2Scale;
l9_723=l9_724;
float2 l9_725=float2(0.0);
l9_725=l9_723;
float2 l9_726=float2(0.0);
float2 l9_727=(*sc_set0.UserUniforms).uv2Offset;
l9_726=l9_727;
float2 l9_728=float2(0.0);
l9_728=l9_726;
float2 l9_729=float2(0.0);
l9_729=(l9_712*l9_725)+l9_728;
float2 l9_730=float2(0.0);
l9_730=l9_729+(l9_728*(l9_710.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_708=l9_730;
l9_711=l9_708;
}
else
{
float2 l9_731=float2(0.0);
float2 l9_732=float2(0.0);
float2 l9_733=float2(0.0);
float2 l9_734=float2(0.0);
float2 l9_735=float2(0.0);
ssGlobals l9_736=l9_710;
float2 l9_737;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_738=float2(0.0);
l9_738=l9_736.Surface_UVCoord0;
l9_732=l9_738;
l9_737=l9_732;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_739=float2(0.0);
l9_739=l9_736.Surface_UVCoord1;
l9_733=l9_739;
l9_737=l9_733;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_740=float2(0.0);
l9_740=l9_736.gScreenCoord;
l9_734=l9_740;
l9_737=l9_734;
}
else
{
float2 l9_741=float2(0.0);
l9_741=l9_736.Surface_UVCoord0;
l9_735=l9_741;
l9_737=l9_735;
}
}
}
l9_731=l9_737;
float2 l9_742=float2(0.0);
float2 l9_743=(*sc_set0.UserUniforms).uv2Scale;
l9_742=l9_743;
float2 l9_744=float2(0.0);
l9_744=l9_742;
float2 l9_745=float2(0.0);
float2 l9_746=(*sc_set0.UserUniforms).uv2Offset;
l9_745=l9_746;
float2 l9_747=float2(0.0);
l9_747=l9_745;
float2 l9_748=float2(0.0);
l9_748=(l9_731*l9_744)+l9_747;
l9_709=l9_748;
l9_711=l9_709;
}
l9_707=l9_711;
l9_703=l9_707;
l9_706=l9_703;
}
else
{
float2 l9_749=float2(0.0);
l9_749=l9_705.Surface_UVCoord0;
l9_704=l9_749;
l9_706=l9_704;
}
l9_702=l9_706;
float2 l9_750=float2(0.0);
l9_750=l9_702;
float2 l9_751=float2(0.0);
l9_751=l9_750;
l9_695=l9_751;
l9_698=l9_695;
}
else
{
float2 l9_752=float2(0.0);
l9_752=l9_697.Surface_UVCoord0;
l9_696=l9_752;
l9_698=l9_696;
}
}
}
}
l9_691=l9_698;
float2 l9_753=float2(0.0);
float2 l9_754=(*sc_set0.UserUniforms).uv3Scale;
l9_753=l9_754;
float2 l9_755=float2(0.0);
l9_755=l9_753;
float2 l9_756=float2(0.0);
float2 l9_757=(*sc_set0.UserUniforms).uv3Offset;
l9_756=l9_757;
float2 l9_758=float2(0.0);
l9_758=l9_756;
float2 l9_759=float2(0.0);
l9_759=(l9_691*l9_755)+l9_758;
float2 l9_760=float2(0.0);
l9_760=l9_759+(l9_758*(l9_689.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_687=l9_760;
l9_690=l9_687;
}
else
{
float2 l9_761=float2(0.0);
float2 l9_762=float2(0.0);
float2 l9_763=float2(0.0);
float2 l9_764=float2(0.0);
float2 l9_765=float2(0.0);
float2 l9_766=float2(0.0);
ssGlobals l9_767=l9_689;
float2 l9_768;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_769=float2(0.0);
l9_769=l9_767.Surface_UVCoord0;
l9_762=l9_769;
l9_768=l9_762;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_770=float2(0.0);
l9_770=l9_767.Surface_UVCoord1;
l9_763=l9_770;
l9_768=l9_763;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_771=float2(0.0);
l9_771=l9_767.gScreenCoord;
l9_764=l9_771;
l9_768=l9_764;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_772=float2(0.0);
float2 l9_773=float2(0.0);
float2 l9_774=float2(0.0);
ssGlobals l9_775=l9_767;
float2 l9_776;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_777=float2(0.0);
float2 l9_778=float2(0.0);
float2 l9_779=float2(0.0);
ssGlobals l9_780=l9_775;
float2 l9_781;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_782=float2(0.0);
float2 l9_783=float2(0.0);
float2 l9_784=float2(0.0);
float2 l9_785=float2(0.0);
float2 l9_786=float2(0.0);
ssGlobals l9_787=l9_780;
float2 l9_788;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_789=float2(0.0);
l9_789=l9_787.Surface_UVCoord0;
l9_783=l9_789;
l9_788=l9_783;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_790=float2(0.0);
l9_790=l9_787.Surface_UVCoord1;
l9_784=l9_790;
l9_788=l9_784;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_791=float2(0.0);
l9_791=l9_787.gScreenCoord;
l9_785=l9_791;
l9_788=l9_785;
}
else
{
float2 l9_792=float2(0.0);
l9_792=l9_787.Surface_UVCoord0;
l9_786=l9_792;
l9_788=l9_786;
}
}
}
l9_782=l9_788;
float2 l9_793=float2(0.0);
float2 l9_794=(*sc_set0.UserUniforms).uv2Scale;
l9_793=l9_794;
float2 l9_795=float2(0.0);
l9_795=l9_793;
float2 l9_796=float2(0.0);
float2 l9_797=(*sc_set0.UserUniforms).uv2Offset;
l9_796=l9_797;
float2 l9_798=float2(0.0);
l9_798=l9_796;
float2 l9_799=float2(0.0);
l9_799=(l9_782*l9_795)+l9_798;
float2 l9_800=float2(0.0);
l9_800=l9_799+(l9_798*(l9_780.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_778=l9_800;
l9_781=l9_778;
}
else
{
float2 l9_801=float2(0.0);
float2 l9_802=float2(0.0);
float2 l9_803=float2(0.0);
float2 l9_804=float2(0.0);
float2 l9_805=float2(0.0);
ssGlobals l9_806=l9_780;
float2 l9_807;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_808=float2(0.0);
l9_808=l9_806.Surface_UVCoord0;
l9_802=l9_808;
l9_807=l9_802;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_809=float2(0.0);
l9_809=l9_806.Surface_UVCoord1;
l9_803=l9_809;
l9_807=l9_803;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_810=float2(0.0);
l9_810=l9_806.gScreenCoord;
l9_804=l9_810;
l9_807=l9_804;
}
else
{
float2 l9_811=float2(0.0);
l9_811=l9_806.Surface_UVCoord0;
l9_805=l9_811;
l9_807=l9_805;
}
}
}
l9_801=l9_807;
float2 l9_812=float2(0.0);
float2 l9_813=(*sc_set0.UserUniforms).uv2Scale;
l9_812=l9_813;
float2 l9_814=float2(0.0);
l9_814=l9_812;
float2 l9_815=float2(0.0);
float2 l9_816=(*sc_set0.UserUniforms).uv2Offset;
l9_815=l9_816;
float2 l9_817=float2(0.0);
l9_817=l9_815;
float2 l9_818=float2(0.0);
l9_818=(l9_801*l9_814)+l9_817;
l9_779=l9_818;
l9_781=l9_779;
}
l9_777=l9_781;
l9_773=l9_777;
l9_776=l9_773;
}
else
{
float2 l9_819=float2(0.0);
l9_819=l9_775.Surface_UVCoord0;
l9_774=l9_819;
l9_776=l9_774;
}
l9_772=l9_776;
float2 l9_820=float2(0.0);
l9_820=l9_772;
float2 l9_821=float2(0.0);
l9_821=l9_820;
l9_765=l9_821;
l9_768=l9_765;
}
else
{
float2 l9_822=float2(0.0);
l9_822=l9_767.Surface_UVCoord0;
l9_766=l9_822;
l9_768=l9_766;
}
}
}
}
l9_761=l9_768;
float2 l9_823=float2(0.0);
float2 l9_824=(*sc_set0.UserUniforms).uv3Scale;
l9_823=l9_824;
float2 l9_825=float2(0.0);
l9_825=l9_823;
float2 l9_826=float2(0.0);
float2 l9_827=(*sc_set0.UserUniforms).uv3Offset;
l9_826=l9_827;
float2 l9_828=float2(0.0);
l9_828=l9_826;
float2 l9_829=float2(0.0);
l9_829=(l9_761*l9_825)+l9_828;
l9_688=l9_829;
l9_690=l9_688;
}
l9_686=l9_690;
l9_682=l9_686;
l9_685=l9_682;
}
else
{
float2 l9_830=float2(0.0);
l9_830=l9_684.Surface_UVCoord0;
l9_683=l9_830;
l9_685=l9_683;
}
l9_681=l9_685;
float2 l9_831=float2(0.0);
l9_831=l9_681;
float2 l9_832=float2(0.0);
l9_832=l9_831;
l9_625=l9_832;
l9_628=l9_625;
}
else
{
float2 l9_833=float2(0.0);
l9_833=l9_627.Surface_UVCoord0;
l9_626=l9_833;
l9_628=l9_626;
}
}
}
}
l9_621=l9_628;
float4 l9_834=float4(0.0);
float2 l9_835=l9_621;
int l9_836;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_837=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_837=0;
}
else
{
l9_837=in.varStereoViewID;
}
int l9_838=l9_837;
l9_836=1-l9_838;
}
else
{
int l9_839=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_839=0;
}
else
{
l9_839=in.varStereoViewID;
}
int l9_840=l9_839;
l9_836=l9_840;
}
int l9_841=l9_836;
int l9_842=normalTexLayout_tmp;
int l9_843=l9_841;
float2 l9_844=l9_835;
bool l9_845=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_846=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_847=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_848=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_849=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_850=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_851=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_852=0.0;
bool l9_853=l9_850&&(!l9_848);
float l9_854=1.0;
float l9_855=l9_844.x;
int l9_856=l9_847.x;
if (l9_856==1)
{
l9_855=fract(l9_855);
}
else
{
if (l9_856==2)
{
float l9_857=fract(l9_855);
float l9_858=l9_855-l9_857;
float l9_859=step(0.25,fract(l9_858*0.5));
l9_855=mix(l9_857,1.0-l9_857,fast::clamp(l9_859,0.0,1.0));
}
}
l9_844.x=l9_855;
float l9_860=l9_844.y;
int l9_861=l9_847.y;
if (l9_861==1)
{
l9_860=fract(l9_860);
}
else
{
if (l9_861==2)
{
float l9_862=fract(l9_860);
float l9_863=l9_860-l9_862;
float l9_864=step(0.25,fract(l9_863*0.5));
l9_860=mix(l9_862,1.0-l9_862,fast::clamp(l9_864,0.0,1.0));
}
}
l9_844.y=l9_860;
if (l9_848)
{
bool l9_865=l9_850;
bool l9_866;
if (l9_865)
{
l9_866=l9_847.x==3;
}
else
{
l9_866=l9_865;
}
float l9_867=l9_844.x;
float l9_868=l9_849.x;
float l9_869=l9_849.z;
bool l9_870=l9_866;
float l9_871=l9_854;
float l9_872=fast::clamp(l9_867,l9_868,l9_869);
float l9_873=step(abs(l9_867-l9_872),9.9999997e-06);
l9_871*=(l9_873+((1.0-float(l9_870))*(1.0-l9_873)));
l9_867=l9_872;
l9_844.x=l9_867;
l9_854=l9_871;
bool l9_874=l9_850;
bool l9_875;
if (l9_874)
{
l9_875=l9_847.y==3;
}
else
{
l9_875=l9_874;
}
float l9_876=l9_844.y;
float l9_877=l9_849.y;
float l9_878=l9_849.w;
bool l9_879=l9_875;
float l9_880=l9_854;
float l9_881=fast::clamp(l9_876,l9_877,l9_878);
float l9_882=step(abs(l9_876-l9_881),9.9999997e-06);
l9_880*=(l9_882+((1.0-float(l9_879))*(1.0-l9_882)));
l9_876=l9_881;
l9_844.y=l9_876;
l9_854=l9_880;
}
float2 l9_883=l9_844;
bool l9_884=l9_845;
float3x3 l9_885=l9_846;
if (l9_884)
{
l9_883=float2((l9_885*float3(l9_883,1.0)).xy);
}
float2 l9_886=l9_883;
l9_844=l9_886;
float l9_887=l9_844.x;
int l9_888=l9_847.x;
bool l9_889=l9_853;
float l9_890=l9_854;
if ((l9_888==0)||(l9_888==3))
{
float l9_891=l9_887;
float l9_892=0.0;
float l9_893=1.0;
bool l9_894=l9_889;
float l9_895=l9_890;
float l9_896=fast::clamp(l9_891,l9_892,l9_893);
float l9_897=step(abs(l9_891-l9_896),9.9999997e-06);
l9_895*=(l9_897+((1.0-float(l9_894))*(1.0-l9_897)));
l9_891=l9_896;
l9_887=l9_891;
l9_890=l9_895;
}
l9_844.x=l9_887;
l9_854=l9_890;
float l9_898=l9_844.y;
int l9_899=l9_847.y;
bool l9_900=l9_853;
float l9_901=l9_854;
if ((l9_899==0)||(l9_899==3))
{
float l9_902=l9_898;
float l9_903=0.0;
float l9_904=1.0;
bool l9_905=l9_900;
float l9_906=l9_901;
float l9_907=fast::clamp(l9_902,l9_903,l9_904);
float l9_908=step(abs(l9_902-l9_907),9.9999997e-06);
l9_906*=(l9_908+((1.0-float(l9_905))*(1.0-l9_908)));
l9_902=l9_907;
l9_898=l9_902;
l9_901=l9_906;
}
l9_844.y=l9_898;
l9_854=l9_901;
float2 l9_909=l9_844;
int l9_910=l9_842;
int l9_911=l9_843;
float l9_912=l9_852;
float2 l9_913=l9_909;
int l9_914=l9_910;
int l9_915=l9_911;
float3 l9_916=float3(0.0);
if (l9_914==0)
{
l9_916=float3(l9_913,0.0);
}
else
{
if (l9_914==1)
{
l9_916=float3(l9_913.x,(l9_913.y*0.5)+(0.5-(float(l9_915)*0.5)),0.0);
}
else
{
l9_916=float3(l9_913,float(l9_915));
}
}
float3 l9_917=l9_916;
float3 l9_918=l9_917;
float4 l9_919=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_918.xy,bias(l9_912));
float4 l9_920=l9_919;
if (l9_850)
{
l9_920=mix(l9_851,l9_920,float4(l9_854));
}
float4 l9_921=l9_920;
float4 l9_922=l9_921;
float3 l9_923=(l9_922.xyz*1.9921875)-float3(1.0);
l9_922=float4(l9_923.x,l9_923.y,l9_923.z,l9_922.w);
l9_834=l9_922;
float3 l9_924=float3(0.0);
float3 l9_925=float3(0.0);
float3 l9_926=(*sc_set0.UserUniforms).Port_Default_N113;
ssGlobals l9_927=param_16;
float3 l9_928;
if ((int(Tweak_N218_tmp)!=0))
{
float2 l9_929=float2(0.0);
float2 l9_930=float2(0.0);
float2 l9_931=float2(0.0);
float2 l9_932=float2(0.0);
float2 l9_933=float2(0.0);
float2 l9_934=float2(0.0);
ssGlobals l9_935=l9_927;
float2 l9_936;
if (NODE_184_DROPLIST_ITEM_tmp==0)
{
float2 l9_937=float2(0.0);
l9_937=l9_935.Surface_UVCoord0;
l9_930=l9_937;
l9_936=l9_930;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==1)
{
float2 l9_938=float2(0.0);
l9_938=l9_935.Surface_UVCoord1;
l9_931=l9_938;
l9_936=l9_931;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==2)
{
float2 l9_939=float2(0.0);
float2 l9_940=float2(0.0);
float2 l9_941=float2(0.0);
ssGlobals l9_942=l9_935;
float2 l9_943;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_944=float2(0.0);
float2 l9_945=float2(0.0);
float2 l9_946=float2(0.0);
ssGlobals l9_947=l9_942;
float2 l9_948;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_949=float2(0.0);
float2 l9_950=float2(0.0);
float2 l9_951=float2(0.0);
float2 l9_952=float2(0.0);
float2 l9_953=float2(0.0);
ssGlobals l9_954=l9_947;
float2 l9_955;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_956=float2(0.0);
l9_956=l9_954.Surface_UVCoord0;
l9_950=l9_956;
l9_955=l9_950;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_957=float2(0.0);
l9_957=l9_954.Surface_UVCoord1;
l9_951=l9_957;
l9_955=l9_951;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_958=float2(0.0);
l9_958=l9_954.gScreenCoord;
l9_952=l9_958;
l9_955=l9_952;
}
else
{
float2 l9_959=float2(0.0);
l9_959=l9_954.Surface_UVCoord0;
l9_953=l9_959;
l9_955=l9_953;
}
}
}
l9_949=l9_955;
float2 l9_960=float2(0.0);
float2 l9_961=(*sc_set0.UserUniforms).uv2Scale;
l9_960=l9_961;
float2 l9_962=float2(0.0);
l9_962=l9_960;
float2 l9_963=float2(0.0);
float2 l9_964=(*sc_set0.UserUniforms).uv2Offset;
l9_963=l9_964;
float2 l9_965=float2(0.0);
l9_965=l9_963;
float2 l9_966=float2(0.0);
l9_966=(l9_949*l9_962)+l9_965;
float2 l9_967=float2(0.0);
l9_967=l9_966+(l9_965*(l9_947.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_945=l9_967;
l9_948=l9_945;
}
else
{
float2 l9_968=float2(0.0);
float2 l9_969=float2(0.0);
float2 l9_970=float2(0.0);
float2 l9_971=float2(0.0);
float2 l9_972=float2(0.0);
ssGlobals l9_973=l9_947;
float2 l9_974;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_975=float2(0.0);
l9_975=l9_973.Surface_UVCoord0;
l9_969=l9_975;
l9_974=l9_969;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_976=float2(0.0);
l9_976=l9_973.Surface_UVCoord1;
l9_970=l9_976;
l9_974=l9_970;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_977=float2(0.0);
l9_977=l9_973.gScreenCoord;
l9_971=l9_977;
l9_974=l9_971;
}
else
{
float2 l9_978=float2(0.0);
l9_978=l9_973.Surface_UVCoord0;
l9_972=l9_978;
l9_974=l9_972;
}
}
}
l9_968=l9_974;
float2 l9_979=float2(0.0);
float2 l9_980=(*sc_set0.UserUniforms).uv2Scale;
l9_979=l9_980;
float2 l9_981=float2(0.0);
l9_981=l9_979;
float2 l9_982=float2(0.0);
float2 l9_983=(*sc_set0.UserUniforms).uv2Offset;
l9_982=l9_983;
float2 l9_984=float2(0.0);
l9_984=l9_982;
float2 l9_985=float2(0.0);
l9_985=(l9_968*l9_981)+l9_984;
l9_946=l9_985;
l9_948=l9_946;
}
l9_944=l9_948;
l9_940=l9_944;
l9_943=l9_940;
}
else
{
float2 l9_986=float2(0.0);
l9_986=l9_942.Surface_UVCoord0;
l9_941=l9_986;
l9_943=l9_941;
}
l9_939=l9_943;
float2 l9_987=float2(0.0);
l9_987=l9_939;
float2 l9_988=float2(0.0);
l9_988=l9_987;
l9_932=l9_988;
l9_936=l9_932;
}
else
{
if (NODE_184_DROPLIST_ITEM_tmp==3)
{
float2 l9_989=float2(0.0);
float2 l9_990=float2(0.0);
float2 l9_991=float2(0.0);
ssGlobals l9_992=l9_935;
float2 l9_993;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_994=float2(0.0);
float2 l9_995=float2(0.0);
float2 l9_996=float2(0.0);
ssGlobals l9_997=l9_992;
float2 l9_998;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_999=float2(0.0);
float2 l9_1000=float2(0.0);
float2 l9_1001=float2(0.0);
float2 l9_1002=float2(0.0);
float2 l9_1003=float2(0.0);
float2 l9_1004=float2(0.0);
ssGlobals l9_1005=l9_997;
float2 l9_1006;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1007=float2(0.0);
l9_1007=l9_1005.Surface_UVCoord0;
l9_1000=l9_1007;
l9_1006=l9_1000;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1008=float2(0.0);
l9_1008=l9_1005.Surface_UVCoord1;
l9_1001=l9_1008;
l9_1006=l9_1001;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1009=float2(0.0);
l9_1009=l9_1005.gScreenCoord;
l9_1002=l9_1009;
l9_1006=l9_1002;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1010=float2(0.0);
float2 l9_1011=float2(0.0);
float2 l9_1012=float2(0.0);
ssGlobals l9_1013=l9_1005;
float2 l9_1014;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1015=float2(0.0);
float2 l9_1016=float2(0.0);
float2 l9_1017=float2(0.0);
ssGlobals l9_1018=l9_1013;
float2 l9_1019;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1020=float2(0.0);
float2 l9_1021=float2(0.0);
float2 l9_1022=float2(0.0);
float2 l9_1023=float2(0.0);
float2 l9_1024=float2(0.0);
ssGlobals l9_1025=l9_1018;
float2 l9_1026;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1027=float2(0.0);
l9_1027=l9_1025.Surface_UVCoord0;
l9_1021=l9_1027;
l9_1026=l9_1021;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1028=float2(0.0);
l9_1028=l9_1025.Surface_UVCoord1;
l9_1022=l9_1028;
l9_1026=l9_1022;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1029=float2(0.0);
l9_1029=l9_1025.gScreenCoord;
l9_1023=l9_1029;
l9_1026=l9_1023;
}
else
{
float2 l9_1030=float2(0.0);
l9_1030=l9_1025.Surface_UVCoord0;
l9_1024=l9_1030;
l9_1026=l9_1024;
}
}
}
l9_1020=l9_1026;
float2 l9_1031=float2(0.0);
float2 l9_1032=(*sc_set0.UserUniforms).uv2Scale;
l9_1031=l9_1032;
float2 l9_1033=float2(0.0);
l9_1033=l9_1031;
float2 l9_1034=float2(0.0);
float2 l9_1035=(*sc_set0.UserUniforms).uv2Offset;
l9_1034=l9_1035;
float2 l9_1036=float2(0.0);
l9_1036=l9_1034;
float2 l9_1037=float2(0.0);
l9_1037=(l9_1020*l9_1033)+l9_1036;
float2 l9_1038=float2(0.0);
l9_1038=l9_1037+(l9_1036*(l9_1018.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1016=l9_1038;
l9_1019=l9_1016;
}
else
{
float2 l9_1039=float2(0.0);
float2 l9_1040=float2(0.0);
float2 l9_1041=float2(0.0);
float2 l9_1042=float2(0.0);
float2 l9_1043=float2(0.0);
ssGlobals l9_1044=l9_1018;
float2 l9_1045;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1046=float2(0.0);
l9_1046=l9_1044.Surface_UVCoord0;
l9_1040=l9_1046;
l9_1045=l9_1040;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1047=float2(0.0);
l9_1047=l9_1044.Surface_UVCoord1;
l9_1041=l9_1047;
l9_1045=l9_1041;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1048=float2(0.0);
l9_1048=l9_1044.gScreenCoord;
l9_1042=l9_1048;
l9_1045=l9_1042;
}
else
{
float2 l9_1049=float2(0.0);
l9_1049=l9_1044.Surface_UVCoord0;
l9_1043=l9_1049;
l9_1045=l9_1043;
}
}
}
l9_1039=l9_1045;
float2 l9_1050=float2(0.0);
float2 l9_1051=(*sc_set0.UserUniforms).uv2Scale;
l9_1050=l9_1051;
float2 l9_1052=float2(0.0);
l9_1052=l9_1050;
float2 l9_1053=float2(0.0);
float2 l9_1054=(*sc_set0.UserUniforms).uv2Offset;
l9_1053=l9_1054;
float2 l9_1055=float2(0.0);
l9_1055=l9_1053;
float2 l9_1056=float2(0.0);
l9_1056=(l9_1039*l9_1052)+l9_1055;
l9_1017=l9_1056;
l9_1019=l9_1017;
}
l9_1015=l9_1019;
l9_1011=l9_1015;
l9_1014=l9_1011;
}
else
{
float2 l9_1057=float2(0.0);
l9_1057=l9_1013.Surface_UVCoord0;
l9_1012=l9_1057;
l9_1014=l9_1012;
}
l9_1010=l9_1014;
float2 l9_1058=float2(0.0);
l9_1058=l9_1010;
float2 l9_1059=float2(0.0);
l9_1059=l9_1058;
l9_1003=l9_1059;
l9_1006=l9_1003;
}
else
{
float2 l9_1060=float2(0.0);
l9_1060=l9_1005.Surface_UVCoord0;
l9_1004=l9_1060;
l9_1006=l9_1004;
}
}
}
}
l9_999=l9_1006;
float2 l9_1061=float2(0.0);
float2 l9_1062=(*sc_set0.UserUniforms).uv3Scale;
l9_1061=l9_1062;
float2 l9_1063=float2(0.0);
l9_1063=l9_1061;
float2 l9_1064=float2(0.0);
float2 l9_1065=(*sc_set0.UserUniforms).uv3Offset;
l9_1064=l9_1065;
float2 l9_1066=float2(0.0);
l9_1066=l9_1064;
float2 l9_1067=float2(0.0);
l9_1067=(l9_999*l9_1063)+l9_1066;
float2 l9_1068=float2(0.0);
l9_1068=l9_1067+(l9_1066*(l9_997.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_995=l9_1068;
l9_998=l9_995;
}
else
{
float2 l9_1069=float2(0.0);
float2 l9_1070=float2(0.0);
float2 l9_1071=float2(0.0);
float2 l9_1072=float2(0.0);
float2 l9_1073=float2(0.0);
float2 l9_1074=float2(0.0);
ssGlobals l9_1075=l9_997;
float2 l9_1076;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1077=float2(0.0);
l9_1077=l9_1075.Surface_UVCoord0;
l9_1070=l9_1077;
l9_1076=l9_1070;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1078=float2(0.0);
l9_1078=l9_1075.Surface_UVCoord1;
l9_1071=l9_1078;
l9_1076=l9_1071;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1079=float2(0.0);
l9_1079=l9_1075.gScreenCoord;
l9_1072=l9_1079;
l9_1076=l9_1072;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1080=float2(0.0);
float2 l9_1081=float2(0.0);
float2 l9_1082=float2(0.0);
ssGlobals l9_1083=l9_1075;
float2 l9_1084;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1085=float2(0.0);
float2 l9_1086=float2(0.0);
float2 l9_1087=float2(0.0);
ssGlobals l9_1088=l9_1083;
float2 l9_1089;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1090=float2(0.0);
float2 l9_1091=float2(0.0);
float2 l9_1092=float2(0.0);
float2 l9_1093=float2(0.0);
float2 l9_1094=float2(0.0);
ssGlobals l9_1095=l9_1088;
float2 l9_1096;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1097=float2(0.0);
l9_1097=l9_1095.Surface_UVCoord0;
l9_1091=l9_1097;
l9_1096=l9_1091;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1098=float2(0.0);
l9_1098=l9_1095.Surface_UVCoord1;
l9_1092=l9_1098;
l9_1096=l9_1092;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1099=float2(0.0);
l9_1099=l9_1095.gScreenCoord;
l9_1093=l9_1099;
l9_1096=l9_1093;
}
else
{
float2 l9_1100=float2(0.0);
l9_1100=l9_1095.Surface_UVCoord0;
l9_1094=l9_1100;
l9_1096=l9_1094;
}
}
}
l9_1090=l9_1096;
float2 l9_1101=float2(0.0);
float2 l9_1102=(*sc_set0.UserUniforms).uv2Scale;
l9_1101=l9_1102;
float2 l9_1103=float2(0.0);
l9_1103=l9_1101;
float2 l9_1104=float2(0.0);
float2 l9_1105=(*sc_set0.UserUniforms).uv2Offset;
l9_1104=l9_1105;
float2 l9_1106=float2(0.0);
l9_1106=l9_1104;
float2 l9_1107=float2(0.0);
l9_1107=(l9_1090*l9_1103)+l9_1106;
float2 l9_1108=float2(0.0);
l9_1108=l9_1107+(l9_1106*(l9_1088.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1086=l9_1108;
l9_1089=l9_1086;
}
else
{
float2 l9_1109=float2(0.0);
float2 l9_1110=float2(0.0);
float2 l9_1111=float2(0.0);
float2 l9_1112=float2(0.0);
float2 l9_1113=float2(0.0);
ssGlobals l9_1114=l9_1088;
float2 l9_1115;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1116=float2(0.0);
l9_1116=l9_1114.Surface_UVCoord0;
l9_1110=l9_1116;
l9_1115=l9_1110;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1117=float2(0.0);
l9_1117=l9_1114.Surface_UVCoord1;
l9_1111=l9_1117;
l9_1115=l9_1111;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1118=float2(0.0);
l9_1118=l9_1114.gScreenCoord;
l9_1112=l9_1118;
l9_1115=l9_1112;
}
else
{
float2 l9_1119=float2(0.0);
l9_1119=l9_1114.Surface_UVCoord0;
l9_1113=l9_1119;
l9_1115=l9_1113;
}
}
}
l9_1109=l9_1115;
float2 l9_1120=float2(0.0);
float2 l9_1121=(*sc_set0.UserUniforms).uv2Scale;
l9_1120=l9_1121;
float2 l9_1122=float2(0.0);
l9_1122=l9_1120;
float2 l9_1123=float2(0.0);
float2 l9_1124=(*sc_set0.UserUniforms).uv2Offset;
l9_1123=l9_1124;
float2 l9_1125=float2(0.0);
l9_1125=l9_1123;
float2 l9_1126=float2(0.0);
l9_1126=(l9_1109*l9_1122)+l9_1125;
l9_1087=l9_1126;
l9_1089=l9_1087;
}
l9_1085=l9_1089;
l9_1081=l9_1085;
l9_1084=l9_1081;
}
else
{
float2 l9_1127=float2(0.0);
l9_1127=l9_1083.Surface_UVCoord0;
l9_1082=l9_1127;
l9_1084=l9_1082;
}
l9_1080=l9_1084;
float2 l9_1128=float2(0.0);
l9_1128=l9_1080;
float2 l9_1129=float2(0.0);
l9_1129=l9_1128;
l9_1073=l9_1129;
l9_1076=l9_1073;
}
else
{
float2 l9_1130=float2(0.0);
l9_1130=l9_1075.Surface_UVCoord0;
l9_1074=l9_1130;
l9_1076=l9_1074;
}
}
}
}
l9_1069=l9_1076;
float2 l9_1131=float2(0.0);
float2 l9_1132=(*sc_set0.UserUniforms).uv3Scale;
l9_1131=l9_1132;
float2 l9_1133=float2(0.0);
l9_1133=l9_1131;
float2 l9_1134=float2(0.0);
float2 l9_1135=(*sc_set0.UserUniforms).uv3Offset;
l9_1134=l9_1135;
float2 l9_1136=float2(0.0);
l9_1136=l9_1134;
float2 l9_1137=float2(0.0);
l9_1137=(l9_1069*l9_1133)+l9_1136;
l9_996=l9_1137;
l9_998=l9_996;
}
l9_994=l9_998;
l9_990=l9_994;
l9_993=l9_990;
}
else
{
float2 l9_1138=float2(0.0);
l9_1138=l9_992.Surface_UVCoord0;
l9_991=l9_1138;
l9_993=l9_991;
}
l9_989=l9_993;
float2 l9_1139=float2(0.0);
l9_1139=l9_989;
float2 l9_1140=float2(0.0);
l9_1140=l9_1139;
l9_933=l9_1140;
l9_936=l9_933;
}
else
{
float2 l9_1141=float2(0.0);
l9_1141=l9_935.Surface_UVCoord0;
l9_934=l9_1141;
l9_936=l9_934;
}
}
}
}
l9_929=l9_936;
float4 l9_1142=float4(0.0);
float2 l9_1143=l9_929;
int l9_1144;
if ((int(detailNormalTexHasSwappedViews_tmp)!=0))
{
int l9_1145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1145=0;
}
else
{
l9_1145=in.varStereoViewID;
}
int l9_1146=l9_1145;
l9_1144=1-l9_1146;
}
else
{
int l9_1147=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1147=0;
}
else
{
l9_1147=in.varStereoViewID;
}
int l9_1148=l9_1147;
l9_1144=l9_1148;
}
int l9_1149=l9_1144;
int l9_1150=detailNormalTexLayout_tmp;
int l9_1151=l9_1149;
float2 l9_1152=l9_1143;
bool l9_1153=(int(SC_USE_UV_TRANSFORM_detailNormalTex_tmp)!=0);
float3x3 l9_1154=(*sc_set0.UserUniforms).detailNormalTexTransform;
int2 l9_1155=int2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex_tmp);
bool l9_1156=(int(SC_USE_UV_MIN_MAX_detailNormalTex_tmp)!=0);
float4 l9_1157=(*sc_set0.UserUniforms).detailNormalTexUvMinMax;
bool l9_1158=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex_tmp)!=0);
float4 l9_1159=(*sc_set0.UserUniforms).detailNormalTexBorderColor;
float l9_1160=0.0;
bool l9_1161=l9_1158&&(!l9_1156);
float l9_1162=1.0;
float l9_1163=l9_1152.x;
int l9_1164=l9_1155.x;
if (l9_1164==1)
{
l9_1163=fract(l9_1163);
}
else
{
if (l9_1164==2)
{
float l9_1165=fract(l9_1163);
float l9_1166=l9_1163-l9_1165;
float l9_1167=step(0.25,fract(l9_1166*0.5));
l9_1163=mix(l9_1165,1.0-l9_1165,fast::clamp(l9_1167,0.0,1.0));
}
}
l9_1152.x=l9_1163;
float l9_1168=l9_1152.y;
int l9_1169=l9_1155.y;
if (l9_1169==1)
{
l9_1168=fract(l9_1168);
}
else
{
if (l9_1169==2)
{
float l9_1170=fract(l9_1168);
float l9_1171=l9_1168-l9_1170;
float l9_1172=step(0.25,fract(l9_1171*0.5));
l9_1168=mix(l9_1170,1.0-l9_1170,fast::clamp(l9_1172,0.0,1.0));
}
}
l9_1152.y=l9_1168;
if (l9_1156)
{
bool l9_1173=l9_1158;
bool l9_1174;
if (l9_1173)
{
l9_1174=l9_1155.x==3;
}
else
{
l9_1174=l9_1173;
}
float l9_1175=l9_1152.x;
float l9_1176=l9_1157.x;
float l9_1177=l9_1157.z;
bool l9_1178=l9_1174;
float l9_1179=l9_1162;
float l9_1180=fast::clamp(l9_1175,l9_1176,l9_1177);
float l9_1181=step(abs(l9_1175-l9_1180),9.9999997e-06);
l9_1179*=(l9_1181+((1.0-float(l9_1178))*(1.0-l9_1181)));
l9_1175=l9_1180;
l9_1152.x=l9_1175;
l9_1162=l9_1179;
bool l9_1182=l9_1158;
bool l9_1183;
if (l9_1182)
{
l9_1183=l9_1155.y==3;
}
else
{
l9_1183=l9_1182;
}
float l9_1184=l9_1152.y;
float l9_1185=l9_1157.y;
float l9_1186=l9_1157.w;
bool l9_1187=l9_1183;
float l9_1188=l9_1162;
float l9_1189=fast::clamp(l9_1184,l9_1185,l9_1186);
float l9_1190=step(abs(l9_1184-l9_1189),9.9999997e-06);
l9_1188*=(l9_1190+((1.0-float(l9_1187))*(1.0-l9_1190)));
l9_1184=l9_1189;
l9_1152.y=l9_1184;
l9_1162=l9_1188;
}
float2 l9_1191=l9_1152;
bool l9_1192=l9_1153;
float3x3 l9_1193=l9_1154;
if (l9_1192)
{
l9_1191=float2((l9_1193*float3(l9_1191,1.0)).xy);
}
float2 l9_1194=l9_1191;
l9_1152=l9_1194;
float l9_1195=l9_1152.x;
int l9_1196=l9_1155.x;
bool l9_1197=l9_1161;
float l9_1198=l9_1162;
if ((l9_1196==0)||(l9_1196==3))
{
float l9_1199=l9_1195;
float l9_1200=0.0;
float l9_1201=1.0;
bool l9_1202=l9_1197;
float l9_1203=l9_1198;
float l9_1204=fast::clamp(l9_1199,l9_1200,l9_1201);
float l9_1205=step(abs(l9_1199-l9_1204),9.9999997e-06);
l9_1203*=(l9_1205+((1.0-float(l9_1202))*(1.0-l9_1205)));
l9_1199=l9_1204;
l9_1195=l9_1199;
l9_1198=l9_1203;
}
l9_1152.x=l9_1195;
l9_1162=l9_1198;
float l9_1206=l9_1152.y;
int l9_1207=l9_1155.y;
bool l9_1208=l9_1161;
float l9_1209=l9_1162;
if ((l9_1207==0)||(l9_1207==3))
{
float l9_1210=l9_1206;
float l9_1211=0.0;
float l9_1212=1.0;
bool l9_1213=l9_1208;
float l9_1214=l9_1209;
float l9_1215=fast::clamp(l9_1210,l9_1211,l9_1212);
float l9_1216=step(abs(l9_1210-l9_1215),9.9999997e-06);
l9_1214*=(l9_1216+((1.0-float(l9_1213))*(1.0-l9_1216)));
l9_1210=l9_1215;
l9_1206=l9_1210;
l9_1209=l9_1214;
}
l9_1152.y=l9_1206;
l9_1162=l9_1209;
float2 l9_1217=l9_1152;
int l9_1218=l9_1150;
int l9_1219=l9_1151;
float l9_1220=l9_1160;
float2 l9_1221=l9_1217;
int l9_1222=l9_1218;
int l9_1223=l9_1219;
float3 l9_1224=float3(0.0);
if (l9_1222==0)
{
l9_1224=float3(l9_1221,0.0);
}
else
{
if (l9_1222==1)
{
l9_1224=float3(l9_1221.x,(l9_1221.y*0.5)+(0.5-(float(l9_1223)*0.5)),0.0);
}
else
{
l9_1224=float3(l9_1221,float(l9_1223));
}
}
float3 l9_1225=l9_1224;
float3 l9_1226=l9_1225;
float4 l9_1227=sc_set0.detailNormalTex.sample(sc_set0.detailNormalTexSmpSC,l9_1226.xy,bias(l9_1220));
float4 l9_1228=l9_1227;
if (l9_1158)
{
l9_1228=mix(l9_1159,l9_1228,float4(l9_1162));
}
float4 l9_1229=l9_1228;
float4 l9_1230=l9_1229;
float3 l9_1231=(l9_1230.xyz*1.9921875)-float3(1.0);
l9_1230=float4(l9_1231.x,l9_1231.y,l9_1231.z,l9_1230.w);
l9_1142=l9_1230;
l9_925=l9_1142.xyz;
l9_928=l9_925;
}
else
{
l9_928=l9_926;
}
l9_924=l9_928;
float3 l9_1232=float3(0.0);
float3 l9_1233=l9_834.xyz;
float l9_1234=(*sc_set0.UserUniforms).Port_Strength1_N200;
float3 l9_1235=l9_924;
float l9_1236=(*sc_set0.UserUniforms).Port_Strength2_N200;
float3 l9_1237=l9_1233;
float l9_1238=l9_1234;
float3 l9_1239=l9_1235;
float l9_1240=l9_1236;
float3 l9_1241=mix(float3(0.0,0.0,1.0),l9_1237,float3(l9_1238))+float3(0.0,0.0,1.0);
float3 l9_1242=mix(float3(0.0,0.0,1.0),l9_1239,float3(l9_1240))*float3(-1.0,-1.0,1.0);
float3 l9_1243=normalize((l9_1241*dot(l9_1241,l9_1242))-(l9_1242*l9_1241.z));
l9_1235=l9_1243;
float3 l9_1244=l9_1235;
l9_1232=l9_1244;
float3 l9_1245=float3(0.0);
l9_1245=l9_620*l9_1232;
float3 l9_1246=float3(0.0);
float3 l9_1247=l9_1245;
float l9_1248=dot(l9_1247,l9_1247);
float l9_1249;
if (l9_1248>0.0)
{
l9_1249=1.0/sqrt(l9_1248);
}
else
{
l9_1249=0.0;
}
float l9_1250=l9_1249;
float3 l9_1251=l9_1247*l9_1250;
l9_1246=l9_1251;
param_13=l9_1246;
param_15=param_13;
}
else
{
float3 l9_1252=float3(0.0);
l9_1252=param_16.VertexNormal_WorldSpace;
float3 l9_1253=float3(0.0);
float3 l9_1254=l9_1252;
float l9_1255=dot(l9_1254,l9_1254);
float l9_1256;
if (l9_1255>0.0)
{
l9_1256=1.0/sqrt(l9_1255);
}
else
{
l9_1256=0.0;
}
float l9_1257=l9_1256;
float3 l9_1258=l9_1254*l9_1257;
l9_1253=l9_1258;
param_14=l9_1253;
param_15=param_14;
}
Result_N337=param_15;
float3 Export_N334=float3(0.0);
Export_N334=Result_N337;
float2 Result_N176=float2(0.0);
float2 param_17=float2(0.0);
float2 param_18=float2(0.0);
float2 param_19=float2(0.0);
float2 param_20=float2(0.0);
float2 param_21=float2(0.0);
ssGlobals param_23=Globals;
float2 param_22;
if (NODE_221_DROPLIST_ITEM_tmp==0)
{
float2 l9_1259=float2(0.0);
l9_1259=param_23.Surface_UVCoord0;
param_17=l9_1259;
param_22=param_17;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==1)
{
float2 l9_1260=float2(0.0);
l9_1260=param_23.Surface_UVCoord1;
param_18=l9_1260;
param_22=param_18;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==2)
{
float2 l9_1261=float2(0.0);
float2 l9_1262=float2(0.0);
float2 l9_1263=float2(0.0);
ssGlobals l9_1264=param_23;
float2 l9_1265;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1266=float2(0.0);
float2 l9_1267=float2(0.0);
float2 l9_1268=float2(0.0);
ssGlobals l9_1269=l9_1264;
float2 l9_1270;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1271=float2(0.0);
float2 l9_1272=float2(0.0);
float2 l9_1273=float2(0.0);
float2 l9_1274=float2(0.0);
float2 l9_1275=float2(0.0);
ssGlobals l9_1276=l9_1269;
float2 l9_1277;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1278=float2(0.0);
l9_1278=l9_1276.Surface_UVCoord0;
l9_1272=l9_1278;
l9_1277=l9_1272;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1279=float2(0.0);
l9_1279=l9_1276.Surface_UVCoord1;
l9_1273=l9_1279;
l9_1277=l9_1273;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1280=float2(0.0);
l9_1280=l9_1276.gScreenCoord;
l9_1274=l9_1280;
l9_1277=l9_1274;
}
else
{
float2 l9_1281=float2(0.0);
l9_1281=l9_1276.Surface_UVCoord0;
l9_1275=l9_1281;
l9_1277=l9_1275;
}
}
}
l9_1271=l9_1277;
float2 l9_1282=float2(0.0);
float2 l9_1283=(*sc_set0.UserUniforms).uv2Scale;
l9_1282=l9_1283;
float2 l9_1284=float2(0.0);
l9_1284=l9_1282;
float2 l9_1285=float2(0.0);
float2 l9_1286=(*sc_set0.UserUniforms).uv2Offset;
l9_1285=l9_1286;
float2 l9_1287=float2(0.0);
l9_1287=l9_1285;
float2 l9_1288=float2(0.0);
l9_1288=(l9_1271*l9_1284)+l9_1287;
float2 l9_1289=float2(0.0);
l9_1289=l9_1288+(l9_1287*(l9_1269.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1267=l9_1289;
l9_1270=l9_1267;
}
else
{
float2 l9_1290=float2(0.0);
float2 l9_1291=float2(0.0);
float2 l9_1292=float2(0.0);
float2 l9_1293=float2(0.0);
float2 l9_1294=float2(0.0);
ssGlobals l9_1295=l9_1269;
float2 l9_1296;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1297=float2(0.0);
l9_1297=l9_1295.Surface_UVCoord0;
l9_1291=l9_1297;
l9_1296=l9_1291;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1298=float2(0.0);
l9_1298=l9_1295.Surface_UVCoord1;
l9_1292=l9_1298;
l9_1296=l9_1292;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1299=float2(0.0);
l9_1299=l9_1295.gScreenCoord;
l9_1293=l9_1299;
l9_1296=l9_1293;
}
else
{
float2 l9_1300=float2(0.0);
l9_1300=l9_1295.Surface_UVCoord0;
l9_1294=l9_1300;
l9_1296=l9_1294;
}
}
}
l9_1290=l9_1296;
float2 l9_1301=float2(0.0);
float2 l9_1302=(*sc_set0.UserUniforms).uv2Scale;
l9_1301=l9_1302;
float2 l9_1303=float2(0.0);
l9_1303=l9_1301;
float2 l9_1304=float2(0.0);
float2 l9_1305=(*sc_set0.UserUniforms).uv2Offset;
l9_1304=l9_1305;
float2 l9_1306=float2(0.0);
l9_1306=l9_1304;
float2 l9_1307=float2(0.0);
l9_1307=(l9_1290*l9_1303)+l9_1306;
l9_1268=l9_1307;
l9_1270=l9_1268;
}
l9_1266=l9_1270;
l9_1262=l9_1266;
l9_1265=l9_1262;
}
else
{
float2 l9_1308=float2(0.0);
l9_1308=l9_1264.Surface_UVCoord0;
l9_1263=l9_1308;
l9_1265=l9_1263;
}
l9_1261=l9_1265;
float2 l9_1309=float2(0.0);
l9_1309=l9_1261;
float2 l9_1310=float2(0.0);
l9_1310=l9_1309;
param_19=l9_1310;
param_22=param_19;
}
else
{
if (NODE_221_DROPLIST_ITEM_tmp==3)
{
float2 l9_1311=float2(0.0);
float2 l9_1312=float2(0.0);
float2 l9_1313=float2(0.0);
ssGlobals l9_1314=param_23;
float2 l9_1315;
if ((int(Tweak_N11_tmp)!=0))
{
float2 l9_1316=float2(0.0);
float2 l9_1317=float2(0.0);
float2 l9_1318=float2(0.0);
ssGlobals l9_1319=l9_1314;
float2 l9_1320;
if ((int(uv3EnableAnimation_tmp)!=0))
{
float2 l9_1321=float2(0.0);
float2 l9_1322=float2(0.0);
float2 l9_1323=float2(0.0);
float2 l9_1324=float2(0.0);
float2 l9_1325=float2(0.0);
float2 l9_1326=float2(0.0);
ssGlobals l9_1327=l9_1319;
float2 l9_1328;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1329=float2(0.0);
l9_1329=l9_1327.Surface_UVCoord0;
l9_1322=l9_1329;
l9_1328=l9_1322;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1330=float2(0.0);
l9_1330=l9_1327.Surface_UVCoord1;
l9_1323=l9_1330;
l9_1328=l9_1323;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1331=float2(0.0);
l9_1331=l9_1327.gScreenCoord;
l9_1324=l9_1331;
l9_1328=l9_1324;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1332=float2(0.0);
float2 l9_1333=float2(0.0);
float2 l9_1334=float2(0.0);
ssGlobals l9_1335=l9_1327;
float2 l9_1336;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1337=float2(0.0);
float2 l9_1338=float2(0.0);
float2 l9_1339=float2(0.0);
ssGlobals l9_1340=l9_1335;
float2 l9_1341;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1342=float2(0.0);
float2 l9_1343=float2(0.0);
float2 l9_1344=float2(0.0);
float2 l9_1345=float2(0.0);
float2 l9_1346=float2(0.0);
ssGlobals l9_1347=l9_1340;
float2 l9_1348;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1349=float2(0.0);
l9_1349=l9_1347.Surface_UVCoord0;
l9_1343=l9_1349;
l9_1348=l9_1343;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1350=float2(0.0);
l9_1350=l9_1347.Surface_UVCoord1;
l9_1344=l9_1350;
l9_1348=l9_1344;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1351=float2(0.0);
l9_1351=l9_1347.gScreenCoord;
l9_1345=l9_1351;
l9_1348=l9_1345;
}
else
{
float2 l9_1352=float2(0.0);
l9_1352=l9_1347.Surface_UVCoord0;
l9_1346=l9_1352;
l9_1348=l9_1346;
}
}
}
l9_1342=l9_1348;
float2 l9_1353=float2(0.0);
float2 l9_1354=(*sc_set0.UserUniforms).uv2Scale;
l9_1353=l9_1354;
float2 l9_1355=float2(0.0);
l9_1355=l9_1353;
float2 l9_1356=float2(0.0);
float2 l9_1357=(*sc_set0.UserUniforms).uv2Offset;
l9_1356=l9_1357;
float2 l9_1358=float2(0.0);
l9_1358=l9_1356;
float2 l9_1359=float2(0.0);
l9_1359=(l9_1342*l9_1355)+l9_1358;
float2 l9_1360=float2(0.0);
l9_1360=l9_1359+(l9_1358*(l9_1340.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1338=l9_1360;
l9_1341=l9_1338;
}
else
{
float2 l9_1361=float2(0.0);
float2 l9_1362=float2(0.0);
float2 l9_1363=float2(0.0);
float2 l9_1364=float2(0.0);
float2 l9_1365=float2(0.0);
ssGlobals l9_1366=l9_1340;
float2 l9_1367;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1368=float2(0.0);
l9_1368=l9_1366.Surface_UVCoord0;
l9_1362=l9_1368;
l9_1367=l9_1362;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1369=float2(0.0);
l9_1369=l9_1366.Surface_UVCoord1;
l9_1363=l9_1369;
l9_1367=l9_1363;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1370=float2(0.0);
l9_1370=l9_1366.gScreenCoord;
l9_1364=l9_1370;
l9_1367=l9_1364;
}
else
{
float2 l9_1371=float2(0.0);
l9_1371=l9_1366.Surface_UVCoord0;
l9_1365=l9_1371;
l9_1367=l9_1365;
}
}
}
l9_1361=l9_1367;
float2 l9_1372=float2(0.0);
float2 l9_1373=(*sc_set0.UserUniforms).uv2Scale;
l9_1372=l9_1373;
float2 l9_1374=float2(0.0);
l9_1374=l9_1372;
float2 l9_1375=float2(0.0);
float2 l9_1376=(*sc_set0.UserUniforms).uv2Offset;
l9_1375=l9_1376;
float2 l9_1377=float2(0.0);
l9_1377=l9_1375;
float2 l9_1378=float2(0.0);
l9_1378=(l9_1361*l9_1374)+l9_1377;
l9_1339=l9_1378;
l9_1341=l9_1339;
}
l9_1337=l9_1341;
l9_1333=l9_1337;
l9_1336=l9_1333;
}
else
{
float2 l9_1379=float2(0.0);
l9_1379=l9_1335.Surface_UVCoord0;
l9_1334=l9_1379;
l9_1336=l9_1334;
}
l9_1332=l9_1336;
float2 l9_1380=float2(0.0);
l9_1380=l9_1332;
float2 l9_1381=float2(0.0);
l9_1381=l9_1380;
l9_1325=l9_1381;
l9_1328=l9_1325;
}
else
{
float2 l9_1382=float2(0.0);
l9_1382=l9_1327.Surface_UVCoord0;
l9_1326=l9_1382;
l9_1328=l9_1326;
}
}
}
}
l9_1321=l9_1328;
float2 l9_1383=float2(0.0);
float2 l9_1384=(*sc_set0.UserUniforms).uv3Scale;
l9_1383=l9_1384;
float2 l9_1385=float2(0.0);
l9_1385=l9_1383;
float2 l9_1386=float2(0.0);
float2 l9_1387=(*sc_set0.UserUniforms).uv3Offset;
l9_1386=l9_1387;
float2 l9_1388=float2(0.0);
l9_1388=l9_1386;
float2 l9_1389=float2(0.0);
l9_1389=(l9_1321*l9_1385)+l9_1388;
float2 l9_1390=float2(0.0);
l9_1390=l9_1389+(l9_1388*(l9_1319.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N063));
l9_1317=l9_1390;
l9_1320=l9_1317;
}
else
{
float2 l9_1391=float2(0.0);
float2 l9_1392=float2(0.0);
float2 l9_1393=float2(0.0);
float2 l9_1394=float2(0.0);
float2 l9_1395=float2(0.0);
float2 l9_1396=float2(0.0);
ssGlobals l9_1397=l9_1319;
float2 l9_1398;
if (NODE_49_DROPLIST_ITEM_tmp==0)
{
float2 l9_1399=float2(0.0);
l9_1399=l9_1397.Surface_UVCoord0;
l9_1392=l9_1399;
l9_1398=l9_1392;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==1)
{
float2 l9_1400=float2(0.0);
l9_1400=l9_1397.Surface_UVCoord1;
l9_1393=l9_1400;
l9_1398=l9_1393;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==2)
{
float2 l9_1401=float2(0.0);
l9_1401=l9_1397.gScreenCoord;
l9_1394=l9_1401;
l9_1398=l9_1394;
}
else
{
if (NODE_49_DROPLIST_ITEM_tmp==3)
{
float2 l9_1402=float2(0.0);
float2 l9_1403=float2(0.0);
float2 l9_1404=float2(0.0);
ssGlobals l9_1405=l9_1397;
float2 l9_1406;
if ((int(Tweak_N67_tmp)!=0))
{
float2 l9_1407=float2(0.0);
float2 l9_1408=float2(0.0);
float2 l9_1409=float2(0.0);
ssGlobals l9_1410=l9_1405;
float2 l9_1411;
if ((int(uv2EnableAnimation_tmp)!=0))
{
float2 l9_1412=float2(0.0);
float2 l9_1413=float2(0.0);
float2 l9_1414=float2(0.0);
float2 l9_1415=float2(0.0);
float2 l9_1416=float2(0.0);
ssGlobals l9_1417=l9_1410;
float2 l9_1418;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1419=float2(0.0);
l9_1419=l9_1417.Surface_UVCoord0;
l9_1413=l9_1419;
l9_1418=l9_1413;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1420=float2(0.0);
l9_1420=l9_1417.Surface_UVCoord1;
l9_1414=l9_1420;
l9_1418=l9_1414;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1421=float2(0.0);
l9_1421=l9_1417.gScreenCoord;
l9_1415=l9_1421;
l9_1418=l9_1415;
}
else
{
float2 l9_1422=float2(0.0);
l9_1422=l9_1417.Surface_UVCoord0;
l9_1416=l9_1422;
l9_1418=l9_1416;
}
}
}
l9_1412=l9_1418;
float2 l9_1423=float2(0.0);
float2 l9_1424=(*sc_set0.UserUniforms).uv2Scale;
l9_1423=l9_1424;
float2 l9_1425=float2(0.0);
l9_1425=l9_1423;
float2 l9_1426=float2(0.0);
float2 l9_1427=(*sc_set0.UserUniforms).uv2Offset;
l9_1426=l9_1427;
float2 l9_1428=float2(0.0);
l9_1428=l9_1426;
float2 l9_1429=float2(0.0);
l9_1429=(l9_1412*l9_1425)+l9_1428;
float2 l9_1430=float2(0.0);
l9_1430=l9_1429+(l9_1428*(l9_1410.gTimeElapsed*(*sc_set0.UserUniforms).Port_Speed_N022));
l9_1408=l9_1430;
l9_1411=l9_1408;
}
else
{
float2 l9_1431=float2(0.0);
float2 l9_1432=float2(0.0);
float2 l9_1433=float2(0.0);
float2 l9_1434=float2(0.0);
float2 l9_1435=float2(0.0);
ssGlobals l9_1436=l9_1410;
float2 l9_1437;
if (NODE_13_DROPLIST_ITEM_tmp==0)
{
float2 l9_1438=float2(0.0);
l9_1438=l9_1436.Surface_UVCoord0;
l9_1432=l9_1438;
l9_1437=l9_1432;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==1)
{
float2 l9_1439=float2(0.0);
l9_1439=l9_1436.Surface_UVCoord1;
l9_1433=l9_1439;
l9_1437=l9_1433;
}
else
{
if (NODE_13_DROPLIST_ITEM_tmp==2)
{
float2 l9_1440=float2(0.0);
l9_1440=l9_1436.gScreenCoord;
l9_1434=l9_1440;
l9_1437=l9_1434;
}
else
{
float2 l9_1441=float2(0.0);
l9_1441=l9_1436.Surface_UVCoord0;
l9_1435=l9_1441;
l9_1437=l9_1435;
}
}
}
l9_1431=l9_1437;
float2 l9_1442=float2(0.0);
float2 l9_1443=(*sc_set0.UserUniforms).uv2Scale;
l9_1442=l9_1443;
float2 l9_1444=float2(0.0);
l9_1444=l9_1442;
float2 l9_1445=float2(0.0);
float2 l9_1446=(*sc_set0.UserUniforms).uv2Offset;
l9_1445=l9_1446;
float2 l9_1447=float2(0.0);
l9_1447=l9_1445;
float2 l9_1448=float2(0.0);
l9_1448=(l9_1431*l9_1444)+l9_1447;
l9_1409=l9_1448;
l9_1411=l9_1409;
}
l9_1407=l9_1411;
l9_1403=l9_1407;
l9_1406=l9_1403;
}
else
{
float2 l9_1449=float2(0.0);
l9_1449=l9_1405.Surface_UVCoord0;
l9_1404=l9_1449;
l9_1406=l9_1404;
}
l9_1402=l9_1406;
float2 l9_1450=float2(0.0);
l9_1450=l9_1402;
float2 l9_1451=float2(0.0);
l9_1451=l9_1450;
l9_1395=l9_1451;
l9_1398=l9_1395;
}
else
{
float2 l9_1452=float2(0.0);
l9_1452=l9_1397.Surface_UVCoord0;
l9_1396=l9_1452;
l9_1398=l9_1396;
}
}
}
}
l9_1391=l9_1398;
float2 l9_1453=float2(0.0);
float2 l9_1454=(*sc_set0.UserUniforms).uv3Scale;
l9_1453=l9_1454;
float2 l9_1455=float2(0.0);
l9_1455=l9_1453;
float2 l9_1456=float2(0.0);
float2 l9_1457=(*sc_set0.UserUniforms).uv3Offset;
l9_1456=l9_1457;
float2 l9_1458=float2(0.0);
l9_1458=l9_1456;
float2 l9_1459=float2(0.0);
l9_1459=(l9_1391*l9_1455)+l9_1458;
l9_1318=l9_1459;
l9_1320=l9_1318;
}
l9_1316=l9_1320;
l9_1312=l9_1316;
l9_1315=l9_1312;
}
else
{
float2 l9_1460=float2(0.0);
l9_1460=l9_1314.Surface_UVCoord0;
l9_1313=l9_1460;
l9_1315=l9_1313;
}
l9_1311=l9_1315;
float2 l9_1461=float2(0.0);
l9_1461=l9_1311;
float2 l9_1462=float2(0.0);
l9_1462=l9_1461;
param_20=l9_1462;
param_22=param_20;
}
else
{
float2 l9_1463=float2(0.0);
l9_1463=param_23.Surface_UVCoord0;
param_21=l9_1463;
param_22=param_21;
}
}
}
}
Result_N176=param_22;
float4 Color_N66=float4(0.0);
int l9_1464;
if ((int(materialParamsTexHasSwappedViews_tmp)!=0))
{
int l9_1465=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1465=0;
}
else
{
l9_1465=in.varStereoViewID;
}
int l9_1466=l9_1465;
l9_1464=1-l9_1466;
}
else
{
int l9_1467=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1467=0;
}
else
{
l9_1467=in.varStereoViewID;
}
int l9_1468=l9_1467;
l9_1464=l9_1468;
}
int l9_1469=l9_1464;
int param_24=materialParamsTexLayout_tmp;
int param_25=l9_1469;
float2 param_26=Result_N176;
bool param_27=(int(SC_USE_UV_TRANSFORM_materialParamsTex_tmp)!=0);
float3x3 param_28=(*sc_set0.UserUniforms).materialParamsTexTransform;
int2 param_29=int2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex_tmp,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex_tmp);
bool param_30=(int(SC_USE_UV_MIN_MAX_materialParamsTex_tmp)!=0);
float4 param_31=(*sc_set0.UserUniforms).materialParamsTexUvMinMax;
bool param_32=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex_tmp)!=0);
float4 param_33=(*sc_set0.UserUniforms).materialParamsTexBorderColor;
float param_34=0.0;
bool l9_1470=param_32&&(!param_30);
float l9_1471=1.0;
float l9_1472=param_26.x;
int l9_1473=param_29.x;
if (l9_1473==1)
{
l9_1472=fract(l9_1472);
}
else
{
if (l9_1473==2)
{
float l9_1474=fract(l9_1472);
float l9_1475=l9_1472-l9_1474;
float l9_1476=step(0.25,fract(l9_1475*0.5));
l9_1472=mix(l9_1474,1.0-l9_1474,fast::clamp(l9_1476,0.0,1.0));
}
}
param_26.x=l9_1472;
float l9_1477=param_26.y;
int l9_1478=param_29.y;
if (l9_1478==1)
{
l9_1477=fract(l9_1477);
}
else
{
if (l9_1478==2)
{
float l9_1479=fract(l9_1477);
float l9_1480=l9_1477-l9_1479;
float l9_1481=step(0.25,fract(l9_1480*0.5));
l9_1477=mix(l9_1479,1.0-l9_1479,fast::clamp(l9_1481,0.0,1.0));
}
}
param_26.y=l9_1477;
if (param_30)
{
bool l9_1482=param_32;
bool l9_1483;
if (l9_1482)
{
l9_1483=param_29.x==3;
}
else
{
l9_1483=l9_1482;
}
float l9_1484=param_26.x;
float l9_1485=param_31.x;
float l9_1486=param_31.z;
bool l9_1487=l9_1483;
float l9_1488=l9_1471;
float l9_1489=fast::clamp(l9_1484,l9_1485,l9_1486);
float l9_1490=step(abs(l9_1484-l9_1489),9.9999997e-06);
l9_1488*=(l9_1490+((1.0-float(l9_1487))*(1.0-l9_1490)));
l9_1484=l9_1489;
param_26.x=l9_1484;
l9_1471=l9_1488;
bool l9_1491=param_32;
bool l9_1492;
if (l9_1491)
{
l9_1492=param_29.y==3;
}
else
{
l9_1492=l9_1491;
}
float l9_1493=param_26.y;
float l9_1494=param_31.y;
float l9_1495=param_31.w;
bool l9_1496=l9_1492;
float l9_1497=l9_1471;
float l9_1498=fast::clamp(l9_1493,l9_1494,l9_1495);
float l9_1499=step(abs(l9_1493-l9_1498),9.9999997e-06);
l9_1497*=(l9_1499+((1.0-float(l9_1496))*(1.0-l9_1499)));
l9_1493=l9_1498;
param_26.y=l9_1493;
l9_1471=l9_1497;
}
float2 l9_1500=param_26;
bool l9_1501=param_27;
float3x3 l9_1502=param_28;
if (l9_1501)
{
l9_1500=float2((l9_1502*float3(l9_1500,1.0)).xy);
}
float2 l9_1503=l9_1500;
param_26=l9_1503;
float l9_1504=param_26.x;
int l9_1505=param_29.x;
bool l9_1506=l9_1470;
float l9_1507=l9_1471;
if ((l9_1505==0)||(l9_1505==3))
{
float l9_1508=l9_1504;
float l9_1509=0.0;
float l9_1510=1.0;
bool l9_1511=l9_1506;
float l9_1512=l9_1507;
float l9_1513=fast::clamp(l9_1508,l9_1509,l9_1510);
float l9_1514=step(abs(l9_1508-l9_1513),9.9999997e-06);
l9_1512*=(l9_1514+((1.0-float(l9_1511))*(1.0-l9_1514)));
l9_1508=l9_1513;
l9_1504=l9_1508;
l9_1507=l9_1512;
}
param_26.x=l9_1504;
l9_1471=l9_1507;
float l9_1515=param_26.y;
int l9_1516=param_29.y;
bool l9_1517=l9_1470;
float l9_1518=l9_1471;
if ((l9_1516==0)||(l9_1516==3))
{
float l9_1519=l9_1515;
float l9_1520=0.0;
float l9_1521=1.0;
bool l9_1522=l9_1517;
float l9_1523=l9_1518;
float l9_1524=fast::clamp(l9_1519,l9_1520,l9_1521);
float l9_1525=step(abs(l9_1519-l9_1524),9.9999997e-06);
l9_1523*=(l9_1525+((1.0-float(l9_1522))*(1.0-l9_1525)));
l9_1519=l9_1524;
l9_1515=l9_1519;
l9_1518=l9_1523;
}
param_26.y=l9_1515;
l9_1471=l9_1518;
float2 l9_1526=param_26;
int l9_1527=param_24;
int l9_1528=param_25;
float l9_1529=param_34;
float2 l9_1530=l9_1526;
int l9_1531=l9_1527;
int l9_1532=l9_1528;
float3 l9_1533=float3(0.0);
if (l9_1531==0)
{
l9_1533=float3(l9_1530,0.0);
}
else
{
if (l9_1531==1)
{
l9_1533=float3(l9_1530.x,(l9_1530.y*0.5)+(0.5-(float(l9_1532)*0.5)),0.0);
}
else
{
l9_1533=float3(l9_1530,float(l9_1532));
}
}
float3 l9_1534=l9_1533;
float3 l9_1535=l9_1534;
float4 l9_1536=sc_set0.materialParamsTex.sample(sc_set0.materialParamsTexSmpSC,l9_1535.xy,bias(l9_1529));
float4 l9_1537=l9_1536;
if (param_32)
{
l9_1537=mix(param_33,l9_1537,float4(l9_1471));
}
float4 l9_1538=l9_1537;
Color_N66=l9_1538;
float Value2_N304=0.0;
float2 param_35=Color_N66.xy;
float param_36=param_35.y;
Value2_N304=param_36;
float Output_N243=0.0;
float param_37=(*sc_set0.UserUniforms).roughness;
Output_N243=param_37;
float Value_N278=0.0;
Value_N278=Output_N243;
float Output_N313=0.0;
Output_N313=Value_N278*Value2_N304;
float Export_N224=0.0;
Export_N224=Output_N313;
float param_38=Export_N158;
float3 param_39=Export_N334;
float param_40=Export_N224;
ssGlobals param_41=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_41.BumpedNormal=param_39;
}
param_38=fast::clamp(param_38,0.0,1.0);
float l9_1539=param_38;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1539<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1540=gl_FragCoord;
float2 l9_1541=floor(mod(l9_1540.xy,float2(4.0)));
float l9_1542=(mod(dot(l9_1541,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1539<l9_1542)
{
discard_fragment();
}
}
float3 l9_1543=param_41.PositionWS;
float3 l9_1544=param_41.BumpedNormal;
float l9_1545=param_40;
float3 l9_1546=l9_1543;
float3 l9_1547=l9_1544;
float l9_1548=l9_1545;
uint l9_1549=0u;
uint3 l9_1550=uint3(round((l9_1546-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_1550.x,l9_1550.y,l9_1550.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_1551=l9_1547;
float l9_1552=dot(abs(l9_1551),float3(1.0));
l9_1551/=float3(l9_1552);
float2 l9_1553=float2(fast::clamp(-l9_1551.z,0.0,1.0));
float2 l9_1554=l9_1551.xy+mix(-l9_1553,l9_1553,step(float2(0.0),l9_1551.xy));
uint l9_1555=as_type<uint>(half2(l9_1554));
uint2 l9_1556=uint2(l9_1555&65535u,l9_1555>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_1556.x,l9_1556.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_1549;
uint l9_1557=uint(fast::clamp(l9_1548,0.0,1.0)*1000.0);
l9_1557 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_1557;
return out;
}
} // RECEIVER MODE SHADER
