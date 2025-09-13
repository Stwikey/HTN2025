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
//sampler sampler baseColorTextureSmpSC 0:35
//sampler sampler clearcoatNormalTextureSmpSC 0:36
//sampler sampler clearcoatRoughnessTextureSmpSC 0:37
//sampler sampler clearcoatTextureSmpSC 0:38
//sampler sampler emissiveTextureSmpSC 0:39
//sampler sampler intensityTextureSmpSC 0:40
//sampler sampler metallicRoughnessTextureSmpSC 0:41
//sampler sampler normalTextureSmpSC 0:42
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
//sampler sampler screenTextureSmpSC 0:55
//sampler sampler sheenColorTextureSmpSC 0:56
//sampler sampler sheenRoughnessTextureSmpSC 0:57
//sampler sampler transmissionTextureSmpSC 0:58
//texture texture2D baseColorTexture 0:4:0:35
//texture texture2D clearcoatNormalTexture 0:5:0:36
//texture texture2D clearcoatRoughnessTexture 0:6:0:37
//texture texture2D clearcoatTexture 0:7:0:38
//texture texture2D emissiveTexture 0:8:0:39
//texture texture2D intensityTexture 0:9:0:40
//texture texture2D metallicRoughnessTexture 0:10:0:41
//texture texture2D normalTexture 0:11:0:42
//texture texture2D sc_EnvmapDiffuse 0:12:0:43
//texture texture2D sc_EnvmapSpecular 0:13:0:44
//texture texture2D sc_RayTracingGlobalIllumination 0:22:0:46
//texture utexture2D sc_RayTracingHitCasterIdAndBarycentric 0:23:0:47
//texture texture2D sc_RayTracingRayDirection 0:24:0:48
//texture texture2D sc_RayTracingReflections 0:25:0:49
//texture texture2D sc_RayTracingShadows 0:26:0:50
//texture texture2D sc_SSAOTexture 0:27:0:51
//texture texture2D sc_ScreenTexture 0:28:0:52
//texture texture2D sc_ShadowTexture 0:29:0:53
//texture texture2D screenTexture 0:31:0:55
//texture texture2D sheenColorTexture 0:32:0:56
//texture texture2D sheenRoughnessTexture 0:33:0:57
//texture texture2D transmissionTexture 0:34:0:58
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:59:6544 {
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
//float3 emissiveFactor 4624
//float3x3 emissiveTextureTransform 4688
//float4 emissiveTextureUvMinMax 4736
//float4 emissiveTextureBorderColor 4752
//float normalTextureScale 4768
//float3x3 normalTextureTransform 4832
//float4 normalTextureUvMinMax 4880
//float4 normalTextureBorderColor 4896
//float metallicFactor 4912
//float roughnessFactor 4916
//float occlusionTextureStrength 4920
//float3x3 metallicRoughnessTextureTransform 4976
//float4 metallicRoughnessTextureUvMinMax 5024
//float4 metallicRoughnessTextureBorderColor 5040
//float transmissionFactor 5056
//float3x3 transmissionTextureTransform 5120
//float4 transmissionTextureUvMinMax 5168
//float4 transmissionTextureBorderColor 5184
//float3x3 screenTextureTransform 5248
//float4 screenTextureUvMinMax 5296
//float4 screenTextureBorderColor 5312
//float3 sheenColorFactor 5328
//float3x3 sheenColorTextureTransform 5392
//float4 sheenColorTextureUvMinMax 5440
//float4 sheenColorTextureBorderColor 5456
//float sheenRoughnessFactor 5472
//float3x3 sheenRoughnessTextureTransform 5536
//float4 sheenRoughnessTextureUvMinMax 5584
//float4 sheenRoughnessTextureBorderColor 5600
//float clearcoatFactor 5616
//float3x3 clearcoatTextureTransform 5680
//float4 clearcoatTextureUvMinMax 5728
//float4 clearcoatTextureBorderColor 5744
//float clearcoatRoughnessFactor 5760
//float3x3 clearcoatRoughnessTextureTransform 5824
//float4 clearcoatRoughnessTextureUvMinMax 5872
//float4 clearcoatRoughnessTextureBorderColor 5888
//float3x3 clearcoatNormalTextureTransform 5952
//float4 clearcoatNormalTextureUvMinMax 6000
//float4 clearcoatNormalTextureBorderColor 6016
//float3x3 baseColorTextureTransform 6080
//float4 baseColorTextureUvMinMax 6128
//float4 baseColorTextureBorderColor 6144
//float4 baseColorFactor 6160
//float2 baseColorTexture_offset 6176
//float2 baseColorTexture_scale 6184
//float baseColorTexture_rotation 6192
//float2 emissiveTexture_offset 6200
//float2 emissiveTexture_scale 6208
//float emissiveTexture_rotation 6216
//float2 normalTexture_offset 6224
//float2 normalTexture_scale 6232
//float normalTexture_rotation 6240
//float2 metallicRoughnessTexture_offset 6248
//float2 metallicRoughnessTexture_scale 6256
//float metallicRoughnessTexture_rotation 6264
//float2 transmissionTexture_offset 6272
//float2 transmissionTexture_scale 6280
//float transmissionTexture_rotation 6288
//float2 sheenColorTexture_offset 6296
//float2 sheenColorTexture_scale 6304
//float sheenColorTexture_rotation 6312
//float2 sheenRoughnessTexture_offset 6320
//float2 sheenRoughnessTexture_scale 6328
//float sheenRoughnessTexture_rotation 6336
//float2 clearcoatTexture_offset 6344
//float2 clearcoatTexture_scale 6352
//float clearcoatTexture_rotation 6360
//float2 clearcoatNormalTexture_offset 6368
//float2 clearcoatNormalTexture_scale 6376
//float clearcoatNormalTexture_rotation 6384
//float2 clearcoatRoughnessTexture_offset 6392
//float2 clearcoatRoughnessTexture_scale 6400
//float clearcoatRoughnessTexture_rotation 6408
//float3 Port_SpecularAO_N036 6432
//float3 Port_Albedo_N405 6448
//float Port_Opacity_N405 6464
//float3 Port_Emissive_N405 6480
//float Port_Metallic_N405 6496
//float3 Port_SpecularAO_N405 6512
//float depthRef 6528
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
//spec_const bool ENABLE_BASE_TEXTURE_TRANSFORM 30 0
//spec_const bool ENABLE_BASE_TEX 31 0
//spec_const bool ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM 32 0
//spec_const bool ENABLE_CLEARCOAT_NORMAL_TEX 33 0
//spec_const bool ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM 34 0
//spec_const bool ENABLE_CLEARCOAT_ROUGHNESS_TEX 35 0
//spec_const bool ENABLE_CLEARCOAT_TEXTURE_TRANSFORM 36 0
//spec_const bool ENABLE_CLEARCOAT_TEX 37 0
//spec_const bool ENABLE_CLEARCOAT 38 0
//spec_const bool ENABLE_EMISSIVE_TEXTURE_TRANSFORM 39 0
//spec_const bool ENABLE_EMISSIVE 40 0
//spec_const bool ENABLE_GLTF_LIGHTING 41 0
//spec_const bool ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM 42 0
//spec_const bool ENABLE_METALLIC_ROUGHNESS_TEX 43 0
//spec_const bool ENABLE_NORMALMAP 44 0
//spec_const bool ENABLE_NORMAL_TEXTURE_TRANSFORM 45 0
//spec_const bool ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM 46 0
//spec_const bool ENABLE_SHEEN_COLOR_TEX 47 0
//spec_const bool ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM 48 0
//spec_const bool ENABLE_SHEEN_ROUGHNESS_TEX 49 0
//spec_const bool ENABLE_SHEEN 50 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 51 0
//spec_const bool ENABLE_TEXTURE_TRANSFORM 52 0
//spec_const bool ENABLE_TRANSMISSION_TEXTURE_TRANSFORM 53 0
//spec_const bool ENABLE_TRANSMISSION_TEX 54 0
//spec_const bool ENABLE_TRANSMISSION 55 0
//spec_const bool ENABLE_VERTEX_COLOR_BASE 56 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseColorTexture 57 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture 58 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture 59 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_clearcoatTexture 60 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_emissiveTexture 61 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 62 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture 63 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTexture 64 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_screenTexture 65 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sheenColorTexture 66 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture 67 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_transmissionTexture 68 0
//spec_const bool SC_USE_UV_MIN_MAX_baseColorTexture 69 0
//spec_const bool SC_USE_UV_MIN_MAX_clearcoatNormalTexture 70 0
//spec_const bool SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture 71 0
//spec_const bool SC_USE_UV_MIN_MAX_clearcoatTexture 72 0
//spec_const bool SC_USE_UV_MIN_MAX_emissiveTexture 73 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 74 0
//spec_const bool SC_USE_UV_MIN_MAX_metallicRoughnessTexture 75 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTexture 76 0
//spec_const bool SC_USE_UV_MIN_MAX_screenTexture 77 0
//spec_const bool SC_USE_UV_MIN_MAX_sheenColorTexture 78 0
//spec_const bool SC_USE_UV_MIN_MAX_sheenRoughnessTexture 79 0
//spec_const bool SC_USE_UV_MIN_MAX_transmissionTexture 80 0
//spec_const bool SC_USE_UV_TRANSFORM_baseColorTexture 81 0
//spec_const bool SC_USE_UV_TRANSFORM_clearcoatNormalTexture 82 0
//spec_const bool SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture 83 0
//spec_const bool SC_USE_UV_TRANSFORM_clearcoatTexture 84 0
//spec_const bool SC_USE_UV_TRANSFORM_emissiveTexture 85 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 86 0
//spec_const bool SC_USE_UV_TRANSFORM_metallicRoughnessTexture 87 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTexture 88 0
//spec_const bool SC_USE_UV_TRANSFORM_screenTexture 89 0
//spec_const bool SC_USE_UV_TRANSFORM_sheenColorTexture 90 0
//spec_const bool SC_USE_UV_TRANSFORM_sheenRoughnessTexture 91 0
//spec_const bool SC_USE_UV_TRANSFORM_transmissionTexture 92 0
//spec_const bool UseViewSpaceDepthVariant 93 1
//spec_const bool baseColorTextureHasSwappedViews 94 0
//spec_const bool clearcoatNormalTextureHasSwappedViews 95 0
//spec_const bool clearcoatRoughnessTextureHasSwappedViews 96 0
//spec_const bool clearcoatTextureHasSwappedViews 97 0
//spec_const bool emissiveTextureHasSwappedViews 98 0
//spec_const bool intensityTextureHasSwappedViews 99 0
//spec_const bool metallicRoughnessTextureHasSwappedViews 100 0
//spec_const bool normalTextureHasSwappedViews 101 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 102 0
//spec_const bool sc_BlendMode_Add 103 0
//spec_const bool sc_BlendMode_AlphaTest 104 0
//spec_const bool sc_BlendMode_AlphaToCoverage 105 0
//spec_const bool sc_BlendMode_ColoredGlass 106 0
//spec_const bool sc_BlendMode_Custom 107 0
//spec_const bool sc_BlendMode_Max 108 0
//spec_const bool sc_BlendMode_Min 109 0
//spec_const bool sc_BlendMode_MultiplyOriginal 110 0
//spec_const bool sc_BlendMode_Multiply 111 0
//spec_const bool sc_BlendMode_Normal 112 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 113 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 114 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 115 0
//spec_const bool sc_BlendMode_Screen 116 0
//spec_const bool sc_DepthOnly 117 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 118 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 119 0
//spec_const bool sc_FramebufferFetch 120 0
//spec_const bool sc_HasDiffuseEnvmap 121 0
//spec_const bool sc_IsEditor 122 0
//spec_const bool sc_LightEstimation 123 0
//spec_const bool sc_MotionVectorsPass 124 0
//spec_const bool sc_OITCompositingPass 125 0
//spec_const bool sc_OITDepthBoundsPass 126 0
//spec_const bool sc_OITDepthGatherPass 127 0
//spec_const bool sc_OutputBounds 128 0
//spec_const bool sc_ProjectiveShadowsCaster 129 0
//spec_const bool sc_ProjectiveShadowsReceiver 130 0
//spec_const bool sc_RayTracingCasterForceOpaque 131 0
//spec_const bool sc_RayTracingGlobalIlluminationHasSwappedViews 132 0
//spec_const bool sc_RayTracingReflectionsHasSwappedViews 133 0
//spec_const bool sc_RayTracingShadowsHasSwappedViews 134 0
//spec_const bool sc_RenderAlphaToColor 135 0
//spec_const bool sc_SSAOEnabled 136 0
//spec_const bool sc_ScreenTextureHasSwappedViews 137 0
//spec_const bool sc_TAAEnabled 138 0
//spec_const bool sc_VertexBlendingUseNormals 139 0
//spec_const bool sc_VertexBlending 140 0
//spec_const bool sc_Voxelization 141 0
//spec_const bool screenTextureHasSwappedViews 142 0
//spec_const bool sheenColorTextureHasSwappedViews 143 0
//spec_const bool sheenRoughnessTextureHasSwappedViews 144 0
//spec_const bool transmissionTextureHasSwappedViews 145 0
//spec_const int NODE_10_DROPLIST_ITEM 146 0
//spec_const int NODE_11_DROPLIST_ITEM 147 0
//spec_const int NODE_7_DROPLIST_ITEM 148 0
//spec_const int NODE_8_DROPLIST_ITEM 149 0
//spec_const int SC_DEVICE_CLASS 150 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseColorTexture 151 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture 152 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture 153 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture 154 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_emissiveTexture 155 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 156 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture 157 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTexture 158 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_screenTexture 159 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture 160 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture 161 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_transmissionTexture 162 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseColorTexture 163 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture 164 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture 165 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture 166 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_emissiveTexture 167 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 168 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture 169 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTexture 170 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_screenTexture 171 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture 172 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture 173 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_transmissionTexture 174 -1
//spec_const int Tweak_N30 175 0
//spec_const int Tweak_N32 176 0
//spec_const int Tweak_N37 177 0
//spec_const int Tweak_N44 178 0
//spec_const int Tweak_N47 179 0
//spec_const int Tweak_N60 180 0
//spec_const int baseColorTextureLayout 181 0
//spec_const int clearcoatNormalTextureLayout 182 0
//spec_const int clearcoatRoughnessTextureLayout 183 0
//spec_const int clearcoatTextureLayout 184 0
//spec_const int emissiveTextureLayout 185 0
//spec_const int intensityTextureLayout 186 0
//spec_const int metallicRoughnessTextureLayout 187 0
//spec_const int normalTextureLayout 188 0
//spec_const int sc_AmbientLightMode0 189 0
//spec_const int sc_AmbientLightMode1 190 0
//spec_const int sc_AmbientLightMode2 191 0
//spec_const int sc_AmbientLightMode_Constant 192 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 193 0
//spec_const int sc_AmbientLightMode_FromCamera 194 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 195 0
//spec_const int sc_AmbientLightsCount 196 0
//spec_const int sc_DepthBufferMode 197 0
//spec_const int sc_DirectionalLightsCount 198 0
//spec_const int sc_EnvLightMode 199 0
//spec_const int sc_EnvmapDiffuseLayout 200 0
//spec_const int sc_EnvmapSpecularLayout 201 0
//spec_const int sc_LightEstimationSGCount 202 0
//spec_const int sc_PointLightsCount 203 0
//spec_const int sc_RayTracingGlobalIlluminationLayout 204 0
//spec_const int sc_RayTracingReflectionsLayout 205 0
//spec_const int sc_RayTracingShadowsLayout 206 0
//spec_const int sc_RenderingSpace 207 -1
//spec_const int sc_ScreenTextureLayout 208 0
//spec_const int sc_ShaderCacheConstant 209 0
//spec_const int sc_SkinBonesCount 210 0
//spec_const int sc_StereoRenderingMode 211 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 212 0
//spec_const int screenTextureLayout 213 0
//spec_const int sheenColorTextureLayout 214 0
//spec_const int sheenRoughnessTextureLayout 215 0
//spec_const int transmissionTextureLayout 216 0
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
constant bool ENABLE_BASE_TEXTURE_TRANSFORM [[function_constant(30)]];
constant bool ENABLE_BASE_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_BASE_TEXTURE_TRANSFORM) ? ENABLE_BASE_TEXTURE_TRANSFORM : false;
constant bool ENABLE_BASE_TEX [[function_constant(31)]];
constant bool ENABLE_BASE_TEX_tmp = is_function_constant_defined(ENABLE_BASE_TEX) ? ENABLE_BASE_TEX : false;
constant bool ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM [[function_constant(32)]];
constant bool ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM) ? ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM : false;
constant bool ENABLE_CLEARCOAT_NORMAL_TEX [[function_constant(33)]];
constant bool ENABLE_CLEARCOAT_NORMAL_TEX_tmp = is_function_constant_defined(ENABLE_CLEARCOAT_NORMAL_TEX) ? ENABLE_CLEARCOAT_NORMAL_TEX : false;
constant bool ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM [[function_constant(34)]];
constant bool ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM) ? ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM : false;
constant bool ENABLE_CLEARCOAT_ROUGHNESS_TEX [[function_constant(35)]];
constant bool ENABLE_CLEARCOAT_ROUGHNESS_TEX_tmp = is_function_constant_defined(ENABLE_CLEARCOAT_ROUGHNESS_TEX) ? ENABLE_CLEARCOAT_ROUGHNESS_TEX : false;
constant bool ENABLE_CLEARCOAT_TEXTURE_TRANSFORM [[function_constant(36)]];
constant bool ENABLE_CLEARCOAT_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_CLEARCOAT_TEXTURE_TRANSFORM) ? ENABLE_CLEARCOAT_TEXTURE_TRANSFORM : false;
constant bool ENABLE_CLEARCOAT_TEX [[function_constant(37)]];
constant bool ENABLE_CLEARCOAT_TEX_tmp = is_function_constant_defined(ENABLE_CLEARCOAT_TEX) ? ENABLE_CLEARCOAT_TEX : false;
constant bool ENABLE_CLEARCOAT [[function_constant(38)]];
constant bool ENABLE_CLEARCOAT_tmp = is_function_constant_defined(ENABLE_CLEARCOAT) ? ENABLE_CLEARCOAT : false;
constant bool ENABLE_EMISSIVE_TEXTURE_TRANSFORM [[function_constant(39)]];
constant bool ENABLE_EMISSIVE_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_EMISSIVE_TEXTURE_TRANSFORM) ? ENABLE_EMISSIVE_TEXTURE_TRANSFORM : false;
constant bool ENABLE_EMISSIVE [[function_constant(40)]];
constant bool ENABLE_EMISSIVE_tmp = is_function_constant_defined(ENABLE_EMISSIVE) ? ENABLE_EMISSIVE : false;
constant bool ENABLE_GLTF_LIGHTING [[function_constant(41)]];
constant bool ENABLE_GLTF_LIGHTING_tmp = is_function_constant_defined(ENABLE_GLTF_LIGHTING) ? ENABLE_GLTF_LIGHTING : false;
constant bool ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM [[function_constant(42)]];
constant bool ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM) ? ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM : false;
constant bool ENABLE_METALLIC_ROUGHNESS_TEX [[function_constant(43)]];
constant bool ENABLE_METALLIC_ROUGHNESS_TEX_tmp = is_function_constant_defined(ENABLE_METALLIC_ROUGHNESS_TEX) ? ENABLE_METALLIC_ROUGHNESS_TEX : false;
constant bool ENABLE_NORMALMAP [[function_constant(44)]];
constant bool ENABLE_NORMALMAP_tmp = is_function_constant_defined(ENABLE_NORMALMAP) ? ENABLE_NORMALMAP : false;
constant bool ENABLE_NORMAL_TEXTURE_TRANSFORM [[function_constant(45)]];
constant bool ENABLE_NORMAL_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_NORMAL_TEXTURE_TRANSFORM) ? ENABLE_NORMAL_TEXTURE_TRANSFORM : false;
constant bool ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM [[function_constant(46)]];
constant bool ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM) ? ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM : false;
constant bool ENABLE_SHEEN_COLOR_TEX [[function_constant(47)]];
constant bool ENABLE_SHEEN_COLOR_TEX_tmp = is_function_constant_defined(ENABLE_SHEEN_COLOR_TEX) ? ENABLE_SHEEN_COLOR_TEX : false;
constant bool ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM [[function_constant(48)]];
constant bool ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM) ? ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM : false;
constant bool ENABLE_SHEEN_ROUGHNESS_TEX [[function_constant(49)]];
constant bool ENABLE_SHEEN_ROUGHNESS_TEX_tmp = is_function_constant_defined(ENABLE_SHEEN_ROUGHNESS_TEX) ? ENABLE_SHEEN_ROUGHNESS_TEX : false;
constant bool ENABLE_SHEEN [[function_constant(50)]];
constant bool ENABLE_SHEEN_tmp = is_function_constant_defined(ENABLE_SHEEN) ? ENABLE_SHEEN : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(51)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool ENABLE_TEXTURE_TRANSFORM [[function_constant(52)]];
constant bool ENABLE_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_TEXTURE_TRANSFORM) ? ENABLE_TEXTURE_TRANSFORM : false;
constant bool ENABLE_TRANSMISSION_TEXTURE_TRANSFORM [[function_constant(53)]];
constant bool ENABLE_TRANSMISSION_TEXTURE_TRANSFORM_tmp = is_function_constant_defined(ENABLE_TRANSMISSION_TEXTURE_TRANSFORM) ? ENABLE_TRANSMISSION_TEXTURE_TRANSFORM : false;
constant bool ENABLE_TRANSMISSION_TEX [[function_constant(54)]];
constant bool ENABLE_TRANSMISSION_TEX_tmp = is_function_constant_defined(ENABLE_TRANSMISSION_TEX) ? ENABLE_TRANSMISSION_TEX : false;
constant bool ENABLE_TRANSMISSION [[function_constant(55)]];
constant bool ENABLE_TRANSMISSION_tmp = is_function_constant_defined(ENABLE_TRANSMISSION) ? ENABLE_TRANSMISSION : false;
constant bool ENABLE_VERTEX_COLOR_BASE [[function_constant(56)]];
constant bool ENABLE_VERTEX_COLOR_BASE_tmp = is_function_constant_defined(ENABLE_VERTEX_COLOR_BASE) ? ENABLE_VERTEX_COLOR_BASE : false;
constant bool SC_USE_CLAMP_TO_BORDER_baseColorTexture [[function_constant(57)]];
constant bool SC_USE_CLAMP_TO_BORDER_baseColorTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_baseColorTexture) ? SC_USE_CLAMP_TO_BORDER_baseColorTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture [[function_constant(58)]];
constant bool SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture) ? SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture [[function_constant(59)]];
constant bool SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture) ? SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_clearcoatTexture [[function_constant(60)]];
constant bool SC_USE_CLAMP_TO_BORDER_clearcoatTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_clearcoatTexture) ? SC_USE_CLAMP_TO_BORDER_clearcoatTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTexture [[function_constant(61)]];
constant bool SC_USE_CLAMP_TO_BORDER_emissiveTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_emissiveTexture) ? SC_USE_CLAMP_TO_BORDER_emissiveTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(62)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture [[function_constant(63)]];
constant bool SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture) ? SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_normalTexture [[function_constant(64)]];
constant bool SC_USE_CLAMP_TO_BORDER_normalTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normalTexture) ? SC_USE_CLAMP_TO_BORDER_normalTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_screenTexture [[function_constant(65)]];
constant bool SC_USE_CLAMP_TO_BORDER_screenTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_screenTexture) ? SC_USE_CLAMP_TO_BORDER_screenTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_sheenColorTexture [[function_constant(66)]];
constant bool SC_USE_CLAMP_TO_BORDER_sheenColorTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sheenColorTexture) ? SC_USE_CLAMP_TO_BORDER_sheenColorTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture [[function_constant(67)]];
constant bool SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture) ? SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_transmissionTexture [[function_constant(68)]];
constant bool SC_USE_CLAMP_TO_BORDER_transmissionTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_transmissionTexture) ? SC_USE_CLAMP_TO_BORDER_transmissionTexture : false;
constant bool SC_USE_UV_MIN_MAX_baseColorTexture [[function_constant(69)]];
constant bool SC_USE_UV_MIN_MAX_baseColorTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseColorTexture) ? SC_USE_UV_MIN_MAX_baseColorTexture : false;
constant bool SC_USE_UV_MIN_MAX_clearcoatNormalTexture [[function_constant(70)]];
constant bool SC_USE_UV_MIN_MAX_clearcoatNormalTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_clearcoatNormalTexture) ? SC_USE_UV_MIN_MAX_clearcoatNormalTexture : false;
constant bool SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture [[function_constant(71)]];
constant bool SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture) ? SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture : false;
constant bool SC_USE_UV_MIN_MAX_clearcoatTexture [[function_constant(72)]];
constant bool SC_USE_UV_MIN_MAX_clearcoatTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_clearcoatTexture) ? SC_USE_UV_MIN_MAX_clearcoatTexture : false;
constant bool SC_USE_UV_MIN_MAX_emissiveTexture [[function_constant(73)]];
constant bool SC_USE_UV_MIN_MAX_emissiveTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_emissiveTexture) ? SC_USE_UV_MIN_MAX_emissiveTexture : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(74)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_metallicRoughnessTexture [[function_constant(75)]];
constant bool SC_USE_UV_MIN_MAX_metallicRoughnessTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_metallicRoughnessTexture) ? SC_USE_UV_MIN_MAX_metallicRoughnessTexture : false;
constant bool SC_USE_UV_MIN_MAX_normalTexture [[function_constant(76)]];
constant bool SC_USE_UV_MIN_MAX_normalTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normalTexture) ? SC_USE_UV_MIN_MAX_normalTexture : false;
constant bool SC_USE_UV_MIN_MAX_screenTexture [[function_constant(77)]];
constant bool SC_USE_UV_MIN_MAX_screenTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_screenTexture) ? SC_USE_UV_MIN_MAX_screenTexture : false;
constant bool SC_USE_UV_MIN_MAX_sheenColorTexture [[function_constant(78)]];
constant bool SC_USE_UV_MIN_MAX_sheenColorTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sheenColorTexture) ? SC_USE_UV_MIN_MAX_sheenColorTexture : false;
constant bool SC_USE_UV_MIN_MAX_sheenRoughnessTexture [[function_constant(79)]];
constant bool SC_USE_UV_MIN_MAX_sheenRoughnessTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sheenRoughnessTexture) ? SC_USE_UV_MIN_MAX_sheenRoughnessTexture : false;
constant bool SC_USE_UV_MIN_MAX_transmissionTexture [[function_constant(80)]];
constant bool SC_USE_UV_MIN_MAX_transmissionTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_transmissionTexture) ? SC_USE_UV_MIN_MAX_transmissionTexture : false;
constant bool SC_USE_UV_TRANSFORM_baseColorTexture [[function_constant(81)]];
constant bool SC_USE_UV_TRANSFORM_baseColorTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseColorTexture) ? SC_USE_UV_TRANSFORM_baseColorTexture : false;
constant bool SC_USE_UV_TRANSFORM_clearcoatNormalTexture [[function_constant(82)]];
constant bool SC_USE_UV_TRANSFORM_clearcoatNormalTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_clearcoatNormalTexture) ? SC_USE_UV_TRANSFORM_clearcoatNormalTexture : false;
constant bool SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture [[function_constant(83)]];
constant bool SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture) ? SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture : false;
constant bool SC_USE_UV_TRANSFORM_clearcoatTexture [[function_constant(84)]];
constant bool SC_USE_UV_TRANSFORM_clearcoatTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_clearcoatTexture) ? SC_USE_UV_TRANSFORM_clearcoatTexture : false;
constant bool SC_USE_UV_TRANSFORM_emissiveTexture [[function_constant(85)]];
constant bool SC_USE_UV_TRANSFORM_emissiveTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_emissiveTexture) ? SC_USE_UV_TRANSFORM_emissiveTexture : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(86)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_metallicRoughnessTexture [[function_constant(87)]];
constant bool SC_USE_UV_TRANSFORM_metallicRoughnessTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_metallicRoughnessTexture) ? SC_USE_UV_TRANSFORM_metallicRoughnessTexture : false;
constant bool SC_USE_UV_TRANSFORM_normalTexture [[function_constant(88)]];
constant bool SC_USE_UV_TRANSFORM_normalTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normalTexture) ? SC_USE_UV_TRANSFORM_normalTexture : false;
constant bool SC_USE_UV_TRANSFORM_screenTexture [[function_constant(89)]];
constant bool SC_USE_UV_TRANSFORM_screenTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_screenTexture) ? SC_USE_UV_TRANSFORM_screenTexture : false;
constant bool SC_USE_UV_TRANSFORM_sheenColorTexture [[function_constant(90)]];
constant bool SC_USE_UV_TRANSFORM_sheenColorTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sheenColorTexture) ? SC_USE_UV_TRANSFORM_sheenColorTexture : false;
constant bool SC_USE_UV_TRANSFORM_sheenRoughnessTexture [[function_constant(91)]];
constant bool SC_USE_UV_TRANSFORM_sheenRoughnessTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sheenRoughnessTexture) ? SC_USE_UV_TRANSFORM_sheenRoughnessTexture : false;
constant bool SC_USE_UV_TRANSFORM_transmissionTexture [[function_constant(92)]];
constant bool SC_USE_UV_TRANSFORM_transmissionTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_transmissionTexture) ? SC_USE_UV_TRANSFORM_transmissionTexture : false;
constant bool UseViewSpaceDepthVariant [[function_constant(93)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool baseColorTextureHasSwappedViews [[function_constant(94)]];
constant bool baseColorTextureHasSwappedViews_tmp = is_function_constant_defined(baseColorTextureHasSwappedViews) ? baseColorTextureHasSwappedViews : false;
constant bool clearcoatNormalTextureHasSwappedViews [[function_constant(95)]];
constant bool clearcoatNormalTextureHasSwappedViews_tmp = is_function_constant_defined(clearcoatNormalTextureHasSwappedViews) ? clearcoatNormalTextureHasSwappedViews : false;
constant bool clearcoatRoughnessTextureHasSwappedViews [[function_constant(96)]];
constant bool clearcoatRoughnessTextureHasSwappedViews_tmp = is_function_constant_defined(clearcoatRoughnessTextureHasSwappedViews) ? clearcoatRoughnessTextureHasSwappedViews : false;
constant bool clearcoatTextureHasSwappedViews [[function_constant(97)]];
constant bool clearcoatTextureHasSwappedViews_tmp = is_function_constant_defined(clearcoatTextureHasSwappedViews) ? clearcoatTextureHasSwappedViews : false;
constant bool emissiveTextureHasSwappedViews [[function_constant(98)]];
constant bool emissiveTextureHasSwappedViews_tmp = is_function_constant_defined(emissiveTextureHasSwappedViews) ? emissiveTextureHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(99)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool metallicRoughnessTextureHasSwappedViews [[function_constant(100)]];
constant bool metallicRoughnessTextureHasSwappedViews_tmp = is_function_constant_defined(metallicRoughnessTextureHasSwappedViews) ? metallicRoughnessTextureHasSwappedViews : false;
constant bool normalTextureHasSwappedViews [[function_constant(101)]];
constant bool normalTextureHasSwappedViews_tmp = is_function_constant_defined(normalTextureHasSwappedViews) ? normalTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(102)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(103)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(104)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(105)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(106)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(107)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(108)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(109)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(110)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(111)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(112)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(113)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(114)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(115)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(116)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(117)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapDiffuseHasSwappedViews [[function_constant(118)]];
constant bool sc_EnvmapDiffuseHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapDiffuseHasSwappedViews) ? sc_EnvmapDiffuseHasSwappedViews : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(119)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(120)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_HasDiffuseEnvmap [[function_constant(121)]];
constant bool sc_HasDiffuseEnvmap_tmp = is_function_constant_defined(sc_HasDiffuseEnvmap) ? sc_HasDiffuseEnvmap : false;
constant bool sc_IsEditor [[function_constant(122)]];
constant bool sc_IsEditor_tmp = is_function_constant_defined(sc_IsEditor) ? sc_IsEditor : false;
constant bool sc_LightEstimation [[function_constant(123)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(124)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(125)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(126)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(127)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(128)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(129)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(130)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RayTracingCasterForceOpaque [[function_constant(131)]];
constant bool sc_RayTracingCasterForceOpaque_tmp = is_function_constant_defined(sc_RayTracingCasterForceOpaque) ? sc_RayTracingCasterForceOpaque : false;
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews [[function_constant(132)]];
constant bool sc_RayTracingGlobalIlluminationHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationHasSwappedViews) ? sc_RayTracingGlobalIlluminationHasSwappedViews : false;
constant bool sc_RayTracingReflectionsHasSwappedViews [[function_constant(133)]];
constant bool sc_RayTracingReflectionsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingReflectionsHasSwappedViews) ? sc_RayTracingReflectionsHasSwappedViews : false;
constant bool sc_RayTracingShadowsHasSwappedViews [[function_constant(134)]];
constant bool sc_RayTracingShadowsHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracingShadowsHasSwappedViews) ? sc_RayTracingShadowsHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(135)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(136)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(137)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(138)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(139)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(140)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(141)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool screenTextureHasSwappedViews [[function_constant(142)]];
constant bool screenTextureHasSwappedViews_tmp = is_function_constant_defined(screenTextureHasSwappedViews) ? screenTextureHasSwappedViews : false;
constant bool sheenColorTextureHasSwappedViews [[function_constant(143)]];
constant bool sheenColorTextureHasSwappedViews_tmp = is_function_constant_defined(sheenColorTextureHasSwappedViews) ? sheenColorTextureHasSwappedViews : false;
constant bool sheenRoughnessTextureHasSwappedViews [[function_constant(144)]];
constant bool sheenRoughnessTextureHasSwappedViews_tmp = is_function_constant_defined(sheenRoughnessTextureHasSwappedViews) ? sheenRoughnessTextureHasSwappedViews : false;
constant bool transmissionTextureHasSwappedViews [[function_constant(145)]];
constant bool transmissionTextureHasSwappedViews_tmp = is_function_constant_defined(transmissionTextureHasSwappedViews) ? transmissionTextureHasSwappedViews : false;
constant int NODE_10_DROPLIST_ITEM [[function_constant(146)]];
constant int NODE_10_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_10_DROPLIST_ITEM) ? NODE_10_DROPLIST_ITEM : 0;
constant int NODE_11_DROPLIST_ITEM [[function_constant(147)]];
constant int NODE_11_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_11_DROPLIST_ITEM) ? NODE_11_DROPLIST_ITEM : 0;
constant int NODE_7_DROPLIST_ITEM [[function_constant(148)]];
constant int NODE_7_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_7_DROPLIST_ITEM) ? NODE_7_DROPLIST_ITEM : 0;
constant int NODE_8_DROPLIST_ITEM [[function_constant(149)]];
constant int NODE_8_DROPLIST_ITEM_tmp = is_function_constant_defined(NODE_8_DROPLIST_ITEM) ? NODE_8_DROPLIST_ITEM : 0;
constant int SC_DEVICE_CLASS [[function_constant(150)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_baseColorTexture [[function_constant(151)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseColorTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture) ? SC_SOFTWARE_WRAP_MODE_U_baseColorTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture [[function_constant(152)]];
constant int SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture) ? SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture [[function_constant(153)]];
constant int SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture) ? SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture [[function_constant(154)]];
constant int SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture) ? SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTexture [[function_constant(155)]];
constant int SC_SOFTWARE_WRAP_MODE_U_emissiveTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture) ? SC_SOFTWARE_WRAP_MODE_U_emissiveTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(156)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture [[function_constant(157)]];
constant int SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture) ? SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normalTexture [[function_constant(158)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normalTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normalTexture) ? SC_SOFTWARE_WRAP_MODE_U_normalTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_screenTexture [[function_constant(159)]];
constant int SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_screenTexture) ? SC_SOFTWARE_WRAP_MODE_U_screenTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture [[function_constant(160)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture) ? SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture [[function_constant(161)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture) ? SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_transmissionTexture [[function_constant(162)]];
constant int SC_SOFTWARE_WRAP_MODE_U_transmissionTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture) ? SC_SOFTWARE_WRAP_MODE_U_transmissionTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseColorTexture [[function_constant(163)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseColorTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseColorTexture) ? SC_SOFTWARE_WRAP_MODE_V_baseColorTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture [[function_constant(164)]];
constant int SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture) ? SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture [[function_constant(165)]];
constant int SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture) ? SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture [[function_constant(166)]];
constant int SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture) ? SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTexture [[function_constant(167)]];
constant int SC_SOFTWARE_WRAP_MODE_V_emissiveTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_emissiveTexture) ? SC_SOFTWARE_WRAP_MODE_V_emissiveTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(168)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture [[function_constant(169)]];
constant int SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture) ? SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normalTexture [[function_constant(170)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normalTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normalTexture) ? SC_SOFTWARE_WRAP_MODE_V_normalTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_screenTexture [[function_constant(171)]];
constant int SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_screenTexture) ? SC_SOFTWARE_WRAP_MODE_V_screenTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture [[function_constant(172)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture) ? SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture [[function_constant(173)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture) ? SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_transmissionTexture [[function_constant(174)]];
constant int SC_SOFTWARE_WRAP_MODE_V_transmissionTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_transmissionTexture) ? SC_SOFTWARE_WRAP_MODE_V_transmissionTexture : -1;
constant int Tweak_N30 [[function_constant(175)]];
constant int Tweak_N30_tmp = is_function_constant_defined(Tweak_N30) ? Tweak_N30 : 0;
constant int Tweak_N32 [[function_constant(176)]];
constant int Tweak_N32_tmp = is_function_constant_defined(Tweak_N32) ? Tweak_N32 : 0;
constant int Tweak_N37 [[function_constant(177)]];
constant int Tweak_N37_tmp = is_function_constant_defined(Tweak_N37) ? Tweak_N37 : 0;
constant int Tweak_N44 [[function_constant(178)]];
constant int Tweak_N44_tmp = is_function_constant_defined(Tweak_N44) ? Tweak_N44 : 0;
constant int Tweak_N47 [[function_constant(179)]];
constant int Tweak_N47_tmp = is_function_constant_defined(Tweak_N47) ? Tweak_N47 : 0;
constant int Tweak_N60 [[function_constant(180)]];
constant int Tweak_N60_tmp = is_function_constant_defined(Tweak_N60) ? Tweak_N60 : 0;
constant int baseColorTextureLayout [[function_constant(181)]];
constant int baseColorTextureLayout_tmp = is_function_constant_defined(baseColorTextureLayout) ? baseColorTextureLayout : 0;
constant int clearcoatNormalTextureLayout [[function_constant(182)]];
constant int clearcoatNormalTextureLayout_tmp = is_function_constant_defined(clearcoatNormalTextureLayout) ? clearcoatNormalTextureLayout : 0;
constant int clearcoatRoughnessTextureLayout [[function_constant(183)]];
constant int clearcoatRoughnessTextureLayout_tmp = is_function_constant_defined(clearcoatRoughnessTextureLayout) ? clearcoatRoughnessTextureLayout : 0;
constant int clearcoatTextureLayout [[function_constant(184)]];
constant int clearcoatTextureLayout_tmp = is_function_constant_defined(clearcoatTextureLayout) ? clearcoatTextureLayout : 0;
constant int emissiveTextureLayout [[function_constant(185)]];
constant int emissiveTextureLayout_tmp = is_function_constant_defined(emissiveTextureLayout) ? emissiveTextureLayout : 0;
constant int intensityTextureLayout [[function_constant(186)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int metallicRoughnessTextureLayout [[function_constant(187)]];
constant int metallicRoughnessTextureLayout_tmp = is_function_constant_defined(metallicRoughnessTextureLayout) ? metallicRoughnessTextureLayout : 0;
constant int normalTextureLayout [[function_constant(188)]];
constant int normalTextureLayout_tmp = is_function_constant_defined(normalTextureLayout) ? normalTextureLayout : 0;
constant int sc_AmbientLightMode0 [[function_constant(189)]];
constant int sc_AmbientLightMode0_tmp = is_function_constant_defined(sc_AmbientLightMode0) ? sc_AmbientLightMode0 : 0;
constant int sc_AmbientLightMode1 [[function_constant(190)]];
constant int sc_AmbientLightMode1_tmp = is_function_constant_defined(sc_AmbientLightMode1) ? sc_AmbientLightMode1 : 0;
constant int sc_AmbientLightMode2 [[function_constant(191)]];
constant int sc_AmbientLightMode2_tmp = is_function_constant_defined(sc_AmbientLightMode2) ? sc_AmbientLightMode2 : 0;
constant int sc_AmbientLightMode_Constant [[function_constant(192)]];
constant int sc_AmbientLightMode_Constant_tmp = is_function_constant_defined(sc_AmbientLightMode_Constant) ? sc_AmbientLightMode_Constant : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(193)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(194)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_AmbientLightMode_SphericalHarmonics [[function_constant(195)]];
constant int sc_AmbientLightMode_SphericalHarmonics_tmp = is_function_constant_defined(sc_AmbientLightMode_SphericalHarmonics) ? sc_AmbientLightMode_SphericalHarmonics : 0;
constant int sc_AmbientLightsCount [[function_constant(196)]];
constant int sc_AmbientLightsCount_tmp = is_function_constant_defined(sc_AmbientLightsCount) ? sc_AmbientLightsCount : 0;
constant int sc_DepthBufferMode [[function_constant(197)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(198)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(199)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapDiffuseLayout [[function_constant(200)]];
constant int sc_EnvmapDiffuseLayout_tmp = is_function_constant_defined(sc_EnvmapDiffuseLayout) ? sc_EnvmapDiffuseLayout : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(201)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(202)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(203)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracingGlobalIlluminationLayout [[function_constant(204)]];
constant int sc_RayTracingGlobalIlluminationLayout_tmp = is_function_constant_defined(sc_RayTracingGlobalIlluminationLayout) ? sc_RayTracingGlobalIlluminationLayout : 0;
constant int sc_RayTracingReflectionsLayout [[function_constant(205)]];
constant int sc_RayTracingReflectionsLayout_tmp = is_function_constant_defined(sc_RayTracingReflectionsLayout) ? sc_RayTracingReflectionsLayout : 0;
constant int sc_RayTracingShadowsLayout [[function_constant(206)]];
constant int sc_RayTracingShadowsLayout_tmp = is_function_constant_defined(sc_RayTracingShadowsLayout) ? sc_RayTracingShadowsLayout : 0;
constant int sc_RenderingSpace [[function_constant(207)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(208)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(209)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(210)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(211)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(212)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int screenTextureLayout [[function_constant(213)]];
constant int screenTextureLayout_tmp = is_function_constant_defined(screenTextureLayout) ? screenTextureLayout : 0;
constant int sheenColorTextureLayout [[function_constant(214)]];
constant int sheenColorTextureLayout_tmp = is_function_constant_defined(sheenColorTextureLayout) ? sheenColorTextureLayout : 0;
constant int sheenRoughnessTextureLayout [[function_constant(215)]];
constant int sheenRoughnessTextureLayout_tmp = is_function_constant_defined(sheenRoughnessTextureLayout) ? sheenRoughnessTextureLayout : 0;
constant int transmissionTextureLayout [[function_constant(216)]];
constant int transmissionTextureLayout_tmp = is_function_constant_defined(transmissionTextureLayout) ? transmissionTextureLayout : 0;

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
float3 emissiveFactor;
float4 emissiveTextureSize;
float4 emissiveTextureDims;
float4 emissiveTextureView;
float3x3 emissiveTextureTransform;
float4 emissiveTextureUvMinMax;
float4 emissiveTextureBorderColor;
float normalTextureScale;
float4 normalTextureSize;
float4 normalTextureDims;
float4 normalTextureView;
float3x3 normalTextureTransform;
float4 normalTextureUvMinMax;
float4 normalTextureBorderColor;
float metallicFactor;
float roughnessFactor;
float occlusionTextureStrength;
float4 metallicRoughnessTextureSize;
float4 metallicRoughnessTextureDims;
float4 metallicRoughnessTextureView;
float3x3 metallicRoughnessTextureTransform;
float4 metallicRoughnessTextureUvMinMax;
float4 metallicRoughnessTextureBorderColor;
float transmissionFactor;
float4 transmissionTextureSize;
float4 transmissionTextureDims;
float4 transmissionTextureView;
float3x3 transmissionTextureTransform;
float4 transmissionTextureUvMinMax;
float4 transmissionTextureBorderColor;
float4 screenTextureSize;
float4 screenTextureDims;
float4 screenTextureView;
float3x3 screenTextureTransform;
float4 screenTextureUvMinMax;
float4 screenTextureBorderColor;
float3 sheenColorFactor;
float4 sheenColorTextureSize;
float4 sheenColorTextureDims;
float4 sheenColorTextureView;
float3x3 sheenColorTextureTransform;
float4 sheenColorTextureUvMinMax;
float4 sheenColorTextureBorderColor;
float sheenRoughnessFactor;
float4 sheenRoughnessTextureSize;
float4 sheenRoughnessTextureDims;
float4 sheenRoughnessTextureView;
float3x3 sheenRoughnessTextureTransform;
float4 sheenRoughnessTextureUvMinMax;
float4 sheenRoughnessTextureBorderColor;
float clearcoatFactor;
float4 clearcoatTextureSize;
float4 clearcoatTextureDims;
float4 clearcoatTextureView;
float3x3 clearcoatTextureTransform;
float4 clearcoatTextureUvMinMax;
float4 clearcoatTextureBorderColor;
float clearcoatRoughnessFactor;
float4 clearcoatRoughnessTextureSize;
float4 clearcoatRoughnessTextureDims;
float4 clearcoatRoughnessTextureView;
float3x3 clearcoatRoughnessTextureTransform;
float4 clearcoatRoughnessTextureUvMinMax;
float4 clearcoatRoughnessTextureBorderColor;
float4 clearcoatNormalTextureSize;
float4 clearcoatNormalTextureDims;
float4 clearcoatNormalTextureView;
float3x3 clearcoatNormalTextureTransform;
float4 clearcoatNormalTextureUvMinMax;
float4 clearcoatNormalTextureBorderColor;
float4 baseColorTextureSize;
float4 baseColorTextureDims;
float4 baseColorTextureView;
float3x3 baseColorTextureTransform;
float4 baseColorTextureUvMinMax;
float4 baseColorTextureBorderColor;
float4 baseColorFactor;
float2 baseColorTexture_offset;
float2 baseColorTexture_scale;
float baseColorTexture_rotation;
float2 emissiveTexture_offset;
float2 emissiveTexture_scale;
float emissiveTexture_rotation;
float2 normalTexture_offset;
float2 normalTexture_scale;
float normalTexture_rotation;
float2 metallicRoughnessTexture_offset;
float2 metallicRoughnessTexture_scale;
float metallicRoughnessTexture_rotation;
float2 transmissionTexture_offset;
float2 transmissionTexture_scale;
float transmissionTexture_rotation;
float2 sheenColorTexture_offset;
float2 sheenColorTexture_scale;
float sheenColorTexture_rotation;
float2 sheenRoughnessTexture_offset;
float2 sheenRoughnessTexture_scale;
float sheenRoughnessTexture_rotation;
float2 clearcoatTexture_offset;
float2 clearcoatTexture_scale;
float clearcoatTexture_rotation;
float2 clearcoatNormalTexture_offset;
float2 clearcoatNormalTexture_scale;
float clearcoatNormalTexture_rotation;
float2 clearcoatRoughnessTexture_offset;
float2 clearcoatRoughnessTexture_scale;
float clearcoatRoughnessTexture_rotation;
float Port_DebugSheenEnvLightMult_N003;
float Port_DebugSheenPunctualLightMult_N003;
float3 Port_SpecularAO_N036;
float3 Port_Albedo_N405;
float Port_Opacity_N405;
float3 Port_Emissive_N405;
float Port_Metallic_N405;
float3 Port_SpecularAO_N405;
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
texture2d<float> baseColorTexture [[id(4)]];
texture2d<float> clearcoatNormalTexture [[id(5)]];
texture2d<float> clearcoatRoughnessTexture [[id(6)]];
texture2d<float> clearcoatTexture [[id(7)]];
texture2d<float> emissiveTexture [[id(8)]];
texture2d<float> intensityTexture [[id(9)]];
texture2d<float> metallicRoughnessTexture [[id(10)]];
texture2d<float> normalTexture [[id(11)]];
texture2d<float> sc_EnvmapDiffuse [[id(12)]];
texture2d<float> sc_EnvmapSpecular [[id(13)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(22)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(23)]];
texture2d<float> sc_RayTracingRayDirection [[id(24)]];
texture2d<float> sc_RayTracingReflections [[id(25)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
texture2d<float> screenTexture [[id(31)]];
texture2d<float> sheenColorTexture [[id(32)]];
texture2d<float> sheenRoughnessTexture [[id(33)]];
texture2d<float> transmissionTexture [[id(34)]];
sampler baseColorTextureSmpSC [[id(35)]];
sampler clearcoatNormalTextureSmpSC [[id(36)]];
sampler clearcoatRoughnessTextureSmpSC [[id(37)]];
sampler clearcoatTextureSmpSC [[id(38)]];
sampler emissiveTextureSmpSC [[id(39)]];
sampler intensityTextureSmpSC [[id(40)]];
sampler metallicRoughnessTextureSmpSC [[id(41)]];
sampler normalTextureSmpSC [[id(42)]];
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
sampler screenTextureSmpSC [[id(55)]];
sampler sheenColorTextureSmpSC [[id(56)]];
sampler sheenRoughnessTextureSmpSC [[id(57)]];
sampler transmissionTextureSmpSC [[id(58)]];
constant userUniformsObj* UserUniforms [[id(59)]];
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
float3 SurfacePosition_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexTangent_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float2 gScreenCoord;
float4 VertexColor;
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
float3 emissiveFactor;
float4 emissiveTextureSize;
float4 emissiveTextureDims;
float4 emissiveTextureView;
float3x3 emissiveTextureTransform;
float4 emissiveTextureUvMinMax;
float4 emissiveTextureBorderColor;
float normalTextureScale;
float4 normalTextureSize;
float4 normalTextureDims;
float4 normalTextureView;
float3x3 normalTextureTransform;
float4 normalTextureUvMinMax;
float4 normalTextureBorderColor;
float metallicFactor;
float roughnessFactor;
float occlusionTextureStrength;
float4 metallicRoughnessTextureSize;
float4 metallicRoughnessTextureDims;
float4 metallicRoughnessTextureView;
float3x3 metallicRoughnessTextureTransform;
float4 metallicRoughnessTextureUvMinMax;
float4 metallicRoughnessTextureBorderColor;
float transmissionFactor;
float4 transmissionTextureSize;
float4 transmissionTextureDims;
float4 transmissionTextureView;
float3x3 transmissionTextureTransform;
float4 transmissionTextureUvMinMax;
float4 transmissionTextureBorderColor;
float4 screenTextureSize;
float4 screenTextureDims;
float4 screenTextureView;
float3x3 screenTextureTransform;
float4 screenTextureUvMinMax;
float4 screenTextureBorderColor;
float3 sheenColorFactor;
float4 sheenColorTextureSize;
float4 sheenColorTextureDims;
float4 sheenColorTextureView;
float3x3 sheenColorTextureTransform;
float4 sheenColorTextureUvMinMax;
float4 sheenColorTextureBorderColor;
float sheenRoughnessFactor;
float4 sheenRoughnessTextureSize;
float4 sheenRoughnessTextureDims;
float4 sheenRoughnessTextureView;
float3x3 sheenRoughnessTextureTransform;
float4 sheenRoughnessTextureUvMinMax;
float4 sheenRoughnessTextureBorderColor;
float clearcoatFactor;
float4 clearcoatTextureSize;
float4 clearcoatTextureDims;
float4 clearcoatTextureView;
float3x3 clearcoatTextureTransform;
float4 clearcoatTextureUvMinMax;
float4 clearcoatTextureBorderColor;
float clearcoatRoughnessFactor;
float4 clearcoatRoughnessTextureSize;
float4 clearcoatRoughnessTextureDims;
float4 clearcoatRoughnessTextureView;
float3x3 clearcoatRoughnessTextureTransform;
float4 clearcoatRoughnessTextureUvMinMax;
float4 clearcoatRoughnessTextureBorderColor;
float4 clearcoatNormalTextureSize;
float4 clearcoatNormalTextureDims;
float4 clearcoatNormalTextureView;
float3x3 clearcoatNormalTextureTransform;
float4 clearcoatNormalTextureUvMinMax;
float4 clearcoatNormalTextureBorderColor;
float4 baseColorTextureSize;
float4 baseColorTextureDims;
float4 baseColorTextureView;
float3x3 baseColorTextureTransform;
float4 baseColorTextureUvMinMax;
float4 baseColorTextureBorderColor;
float4 baseColorFactor;
float2 baseColorTexture_offset;
float2 baseColorTexture_scale;
float baseColorTexture_rotation;
float2 emissiveTexture_offset;
float2 emissiveTexture_scale;
float emissiveTexture_rotation;
float2 normalTexture_offset;
float2 normalTexture_scale;
float normalTexture_rotation;
float2 metallicRoughnessTexture_offset;
float2 metallicRoughnessTexture_scale;
float metallicRoughnessTexture_rotation;
float2 transmissionTexture_offset;
float2 transmissionTexture_scale;
float transmissionTexture_rotation;
float2 sheenColorTexture_offset;
float2 sheenColorTexture_scale;
float sheenColorTexture_rotation;
float2 sheenRoughnessTexture_offset;
float2 sheenRoughnessTexture_scale;
float sheenRoughnessTexture_rotation;
float2 clearcoatTexture_offset;
float2 clearcoatTexture_scale;
float clearcoatTexture_rotation;
float2 clearcoatNormalTexture_offset;
float2 clearcoatNormalTexture_scale;
float clearcoatNormalTexture_rotation;
float2 clearcoatRoughnessTexture_offset;
float2 clearcoatRoughnessTexture_scale;
float clearcoatRoughnessTexture_rotation;
float Port_DebugSheenEnvLightMult_N003;
float Port_DebugSheenPunctualLightMult_N003;
float3 Port_SpecularAO_N036;
float3 Port_Albedo_N405;
float Port_Opacity_N405;
float3 Port_Emissive_N405;
float Port_Metallic_N405;
float3 Port_SpecularAO_N405;
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
texture2d<float> baseColorTexture [[id(4)]];
texture2d<float> clearcoatNormalTexture [[id(5)]];
texture2d<float> clearcoatRoughnessTexture [[id(6)]];
texture2d<float> clearcoatTexture [[id(7)]];
texture2d<float> emissiveTexture [[id(8)]];
texture2d<float> intensityTexture [[id(9)]];
texture2d<float> metallicRoughnessTexture [[id(10)]];
texture2d<float> normalTexture [[id(11)]];
texture2d<float> sc_EnvmapDiffuse [[id(12)]];
texture2d<float> sc_EnvmapSpecular [[id(13)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(22)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(23)]];
texture2d<float> sc_RayTracingRayDirection [[id(24)]];
texture2d<float> sc_RayTracingReflections [[id(25)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
texture2d<float> screenTexture [[id(31)]];
texture2d<float> sheenColorTexture [[id(32)]];
texture2d<float> sheenRoughnessTexture [[id(33)]];
texture2d<float> transmissionTexture [[id(34)]];
sampler baseColorTextureSmpSC [[id(35)]];
sampler clearcoatNormalTextureSmpSC [[id(36)]];
sampler clearcoatRoughnessTextureSmpSC [[id(37)]];
sampler clearcoatTextureSmpSC [[id(38)]];
sampler emissiveTextureSmpSC [[id(39)]];
sampler intensityTextureSmpSC [[id(40)]];
sampler metallicRoughnessTextureSmpSC [[id(41)]];
sampler normalTextureSmpSC [[id(42)]];
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
sampler screenTextureSmpSC [[id(55)]];
sampler sheenColorTextureSmpSC [[id(56)]];
sampler sheenRoughnessTextureSmpSC [[id(57)]];
sampler transmissionTextureSmpSC [[id(58)]];
constant userUniformsObj* UserUniforms [[id(59)]];
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
// Implementation of the GLSL radians() function
template<typename T>
T radians(T d)
{
return d*T(0.01745329251);
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
float4 N31_PbrIn=float4(0.0);
bool N31_EnableTransmission=false;
float N31_Opacity=0.0;
float3 N31_Background=float3(0.0);
bool N31_EnableSheen=false;
float4 N31_SheenColor=float4(0.0);
bool N31_EnableClearcoat=false;
float N31_ClearcoatBase=0.0;
float4 N31_ClearcoatColor=float4(0.0);
float4 N31_Result=float4(0.0);
float3 N3_EmissiveColor=float3(0.0);
bool N3_EnableEmissiveTexture=false;
int N3_EmissiveTextureCoord=0;
bool N3_EnableNormalTexture=false;
float N3_NormalScale=0.0;
int N3_NormalTextureCoord=0;
float N3_MetallicValue=0.0;
float N3_RoughnessValue=0.0;
bool N3_EnableMetallicRoughnessTexture=false;
float N3_OcclusionStrength=0.0;
int N3_MaterialParamsTextureCoord=0;
bool N3_TransmissionEnable=false;
float N3_TransmissionFactor=0.0;
bool N3_EnableTransmissionTexture=false;
int N3_TransmissionTextureCoord=0;
bool N3_SheenEnable=false;
float3 N3_SheenColorFactor=float3(0.0);
bool N3_EnableSheenTexture=false;
int N3_SheenColorTextureCoord=0;
float N3_SheenRoughnessFactor=0.0;
bool N3_EnableSheenRoughnessTexture=false;
int N3_SheenRoughnessTextureCoord=0;
bool N3_ClearcoatEnable=false;
float N3_ClearcoatFactor=0.0;
bool N3_EnableClearcoatTexture=false;
int N3_ClearcoatTextureCoord=0;
float N3_ClearcoatRoughnessFactor=0.0;
bool N3_EnableClearCoatRoughnessTexture=false;
int N3_ClearcoatRoughnessTextureCoord=0;
bool N3_EnableClearCoatNormalTexture=false;
int N3_ClearcoatNormalMapCoord=0;
float3 N3_BaseColorIn=float3(0.0);
float N3_OpacityIn=0.0;
bool N3_EnableTextureTransform=false;
bool N3_EmissiveTextureTransform=false;
float2 N3_EmissiveTextureOffset=float2(0.0);
float2 N3_EmissiveTextureScale=float2(0.0);
float N3_EmissiveTextureRotation=0.0;
bool N3_NormalTextureTransform=false;
float2 N3_NormalTextureOffset=float2(0.0);
float2 N3_NormalTextureScale=float2(0.0);
float N3_NormalTextureRotation=0.0;
bool N3_MaterialParamsTextureTransform=false;
float2 N3_MaterialParamsTextureOffset=float2(0.0);
float2 N3_MaterialParamsTextureScale=float2(0.0);
float N3_MaterialParamsTextureRotation=0.0;
bool N3_TransmissionTextureTransform=false;
float2 N3_TransmissionTextureOffset=float2(0.0);
float2 N3_TransmissionTextureScale=float2(0.0);
float N3_TransmissionTextureRotation=0.0;
bool N3_SheenColorTextureTransform=false;
float2 N3_SheenColorTextureOffset=float2(0.0);
float2 N3_SheenColorTextureScale=float2(0.0);
float N3_SheenColorTextureRotation=0.0;
bool N3_SheenRoughnessTextureTransform=false;
float2 N3_SheenRoughnessTextureOffset=float2(0.0);
float2 N3_SheenRoughnessTextureScale=float2(0.0);
float N3_SheenRoughnessTextureRotation=0.0;
bool N3_ClearcoatTextureTransform=false;
float2 N3_ClearcoatTextureOffset=float2(0.0);
float2 N3_ClearcoatTextureScale=float2(0.0);
float N3_ClearcoatTextureRotation=0.0;
bool N3_ClearcoatNormalTextureTransform=false;
float2 N3_ClearcoatNormalTextureOffset=float2(0.0);
float2 N3_ClearcoatNormalTextureScale=float2(0.0);
float N3_ClearcoatNormalTextureRotation=0.0;
bool N3_ClearcoatRoughnessTextureTransform=false;
float2 N3_ClearcoatRoughnessTextureOffset=float2(0.0);
float2 N3_ClearcoatRoughnessTextureScale=float2(0.0);
float N3_ClearcoatRoughnessTextureRotation=0.0;
float3 N3_BaseColor=float3(0.0);
float N3_Opacity=0.0;
float3 N3_Normal=float3(0.0);
float3 N3_Emissive=float3(0.0);
float N3_Metallic=0.0;
float N3_Roughness=0.0;
float4 N3_Occlusion=float4(0.0);
float3 N3_Background=float3(0.0);
float4 N3_SheenOut=float4(0.0);
float N3_ClearcoatBase=0.0;
float3 N3_ClearcoatNormal=float3(0.0);
float N3_ClearcoatRoughness=0.0;
bool N35_EnableVertexColor=false;
bool N35_EnableBaseTexture=false;
int N35_BaseColorTextureCoord=0;
float4 N35_BaseColorFactor=float4(0.0);
bool N35_EnableTextureTransform=false;
bool N35_BaseTextureTransform=false;
float2 N35_BaseTextureOffset=float2(0.0);
float2 N35_BaseTextureScale=float2(0.0);
float N35_BaseTextureRotation=0.0;
float3 N35_BaseColor=float3(0.0);
float N35_Opacity=0.0;
float4 N35_UnlitColor=float4(0.0);
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
Globals.SurfacePosition_WorldSpace=rhp.positionWS;
Globals.VertexNormal_WorldSpace=rhp.normalWS;
Globals.VertexTangent_WorldSpace=rhp.tangentWS.xyz;
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*rhp.tangentWS.w;
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
Globals.VertexColor=rhp.color;
}
else
{
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
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
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
Globals.VertexColor=in.varColor;
}
float4 Output_N17=float4(0.0);
float4 param_1=float4(1.0);
float4 param_2=float4(0.0);
ssGlobals param_4=Globals;
ssGlobals tempGlobals;
float4 param_3;
if ((int(ENABLE_GLTF_LIGHTING_tmp)!=0))
{
float3 l9_17=float3(0.0);
float3 l9_18=(*sc_set0.UserUniforms).emissiveFactor;
l9_17=l9_18;
float l9_19=0.0;
float l9_20=(*sc_set0.UserUniforms).normalTextureScale;
l9_19=l9_20;
float l9_21=0.0;
float l9_22=(*sc_set0.UserUniforms).metallicFactor;
l9_21=l9_22;
float l9_23=0.0;
float l9_24=(*sc_set0.UserUniforms).roughnessFactor;
l9_23=l9_24;
float l9_25=0.0;
float l9_26=(*sc_set0.UserUniforms).occlusionTextureStrength;
l9_25=l9_26;
float l9_27=0.0;
float l9_28=(*sc_set0.UserUniforms).transmissionFactor;
l9_27=l9_28;
float3 l9_29=float3(0.0);
float3 l9_30=(*sc_set0.UserUniforms).sheenColorFactor;
l9_29=l9_30;
float l9_31=0.0;
float l9_32=(*sc_set0.UserUniforms).sheenRoughnessFactor;
l9_31=l9_32;
float l9_33=0.0;
float l9_34=(*sc_set0.UserUniforms).clearcoatFactor;
l9_33=l9_34;
float l9_35=0.0;
float l9_36=(*sc_set0.UserUniforms).clearcoatRoughnessFactor;
l9_35=l9_36;
float4 l9_37=float4(0.0);
float4 l9_38=(*sc_set0.UserUniforms).baseColorFactor;
l9_37=l9_38;
float2 l9_39=float2(0.0);
float2 l9_40=(*sc_set0.UserUniforms).baseColorTexture_offset;
l9_39=l9_40;
float2 l9_41=float2(0.0);
float2 l9_42=(*sc_set0.UserUniforms).baseColorTexture_scale;
l9_41=l9_42;
float l9_43=0.0;
float l9_44=(*sc_set0.UserUniforms).baseColorTexture_rotation;
l9_43=l9_44;
float3 l9_45=float3(0.0);
float l9_46=0.0;
float4 l9_47=l9_37;
float2 l9_48=l9_39;
float2 l9_49=l9_41;
float l9_50=l9_43;
ssGlobals l9_51=param_4;
tempGlobals=l9_51;
float3 l9_52=float3(0.0);
float l9_53=0.0;
N35_EnableVertexColor=(int(ENABLE_VERTEX_COLOR_BASE_tmp)!=0);
N35_EnableBaseTexture=(int(ENABLE_BASE_TEX_tmp)!=0);
N35_BaseColorTextureCoord=NODE_7_DROPLIST_ITEM_tmp;
N35_BaseColorFactor=l9_47;
N35_EnableTextureTransform=(int(ENABLE_TEXTURE_TRANSFORM_tmp)!=0);
N35_BaseTextureTransform=(int(ENABLE_BASE_TEXTURE_TRANSFORM_tmp)!=0);
N35_BaseTextureOffset=l9_48;
N35_BaseTextureScale=l9_49;
N35_BaseTextureRotation=l9_50;
float4 l9_54=N35_BaseColorFactor;
if (N35_EnableBaseTexture)
{
int l9_55=N35_BaseColorTextureCoord;
float2 l9_56=tempGlobals.Surface_UVCoord0;
float2 l9_57=l9_56;
if (l9_55==0)
{
float2 l9_58=tempGlobals.Surface_UVCoord0;
l9_57=l9_58;
}
if (l9_55==1)
{
float2 l9_59=tempGlobals.Surface_UVCoord1;
l9_57=l9_59;
}
float2 l9_60=l9_57;
float2 l9_61=l9_60;
if (N35_EnableTextureTransform&&N35_BaseTextureTransform)
{
float2 l9_62=l9_61;
float2 l9_63=N35_BaseTextureOffset;
float2 l9_64=N35_BaseTextureScale;
float l9_65=N35_BaseTextureRotation;
float3x3 l9_66=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_63.x,l9_63.y,1.0));
float3x3 l9_67=float3x3(float3(cos(l9_65),sin(l9_65),0.0),float3(-sin(l9_65),cos(l9_65),0.0),float3(0.0,0.0,1.0));
float3x3 l9_68=float3x3(float3(l9_64.x,0.0,0.0),float3(0.0,l9_64.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_69=(l9_66*l9_67)*l9_68;
float2 l9_70=(l9_69*float3(l9_62,1.0)).xy;
l9_61=l9_70;
}
float2 l9_71=l9_61;
float4 l9_72=float4(0.0);
int l9_73;
if ((int(baseColorTextureHasSwappedViews_tmp)!=0))
{
int l9_74=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_74=0;
}
else
{
l9_74=in.varStereoViewID;
}
int l9_75=l9_74;
l9_73=1-l9_75;
}
else
{
int l9_76=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_76=0;
}
else
{
l9_76=in.varStereoViewID;
}
int l9_77=l9_76;
l9_73=l9_77;
}
int l9_78=l9_73;
int l9_79=baseColorTextureLayout_tmp;
int l9_80=l9_78;
float2 l9_81=l9_71;
bool l9_82=(int(SC_USE_UV_TRANSFORM_baseColorTexture_tmp)!=0);
float3x3 l9_83=(*sc_set0.UserUniforms).baseColorTextureTransform;
int2 l9_84=int2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture_tmp);
bool l9_85=(int(SC_USE_UV_MIN_MAX_baseColorTexture_tmp)!=0);
float4 l9_86=(*sc_set0.UserUniforms).baseColorTextureUvMinMax;
bool l9_87=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture_tmp)!=0);
float4 l9_88=(*sc_set0.UserUniforms).baseColorTextureBorderColor;
float l9_89=0.0;
bool l9_90=l9_87&&(!l9_85);
float l9_91=1.0;
float l9_92=l9_81.x;
int l9_93=l9_84.x;
if (l9_93==1)
{
l9_92=fract(l9_92);
}
else
{
if (l9_93==2)
{
float l9_94=fract(l9_92);
float l9_95=l9_92-l9_94;
float l9_96=step(0.25,fract(l9_95*0.5));
l9_92=mix(l9_94,1.0-l9_94,fast::clamp(l9_96,0.0,1.0));
}
}
l9_81.x=l9_92;
float l9_97=l9_81.y;
int l9_98=l9_84.y;
if (l9_98==1)
{
l9_97=fract(l9_97);
}
else
{
if (l9_98==2)
{
float l9_99=fract(l9_97);
float l9_100=l9_97-l9_99;
float l9_101=step(0.25,fract(l9_100*0.5));
l9_97=mix(l9_99,1.0-l9_99,fast::clamp(l9_101,0.0,1.0));
}
}
l9_81.y=l9_97;
if (l9_85)
{
bool l9_102=l9_87;
bool l9_103;
if (l9_102)
{
l9_103=l9_84.x==3;
}
else
{
l9_103=l9_102;
}
float l9_104=l9_81.x;
float l9_105=l9_86.x;
float l9_106=l9_86.z;
bool l9_107=l9_103;
float l9_108=l9_91;
float l9_109=fast::clamp(l9_104,l9_105,l9_106);
float l9_110=step(abs(l9_104-l9_109),9.9999997e-06);
l9_108*=(l9_110+((1.0-float(l9_107))*(1.0-l9_110)));
l9_104=l9_109;
l9_81.x=l9_104;
l9_91=l9_108;
bool l9_111=l9_87;
bool l9_112;
if (l9_111)
{
l9_112=l9_84.y==3;
}
else
{
l9_112=l9_111;
}
float l9_113=l9_81.y;
float l9_114=l9_86.y;
float l9_115=l9_86.w;
bool l9_116=l9_112;
float l9_117=l9_91;
float l9_118=fast::clamp(l9_113,l9_114,l9_115);
float l9_119=step(abs(l9_113-l9_118),9.9999997e-06);
l9_117*=(l9_119+((1.0-float(l9_116))*(1.0-l9_119)));
l9_113=l9_118;
l9_81.y=l9_113;
l9_91=l9_117;
}
float2 l9_120=l9_81;
bool l9_121=l9_82;
float3x3 l9_122=l9_83;
if (l9_121)
{
l9_120=float2((l9_122*float3(l9_120,1.0)).xy);
}
float2 l9_123=l9_120;
l9_81=l9_123;
float l9_124=l9_81.x;
int l9_125=l9_84.x;
bool l9_126=l9_90;
float l9_127=l9_91;
if ((l9_125==0)||(l9_125==3))
{
float l9_128=l9_124;
float l9_129=0.0;
float l9_130=1.0;
bool l9_131=l9_126;
float l9_132=l9_127;
float l9_133=fast::clamp(l9_128,l9_129,l9_130);
float l9_134=step(abs(l9_128-l9_133),9.9999997e-06);
l9_132*=(l9_134+((1.0-float(l9_131))*(1.0-l9_134)));
l9_128=l9_133;
l9_124=l9_128;
l9_127=l9_132;
}
l9_81.x=l9_124;
l9_91=l9_127;
float l9_135=l9_81.y;
int l9_136=l9_84.y;
bool l9_137=l9_90;
float l9_138=l9_91;
if ((l9_136==0)||(l9_136==3))
{
float l9_139=l9_135;
float l9_140=0.0;
float l9_141=1.0;
bool l9_142=l9_137;
float l9_143=l9_138;
float l9_144=fast::clamp(l9_139,l9_140,l9_141);
float l9_145=step(abs(l9_139-l9_144),9.9999997e-06);
l9_143*=(l9_145+((1.0-float(l9_142))*(1.0-l9_145)));
l9_139=l9_144;
l9_135=l9_139;
l9_138=l9_143;
}
l9_81.y=l9_135;
l9_91=l9_138;
float2 l9_146=l9_81;
int l9_147=l9_79;
int l9_148=l9_80;
float l9_149=l9_89;
float2 l9_150=l9_146;
int l9_151=l9_147;
int l9_152=l9_148;
float3 l9_153=float3(0.0);
if (l9_151==0)
{
l9_153=float3(l9_150,0.0);
}
else
{
if (l9_151==1)
{
l9_153=float3(l9_150.x,(l9_150.y*0.5)+(0.5-(float(l9_152)*0.5)),0.0);
}
else
{
l9_153=float3(l9_150,float(l9_152));
}
}
float3 l9_154=l9_153;
float3 l9_155=l9_154;
float4 l9_156=sc_set0.baseColorTexture.sample(sc_set0.baseColorTextureSmpSC,l9_155.xy,bias(l9_149));
float4 l9_157=l9_156;
if (l9_87)
{
l9_157=mix(l9_88,l9_157,float4(l9_91));
}
float4 l9_158=l9_157;
l9_72=l9_158;
float4 l9_159=l9_72;
float4 l9_160=l9_159;
float4 l9_161;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_161=float4(pow(l9_160.x,2.2),pow(l9_160.y,2.2),pow(l9_160.z,2.2),pow(l9_160.w,2.2));
}
else
{
l9_161=l9_160*l9_160;
}
float4 l9_162=l9_161;
l9_54*=l9_162;
}
if (N35_EnableVertexColor)
{
float4 l9_163=tempGlobals.VertexColor;
l9_54*=l9_163;
}
N35_BaseColor=l9_54.xyz;
N35_Opacity=l9_54.w;
float4 l9_164=l9_54;
float4 l9_165;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_165=float4(pow(l9_164.x,0.45454544),pow(l9_164.y,0.45454544),pow(l9_164.z,0.45454544),pow(l9_164.w,0.45454544));
}
else
{
l9_165=sqrt(l9_164);
}
float4 l9_166=l9_165;
N35_UnlitColor=l9_166;
l9_52=N35_BaseColor;
l9_53=N35_Opacity;
l9_45=l9_52;
l9_46=l9_53;
float2 l9_167=float2(0.0);
float2 l9_168=(*sc_set0.UserUniforms).emissiveTexture_offset;
l9_167=l9_168;
float2 l9_169=float2(0.0);
float2 l9_170=(*sc_set0.UserUniforms).emissiveTexture_scale;
l9_169=l9_170;
float l9_171=0.0;
float l9_172=(*sc_set0.UserUniforms).emissiveTexture_rotation;
l9_171=l9_172;
float2 l9_173=float2(0.0);
float2 l9_174=(*sc_set0.UserUniforms).normalTexture_offset;
l9_173=l9_174;
float2 l9_175=float2(0.0);
float2 l9_176=(*sc_set0.UserUniforms).normalTexture_scale;
l9_175=l9_176;
float l9_177=0.0;
float l9_178=(*sc_set0.UserUniforms).normalTexture_rotation;
l9_177=l9_178;
float2 l9_179=float2(0.0);
float2 l9_180=(*sc_set0.UserUniforms).metallicRoughnessTexture_offset;
l9_179=l9_180;
float2 l9_181=float2(0.0);
float2 l9_182=(*sc_set0.UserUniforms).metallicRoughnessTexture_scale;
l9_181=l9_182;
float l9_183=0.0;
float l9_184=(*sc_set0.UserUniforms).metallicRoughnessTexture_rotation;
l9_183=l9_184;
float2 l9_185=float2(0.0);
float2 l9_186=(*sc_set0.UserUniforms).transmissionTexture_offset;
l9_185=l9_186;
float2 l9_187=float2(0.0);
float2 l9_188=(*sc_set0.UserUniforms).transmissionTexture_scale;
l9_187=l9_188;
float l9_189=0.0;
float l9_190=(*sc_set0.UserUniforms).transmissionTexture_rotation;
l9_189=l9_190;
float2 l9_191=float2(0.0);
float2 l9_192=(*sc_set0.UserUniforms).sheenColorTexture_offset;
l9_191=l9_192;
float2 l9_193=float2(0.0);
float2 l9_194=(*sc_set0.UserUniforms).sheenColorTexture_scale;
l9_193=l9_194;
float l9_195=0.0;
float l9_196=(*sc_set0.UserUniforms).sheenColorTexture_rotation;
l9_195=l9_196;
float2 l9_197=float2(0.0);
float2 l9_198=(*sc_set0.UserUniforms).sheenRoughnessTexture_offset;
l9_197=l9_198;
float2 l9_199=float2(0.0);
float2 l9_200=(*sc_set0.UserUniforms).sheenRoughnessTexture_scale;
l9_199=l9_200;
float l9_201=0.0;
float l9_202=(*sc_set0.UserUniforms).sheenRoughnessTexture_rotation;
l9_201=l9_202;
float2 l9_203=float2(0.0);
float2 l9_204=(*sc_set0.UserUniforms).clearcoatTexture_offset;
l9_203=l9_204;
float2 l9_205=float2(0.0);
float2 l9_206=(*sc_set0.UserUniforms).clearcoatTexture_scale;
l9_205=l9_206;
float l9_207=0.0;
float l9_208=(*sc_set0.UserUniforms).clearcoatTexture_rotation;
l9_207=l9_208;
float2 l9_209=float2(0.0);
float2 l9_210=(*sc_set0.UserUniforms).clearcoatNormalTexture_offset;
l9_209=l9_210;
float2 l9_211=float2(0.0);
float2 l9_212=(*sc_set0.UserUniforms).clearcoatNormalTexture_scale;
l9_211=l9_212;
float l9_213=0.0;
float l9_214=(*sc_set0.UserUniforms).clearcoatNormalTexture_rotation;
l9_213=l9_214;
float2 l9_215=float2(0.0);
float2 l9_216=(*sc_set0.UserUniforms).clearcoatRoughnessTexture_offset;
l9_215=l9_216;
float2 l9_217=float2(0.0);
float2 l9_218=(*sc_set0.UserUniforms).clearcoatRoughnessTexture_scale;
l9_217=l9_218;
float l9_219=0.0;
float l9_220=(*sc_set0.UserUniforms).clearcoatRoughnessTexture_rotation;
l9_219=l9_220;
float3 l9_221=float3(0.0);
float l9_222=0.0;
float3 l9_223=float3(0.0);
float3 l9_224=float3(0.0);
float l9_225=0.0;
float l9_226=0.0;
float4 l9_227=float4(0.0);
float3 l9_228=float3(0.0);
float4 l9_229=float4(0.0);
float l9_230=0.0;
float3 l9_231=float3(0.0);
float l9_232=0.0;
float3 l9_233=l9_17;
float l9_234=l9_19;
float l9_235=l9_21;
float l9_236=l9_23;
float l9_237=l9_25;
float l9_238=l9_27;
float3 l9_239=l9_29;
float l9_240=l9_31;
float l9_241=l9_33;
float l9_242=l9_35;
float3 l9_243=l9_45;
float l9_244=l9_46;
float2 l9_245=l9_167;
float2 l9_246=l9_169;
float l9_247=l9_171;
float2 l9_248=l9_173;
float2 l9_249=l9_175;
float l9_250=l9_177;
float2 l9_251=l9_179;
float2 l9_252=l9_181;
float l9_253=l9_183;
float2 l9_254=l9_185;
float2 l9_255=l9_187;
float l9_256=l9_189;
float2 l9_257=l9_191;
float2 l9_258=l9_193;
float l9_259=l9_195;
float2 l9_260=l9_197;
float2 l9_261=l9_199;
float l9_262=l9_201;
float2 l9_263=l9_203;
float2 l9_264=l9_205;
float l9_265=l9_207;
float2 l9_266=l9_209;
float2 l9_267=l9_211;
float l9_268=l9_213;
float2 l9_269=l9_215;
float2 l9_270=l9_217;
float l9_271=l9_219;
ssGlobals l9_272=param_4;
tempGlobals=l9_272;
float3 l9_273=float3(0.0);
float l9_274=0.0;
float3 l9_275=float3(0.0);
float3 l9_276=float3(0.0);
float l9_277=0.0;
float l9_278=0.0;
float4 l9_279=float4(0.0);
float3 l9_280=float3(0.0);
float4 l9_281=float4(0.0);
float l9_282=0.0;
float3 l9_283=float3(0.0);
float l9_284=0.0;
N3_EmissiveColor=l9_233;
N3_EnableEmissiveTexture=(int(ENABLE_EMISSIVE_tmp)!=0);
N3_EmissiveTextureCoord=NODE_10_DROPLIST_ITEM_tmp;
N3_EnableNormalTexture=(int(ENABLE_NORMALMAP_tmp)!=0);
N3_NormalScale=l9_234;
N3_NormalTextureCoord=NODE_8_DROPLIST_ITEM_tmp;
N3_MetallicValue=l9_235;
N3_RoughnessValue=l9_236;
N3_EnableMetallicRoughnessTexture=(int(ENABLE_METALLIC_ROUGHNESS_TEX_tmp)!=0);
N3_OcclusionStrength=l9_237;
N3_MaterialParamsTextureCoord=NODE_11_DROPLIST_ITEM_tmp;
N3_TransmissionEnable=(int(ENABLE_TRANSMISSION_tmp)!=0);
N3_TransmissionFactor=l9_238;
N3_EnableTransmissionTexture=(int(ENABLE_TRANSMISSION_TEX_tmp)!=0);
N3_TransmissionTextureCoord=Tweak_N30_tmp;
N3_SheenEnable=(int(ENABLE_SHEEN_tmp)!=0);
N3_SheenColorFactor=l9_239;
N3_EnableSheenTexture=(int(ENABLE_SHEEN_COLOR_TEX_tmp)!=0);
N3_SheenColorTextureCoord=Tweak_N32_tmp;
N3_SheenRoughnessFactor=l9_240;
N3_EnableSheenRoughnessTexture=(int(ENABLE_SHEEN_ROUGHNESS_TEX_tmp)!=0);
N3_SheenRoughnessTextureCoord=Tweak_N37_tmp;
N3_ClearcoatEnable=(int(ENABLE_CLEARCOAT_tmp)!=0);
N3_ClearcoatFactor=l9_241;
N3_EnableClearcoatTexture=(int(ENABLE_CLEARCOAT_TEX_tmp)!=0);
N3_ClearcoatTextureCoord=Tweak_N44_tmp;
N3_ClearcoatRoughnessFactor=l9_242;
N3_EnableClearCoatRoughnessTexture=(int(ENABLE_CLEARCOAT_ROUGHNESS_TEX_tmp)!=0);
N3_ClearcoatRoughnessTextureCoord=Tweak_N60_tmp;
N3_EnableClearCoatNormalTexture=(int(ENABLE_CLEARCOAT_NORMAL_TEX_tmp)!=0);
N3_ClearcoatNormalMapCoord=Tweak_N47_tmp;
N3_BaseColorIn=l9_243;
N3_OpacityIn=l9_244;
N3_EnableTextureTransform=(int(ENABLE_TEXTURE_TRANSFORM_tmp)!=0);
N3_EmissiveTextureTransform=(int(ENABLE_EMISSIVE_TEXTURE_TRANSFORM_tmp)!=0);
N3_EmissiveTextureOffset=l9_245;
N3_EmissiveTextureScale=l9_246;
N3_EmissiveTextureRotation=l9_247;
N3_NormalTextureTransform=(int(ENABLE_NORMAL_TEXTURE_TRANSFORM_tmp)!=0);
N3_NormalTextureOffset=l9_248;
N3_NormalTextureScale=l9_249;
N3_NormalTextureRotation=l9_250;
N3_MaterialParamsTextureTransform=(int(ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM_tmp)!=0);
N3_MaterialParamsTextureOffset=l9_251;
N3_MaterialParamsTextureScale=l9_252;
N3_MaterialParamsTextureRotation=l9_253;
N3_TransmissionTextureTransform=(int(ENABLE_TRANSMISSION_TEXTURE_TRANSFORM_tmp)!=0);
N3_TransmissionTextureOffset=l9_254;
N3_TransmissionTextureScale=l9_255;
N3_TransmissionTextureRotation=l9_256;
N3_SheenColorTextureTransform=(int(ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM_tmp)!=0);
N3_SheenColorTextureOffset=l9_257;
N3_SheenColorTextureScale=l9_258;
N3_SheenColorTextureRotation=l9_259;
N3_SheenRoughnessTextureTransform=(int(ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM_tmp)!=0);
N3_SheenRoughnessTextureOffset=l9_260;
N3_SheenRoughnessTextureScale=l9_261;
N3_SheenRoughnessTextureRotation=l9_262;
N3_ClearcoatTextureTransform=(int(ENABLE_CLEARCOAT_TEXTURE_TRANSFORM_tmp)!=0);
N3_ClearcoatTextureOffset=l9_263;
N3_ClearcoatTextureScale=l9_264;
N3_ClearcoatTextureRotation=l9_265;
N3_ClearcoatNormalTextureTransform=(int(ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM_tmp)!=0);
N3_ClearcoatNormalTextureOffset=l9_266;
N3_ClearcoatNormalTextureScale=l9_267;
N3_ClearcoatNormalTextureRotation=l9_268;
N3_ClearcoatRoughnessTextureTransform=(int(ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM_tmp)!=0);
N3_ClearcoatRoughnessTextureOffset=l9_269;
N3_ClearcoatRoughnessTextureScale=l9_270;
N3_ClearcoatRoughnessTextureRotation=l9_271;
N3_BaseColor=N3_BaseColorIn;
N3_Opacity=N3_OpacityIn;
N3_Emissive=N3_EmissiveColor;
if (N3_EnableEmissiveTexture)
{
float3 l9_285=N3_Emissive;
int l9_286=N3_EmissiveTextureCoord;
float2 l9_287=tempGlobals.Surface_UVCoord0;
float2 l9_288=l9_287;
if (l9_286==0)
{
float2 l9_289=tempGlobals.Surface_UVCoord0;
l9_288=l9_289;
}
if (l9_286==1)
{
float2 l9_290=tempGlobals.Surface_UVCoord1;
l9_288=l9_290;
}
float2 l9_291=l9_288;
float2 l9_292=l9_291;
if (N3_EnableTextureTransform&&N3_EmissiveTextureTransform)
{
float2 l9_293=l9_292;
float2 l9_294=N3_EmissiveTextureOffset;
float2 l9_295=N3_EmissiveTextureScale;
float l9_296=N3_EmissiveTextureRotation;
float l9_297=radians(l9_296);
float3x3 l9_298=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_294.x,l9_294.y,1.0));
float3x3 l9_299=float3x3(float3(cos(l9_297),sin(l9_297),0.0),float3(-sin(l9_297),cos(l9_297),0.0),float3(0.0,0.0,1.0));
float3x3 l9_300=float3x3(float3(l9_295.x,0.0,0.0),float3(0.0,l9_295.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_301=(l9_298*l9_299)*l9_300;
float2 l9_302=(l9_301*float3(l9_293,1.0)).xy;
l9_292=l9_302;
}
float2 l9_303=l9_292;
float4 l9_304=float4(0.0);
int l9_305;
if ((int(emissiveTextureHasSwappedViews_tmp)!=0))
{
int l9_306=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_306=0;
}
else
{
l9_306=in.varStereoViewID;
}
int l9_307=l9_306;
l9_305=1-l9_307;
}
else
{
int l9_308=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_308=0;
}
else
{
l9_308=in.varStereoViewID;
}
int l9_309=l9_308;
l9_305=l9_309;
}
int l9_310=l9_305;
int l9_311=emissiveTextureLayout_tmp;
int l9_312=l9_310;
float2 l9_313=l9_303;
bool l9_314=(int(SC_USE_UV_TRANSFORM_emissiveTexture_tmp)!=0);
float3x3 l9_315=(*sc_set0.UserUniforms).emissiveTextureTransform;
int2 l9_316=int2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture_tmp);
bool l9_317=(int(SC_USE_UV_MIN_MAX_emissiveTexture_tmp)!=0);
float4 l9_318=(*sc_set0.UserUniforms).emissiveTextureUvMinMax;
bool l9_319=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture_tmp)!=0);
float4 l9_320=(*sc_set0.UserUniforms).emissiveTextureBorderColor;
float l9_321=0.0;
bool l9_322=l9_319&&(!l9_317);
float l9_323=1.0;
float l9_324=l9_313.x;
int l9_325=l9_316.x;
if (l9_325==1)
{
l9_324=fract(l9_324);
}
else
{
if (l9_325==2)
{
float l9_326=fract(l9_324);
float l9_327=l9_324-l9_326;
float l9_328=step(0.25,fract(l9_327*0.5));
l9_324=mix(l9_326,1.0-l9_326,fast::clamp(l9_328,0.0,1.0));
}
}
l9_313.x=l9_324;
float l9_329=l9_313.y;
int l9_330=l9_316.y;
if (l9_330==1)
{
l9_329=fract(l9_329);
}
else
{
if (l9_330==2)
{
float l9_331=fract(l9_329);
float l9_332=l9_329-l9_331;
float l9_333=step(0.25,fract(l9_332*0.5));
l9_329=mix(l9_331,1.0-l9_331,fast::clamp(l9_333,0.0,1.0));
}
}
l9_313.y=l9_329;
if (l9_317)
{
bool l9_334=l9_319;
bool l9_335;
if (l9_334)
{
l9_335=l9_316.x==3;
}
else
{
l9_335=l9_334;
}
float l9_336=l9_313.x;
float l9_337=l9_318.x;
float l9_338=l9_318.z;
bool l9_339=l9_335;
float l9_340=l9_323;
float l9_341=fast::clamp(l9_336,l9_337,l9_338);
float l9_342=step(abs(l9_336-l9_341),9.9999997e-06);
l9_340*=(l9_342+((1.0-float(l9_339))*(1.0-l9_342)));
l9_336=l9_341;
l9_313.x=l9_336;
l9_323=l9_340;
bool l9_343=l9_319;
bool l9_344;
if (l9_343)
{
l9_344=l9_316.y==3;
}
else
{
l9_344=l9_343;
}
float l9_345=l9_313.y;
float l9_346=l9_318.y;
float l9_347=l9_318.w;
bool l9_348=l9_344;
float l9_349=l9_323;
float l9_350=fast::clamp(l9_345,l9_346,l9_347);
float l9_351=step(abs(l9_345-l9_350),9.9999997e-06);
l9_349*=(l9_351+((1.0-float(l9_348))*(1.0-l9_351)));
l9_345=l9_350;
l9_313.y=l9_345;
l9_323=l9_349;
}
float2 l9_352=l9_313;
bool l9_353=l9_314;
float3x3 l9_354=l9_315;
if (l9_353)
{
l9_352=float2((l9_354*float3(l9_352,1.0)).xy);
}
float2 l9_355=l9_352;
l9_313=l9_355;
float l9_356=l9_313.x;
int l9_357=l9_316.x;
bool l9_358=l9_322;
float l9_359=l9_323;
if ((l9_357==0)||(l9_357==3))
{
float l9_360=l9_356;
float l9_361=0.0;
float l9_362=1.0;
bool l9_363=l9_358;
float l9_364=l9_359;
float l9_365=fast::clamp(l9_360,l9_361,l9_362);
float l9_366=step(abs(l9_360-l9_365),9.9999997e-06);
l9_364*=(l9_366+((1.0-float(l9_363))*(1.0-l9_366)));
l9_360=l9_365;
l9_356=l9_360;
l9_359=l9_364;
}
l9_313.x=l9_356;
l9_323=l9_359;
float l9_367=l9_313.y;
int l9_368=l9_316.y;
bool l9_369=l9_322;
float l9_370=l9_323;
if ((l9_368==0)||(l9_368==3))
{
float l9_371=l9_367;
float l9_372=0.0;
float l9_373=1.0;
bool l9_374=l9_369;
float l9_375=l9_370;
float l9_376=fast::clamp(l9_371,l9_372,l9_373);
float l9_377=step(abs(l9_371-l9_376),9.9999997e-06);
l9_375*=(l9_377+((1.0-float(l9_374))*(1.0-l9_377)));
l9_371=l9_376;
l9_367=l9_371;
l9_370=l9_375;
}
l9_313.y=l9_367;
l9_323=l9_370;
float2 l9_378=l9_313;
int l9_379=l9_311;
int l9_380=l9_312;
float l9_381=l9_321;
float2 l9_382=l9_378;
int l9_383=l9_379;
int l9_384=l9_380;
float3 l9_385=float3(0.0);
if (l9_383==0)
{
l9_385=float3(l9_382,0.0);
}
else
{
if (l9_383==1)
{
l9_385=float3(l9_382.x,(l9_382.y*0.5)+(0.5-(float(l9_384)*0.5)),0.0);
}
else
{
l9_385=float3(l9_382,float(l9_384));
}
}
float3 l9_386=l9_385;
float3 l9_387=l9_386;
float4 l9_388=sc_set0.emissiveTexture.sample(sc_set0.emissiveTextureSmpSC,l9_387.xy,bias(l9_381));
float4 l9_389=l9_388;
if (l9_319)
{
l9_389=mix(l9_320,l9_389,float4(l9_323));
}
float4 l9_390=l9_389;
l9_304=l9_390;
float4 l9_391=l9_304;
float3 l9_392=l9_391.xyz;
float3 l9_393;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_393=float3(pow(l9_392.x,2.2),pow(l9_392.y,2.2),pow(l9_392.z,2.2));
}
else
{
l9_393=l9_392*l9_392;
}
float3 l9_394=l9_393;
float3 l9_395=l9_394;
float3 l9_396=l9_285;
float3 l9_397;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_397=float3(pow(l9_396.x,2.2),pow(l9_396.y,2.2),pow(l9_396.z,2.2));
}
else
{
l9_397=l9_396*l9_396;
}
float3 l9_398=l9_397;
l9_285=l9_395*l9_398;
N3_Emissive=l9_285;
}
float3 l9_399=tempGlobals.VertexNormal_WorldSpace;
N3_Normal=normalize(l9_399);
if (N3_EnableNormalTexture)
{
float3 l9_400=N3_Normal;
int l9_401=N3_NormalTextureCoord;
float2 l9_402=tempGlobals.Surface_UVCoord0;
float2 l9_403=l9_402;
if (l9_401==0)
{
float2 l9_404=tempGlobals.Surface_UVCoord0;
l9_403=l9_404;
}
if (l9_401==1)
{
float2 l9_405=tempGlobals.Surface_UVCoord1;
l9_403=l9_405;
}
float2 l9_406=l9_403;
float2 l9_407=l9_406;
if (N3_EnableTextureTransform&&N3_NormalTextureTransform)
{
float2 l9_408=l9_407;
float2 l9_409=N3_NormalTextureOffset;
float2 l9_410=N3_NormalTextureScale;
float l9_411=N3_NormalTextureRotation;
float l9_412=radians(l9_411);
float3x3 l9_413=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_409.x,l9_409.y,1.0));
float3x3 l9_414=float3x3(float3(cos(l9_412),sin(l9_412),0.0),float3(-sin(l9_412),cos(l9_412),0.0),float3(0.0,0.0,1.0));
float3x3 l9_415=float3x3(float3(l9_410.x,0.0,0.0),float3(0.0,l9_410.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_416=(l9_413*l9_414)*l9_415;
float2 l9_417=(l9_416*float3(l9_408,1.0)).xy;
l9_407=l9_417;
}
float2 l9_418=l9_407;
float4 l9_419=float4(0.0);
int l9_420;
if ((int(normalTextureHasSwappedViews_tmp)!=0))
{
int l9_421=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_421=0;
}
else
{
l9_421=in.varStereoViewID;
}
int l9_422=l9_421;
l9_420=1-l9_422;
}
else
{
int l9_423=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_423=0;
}
else
{
l9_423=in.varStereoViewID;
}
int l9_424=l9_423;
l9_420=l9_424;
}
int l9_425=l9_420;
int l9_426=normalTextureLayout_tmp;
int l9_427=l9_425;
float2 l9_428=l9_418;
bool l9_429=(int(SC_USE_UV_TRANSFORM_normalTexture_tmp)!=0);
float3x3 l9_430=(*sc_set0.UserUniforms).normalTextureTransform;
int2 l9_431=int2(SC_SOFTWARE_WRAP_MODE_U_normalTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTexture_tmp);
bool l9_432=(int(SC_USE_UV_MIN_MAX_normalTexture_tmp)!=0);
float4 l9_433=(*sc_set0.UserUniforms).normalTextureUvMinMax;
bool l9_434=(int(SC_USE_CLAMP_TO_BORDER_normalTexture_tmp)!=0);
float4 l9_435=(*sc_set0.UserUniforms).normalTextureBorderColor;
float l9_436=0.0;
bool l9_437=l9_434&&(!l9_432);
float l9_438=1.0;
float l9_439=l9_428.x;
int l9_440=l9_431.x;
if (l9_440==1)
{
l9_439=fract(l9_439);
}
else
{
if (l9_440==2)
{
float l9_441=fract(l9_439);
float l9_442=l9_439-l9_441;
float l9_443=step(0.25,fract(l9_442*0.5));
l9_439=mix(l9_441,1.0-l9_441,fast::clamp(l9_443,0.0,1.0));
}
}
l9_428.x=l9_439;
float l9_444=l9_428.y;
int l9_445=l9_431.y;
if (l9_445==1)
{
l9_444=fract(l9_444);
}
else
{
if (l9_445==2)
{
float l9_446=fract(l9_444);
float l9_447=l9_444-l9_446;
float l9_448=step(0.25,fract(l9_447*0.5));
l9_444=mix(l9_446,1.0-l9_446,fast::clamp(l9_448,0.0,1.0));
}
}
l9_428.y=l9_444;
if (l9_432)
{
bool l9_449=l9_434;
bool l9_450;
if (l9_449)
{
l9_450=l9_431.x==3;
}
else
{
l9_450=l9_449;
}
float l9_451=l9_428.x;
float l9_452=l9_433.x;
float l9_453=l9_433.z;
bool l9_454=l9_450;
float l9_455=l9_438;
float l9_456=fast::clamp(l9_451,l9_452,l9_453);
float l9_457=step(abs(l9_451-l9_456),9.9999997e-06);
l9_455*=(l9_457+((1.0-float(l9_454))*(1.0-l9_457)));
l9_451=l9_456;
l9_428.x=l9_451;
l9_438=l9_455;
bool l9_458=l9_434;
bool l9_459;
if (l9_458)
{
l9_459=l9_431.y==3;
}
else
{
l9_459=l9_458;
}
float l9_460=l9_428.y;
float l9_461=l9_433.y;
float l9_462=l9_433.w;
bool l9_463=l9_459;
float l9_464=l9_438;
float l9_465=fast::clamp(l9_460,l9_461,l9_462);
float l9_466=step(abs(l9_460-l9_465),9.9999997e-06);
l9_464*=(l9_466+((1.0-float(l9_463))*(1.0-l9_466)));
l9_460=l9_465;
l9_428.y=l9_460;
l9_438=l9_464;
}
float2 l9_467=l9_428;
bool l9_468=l9_429;
float3x3 l9_469=l9_430;
if (l9_468)
{
l9_467=float2((l9_469*float3(l9_467,1.0)).xy);
}
float2 l9_470=l9_467;
l9_428=l9_470;
float l9_471=l9_428.x;
int l9_472=l9_431.x;
bool l9_473=l9_437;
float l9_474=l9_438;
if ((l9_472==0)||(l9_472==3))
{
float l9_475=l9_471;
float l9_476=0.0;
float l9_477=1.0;
bool l9_478=l9_473;
float l9_479=l9_474;
float l9_480=fast::clamp(l9_475,l9_476,l9_477);
float l9_481=step(abs(l9_475-l9_480),9.9999997e-06);
l9_479*=(l9_481+((1.0-float(l9_478))*(1.0-l9_481)));
l9_475=l9_480;
l9_471=l9_475;
l9_474=l9_479;
}
l9_428.x=l9_471;
l9_438=l9_474;
float l9_482=l9_428.y;
int l9_483=l9_431.y;
bool l9_484=l9_437;
float l9_485=l9_438;
if ((l9_483==0)||(l9_483==3))
{
float l9_486=l9_482;
float l9_487=0.0;
float l9_488=1.0;
bool l9_489=l9_484;
float l9_490=l9_485;
float l9_491=fast::clamp(l9_486,l9_487,l9_488);
float l9_492=step(abs(l9_486-l9_491),9.9999997e-06);
l9_490*=(l9_492+((1.0-float(l9_489))*(1.0-l9_492)));
l9_486=l9_491;
l9_482=l9_486;
l9_485=l9_490;
}
l9_428.y=l9_482;
l9_438=l9_485;
float2 l9_493=l9_428;
int l9_494=l9_426;
int l9_495=l9_427;
float l9_496=l9_436;
float2 l9_497=l9_493;
int l9_498=l9_494;
int l9_499=l9_495;
float3 l9_500=float3(0.0);
if (l9_498==0)
{
l9_500=float3(l9_497,0.0);
}
else
{
if (l9_498==1)
{
l9_500=float3(l9_497.x,(l9_497.y*0.5)+(0.5-(float(l9_499)*0.5)),0.0);
}
else
{
l9_500=float3(l9_497,float(l9_499));
}
}
float3 l9_501=l9_500;
float3 l9_502=l9_501;
float4 l9_503=sc_set0.normalTexture.sample(sc_set0.normalTextureSmpSC,l9_502.xy,bias(l9_496));
float4 l9_504=l9_503;
if (l9_434)
{
l9_504=mix(l9_435,l9_504,float4(l9_438));
}
float4 l9_505=l9_504;
l9_419=l9_505;
float4 l9_506=l9_419;
float3 l9_507=(l9_506.xyz*1.9921875)-float3(1.0);
l9_507=mix(float3(0.0,0.0,1.0),l9_507,float3(N3_NormalScale));
float3 l9_508=tempGlobals.VertexTangent_WorldSpace;
float3 l9_509=l9_508;
float3 l9_510=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_511=l9_510;
float3x3 l9_512=float3x3(float3(l9_509),float3(l9_511),float3(l9_400));
l9_400=normalize(l9_512*l9_507);
N3_Normal=l9_400;
}
N3_Metallic=N3_MetallicValue;
N3_Roughness=N3_RoughnessValue;
N3_Occlusion=float4(1.0,1.0,1.0,0.0);
if (N3_EnableMetallicRoughnessTexture)
{
float l9_513=N3_Metallic;
float l9_514=N3_Roughness;
float4 l9_515=N3_Occlusion;
int l9_516=N3_MaterialParamsTextureCoord;
float2 l9_517=tempGlobals.Surface_UVCoord0;
float2 l9_518=l9_517;
if (l9_516==0)
{
float2 l9_519=tempGlobals.Surface_UVCoord0;
l9_518=l9_519;
}
if (l9_516==1)
{
float2 l9_520=tempGlobals.Surface_UVCoord1;
l9_518=l9_520;
}
float2 l9_521=l9_518;
float2 l9_522=l9_521;
if (N3_EnableTextureTransform&&N3_MaterialParamsTextureTransform)
{
float2 l9_523=l9_522;
float2 l9_524=N3_MaterialParamsTextureOffset;
float2 l9_525=N3_MaterialParamsTextureScale;
float l9_526=N3_MaterialParamsTextureRotation;
float l9_527=radians(l9_526);
float3x3 l9_528=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_524.x,l9_524.y,1.0));
float3x3 l9_529=float3x3(float3(cos(l9_527),sin(l9_527),0.0),float3(-sin(l9_527),cos(l9_527),0.0),float3(0.0,0.0,1.0));
float3x3 l9_530=float3x3(float3(l9_525.x,0.0,0.0),float3(0.0,l9_525.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_531=(l9_528*l9_529)*l9_530;
float2 l9_532=(l9_531*float3(l9_523,1.0)).xy;
l9_522=l9_532;
}
float2 l9_533=l9_522;
float4 l9_534=float4(0.0);
int l9_535;
if ((int(metallicRoughnessTextureHasSwappedViews_tmp)!=0))
{
int l9_536=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_536=0;
}
else
{
l9_536=in.varStereoViewID;
}
int l9_537=l9_536;
l9_535=1-l9_537;
}
else
{
int l9_538=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_538=0;
}
else
{
l9_538=in.varStereoViewID;
}
int l9_539=l9_538;
l9_535=l9_539;
}
int l9_540=l9_535;
int l9_541=metallicRoughnessTextureLayout_tmp;
int l9_542=l9_540;
float2 l9_543=l9_533;
bool l9_544=(int(SC_USE_UV_TRANSFORM_metallicRoughnessTexture_tmp)!=0);
float3x3 l9_545=(*sc_set0.UserUniforms).metallicRoughnessTextureTransform;
int2 l9_546=int2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture_tmp);
bool l9_547=(int(SC_USE_UV_MIN_MAX_metallicRoughnessTexture_tmp)!=0);
float4 l9_548=(*sc_set0.UserUniforms).metallicRoughnessTextureUvMinMax;
bool l9_549=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture_tmp)!=0);
float4 l9_550=(*sc_set0.UserUniforms).metallicRoughnessTextureBorderColor;
float l9_551=0.0;
bool l9_552=l9_549&&(!l9_547);
float l9_553=1.0;
float l9_554=l9_543.x;
int l9_555=l9_546.x;
if (l9_555==1)
{
l9_554=fract(l9_554);
}
else
{
if (l9_555==2)
{
float l9_556=fract(l9_554);
float l9_557=l9_554-l9_556;
float l9_558=step(0.25,fract(l9_557*0.5));
l9_554=mix(l9_556,1.0-l9_556,fast::clamp(l9_558,0.0,1.0));
}
}
l9_543.x=l9_554;
float l9_559=l9_543.y;
int l9_560=l9_546.y;
if (l9_560==1)
{
l9_559=fract(l9_559);
}
else
{
if (l9_560==2)
{
float l9_561=fract(l9_559);
float l9_562=l9_559-l9_561;
float l9_563=step(0.25,fract(l9_562*0.5));
l9_559=mix(l9_561,1.0-l9_561,fast::clamp(l9_563,0.0,1.0));
}
}
l9_543.y=l9_559;
if (l9_547)
{
bool l9_564=l9_549;
bool l9_565;
if (l9_564)
{
l9_565=l9_546.x==3;
}
else
{
l9_565=l9_564;
}
float l9_566=l9_543.x;
float l9_567=l9_548.x;
float l9_568=l9_548.z;
bool l9_569=l9_565;
float l9_570=l9_553;
float l9_571=fast::clamp(l9_566,l9_567,l9_568);
float l9_572=step(abs(l9_566-l9_571),9.9999997e-06);
l9_570*=(l9_572+((1.0-float(l9_569))*(1.0-l9_572)));
l9_566=l9_571;
l9_543.x=l9_566;
l9_553=l9_570;
bool l9_573=l9_549;
bool l9_574;
if (l9_573)
{
l9_574=l9_546.y==3;
}
else
{
l9_574=l9_573;
}
float l9_575=l9_543.y;
float l9_576=l9_548.y;
float l9_577=l9_548.w;
bool l9_578=l9_574;
float l9_579=l9_553;
float l9_580=fast::clamp(l9_575,l9_576,l9_577);
float l9_581=step(abs(l9_575-l9_580),9.9999997e-06);
l9_579*=(l9_581+((1.0-float(l9_578))*(1.0-l9_581)));
l9_575=l9_580;
l9_543.y=l9_575;
l9_553=l9_579;
}
float2 l9_582=l9_543;
bool l9_583=l9_544;
float3x3 l9_584=l9_545;
if (l9_583)
{
l9_582=float2((l9_584*float3(l9_582,1.0)).xy);
}
float2 l9_585=l9_582;
l9_543=l9_585;
float l9_586=l9_543.x;
int l9_587=l9_546.x;
bool l9_588=l9_552;
float l9_589=l9_553;
if ((l9_587==0)||(l9_587==3))
{
float l9_590=l9_586;
float l9_591=0.0;
float l9_592=1.0;
bool l9_593=l9_588;
float l9_594=l9_589;
float l9_595=fast::clamp(l9_590,l9_591,l9_592);
float l9_596=step(abs(l9_590-l9_595),9.9999997e-06);
l9_594*=(l9_596+((1.0-float(l9_593))*(1.0-l9_596)));
l9_590=l9_595;
l9_586=l9_590;
l9_589=l9_594;
}
l9_543.x=l9_586;
l9_553=l9_589;
float l9_597=l9_543.y;
int l9_598=l9_546.y;
bool l9_599=l9_552;
float l9_600=l9_553;
if ((l9_598==0)||(l9_598==3))
{
float l9_601=l9_597;
float l9_602=0.0;
float l9_603=1.0;
bool l9_604=l9_599;
float l9_605=l9_600;
float l9_606=fast::clamp(l9_601,l9_602,l9_603);
float l9_607=step(abs(l9_601-l9_606),9.9999997e-06);
l9_605*=(l9_607+((1.0-float(l9_604))*(1.0-l9_607)));
l9_601=l9_606;
l9_597=l9_601;
l9_600=l9_605;
}
l9_543.y=l9_597;
l9_553=l9_600;
float2 l9_608=l9_543;
int l9_609=l9_541;
int l9_610=l9_542;
float l9_611=l9_551;
float2 l9_612=l9_608;
int l9_613=l9_609;
int l9_614=l9_610;
float3 l9_615=float3(0.0);
if (l9_613==0)
{
l9_615=float3(l9_612,0.0);
}
else
{
if (l9_613==1)
{
l9_615=float3(l9_612.x,(l9_612.y*0.5)+(0.5-(float(l9_614)*0.5)),0.0);
}
else
{
l9_615=float3(l9_612,float(l9_614));
}
}
float3 l9_616=l9_615;
float3 l9_617=l9_616;
float4 l9_618=sc_set0.metallicRoughnessTexture.sample(sc_set0.metallicRoughnessTextureSmpSC,l9_617.xy,bias(l9_611));
float4 l9_619=l9_618;
if (l9_549)
{
l9_619=mix(l9_550,l9_619,float4(l9_553));
}
float4 l9_620=l9_619;
l9_534=l9_620;
float4 l9_621=l9_534;
float3 l9_622=l9_621.xyz;
l9_513*=l9_622.x;
l9_514*=l9_622.y;
l9_515.w=N3_OcclusionStrength;
float3 l9_623=float3(1.0+(l9_515.w*(l9_622.z-1.0)));
l9_515=float4(l9_623.x,l9_623.y,l9_623.z,l9_515.w);
N3_Metallic=l9_513;
N3_Roughness=l9_514;
N3_Occlusion=l9_515;
}
if (N3_TransmissionEnable)
{
float3 l9_624=N3_BaseColor;
float3 l9_625=N3_Emissive;
float l9_626=N3_Metallic;
float2 l9_627=tempGlobals.gScreenCoord;
float2 l9_628=l9_627;
float4 l9_629=float4(0.0);
int l9_630;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_631=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_631=0;
}
else
{
l9_631=in.varStereoViewID;
}
int l9_632=l9_631;
l9_630=1-l9_632;
}
else
{
int l9_633=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_633=0;
}
else
{
l9_633=in.varStereoViewID;
}
int l9_634=l9_633;
l9_630=l9_634;
}
int l9_635=l9_630;
int l9_636=screenTextureLayout_tmp;
int l9_637=l9_635;
float2 l9_638=l9_628;
bool l9_639=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_640=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_641=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_642=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_643=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_644=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_645=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_646=0.0;
bool l9_647=l9_644&&(!l9_642);
float l9_648=1.0;
float l9_649=l9_638.x;
int l9_650=l9_641.x;
if (l9_650==1)
{
l9_649=fract(l9_649);
}
else
{
if (l9_650==2)
{
float l9_651=fract(l9_649);
float l9_652=l9_649-l9_651;
float l9_653=step(0.25,fract(l9_652*0.5));
l9_649=mix(l9_651,1.0-l9_651,fast::clamp(l9_653,0.0,1.0));
}
}
l9_638.x=l9_649;
float l9_654=l9_638.y;
int l9_655=l9_641.y;
if (l9_655==1)
{
l9_654=fract(l9_654);
}
else
{
if (l9_655==2)
{
float l9_656=fract(l9_654);
float l9_657=l9_654-l9_656;
float l9_658=step(0.25,fract(l9_657*0.5));
l9_654=mix(l9_656,1.0-l9_656,fast::clamp(l9_658,0.0,1.0));
}
}
l9_638.y=l9_654;
if (l9_642)
{
bool l9_659=l9_644;
bool l9_660;
if (l9_659)
{
l9_660=l9_641.x==3;
}
else
{
l9_660=l9_659;
}
float l9_661=l9_638.x;
float l9_662=l9_643.x;
float l9_663=l9_643.z;
bool l9_664=l9_660;
float l9_665=l9_648;
float l9_666=fast::clamp(l9_661,l9_662,l9_663);
float l9_667=step(abs(l9_661-l9_666),9.9999997e-06);
l9_665*=(l9_667+((1.0-float(l9_664))*(1.0-l9_667)));
l9_661=l9_666;
l9_638.x=l9_661;
l9_648=l9_665;
bool l9_668=l9_644;
bool l9_669;
if (l9_668)
{
l9_669=l9_641.y==3;
}
else
{
l9_669=l9_668;
}
float l9_670=l9_638.y;
float l9_671=l9_643.y;
float l9_672=l9_643.w;
bool l9_673=l9_669;
float l9_674=l9_648;
float l9_675=fast::clamp(l9_670,l9_671,l9_672);
float l9_676=step(abs(l9_670-l9_675),9.9999997e-06);
l9_674*=(l9_676+((1.0-float(l9_673))*(1.0-l9_676)));
l9_670=l9_675;
l9_638.y=l9_670;
l9_648=l9_674;
}
float2 l9_677=l9_638;
bool l9_678=l9_639;
float3x3 l9_679=l9_640;
if (l9_678)
{
l9_677=float2((l9_679*float3(l9_677,1.0)).xy);
}
float2 l9_680=l9_677;
l9_638=l9_680;
float l9_681=l9_638.x;
int l9_682=l9_641.x;
bool l9_683=l9_647;
float l9_684=l9_648;
if ((l9_682==0)||(l9_682==3))
{
float l9_685=l9_681;
float l9_686=0.0;
float l9_687=1.0;
bool l9_688=l9_683;
float l9_689=l9_684;
float l9_690=fast::clamp(l9_685,l9_686,l9_687);
float l9_691=step(abs(l9_685-l9_690),9.9999997e-06);
l9_689*=(l9_691+((1.0-float(l9_688))*(1.0-l9_691)));
l9_685=l9_690;
l9_681=l9_685;
l9_684=l9_689;
}
l9_638.x=l9_681;
l9_648=l9_684;
float l9_692=l9_638.y;
int l9_693=l9_641.y;
bool l9_694=l9_647;
float l9_695=l9_648;
if ((l9_693==0)||(l9_693==3))
{
float l9_696=l9_692;
float l9_697=0.0;
float l9_698=1.0;
bool l9_699=l9_694;
float l9_700=l9_695;
float l9_701=fast::clamp(l9_696,l9_697,l9_698);
float l9_702=step(abs(l9_696-l9_701),9.9999997e-06);
l9_700*=(l9_702+((1.0-float(l9_699))*(1.0-l9_702)));
l9_696=l9_701;
l9_692=l9_696;
l9_695=l9_700;
}
l9_638.y=l9_692;
l9_648=l9_695;
float2 l9_703=l9_638;
int l9_704=l9_636;
int l9_705=l9_637;
float l9_706=l9_646;
float2 l9_707=l9_703;
int l9_708=l9_704;
int l9_709=l9_705;
float3 l9_710=float3(0.0);
if (l9_708==0)
{
l9_710=float3(l9_707,0.0);
}
else
{
if (l9_708==1)
{
l9_710=float3(l9_707.x,(l9_707.y*0.5)+(0.5-(float(l9_709)*0.5)),0.0);
}
else
{
l9_710=float3(l9_707,float(l9_709));
}
}
float3 l9_711=l9_710;
float3 l9_712=l9_711;
float4 l9_713=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_712.xy,bias(l9_706));
float4 l9_714=l9_713;
if (l9_644)
{
l9_714=mix(l9_645,l9_714,float4(l9_648));
}
float4 l9_715=l9_714;
l9_629=l9_715;
float4 l9_716=l9_629;
float3 l9_717=l9_716.xyz;
float3 l9_718;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_718=float3(pow(l9_717.x,2.2),pow(l9_717.y,2.2),pow(l9_717.z,2.2));
}
else
{
l9_718=l9_717*l9_717;
}
float3 l9_719=l9_718;
N3_Background=l9_719;
float l9_720=1.0;
if (N3_EnableTransmissionTexture)
{
int l9_721=N3_TransmissionTextureCoord;
float2 l9_722=tempGlobals.Surface_UVCoord0;
float2 l9_723=l9_722;
if (l9_721==0)
{
float2 l9_724=tempGlobals.Surface_UVCoord0;
l9_723=l9_724;
}
if (l9_721==1)
{
float2 l9_725=tempGlobals.Surface_UVCoord1;
l9_723=l9_725;
}
float2 l9_726=l9_723;
float2 l9_727=l9_726;
if (N3_EnableTextureTransform&&N3_TransmissionTextureTransform)
{
float2 l9_728=l9_727;
float2 l9_729=N3_TransmissionTextureOffset;
float2 l9_730=N3_TransmissionTextureScale;
float l9_731=N3_TransmissionTextureRotation;
float l9_732=radians(l9_731);
float3x3 l9_733=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_729.x,l9_729.y,1.0));
float3x3 l9_734=float3x3(float3(cos(l9_732),sin(l9_732),0.0),float3(-sin(l9_732),cos(l9_732),0.0),float3(0.0,0.0,1.0));
float3x3 l9_735=float3x3(float3(l9_730.x,0.0,0.0),float3(0.0,l9_730.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_736=(l9_733*l9_734)*l9_735;
float2 l9_737=(l9_736*float3(l9_728,1.0)).xy;
l9_727=l9_737;
}
float2 l9_738=l9_727;
float4 l9_739=float4(0.0);
int l9_740;
if ((int(transmissionTextureHasSwappedViews_tmp)!=0))
{
int l9_741=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_741=0;
}
else
{
l9_741=in.varStereoViewID;
}
int l9_742=l9_741;
l9_740=1-l9_742;
}
else
{
int l9_743=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_743=0;
}
else
{
l9_743=in.varStereoViewID;
}
int l9_744=l9_743;
l9_740=l9_744;
}
int l9_745=l9_740;
int l9_746=transmissionTextureLayout_tmp;
int l9_747=l9_745;
float2 l9_748=l9_738;
bool l9_749=(int(SC_USE_UV_TRANSFORM_transmissionTexture_tmp)!=0);
float3x3 l9_750=(*sc_set0.UserUniforms).transmissionTextureTransform;
int2 l9_751=int2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture_tmp);
bool l9_752=(int(SC_USE_UV_MIN_MAX_transmissionTexture_tmp)!=0);
float4 l9_753=(*sc_set0.UserUniforms).transmissionTextureUvMinMax;
bool l9_754=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture_tmp)!=0);
float4 l9_755=(*sc_set0.UserUniforms).transmissionTextureBorderColor;
float l9_756=0.0;
bool l9_757=l9_754&&(!l9_752);
float l9_758=1.0;
float l9_759=l9_748.x;
int l9_760=l9_751.x;
if (l9_760==1)
{
l9_759=fract(l9_759);
}
else
{
if (l9_760==2)
{
float l9_761=fract(l9_759);
float l9_762=l9_759-l9_761;
float l9_763=step(0.25,fract(l9_762*0.5));
l9_759=mix(l9_761,1.0-l9_761,fast::clamp(l9_763,0.0,1.0));
}
}
l9_748.x=l9_759;
float l9_764=l9_748.y;
int l9_765=l9_751.y;
if (l9_765==1)
{
l9_764=fract(l9_764);
}
else
{
if (l9_765==2)
{
float l9_766=fract(l9_764);
float l9_767=l9_764-l9_766;
float l9_768=step(0.25,fract(l9_767*0.5));
l9_764=mix(l9_766,1.0-l9_766,fast::clamp(l9_768,0.0,1.0));
}
}
l9_748.y=l9_764;
if (l9_752)
{
bool l9_769=l9_754;
bool l9_770;
if (l9_769)
{
l9_770=l9_751.x==3;
}
else
{
l9_770=l9_769;
}
float l9_771=l9_748.x;
float l9_772=l9_753.x;
float l9_773=l9_753.z;
bool l9_774=l9_770;
float l9_775=l9_758;
float l9_776=fast::clamp(l9_771,l9_772,l9_773);
float l9_777=step(abs(l9_771-l9_776),9.9999997e-06);
l9_775*=(l9_777+((1.0-float(l9_774))*(1.0-l9_777)));
l9_771=l9_776;
l9_748.x=l9_771;
l9_758=l9_775;
bool l9_778=l9_754;
bool l9_779;
if (l9_778)
{
l9_779=l9_751.y==3;
}
else
{
l9_779=l9_778;
}
float l9_780=l9_748.y;
float l9_781=l9_753.y;
float l9_782=l9_753.w;
bool l9_783=l9_779;
float l9_784=l9_758;
float l9_785=fast::clamp(l9_780,l9_781,l9_782);
float l9_786=step(abs(l9_780-l9_785),9.9999997e-06);
l9_784*=(l9_786+((1.0-float(l9_783))*(1.0-l9_786)));
l9_780=l9_785;
l9_748.y=l9_780;
l9_758=l9_784;
}
float2 l9_787=l9_748;
bool l9_788=l9_749;
float3x3 l9_789=l9_750;
if (l9_788)
{
l9_787=float2((l9_789*float3(l9_787,1.0)).xy);
}
float2 l9_790=l9_787;
l9_748=l9_790;
float l9_791=l9_748.x;
int l9_792=l9_751.x;
bool l9_793=l9_757;
float l9_794=l9_758;
if ((l9_792==0)||(l9_792==3))
{
float l9_795=l9_791;
float l9_796=0.0;
float l9_797=1.0;
bool l9_798=l9_793;
float l9_799=l9_794;
float l9_800=fast::clamp(l9_795,l9_796,l9_797);
float l9_801=step(abs(l9_795-l9_800),9.9999997e-06);
l9_799*=(l9_801+((1.0-float(l9_798))*(1.0-l9_801)));
l9_795=l9_800;
l9_791=l9_795;
l9_794=l9_799;
}
l9_748.x=l9_791;
l9_758=l9_794;
float l9_802=l9_748.y;
int l9_803=l9_751.y;
bool l9_804=l9_757;
float l9_805=l9_758;
if ((l9_803==0)||(l9_803==3))
{
float l9_806=l9_802;
float l9_807=0.0;
float l9_808=1.0;
bool l9_809=l9_804;
float l9_810=l9_805;
float l9_811=fast::clamp(l9_806,l9_807,l9_808);
float l9_812=step(abs(l9_806-l9_811),9.9999997e-06);
l9_810*=(l9_812+((1.0-float(l9_809))*(1.0-l9_812)));
l9_806=l9_811;
l9_802=l9_806;
l9_805=l9_810;
}
l9_748.y=l9_802;
l9_758=l9_805;
float2 l9_813=l9_748;
int l9_814=l9_746;
int l9_815=l9_747;
float l9_816=l9_756;
float2 l9_817=l9_813;
int l9_818=l9_814;
int l9_819=l9_815;
float3 l9_820=float3(0.0);
if (l9_818==0)
{
l9_820=float3(l9_817,0.0);
}
else
{
if (l9_818==1)
{
l9_820=float3(l9_817.x,(l9_817.y*0.5)+(0.5-(float(l9_819)*0.5)),0.0);
}
else
{
l9_820=float3(l9_817,float(l9_819));
}
}
float3 l9_821=l9_820;
float3 l9_822=l9_821;
float4 l9_823=sc_set0.transmissionTexture.sample(sc_set0.transmissionTextureSmpSC,l9_822.xy,bias(l9_816));
float4 l9_824=l9_823;
if (l9_754)
{
l9_824=mix(l9_755,l9_824,float4(l9_758));
}
float4 l9_825=l9_824;
l9_739=l9_825;
float4 l9_826=l9_739;
l9_720=l9_826.x;
}
l9_720*=N3_TransmissionFactor;
float3 l9_827=l9_624;
l9_624=mix(l9_827,float3(0.0),float3(l9_720));
l9_624=mix(l9_624,l9_827,float3(l9_626));
float3 l9_828=l9_625;
l9_625=mix(float3(0.0),l9_827,float3(l9_720))*N3_Background;
l9_625=mix(l9_625,float3(0.0),float3(l9_626))+l9_828;
N3_BaseColor=l9_624;
N3_Emissive=l9_625;
}
float3 l9_829=N3_BaseColor;
float3 l9_830;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_830=float3(pow(l9_829.x,0.45454544),pow(l9_829.y,0.45454544),pow(l9_829.z,0.45454544));
}
else
{
l9_830=sqrt(l9_829);
}
float3 l9_831=l9_830;
N3_BaseColor=l9_831;
float l9_832=N3_Opacity;
float l9_833;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_833=pow(l9_832,0.45454544);
}
else
{
l9_833=sqrt(l9_832);
}
float l9_834=l9_833;
N3_Opacity=l9_834;
float3 l9_835=N3_Emissive;
float3 l9_836;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_836=float3(pow(l9_835.x,0.45454544),pow(l9_835.y,0.45454544),pow(l9_835.z,0.45454544));
}
else
{
l9_836=sqrt(l9_835);
}
float3 l9_837=l9_836;
N3_Emissive=l9_837;
if (N3_SheenEnable)
{
float3 l9_838=N3_Normal;
float4 l9_839=N3_Occlusion;
float3 l9_840=N3_SheenColorFactor;
float l9_841=N3_SheenRoughnessFactor;
if (N3_EnableSheenTexture)
{
int l9_842=N3_SheenColorTextureCoord;
float2 l9_843=tempGlobals.Surface_UVCoord0;
float2 l9_844=l9_843;
if (l9_842==0)
{
float2 l9_845=tempGlobals.Surface_UVCoord0;
l9_844=l9_845;
}
if (l9_842==1)
{
float2 l9_846=tempGlobals.Surface_UVCoord1;
l9_844=l9_846;
}
float2 l9_847=l9_844;
float2 l9_848=l9_847;
if (N3_EnableTextureTransform&&N3_SheenColorTextureTransform)
{
float2 l9_849=l9_848;
float2 l9_850=N3_SheenColorTextureOffset;
float2 l9_851=N3_SheenColorTextureScale;
float l9_852=N3_SheenColorTextureRotation;
float l9_853=radians(l9_852);
float3x3 l9_854=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_850.x,l9_850.y,1.0));
float3x3 l9_855=float3x3(float3(cos(l9_853),sin(l9_853),0.0),float3(-sin(l9_853),cos(l9_853),0.0),float3(0.0,0.0,1.0));
float3x3 l9_856=float3x3(float3(l9_851.x,0.0,0.0),float3(0.0,l9_851.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_857=(l9_854*l9_855)*l9_856;
float2 l9_858=(l9_857*float3(l9_849,1.0)).xy;
l9_848=l9_858;
}
float2 l9_859=l9_848;
float4 l9_860=float4(0.0);
int l9_861;
if ((int(sheenColorTextureHasSwappedViews_tmp)!=0))
{
int l9_862=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_862=0;
}
else
{
l9_862=in.varStereoViewID;
}
int l9_863=l9_862;
l9_861=1-l9_863;
}
else
{
int l9_864=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_864=0;
}
else
{
l9_864=in.varStereoViewID;
}
int l9_865=l9_864;
l9_861=l9_865;
}
int l9_866=l9_861;
int l9_867=sheenColorTextureLayout_tmp;
int l9_868=l9_866;
float2 l9_869=l9_859;
bool l9_870=(int(SC_USE_UV_TRANSFORM_sheenColorTexture_tmp)!=0);
float3x3 l9_871=(*sc_set0.UserUniforms).sheenColorTextureTransform;
int2 l9_872=int2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture_tmp);
bool l9_873=(int(SC_USE_UV_MIN_MAX_sheenColorTexture_tmp)!=0);
float4 l9_874=(*sc_set0.UserUniforms).sheenColorTextureUvMinMax;
bool l9_875=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture_tmp)!=0);
float4 l9_876=(*sc_set0.UserUniforms).sheenColorTextureBorderColor;
float l9_877=0.0;
bool l9_878=l9_875&&(!l9_873);
float l9_879=1.0;
float l9_880=l9_869.x;
int l9_881=l9_872.x;
if (l9_881==1)
{
l9_880=fract(l9_880);
}
else
{
if (l9_881==2)
{
float l9_882=fract(l9_880);
float l9_883=l9_880-l9_882;
float l9_884=step(0.25,fract(l9_883*0.5));
l9_880=mix(l9_882,1.0-l9_882,fast::clamp(l9_884,0.0,1.0));
}
}
l9_869.x=l9_880;
float l9_885=l9_869.y;
int l9_886=l9_872.y;
if (l9_886==1)
{
l9_885=fract(l9_885);
}
else
{
if (l9_886==2)
{
float l9_887=fract(l9_885);
float l9_888=l9_885-l9_887;
float l9_889=step(0.25,fract(l9_888*0.5));
l9_885=mix(l9_887,1.0-l9_887,fast::clamp(l9_889,0.0,1.0));
}
}
l9_869.y=l9_885;
if (l9_873)
{
bool l9_890=l9_875;
bool l9_891;
if (l9_890)
{
l9_891=l9_872.x==3;
}
else
{
l9_891=l9_890;
}
float l9_892=l9_869.x;
float l9_893=l9_874.x;
float l9_894=l9_874.z;
bool l9_895=l9_891;
float l9_896=l9_879;
float l9_897=fast::clamp(l9_892,l9_893,l9_894);
float l9_898=step(abs(l9_892-l9_897),9.9999997e-06);
l9_896*=(l9_898+((1.0-float(l9_895))*(1.0-l9_898)));
l9_892=l9_897;
l9_869.x=l9_892;
l9_879=l9_896;
bool l9_899=l9_875;
bool l9_900;
if (l9_899)
{
l9_900=l9_872.y==3;
}
else
{
l9_900=l9_899;
}
float l9_901=l9_869.y;
float l9_902=l9_874.y;
float l9_903=l9_874.w;
bool l9_904=l9_900;
float l9_905=l9_879;
float l9_906=fast::clamp(l9_901,l9_902,l9_903);
float l9_907=step(abs(l9_901-l9_906),9.9999997e-06);
l9_905*=(l9_907+((1.0-float(l9_904))*(1.0-l9_907)));
l9_901=l9_906;
l9_869.y=l9_901;
l9_879=l9_905;
}
float2 l9_908=l9_869;
bool l9_909=l9_870;
float3x3 l9_910=l9_871;
if (l9_909)
{
l9_908=float2((l9_910*float3(l9_908,1.0)).xy);
}
float2 l9_911=l9_908;
l9_869=l9_911;
float l9_912=l9_869.x;
int l9_913=l9_872.x;
bool l9_914=l9_878;
float l9_915=l9_879;
if ((l9_913==0)||(l9_913==3))
{
float l9_916=l9_912;
float l9_917=0.0;
float l9_918=1.0;
bool l9_919=l9_914;
float l9_920=l9_915;
float l9_921=fast::clamp(l9_916,l9_917,l9_918);
float l9_922=step(abs(l9_916-l9_921),9.9999997e-06);
l9_920*=(l9_922+((1.0-float(l9_919))*(1.0-l9_922)));
l9_916=l9_921;
l9_912=l9_916;
l9_915=l9_920;
}
l9_869.x=l9_912;
l9_879=l9_915;
float l9_923=l9_869.y;
int l9_924=l9_872.y;
bool l9_925=l9_878;
float l9_926=l9_879;
if ((l9_924==0)||(l9_924==3))
{
float l9_927=l9_923;
float l9_928=0.0;
float l9_929=1.0;
bool l9_930=l9_925;
float l9_931=l9_926;
float l9_932=fast::clamp(l9_927,l9_928,l9_929);
float l9_933=step(abs(l9_927-l9_932),9.9999997e-06);
l9_931*=(l9_933+((1.0-float(l9_930))*(1.0-l9_933)));
l9_927=l9_932;
l9_923=l9_927;
l9_926=l9_931;
}
l9_869.y=l9_923;
l9_879=l9_926;
float2 l9_934=l9_869;
int l9_935=l9_867;
int l9_936=l9_868;
float l9_937=l9_877;
float2 l9_938=l9_934;
int l9_939=l9_935;
int l9_940=l9_936;
float3 l9_941=float3(0.0);
if (l9_939==0)
{
l9_941=float3(l9_938,0.0);
}
else
{
if (l9_939==1)
{
l9_941=float3(l9_938.x,(l9_938.y*0.5)+(0.5-(float(l9_940)*0.5)),0.0);
}
else
{
l9_941=float3(l9_938,float(l9_940));
}
}
float3 l9_942=l9_941;
float3 l9_943=l9_942;
float4 l9_944=sc_set0.sheenColorTexture.sample(sc_set0.sheenColorTextureSmpSC,l9_943.xy,bias(l9_937));
float4 l9_945=l9_944;
if (l9_875)
{
l9_945=mix(l9_876,l9_945,float4(l9_879));
}
float4 l9_946=l9_945;
l9_860=l9_946;
float4 l9_947=l9_860;
float3 l9_948=l9_947.xyz;
float3 l9_949;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_949=float3(pow(l9_948.x,2.2),pow(l9_948.y,2.2),pow(l9_948.z,2.2));
}
else
{
l9_949=l9_948*l9_948;
}
float3 l9_950=l9_949;
l9_840*=l9_950;
}
if (N3_EnableSheenRoughnessTexture)
{
int l9_951=N3_SheenRoughnessTextureCoord;
float2 l9_952=tempGlobals.Surface_UVCoord0;
float2 l9_953=l9_952;
if (l9_951==0)
{
float2 l9_954=tempGlobals.Surface_UVCoord0;
l9_953=l9_954;
}
if (l9_951==1)
{
float2 l9_955=tempGlobals.Surface_UVCoord1;
l9_953=l9_955;
}
float2 l9_956=l9_953;
float2 l9_957=l9_956;
if (N3_EnableTextureTransform&&N3_SheenRoughnessTextureTransform)
{
float2 l9_958=l9_957;
float2 l9_959=N3_SheenRoughnessTextureOffset;
float2 l9_960=N3_SheenRoughnessTextureScale;
float l9_961=N3_SheenRoughnessTextureRotation;
float l9_962=radians(l9_961);
float3x3 l9_963=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_959.x,l9_959.y,1.0));
float3x3 l9_964=float3x3(float3(cos(l9_962),sin(l9_962),0.0),float3(-sin(l9_962),cos(l9_962),0.0),float3(0.0,0.0,1.0));
float3x3 l9_965=float3x3(float3(l9_960.x,0.0,0.0),float3(0.0,l9_960.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_966=(l9_963*l9_964)*l9_965;
float2 l9_967=(l9_966*float3(l9_958,1.0)).xy;
l9_957=l9_967;
}
float2 l9_968=l9_957;
float4 l9_969=float4(0.0);
int l9_970;
if ((int(sheenRoughnessTextureHasSwappedViews_tmp)!=0))
{
int l9_971=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_971=0;
}
else
{
l9_971=in.varStereoViewID;
}
int l9_972=l9_971;
l9_970=1-l9_972;
}
else
{
int l9_973=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_973=0;
}
else
{
l9_973=in.varStereoViewID;
}
int l9_974=l9_973;
l9_970=l9_974;
}
int l9_975=l9_970;
int l9_976=sheenRoughnessTextureLayout_tmp;
int l9_977=l9_975;
float2 l9_978=l9_968;
bool l9_979=(int(SC_USE_UV_TRANSFORM_sheenRoughnessTexture_tmp)!=0);
float3x3 l9_980=(*sc_set0.UserUniforms).sheenRoughnessTextureTransform;
int2 l9_981=int2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture_tmp);
bool l9_982=(int(SC_USE_UV_MIN_MAX_sheenRoughnessTexture_tmp)!=0);
float4 l9_983=(*sc_set0.UserUniforms).sheenRoughnessTextureUvMinMax;
bool l9_984=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture_tmp)!=0);
float4 l9_985=(*sc_set0.UserUniforms).sheenRoughnessTextureBorderColor;
float l9_986=0.0;
bool l9_987=l9_984&&(!l9_982);
float l9_988=1.0;
float l9_989=l9_978.x;
int l9_990=l9_981.x;
if (l9_990==1)
{
l9_989=fract(l9_989);
}
else
{
if (l9_990==2)
{
float l9_991=fract(l9_989);
float l9_992=l9_989-l9_991;
float l9_993=step(0.25,fract(l9_992*0.5));
l9_989=mix(l9_991,1.0-l9_991,fast::clamp(l9_993,0.0,1.0));
}
}
l9_978.x=l9_989;
float l9_994=l9_978.y;
int l9_995=l9_981.y;
if (l9_995==1)
{
l9_994=fract(l9_994);
}
else
{
if (l9_995==2)
{
float l9_996=fract(l9_994);
float l9_997=l9_994-l9_996;
float l9_998=step(0.25,fract(l9_997*0.5));
l9_994=mix(l9_996,1.0-l9_996,fast::clamp(l9_998,0.0,1.0));
}
}
l9_978.y=l9_994;
if (l9_982)
{
bool l9_999=l9_984;
bool l9_1000;
if (l9_999)
{
l9_1000=l9_981.x==3;
}
else
{
l9_1000=l9_999;
}
float l9_1001=l9_978.x;
float l9_1002=l9_983.x;
float l9_1003=l9_983.z;
bool l9_1004=l9_1000;
float l9_1005=l9_988;
float l9_1006=fast::clamp(l9_1001,l9_1002,l9_1003);
float l9_1007=step(abs(l9_1001-l9_1006),9.9999997e-06);
l9_1005*=(l9_1007+((1.0-float(l9_1004))*(1.0-l9_1007)));
l9_1001=l9_1006;
l9_978.x=l9_1001;
l9_988=l9_1005;
bool l9_1008=l9_984;
bool l9_1009;
if (l9_1008)
{
l9_1009=l9_981.y==3;
}
else
{
l9_1009=l9_1008;
}
float l9_1010=l9_978.y;
float l9_1011=l9_983.y;
float l9_1012=l9_983.w;
bool l9_1013=l9_1009;
float l9_1014=l9_988;
float l9_1015=fast::clamp(l9_1010,l9_1011,l9_1012);
float l9_1016=step(abs(l9_1010-l9_1015),9.9999997e-06);
l9_1014*=(l9_1016+((1.0-float(l9_1013))*(1.0-l9_1016)));
l9_1010=l9_1015;
l9_978.y=l9_1010;
l9_988=l9_1014;
}
float2 l9_1017=l9_978;
bool l9_1018=l9_979;
float3x3 l9_1019=l9_980;
if (l9_1018)
{
l9_1017=float2((l9_1019*float3(l9_1017,1.0)).xy);
}
float2 l9_1020=l9_1017;
l9_978=l9_1020;
float l9_1021=l9_978.x;
int l9_1022=l9_981.x;
bool l9_1023=l9_987;
float l9_1024=l9_988;
if ((l9_1022==0)||(l9_1022==3))
{
float l9_1025=l9_1021;
float l9_1026=0.0;
float l9_1027=1.0;
bool l9_1028=l9_1023;
float l9_1029=l9_1024;
float l9_1030=fast::clamp(l9_1025,l9_1026,l9_1027);
float l9_1031=step(abs(l9_1025-l9_1030),9.9999997e-06);
l9_1029*=(l9_1031+((1.0-float(l9_1028))*(1.0-l9_1031)));
l9_1025=l9_1030;
l9_1021=l9_1025;
l9_1024=l9_1029;
}
l9_978.x=l9_1021;
l9_988=l9_1024;
float l9_1032=l9_978.y;
int l9_1033=l9_981.y;
bool l9_1034=l9_987;
float l9_1035=l9_988;
if ((l9_1033==0)||(l9_1033==3))
{
float l9_1036=l9_1032;
float l9_1037=0.0;
float l9_1038=1.0;
bool l9_1039=l9_1034;
float l9_1040=l9_1035;
float l9_1041=fast::clamp(l9_1036,l9_1037,l9_1038);
float l9_1042=step(abs(l9_1036-l9_1041),9.9999997e-06);
l9_1040*=(l9_1042+((1.0-float(l9_1039))*(1.0-l9_1042)));
l9_1036=l9_1041;
l9_1032=l9_1036;
l9_1035=l9_1040;
}
l9_978.y=l9_1032;
l9_988=l9_1035;
float2 l9_1043=l9_978;
int l9_1044=l9_976;
int l9_1045=l9_977;
float l9_1046=l9_986;
float2 l9_1047=l9_1043;
int l9_1048=l9_1044;
int l9_1049=l9_1045;
float3 l9_1050=float3(0.0);
if (l9_1048==0)
{
l9_1050=float3(l9_1047,0.0);
}
else
{
if (l9_1048==1)
{
l9_1050=float3(l9_1047.x,(l9_1047.y*0.5)+(0.5-(float(l9_1049)*0.5)),0.0);
}
else
{
l9_1050=float3(l9_1047,float(l9_1049));
}
}
float3 l9_1051=l9_1050;
float3 l9_1052=l9_1051;
float4 l9_1053=sc_set0.sheenRoughnessTexture.sample(sc_set0.sheenRoughnessTextureSmpSC,l9_1052.xy,bias(l9_1046));
float4 l9_1054=l9_1053;
if (l9_984)
{
l9_1054=mix(l9_985,l9_1054,float4(l9_988));
}
float4 l9_1055=l9_1054;
l9_969=l9_1055;
float4 l9_1056=l9_969;
float l9_1057=l9_1056.w;
float l9_1058;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1058=pow(l9_1057,2.2);
}
else
{
l9_1058=l9_1057*l9_1057;
}
float l9_1059=l9_1058;
l9_841*=l9_1059;
}
l9_841=fast::max(l9_841,9.9999997e-05);
N3_SheenOut=float4(0.0);
float3 l9_1060=l9_838;
float3 l9_1061=tempGlobals.ViewDirWS;
float3 l9_1062=l9_1061;
float3 l9_1063=l9_1060;
float3 l9_1064=l9_1062;
float l9_1065=fast::clamp(dot(l9_1063,l9_1064),0.0,1.0);
float l9_1066=fast::max(l9_1065,9.9999997e-05);
float l9_1067=l9_841*l9_841;
float3 l9_1068=normalize(reflect(-l9_1062,l9_1060));
float l9_1069=l9_1066;
float3 l9_1070=l9_1068;
float l9_1071=l9_841;
float3 l9_1072=l9_840;
float l9_1073=l9_1071*4.0;
l9_1073=3.0+(((l9_1073-0.0)*2.0)/5.000001);
float l9_1074=l9_1071*l9_1071;
float l9_1075;
if (l9_1071<0.25)
{
l9_1075=(((-339.20001)*l9_1074)+(161.39999*l9_1071))-25.9;
}
else
{
l9_1075=(((-8.4799995)*l9_1074)+(14.3*l9_1071))-9.9499998;
}
float l9_1076=l9_1075;
float l9_1077;
if (l9_1071<0.25)
{
l9_1077=((44.0*l9_1074)-(23.700001*l9_1071))+3.26;
}
else
{
l9_1077=((1.97*l9_1074)-(3.27*l9_1071))+0.72000003;
}
float l9_1078=l9_1077;
float l9_1079=l9_1076;
float l9_1080=l9_1069;
float l9_1081=l9_1078;
float l9_1082;
if (l9_1071<0.25)
{
l9_1082=0.0;
}
else
{
l9_1082=0.1*(l9_1071-0.25);
}
float l9_1083=exp((l9_1079*l9_1080)+l9_1081)+l9_1082;
float l9_1084=3.1415927;
l9_1083=fast::clamp(l9_1083*l9_1084,0.0,1.0);
float3 l9_1085=l9_1070;
float l9_1086=l9_1073;
float3 l9_1087=float3(0.0);
float3 l9_1088=l9_1085;
float l9_1089=l9_1086;
float3 l9_1090=l9_1088;
float l9_1091=l9_1089;
float4 l9_1092=float4(0.0);
float3 l9_1093=l9_1090;
float l9_1094=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_1095=float2(0.0);
float l9_1096=l9_1093.x;
float l9_1097=-l9_1093.z;
float l9_1098=(l9_1096<0.0) ? (-1.0) : 1.0;
float l9_1099=l9_1098*acos(fast::clamp(l9_1097/length(float2(l9_1096,l9_1097)),-1.0,1.0));
l9_1095.x=l9_1099-1.5707964;
l9_1095.y=acos(l9_1093.y);
l9_1095/=float2(6.2831855,3.1415927);
l9_1095.y=1.0-l9_1095.y;
l9_1095.x+=(l9_1094/360.0);
l9_1095.x=fract((l9_1095.x+floor(l9_1095.x))+1.0);
float2 l9_1100=l9_1095;
float2 l9_1101=l9_1100;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_1102=floor(l9_1091);
float l9_1103=ceil(l9_1091);
float l9_1104=l9_1091-l9_1102;
float2 l9_1105=l9_1101;
float2 l9_1106=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1107=l9_1102;
float2 l9_1108=calcSeamlessPanoramicUvsForSampling(l9_1105,l9_1106,l9_1107);
float2 l9_1109=l9_1108;
float l9_1110=l9_1102;
float2 l9_1111=l9_1109;
float l9_1112=l9_1110;
int l9_1113;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1114=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1114=0;
}
else
{
l9_1114=in.varStereoViewID;
}
int l9_1115=l9_1114;
l9_1113=1-l9_1115;
}
else
{
int l9_1116=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1116=0;
}
else
{
l9_1116=in.varStereoViewID;
}
int l9_1117=l9_1116;
l9_1113=l9_1117;
}
int l9_1118=l9_1113;
float2 l9_1119=l9_1111;
int l9_1120=sc_EnvmapSpecularLayout_tmp;
int l9_1121=l9_1118;
float l9_1122=l9_1112;
float2 l9_1123=l9_1119;
int l9_1124=l9_1120;
int l9_1125=l9_1121;
float3 l9_1126=float3(0.0);
if (l9_1124==0)
{
l9_1126=float3(l9_1123,0.0);
}
else
{
if (l9_1124==1)
{
l9_1126=float3(l9_1123.x,(l9_1123.y*0.5)+(0.5-(float(l9_1125)*0.5)),0.0);
}
else
{
l9_1126=float3(l9_1123,float(l9_1125));
}
}
float3 l9_1127=l9_1126;
float3 l9_1128=l9_1127;
float4 l9_1129=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1128.xy,level(l9_1122));
float4 l9_1130=l9_1129;
float4 l9_1131=l9_1130;
float4 l9_1132=l9_1131;
float2 l9_1133=l9_1101;
float2 l9_1134=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_1135=l9_1103;
float2 l9_1136=calcSeamlessPanoramicUvsForSampling(l9_1133,l9_1134,l9_1135);
float2 l9_1137=l9_1136;
float l9_1138=l9_1103;
float2 l9_1139=l9_1137;
float l9_1140=l9_1138;
int l9_1141;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1142=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1142=0;
}
else
{
l9_1142=in.varStereoViewID;
}
int l9_1143=l9_1142;
l9_1141=1-l9_1143;
}
else
{
int l9_1144=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1144=0;
}
else
{
l9_1144=in.varStereoViewID;
}
int l9_1145=l9_1144;
l9_1141=l9_1145;
}
int l9_1146=l9_1141;
float2 l9_1147=l9_1139;
int l9_1148=sc_EnvmapSpecularLayout_tmp;
int l9_1149=l9_1146;
float l9_1150=l9_1140;
float2 l9_1151=l9_1147;
int l9_1152=l9_1148;
int l9_1153=l9_1149;
float3 l9_1154=float3(0.0);
if (l9_1152==0)
{
l9_1154=float3(l9_1151,0.0);
}
else
{
if (l9_1152==1)
{
l9_1154=float3(l9_1151.x,(l9_1151.y*0.5)+(0.5-(float(l9_1153)*0.5)),0.0);
}
else
{
l9_1154=float3(l9_1151,float(l9_1153));
}
}
float3 l9_1155=l9_1154;
float3 l9_1156=l9_1155;
float4 l9_1157=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1156.xy,level(l9_1150));
float4 l9_1158=l9_1157;
float4 l9_1159=l9_1158;
float4 l9_1160=l9_1159;
l9_1092=mix(l9_1132,l9_1160,float4(l9_1104));
}
else
{
float2 l9_1161=l9_1101;
float l9_1162=l9_1091;
float2 l9_1163=l9_1161;
float l9_1164=l9_1162;
int l9_1165;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_1166=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1166=0;
}
else
{
l9_1166=in.varStereoViewID;
}
int l9_1167=l9_1166;
l9_1165=1-l9_1167;
}
else
{
int l9_1168=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1168=0;
}
else
{
l9_1168=in.varStereoViewID;
}
int l9_1169=l9_1168;
l9_1165=l9_1169;
}
int l9_1170=l9_1165;
float2 l9_1171=l9_1163;
int l9_1172=sc_EnvmapSpecularLayout_tmp;
int l9_1173=l9_1170;
float l9_1174=l9_1164;
float2 l9_1175=l9_1171;
int l9_1176=l9_1172;
int l9_1177=l9_1173;
float3 l9_1178=float3(0.0);
if (l9_1176==0)
{
l9_1178=float3(l9_1175,0.0);
}
else
{
if (l9_1176==1)
{
l9_1178=float3(l9_1175.x,(l9_1175.y*0.5)+(0.5-(float(l9_1177)*0.5)),0.0);
}
else
{
l9_1178=float3(l9_1175,float(l9_1177));
}
}
float3 l9_1179=l9_1178;
float3 l9_1180=l9_1179;
float4 l9_1181=sc_set0.sc_EnvmapSpecular.sample(sc_set0.sc_EnvmapSpecularSmpSC,l9_1180.xy,level(l9_1174));
float4 l9_1182=l9_1181;
float4 l9_1183=l9_1182;
l9_1092=l9_1183;
}
float4 l9_1184=l9_1092;
float3 l9_1185=l9_1184.xyz*(1.0/l9_1184.w);
float3 l9_1186=l9_1185;
float3 l9_1187=l9_1186*(*sc_set0.UserUniforms).sc_EnvmapExposure;
l9_1187+=float3(1e-06);
float3 l9_1188=l9_1187;
l9_1087=l9_1188;
float3 l9_1189=l9_1087;
float3 l9_1190=l9_1189;
float3 l9_1191=(l9_1190*l9_1072)*l9_1083;
float3 l9_1192=N3_SheenOut.xyz+l9_1191;
N3_SheenOut=float4(l9_1192.x,l9_1192.y,l9_1192.z,N3_SheenOut.w);
float3 l9_1193=mix(N3_SheenOut.xyz,N3_SheenOut.xyz*l9_839.xyz,float3(l9_839.w));
N3_SheenOut=float4(l9_1193.x,l9_1193.y,l9_1193.z,N3_SheenOut.w);
float3 l9_1194=l9_840;
float3 l9_1195=l9_1060;
float3 l9_1196=l9_1062;
float l9_1197=l9_1066;
float l9_1198=l9_1067;
float3 l9_1199=float3(0.0);
int l9_1200=0;
l9_1200=sc_DirectionalLightsCount_tmp;
int l9_1201=l9_1200;
if (l9_1201>0)
{
float l9_1202;
int l9_1203=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
int l9_1204=0;
l9_1204=sc_DirectionalLightsCount_tmp;
int l9_1205=l9_1204;
if (l9_1203<l9_1205)
{
int l9_1206=l9_1203;
float3 l9_1207=float3(0.0);
if (l9_1206<sc_DirectionalLightsCount_tmp)
{
l9_1207=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1206].color.xyz;
}
float3 l9_1208=l9_1207;
float3 l9_1209=l9_1208;
int l9_1210=l9_1203;
float l9_1211=0.0;
if (l9_1210<sc_DirectionalLightsCount_tmp)
{
l9_1211=(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1210].color.w;
}
float l9_1212=l9_1211;
float l9_1213=l9_1212;
l9_1209*=l9_1213;
l9_1209*=3.1415901;
int l9_1214=l9_1203;
float3 l9_1215=float3(0.0);
if (l9_1214<sc_DirectionalLightsCount_tmp)
{
l9_1215=-(*sc_set0.UserUniforms).sc_DirectionalLights[l9_1214].direction;
}
float3 l9_1216=l9_1215;
float3 l9_1217=normalize(-l9_1216);
float3 l9_1218=normalize(l9_1217+l9_1196);
float3 l9_1219=l9_1195;
float3 l9_1220=l9_1218;
float l9_1221=fast::clamp(dot(l9_1219,l9_1220),0.0,1.0);
float l9_1222=l9_1221;
float3 l9_1223=l9_1195;
float3 l9_1224=l9_1217;
float l9_1225=fast::clamp(dot(l9_1223,l9_1224),0.0,1.0);
float l9_1226=l9_1225;
float l9_1227=l9_1198;
float l9_1228=l9_1222;
float l9_1229=1.0/l9_1227;
float l9_1230=l9_1228*l9_1228;
float l9_1231=1.0-l9_1230;
float l9_1232=l9_1229;
float l9_1233=l9_1231;
float l9_1234=l9_1229*0.5;
if (l9_1233<=0.0)
{
l9_1202=0.0;
}
else
{
l9_1202=pow(l9_1233,l9_1234);
}
float l9_1235=l9_1202;
float l9_1236=3.1415927;
float l9_1237=((2.0+l9_1232)*l9_1235)/(2.0*l9_1236);
float l9_1238=l9_1237;
float l9_1239=l9_1197;
float l9_1240=l9_1226;
float l9_1241=1.0/(4.0*((l9_1240+l9_1239)-(l9_1240*l9_1239)));
float l9_1242=l9_1241;
l9_1199+=((((l9_1209*l9_1194)*l9_1238)*l9_1242)*l9_1226);
l9_1203++;
continue;
}
else
{
break;
}
}
}
int l9_1243=0;
l9_1243=sc_PointLightsCount_tmp;
int l9_1244=l9_1243;
if (l9_1244>0)
{
float l9_1245;
int l9_1246=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
int l9_1247=0;
l9_1247=sc_PointLightsCount_tmp;
int l9_1248=l9_1247;
if (l9_1246<l9_1248)
{
int l9_1249=l9_1246;
float3 l9_1250=float3(0.0);
if (l9_1249<sc_PointLightsCount_tmp)
{
l9_1250=(*sc_set0.UserUniforms).sc_PointLights[l9_1249].color.xyz;
}
float3 l9_1251=l9_1250;
float3 l9_1252=l9_1251;
int l9_1253=l9_1246;
float l9_1254=0.0;
if (l9_1253<sc_PointLightsCount_tmp)
{
l9_1254=(*sc_set0.UserUniforms).sc_PointLights[l9_1253].color.w;
}
float l9_1255=l9_1254;
float l9_1256=l9_1255;
l9_1252*=l9_1256;
l9_1252*=3.1415901;
int l9_1257=l9_1246;
float3 l9_1258=float3(0.0);
if (l9_1257<sc_PointLightsCount_tmp)
{
l9_1258=(*sc_set0.UserUniforms).sc_PointLights[l9_1257].position;
}
float3 l9_1259=l9_1258;
float3 l9_1260=l9_1259;
float3 l9_1261=tempGlobals.SurfacePosition_WorldSpace;
float3 l9_1262=normalize(l9_1260-l9_1261);
float3 l9_1263=normalize(l9_1262+l9_1196);
float3 l9_1264=l9_1195;
float3 l9_1265=l9_1263;
float l9_1266=fast::clamp(dot(l9_1264,l9_1265),0.0,1.0);
float l9_1267=l9_1266;
float3 l9_1268=l9_1195;
float3 l9_1269=l9_1262;
float l9_1270=fast::clamp(dot(l9_1268,l9_1269),0.0,1.0);
float l9_1271=l9_1270;
float l9_1272=l9_1198;
float l9_1273=l9_1267;
float l9_1274=1.0/l9_1272;
float l9_1275=l9_1273*l9_1273;
float l9_1276=1.0-l9_1275;
float l9_1277=l9_1274;
float l9_1278=l9_1276;
float l9_1279=l9_1274*0.5;
if (l9_1278<=0.0)
{
l9_1245=0.0;
}
else
{
l9_1245=pow(l9_1278,l9_1279);
}
float l9_1280=l9_1245;
float l9_1281=3.1415927;
float l9_1282=((2.0+l9_1277)*l9_1280)/(2.0*l9_1281);
float l9_1283=l9_1282;
float l9_1284=l9_1197;
float l9_1285=l9_1271;
float l9_1286=1.0/(4.0*((l9_1285+l9_1284)-(l9_1285*l9_1284)));
float l9_1287=l9_1286;
l9_1199+=((((l9_1252*l9_1194)*l9_1283)*l9_1287)*l9_1271);
l9_1246++;
continue;
}
else
{
break;
}
}
}
int l9_1288=0;
l9_1288=sc_AmbientLightsCount_tmp;
int l9_1289=l9_1288;
if (l9_1289>0)
{
int l9_1290=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
int l9_1291=0;
l9_1291=sc_AmbientLightsCount_tmp;
int l9_1292=l9_1291;
if (l9_1290<l9_1292)
{
int l9_1293=l9_1290;
float3 l9_1294=float3(0.0);
if (l9_1293<sc_AmbientLightsCount_tmp)
{
l9_1294=(*sc_set0.UserUniforms).sc_AmbientLights[l9_1293].color;
}
float3 l9_1295=l9_1294;
float3 l9_1296=l9_1295;
int l9_1297=l9_1290;
float l9_1298=0.0;
if (l9_1297<sc_AmbientLightsCount_tmp)
{
l9_1298=(*sc_set0.UserUniforms).sc_AmbientLights[l9_1297].intensity;
}
float l9_1299=l9_1298;
float l9_1300=l9_1299;
l9_1296*=l9_1300;
l9_1296/=float3(3.1415901);
l9_1199+=(l9_1296*l9_1194);
l9_1290++;
continue;
}
else
{
break;
}
}
}
float3 l9_1301=l9_1199;
float3 l9_1302=N3_SheenOut.xyz+l9_1301;
N3_SheenOut=float4(l9_1302.x,l9_1302.y,l9_1302.z,N3_SheenOut.w);
float3 l9_1303=l9_840;
float3 l9_1304=l9_1303;
float l9_1305=fast::max(fast::max(l9_1304.x,l9_1304.y),l9_1304.z);
float l9_1306=1.0-(l9_1305*0.15700001);
N3_SheenOut.w=l9_1306;
}
if (N3_ClearcoatEnable)
{
N3_ClearcoatBase=1.0;
N3_ClearcoatRoughness=1.0;
N3_ClearcoatNormal=float3(0.0,0.0,1.0);
if (N3_EnableClearcoatTexture)
{
int l9_1307=N3_ClearcoatTextureCoord;
float2 l9_1308=tempGlobals.Surface_UVCoord0;
float2 l9_1309=l9_1308;
if (l9_1307==0)
{
float2 l9_1310=tempGlobals.Surface_UVCoord0;
l9_1309=l9_1310;
}
if (l9_1307==1)
{
float2 l9_1311=tempGlobals.Surface_UVCoord1;
l9_1309=l9_1311;
}
float2 l9_1312=l9_1309;
float2 l9_1313=l9_1312;
if (N3_EnableTextureTransform&&N3_ClearcoatTextureTransform)
{
float2 l9_1314=l9_1313;
float2 l9_1315=N3_ClearcoatTextureOffset;
float2 l9_1316=N3_ClearcoatTextureScale;
float l9_1317=N3_ClearcoatTextureRotation;
float l9_1318=radians(l9_1317);
float3x3 l9_1319=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_1315.x,l9_1315.y,1.0));
float3x3 l9_1320=float3x3(float3(cos(l9_1318),sin(l9_1318),0.0),float3(-sin(l9_1318),cos(l9_1318),0.0),float3(0.0,0.0,1.0));
float3x3 l9_1321=float3x3(float3(l9_1316.x,0.0,0.0),float3(0.0,l9_1316.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_1322=(l9_1319*l9_1320)*l9_1321;
float2 l9_1323=(l9_1322*float3(l9_1314,1.0)).xy;
l9_1313=l9_1323;
}
float2 l9_1324=l9_1313;
float4 l9_1325=float4(0.0);
int l9_1326;
if ((int(clearcoatTextureHasSwappedViews_tmp)!=0))
{
int l9_1327=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1327=0;
}
else
{
l9_1327=in.varStereoViewID;
}
int l9_1328=l9_1327;
l9_1326=1-l9_1328;
}
else
{
int l9_1329=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1329=0;
}
else
{
l9_1329=in.varStereoViewID;
}
int l9_1330=l9_1329;
l9_1326=l9_1330;
}
int l9_1331=l9_1326;
int l9_1332=clearcoatTextureLayout_tmp;
int l9_1333=l9_1331;
float2 l9_1334=l9_1324;
bool l9_1335=(int(SC_USE_UV_TRANSFORM_clearcoatTexture_tmp)!=0);
float3x3 l9_1336=(*sc_set0.UserUniforms).clearcoatTextureTransform;
int2 l9_1337=int2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture_tmp);
bool l9_1338=(int(SC_USE_UV_MIN_MAX_clearcoatTexture_tmp)!=0);
float4 l9_1339=(*sc_set0.UserUniforms).clearcoatTextureUvMinMax;
bool l9_1340=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture_tmp)!=0);
float4 l9_1341=(*sc_set0.UserUniforms).clearcoatTextureBorderColor;
float l9_1342=0.0;
bool l9_1343=l9_1340&&(!l9_1338);
float l9_1344=1.0;
float l9_1345=l9_1334.x;
int l9_1346=l9_1337.x;
if (l9_1346==1)
{
l9_1345=fract(l9_1345);
}
else
{
if (l9_1346==2)
{
float l9_1347=fract(l9_1345);
float l9_1348=l9_1345-l9_1347;
float l9_1349=step(0.25,fract(l9_1348*0.5));
l9_1345=mix(l9_1347,1.0-l9_1347,fast::clamp(l9_1349,0.0,1.0));
}
}
l9_1334.x=l9_1345;
float l9_1350=l9_1334.y;
int l9_1351=l9_1337.y;
if (l9_1351==1)
{
l9_1350=fract(l9_1350);
}
else
{
if (l9_1351==2)
{
float l9_1352=fract(l9_1350);
float l9_1353=l9_1350-l9_1352;
float l9_1354=step(0.25,fract(l9_1353*0.5));
l9_1350=mix(l9_1352,1.0-l9_1352,fast::clamp(l9_1354,0.0,1.0));
}
}
l9_1334.y=l9_1350;
if (l9_1338)
{
bool l9_1355=l9_1340;
bool l9_1356;
if (l9_1355)
{
l9_1356=l9_1337.x==3;
}
else
{
l9_1356=l9_1355;
}
float l9_1357=l9_1334.x;
float l9_1358=l9_1339.x;
float l9_1359=l9_1339.z;
bool l9_1360=l9_1356;
float l9_1361=l9_1344;
float l9_1362=fast::clamp(l9_1357,l9_1358,l9_1359);
float l9_1363=step(abs(l9_1357-l9_1362),9.9999997e-06);
l9_1361*=(l9_1363+((1.0-float(l9_1360))*(1.0-l9_1363)));
l9_1357=l9_1362;
l9_1334.x=l9_1357;
l9_1344=l9_1361;
bool l9_1364=l9_1340;
bool l9_1365;
if (l9_1364)
{
l9_1365=l9_1337.y==3;
}
else
{
l9_1365=l9_1364;
}
float l9_1366=l9_1334.y;
float l9_1367=l9_1339.y;
float l9_1368=l9_1339.w;
bool l9_1369=l9_1365;
float l9_1370=l9_1344;
float l9_1371=fast::clamp(l9_1366,l9_1367,l9_1368);
float l9_1372=step(abs(l9_1366-l9_1371),9.9999997e-06);
l9_1370*=(l9_1372+((1.0-float(l9_1369))*(1.0-l9_1372)));
l9_1366=l9_1371;
l9_1334.y=l9_1366;
l9_1344=l9_1370;
}
float2 l9_1373=l9_1334;
bool l9_1374=l9_1335;
float3x3 l9_1375=l9_1336;
if (l9_1374)
{
l9_1373=float2((l9_1375*float3(l9_1373,1.0)).xy);
}
float2 l9_1376=l9_1373;
l9_1334=l9_1376;
float l9_1377=l9_1334.x;
int l9_1378=l9_1337.x;
bool l9_1379=l9_1343;
float l9_1380=l9_1344;
if ((l9_1378==0)||(l9_1378==3))
{
float l9_1381=l9_1377;
float l9_1382=0.0;
float l9_1383=1.0;
bool l9_1384=l9_1379;
float l9_1385=l9_1380;
float l9_1386=fast::clamp(l9_1381,l9_1382,l9_1383);
float l9_1387=step(abs(l9_1381-l9_1386),9.9999997e-06);
l9_1385*=(l9_1387+((1.0-float(l9_1384))*(1.0-l9_1387)));
l9_1381=l9_1386;
l9_1377=l9_1381;
l9_1380=l9_1385;
}
l9_1334.x=l9_1377;
l9_1344=l9_1380;
float l9_1388=l9_1334.y;
int l9_1389=l9_1337.y;
bool l9_1390=l9_1343;
float l9_1391=l9_1344;
if ((l9_1389==0)||(l9_1389==3))
{
float l9_1392=l9_1388;
float l9_1393=0.0;
float l9_1394=1.0;
bool l9_1395=l9_1390;
float l9_1396=l9_1391;
float l9_1397=fast::clamp(l9_1392,l9_1393,l9_1394);
float l9_1398=step(abs(l9_1392-l9_1397),9.9999997e-06);
l9_1396*=(l9_1398+((1.0-float(l9_1395))*(1.0-l9_1398)));
l9_1392=l9_1397;
l9_1388=l9_1392;
l9_1391=l9_1396;
}
l9_1334.y=l9_1388;
l9_1344=l9_1391;
float2 l9_1399=l9_1334;
int l9_1400=l9_1332;
int l9_1401=l9_1333;
float l9_1402=l9_1342;
float2 l9_1403=l9_1399;
int l9_1404=l9_1400;
int l9_1405=l9_1401;
float3 l9_1406=float3(0.0);
if (l9_1404==0)
{
l9_1406=float3(l9_1403,0.0);
}
else
{
if (l9_1404==1)
{
l9_1406=float3(l9_1403.x,(l9_1403.y*0.5)+(0.5-(float(l9_1405)*0.5)),0.0);
}
else
{
l9_1406=float3(l9_1403,float(l9_1405));
}
}
float3 l9_1407=l9_1406;
float3 l9_1408=l9_1407;
float4 l9_1409=sc_set0.clearcoatTexture.sample(sc_set0.clearcoatTextureSmpSC,l9_1408.xy,bias(l9_1402));
float4 l9_1410=l9_1409;
if (l9_1340)
{
l9_1410=mix(l9_1341,l9_1410,float4(l9_1344));
}
float4 l9_1411=l9_1410;
l9_1325=l9_1411;
float4 l9_1412=l9_1325;
float l9_1413=l9_1412.x;
float l9_1414;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1414=pow(l9_1413,2.2);
}
else
{
l9_1414=l9_1413*l9_1413;
}
float l9_1415=l9_1414;
N3_ClearcoatBase=l9_1415;
}
N3_ClearcoatBase*=N3_ClearcoatFactor;
if (N3_EnableClearCoatRoughnessTexture)
{
int l9_1416=N3_ClearcoatRoughnessTextureCoord;
float2 l9_1417=tempGlobals.Surface_UVCoord0;
float2 l9_1418=l9_1417;
if (l9_1416==0)
{
float2 l9_1419=tempGlobals.Surface_UVCoord0;
l9_1418=l9_1419;
}
if (l9_1416==1)
{
float2 l9_1420=tempGlobals.Surface_UVCoord1;
l9_1418=l9_1420;
}
float2 l9_1421=l9_1418;
float2 l9_1422=l9_1421;
if (N3_EnableTextureTransform&&N3_ClearcoatRoughnessTextureTransform)
{
float2 l9_1423=l9_1422;
float2 l9_1424=N3_ClearcoatRoughnessTextureOffset;
float2 l9_1425=N3_ClearcoatRoughnessTextureScale;
float l9_1426=N3_ClearcoatRoughnessTextureRotation;
float l9_1427=radians(l9_1426);
float3x3 l9_1428=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_1424.x,l9_1424.y,1.0));
float3x3 l9_1429=float3x3(float3(cos(l9_1427),sin(l9_1427),0.0),float3(-sin(l9_1427),cos(l9_1427),0.0),float3(0.0,0.0,1.0));
float3x3 l9_1430=float3x3(float3(l9_1425.x,0.0,0.0),float3(0.0,l9_1425.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_1431=(l9_1428*l9_1429)*l9_1430;
float2 l9_1432=(l9_1431*float3(l9_1423,1.0)).xy;
l9_1422=l9_1432;
}
float2 l9_1433=l9_1422;
float4 l9_1434=float4(0.0);
int l9_1435;
if ((int(clearcoatRoughnessTextureHasSwappedViews_tmp)!=0))
{
int l9_1436=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1436=0;
}
else
{
l9_1436=in.varStereoViewID;
}
int l9_1437=l9_1436;
l9_1435=1-l9_1437;
}
else
{
int l9_1438=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1438=0;
}
else
{
l9_1438=in.varStereoViewID;
}
int l9_1439=l9_1438;
l9_1435=l9_1439;
}
int l9_1440=l9_1435;
int l9_1441=clearcoatRoughnessTextureLayout_tmp;
int l9_1442=l9_1440;
float2 l9_1443=l9_1433;
bool l9_1444=(int(SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture_tmp)!=0);
float3x3 l9_1445=(*sc_set0.UserUniforms).clearcoatRoughnessTextureTransform;
int2 l9_1446=int2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture_tmp);
bool l9_1447=(int(SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture_tmp)!=0);
float4 l9_1448=(*sc_set0.UserUniforms).clearcoatRoughnessTextureUvMinMax;
bool l9_1449=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture_tmp)!=0);
float4 l9_1450=(*sc_set0.UserUniforms).clearcoatRoughnessTextureBorderColor;
float l9_1451=0.0;
bool l9_1452=l9_1449&&(!l9_1447);
float l9_1453=1.0;
float l9_1454=l9_1443.x;
int l9_1455=l9_1446.x;
if (l9_1455==1)
{
l9_1454=fract(l9_1454);
}
else
{
if (l9_1455==2)
{
float l9_1456=fract(l9_1454);
float l9_1457=l9_1454-l9_1456;
float l9_1458=step(0.25,fract(l9_1457*0.5));
l9_1454=mix(l9_1456,1.0-l9_1456,fast::clamp(l9_1458,0.0,1.0));
}
}
l9_1443.x=l9_1454;
float l9_1459=l9_1443.y;
int l9_1460=l9_1446.y;
if (l9_1460==1)
{
l9_1459=fract(l9_1459);
}
else
{
if (l9_1460==2)
{
float l9_1461=fract(l9_1459);
float l9_1462=l9_1459-l9_1461;
float l9_1463=step(0.25,fract(l9_1462*0.5));
l9_1459=mix(l9_1461,1.0-l9_1461,fast::clamp(l9_1463,0.0,1.0));
}
}
l9_1443.y=l9_1459;
if (l9_1447)
{
bool l9_1464=l9_1449;
bool l9_1465;
if (l9_1464)
{
l9_1465=l9_1446.x==3;
}
else
{
l9_1465=l9_1464;
}
float l9_1466=l9_1443.x;
float l9_1467=l9_1448.x;
float l9_1468=l9_1448.z;
bool l9_1469=l9_1465;
float l9_1470=l9_1453;
float l9_1471=fast::clamp(l9_1466,l9_1467,l9_1468);
float l9_1472=step(abs(l9_1466-l9_1471),9.9999997e-06);
l9_1470*=(l9_1472+((1.0-float(l9_1469))*(1.0-l9_1472)));
l9_1466=l9_1471;
l9_1443.x=l9_1466;
l9_1453=l9_1470;
bool l9_1473=l9_1449;
bool l9_1474;
if (l9_1473)
{
l9_1474=l9_1446.y==3;
}
else
{
l9_1474=l9_1473;
}
float l9_1475=l9_1443.y;
float l9_1476=l9_1448.y;
float l9_1477=l9_1448.w;
bool l9_1478=l9_1474;
float l9_1479=l9_1453;
float l9_1480=fast::clamp(l9_1475,l9_1476,l9_1477);
float l9_1481=step(abs(l9_1475-l9_1480),9.9999997e-06);
l9_1479*=(l9_1481+((1.0-float(l9_1478))*(1.0-l9_1481)));
l9_1475=l9_1480;
l9_1443.y=l9_1475;
l9_1453=l9_1479;
}
float2 l9_1482=l9_1443;
bool l9_1483=l9_1444;
float3x3 l9_1484=l9_1445;
if (l9_1483)
{
l9_1482=float2((l9_1484*float3(l9_1482,1.0)).xy);
}
float2 l9_1485=l9_1482;
l9_1443=l9_1485;
float l9_1486=l9_1443.x;
int l9_1487=l9_1446.x;
bool l9_1488=l9_1452;
float l9_1489=l9_1453;
if ((l9_1487==0)||(l9_1487==3))
{
float l9_1490=l9_1486;
float l9_1491=0.0;
float l9_1492=1.0;
bool l9_1493=l9_1488;
float l9_1494=l9_1489;
float l9_1495=fast::clamp(l9_1490,l9_1491,l9_1492);
float l9_1496=step(abs(l9_1490-l9_1495),9.9999997e-06);
l9_1494*=(l9_1496+((1.0-float(l9_1493))*(1.0-l9_1496)));
l9_1490=l9_1495;
l9_1486=l9_1490;
l9_1489=l9_1494;
}
l9_1443.x=l9_1486;
l9_1453=l9_1489;
float l9_1497=l9_1443.y;
int l9_1498=l9_1446.y;
bool l9_1499=l9_1452;
float l9_1500=l9_1453;
if ((l9_1498==0)||(l9_1498==3))
{
float l9_1501=l9_1497;
float l9_1502=0.0;
float l9_1503=1.0;
bool l9_1504=l9_1499;
float l9_1505=l9_1500;
float l9_1506=fast::clamp(l9_1501,l9_1502,l9_1503);
float l9_1507=step(abs(l9_1501-l9_1506),9.9999997e-06);
l9_1505*=(l9_1507+((1.0-float(l9_1504))*(1.0-l9_1507)));
l9_1501=l9_1506;
l9_1497=l9_1501;
l9_1500=l9_1505;
}
l9_1443.y=l9_1497;
l9_1453=l9_1500;
float2 l9_1508=l9_1443;
int l9_1509=l9_1441;
int l9_1510=l9_1442;
float l9_1511=l9_1451;
float2 l9_1512=l9_1508;
int l9_1513=l9_1509;
int l9_1514=l9_1510;
float3 l9_1515=float3(0.0);
if (l9_1513==0)
{
l9_1515=float3(l9_1512,0.0);
}
else
{
if (l9_1513==1)
{
l9_1515=float3(l9_1512.x,(l9_1512.y*0.5)+(0.5-(float(l9_1514)*0.5)),0.0);
}
else
{
l9_1515=float3(l9_1512,float(l9_1514));
}
}
float3 l9_1516=l9_1515;
float3 l9_1517=l9_1516;
float4 l9_1518=sc_set0.clearcoatRoughnessTexture.sample(sc_set0.clearcoatRoughnessTextureSmpSC,l9_1517.xy,bias(l9_1511));
float4 l9_1519=l9_1518;
if (l9_1449)
{
l9_1519=mix(l9_1450,l9_1519,float4(l9_1453));
}
float4 l9_1520=l9_1519;
l9_1434=l9_1520;
float4 l9_1521=l9_1434;
float l9_1522=l9_1521.y;
float l9_1523;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1523=pow(l9_1522,2.2);
}
else
{
l9_1523=l9_1522*l9_1522;
}
float l9_1524=l9_1523;
N3_ClearcoatRoughness=l9_1524;
}
N3_ClearcoatRoughness*=N3_ClearcoatRoughnessFactor;
if (N3_EnableClearCoatNormalTexture)
{
int l9_1525=N3_ClearcoatNormalMapCoord;
float2 l9_1526=tempGlobals.Surface_UVCoord0;
float2 l9_1527=l9_1526;
if (l9_1525==0)
{
float2 l9_1528=tempGlobals.Surface_UVCoord0;
l9_1527=l9_1528;
}
if (l9_1525==1)
{
float2 l9_1529=tempGlobals.Surface_UVCoord1;
l9_1527=l9_1529;
}
float2 l9_1530=l9_1527;
float2 l9_1531=l9_1530;
if (N3_EnableTextureTransform&&N3_ClearcoatNormalTextureTransform)
{
float2 l9_1532=l9_1531;
float2 l9_1533=N3_ClearcoatNormalTextureOffset;
float2 l9_1534=N3_ClearcoatNormalTextureScale;
float l9_1535=N3_ClearcoatNormalTextureRotation;
float l9_1536=radians(l9_1535);
float3x3 l9_1537=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_1533.x,l9_1533.y,1.0));
float3x3 l9_1538=float3x3(float3(cos(l9_1536),sin(l9_1536),0.0),float3(-sin(l9_1536),cos(l9_1536),0.0),float3(0.0,0.0,1.0));
float3x3 l9_1539=float3x3(float3(l9_1534.x,0.0,0.0),float3(0.0,l9_1534.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_1540=(l9_1537*l9_1538)*l9_1539;
float2 l9_1541=(l9_1540*float3(l9_1532,1.0)).xy;
l9_1531=l9_1541;
}
float2 l9_1542=l9_1531;
float4 l9_1543=float4(0.0);
int l9_1544;
if ((int(clearcoatNormalTextureHasSwappedViews_tmp)!=0))
{
int l9_1545=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1545=0;
}
else
{
l9_1545=in.varStereoViewID;
}
int l9_1546=l9_1545;
l9_1544=1-l9_1546;
}
else
{
int l9_1547=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1547=0;
}
else
{
l9_1547=in.varStereoViewID;
}
int l9_1548=l9_1547;
l9_1544=l9_1548;
}
int l9_1549=l9_1544;
int l9_1550=clearcoatNormalTextureLayout_tmp;
int l9_1551=l9_1549;
float2 l9_1552=l9_1542;
bool l9_1553=(int(SC_USE_UV_TRANSFORM_clearcoatNormalTexture_tmp)!=0);
float3x3 l9_1554=(*sc_set0.UserUniforms).clearcoatNormalTextureTransform;
int2 l9_1555=int2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture_tmp);
bool l9_1556=(int(SC_USE_UV_MIN_MAX_clearcoatNormalTexture_tmp)!=0);
float4 l9_1557=(*sc_set0.UserUniforms).clearcoatNormalTextureUvMinMax;
bool l9_1558=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture_tmp)!=0);
float4 l9_1559=(*sc_set0.UserUniforms).clearcoatNormalTextureBorderColor;
float l9_1560=0.0;
bool l9_1561=l9_1558&&(!l9_1556);
float l9_1562=1.0;
float l9_1563=l9_1552.x;
int l9_1564=l9_1555.x;
if (l9_1564==1)
{
l9_1563=fract(l9_1563);
}
else
{
if (l9_1564==2)
{
float l9_1565=fract(l9_1563);
float l9_1566=l9_1563-l9_1565;
float l9_1567=step(0.25,fract(l9_1566*0.5));
l9_1563=mix(l9_1565,1.0-l9_1565,fast::clamp(l9_1567,0.0,1.0));
}
}
l9_1552.x=l9_1563;
float l9_1568=l9_1552.y;
int l9_1569=l9_1555.y;
if (l9_1569==1)
{
l9_1568=fract(l9_1568);
}
else
{
if (l9_1569==2)
{
float l9_1570=fract(l9_1568);
float l9_1571=l9_1568-l9_1570;
float l9_1572=step(0.25,fract(l9_1571*0.5));
l9_1568=mix(l9_1570,1.0-l9_1570,fast::clamp(l9_1572,0.0,1.0));
}
}
l9_1552.y=l9_1568;
if (l9_1556)
{
bool l9_1573=l9_1558;
bool l9_1574;
if (l9_1573)
{
l9_1574=l9_1555.x==3;
}
else
{
l9_1574=l9_1573;
}
float l9_1575=l9_1552.x;
float l9_1576=l9_1557.x;
float l9_1577=l9_1557.z;
bool l9_1578=l9_1574;
float l9_1579=l9_1562;
float l9_1580=fast::clamp(l9_1575,l9_1576,l9_1577);
float l9_1581=step(abs(l9_1575-l9_1580),9.9999997e-06);
l9_1579*=(l9_1581+((1.0-float(l9_1578))*(1.0-l9_1581)));
l9_1575=l9_1580;
l9_1552.x=l9_1575;
l9_1562=l9_1579;
bool l9_1582=l9_1558;
bool l9_1583;
if (l9_1582)
{
l9_1583=l9_1555.y==3;
}
else
{
l9_1583=l9_1582;
}
float l9_1584=l9_1552.y;
float l9_1585=l9_1557.y;
float l9_1586=l9_1557.w;
bool l9_1587=l9_1583;
float l9_1588=l9_1562;
float l9_1589=fast::clamp(l9_1584,l9_1585,l9_1586);
float l9_1590=step(abs(l9_1584-l9_1589),9.9999997e-06);
l9_1588*=(l9_1590+((1.0-float(l9_1587))*(1.0-l9_1590)));
l9_1584=l9_1589;
l9_1552.y=l9_1584;
l9_1562=l9_1588;
}
float2 l9_1591=l9_1552;
bool l9_1592=l9_1553;
float3x3 l9_1593=l9_1554;
if (l9_1592)
{
l9_1591=float2((l9_1593*float3(l9_1591,1.0)).xy);
}
float2 l9_1594=l9_1591;
l9_1552=l9_1594;
float l9_1595=l9_1552.x;
int l9_1596=l9_1555.x;
bool l9_1597=l9_1561;
float l9_1598=l9_1562;
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
l9_1552.x=l9_1595;
l9_1562=l9_1598;
float l9_1606=l9_1552.y;
int l9_1607=l9_1555.y;
bool l9_1608=l9_1561;
float l9_1609=l9_1562;
if ((l9_1607==0)||(l9_1607==3))
{
float l9_1610=l9_1606;
float l9_1611=0.0;
float l9_1612=1.0;
bool l9_1613=l9_1608;
float l9_1614=l9_1609;
float l9_1615=fast::clamp(l9_1610,l9_1611,l9_1612);
float l9_1616=step(abs(l9_1610-l9_1615),9.9999997e-06);
l9_1614*=(l9_1616+((1.0-float(l9_1613))*(1.0-l9_1616)));
l9_1610=l9_1615;
l9_1606=l9_1610;
l9_1609=l9_1614;
}
l9_1552.y=l9_1606;
l9_1562=l9_1609;
float2 l9_1617=l9_1552;
int l9_1618=l9_1550;
int l9_1619=l9_1551;
float l9_1620=l9_1560;
float2 l9_1621=l9_1617;
int l9_1622=l9_1618;
int l9_1623=l9_1619;
float3 l9_1624=float3(0.0);
if (l9_1622==0)
{
l9_1624=float3(l9_1621,0.0);
}
else
{
if (l9_1622==1)
{
l9_1624=float3(l9_1621.x,(l9_1621.y*0.5)+(0.5-(float(l9_1623)*0.5)),0.0);
}
else
{
l9_1624=float3(l9_1621,float(l9_1623));
}
}
float3 l9_1625=l9_1624;
float3 l9_1626=l9_1625;
float4 l9_1627=sc_set0.clearcoatNormalTexture.sample(sc_set0.clearcoatNormalTextureSmpSC,l9_1626.xy,bias(l9_1620));
float4 l9_1628=l9_1627;
if (l9_1558)
{
l9_1628=mix(l9_1559,l9_1628,float4(l9_1562));
}
float4 l9_1629=l9_1628;
l9_1543=l9_1629;
float4 l9_1630=l9_1543;
N3_ClearcoatNormal=l9_1630.xyz;
N3_ClearcoatNormal*=0.9921875;
}
}
l9_273=N3_BaseColor;
l9_274=N3_Opacity;
l9_275=N3_Normal;
l9_276=N3_Emissive;
l9_277=N3_Metallic;
l9_278=N3_Roughness;
l9_279=N3_Occlusion;
l9_280=N3_Background;
l9_281=N3_SheenOut;
l9_282=N3_ClearcoatBase;
l9_283=N3_ClearcoatNormal;
l9_284=N3_ClearcoatRoughness;
l9_221=l9_273;
l9_222=l9_274;
l9_223=l9_275;
l9_224=l9_276;
l9_225=l9_277;
l9_226=l9_278;
l9_227=l9_279;
l9_228=l9_280;
l9_229=l9_281;
l9_230=l9_282;
l9_231=l9_283;
l9_232=l9_284;
float4 l9_1631=float4(0.0);
float3 l9_1632=l9_221;
float l9_1633=l9_222;
float3 l9_1634=l9_223;
float3 l9_1635=l9_224;
float l9_1636=l9_225;
float l9_1637=l9_226;
float3 l9_1638=l9_227.xyz;
float3 l9_1639=(*sc_set0.UserUniforms).Port_SpecularAO_N036;
ssGlobals l9_1640=param_4;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1640.BumpedNormal=l9_1634;
}
l9_1633=fast::clamp(l9_1633,0.0,1.0);
float l9_1641=l9_1633;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1641<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1642=gl_FragCoord;
float2 l9_1643=floor(mod(l9_1642.xy,float2(4.0)));
float l9_1644=(mod(dot(l9_1643,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1641<l9_1644)
{
discard_fragment();
}
}
l9_1632=fast::max(l9_1632,float3(0.0));
float4 l9_1645;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1645=float4(l9_1632,l9_1633);
}
else
{
l9_1635=fast::max(l9_1635,float3(0.0));
l9_1636=fast::clamp(l9_1636,0.0,1.0);
l9_1637=fast::clamp(l9_1637,0.0,1.0);
l9_1638=fast::clamp(l9_1638,float3(0.0),float3(1.0));
float3 l9_1646=l9_1632;
float l9_1647=l9_1633;
float3 l9_1648=l9_1640.BumpedNormal;
float3 l9_1649=l9_1640.PositionWS;
float3 l9_1650=l9_1640.ViewDirWS;
float3 l9_1651=l9_1635;
float l9_1652=l9_1636;
float l9_1653=l9_1637;
float3 l9_1654=l9_1638;
float3 l9_1655=l9_1639;
l9_1645=ngsCalculateLighting(l9_1646,l9_1647,l9_1648,l9_1649,l9_1650,l9_1651,l9_1652,l9_1653,l9_1654,l9_1655,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,out.FragColor0);
}
l9_1645=fast::max(l9_1645,float4(0.0));
l9_1631=l9_1645;
float4 l9_1656=float4(0.0);
float3 l9_1657=(*sc_set0.UserUniforms).Port_Albedo_N405;
float l9_1658=(*sc_set0.UserUniforms).Port_Opacity_N405;
float3 l9_1659=l9_231;
float3 l9_1660=(*sc_set0.UserUniforms).Port_Emissive_N405;
float l9_1661=(*sc_set0.UserUniforms).Port_Metallic_N405;
float l9_1662=l9_232;
float3 l9_1663=(*sc_set0.UserUniforms).Port_SpecularAO_N405;
ssGlobals l9_1664=param_4;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1664.BumpedNormal=float3x3(float3(l9_1664.VertexTangent_WorldSpace),float3(l9_1664.VertexBinormal_WorldSpace),float3(l9_1664.VertexNormal_WorldSpace))*l9_1659;
}
float l9_1665=l9_1658;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_1665<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_1666=gl_FragCoord;
float2 l9_1667=floor(mod(l9_1666.xy,float2(4.0)));
float l9_1668=(mod(dot(l9_1667,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_1665<l9_1668)
{
discard_fragment();
}
}
float4 l9_1669;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_1669=float4(l9_1657,l9_1658);
}
else
{
l9_1662=fast::clamp(l9_1662,0.0,1.0);
float3 l9_1670=float3(1.0);
float3 l9_1671=l9_1657;
float l9_1672=l9_1658;
float3 l9_1673=l9_1664.BumpedNormal;
float3 l9_1674=l9_1664.PositionWS;
float3 l9_1675=l9_1664.ViewDirWS;
float3 l9_1676=l9_1660;
float l9_1677=l9_1661;
float l9_1678=l9_1662;
float3 l9_1679=l9_1670;
float3 l9_1680=l9_1663;
l9_1669=ngsCalculateLighting(l9_1671,l9_1672,l9_1673,l9_1674,l9_1675,l9_1676,l9_1677,l9_1678,l9_1679,l9_1680,in.varStereoViewID,sc_set0.sc_EnvmapDiffuse,sc_set0.sc_EnvmapDiffuseSmpSC,sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC,sc_set0.sc_RayTracingReflections,sc_set0.sc_RayTracingReflectionsSmpSC,sc_set0.sc_RayTracingGlobalIllumination,sc_set0.sc_RayTracingGlobalIlluminationSmpSC,sc_set0.sc_RayTracingShadows,sc_set0.sc_RayTracingShadowsSmpSC,gl_FragCoord,(*sc_set0.UserUniforms),in.varShadowTex,out.FragColor0);
}
l9_1669=fast::max(l9_1669,float4(0.0));
l9_1656=l9_1669;
float4 l9_1681=float4(0.0);
float4 l9_1682=l9_1631;
float l9_1683=l9_222;
float3 l9_1684=l9_228;
float4 l9_1685=l9_229;
float l9_1686=l9_230;
float4 l9_1687=l9_1656;
ssGlobals l9_1688=param_4;
tempGlobals=l9_1688;
float4 l9_1689=float4(0.0);
N31_PbrIn=l9_1682;
N31_EnableTransmission=(int(ENABLE_TRANSMISSION_tmp)!=0);
N31_Opacity=l9_1683;
N31_Background=l9_1684;
N31_EnableSheen=(int(ENABLE_SHEEN_tmp)!=0);
N31_SheenColor=l9_1685;
N31_EnableClearcoat=(int(ENABLE_CLEARCOAT_tmp)!=0);
N31_ClearcoatBase=l9_1686;
N31_ClearcoatColor=l9_1687;
N31_Result=N31_PbrIn;
if ((N31_EnableSheen||N31_EnableTransmission)||N31_EnableClearcoat)
{
float4 l9_1690=N31_Result;
float4 l9_1691;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1691=float4(pow(l9_1690.x,2.2),pow(l9_1690.y,2.2),pow(l9_1690.z,2.2),pow(l9_1690.w,2.2));
}
else
{
l9_1691=l9_1690*l9_1690;
}
float4 l9_1692=l9_1691;
N31_Result=l9_1692;
if (N31_EnableSheen)
{
float l9_1693=N31_SheenColor.w;
float3 l9_1694=(N31_Result.xyz*l9_1693)+N31_SheenColor.xyz;
N31_Result=float4(l9_1694.x,l9_1694.y,l9_1694.z,N31_Result.w);
}
if (N31_EnableTransmission)
{
float4 l9_1695=N31_Result;
float l9_1696=N31_Opacity;
float l9_1697;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1697=pow(l9_1696,2.2);
}
else
{
l9_1697=l9_1696*l9_1696;
}
float l9_1698=l9_1697;
N31_Result=mix(float4(N31_Background,1.0),l9_1695,float4(l9_1698));
N31_Result.w=1.0;
}
if (N31_EnableClearcoat)
{
float l9_1699=N31_ClearcoatBase;
float4 l9_1700=N31_ClearcoatColor;
float4 l9_1701;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1701=float4(pow(l9_1700.x,2.2),pow(l9_1700.y,2.2),pow(l9_1700.z,2.2),pow(l9_1700.w,2.2));
}
else
{
l9_1701=l9_1700*l9_1700;
}
float4 l9_1702=l9_1701;
float4 l9_1703=l9_1702*l9_1699;
float3 l9_1704=N31_Result.xyz+l9_1703.xyz;
N31_Result=float4(l9_1704.x,l9_1704.y,l9_1704.z,N31_Result.w);
}
float4 l9_1705=N31_Result;
float4 l9_1706;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1706=float4(pow(l9_1705.x,0.45454544),pow(l9_1705.y,0.45454544),pow(l9_1705.z,0.45454544),pow(l9_1705.w,0.45454544));
}
else
{
l9_1706=sqrt(l9_1705);
}
float4 l9_1707=l9_1706;
N31_Result=l9_1707;
}
l9_1689=N31_Result;
l9_1681=l9_1689;
param_1=l9_1681;
param_3=param_1;
}
else
{
float4 l9_1708=float4(0.0);
float4 l9_1709=(*sc_set0.UserUniforms).baseColorFactor;
l9_1708=l9_1709;
float2 l9_1710=float2(0.0);
float2 l9_1711=(*sc_set0.UserUniforms).baseColorTexture_offset;
l9_1710=l9_1711;
float2 l9_1712=float2(0.0);
float2 l9_1713=(*sc_set0.UserUniforms).baseColorTexture_scale;
l9_1712=l9_1713;
float l9_1714=0.0;
float l9_1715=(*sc_set0.UserUniforms).baseColorTexture_rotation;
l9_1714=l9_1715;
float4 l9_1716=float4(0.0);
float4 l9_1717=l9_1708;
float2 l9_1718=l9_1710;
float2 l9_1719=l9_1712;
float l9_1720=l9_1714;
ssGlobals l9_1721=param_4;
tempGlobals=l9_1721;
float4 l9_1722=float4(0.0);
N35_EnableVertexColor=(int(ENABLE_VERTEX_COLOR_BASE_tmp)!=0);
N35_EnableBaseTexture=(int(ENABLE_BASE_TEX_tmp)!=0);
N35_BaseColorTextureCoord=NODE_7_DROPLIST_ITEM_tmp;
N35_BaseColorFactor=l9_1717;
N35_EnableTextureTransform=(int(ENABLE_TEXTURE_TRANSFORM_tmp)!=0);
N35_BaseTextureTransform=(int(ENABLE_BASE_TEXTURE_TRANSFORM_tmp)!=0);
N35_BaseTextureOffset=l9_1718;
N35_BaseTextureScale=l9_1719;
N35_BaseTextureRotation=l9_1720;
float4 l9_1723=N35_BaseColorFactor;
if (N35_EnableBaseTexture)
{
int l9_1724=N35_BaseColorTextureCoord;
float2 l9_1725=tempGlobals.Surface_UVCoord0;
float2 l9_1726=l9_1725;
if (l9_1724==0)
{
float2 l9_1727=tempGlobals.Surface_UVCoord0;
l9_1726=l9_1727;
}
if (l9_1724==1)
{
float2 l9_1728=tempGlobals.Surface_UVCoord1;
l9_1726=l9_1728;
}
float2 l9_1729=l9_1726;
float2 l9_1730=l9_1729;
if (N35_EnableTextureTransform&&N35_BaseTextureTransform)
{
float2 l9_1731=l9_1730;
float2 l9_1732=N35_BaseTextureOffset;
float2 l9_1733=N35_BaseTextureScale;
float l9_1734=N35_BaseTextureRotation;
float3x3 l9_1735=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_1732.x,l9_1732.y,1.0));
float3x3 l9_1736=float3x3(float3(cos(l9_1734),sin(l9_1734),0.0),float3(-sin(l9_1734),cos(l9_1734),0.0),float3(0.0,0.0,1.0));
float3x3 l9_1737=float3x3(float3(l9_1733.x,0.0,0.0),float3(0.0,l9_1733.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_1738=(l9_1735*l9_1736)*l9_1737;
float2 l9_1739=(l9_1738*float3(l9_1731,1.0)).xy;
l9_1730=l9_1739;
}
float2 l9_1740=l9_1730;
float4 l9_1741=float4(0.0);
int l9_1742;
if ((int(baseColorTextureHasSwappedViews_tmp)!=0))
{
int l9_1743=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1743=0;
}
else
{
l9_1743=in.varStereoViewID;
}
int l9_1744=l9_1743;
l9_1742=1-l9_1744;
}
else
{
int l9_1745=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1745=0;
}
else
{
l9_1745=in.varStereoViewID;
}
int l9_1746=l9_1745;
l9_1742=l9_1746;
}
int l9_1747=l9_1742;
int l9_1748=baseColorTextureLayout_tmp;
int l9_1749=l9_1747;
float2 l9_1750=l9_1740;
bool l9_1751=(int(SC_USE_UV_TRANSFORM_baseColorTexture_tmp)!=0);
float3x3 l9_1752=(*sc_set0.UserUniforms).baseColorTextureTransform;
int2 l9_1753=int2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture_tmp);
bool l9_1754=(int(SC_USE_UV_MIN_MAX_baseColorTexture_tmp)!=0);
float4 l9_1755=(*sc_set0.UserUniforms).baseColorTextureUvMinMax;
bool l9_1756=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture_tmp)!=0);
float4 l9_1757=(*sc_set0.UserUniforms).baseColorTextureBorderColor;
float l9_1758=0.0;
bool l9_1759=l9_1756&&(!l9_1754);
float l9_1760=1.0;
float l9_1761=l9_1750.x;
int l9_1762=l9_1753.x;
if (l9_1762==1)
{
l9_1761=fract(l9_1761);
}
else
{
if (l9_1762==2)
{
float l9_1763=fract(l9_1761);
float l9_1764=l9_1761-l9_1763;
float l9_1765=step(0.25,fract(l9_1764*0.5));
l9_1761=mix(l9_1763,1.0-l9_1763,fast::clamp(l9_1765,0.0,1.0));
}
}
l9_1750.x=l9_1761;
float l9_1766=l9_1750.y;
int l9_1767=l9_1753.y;
if (l9_1767==1)
{
l9_1766=fract(l9_1766);
}
else
{
if (l9_1767==2)
{
float l9_1768=fract(l9_1766);
float l9_1769=l9_1766-l9_1768;
float l9_1770=step(0.25,fract(l9_1769*0.5));
l9_1766=mix(l9_1768,1.0-l9_1768,fast::clamp(l9_1770,0.0,1.0));
}
}
l9_1750.y=l9_1766;
if (l9_1754)
{
bool l9_1771=l9_1756;
bool l9_1772;
if (l9_1771)
{
l9_1772=l9_1753.x==3;
}
else
{
l9_1772=l9_1771;
}
float l9_1773=l9_1750.x;
float l9_1774=l9_1755.x;
float l9_1775=l9_1755.z;
bool l9_1776=l9_1772;
float l9_1777=l9_1760;
float l9_1778=fast::clamp(l9_1773,l9_1774,l9_1775);
float l9_1779=step(abs(l9_1773-l9_1778),9.9999997e-06);
l9_1777*=(l9_1779+((1.0-float(l9_1776))*(1.0-l9_1779)));
l9_1773=l9_1778;
l9_1750.x=l9_1773;
l9_1760=l9_1777;
bool l9_1780=l9_1756;
bool l9_1781;
if (l9_1780)
{
l9_1781=l9_1753.y==3;
}
else
{
l9_1781=l9_1780;
}
float l9_1782=l9_1750.y;
float l9_1783=l9_1755.y;
float l9_1784=l9_1755.w;
bool l9_1785=l9_1781;
float l9_1786=l9_1760;
float l9_1787=fast::clamp(l9_1782,l9_1783,l9_1784);
float l9_1788=step(abs(l9_1782-l9_1787),9.9999997e-06);
l9_1786*=(l9_1788+((1.0-float(l9_1785))*(1.0-l9_1788)));
l9_1782=l9_1787;
l9_1750.y=l9_1782;
l9_1760=l9_1786;
}
float2 l9_1789=l9_1750;
bool l9_1790=l9_1751;
float3x3 l9_1791=l9_1752;
if (l9_1790)
{
l9_1789=float2((l9_1791*float3(l9_1789,1.0)).xy);
}
float2 l9_1792=l9_1789;
l9_1750=l9_1792;
float l9_1793=l9_1750.x;
int l9_1794=l9_1753.x;
bool l9_1795=l9_1759;
float l9_1796=l9_1760;
if ((l9_1794==0)||(l9_1794==3))
{
float l9_1797=l9_1793;
float l9_1798=0.0;
float l9_1799=1.0;
bool l9_1800=l9_1795;
float l9_1801=l9_1796;
float l9_1802=fast::clamp(l9_1797,l9_1798,l9_1799);
float l9_1803=step(abs(l9_1797-l9_1802),9.9999997e-06);
l9_1801*=(l9_1803+((1.0-float(l9_1800))*(1.0-l9_1803)));
l9_1797=l9_1802;
l9_1793=l9_1797;
l9_1796=l9_1801;
}
l9_1750.x=l9_1793;
l9_1760=l9_1796;
float l9_1804=l9_1750.y;
int l9_1805=l9_1753.y;
bool l9_1806=l9_1759;
float l9_1807=l9_1760;
if ((l9_1805==0)||(l9_1805==3))
{
float l9_1808=l9_1804;
float l9_1809=0.0;
float l9_1810=1.0;
bool l9_1811=l9_1806;
float l9_1812=l9_1807;
float l9_1813=fast::clamp(l9_1808,l9_1809,l9_1810);
float l9_1814=step(abs(l9_1808-l9_1813),9.9999997e-06);
l9_1812*=(l9_1814+((1.0-float(l9_1811))*(1.0-l9_1814)));
l9_1808=l9_1813;
l9_1804=l9_1808;
l9_1807=l9_1812;
}
l9_1750.y=l9_1804;
l9_1760=l9_1807;
float2 l9_1815=l9_1750;
int l9_1816=l9_1748;
int l9_1817=l9_1749;
float l9_1818=l9_1758;
float2 l9_1819=l9_1815;
int l9_1820=l9_1816;
int l9_1821=l9_1817;
float3 l9_1822=float3(0.0);
if (l9_1820==0)
{
l9_1822=float3(l9_1819,0.0);
}
else
{
if (l9_1820==1)
{
l9_1822=float3(l9_1819.x,(l9_1819.y*0.5)+(0.5-(float(l9_1821)*0.5)),0.0);
}
else
{
l9_1822=float3(l9_1819,float(l9_1821));
}
}
float3 l9_1823=l9_1822;
float3 l9_1824=l9_1823;
float4 l9_1825=sc_set0.baseColorTexture.sample(sc_set0.baseColorTextureSmpSC,l9_1824.xy,bias(l9_1818));
float4 l9_1826=l9_1825;
if (l9_1756)
{
l9_1826=mix(l9_1757,l9_1826,float4(l9_1760));
}
float4 l9_1827=l9_1826;
l9_1741=l9_1827;
float4 l9_1828=l9_1741;
float4 l9_1829=l9_1828;
float4 l9_1830;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1830=float4(pow(l9_1829.x,2.2),pow(l9_1829.y,2.2),pow(l9_1829.z,2.2),pow(l9_1829.w,2.2));
}
else
{
l9_1830=l9_1829*l9_1829;
}
float4 l9_1831=l9_1830;
l9_1723*=l9_1831;
}
if (N35_EnableVertexColor)
{
float4 l9_1832=tempGlobals.VertexColor;
l9_1723*=l9_1832;
}
N35_BaseColor=l9_1723.xyz;
N35_Opacity=l9_1723.w;
float4 l9_1833=l9_1723;
float4 l9_1834;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_1834=float4(pow(l9_1833.x,0.45454544),pow(l9_1833.y,0.45454544),pow(l9_1833.z,0.45454544),pow(l9_1833.w,0.45454544));
}
else
{
l9_1834=sqrt(l9_1833);
}
float4 l9_1835=l9_1834;
N35_UnlitColor=l9_1835;
l9_1722=N35_UnlitColor;
l9_1716=l9_1722;
param_2=l9_1716;
param_3=param_2;
}
Output_N17=param_3;
FinalColor=Output_N17;
if ((*sc_set0.UserUniforms).sc_RayTracingCasterConfiguration.x!=0u)
{
float4 param_5=FinalColor;
if ((int(sc_RayTracingCasterForceOpaque_tmp)!=0))
{
param_5.w=1.0;
}
float4 l9_1836=fast::max(param_5,float4(0.0));
float4 param_6=l9_1836;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_6.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=param_6;
return out;
}
float4 param_7=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_1837=param_7;
float4 l9_1838=l9_1837;
float l9_1839=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1839=l9_1838.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_1839=fast::clamp(l9_1838.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1839=fast::clamp(dot(l9_1838.xyz,float3(l9_1838.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_1839=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_1839=(1.0-dot(l9_1838.xyz,float3(0.33333001)))*l9_1838.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1839=(1.0-fast::clamp(dot(l9_1838.xyz,float3(1.0)),0.0,1.0))*l9_1838.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_1839=fast::clamp(dot(l9_1838.xyz,float3(1.0)),0.0,1.0)*l9_1838.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_1839=fast::clamp(dot(l9_1838.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_1839=fast::clamp(dot(l9_1838.xyz,float3(1.0)),0.0,1.0)*l9_1838.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_1839=dot(l9_1838.xyz,float3(0.33333001))*l9_1838.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_1839=1.0-fast::clamp(dot(l9_1838.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_1839=fast::clamp(dot(l9_1838.xyz,float3(1.0)),0.0,1.0);
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
float l9_1840=l9_1839;
float l9_1841=l9_1840;
float l9_1842=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_1841;
float3 l9_1843=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_1837.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_1844=float4(l9_1843.x,l9_1843.y,l9_1843.z,l9_1842);
param_7=l9_1844;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_7=float4(param_7.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_1845=param_7;
float4 l9_1846=float4(0.0);
float4 l9_1847=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_1848=out.FragColor0;
float4 l9_1849=l9_1848;
l9_1847=l9_1849;
}
else
{
float4 l9_1850=gl_FragCoord;
float2 l9_1851=l9_1850.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_1852=l9_1851;
float2 l9_1853=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_1854=1;
int l9_1855=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1855=0;
}
else
{
l9_1855=in.varStereoViewID;
}
int l9_1856=l9_1855;
int l9_1857=l9_1856;
float3 l9_1858=float3(l9_1852,0.0);
int l9_1859=l9_1854;
int l9_1860=l9_1857;
if (l9_1859==1)
{
l9_1858.y=((2.0*l9_1858.y)+float(l9_1860))-1.0;
}
float2 l9_1861=l9_1858.xy;
l9_1853=l9_1861;
}
else
{
l9_1853=l9_1852;
}
float2 l9_1862=l9_1853;
float2 l9_1863=l9_1862;
float2 l9_1864=l9_1863;
float2 l9_1865=l9_1864;
float l9_1866=0.0;
int l9_1867;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_1868=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1868=0;
}
else
{
l9_1868=in.varStereoViewID;
}
int l9_1869=l9_1868;
l9_1867=1-l9_1869;
}
else
{
int l9_1870=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1870=0;
}
else
{
l9_1870=in.varStereoViewID;
}
int l9_1871=l9_1870;
l9_1867=l9_1871;
}
int l9_1872=l9_1867;
float2 l9_1873=l9_1865;
int l9_1874=sc_ScreenTextureLayout_tmp;
int l9_1875=l9_1872;
float l9_1876=l9_1866;
float2 l9_1877=l9_1873;
int l9_1878=l9_1874;
int l9_1879=l9_1875;
float3 l9_1880=float3(0.0);
if (l9_1878==0)
{
l9_1880=float3(l9_1877,0.0);
}
else
{
if (l9_1878==1)
{
l9_1880=float3(l9_1877.x,(l9_1877.y*0.5)+(0.5-(float(l9_1879)*0.5)),0.0);
}
else
{
l9_1880=float3(l9_1877,float(l9_1879));
}
}
float3 l9_1881=l9_1880;
float3 l9_1882=l9_1881;
float4 l9_1883=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_1882.xy,bias(l9_1876));
float4 l9_1884=l9_1883;
float4 l9_1885=l9_1884;
l9_1847=l9_1885;
}
float4 l9_1886=l9_1847;
float3 l9_1887=l9_1886.xyz;
float3 l9_1888=l9_1887;
float3 l9_1889=l9_1845.xyz;
float3 l9_1890=definedBlend(l9_1888,l9_1889,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_1846=float4(l9_1890.x,l9_1890.y,l9_1890.z,l9_1846.w);
float3 l9_1891=mix(l9_1887,l9_1846.xyz,float3(l9_1845.w));
l9_1846=float4(l9_1891.x,l9_1891.y,l9_1891.z,l9_1846.w);
l9_1846.w=1.0;
float4 l9_1892=l9_1846;
param_7=l9_1892;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_1893=float4(in.varScreenPos.xyz,1.0);
param_7=l9_1893;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_1894=gl_FragCoord;
float l9_1895=fast::clamp(abs(l9_1894.z),0.0,1.0);
float4 l9_1896=float4(l9_1895,1.0-l9_1895,1.0,1.0);
param_7=l9_1896;
}
else
{
float4 l9_1897=param_7;
float4 l9_1898=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_1898=float4(mix(float3(1.0),l9_1897.xyz,float3(l9_1897.w)),l9_1897.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_1899=l9_1897.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_1899=fast::clamp(l9_1899,0.0,1.0);
}
l9_1898=float4(l9_1897.xyz*l9_1899,l9_1899);
}
else
{
l9_1898=l9_1897;
}
}
float4 l9_1900=l9_1898;
param_7=l9_1900;
}
}
}
}
}
float4 l9_1901=param_7;
FinalColor=l9_1901;
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
float4 l9_1902=float4(0.0);
l9_1902=float4(0.0);
float4 l9_1903=l9_1902;
float4 Cost=l9_1903;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_8=in.varPos;
float4 param_9=FinalColor;
FinalColor=sc_OutputMotionVectorsIfNeeded(param_8,param_9,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_10=FinalColor;
float4 l9_1904=param_10;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_1904.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_1904;
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
float3 SurfacePosition_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexTangent_WorldSpace;
float3 VertexBinormal_WorldSpace;
float2 Surface_UVCoord0;
float2 Surface_UVCoord1;
float2 gScreenCoord;
float4 VertexColor;
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
float3 emissiveFactor;
float4 emissiveTextureSize;
float4 emissiveTextureDims;
float4 emissiveTextureView;
float3x3 emissiveTextureTransform;
float4 emissiveTextureUvMinMax;
float4 emissiveTextureBorderColor;
float normalTextureScale;
float4 normalTextureSize;
float4 normalTextureDims;
float4 normalTextureView;
float3x3 normalTextureTransform;
float4 normalTextureUvMinMax;
float4 normalTextureBorderColor;
float metallicFactor;
float roughnessFactor;
float occlusionTextureStrength;
float4 metallicRoughnessTextureSize;
float4 metallicRoughnessTextureDims;
float4 metallicRoughnessTextureView;
float3x3 metallicRoughnessTextureTransform;
float4 metallicRoughnessTextureUvMinMax;
float4 metallicRoughnessTextureBorderColor;
float transmissionFactor;
float4 transmissionTextureSize;
float4 transmissionTextureDims;
float4 transmissionTextureView;
float3x3 transmissionTextureTransform;
float4 transmissionTextureUvMinMax;
float4 transmissionTextureBorderColor;
float4 screenTextureSize;
float4 screenTextureDims;
float4 screenTextureView;
float3x3 screenTextureTransform;
float4 screenTextureUvMinMax;
float4 screenTextureBorderColor;
float3 sheenColorFactor;
float4 sheenColorTextureSize;
float4 sheenColorTextureDims;
float4 sheenColorTextureView;
float3x3 sheenColorTextureTransform;
float4 sheenColorTextureUvMinMax;
float4 sheenColorTextureBorderColor;
float sheenRoughnessFactor;
float4 sheenRoughnessTextureSize;
float4 sheenRoughnessTextureDims;
float4 sheenRoughnessTextureView;
float3x3 sheenRoughnessTextureTransform;
float4 sheenRoughnessTextureUvMinMax;
float4 sheenRoughnessTextureBorderColor;
float clearcoatFactor;
float4 clearcoatTextureSize;
float4 clearcoatTextureDims;
float4 clearcoatTextureView;
float3x3 clearcoatTextureTransform;
float4 clearcoatTextureUvMinMax;
float4 clearcoatTextureBorderColor;
float clearcoatRoughnessFactor;
float4 clearcoatRoughnessTextureSize;
float4 clearcoatRoughnessTextureDims;
float4 clearcoatRoughnessTextureView;
float3x3 clearcoatRoughnessTextureTransform;
float4 clearcoatRoughnessTextureUvMinMax;
float4 clearcoatRoughnessTextureBorderColor;
float4 clearcoatNormalTextureSize;
float4 clearcoatNormalTextureDims;
float4 clearcoatNormalTextureView;
float3x3 clearcoatNormalTextureTransform;
float4 clearcoatNormalTextureUvMinMax;
float4 clearcoatNormalTextureBorderColor;
float4 baseColorTextureSize;
float4 baseColorTextureDims;
float4 baseColorTextureView;
float3x3 baseColorTextureTransform;
float4 baseColorTextureUvMinMax;
float4 baseColorTextureBorderColor;
float4 baseColorFactor;
float2 baseColorTexture_offset;
float2 baseColorTexture_scale;
float baseColorTexture_rotation;
float2 emissiveTexture_offset;
float2 emissiveTexture_scale;
float emissiveTexture_rotation;
float2 normalTexture_offset;
float2 normalTexture_scale;
float normalTexture_rotation;
float2 metallicRoughnessTexture_offset;
float2 metallicRoughnessTexture_scale;
float metallicRoughnessTexture_rotation;
float2 transmissionTexture_offset;
float2 transmissionTexture_scale;
float transmissionTexture_rotation;
float2 sheenColorTexture_offset;
float2 sheenColorTexture_scale;
float sheenColorTexture_rotation;
float2 sheenRoughnessTexture_offset;
float2 sheenRoughnessTexture_scale;
float sheenRoughnessTexture_rotation;
float2 clearcoatTexture_offset;
float2 clearcoatTexture_scale;
float clearcoatTexture_rotation;
float2 clearcoatNormalTexture_offset;
float2 clearcoatNormalTexture_scale;
float clearcoatNormalTexture_rotation;
float2 clearcoatRoughnessTexture_offset;
float2 clearcoatRoughnessTexture_scale;
float clearcoatRoughnessTexture_rotation;
float Port_DebugSheenEnvLightMult_N003;
float Port_DebugSheenPunctualLightMult_N003;
float3 Port_SpecularAO_N036;
float3 Port_Albedo_N405;
float Port_Opacity_N405;
float3 Port_Emissive_N405;
float Port_Metallic_N405;
float3 Port_SpecularAO_N405;
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
texture2d<float> baseColorTexture [[id(4)]];
texture2d<float> clearcoatNormalTexture [[id(5)]];
texture2d<float> clearcoatRoughnessTexture [[id(6)]];
texture2d<float> clearcoatTexture [[id(7)]];
texture2d<float> emissiveTexture [[id(8)]];
texture2d<float> intensityTexture [[id(9)]];
texture2d<float> metallicRoughnessTexture [[id(10)]];
texture2d<float> normalTexture [[id(11)]];
texture2d<float> sc_EnvmapDiffuse [[id(12)]];
texture2d<float> sc_EnvmapSpecular [[id(13)]];
texture2d<float> sc_RayTracingGlobalIllumination [[id(22)]];
texture2d<uint> sc_RayTracingHitCasterIdAndBarycentric [[id(23)]];
texture2d<float> sc_RayTracingRayDirection [[id(24)]];
texture2d<float> sc_RayTracingReflections [[id(25)]];
texture2d<float> sc_RayTracingShadows [[id(26)]];
texture2d<float> sc_SSAOTexture [[id(27)]];
texture2d<float> sc_ScreenTexture [[id(28)]];
texture2d<float> sc_ShadowTexture [[id(29)]];
texture2d<float> screenTexture [[id(31)]];
texture2d<float> sheenColorTexture [[id(32)]];
texture2d<float> sheenRoughnessTexture [[id(33)]];
texture2d<float> transmissionTexture [[id(34)]];
sampler baseColorTextureSmpSC [[id(35)]];
sampler clearcoatNormalTextureSmpSC [[id(36)]];
sampler clearcoatRoughnessTextureSmpSC [[id(37)]];
sampler clearcoatTextureSmpSC [[id(38)]];
sampler emissiveTextureSmpSC [[id(39)]];
sampler intensityTextureSmpSC [[id(40)]];
sampler metallicRoughnessTextureSmpSC [[id(41)]];
sampler normalTextureSmpSC [[id(42)]];
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
sampler screenTextureSmpSC [[id(55)]];
sampler sheenColorTextureSmpSC [[id(56)]];
sampler sheenRoughnessTextureSmpSC [[id(57)]];
sampler transmissionTextureSmpSC [[id(58)]];
constant userUniformsObj* UserUniforms [[id(59)]];
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
// Implementation of the GLSL radians() function
template<typename T>
T radians(T d)
{
return d*T(0.01745329251);
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
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_recv_out out={};
bool N3_EnableNormalTexture=false;
float N3_NormalScale=0.0;
int N3_NormalTextureCoord=0;
float N3_RoughnessValue=0.0;
bool N3_EnableMetallicRoughnessTexture=false;
int N3_MaterialParamsTextureCoord=0;
bool N3_SheenEnable=false;
float N3_SheenRoughnessFactor=0.0;
bool N3_EnableSheenRoughnessTexture=false;
int N3_SheenRoughnessTextureCoord=0;
bool N3_ClearcoatEnable=false;
float N3_ClearcoatRoughnessFactor=0.0;
bool N3_EnableClearCoatRoughnessTexture=false;
int N3_ClearcoatRoughnessTextureCoord=0;
bool N3_EnableClearCoatNormalTexture=false;
int N3_ClearcoatNormalMapCoord=0;
float N3_OpacityIn=0.0;
bool N3_EnableTextureTransform=false;
bool N3_NormalTextureTransform=false;
float2 N3_NormalTextureOffset=float2(0.0);
float2 N3_NormalTextureScale=float2(0.0);
float N3_NormalTextureRotation=0.0;
bool N3_MaterialParamsTextureTransform=false;
float2 N3_MaterialParamsTextureOffset=float2(0.0);
float2 N3_MaterialParamsTextureScale=float2(0.0);
float N3_MaterialParamsTextureRotation=0.0;
bool N3_SheenRoughnessTextureTransform=false;
float2 N3_SheenRoughnessTextureOffset=float2(0.0);
float2 N3_SheenRoughnessTextureScale=float2(0.0);
float N3_SheenRoughnessTextureRotation=0.0;
bool N3_ClearcoatNormalTextureTransform=false;
float2 N3_ClearcoatNormalTextureOffset=float2(0.0);
float2 N3_ClearcoatNormalTextureScale=float2(0.0);
float N3_ClearcoatNormalTextureRotation=0.0;
bool N3_ClearcoatRoughnessTextureTransform=false;
float2 N3_ClearcoatRoughnessTextureOffset=float2(0.0);
float2 N3_ClearcoatRoughnessTextureScale=float2(0.0);
float N3_ClearcoatRoughnessTextureRotation=0.0;
float N3_Opacity=0.0;
float3 N3_Normal=float3(0.0);
float N3_Roughness=0.0;
float3 N3_ClearcoatNormal=float3(0.0);
float N3_ClearcoatRoughness=0.0;
bool N35_EnableVertexColor=false;
bool N35_EnableBaseTexture=false;
int N35_BaseColorTextureCoord=0;
float4 N35_BaseColorFactor=float4(0.0);
bool N35_EnableTextureTransform=false;
bool N35_BaseTextureTransform=false;
float2 N35_BaseTextureOffset=float2(0.0);
float2 N35_BaseTextureScale=float2(0.0);
float N35_BaseTextureRotation=0.0;
float N35_Opacity=0.0;
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
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
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
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
Globals.VertexColor=in.varColor;
ssGlobals param=Globals;
ssGlobals tempGlobals;
if ((int(ENABLE_GLTF_LIGHTING_tmp)!=0))
{
float l9_14=0.0;
float l9_15=(*sc_set0.UserUniforms).normalTextureScale;
l9_14=l9_15;
float l9_16=0.0;
float l9_17=(*sc_set0.UserUniforms).roughnessFactor;
l9_16=l9_17;
float l9_18=0.0;
float l9_19=(*sc_set0.UserUniforms).sheenRoughnessFactor;
l9_18=l9_19;
float l9_20=0.0;
float l9_21=(*sc_set0.UserUniforms).clearcoatRoughnessFactor;
l9_20=l9_21;
float4 l9_22=float4(0.0);
float4 l9_23=(*sc_set0.UserUniforms).baseColorFactor;
l9_22=l9_23;
float2 l9_24=float2(0.0);
float2 l9_25=(*sc_set0.UserUniforms).baseColorTexture_offset;
l9_24=l9_25;
float2 l9_26=float2(0.0);
float2 l9_27=(*sc_set0.UserUniforms).baseColorTexture_scale;
l9_26=l9_27;
float l9_28=0.0;
float l9_29=(*sc_set0.UserUniforms).baseColorTexture_rotation;
l9_28=l9_29;
float l9_30=0.0;
float4 l9_31=l9_22;
float2 l9_32=l9_24;
float2 l9_33=l9_26;
float l9_34=l9_28;
ssGlobals l9_35=param;
tempGlobals=l9_35;
float l9_36=0.0;
N35_EnableVertexColor=(int(ENABLE_VERTEX_COLOR_BASE_tmp)!=0);
N35_EnableBaseTexture=(int(ENABLE_BASE_TEX_tmp)!=0);
N35_BaseColorTextureCoord=NODE_7_DROPLIST_ITEM_tmp;
N35_BaseColorFactor=l9_31;
N35_EnableTextureTransform=(int(ENABLE_TEXTURE_TRANSFORM_tmp)!=0);
N35_BaseTextureTransform=(int(ENABLE_BASE_TEXTURE_TRANSFORM_tmp)!=0);
N35_BaseTextureOffset=l9_32;
N35_BaseTextureScale=l9_33;
N35_BaseTextureRotation=l9_34;
float4 l9_37=N35_BaseColorFactor;
if (N35_EnableBaseTexture)
{
int l9_38=N35_BaseColorTextureCoord;
float2 l9_39=tempGlobals.Surface_UVCoord0;
float2 l9_40=l9_39;
if (l9_38==0)
{
float2 l9_41=tempGlobals.Surface_UVCoord0;
l9_40=l9_41;
}
if (l9_38==1)
{
float2 l9_42=tempGlobals.Surface_UVCoord1;
l9_40=l9_42;
}
float2 l9_43=l9_40;
float2 l9_44=l9_43;
if (N35_EnableTextureTransform&&N35_BaseTextureTransform)
{
float2 l9_45=l9_44;
float2 l9_46=N35_BaseTextureOffset;
float2 l9_47=N35_BaseTextureScale;
float l9_48=N35_BaseTextureRotation;
float3x3 l9_49=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_46.x,l9_46.y,1.0));
float3x3 l9_50=float3x3(float3(cos(l9_48),sin(l9_48),0.0),float3(-sin(l9_48),cos(l9_48),0.0),float3(0.0,0.0,1.0));
float3x3 l9_51=float3x3(float3(l9_47.x,0.0,0.0),float3(0.0,l9_47.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_52=(l9_49*l9_50)*l9_51;
float2 l9_53=(l9_52*float3(l9_45,1.0)).xy;
l9_44=l9_53;
}
float2 l9_54=l9_44;
float4 l9_55=float4(0.0);
int l9_56;
if ((int(baseColorTextureHasSwappedViews_tmp)!=0))
{
int l9_57=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_57=0;
}
else
{
l9_57=in.varStereoViewID;
}
int l9_58=l9_57;
l9_56=1-l9_58;
}
else
{
int l9_59=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_59=0;
}
else
{
l9_59=in.varStereoViewID;
}
int l9_60=l9_59;
l9_56=l9_60;
}
int l9_61=l9_56;
int l9_62=baseColorTextureLayout_tmp;
int l9_63=l9_61;
float2 l9_64=l9_54;
bool l9_65=(int(SC_USE_UV_TRANSFORM_baseColorTexture_tmp)!=0);
float3x3 l9_66=(*sc_set0.UserUniforms).baseColorTextureTransform;
int2 l9_67=int2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture_tmp);
bool l9_68=(int(SC_USE_UV_MIN_MAX_baseColorTexture_tmp)!=0);
float4 l9_69=(*sc_set0.UserUniforms).baseColorTextureUvMinMax;
bool l9_70=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture_tmp)!=0);
float4 l9_71=(*sc_set0.UserUniforms).baseColorTextureBorderColor;
float l9_72=0.0;
bool l9_73=l9_70&&(!l9_68);
float l9_74=1.0;
float l9_75=l9_64.x;
int l9_76=l9_67.x;
if (l9_76==1)
{
l9_75=fract(l9_75);
}
else
{
if (l9_76==2)
{
float l9_77=fract(l9_75);
float l9_78=l9_75-l9_77;
float l9_79=step(0.25,fract(l9_78*0.5));
l9_75=mix(l9_77,1.0-l9_77,fast::clamp(l9_79,0.0,1.0));
}
}
l9_64.x=l9_75;
float l9_80=l9_64.y;
int l9_81=l9_67.y;
if (l9_81==1)
{
l9_80=fract(l9_80);
}
else
{
if (l9_81==2)
{
float l9_82=fract(l9_80);
float l9_83=l9_80-l9_82;
float l9_84=step(0.25,fract(l9_83*0.5));
l9_80=mix(l9_82,1.0-l9_82,fast::clamp(l9_84,0.0,1.0));
}
}
l9_64.y=l9_80;
if (l9_68)
{
bool l9_85=l9_70;
bool l9_86;
if (l9_85)
{
l9_86=l9_67.x==3;
}
else
{
l9_86=l9_85;
}
float l9_87=l9_64.x;
float l9_88=l9_69.x;
float l9_89=l9_69.z;
bool l9_90=l9_86;
float l9_91=l9_74;
float l9_92=fast::clamp(l9_87,l9_88,l9_89);
float l9_93=step(abs(l9_87-l9_92),9.9999997e-06);
l9_91*=(l9_93+((1.0-float(l9_90))*(1.0-l9_93)));
l9_87=l9_92;
l9_64.x=l9_87;
l9_74=l9_91;
bool l9_94=l9_70;
bool l9_95;
if (l9_94)
{
l9_95=l9_67.y==3;
}
else
{
l9_95=l9_94;
}
float l9_96=l9_64.y;
float l9_97=l9_69.y;
float l9_98=l9_69.w;
bool l9_99=l9_95;
float l9_100=l9_74;
float l9_101=fast::clamp(l9_96,l9_97,l9_98);
float l9_102=step(abs(l9_96-l9_101),9.9999997e-06);
l9_100*=(l9_102+((1.0-float(l9_99))*(1.0-l9_102)));
l9_96=l9_101;
l9_64.y=l9_96;
l9_74=l9_100;
}
float2 l9_103=l9_64;
bool l9_104=l9_65;
float3x3 l9_105=l9_66;
if (l9_104)
{
l9_103=float2((l9_105*float3(l9_103,1.0)).xy);
}
float2 l9_106=l9_103;
l9_64=l9_106;
float l9_107=l9_64.x;
int l9_108=l9_67.x;
bool l9_109=l9_73;
float l9_110=l9_74;
if ((l9_108==0)||(l9_108==3))
{
float l9_111=l9_107;
float l9_112=0.0;
float l9_113=1.0;
bool l9_114=l9_109;
float l9_115=l9_110;
float l9_116=fast::clamp(l9_111,l9_112,l9_113);
float l9_117=step(abs(l9_111-l9_116),9.9999997e-06);
l9_115*=(l9_117+((1.0-float(l9_114))*(1.0-l9_117)));
l9_111=l9_116;
l9_107=l9_111;
l9_110=l9_115;
}
l9_64.x=l9_107;
l9_74=l9_110;
float l9_118=l9_64.y;
int l9_119=l9_67.y;
bool l9_120=l9_73;
float l9_121=l9_74;
if ((l9_119==0)||(l9_119==3))
{
float l9_122=l9_118;
float l9_123=0.0;
float l9_124=1.0;
bool l9_125=l9_120;
float l9_126=l9_121;
float l9_127=fast::clamp(l9_122,l9_123,l9_124);
float l9_128=step(abs(l9_122-l9_127),9.9999997e-06);
l9_126*=(l9_128+((1.0-float(l9_125))*(1.0-l9_128)));
l9_122=l9_127;
l9_118=l9_122;
l9_121=l9_126;
}
l9_64.y=l9_118;
l9_74=l9_121;
float2 l9_129=l9_64;
int l9_130=l9_62;
int l9_131=l9_63;
float l9_132=l9_72;
float2 l9_133=l9_129;
int l9_134=l9_130;
int l9_135=l9_131;
float3 l9_136=float3(0.0);
if (l9_134==0)
{
l9_136=float3(l9_133,0.0);
}
else
{
if (l9_134==1)
{
l9_136=float3(l9_133.x,(l9_133.y*0.5)+(0.5-(float(l9_135)*0.5)),0.0);
}
else
{
l9_136=float3(l9_133,float(l9_135));
}
}
float3 l9_137=l9_136;
float3 l9_138=l9_137;
float4 l9_139=sc_set0.baseColorTexture.sample(sc_set0.baseColorTextureSmpSC,l9_138.xy,bias(l9_132));
float4 l9_140=l9_139;
if (l9_70)
{
l9_140=mix(l9_71,l9_140,float4(l9_74));
}
float4 l9_141=l9_140;
l9_55=l9_141;
float4 l9_142=l9_55;
float4 l9_143=l9_142;
float4 l9_144;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_144=float4(pow(l9_143.x,2.2),pow(l9_143.y,2.2),pow(l9_143.z,2.2),pow(l9_143.w,2.2));
}
else
{
l9_144=l9_143*l9_143;
}
float4 l9_145=l9_144;
l9_37*=l9_145;
}
if (N35_EnableVertexColor)
{
float4 l9_146=tempGlobals.VertexColor;
l9_37*=l9_146;
}
N35_Opacity=l9_37.w;
l9_36=N35_Opacity;
l9_30=l9_36;
float2 l9_147=float2(0.0);
float2 l9_148=(*sc_set0.UserUniforms).normalTexture_offset;
l9_147=l9_148;
float2 l9_149=float2(0.0);
float2 l9_150=(*sc_set0.UserUniforms).normalTexture_scale;
l9_149=l9_150;
float l9_151=0.0;
float l9_152=(*sc_set0.UserUniforms).normalTexture_rotation;
l9_151=l9_152;
float2 l9_153=float2(0.0);
float2 l9_154=(*sc_set0.UserUniforms).metallicRoughnessTexture_offset;
l9_153=l9_154;
float2 l9_155=float2(0.0);
float2 l9_156=(*sc_set0.UserUniforms).metallicRoughnessTexture_scale;
l9_155=l9_156;
float l9_157=0.0;
float l9_158=(*sc_set0.UserUniforms).metallicRoughnessTexture_rotation;
l9_157=l9_158;
float2 l9_159=float2(0.0);
float2 l9_160=(*sc_set0.UserUniforms).sheenRoughnessTexture_offset;
l9_159=l9_160;
float2 l9_161=float2(0.0);
float2 l9_162=(*sc_set0.UserUniforms).sheenRoughnessTexture_scale;
l9_161=l9_162;
float l9_163=0.0;
float l9_164=(*sc_set0.UserUniforms).sheenRoughnessTexture_rotation;
l9_163=l9_164;
float2 l9_165=float2(0.0);
float2 l9_166=(*sc_set0.UserUniforms).clearcoatNormalTexture_offset;
l9_165=l9_166;
float2 l9_167=float2(0.0);
float2 l9_168=(*sc_set0.UserUniforms).clearcoatNormalTexture_scale;
l9_167=l9_168;
float l9_169=0.0;
float l9_170=(*sc_set0.UserUniforms).clearcoatNormalTexture_rotation;
l9_169=l9_170;
float2 l9_171=float2(0.0);
float2 l9_172=(*sc_set0.UserUniforms).clearcoatRoughnessTexture_offset;
l9_171=l9_172;
float2 l9_173=float2(0.0);
float2 l9_174=(*sc_set0.UserUniforms).clearcoatRoughnessTexture_scale;
l9_173=l9_174;
float l9_175=0.0;
float l9_176=(*sc_set0.UserUniforms).clearcoatRoughnessTexture_rotation;
l9_175=l9_176;
float l9_177=0.0;
float3 l9_178=float3(0.0);
float l9_179=0.0;
float3 l9_180=float3(0.0);
float l9_181=0.0;
float l9_182=l9_14;
float l9_183=l9_16;
float l9_184=l9_18;
float l9_185=l9_20;
float l9_186=l9_30;
float2 l9_187=l9_147;
float2 l9_188=l9_149;
float l9_189=l9_151;
float2 l9_190=l9_153;
float2 l9_191=l9_155;
float l9_192=l9_157;
float2 l9_193=l9_159;
float2 l9_194=l9_161;
float l9_195=l9_163;
float2 l9_196=l9_165;
float2 l9_197=l9_167;
float l9_198=l9_169;
float2 l9_199=l9_171;
float2 l9_200=l9_173;
float l9_201=l9_175;
ssGlobals l9_202=param;
tempGlobals=l9_202;
float l9_203=0.0;
float3 l9_204=float3(0.0);
float l9_205=0.0;
float3 l9_206=float3(0.0);
float l9_207=0.0;
N3_EnableNormalTexture=(int(ENABLE_NORMALMAP_tmp)!=0);
N3_NormalScale=l9_182;
N3_NormalTextureCoord=NODE_8_DROPLIST_ITEM_tmp;
N3_RoughnessValue=l9_183;
N3_EnableMetallicRoughnessTexture=(int(ENABLE_METALLIC_ROUGHNESS_TEX_tmp)!=0);
N3_MaterialParamsTextureCoord=NODE_11_DROPLIST_ITEM_tmp;
N3_SheenEnable=(int(ENABLE_SHEEN_tmp)!=0);
N3_SheenRoughnessFactor=l9_184;
N3_EnableSheenRoughnessTexture=(int(ENABLE_SHEEN_ROUGHNESS_TEX_tmp)!=0);
N3_SheenRoughnessTextureCoord=Tweak_N37_tmp;
N3_ClearcoatEnable=(int(ENABLE_CLEARCOAT_tmp)!=0);
N3_ClearcoatRoughnessFactor=l9_185;
N3_EnableClearCoatRoughnessTexture=(int(ENABLE_CLEARCOAT_ROUGHNESS_TEX_tmp)!=0);
N3_ClearcoatRoughnessTextureCoord=Tweak_N60_tmp;
N3_EnableClearCoatNormalTexture=(int(ENABLE_CLEARCOAT_NORMAL_TEX_tmp)!=0);
N3_ClearcoatNormalMapCoord=Tweak_N47_tmp;
N3_OpacityIn=l9_186;
N3_EnableTextureTransform=(int(ENABLE_TEXTURE_TRANSFORM_tmp)!=0);
N3_NormalTextureTransform=(int(ENABLE_NORMAL_TEXTURE_TRANSFORM_tmp)!=0);
N3_NormalTextureOffset=l9_187;
N3_NormalTextureScale=l9_188;
N3_NormalTextureRotation=l9_189;
N3_MaterialParamsTextureTransform=(int(ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM_tmp)!=0);
N3_MaterialParamsTextureOffset=l9_190;
N3_MaterialParamsTextureScale=l9_191;
N3_MaterialParamsTextureRotation=l9_192;
N3_SheenRoughnessTextureTransform=(int(ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM_tmp)!=0);
N3_SheenRoughnessTextureOffset=l9_193;
N3_SheenRoughnessTextureScale=l9_194;
N3_SheenRoughnessTextureRotation=l9_195;
N3_ClearcoatNormalTextureTransform=(int(ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM_tmp)!=0);
N3_ClearcoatNormalTextureOffset=l9_196;
N3_ClearcoatNormalTextureScale=l9_197;
N3_ClearcoatNormalTextureRotation=l9_198;
N3_ClearcoatRoughnessTextureTransform=(int(ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM_tmp)!=0);
N3_ClearcoatRoughnessTextureOffset=l9_199;
N3_ClearcoatRoughnessTextureScale=l9_200;
N3_ClearcoatRoughnessTextureRotation=l9_201;
N3_Opacity=N3_OpacityIn;
float3 l9_208=tempGlobals.VertexNormal_WorldSpace;
N3_Normal=normalize(l9_208);
if (N3_EnableNormalTexture)
{
float3 l9_209=N3_Normal;
int l9_210=N3_NormalTextureCoord;
float2 l9_211=tempGlobals.Surface_UVCoord0;
float2 l9_212=l9_211;
if (l9_210==0)
{
float2 l9_213=tempGlobals.Surface_UVCoord0;
l9_212=l9_213;
}
if (l9_210==1)
{
float2 l9_214=tempGlobals.Surface_UVCoord1;
l9_212=l9_214;
}
float2 l9_215=l9_212;
float2 l9_216=l9_215;
if (N3_EnableTextureTransform&&N3_NormalTextureTransform)
{
float2 l9_217=l9_216;
float2 l9_218=N3_NormalTextureOffset;
float2 l9_219=N3_NormalTextureScale;
float l9_220=N3_NormalTextureRotation;
float l9_221=radians(l9_220);
float3x3 l9_222=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_218.x,l9_218.y,1.0));
float3x3 l9_223=float3x3(float3(cos(l9_221),sin(l9_221),0.0),float3(-sin(l9_221),cos(l9_221),0.0),float3(0.0,0.0,1.0));
float3x3 l9_224=float3x3(float3(l9_219.x,0.0,0.0),float3(0.0,l9_219.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_225=(l9_222*l9_223)*l9_224;
float2 l9_226=(l9_225*float3(l9_217,1.0)).xy;
l9_216=l9_226;
}
float2 l9_227=l9_216;
float4 l9_228=float4(0.0);
int l9_229;
if ((int(normalTextureHasSwappedViews_tmp)!=0))
{
int l9_230=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_230=0;
}
else
{
l9_230=in.varStereoViewID;
}
int l9_231=l9_230;
l9_229=1-l9_231;
}
else
{
int l9_232=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_232=0;
}
else
{
l9_232=in.varStereoViewID;
}
int l9_233=l9_232;
l9_229=l9_233;
}
int l9_234=l9_229;
int l9_235=normalTextureLayout_tmp;
int l9_236=l9_234;
float2 l9_237=l9_227;
bool l9_238=(int(SC_USE_UV_TRANSFORM_normalTexture_tmp)!=0);
float3x3 l9_239=(*sc_set0.UserUniforms).normalTextureTransform;
int2 l9_240=int2(SC_SOFTWARE_WRAP_MODE_U_normalTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTexture_tmp);
bool l9_241=(int(SC_USE_UV_MIN_MAX_normalTexture_tmp)!=0);
float4 l9_242=(*sc_set0.UserUniforms).normalTextureUvMinMax;
bool l9_243=(int(SC_USE_CLAMP_TO_BORDER_normalTexture_tmp)!=0);
float4 l9_244=(*sc_set0.UserUniforms).normalTextureBorderColor;
float l9_245=0.0;
bool l9_246=l9_243&&(!l9_241);
float l9_247=1.0;
float l9_248=l9_237.x;
int l9_249=l9_240.x;
if (l9_249==1)
{
l9_248=fract(l9_248);
}
else
{
if (l9_249==2)
{
float l9_250=fract(l9_248);
float l9_251=l9_248-l9_250;
float l9_252=step(0.25,fract(l9_251*0.5));
l9_248=mix(l9_250,1.0-l9_250,fast::clamp(l9_252,0.0,1.0));
}
}
l9_237.x=l9_248;
float l9_253=l9_237.y;
int l9_254=l9_240.y;
if (l9_254==1)
{
l9_253=fract(l9_253);
}
else
{
if (l9_254==2)
{
float l9_255=fract(l9_253);
float l9_256=l9_253-l9_255;
float l9_257=step(0.25,fract(l9_256*0.5));
l9_253=mix(l9_255,1.0-l9_255,fast::clamp(l9_257,0.0,1.0));
}
}
l9_237.y=l9_253;
if (l9_241)
{
bool l9_258=l9_243;
bool l9_259;
if (l9_258)
{
l9_259=l9_240.x==3;
}
else
{
l9_259=l9_258;
}
float l9_260=l9_237.x;
float l9_261=l9_242.x;
float l9_262=l9_242.z;
bool l9_263=l9_259;
float l9_264=l9_247;
float l9_265=fast::clamp(l9_260,l9_261,l9_262);
float l9_266=step(abs(l9_260-l9_265),9.9999997e-06);
l9_264*=(l9_266+((1.0-float(l9_263))*(1.0-l9_266)));
l9_260=l9_265;
l9_237.x=l9_260;
l9_247=l9_264;
bool l9_267=l9_243;
bool l9_268;
if (l9_267)
{
l9_268=l9_240.y==3;
}
else
{
l9_268=l9_267;
}
float l9_269=l9_237.y;
float l9_270=l9_242.y;
float l9_271=l9_242.w;
bool l9_272=l9_268;
float l9_273=l9_247;
float l9_274=fast::clamp(l9_269,l9_270,l9_271);
float l9_275=step(abs(l9_269-l9_274),9.9999997e-06);
l9_273*=(l9_275+((1.0-float(l9_272))*(1.0-l9_275)));
l9_269=l9_274;
l9_237.y=l9_269;
l9_247=l9_273;
}
float2 l9_276=l9_237;
bool l9_277=l9_238;
float3x3 l9_278=l9_239;
if (l9_277)
{
l9_276=float2((l9_278*float3(l9_276,1.0)).xy);
}
float2 l9_279=l9_276;
l9_237=l9_279;
float l9_280=l9_237.x;
int l9_281=l9_240.x;
bool l9_282=l9_246;
float l9_283=l9_247;
if ((l9_281==0)||(l9_281==3))
{
float l9_284=l9_280;
float l9_285=0.0;
float l9_286=1.0;
bool l9_287=l9_282;
float l9_288=l9_283;
float l9_289=fast::clamp(l9_284,l9_285,l9_286);
float l9_290=step(abs(l9_284-l9_289),9.9999997e-06);
l9_288*=(l9_290+((1.0-float(l9_287))*(1.0-l9_290)));
l9_284=l9_289;
l9_280=l9_284;
l9_283=l9_288;
}
l9_237.x=l9_280;
l9_247=l9_283;
float l9_291=l9_237.y;
int l9_292=l9_240.y;
bool l9_293=l9_246;
float l9_294=l9_247;
if ((l9_292==0)||(l9_292==3))
{
float l9_295=l9_291;
float l9_296=0.0;
float l9_297=1.0;
bool l9_298=l9_293;
float l9_299=l9_294;
float l9_300=fast::clamp(l9_295,l9_296,l9_297);
float l9_301=step(abs(l9_295-l9_300),9.9999997e-06);
l9_299*=(l9_301+((1.0-float(l9_298))*(1.0-l9_301)));
l9_295=l9_300;
l9_291=l9_295;
l9_294=l9_299;
}
l9_237.y=l9_291;
l9_247=l9_294;
float2 l9_302=l9_237;
int l9_303=l9_235;
int l9_304=l9_236;
float l9_305=l9_245;
float2 l9_306=l9_302;
int l9_307=l9_303;
int l9_308=l9_304;
float3 l9_309=float3(0.0);
if (l9_307==0)
{
l9_309=float3(l9_306,0.0);
}
else
{
if (l9_307==1)
{
l9_309=float3(l9_306.x,(l9_306.y*0.5)+(0.5-(float(l9_308)*0.5)),0.0);
}
else
{
l9_309=float3(l9_306,float(l9_308));
}
}
float3 l9_310=l9_309;
float3 l9_311=l9_310;
float4 l9_312=sc_set0.normalTexture.sample(sc_set0.normalTextureSmpSC,l9_311.xy,bias(l9_305));
float4 l9_313=l9_312;
if (l9_243)
{
l9_313=mix(l9_244,l9_313,float4(l9_247));
}
float4 l9_314=l9_313;
l9_228=l9_314;
float4 l9_315=l9_228;
float3 l9_316=(l9_315.xyz*1.9921875)-float3(1.0);
l9_316=mix(float3(0.0,0.0,1.0),l9_316,float3(N3_NormalScale));
float3 l9_317=tempGlobals.VertexTangent_WorldSpace;
float3 l9_318=l9_317;
float3 l9_319=tempGlobals.VertexBinormal_WorldSpace;
float3 l9_320=l9_319;
float3x3 l9_321=float3x3(float3(l9_318),float3(l9_320),float3(l9_209));
l9_209=normalize(l9_321*l9_316);
N3_Normal=l9_209;
}
N3_Roughness=N3_RoughnessValue;
if (N3_EnableMetallicRoughnessTexture)
{
float l9_322=N3_Roughness;
int l9_323=N3_MaterialParamsTextureCoord;
float2 l9_324=tempGlobals.Surface_UVCoord0;
float2 l9_325=l9_324;
if (l9_323==0)
{
float2 l9_326=tempGlobals.Surface_UVCoord0;
l9_325=l9_326;
}
if (l9_323==1)
{
float2 l9_327=tempGlobals.Surface_UVCoord1;
l9_325=l9_327;
}
float2 l9_328=l9_325;
float2 l9_329=l9_328;
if (N3_EnableTextureTransform&&N3_MaterialParamsTextureTransform)
{
float2 l9_330=l9_329;
float2 l9_331=N3_MaterialParamsTextureOffset;
float2 l9_332=N3_MaterialParamsTextureScale;
float l9_333=N3_MaterialParamsTextureRotation;
float l9_334=radians(l9_333);
float3x3 l9_335=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_331.x,l9_331.y,1.0));
float3x3 l9_336=float3x3(float3(cos(l9_334),sin(l9_334),0.0),float3(-sin(l9_334),cos(l9_334),0.0),float3(0.0,0.0,1.0));
float3x3 l9_337=float3x3(float3(l9_332.x,0.0,0.0),float3(0.0,l9_332.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_338=(l9_335*l9_336)*l9_337;
float2 l9_339=(l9_338*float3(l9_330,1.0)).xy;
l9_329=l9_339;
}
float2 l9_340=l9_329;
float4 l9_341=float4(0.0);
int l9_342;
if ((int(metallicRoughnessTextureHasSwappedViews_tmp)!=0))
{
int l9_343=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_343=0;
}
else
{
l9_343=in.varStereoViewID;
}
int l9_344=l9_343;
l9_342=1-l9_344;
}
else
{
int l9_345=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_345=0;
}
else
{
l9_345=in.varStereoViewID;
}
int l9_346=l9_345;
l9_342=l9_346;
}
int l9_347=l9_342;
int l9_348=metallicRoughnessTextureLayout_tmp;
int l9_349=l9_347;
float2 l9_350=l9_340;
bool l9_351=(int(SC_USE_UV_TRANSFORM_metallicRoughnessTexture_tmp)!=0);
float3x3 l9_352=(*sc_set0.UserUniforms).metallicRoughnessTextureTransform;
int2 l9_353=int2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture_tmp);
bool l9_354=(int(SC_USE_UV_MIN_MAX_metallicRoughnessTexture_tmp)!=0);
float4 l9_355=(*sc_set0.UserUniforms).metallicRoughnessTextureUvMinMax;
bool l9_356=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture_tmp)!=0);
float4 l9_357=(*sc_set0.UserUniforms).metallicRoughnessTextureBorderColor;
float l9_358=0.0;
bool l9_359=l9_356&&(!l9_354);
float l9_360=1.0;
float l9_361=l9_350.x;
int l9_362=l9_353.x;
if (l9_362==1)
{
l9_361=fract(l9_361);
}
else
{
if (l9_362==2)
{
float l9_363=fract(l9_361);
float l9_364=l9_361-l9_363;
float l9_365=step(0.25,fract(l9_364*0.5));
l9_361=mix(l9_363,1.0-l9_363,fast::clamp(l9_365,0.0,1.0));
}
}
l9_350.x=l9_361;
float l9_366=l9_350.y;
int l9_367=l9_353.y;
if (l9_367==1)
{
l9_366=fract(l9_366);
}
else
{
if (l9_367==2)
{
float l9_368=fract(l9_366);
float l9_369=l9_366-l9_368;
float l9_370=step(0.25,fract(l9_369*0.5));
l9_366=mix(l9_368,1.0-l9_368,fast::clamp(l9_370,0.0,1.0));
}
}
l9_350.y=l9_366;
if (l9_354)
{
bool l9_371=l9_356;
bool l9_372;
if (l9_371)
{
l9_372=l9_353.x==3;
}
else
{
l9_372=l9_371;
}
float l9_373=l9_350.x;
float l9_374=l9_355.x;
float l9_375=l9_355.z;
bool l9_376=l9_372;
float l9_377=l9_360;
float l9_378=fast::clamp(l9_373,l9_374,l9_375);
float l9_379=step(abs(l9_373-l9_378),9.9999997e-06);
l9_377*=(l9_379+((1.0-float(l9_376))*(1.0-l9_379)));
l9_373=l9_378;
l9_350.x=l9_373;
l9_360=l9_377;
bool l9_380=l9_356;
bool l9_381;
if (l9_380)
{
l9_381=l9_353.y==3;
}
else
{
l9_381=l9_380;
}
float l9_382=l9_350.y;
float l9_383=l9_355.y;
float l9_384=l9_355.w;
bool l9_385=l9_381;
float l9_386=l9_360;
float l9_387=fast::clamp(l9_382,l9_383,l9_384);
float l9_388=step(abs(l9_382-l9_387),9.9999997e-06);
l9_386*=(l9_388+((1.0-float(l9_385))*(1.0-l9_388)));
l9_382=l9_387;
l9_350.y=l9_382;
l9_360=l9_386;
}
float2 l9_389=l9_350;
bool l9_390=l9_351;
float3x3 l9_391=l9_352;
if (l9_390)
{
l9_389=float2((l9_391*float3(l9_389,1.0)).xy);
}
float2 l9_392=l9_389;
l9_350=l9_392;
float l9_393=l9_350.x;
int l9_394=l9_353.x;
bool l9_395=l9_359;
float l9_396=l9_360;
if ((l9_394==0)||(l9_394==3))
{
float l9_397=l9_393;
float l9_398=0.0;
float l9_399=1.0;
bool l9_400=l9_395;
float l9_401=l9_396;
float l9_402=fast::clamp(l9_397,l9_398,l9_399);
float l9_403=step(abs(l9_397-l9_402),9.9999997e-06);
l9_401*=(l9_403+((1.0-float(l9_400))*(1.0-l9_403)));
l9_397=l9_402;
l9_393=l9_397;
l9_396=l9_401;
}
l9_350.x=l9_393;
l9_360=l9_396;
float l9_404=l9_350.y;
int l9_405=l9_353.y;
bool l9_406=l9_359;
float l9_407=l9_360;
if ((l9_405==0)||(l9_405==3))
{
float l9_408=l9_404;
float l9_409=0.0;
float l9_410=1.0;
bool l9_411=l9_406;
float l9_412=l9_407;
float l9_413=fast::clamp(l9_408,l9_409,l9_410);
float l9_414=step(abs(l9_408-l9_413),9.9999997e-06);
l9_412*=(l9_414+((1.0-float(l9_411))*(1.0-l9_414)));
l9_408=l9_413;
l9_404=l9_408;
l9_407=l9_412;
}
l9_350.y=l9_404;
l9_360=l9_407;
float2 l9_415=l9_350;
int l9_416=l9_348;
int l9_417=l9_349;
float l9_418=l9_358;
float2 l9_419=l9_415;
int l9_420=l9_416;
int l9_421=l9_417;
float3 l9_422=float3(0.0);
if (l9_420==0)
{
l9_422=float3(l9_419,0.0);
}
else
{
if (l9_420==1)
{
l9_422=float3(l9_419.x,(l9_419.y*0.5)+(0.5-(float(l9_421)*0.5)),0.0);
}
else
{
l9_422=float3(l9_419,float(l9_421));
}
}
float3 l9_423=l9_422;
float3 l9_424=l9_423;
float4 l9_425=sc_set0.metallicRoughnessTexture.sample(sc_set0.metallicRoughnessTextureSmpSC,l9_424.xy,bias(l9_418));
float4 l9_426=l9_425;
if (l9_356)
{
l9_426=mix(l9_357,l9_426,float4(l9_360));
}
float4 l9_427=l9_426;
l9_341=l9_427;
float4 l9_428=l9_341;
float3 l9_429=l9_428.xyz;
l9_322*=l9_429.y;
N3_Roughness=l9_322;
}
float l9_430=N3_Opacity;
float l9_431;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_431=pow(l9_430,0.45454544);
}
else
{
l9_431=sqrt(l9_430);
}
float l9_432=l9_431;
N3_Opacity=l9_432;
if (N3_SheenEnable)
{
float3 l9_433=N3_Normal;
float l9_434=N3_SheenRoughnessFactor;
if (N3_EnableSheenRoughnessTexture)
{
int l9_435=N3_SheenRoughnessTextureCoord;
float2 l9_436=tempGlobals.Surface_UVCoord0;
float2 l9_437=l9_436;
if (l9_435==0)
{
float2 l9_438=tempGlobals.Surface_UVCoord0;
l9_437=l9_438;
}
if (l9_435==1)
{
float2 l9_439=tempGlobals.Surface_UVCoord1;
l9_437=l9_439;
}
float2 l9_440=l9_437;
float2 l9_441=l9_440;
if (N3_EnableTextureTransform&&N3_SheenRoughnessTextureTransform)
{
float2 l9_442=l9_441;
float2 l9_443=N3_SheenRoughnessTextureOffset;
float2 l9_444=N3_SheenRoughnessTextureScale;
float l9_445=N3_SheenRoughnessTextureRotation;
float l9_446=radians(l9_445);
float3x3 l9_447=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_443.x,l9_443.y,1.0));
float3x3 l9_448=float3x3(float3(cos(l9_446),sin(l9_446),0.0),float3(-sin(l9_446),cos(l9_446),0.0),float3(0.0,0.0,1.0));
float3x3 l9_449=float3x3(float3(l9_444.x,0.0,0.0),float3(0.0,l9_444.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_450=(l9_447*l9_448)*l9_449;
float2 l9_451=(l9_450*float3(l9_442,1.0)).xy;
l9_441=l9_451;
}
float2 l9_452=l9_441;
float4 l9_453=float4(0.0);
int l9_454;
if ((int(sheenRoughnessTextureHasSwappedViews_tmp)!=0))
{
int l9_455=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_455=0;
}
else
{
l9_455=in.varStereoViewID;
}
int l9_456=l9_455;
l9_454=1-l9_456;
}
else
{
int l9_457=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_457=0;
}
else
{
l9_457=in.varStereoViewID;
}
int l9_458=l9_457;
l9_454=l9_458;
}
int l9_459=l9_454;
int l9_460=sheenRoughnessTextureLayout_tmp;
int l9_461=l9_459;
float2 l9_462=l9_452;
bool l9_463=(int(SC_USE_UV_TRANSFORM_sheenRoughnessTexture_tmp)!=0);
float3x3 l9_464=(*sc_set0.UserUniforms).sheenRoughnessTextureTransform;
int2 l9_465=int2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture_tmp);
bool l9_466=(int(SC_USE_UV_MIN_MAX_sheenRoughnessTexture_tmp)!=0);
float4 l9_467=(*sc_set0.UserUniforms).sheenRoughnessTextureUvMinMax;
bool l9_468=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture_tmp)!=0);
float4 l9_469=(*sc_set0.UserUniforms).sheenRoughnessTextureBorderColor;
float l9_470=0.0;
bool l9_471=l9_468&&(!l9_466);
float l9_472=1.0;
float l9_473=l9_462.x;
int l9_474=l9_465.x;
if (l9_474==1)
{
l9_473=fract(l9_473);
}
else
{
if (l9_474==2)
{
float l9_475=fract(l9_473);
float l9_476=l9_473-l9_475;
float l9_477=step(0.25,fract(l9_476*0.5));
l9_473=mix(l9_475,1.0-l9_475,fast::clamp(l9_477,0.0,1.0));
}
}
l9_462.x=l9_473;
float l9_478=l9_462.y;
int l9_479=l9_465.y;
if (l9_479==1)
{
l9_478=fract(l9_478);
}
else
{
if (l9_479==2)
{
float l9_480=fract(l9_478);
float l9_481=l9_478-l9_480;
float l9_482=step(0.25,fract(l9_481*0.5));
l9_478=mix(l9_480,1.0-l9_480,fast::clamp(l9_482,0.0,1.0));
}
}
l9_462.y=l9_478;
if (l9_466)
{
bool l9_483=l9_468;
bool l9_484;
if (l9_483)
{
l9_484=l9_465.x==3;
}
else
{
l9_484=l9_483;
}
float l9_485=l9_462.x;
float l9_486=l9_467.x;
float l9_487=l9_467.z;
bool l9_488=l9_484;
float l9_489=l9_472;
float l9_490=fast::clamp(l9_485,l9_486,l9_487);
float l9_491=step(abs(l9_485-l9_490),9.9999997e-06);
l9_489*=(l9_491+((1.0-float(l9_488))*(1.0-l9_491)));
l9_485=l9_490;
l9_462.x=l9_485;
l9_472=l9_489;
bool l9_492=l9_468;
bool l9_493;
if (l9_492)
{
l9_493=l9_465.y==3;
}
else
{
l9_493=l9_492;
}
float l9_494=l9_462.y;
float l9_495=l9_467.y;
float l9_496=l9_467.w;
bool l9_497=l9_493;
float l9_498=l9_472;
float l9_499=fast::clamp(l9_494,l9_495,l9_496);
float l9_500=step(abs(l9_494-l9_499),9.9999997e-06);
l9_498*=(l9_500+((1.0-float(l9_497))*(1.0-l9_500)));
l9_494=l9_499;
l9_462.y=l9_494;
l9_472=l9_498;
}
float2 l9_501=l9_462;
bool l9_502=l9_463;
float3x3 l9_503=l9_464;
if (l9_502)
{
l9_501=float2((l9_503*float3(l9_501,1.0)).xy);
}
float2 l9_504=l9_501;
l9_462=l9_504;
float l9_505=l9_462.x;
int l9_506=l9_465.x;
bool l9_507=l9_471;
float l9_508=l9_472;
if ((l9_506==0)||(l9_506==3))
{
float l9_509=l9_505;
float l9_510=0.0;
float l9_511=1.0;
bool l9_512=l9_507;
float l9_513=l9_508;
float l9_514=fast::clamp(l9_509,l9_510,l9_511);
float l9_515=step(abs(l9_509-l9_514),9.9999997e-06);
l9_513*=(l9_515+((1.0-float(l9_512))*(1.0-l9_515)));
l9_509=l9_514;
l9_505=l9_509;
l9_508=l9_513;
}
l9_462.x=l9_505;
l9_472=l9_508;
float l9_516=l9_462.y;
int l9_517=l9_465.y;
bool l9_518=l9_471;
float l9_519=l9_472;
if ((l9_517==0)||(l9_517==3))
{
float l9_520=l9_516;
float l9_521=0.0;
float l9_522=1.0;
bool l9_523=l9_518;
float l9_524=l9_519;
float l9_525=fast::clamp(l9_520,l9_521,l9_522);
float l9_526=step(abs(l9_520-l9_525),9.9999997e-06);
l9_524*=(l9_526+((1.0-float(l9_523))*(1.0-l9_526)));
l9_520=l9_525;
l9_516=l9_520;
l9_519=l9_524;
}
l9_462.y=l9_516;
l9_472=l9_519;
float2 l9_527=l9_462;
int l9_528=l9_460;
int l9_529=l9_461;
float l9_530=l9_470;
float2 l9_531=l9_527;
int l9_532=l9_528;
int l9_533=l9_529;
float3 l9_534=float3(0.0);
if (l9_532==0)
{
l9_534=float3(l9_531,0.0);
}
else
{
if (l9_532==1)
{
l9_534=float3(l9_531.x,(l9_531.y*0.5)+(0.5-(float(l9_533)*0.5)),0.0);
}
else
{
l9_534=float3(l9_531,float(l9_533));
}
}
float3 l9_535=l9_534;
float3 l9_536=l9_535;
float4 l9_537=sc_set0.sheenRoughnessTexture.sample(sc_set0.sheenRoughnessTextureSmpSC,l9_536.xy,bias(l9_530));
float4 l9_538=l9_537;
if (l9_468)
{
l9_538=mix(l9_469,l9_538,float4(l9_472));
}
float4 l9_539=l9_538;
l9_453=l9_539;
float4 l9_540=l9_453;
float l9_541=l9_540.w;
float l9_542;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_542=pow(l9_541,2.2);
}
else
{
l9_542=l9_541*l9_541;
}
float l9_543=l9_542;
l9_434*=l9_543;
}
l9_434=fast::max(l9_434,9.9999997e-05);
float3 l9_544=l9_433;
float3 l9_545=tempGlobals.ViewDirWS;
float3 l9_546=l9_545;
float3 l9_547=normalize(reflect(-l9_546,l9_544));
float3 l9_548=l9_547;
float l9_549=l9_434;
float l9_550=l9_549*4.0;
l9_550=3.0+(((l9_550-0.0)*2.0)/5.000001);
float3 l9_551=l9_548;
float l9_552=l9_550;
float3 l9_553=l9_551;
float l9_554=l9_552;
float3 l9_555=l9_553;
float l9_556=l9_554;
float3 l9_557=l9_555;
float l9_558=(*sc_set0.UserUniforms).sc_EnvmapRotation.y;
float2 l9_559=float2(0.0);
float l9_560=l9_557.x;
float l9_561=-l9_557.z;
float l9_562=(l9_560<0.0) ? (-1.0) : 1.0;
float l9_563=l9_562*acos(fast::clamp(l9_561/length(float2(l9_560,l9_561)),-1.0,1.0));
l9_559.x=l9_563-1.5707964;
l9_559.y=acos(l9_557.y);
l9_559/=float2(6.2831855,3.1415927);
l9_559.y=1.0-l9_559.y;
l9_559.x+=(l9_558/360.0);
l9_559.x=fract((l9_559.x+floor(l9_559.x))+1.0);
float2 l9_564=l9_559;
float2 l9_565=l9_564;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_566=floor(l9_556);
float l9_567=ceil(l9_556);
float2 l9_568=l9_565;
float2 l9_569=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_570=l9_566;
float2 l9_571=l9_565;
float2 l9_572=(*sc_set0.UserUniforms).sc_EnvmapSpecularSize.xy;
float l9_573=l9_567;
}
else
{
}
}
if (N3_ClearcoatEnable)
{
N3_ClearcoatRoughness=1.0;
N3_ClearcoatNormal=float3(0.0,0.0,1.0);
if (N3_EnableClearCoatRoughnessTexture)
{
int l9_574=N3_ClearcoatRoughnessTextureCoord;
float2 l9_575=tempGlobals.Surface_UVCoord0;
float2 l9_576=l9_575;
if (l9_574==0)
{
float2 l9_577=tempGlobals.Surface_UVCoord0;
l9_576=l9_577;
}
if (l9_574==1)
{
float2 l9_578=tempGlobals.Surface_UVCoord1;
l9_576=l9_578;
}
float2 l9_579=l9_576;
float2 l9_580=l9_579;
if (N3_EnableTextureTransform&&N3_ClearcoatRoughnessTextureTransform)
{
float2 l9_581=l9_580;
float2 l9_582=N3_ClearcoatRoughnessTextureOffset;
float2 l9_583=N3_ClearcoatRoughnessTextureScale;
float l9_584=N3_ClearcoatRoughnessTextureRotation;
float l9_585=radians(l9_584);
float3x3 l9_586=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_582.x,l9_582.y,1.0));
float3x3 l9_587=float3x3(float3(cos(l9_585),sin(l9_585),0.0),float3(-sin(l9_585),cos(l9_585),0.0),float3(0.0,0.0,1.0));
float3x3 l9_588=float3x3(float3(l9_583.x,0.0,0.0),float3(0.0,l9_583.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_589=(l9_586*l9_587)*l9_588;
float2 l9_590=(l9_589*float3(l9_581,1.0)).xy;
l9_580=l9_590;
}
float2 l9_591=l9_580;
float4 l9_592=float4(0.0);
int l9_593;
if ((int(clearcoatRoughnessTextureHasSwappedViews_tmp)!=0))
{
int l9_594=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_594=0;
}
else
{
l9_594=in.varStereoViewID;
}
int l9_595=l9_594;
l9_593=1-l9_595;
}
else
{
int l9_596=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_596=0;
}
else
{
l9_596=in.varStereoViewID;
}
int l9_597=l9_596;
l9_593=l9_597;
}
int l9_598=l9_593;
int l9_599=clearcoatRoughnessTextureLayout_tmp;
int l9_600=l9_598;
float2 l9_601=l9_591;
bool l9_602=(int(SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture_tmp)!=0);
float3x3 l9_603=(*sc_set0.UserUniforms).clearcoatRoughnessTextureTransform;
int2 l9_604=int2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture_tmp);
bool l9_605=(int(SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture_tmp)!=0);
float4 l9_606=(*sc_set0.UserUniforms).clearcoatRoughnessTextureUvMinMax;
bool l9_607=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture_tmp)!=0);
float4 l9_608=(*sc_set0.UserUniforms).clearcoatRoughnessTextureBorderColor;
float l9_609=0.0;
bool l9_610=l9_607&&(!l9_605);
float l9_611=1.0;
float l9_612=l9_601.x;
int l9_613=l9_604.x;
if (l9_613==1)
{
l9_612=fract(l9_612);
}
else
{
if (l9_613==2)
{
float l9_614=fract(l9_612);
float l9_615=l9_612-l9_614;
float l9_616=step(0.25,fract(l9_615*0.5));
l9_612=mix(l9_614,1.0-l9_614,fast::clamp(l9_616,0.0,1.0));
}
}
l9_601.x=l9_612;
float l9_617=l9_601.y;
int l9_618=l9_604.y;
if (l9_618==1)
{
l9_617=fract(l9_617);
}
else
{
if (l9_618==2)
{
float l9_619=fract(l9_617);
float l9_620=l9_617-l9_619;
float l9_621=step(0.25,fract(l9_620*0.5));
l9_617=mix(l9_619,1.0-l9_619,fast::clamp(l9_621,0.0,1.0));
}
}
l9_601.y=l9_617;
if (l9_605)
{
bool l9_622=l9_607;
bool l9_623;
if (l9_622)
{
l9_623=l9_604.x==3;
}
else
{
l9_623=l9_622;
}
float l9_624=l9_601.x;
float l9_625=l9_606.x;
float l9_626=l9_606.z;
bool l9_627=l9_623;
float l9_628=l9_611;
float l9_629=fast::clamp(l9_624,l9_625,l9_626);
float l9_630=step(abs(l9_624-l9_629),9.9999997e-06);
l9_628*=(l9_630+((1.0-float(l9_627))*(1.0-l9_630)));
l9_624=l9_629;
l9_601.x=l9_624;
l9_611=l9_628;
bool l9_631=l9_607;
bool l9_632;
if (l9_631)
{
l9_632=l9_604.y==3;
}
else
{
l9_632=l9_631;
}
float l9_633=l9_601.y;
float l9_634=l9_606.y;
float l9_635=l9_606.w;
bool l9_636=l9_632;
float l9_637=l9_611;
float l9_638=fast::clamp(l9_633,l9_634,l9_635);
float l9_639=step(abs(l9_633-l9_638),9.9999997e-06);
l9_637*=(l9_639+((1.0-float(l9_636))*(1.0-l9_639)));
l9_633=l9_638;
l9_601.y=l9_633;
l9_611=l9_637;
}
float2 l9_640=l9_601;
bool l9_641=l9_602;
float3x3 l9_642=l9_603;
if (l9_641)
{
l9_640=float2((l9_642*float3(l9_640,1.0)).xy);
}
float2 l9_643=l9_640;
l9_601=l9_643;
float l9_644=l9_601.x;
int l9_645=l9_604.x;
bool l9_646=l9_610;
float l9_647=l9_611;
if ((l9_645==0)||(l9_645==3))
{
float l9_648=l9_644;
float l9_649=0.0;
float l9_650=1.0;
bool l9_651=l9_646;
float l9_652=l9_647;
float l9_653=fast::clamp(l9_648,l9_649,l9_650);
float l9_654=step(abs(l9_648-l9_653),9.9999997e-06);
l9_652*=(l9_654+((1.0-float(l9_651))*(1.0-l9_654)));
l9_648=l9_653;
l9_644=l9_648;
l9_647=l9_652;
}
l9_601.x=l9_644;
l9_611=l9_647;
float l9_655=l9_601.y;
int l9_656=l9_604.y;
bool l9_657=l9_610;
float l9_658=l9_611;
if ((l9_656==0)||(l9_656==3))
{
float l9_659=l9_655;
float l9_660=0.0;
float l9_661=1.0;
bool l9_662=l9_657;
float l9_663=l9_658;
float l9_664=fast::clamp(l9_659,l9_660,l9_661);
float l9_665=step(abs(l9_659-l9_664),9.9999997e-06);
l9_663*=(l9_665+((1.0-float(l9_662))*(1.0-l9_665)));
l9_659=l9_664;
l9_655=l9_659;
l9_658=l9_663;
}
l9_601.y=l9_655;
l9_611=l9_658;
float2 l9_666=l9_601;
int l9_667=l9_599;
int l9_668=l9_600;
float l9_669=l9_609;
float2 l9_670=l9_666;
int l9_671=l9_667;
int l9_672=l9_668;
float3 l9_673=float3(0.0);
if (l9_671==0)
{
l9_673=float3(l9_670,0.0);
}
else
{
if (l9_671==1)
{
l9_673=float3(l9_670.x,(l9_670.y*0.5)+(0.5-(float(l9_672)*0.5)),0.0);
}
else
{
l9_673=float3(l9_670,float(l9_672));
}
}
float3 l9_674=l9_673;
float3 l9_675=l9_674;
float4 l9_676=sc_set0.clearcoatRoughnessTexture.sample(sc_set0.clearcoatRoughnessTextureSmpSC,l9_675.xy,bias(l9_669));
float4 l9_677=l9_676;
if (l9_607)
{
l9_677=mix(l9_608,l9_677,float4(l9_611));
}
float4 l9_678=l9_677;
l9_592=l9_678;
float4 l9_679=l9_592;
float l9_680=l9_679.y;
float l9_681;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_681=pow(l9_680,2.2);
}
else
{
l9_681=l9_680*l9_680;
}
float l9_682=l9_681;
N3_ClearcoatRoughness=l9_682;
}
N3_ClearcoatRoughness*=N3_ClearcoatRoughnessFactor;
if (N3_EnableClearCoatNormalTexture)
{
int l9_683=N3_ClearcoatNormalMapCoord;
float2 l9_684=tempGlobals.Surface_UVCoord0;
float2 l9_685=l9_684;
if (l9_683==0)
{
float2 l9_686=tempGlobals.Surface_UVCoord0;
l9_685=l9_686;
}
if (l9_683==1)
{
float2 l9_687=tempGlobals.Surface_UVCoord1;
l9_685=l9_687;
}
float2 l9_688=l9_685;
float2 l9_689=l9_688;
if (N3_EnableTextureTransform&&N3_ClearcoatNormalTextureTransform)
{
float2 l9_690=l9_689;
float2 l9_691=N3_ClearcoatNormalTextureOffset;
float2 l9_692=N3_ClearcoatNormalTextureScale;
float l9_693=N3_ClearcoatNormalTextureRotation;
float l9_694=radians(l9_693);
float3x3 l9_695=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_691.x,l9_691.y,1.0));
float3x3 l9_696=float3x3(float3(cos(l9_694),sin(l9_694),0.0),float3(-sin(l9_694),cos(l9_694),0.0),float3(0.0,0.0,1.0));
float3x3 l9_697=float3x3(float3(l9_692.x,0.0,0.0),float3(0.0,l9_692.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_698=(l9_695*l9_696)*l9_697;
float2 l9_699=(l9_698*float3(l9_690,1.0)).xy;
l9_689=l9_699;
}
float2 l9_700=l9_689;
float4 l9_701=float4(0.0);
int l9_702;
if ((int(clearcoatNormalTextureHasSwappedViews_tmp)!=0))
{
int l9_703=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_703=0;
}
else
{
l9_703=in.varStereoViewID;
}
int l9_704=l9_703;
l9_702=1-l9_704;
}
else
{
int l9_705=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_705=0;
}
else
{
l9_705=in.varStereoViewID;
}
int l9_706=l9_705;
l9_702=l9_706;
}
int l9_707=l9_702;
int l9_708=clearcoatNormalTextureLayout_tmp;
int l9_709=l9_707;
float2 l9_710=l9_700;
bool l9_711=(int(SC_USE_UV_TRANSFORM_clearcoatNormalTexture_tmp)!=0);
float3x3 l9_712=(*sc_set0.UserUniforms).clearcoatNormalTextureTransform;
int2 l9_713=int2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture_tmp);
bool l9_714=(int(SC_USE_UV_MIN_MAX_clearcoatNormalTexture_tmp)!=0);
float4 l9_715=(*sc_set0.UserUniforms).clearcoatNormalTextureUvMinMax;
bool l9_716=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture_tmp)!=0);
float4 l9_717=(*sc_set0.UserUniforms).clearcoatNormalTextureBorderColor;
float l9_718=0.0;
bool l9_719=l9_716&&(!l9_714);
float l9_720=1.0;
float l9_721=l9_710.x;
int l9_722=l9_713.x;
if (l9_722==1)
{
l9_721=fract(l9_721);
}
else
{
if (l9_722==2)
{
float l9_723=fract(l9_721);
float l9_724=l9_721-l9_723;
float l9_725=step(0.25,fract(l9_724*0.5));
l9_721=mix(l9_723,1.0-l9_723,fast::clamp(l9_725,0.0,1.0));
}
}
l9_710.x=l9_721;
float l9_726=l9_710.y;
int l9_727=l9_713.y;
if (l9_727==1)
{
l9_726=fract(l9_726);
}
else
{
if (l9_727==2)
{
float l9_728=fract(l9_726);
float l9_729=l9_726-l9_728;
float l9_730=step(0.25,fract(l9_729*0.5));
l9_726=mix(l9_728,1.0-l9_728,fast::clamp(l9_730,0.0,1.0));
}
}
l9_710.y=l9_726;
if (l9_714)
{
bool l9_731=l9_716;
bool l9_732;
if (l9_731)
{
l9_732=l9_713.x==3;
}
else
{
l9_732=l9_731;
}
float l9_733=l9_710.x;
float l9_734=l9_715.x;
float l9_735=l9_715.z;
bool l9_736=l9_732;
float l9_737=l9_720;
float l9_738=fast::clamp(l9_733,l9_734,l9_735);
float l9_739=step(abs(l9_733-l9_738),9.9999997e-06);
l9_737*=(l9_739+((1.0-float(l9_736))*(1.0-l9_739)));
l9_733=l9_738;
l9_710.x=l9_733;
l9_720=l9_737;
bool l9_740=l9_716;
bool l9_741;
if (l9_740)
{
l9_741=l9_713.y==3;
}
else
{
l9_741=l9_740;
}
float l9_742=l9_710.y;
float l9_743=l9_715.y;
float l9_744=l9_715.w;
bool l9_745=l9_741;
float l9_746=l9_720;
float l9_747=fast::clamp(l9_742,l9_743,l9_744);
float l9_748=step(abs(l9_742-l9_747),9.9999997e-06);
l9_746*=(l9_748+((1.0-float(l9_745))*(1.0-l9_748)));
l9_742=l9_747;
l9_710.y=l9_742;
l9_720=l9_746;
}
float2 l9_749=l9_710;
bool l9_750=l9_711;
float3x3 l9_751=l9_712;
if (l9_750)
{
l9_749=float2((l9_751*float3(l9_749,1.0)).xy);
}
float2 l9_752=l9_749;
l9_710=l9_752;
float l9_753=l9_710.x;
int l9_754=l9_713.x;
bool l9_755=l9_719;
float l9_756=l9_720;
if ((l9_754==0)||(l9_754==3))
{
float l9_757=l9_753;
float l9_758=0.0;
float l9_759=1.0;
bool l9_760=l9_755;
float l9_761=l9_756;
float l9_762=fast::clamp(l9_757,l9_758,l9_759);
float l9_763=step(abs(l9_757-l9_762),9.9999997e-06);
l9_761*=(l9_763+((1.0-float(l9_760))*(1.0-l9_763)));
l9_757=l9_762;
l9_753=l9_757;
l9_756=l9_761;
}
l9_710.x=l9_753;
l9_720=l9_756;
float l9_764=l9_710.y;
int l9_765=l9_713.y;
bool l9_766=l9_719;
float l9_767=l9_720;
if ((l9_765==0)||(l9_765==3))
{
float l9_768=l9_764;
float l9_769=0.0;
float l9_770=1.0;
bool l9_771=l9_766;
float l9_772=l9_767;
float l9_773=fast::clamp(l9_768,l9_769,l9_770);
float l9_774=step(abs(l9_768-l9_773),9.9999997e-06);
l9_772*=(l9_774+((1.0-float(l9_771))*(1.0-l9_774)));
l9_768=l9_773;
l9_764=l9_768;
l9_767=l9_772;
}
l9_710.y=l9_764;
l9_720=l9_767;
float2 l9_775=l9_710;
int l9_776=l9_708;
int l9_777=l9_709;
float l9_778=l9_718;
float2 l9_779=l9_775;
int l9_780=l9_776;
int l9_781=l9_777;
float3 l9_782=float3(0.0);
if (l9_780==0)
{
l9_782=float3(l9_779,0.0);
}
else
{
if (l9_780==1)
{
l9_782=float3(l9_779.x,(l9_779.y*0.5)+(0.5-(float(l9_781)*0.5)),0.0);
}
else
{
l9_782=float3(l9_779,float(l9_781));
}
}
float3 l9_783=l9_782;
float3 l9_784=l9_783;
float4 l9_785=sc_set0.clearcoatNormalTexture.sample(sc_set0.clearcoatNormalTextureSmpSC,l9_784.xy,bias(l9_778));
float4 l9_786=l9_785;
if (l9_716)
{
l9_786=mix(l9_717,l9_786,float4(l9_720));
}
float4 l9_787=l9_786;
l9_701=l9_787;
float4 l9_788=l9_701;
N3_ClearcoatNormal=l9_788.xyz;
N3_ClearcoatNormal*=0.9921875;
}
}
l9_203=N3_Opacity;
l9_204=N3_Normal;
l9_205=N3_Roughness;
l9_206=N3_ClearcoatNormal;
l9_207=N3_ClearcoatRoughness;
l9_177=l9_203;
l9_178=l9_204;
l9_179=l9_205;
l9_180=l9_206;
l9_181=l9_207;
float l9_789=l9_177;
float3 l9_790=l9_178;
float l9_791=l9_179;
ssGlobals l9_792=param;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_792.BumpedNormal=l9_790;
}
l9_789=fast::clamp(l9_789,0.0,1.0);
float l9_793=l9_789;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_793<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_794=gl_FragCoord;
float2 l9_795=floor(mod(l9_794.xy,float2(4.0)));
float l9_796=(mod(dot(l9_795,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_793<l9_796)
{
discard_fragment();
}
}
float3 l9_797=l9_792.PositionWS;
float3 l9_798=l9_792.BumpedNormal;
float l9_799=l9_791;
float3 l9_800=l9_797;
float3 l9_801=l9_798;
float l9_802=l9_799;
uint l9_803=0u;
uint3 l9_804=uint3(round((l9_800-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_804.x,l9_804.y,l9_804.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_805=l9_801;
float l9_806=dot(abs(l9_805),float3(1.0));
l9_805/=float3(l9_806);
float2 l9_807=float2(fast::clamp(-l9_805.z,0.0,1.0));
float2 l9_808=l9_805.xy+mix(-l9_807,l9_807,step(float2(0.0),l9_805.xy));
uint l9_809=as_type<uint>(half2(l9_808));
uint2 l9_810=uint2(l9_809&65535u,l9_809>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_810.x,l9_810.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_803;
uint l9_811=uint(fast::clamp(l9_802,0.0,1.0)*1000.0);
l9_811 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_811;
float l9_812=(*sc_set0.UserUniforms).Port_Opacity_N405;
float3 l9_813=l9_180;
float l9_814=l9_181;
ssGlobals l9_815=param;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
l9_815.BumpedNormal=float3x3(float3(l9_815.VertexTangent_WorldSpace),float3(l9_815.VertexBinormal_WorldSpace),float3(l9_815.VertexNormal_WorldSpace))*l9_813;
}
float l9_816=l9_812;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_816<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_817=gl_FragCoord;
float2 l9_818=floor(mod(l9_817.xy,float2(4.0)));
float l9_819=(mod(dot(l9_818,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_816<l9_819)
{
discard_fragment();
}
}
float3 l9_820=l9_815.PositionWS;
float3 l9_821=l9_815.BumpedNormal;
float l9_822=l9_814;
float3 l9_823=l9_820;
float3 l9_824=l9_821;
float l9_825=l9_822;
uint l9_826=0u;
uint3 l9_827=uint3(round((l9_823-(*sc_set0.UserUniforms).sc_RayTracingOriginOffset)*(*sc_set0.UserUniforms).sc_RayTracingOriginScale));
out.sc_RayTracingPositionAndMask=uint4(l9_827.x,l9_827.y,l9_827.z,out.sc_RayTracingPositionAndMask.w);
out.sc_RayTracingPositionAndMask.w=(*sc_set0.UserUniforms).sc_RayTracingReceiverMask;
float3 l9_828=l9_824;
float l9_829=dot(abs(l9_828),float3(1.0));
l9_828/=float3(l9_829);
float2 l9_830=float2(fast::clamp(-l9_828.z,0.0,1.0));
float2 l9_831=l9_828.xy+mix(-l9_830,l9_830,step(float2(0.0),l9_828.xy));
uint l9_832=as_type<uint>(half2(l9_831));
uint2 l9_833=uint2(l9_832&65535u,l9_832>>16u);
out.sc_RayTracingNormalAndMore=uint4(l9_833.x,l9_833.y,out.sc_RayTracingNormalAndMore.z,out.sc_RayTracingNormalAndMore.w);
out.sc_RayTracingNormalAndMore.z=l9_826;
uint l9_834=uint(fast::clamp(l9_825,0.0,1.0)*1000.0);
l9_834 |= (((*sc_set0.UserUniforms).sc_RayTracingReceiverId%32u)<<10u);
out.sc_RayTracingNormalAndMore.w=l9_834;
ssGlobals l9_835=param;
tempGlobals=l9_835;
}
else
{
float4 l9_836=float4(0.0);
float4 l9_837=(*sc_set0.UserUniforms).baseColorFactor;
l9_836=l9_837;
float2 l9_838=float2(0.0);
float2 l9_839=(*sc_set0.UserUniforms).baseColorTexture_offset;
l9_838=l9_839;
float2 l9_840=float2(0.0);
float2 l9_841=(*sc_set0.UserUniforms).baseColorTexture_scale;
l9_840=l9_841;
float l9_842=0.0;
float l9_843=(*sc_set0.UserUniforms).baseColorTexture_rotation;
l9_842=l9_843;
float4 l9_844=l9_836;
float2 l9_845=l9_838;
float2 l9_846=l9_840;
float l9_847=l9_842;
ssGlobals l9_848=param;
tempGlobals=l9_848;
N35_EnableVertexColor=(int(ENABLE_VERTEX_COLOR_BASE_tmp)!=0);
N35_EnableBaseTexture=(int(ENABLE_BASE_TEX_tmp)!=0);
N35_BaseColorTextureCoord=NODE_7_DROPLIST_ITEM_tmp;
N35_BaseColorFactor=l9_844;
N35_EnableTextureTransform=(int(ENABLE_TEXTURE_TRANSFORM_tmp)!=0);
N35_BaseTextureTransform=(int(ENABLE_BASE_TEXTURE_TRANSFORM_tmp)!=0);
N35_BaseTextureOffset=l9_845;
N35_BaseTextureScale=l9_846;
N35_BaseTextureRotation=l9_847;
float4 l9_849=N35_BaseColorFactor;
if (N35_EnableBaseTexture)
{
int l9_850=N35_BaseColorTextureCoord;
float2 l9_851=tempGlobals.Surface_UVCoord0;
float2 l9_852=l9_851;
if (l9_850==0)
{
float2 l9_853=tempGlobals.Surface_UVCoord0;
l9_852=l9_853;
}
if (l9_850==1)
{
float2 l9_854=tempGlobals.Surface_UVCoord1;
l9_852=l9_854;
}
float2 l9_855=l9_852;
float2 l9_856=l9_855;
if (N35_EnableTextureTransform&&N35_BaseTextureTransform)
{
float2 l9_857=l9_856;
float2 l9_858=N35_BaseTextureOffset;
float2 l9_859=N35_BaseTextureScale;
float l9_860=N35_BaseTextureRotation;
float3x3 l9_861=float3x3(float3(1.0,0.0,0.0),float3(0.0,1.0,0.0),float3(l9_858.x,l9_858.y,1.0));
float3x3 l9_862=float3x3(float3(cos(l9_860),sin(l9_860),0.0),float3(-sin(l9_860),cos(l9_860),0.0),float3(0.0,0.0,1.0));
float3x3 l9_863=float3x3(float3(l9_859.x,0.0,0.0),float3(0.0,l9_859.y,0.0),float3(0.0,0.0,1.0));
float3x3 l9_864=(l9_861*l9_862)*l9_863;
float2 l9_865=(l9_864*float3(l9_857,1.0)).xy;
l9_856=l9_865;
}
float2 l9_866=l9_856;
float4 l9_867=float4(0.0);
int l9_868;
if ((int(baseColorTextureHasSwappedViews_tmp)!=0))
{
int l9_869=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_869=0;
}
else
{
l9_869=in.varStereoViewID;
}
int l9_870=l9_869;
l9_868=1-l9_870;
}
else
{
int l9_871=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_871=0;
}
else
{
l9_871=in.varStereoViewID;
}
int l9_872=l9_871;
l9_868=l9_872;
}
int l9_873=l9_868;
int l9_874=baseColorTextureLayout_tmp;
int l9_875=l9_873;
float2 l9_876=l9_866;
bool l9_877=(int(SC_USE_UV_TRANSFORM_baseColorTexture_tmp)!=0);
float3x3 l9_878=(*sc_set0.UserUniforms).baseColorTextureTransform;
int2 l9_879=int2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture_tmp);
bool l9_880=(int(SC_USE_UV_MIN_MAX_baseColorTexture_tmp)!=0);
float4 l9_881=(*sc_set0.UserUniforms).baseColorTextureUvMinMax;
bool l9_882=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture_tmp)!=0);
float4 l9_883=(*sc_set0.UserUniforms).baseColorTextureBorderColor;
float l9_884=0.0;
bool l9_885=l9_882&&(!l9_880);
float l9_886=1.0;
float l9_887=l9_876.x;
int l9_888=l9_879.x;
if (l9_888==1)
{
l9_887=fract(l9_887);
}
else
{
if (l9_888==2)
{
float l9_889=fract(l9_887);
float l9_890=l9_887-l9_889;
float l9_891=step(0.25,fract(l9_890*0.5));
l9_887=mix(l9_889,1.0-l9_889,fast::clamp(l9_891,0.0,1.0));
}
}
l9_876.x=l9_887;
float l9_892=l9_876.y;
int l9_893=l9_879.y;
if (l9_893==1)
{
l9_892=fract(l9_892);
}
else
{
if (l9_893==2)
{
float l9_894=fract(l9_892);
float l9_895=l9_892-l9_894;
float l9_896=step(0.25,fract(l9_895*0.5));
l9_892=mix(l9_894,1.0-l9_894,fast::clamp(l9_896,0.0,1.0));
}
}
l9_876.y=l9_892;
if (l9_880)
{
bool l9_897=l9_882;
bool l9_898;
if (l9_897)
{
l9_898=l9_879.x==3;
}
else
{
l9_898=l9_897;
}
float l9_899=l9_876.x;
float l9_900=l9_881.x;
float l9_901=l9_881.z;
bool l9_902=l9_898;
float l9_903=l9_886;
float l9_904=fast::clamp(l9_899,l9_900,l9_901);
float l9_905=step(abs(l9_899-l9_904),9.9999997e-06);
l9_903*=(l9_905+((1.0-float(l9_902))*(1.0-l9_905)));
l9_899=l9_904;
l9_876.x=l9_899;
l9_886=l9_903;
bool l9_906=l9_882;
bool l9_907;
if (l9_906)
{
l9_907=l9_879.y==3;
}
else
{
l9_907=l9_906;
}
float l9_908=l9_876.y;
float l9_909=l9_881.y;
float l9_910=l9_881.w;
bool l9_911=l9_907;
float l9_912=l9_886;
float l9_913=fast::clamp(l9_908,l9_909,l9_910);
float l9_914=step(abs(l9_908-l9_913),9.9999997e-06);
l9_912*=(l9_914+((1.0-float(l9_911))*(1.0-l9_914)));
l9_908=l9_913;
l9_876.y=l9_908;
l9_886=l9_912;
}
float2 l9_915=l9_876;
bool l9_916=l9_877;
float3x3 l9_917=l9_878;
if (l9_916)
{
l9_915=float2((l9_917*float3(l9_915,1.0)).xy);
}
float2 l9_918=l9_915;
l9_876=l9_918;
float l9_919=l9_876.x;
int l9_920=l9_879.x;
bool l9_921=l9_885;
float l9_922=l9_886;
if ((l9_920==0)||(l9_920==3))
{
float l9_923=l9_919;
float l9_924=0.0;
float l9_925=1.0;
bool l9_926=l9_921;
float l9_927=l9_922;
float l9_928=fast::clamp(l9_923,l9_924,l9_925);
float l9_929=step(abs(l9_923-l9_928),9.9999997e-06);
l9_927*=(l9_929+((1.0-float(l9_926))*(1.0-l9_929)));
l9_923=l9_928;
l9_919=l9_923;
l9_922=l9_927;
}
l9_876.x=l9_919;
l9_886=l9_922;
float l9_930=l9_876.y;
int l9_931=l9_879.y;
bool l9_932=l9_885;
float l9_933=l9_886;
if ((l9_931==0)||(l9_931==3))
{
float l9_934=l9_930;
float l9_935=0.0;
float l9_936=1.0;
bool l9_937=l9_932;
float l9_938=l9_933;
float l9_939=fast::clamp(l9_934,l9_935,l9_936);
float l9_940=step(abs(l9_934-l9_939),9.9999997e-06);
l9_938*=(l9_940+((1.0-float(l9_937))*(1.0-l9_940)));
l9_934=l9_939;
l9_930=l9_934;
l9_933=l9_938;
}
l9_876.y=l9_930;
l9_886=l9_933;
float2 l9_941=l9_876;
int l9_942=l9_874;
int l9_943=l9_875;
float l9_944=l9_884;
float2 l9_945=l9_941;
int l9_946=l9_942;
int l9_947=l9_943;
float3 l9_948=float3(0.0);
if (l9_946==0)
{
l9_948=float3(l9_945,0.0);
}
else
{
if (l9_946==1)
{
l9_948=float3(l9_945.x,(l9_945.y*0.5)+(0.5-(float(l9_947)*0.5)),0.0);
}
else
{
l9_948=float3(l9_945,float(l9_947));
}
}
float3 l9_949=l9_948;
float3 l9_950=l9_949;
float4 l9_951=sc_set0.baseColorTexture.sample(sc_set0.baseColorTextureSmpSC,l9_950.xy,bias(l9_944));
float4 l9_952=l9_951;
if (l9_882)
{
l9_952=mix(l9_883,l9_952,float4(l9_886));
}
float4 l9_953=l9_952;
l9_867=l9_953;
float4 l9_954=l9_867;
float4 l9_955=l9_954;
float4 l9_956;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_956=float4(pow(l9_955.x,2.2),pow(l9_955.y,2.2),pow(l9_955.z,2.2),pow(l9_955.w,2.2));
}
else
{
l9_956=l9_955*l9_955;
}
float4 l9_957=l9_956;
l9_849*=l9_957;
}
if (N35_EnableVertexColor)
{
float4 l9_958=tempGlobals.VertexColor;
l9_849*=l9_958;
}
N35_Opacity=l9_849.w;
}
return out;
}
} // RECEIVER MODE SHADER
