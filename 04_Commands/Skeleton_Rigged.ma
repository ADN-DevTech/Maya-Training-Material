//Maya ASCII 2014 scene
//Name: Skeleton_Rigged.ma
//Last modified: Sat, May 04, 2013 10:08:57 AM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "gs_projCamMix" -nodeType "gs_const"
		 -nodeType "abcimport" -nodeType "mia_physicalsun" -nodeType "mia_physicalsky" -nodeType "mia_material"
		 -nodeType "mia_material_x" -nodeType "mia_roundcorners" -nodeType "mia_exposure_simple"
		 -nodeType "mia_portal_light" -nodeType "mia_light_surface" -nodeType "mia_exposure_photographic"
		 -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh" -nodeType "mia_envblur"
		 -nodeType "mia_ciesky" -nodeType "mia_photometric_light" -nodeType "mib_texture_vector"
		 -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate" -nodeType "mib_bump_basis"
		 -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map" -nodeType "mib_bump_map2"
		 -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1" -nodeType "mib_lookup_cube6"
		 -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical" -nodeType "mib_texture_lookup"
		 -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup" -nodeType "mib_texture_checkerboard"
		 -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere" -nodeType "mib_texture_turbulence"
		 -nodeType "mib_texture_wave" -nodeType "mib_reflect" -nodeType "mib_refract" -nodeType "mib_transparency"
		 -nodeType "mib_continue" -nodeType "mib_opacity" -nodeType "mib_twosided" -nodeType "mib_refraction_index"
		 -nodeType "mib_dielectric" -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert"
		 -nodeType "mib_illum_phong" -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv"
		 -nodeType "mib_illum_blinn" -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair"
		 -nodeType "mib_volume" -nodeType "mib_color_alpha" -nodeType "mib_color_average"
		 -nodeType "mib_color_intensity" -nodeType "mib_color_interpolate" -nodeType "mib_color_mix"
		 -nodeType "mib_color_spread" -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere"
		 -nodeType "mib_geo_cone" -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square"
		 -nodeType "mib_geo_instance" -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf"
		 -nodeType "mib_photon_basic" -nodeType "mib_light_infinite" -nodeType "mib_light_point"
		 -nodeType "mib_light_spot" -nodeType "mib_light_photometric" -nodeType "mib_cie_d"
		 -nodeType "mib_blackbody" -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil"
		 -nodeType "mib_lens_clamp" -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample"
		 -nodeType "mib_amb_occlusion" -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar"
		 -nodeType "mib_map_get_integer" -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color"
		 -nodeType "mib_map_get_transform" -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array"
		 -nodeType "mib_fg_occlusion" -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection"
		 -nodeType "mib_glossy_refraction" -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l foot -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201302230455-863593";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.2042796606312569 8.778420732907751 9.1334496169784511 ;
	setAttr ".r" -type "double3" -27.347365903571145 705.79999999973268 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 12.5855487580888;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.14446818288877625 4.0361697590879508 100 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 3.331379491476445;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100 3.520696848908166 -0.33602226005672481 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 4.0321193491262663;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Dummy_Root";
createNode locator -n "Dummy_RootShape" -p "Dummy_Root";
	setAttr -k off ".v";
createNode transform -n "MainBody" -p "Dummy_Root";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.0649960503902493e-031 3.8920157988064581 -0.21818804765762567 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "MainBodyShape" -p "MainBody";
	setAttr -k off ".v";
createNode transform -n "MidRot" -p "MainBody";
createNode transform -n "MidBackGRP" -p "MidRot";
	setAttr ".t" -type "double3" 1.0575748215805873e-016 0.53798725887708054 -0.010076576092230106 ;
createNode transform -n "MidBackLocator" -p "MidBackGRP";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.780548606924951e-016 0 0.023343776453061564 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "MidBackLocatorShape" -p "MidBackLocator";
	setAttr -k off ".v";
createNode ikHandle -n "MidBackIK" -p "MidBackLocator";
	setAttr ".pv" -type "double3" 3.7784719450119188e-008 0.12974545229963053 -5.2612004293324128 ;
	setAttr ".twi" 4.058206592578476e-007;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "MidBackIK_pointConstraint1" -p "MidBackIK";
	addAttr -ci true -sn "w0" -ln "MidBackLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "UpperBody" -p "MainBody";
	addAttr -ci true -sn "shoulderFlex" -ln "shoulderFlex" -dv 2 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "sideFlex" -ln "sideFlex" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "frontFlex" -ln "frontFlex" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "twistFlex" -ln "twistFlex" -dv 5 -min 0 -max 10 -at "double";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 5.9527236126752699e-016 1.5134702356848895 -0.056717568549419679 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -5.9527236126752709e-016 -1.5134702356848895 0.056717568549419735 ;
	setAttr -k on ".shoulderFlex";
	setAttr -k on ".sideFlex";
	setAttr -k on ".frontFlex";
	setAttr -k on ".twistFlex";
createNode locator -n "UpperBodyShape" -p "UpperBody";
	setAttr -k off ".v";
createNode transform -n "CollarGRP" -p "UpperBody";
createNode ikHandle -n "CollarIK" -p "CollarGRP";
	setAttr ".pv" -type "double3" 1.7361531768822639e-007 -0.37660482431472053 -5.2493078254473557 ;
	setAttr ".twi" 2.4887704007971863e-006;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "CollarIK_pointConstraint1" -p "CollarIK";
	addAttr -ci true -sn "w0" -ln "CollarGRPW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "L_armGroup" -p "UpperBody";
	setAttr ".rp" -type "double3" -1.1655884772967523e-016 2.7974123455122055e-014 
		-1.515265020485778e-015 ;
createNode transform -n "L_shoulderLocator" -p "L_armGroup";
	setAttr -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "L_shoulderLocatorShape" -p "L_shoulderLocator";
	setAttr -k off ".v";
createNode transform -n "L_wristLocator" -p "L_armGroup";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.917259749845533 -0.08268410460104833 0.047148047807086674 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode locator -n "L_wristLocatorShape" -p "L_wristLocator";
	setAttr -k off ".v";
createNode transform -n "L_shoulderPoleLocator" -p "L_armGroup";
	setAttr ".t" -type "double3" -0.35460280652446707 0.0007684048043001846 5.2834070701164535 ;
createNode transform -n "L_armPoleLocator" -p "L_armGroup";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.0131876702468434 -0.28596582198377446 -2.5958626747542675 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode locator -n "L_armPoleLocatorShape" -p "L_armPoleLocator";
	setAttr -k off ".v";
createNode pointConstraint -n "L_armGroup_pointConstraint1" -p "L_armGroup";
	addAttr -ci true -sn "w0" -ln "L_shoulder_finW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "R_armGroup" -p "UpperBody";
	setAttr ".rp" -type "double3" 2.3311769545935045e-016 7.4597662546992148e-014 -4.1378390944034708e-015 ;
createNode transform -n "R_shoulderLocator" -p "R_armGroup";
	setAttr -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "R_shoulderLocatorShape" -p "R_shoulderLocator";
	setAttr -k off ".v";
createNode transform -n "R_wristLocator" -p "R_armGroup";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.9794873132487154 -0.083382192276814274 0.054657254968355828 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode locator -n "R_wristLocatorShape" -p "R_wristLocator";
	setAttr -k off ".v";
createNode transform -n "R_shoulderPoleLocator" -p "R_armGroup";
	setAttr ".t" -type "double3" 0.32462402394184342 0.00075260626057992706 5.282976836131251 ;
createNode transform -n "R_armPoleLocator" -p "R_armGroup";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -1.0521652121850762 -0.30316231815493727 -2.590304331786192 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode locator -n "R_armPoleLocatorShape" -p "R_armPoleLocator";
	setAttr -k off ".v";
createNode pointConstraint -n "R_armGroup_pointConstraint1" -p "R_armGroup";
	addAttr -ci true -sn "w0" -ln "R_shoulder_finW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "neckTwist" -p "UpperBody";
	setAttr ".ro" 4;
createNode orientConstraint -n "neckTwist_orientConstraint1" -p "neckTwist";
	addAttr -ci true -sn "w0" -ln "HeadLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode joint -n "Skeleton_Root" -p "MainBody";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".ra" -type "double3" -89.999999999999972 -89.999999999999972 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".hdl" -type "double3" -2.6242330711096711e-016 2.6221355797758692e-031 
		-1.1818495081182847 ;
	setAttr ".jo" -type "double3" 90 6.3611093629270335e-015 90.000000000000071 ;
	setAttr ".bps" -type "matrix" 1 1.5543122344752192e-015 1.110223024625159e-016 0
		 -1.5543122344752192e-015 1 3.3306690738754686e-016 0 -1.1102230246251541e-016 -3.3306690738754706e-016 1 0
		 -3.24610796158948e-030 118.62864154762084 -6.6503716926044305 1;
createNode joint -n "L_hip" -p "Skeleton_Root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.36545469772015254 -0.49744933897628635 0.13871189939098311 ;
	setAttr ".r" -type "double3" 3.0522665502309099e-007 2.6925619184891873e-005 5.3507858233802699e-006 ;
	setAttr ".ra" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -101.23970173754472 -0.11563266724809028 -90.000000000000085 ;
	setAttr ".bps" -type "matrix" -2.2722717922303676e-019 -0.99999796349407011 0.0020181693963361867 0
		 -0.98082032981926881 0.00039336953814391546 0.19491363696167402 0 -0.19491403390525991 -0.001979461572945642 -0.98081833237285121 0
		 11.139059186510273 103.46638569562366 -2.4224329991672695 1;
createNode joint -n "L_knee" -p "L_hip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.5250000000000004 1.6117903162619153e-016 0 ;
	setAttr ".r" -type "double3" -1.0361694161073287e-026 -1.1680081607084396e-025 4.2218749172330149e-011 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 101.30086950544353 -5.9254042560627616 -1.1818288923295936 ;
	setAttr ".bps" -type "matrix" -9.8561091230209676e-007 -0.99465594564152637 -0.10324509576241138 0
		 -8.3242810670537671e-017 0.10324509576246151 -0.99465594564200965 0 0.99999999999951439 -9.8034375389358414e-007 -1.0175949305413212e-007 0
		 11.139059186510268 56.984480356492277 -2.32862444928677 1;
createNode joint -n "L_ankle" -p "L_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.4350000000000009 5.8279423864837613e-017 3.4967654318902565e-016 ;
	setAttr ".r" -type "double3" -2.1189072723739975e-006 -2.3876477868659699e-022 1.6415079184879623e-022 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -60.454247856450699 ;
	setAttr ".bps" -type "matrix" -4.8602288025343265e-007 -0.5803024839703691 0.81440102351211674 0
		 8.5744424383787125e-007 0.81440102351167176 0.58030248397056405 0 -0.99999999999951439 9.8034375435498289e-007 1.0175949338290241e-007 0
		 11.139016077071707 13.479422881266657 -6.8444410438197334 1;
createNode joint -n "L_ball" -p "L_ankle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.51719811509221236 -5.8279423864837613e-017 4.0067103907075858e-017 ;
	setAttr ".r" -type "double3" -2.0567998291869544e-007 -1.0577422383994792e-023 0 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 -1.4124500153760508e-030 35.379493681123755 ;
	setAttr ".bps" -type "matrix" 1.0017962816915281e-007 -0.0016114073704007748 0.99999870168229565 0
		 9.8050645766380934e-007 0.99999870168182015 0.0016114073703020759 0 -0.99999999999951439 9.8034375435498289e-007 1.0175949338290241e-007 0
		 11.139008415310522 4.3314193060540003 5.993938388528349 1;
createNode joint -n "L_toe" -p "L_ball";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.37900000000000011 -1.9490681616807786e-017 -5.8279423864837613e-017 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 0 0 ;
	setAttr ".bps" -type "matrix" 1.0017962816915281e-007 -0.0016114073704007748 0.99999870168229565 0
		 9.8050645766380934e-007 0.99999870168182015 0.0016114073703020759 0 -0.99999999999951439 9.8034375435498289e-007 1.0175949338290241e-007 0
		 11.139009572577574 4.3128044570237192 17.545843390466096 1;
createNode transform -n "pCube1" -p "L_ball";
	setAttr ".t" -type "double3" -0.19642231106954372 -0.14242399215418847 0.36545287267339577 ;
	setAttr ".r" -type "double3" 84.073931560671042 89.999943528654455 84.166258444471794 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.38707521738320561 0.11455245220169377 0.38850526750912789 ;
	setAttr ".rpt" -type "double3" 0.0012449938290123978 0.00062627107226731157 -0.77558033305726559 ;
	setAttr ".sp" -type "double3" 0.38707521738320561 0.11455245220169377 0.38850526750912789 ;
	setAttr ".spt" -type "double3" -5.8279423864837601e-017 0 -5.8279423864837601e-017 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.076008976 3.2708282 0.25591299 
		-0.067688398 3.2708282 0.2382815 -0.076008998 3.3646572 0.25591305 -0.06768842 3.3646572 
		0.23828156 -0.094446771 3.3944886 0.13159436 -0.084513649 3.3944888 0.11054587 -0.094446734 
		3.2806375 0.12668981 -0.08451362 3.2806375 0.10564134;
	setAttr -s 8 ".vt[0:7]"  0.3584854 -3.26623917 0.32348472 0.57699394 -3.26623917 0.32348472
		 0.3584854 -3.16694021 0.32348472 0.57699394 -3.16694021 0.32348472 0.33731186 -3.1045692 0.10497618
		 0.59816748 -3.1045692 0.10497618 0.33731186 -3.26623917 0.10497618 0.59816748 -3.26623917 0.10497618;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode transform -n "pCylinder3" -p "L_ankle";
	setAttr ".t" -type "double3" 0.43951009795793505 -0.22984971137850313 0.36545287267339577 ;
	setAttr ".r" -type "double3" 84.073931560671042 89.999943528654455 119.54575212559557 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0.36028117879645022 0.077493067949085309 0.034363841480756878 ;
	setAttr ".rpt" -type "double3" -0.37726482605249545 0.005559097394060848 -0.39464494081034002 ;
	setAttr ".sp" -type "double3" 0.36028117879645027 0.077493067949084837 0.034363841480756857 ;
	setAttr ".spt" -type "double3" -5.8279423864837601e-017 0 -7.2849279831047001e-018 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0.15915494 0.25
		 0.15915494 0.5 0.15915494 0.75 0.15915494 1 0.15915494 0 0.4774648 0.25 0.4774648
		 0.5 0.4774648 0.75 0.4774648 1 0.4774648 0.75 0.15915494 1 0.15915494 0 0.15915494
		 0 0.4774648 1 0.4774648 0.75 0.4774648;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 12 ".vt[0:11]"  0.22508039 0.003076538 -0.057547316 0.23210646 0.0030762879 0.19724368
		 0.52193797 0.0030762879 0.17471501 0.4796553 0.003076538 -0.077335447 0.2074521 0.4062207 -0.05617683
		 0.23210645 0.30467618 0.19724378 0.52193797 0.30467618 0.17471512 0.49728358 0.4062207 -0.078705475
		 0.47116777 0.0086156093 -0.41468567 0.18133634 0.0086156093 -0.39215699 0.18463382 0.43939155 -0.34973443
		 0.47446528 0.43939155 -0.37226307;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 8 9 0 4 5 0 5 6 0 6 7 0
		 11 10 0 9 10 0 1 5 0 2 6 0 8 11 0 3 8 0 3 0 1 0 9 0 0 4 1 4 10 0 4 7 1 7 11 0 7 3 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 9 -5 -16
		mu 0 4 0 1 6 5
		f 4 1 10 -6 -10
		mu 0 4 1 2 7 6
		f 4 2 -20 -7 -11
		mu 0 4 2 3 8 7
		f 4 3 8 -8 -12
		mu 0 4 10 11 14 15
		f 4 -2 -1 -14 -3
		mu 0 4 2 1 4 3
		f 4 -18 4 5 6
		mu 0 4 8 5 6 7
		f 4 13 14 -4 -13
		mu 0 4 3 4 11 10
		f 4 15 16 -9 -15
		mu 0 4 0 5 13 12
		f 4 17 18 7 -17
		mu 0 4 9 8 15 14
		f 4 19 12 11 -19
		mu 0 4 8 3 10 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector9" -p "L_ankle";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder1" -p "L_knee";
	setAttr ".t" -type "double3" 1.851691080065446 -0.26901405134614703 -0.36545287267339543 ;
	setAttr ".r" -type "double3" 84.073931576911789 269.99994352865451 1.7129958625613467e-009 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.32903496541848937 1.9849714654521797 -0.19126929182603586 ;
	setAttr ".rpt" -type "double3" -2.2836513433800478 -1.5897857579404036 0.52030233075345378 ;
	setAttr ".sp" -type "double3" 0.32903496541848948 1.98497146545218 -0.191269291826036 ;
	setAttr ".spt" -type "double3" -5.8279423864837601e-017 -4.662353909187008e-016 
		2.91397119324188e-017 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.12276835 3.3149984 0.091997139 
		-0.11889677 3.3169415 0.093006812 -0.11635475 3.3269691 0.099439003 -0.11768434 3.3350537 
		0.10486152 -0.12155594 3.3331108 0.10385186 -0.12409794 3.3230832 0.097419679 -0.1041474 
		3.3138576 0.018638458 -0.098001368 3.3169415 0.020241268 -0.093333624 3.3401976 0.034735631 
		-0.095539071 3.3443675 0.071409732 -0.10168511 3.3412831 0.069806926 -0.10562571 
		3.3340287 0.031530011 -0.093399607 3.2006731 -0.0059249089 -0.089082792 3.2028399 
		-0.0047991364 -0.085830383 3.2187018 0.0050523002 -0.087277085 3.2354991 0.083929896 
		-0.091593899 3.2333324 0.082804129 -0.094464011 3.2143691 0.0028007647 -0.12022635 
		3.325026 0.098429337 -0.090147197 3.2165358 0.0039265333;
	setAttr -s 20 ".vt[0:19]"  0.54793179 -2.89064336 -0.47300956 0.41029835 -2.89592528 -0.47350886
		 0.34148169 -2.91101861 -0.34203327 0.41029835 -2.92083001 -0.21005836 0.54793173 -2.9155488 -0.20955904
		 0.61674839 -2.90045547 -0.34103465 0.54729712 -1.81104267 -0.55737078 0.32880801 -1.81942701 -0.5581634
		 0.21927045 -1.84578919 -0.24327447 0.32851496 -1.85941851 -0.054361086 0.54700398 -1.85103428 -0.053568453
		 0.65624851 -1.8290205 -0.24168922 0.49612981 -1.34019446 -0.40948072 0.34266895 -1.34608352 -0.41003752
		 0.26572129 -1.36365175 -0.19575258 0.34245172 -1.37532711 -0.040825363 0.49591258 -1.36943829 -0.040268645
		 0.57264298 -1.35187399 -0.19463912 0.47911504 -2.90573692 -0.34153396 0.41918215 -1.35776293 -0.19519582;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1 14 19 1 15 19 1 16 19 1
		 17 19 1;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 1 2 9 8
		f 4 1 20 -8 -20
		mu 0 4 2 3 10 9
		f 4 2 21 -9 -21
		mu 0 4 3 4 11 10
		f 4 3 22 -10 -22
		mu 0 4 4 5 12 11
		f 4 4 23 -11 -23
		mu 0 4 5 6 13 12
		f 4 5 18 -12 -24
		mu 0 4 6 7 14 13
		f 4 6 25 -13 -25
		mu 0 4 8 9 16 15
		f 4 7 26 -14 -26
		mu 0 4 9 10 17 16
		f 4 8 27 -15 -27
		mu 0 4 10 11 18 17
		f 4 9 28 -16 -28
		mu 0 4 11 12 19 18
		f 4 10 29 -17 -29
		mu 0 4 12 13 20 19
		f 4 11 24 -18 -30
		mu 0 4 13 14 21 20
		f 3 -1 -31 31
		mu 0 3 2 1 0
		f 3 -2 -32 32
		mu 0 3 3 2 0
		f 3 -3 -33 33
		mu 0 3 4 3 0
		f 3 -4 -34 34
		mu 0 3 5 4 0
		f 3 -5 -35 35
		mu 0 3 6 5 0
		f 3 -6 -36 30
		mu 0 3 7 6 0
		f 3 12 37 -37
		mu 0 3 15 16 22
		f 3 13 38 -38
		mu 0 3 16 17 22
		f 3 14 39 -39
		mu 0 3 17 18 22
		f 3 15 40 -40
		mu 0 3 18 19 22
		f 3 16 41 -41
		mu 0 3 19 20 22
		f 3 17 36 -42
		mu 0 3 20 21 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector8" -p "L_knee";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder28" -p "L_hip";
	setAttr ".t" -type "double3" 3.3947199431056179 0.37260106322173542 1.1473761573389904e-015 ;
	setAttr ".r" -type "double3" 0.11563266724808115 168.76029826245531 90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr ".rp" -type "double3" 0.34935069462603235 3.5263536660071182 -0.15112413240603972 ;
	setAttr ".rpt" -type "double3" -3.8760021732920693 -3.8970729236998225 0.22427581722218368 ;
	setAttr ".sp" -type "double3" 0.34935069462603263 3.5263536660071182 -0.15112413240603978 ;
	setAttr ".spt" -type "double3" -5.8279423864837601e-017 0 5.8279423864837588e-017 ;
createNode mesh -n "pCylinderShape28" -p "pCylinder28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0 0.4774648 0.16666667 0.4774648 0.5 0.63661975
		 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.63661975 0.33333334 0.4774648 0.5
		 0.4774648 0.5 0.63661975 0.5 0.4774648 0.66666669 0.4774648 0.5 0.63661975 0.66666669
		 0.4774648 0.83333337 0.4774648 0.5 0.63661975 0.83333337 0.4774648 1 0.4774648 0.5
		 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.68864042 -0.098605365 0.08356674 
		0.68864042 -0.098605365 0.08356674 0.68864042 -0.098605365 0.08356674 0.68864042 
		-0.098605365 0.08356674 0.68864042 -0.098605365 0.08356674 0.68864042 -0.098605365 
		0.08356674 0.68864042 0 0.043924883 0.68864042 0 0.043924883 0.68864042 0 0.043924883 
		0.68864042 0 0.043924883 0.68864042 0 0.043924883 0.68864042 0 0.043924883 0.68864042 
		0 0.043924883 0.68864042 0 0.043924883 0.68864042 0 0.043924883 0.68864042 0 0.0010850143 
		0.68864042 0 0.0010850143 0.68864042 0 0.043924883 0.68864042 -0.098605365 0.08356674 
		0.68864042 -0.12885772 0 0.68864042 -0.12885772 0 0.68864042 -0.12885772 0 0.68864042 
		-0.12885772 0 0.68864042 -0.12885772 0 0.68864042 -0.12885772 0 0.68864042 -0.12885772 
		0;
	setAttr -s 26 ".vt[0:25]"  -0.43221626 2.11774611 -0.40293783 -0.26218888 2.11454701 -0.40222633
		 -0.17809021 2.1057148 -0.1873098 -0.26393268 2.10076332 0.0066866283 -0.43395996 2.10396266 0.0059751114
		 -0.51814479 2.11211348 -0.18873279 -0.48405975 2.76658797 -0.52892148 -0.20112133 2.76126385 -0.52773756
		 -0.061174683 2.74656677 -0.17010009 -0.20416647 2.73719382 0.1863534 -0.48710489 2.74251723 0.18516941
		 -0.62705141 2.75721455 -0.17246807 -0.48243582 2.99560952 -0.57171947 -0.19949745 2.9902854 -0.5705356
		 -0.059758525 2.97394609 -0.16418123 -0.2029576 2.96293497 0.24086525 -0.48589599 2.96825838 0.23968129
		 -0.64522433 2.98496246 -0.16663116 -0.34889534 1.98402369 -0.19127227 -0.47993946 3.428159 -0.51170027
		 -0.19700105 3.42283559 -0.51051635 -0.33928975 3.52635431 -0.15112415 -0.057054386 3.4081378 -0.15287884
		 -0.20004624 3.39876485 0.20357464 -0.48298463 3.40408874 0.20239069 -0.6229313 3.41878581 -0.15524682;
	setAttr -s 54 ".ed[0:53]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 19 20 0 20 22 0 22 23 0 23 24 0 24 25 0 25 19 1
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 19 21 0 20 21 0 22 21 0 23 21 0 24 21 0
		 25 21 0 12 19 0 12 13 0 13 20 0 13 14 0 14 22 0 14 15 0 15 23 0 15 16 0 16 24 0 16 17 0
		 17 25 0 17 12 0;
	setAttr -s 30 -ch 108 ".fc[0:29]" -type "polyFaces" 
		f 4 18 6 -20 -1
		mu 0 4 1 8 9 2
		f 4 19 7 -21 -2
		mu 0 4 2 9 10 3
		f 4 20 8 -22 -3
		mu 0 4 3 10 11 4
		f 4 21 9 -23 -4
		mu 0 4 4 11 12 5
		f 4 22 10 -24 -5
		mu 0 4 5 12 13 6
		f 4 23 11 -19 -6
		mu 0 4 6 13 14 7
		f 4 24 43 -26 -7
		mu 0 4 8 15 16 9
		f 4 25 45 -27 -8
		mu 0 4 9 16 17 10
		f 4 26 47 -28 -9
		mu 0 4 10 17 18 11
		f 4 27 49 -29 -10
		mu 0 4 11 18 19 12
		f 4 28 51 -30 -11
		mu 0 4 12 19 20 13
		f 4 29 53 -25 -12
		mu 0 4 13 20 21 14
		f 3 -32 30 0
		mu 0 3 2 0 1
		f 3 -33 31 1
		mu 0 3 3 0 2
		f 3 -34 32 2
		mu 0 3 4 0 3
		f 3 -35 33 3
		mu 0 3 5 0 4
		f 3 -36 34 4
		mu 0 3 6 0 5
		f 3 -31 35 5
		mu 0 3 7 0 6
		f 3 36 -38 -13
		mu 0 3 22 24 23
		f 3 37 -39 -14
		mu 0 3 25 27 26
		f 3 38 -40 -15
		mu 0 3 28 30 29
		f 3 39 -41 -16
		mu 0 3 31 33 32
		f 3 40 -42 -17
		mu 0 3 34 36 35
		f 3 41 -37 -18
		mu 0 3 37 39 38
		f 4 42 12 -45 -44
		mu 0 4 15 22 23 16
		f 4 44 13 -47 -46
		mu 0 4 16 25 26 17
		f 4 46 14 -49 -48
		mu 0 4 17 28 29 18
		f 4 48 15 -51 -50
		mu 0 4 18 31 32 19
		f 4 50 16 -53 -52
		mu 0 4 19 34 35 20
		f 4 52 17 -43 -54
		mu 0 4 20 37 38 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode joint -n "R_hip" -p "Skeleton_Root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.36500000000000077 -0.49744933897628546 0.13871189939098319 ;
	setAttr ".r" -type "double3" -1.6166636148191114e-006 -8.11281964352792e-008 -1.6122242150741373e-008 ;
	setAttr ".ra" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -101.23970173754472 -0.11563266724809028 -90.000000000000085 ;
	setAttr ".bps" -type "matrix" -2.2722717922303676e-019 -0.99999796349407011 0.0020181693963361867 0
		 -0.98082032981926881 0.00039336953814391546 0.19491363696167402 0 -0.19491403390525991 -0.001979461572945642 -0.98081833237285121 0
		 -11.125200000000001 103.46638569562366 -2.4224329991672686 1;
createNode joint -n "R_knee" -p "R_hip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.5250000000000004 1.6117903162619153e-016 0 ;
	setAttr ".r" -type "double3" -4.7400247763372777e-029 -5.3447699879860491e-028 1.9313242988257161e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 101.30086950544353 -5.9254042560627616 -1.1818288923295936 ;
	setAttr ".bps" -type "matrix" -9.7370479712810854e-017 -0.99465594564200943 -0.10324509576246152 0
		 -8.3242810670537671e-017 0.10324509576246151 -0.99465594564200965 0 1 3.3718857137482156e-017 -1.1102230246251565e-016 0
		 -11.125200000000007 56.984480356492277 -2.3286244492867691 1;
createNode joint -n "R_ankle" -p "R_knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.4350000000000009 5.8279423864837613e-017 3.4967654318902565e-016 ;
	setAttr ".r" -type "double3" -1.6187782289324595e-006 -1.824087499121374e-022 1.2540601935933251e-022 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -60.454247856450685 ;
	setAttr ".bps" -type "matrix" 2.4402923598777938e-017 -0.58030248397060735 0.81440102351209209 0
		 6.9230704450004061e-016 0.81440102351209198 0.58030248397060769 0 -1 4.2767991669032066e-016 4.3979258494398291e-016 0
		 -11.1252 13.479422881245526 -6.8444410438219254 1;
createNode joint -n "R_ball" -p "R_ankle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.51719811509221236 -5.8279423864837613e-017 4.0067103907075858e-017 ;
	setAttr ".r" -type "double3" -2.0567998291869544e-007 -1.0577422383994792e-023 0 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 -1.4124500153760508e-030 35.379493681123755 ;
	setAttr ".bps" -type "matrix" 4.2073499885707946e-016 -0.0016114073703517584 0.99999870168230087 0
		 5.5033317843037805e-016 0.99999870168230065 0.0016114073703519249 0 -1 4.2767991669032066e-016 4.3979258494398291e-016 0
		 -11.1252 4.3314193060291117 5.993938388525768 1;
createNode joint -n "R_toe" -p "R_ball";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.37900000000000011 -1.9490681616807786e-017 -5.8279423864837613e-017 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 0 0 ;
	setAttr ".bps" -type "matrix" 4.2073499885707946e-016 -0.0016114073703517584 0.99999870168230087 0
		 5.5033317843037805e-016 0.99999870168230065 0.0016114073703519249 0 -1 4.2767991669032066e-016 4.3979258494398291e-016 0
		 -11.125199999999992 4.3128044569993973 17.545843390463578 1;
createNode transform -n "pCube14" -p "R_ball";
	setAttr ".t" -type "double3" -0.19642227445851931 -0.14242363382439188 -0.36500000000000066 ;
	setAttr ".r" -type "double3" -0.092326881353959112 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -0.41266548437112927 0.11455241361457549 0.38422950214603008 ;
	setAttr ".rpt" -type "double3" 0.79670989706160578 0.00061900152623848973 0.028435982225099455 ;
	setAttr ".sp" -type "double3" -0.41266548437112927 0.11455241361457549 0.38422950214603024 ;
	setAttr ".spt" -type "double3" 0 0 -1.7483827159451278e-016 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.038796976 3.2708282 0.19198647 
		0.031831227 3.2708282 0.16159454 0.038796958 3.2720735 0.19198652 0.031831209 3.2720735 
		0.16159457 0.084965132 3.2726681 0.18229388 0.076649405 3.2726681 0.14601192 0.085594371 
		3.2708917 0.18205747 0.077278659 3.2708917 0.14577553;
	setAttr -s 8 ".vt[0:7]"  -0.35392126 -3.26623917 0.38883832 -0.57242996 -3.26623917 0.38883832
		 -0.35392126 -3.074356318 0.38883829 -0.57242996 -3.074356318 0.38883829 -0.34784883 -2.98274851 0.058295008
		 -0.60870498 -2.98274851 0.058295008 -0.34847811 -3.25649333 0.053626925 -0.60933411 -3.25649333 0.053626925;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode transform -n "pCylinder19" -p "R_ankle";
	setAttr ".t" -type "double3" 0.43950992033903374 -0.22984939802225843 -0.3650000000000006 ;
	setAttr ".r" -type "double3" -35.471820562477724 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -0.35887391322424489 0.077492894389561431 0.033115511025952872 ;
	setAttr ".rpt" -type "double3" 0.34087390019357228 0.0048344114225283754 0.32575840219829205 ;
	setAttr ".sp" -type "double3" -0.35887391322424489 0.077492894389560973 0.033115511025952823 ;
	setAttr ".spt" -type "double3" 0 0 -1.4569855966209397e-017 ;
createNode mesh -n "pCylinderShape19" -p "pCylinder19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 0.15915494 0.25
		 0.15915494 0.5 0.15915494 0.75 0.15915494 1 0.15915494 0 0.4774648 0.25 0.4774648
		 0.5 0.4774648 0.75 0.4774648 1 0.4774648 0.75 0.15915494 1 0.15915494 0 0.15915494
		 0 0.4774648 1 0.4774648 0.75 0.4774648;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 12 ".vt[0:11]"  -0.21870628 0.0030762879 -0.051026896 -0.24368064 0.0030760376 0.20286129
		 -0.53178138 0.0030762879 0.16402793 -0.47176069 0.0030762879 -0.085136317 -0.20118329 0.4062205 -0.04866486
		 -0.24368064 0.30467618 0.20286132 -0.53178138 0.30467618 0.16402796 -0.48928368 0.4062205 -0.087498181
		 -0.44426712 0.0086153587 -0.42147136 -0.1561667 0.0086153587 -0.3826381 -0.16185069 0.43939155 -0.34046906
		 -0.44995108 0.43939155 -0.37930238;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 8 9 0 4 5 0 5 6 0 6 7 0
		 11 10 0 9 10 0 1 5 0 2 6 0 8 11 0 3 8 0 3 0 1 0 9 0 0 4 1 4 10 0 4 7 1 7 11 0 7 3 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 15 4 -10 -1
		mu 0 4 0 5 6 1
		f 4 9 5 -11 -2
		mu 0 4 1 6 7 2
		f 4 10 6 19 -3
		mu 0 4 2 7 8 3
		f 4 11 7 -9 -4
		mu 0 4 10 15 14 11
		f 4 2 13 0 1
		mu 0 4 2 3 0 1
		f 4 -7 -6 -5 17
		mu 0 4 8 7 6 9
		f 4 12 3 -15 -14
		mu 0 4 3 10 11 4
		f 4 14 8 -17 -16
		mu 0 4 0 12 13 5
		f 4 16 -8 -19 -18
		mu 0 4 9 14 15 8
		f 4 18 -12 -13 -20
		mu 0 4 8 15 10 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector11" -p "R_ankle";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder32" -p "R_knee";
	setAttr ".t" -type "double3" 1.8516907198702075 -0.26901405134614703 0.36500000000000088 ;
	setAttr ".r" -type "double3" 84.073931581071605 -90 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -0.37049496674807125 1.9849714654521802 -0.19126929182603586 ;
	setAttr ".rpt" -type "double3" -1.5841210869426758 -1.5897857580823143 -0.17922567492203526 ;
	setAttr ".sp" -type "double3" -0.3704949667480712 1.98497146545218 -0.191269291826036 ;
	setAttr ".spt" -type "double3" 0 0 2.91397119324188e-017 ;
createNode mesh -n "pCylinderShape32" -p "pCylinder32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.82229829 3.3149984 0.091997139 
		-0.81842673 3.3169415 0.093006812 -0.81588471 3.3269691 0.099439003 -0.81721431 3.3350537 
		0.10486152 -0.82108587 3.3331108 0.10385186 -0.82362789 3.3230832 0.097419679 -0.80367738 
		3.3138576 0.018638458 -0.79753131 3.3169415 0.020241268 -0.79286355 3.3401976 0.034735631 
		-0.79506904 3.3443675 0.071409732 -0.80121511 3.3412831 0.069806926 -0.80515563 3.3340287 
		0.031530011 -0.79292959 3.2006731 -0.0059249089 -0.78861278 3.2028399 -0.0047991364 
		-0.78536034 3.2187018 0.0050523002 -0.786807 3.2354991 0.083929896 -0.79112387 3.2333324 
		0.082804129 -0.79399395 3.2143691 0.0028007647 -0.81975627 3.325026 0.098429337 -0.78967714 
		3.2165358 0.0039265333;
	setAttr -s 20 ".vt[0:19]"  0.54793179 -2.89064336 -0.47300956 0.41029835 -2.89592528 -0.47350886
		 0.34148169 -2.91101861 -0.34203327 0.41029835 -2.92083001 -0.21005836 0.54793173 -2.9155488 -0.20955904
		 0.61674839 -2.90045547 -0.34103465 0.54729712 -1.81104267 -0.55737078 0.32880801 -1.81942701 -0.5581634
		 0.21927045 -1.84578919 -0.24327447 0.32851496 -1.85941851 -0.054361086 0.54700398 -1.85103428 -0.053568453
		 0.65624851 -1.8290205 -0.24168922 0.49612981 -1.34019446 -0.40948072 0.34266895 -1.34608352 -0.41003752
		 0.26572129 -1.36365175 -0.19575258 0.34245172 -1.37532711 -0.040825363 0.49591258 -1.36943829 -0.040268645
		 0.57264298 -1.35187399 -0.19463912 0.47911504 -2.90573692 -0.34153396 0.41918215 -1.35776293 -0.19519582;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1 14 19 1 15 19 1 16 19 1
		 17 19 1;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 1 2 9 8
		f 4 1 20 -8 -20
		mu 0 4 2 3 10 9
		f 4 2 21 -9 -21
		mu 0 4 3 4 11 10
		f 4 3 22 -10 -22
		mu 0 4 4 5 12 11
		f 4 4 23 -11 -23
		mu 0 4 5 6 13 12
		f 4 5 18 -12 -24
		mu 0 4 6 7 14 13
		f 4 6 25 -13 -25
		mu 0 4 8 9 16 15
		f 4 7 26 -14 -26
		mu 0 4 9 10 17 16
		f 4 8 27 -15 -27
		mu 0 4 10 11 18 17
		f 4 9 28 -16 -28
		mu 0 4 11 12 19 18
		f 4 10 29 -17 -29
		mu 0 4 12 13 20 19
		f 4 11 24 -18 -30
		mu 0 4 13 14 21 20
		f 3 -1 -31 31
		mu 0 3 2 1 0
		f 3 -2 -32 32
		mu 0 3 3 2 0
		f 3 -3 -33 33
		mu 0 3 4 3 0
		f 3 -4 -34 34
		mu 0 3 5 4 0
		f 3 -5 -35 35
		mu 0 3 6 5 0
		f 3 -6 -36 30
		mu 0 3 7 6 0
		f 3 12 37 -37
		mu 0 3 15 16 22
		f 3 13 38 -38
		mu 0 3 16 17 22
		f 3 14 39 -39
		mu 0 3 17 18 22
		f 3 15 40 -40
		mu 0 3 18 19 22
		f 3 16 41 -41
		mu 0 3 19 20 22
		f 3 17 36 -42
		mu 0 3 20 21 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector10" -p "R_knee";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder31" -p "R_hip";
	setAttr ".t" -type "double3" 3.3947199431056179 -0.34384375431417974 -0.14237587171768112 ;
	setAttr ".r" -type "double3" 0.11563266724808115 168.76029826245531 90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -0.34684933416851255 3.5263536660071182 -0.15112413240603972 ;
	setAttr ".rpt" -type "double3" -3.1798021444975237 -3.214225781837373 0.35997497323948674 ;
	setAttr ".sp" -type "double3" -0.34684933416851244 3.5263536660071182 -0.15112413240603978 ;
	setAttr ".spt" -type "double3" 5.8279423864837601e-017 0 5.8279423864837588e-017 ;
createNode mesh -n "pCylinderShape31" -p "pCylinder31";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0 0.4774648 0.16666667 0.4774648 0.5 0.63661975
		 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.63661975 0.33333334 0.4774648 0.5
		 0.4774648 0.5 0.63661975 0.5 0.4774648 0.66666669 0.4774648 0.5 0.63661975 0.66666669
		 0.4774648 0.83333337 0.4774648 0.5 0.63661975 0.83333337 0.4774648 1 0.4774648 0.5
		 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -0.0075596124 -0.098605365 
		0.08356674 -0.0075596124 -0.098605365 0.08356674 -0.0075596124 -0.098605365 0.08356674 
		-0.0075596124 -0.098605365 0.08356674 -0.0075596124 -0.098605365 0.08356674 -0.0075596124 
		-0.098605365 0.08356674 -0.0075596124 0 0.043924883 -0.0075596124 0 0.043924883 -0.0075596124 
		0 0.043924883 -0.0075596124 0 0.043924883 -0.0075596124 0 0.043924883 -0.0075596124 
		0 0.043924883 -0.0075596124 0 0.043924883 -0.0075596124 0 0.043924883 -0.0075596124 
		0 0.043924883 -0.0075596124 0 0.0010850143 -0.0075596124 0 0.0010850143 -0.0075596124 
		0 0.043924883 -0.0075596124 -0.098605365 0.08356674 -0.0075596124 -0.12885772 0 -0.0075596124 
		-0.12885772 0 -0.0075596124 -0.12885772 0 -0.0075596124 -0.12885772 0 -0.0075596124 
		-0.12885772 0 -0.0075596124 -0.12885772 0 -0.0075596124 -0.12885772 0;
	setAttr -s 26 ".vt[0:25]"  -0.43221626 2.11774611 -0.40293783 -0.26218888 2.11454701 -0.40222633
		 -0.17809021 2.1057148 -0.1873098 -0.26393268 2.10076332 0.0066866283 -0.43395996 2.10396266 0.0059751114
		 -0.51814479 2.11211348 -0.18873279 -0.48405975 2.76658797 -0.52892148 -0.20112133 2.76126385 -0.52773756
		 -0.061174683 2.74656677 -0.17010009 -0.20416647 2.73719382 0.1863534 -0.48710489 2.74251723 0.18516941
		 -0.62705141 2.75721455 -0.17246807 -0.48243582 2.99560952 -0.57171947 -0.19949745 2.9902854 -0.5705356
		 -0.059758525 2.97394609 -0.16418123 -0.2029576 2.96293497 0.24086525 -0.48589599 2.96825838 0.23968129
		 -0.64522433 2.98496246 -0.16663116 -0.34889534 1.98402369 -0.19127227 -0.47993946 3.428159 -0.51170027
		 -0.19700105 3.42283559 -0.51051635 -0.33928975 3.52635431 -0.15112415 -0.057054386 3.4081378 -0.15287884
		 -0.20004624 3.39876485 0.20357464 -0.48298463 3.40408874 0.20239069 -0.6229313 3.41878581 -0.15524682;
	setAttr -s 54 ".ed[0:53]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 19 20 0 20 22 0 22 23 0 23 24 0 24 25 0 25 19 1
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 19 21 0 20 21 0 22 21 0 23 21 0 24 21 0
		 25 21 0 12 19 0 12 13 0 13 20 0 13 14 0 14 22 0 14 15 0 15 23 0 15 16 0 16 24 0 16 17 0
		 17 25 0 17 12 0;
	setAttr -s 30 -ch 108 ".fc[0:29]" -type "polyFaces" 
		f 4 18 6 -20 -1
		mu 0 4 1 8 9 2
		f 4 19 7 -21 -2
		mu 0 4 2 9 10 3
		f 4 20 8 -22 -3
		mu 0 4 3 10 11 4
		f 4 21 9 -23 -4
		mu 0 4 4 11 12 5
		f 4 22 10 -24 -5
		mu 0 4 5 12 13 6
		f 4 23 11 -19 -6
		mu 0 4 6 13 14 7
		f 4 24 43 -26 -7
		mu 0 4 8 15 16 9
		f 4 25 45 -27 -8
		mu 0 4 9 16 17 10
		f 4 26 47 -28 -9
		mu 0 4 10 17 18 11
		f 4 27 49 -29 -10
		mu 0 4 11 18 19 12
		f 4 28 51 -30 -11
		mu 0 4 12 19 20 13
		f 4 29 53 -25 -12
		mu 0 4 13 20 21 14
		f 3 -32 30 0
		mu 0 3 2 0 1
		f 3 -33 31 1
		mu 0 3 3 0 2
		f 3 -34 32 2
		mu 0 3 4 0 3
		f 3 -35 33 3
		mu 0 3 5 0 4
		f 3 -36 34 4
		mu 0 3 6 0 5
		f 3 -31 35 5
		mu 0 3 7 0 6
		f 3 36 -38 -13
		mu 0 3 22 24 23
		f 3 37 -39 -14
		mu 0 3 25 27 26
		f 3 38 -40 -15
		mu 0 3 28 30 29
		f 3 39 -41 -16
		mu 0 3 31 33 32
		f 3 40 -42 -17
		mu 0 3 34 36 35
		f 3 41 -37 -18
		mu 0 3 37 39 38
		f 4 42 12 -45 -44
		mu 0 4 15 22 23 16
		f 4 44 13 -47 -46
		mu 0 4 16 25 26 17
		f 4 46 14 -49 -48
		mu 0 4 17 28 29 18
		f 4 48 15 -51 -50
		mu 0 4 18 31 32 19
		f 4 50 16 -53 -52
		mu 0 4 19 34 35 20
		f 4 52 17 -43 -54
		mu 0 4 20 37 38 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode joint -n "Spine_1" -p "Skeleton_Root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -7.4114070413178392e-032 1.1519640638996104e-046 4.4125083279324593e-017 ;
	setAttr ".r" -type "double3" -5.4647271591377843e-009 -9.0598651605851995e-010 4.3205502795825888e-020 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000057 8.0006614844304789 89.999999999999886 ;
	setAttr ".bps" -type "matrix" 1.263130748288384e-016 0.99026646191081447 -0.139184533676115 0
		 -1.699279642899163e-016 -0.13918453367611489 -0.99026646191081436 0 -1 1.6653345369377348e-016 5.5511151231257926e-017 0
		 -2.2589968661936774e-030 118.62864154762084 -6.6503716926044287 1;
createNode joint -n "Spine_2" -p "Spine_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.53090415030589411 -0.088017569311280297 -3.5620411590608433e-017 ;
	setAttr ".r" -type "double3" -1.3822199469676122e-008 -1.462860664531116e-009 1.7645439555982742e-019 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.99999999999997 0 2.1442800788762502 ;
	setAttr ".bps" -type "matrix" 1.1986660064646933e-016 0.98436532328529824 -0.17613889494779494 0
		 -1.7453510812982765e-016 -0.17613889494779483 -0.98436532328529813 0 -1 1.6653345369377348e-016 5.5511151231257926e-017 0
		 3.5855816618408794e-015 135.02649319819426 -6.2459874256062848 1;
createNode joint -n "Collar" -p "Spine_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.97255865568375199 -0.10292991390192685 8.4373450203694632e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999999999997 0 -9.112696871740944 ;
	setAttr ".bps" -type "matrix" 1.4599605769232108e-016 0.99983771502651997 -0.018015093964442341 0
		 -4.1320168887321251e-016 0.01801509396444223 0.99983771502651986 0 1 -1.563270049963734e-016 5.1094675147443373e-016 0
		 5.1147246569422217e-015 164.75921433129628 -8.3791231819907335 1;
createNode joint -n "Neck_1" -p "Collar";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.18007822383218083 -0.0023756079670662609 4.7407138287012253e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 10.404337400144863 ;
	setAttr ".bps" -type "matrix" 6.8973979906443365e-017 0.98665159642547651 0.16284540911876819 0
		 -4.3277369911449121e-016 -0.1628454091187683 0.9866515964254764 0 1 -1.563270049963734e-016 5.1094675147443373e-016 0
		 7.3909544229954586e-015 170.24580340000585 -8.5504009262481819 1;
createNode joint -n "Head_1" -p "Neck_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.29331169395520712 -1.1588664705852147e-016 -2.911616668588121e-017 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -99.372092708579089 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1 5.3713922797664976e-017 6.0187586198780226e-016 0
		 -2.8004956219120539e-017 1.0000000000000002 3.0531133177191805e-016 0 -4.1576476514585703e-016 -3.3306690738754696e-016 1 0
		 7.1201307289104323e-015 179.0666072292646 -7.0945401000598487 1;
createNode transform -n "pCylinder16" -p "Head_1";
	setAttr ".t" -type "double3" 7.6713179331638375e-016 -5.8748886886241669 0.23276050197046866 ;
	setAttr ".r" -type "double3" -7.9513867036587903e-015 5.8599545495278337e-015 6.464082966992778e-015 ;
	setAttr ".rp" -type "double3" -0.00098707956415169484 6.1960804709543336 -0.056095389608399014 ;
	setAttr ".sp" -type "double3" -0.00098707956415169484 6.1960804709543336 -0.056095389608399014 ;
createNode mesh -n "pCylinderShape16" -p "pCylinder16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975 1 0.31830987 0 0.31830987 0.16666667
		 0.31830987 0.16666667 0.4774648 0 0.4774648 1 0.4774648;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.0031835476 3.3616302 0.18582664 
		-0.005157704 3.3616302 0.18582666 -0.0093283299 3.3678906 0.08025945 -0.0051577059 
		3.3734393 0.0070753861 0.0031835444 3.3734393 0.0070753782 0.0073541687 3.3678906 
		0.08025945 0.0072788959 3.3425529 0.1333655 -0.0092530474 3.3425529 0.13336553 0.024946215 
		3.3475277 0.077670172 -0.018307051 3.3499446 0.051719077 0.016332889 3.3499446 0.051719073 
		-0.026920373 3.3475277 0.077670157 0.036487285 3.3198681 0.134601 -0.038461447 3.3198681 
		0.13460103 -0.011700287 3.2685432 0.074168719 0.034142308 3.3291981 0.0014498102 
		-0.03611647 3.3291981 0.0014498024 0.0097261248 3.2685432 0.074168704 -0.00098708016 
		3.3678906 0.08025945 -0.00098708004 3.3559883 0.074168704 0.0025152476 3.3334889 
		0.13926907 -0.0044893995 3.3334889 0.13926907 -0.0034868247 3.3237185 0.16179466 
		0.0015126718 3.3237185 0.16179465;
	setAttr -s 24 ".vt[0:23]"  0.10120351 2.58365989 -0.47879365 -0.10120344 2.58365989 -0.47879374
		 -0.20240694 2.51276112 -0.13376562 -0.10120349 2.45800066 0.21126255 0.10120343 2.45800066 0.21126258
		 0.20240688 2.51276112 -0.13376556 0.18211421 2.88797235 -0.53397721 -0.18211408 2.88797235 -0.53397727
		 -0.36422825 2.84855294 -0.13376562 -0.18211415 2.84855294 0.24047995 0.18211408 2.84855294 0.24047996
		 0.36422819 2.84855294 -0.13376556 0.12998219 3.27461147 -0.41602767 -0.12998208 3.27461147 -0.41602772
		 -0.25996429 3.30263853 -0.13376562 -0.19482106 3.18755317 0.21126255 0.19482099 3.18755317 0.21126258
		 0.25996423 3.30263853 -0.13376556 -1.5493484e-008 2.51276112 -0.13376556 -1.1891714e-008 3.30263853 -0.13376556
		 0.084986687 3.033978701 -0.56647474 -0.084986523 3.033978701 -0.56647474 -0.060658261 3.19784045 -0.54072243
		 0.06065841 3.19784045 -0.54072237;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 20 21 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 23 22 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 20 23 0 21 22 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1 14 19 1 15 19 1 16 19 1
		 17 19 1 6 20 0 6 7 1 7 21 0 7 13 1 13 22 0 13 12 1 12 23 0 12 6 1;
	setAttr -s 28 -ch 100 ".fc[0:27]" -type "polyFaces" 
		f 4 0 19 -44 -19
		mu 0 4 1 2 9 8
		f 4 1 20 -8 -20
		mu 0 4 2 3 10 9
		f 4 2 21 -9 -21
		mu 0 4 3 4 11 10
		f 4 3 22 -10 -22
		mu 0 4 4 5 12 11
		f 4 4 23 -11 -23
		mu 0 4 5 6 13 12
		f 4 5 18 -12 -24
		mu 0 4 6 7 14 13
		f 4 6 25 -13 -25
		mu 0 4 24 25 26 27
		f 4 7 26 -14 -46
		mu 0 4 9 10 17 16
		f 4 8 27 -15 -27
		mu 0 4 10 11 18 17
		f 4 9 28 -16 -28
		mu 0 4 11 12 19 18
		f 4 10 29 -17 -29
		mu 0 4 12 13 20 19
		f 4 11 -50 -18 -30
		mu 0 4 13 14 21 20
		f 3 -1 -31 31
		mu 0 3 2 1 0
		f 3 -2 -32 32
		mu 0 3 3 2 0
		f 3 -3 -33 33
		mu 0 3 4 3 0
		f 3 -4 -34 34
		mu 0 3 5 4 0
		f 3 -5 -35 35
		mu 0 3 6 5 0
		f 3 -6 -36 30
		mu 0 3 7 6 0
		f 3 -48 37 -37
		mu 0 3 15 16 22
		f 3 13 38 -38
		mu 0 3 16 17 22
		f 3 14 39 -39
		mu 0 3 17 18 22
		f 3 15 40 -40
		mu 0 3 18 19 22
		f 3 16 41 -41
		mu 0 3 19 20 22
		f 3 17 36 -42
		mu 0 3 20 21 22
		f 4 43 44 -7 -43
		mu 0 4 8 9 25 24
		f 4 45 46 -26 -45
		mu 0 4 9 16 26 25
		f 4 47 48 12 -47
		mu 0 4 16 15 27 26
		f 4 49 42 24 -49
		mu 0 4 21 14 23 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode orientConstraint -n "Head_1_orientConstraint1" -p "Head_1";
	addAttr -ci true -sn "w0" -ln "HeadLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".lr" -type "double3" -1.9421187711420696e-030 -6.3611093629270335e-015 
		3.4986101496098681e-014 ;
	setAttr -k on ".w0";
createNode transform -n "pCylinder9" -p "Neck_1";
	setAttr ".t" -type "double3" -5.4652526303277282 1.186352172880182 1.7163811300135683e-015 ;
	setAttr ".r" -type "double3" -99.372092708579089 -89.999999999999986 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -0.00098707956415795394 5.7189275111308477 -0.12387343813110148 ;
	setAttr ".rpt" -type "double3" 5.6234038175515764 -6.7724485268882919 0.12288635856694211 ;
	setAttr ".sp" -type "double3" -0.00098707956415795394 5.7189275111308504 -0.12387343813110116 ;
	setAttr ".spt" -type "double3" 0 -9.3247078183740161e-016 2.91397119324188e-017 ;
createNode mesh -n "pCylinderShape9" -p "pCylinder9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648
		 0.5 0.4774648 0.66666669 0.4774648 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0.0040393202 3.2539368 0.1294096 
		-0.0060134749 3.2539368 0.12940961 -0.011039875 3.2209165 0.079948992 -0.0060134777 
		3.1755705 0.012025335 0.0040393169 3.1755705 0.012025331 0.0090657137 3.2209165 0.079948977 
		0.0040393202 3.3527932 0.18452418 -0.0060134749 3.3527932 0.18452421 -0.011039875 
		3.3197732 0.13506359 -0.0060134777 3.2815144 0.077756345 0.0040393169 3.2815144 0.077756345 
		0.0090657137 3.3197732 0.13506359 -0.00098707958 3.2209165 0.079948977 -0.00098707958 
		3.3197732 0.13506359;
	setAttr -s 14 ".vt[0:13]"  0.1219695 2.39196801 -0.47469255 -0.12196939 2.39196801 -0.47469261
		 -0.24393888 2.39196801 -0.27764386 -0.12196945 2.39196801 -0.0070391623 0.12196942 2.39196801 -0.0070391432
		 0.24393885 2.39196801 -0.2776438 0.1219695 2.52589822 -0.47469255 -0.12196939 2.52589822 -0.47469261
		 -0.24393888 2.52589822 -0.27764386 -0.12196945 2.52589822 -0.049334381 0.12196942 2.52589822 -0.049334381
		 0.24393885 2.52589822 -0.2776438 1.7368625e-024 2.39196801 -0.2776438 1.7368625e-024 2.52589822 -0.2776438;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 1 2 9 8
		f 4 1 14 -8 -14
		mu 0 4 2 3 10 9
		f 4 2 15 -9 -15
		mu 0 4 3 4 11 10
		f 4 3 16 -10 -16
		mu 0 4 4 5 12 11
		f 4 4 17 -11 -17
		mu 0 4 5 6 13 12
		f 4 5 12 -12 -18
		mu 0 4 6 7 14 13
		f 3 -1 -19 19
		mu 0 3 2 1 0
		f 3 -2 -20 20
		mu 0 3 3 2 0
		f 3 -3 -21 21
		mu 0 3 4 3 0
		f 3 -4 -22 22
		mu 0 3 5 4 0
		f 3 -5 -23 23
		mu 0 3 6 5 0
		f 3 -6 -24 18
		mu 0 3 7 6 0
		f 3 6 25 -25
		mu 0 3 8 9 15
		f 3 7 26 -26
		mu 0 3 9 10 15
		f 3 8 27 -27
		mu 0 3 10 11 15
		f 3 9 28 -28
		mu 0 3 11 12 15
		f 3 10 29 -29
		mu 0 3 12 13 15
		f 3 11 24 -30
		mu 0 3 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector3" -p "Neck_1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "L_collar" -p "Collar";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.050158150734167559 -0.00090375046367899173 0.157 ;
	setAttr ".r" -type "double3" -0.58122399463933072 0.049652086211519252 -0.0042437048803016077 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 5 360 ;
	setAttr ".jo" -type "double3" -178.96775530843422 -89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99999962213640936 -0.0008661650077347535 7.4062258237147794e-005 0
		 0.0008668723688332365 0.99994807348697035 -0.010153760977751327 0 -6.5263579986455606e-005 0.010153821343539817 0.99994844649751258 0
		 4.7853600000000052 163.23014575206503 -8.3791231819907388 1;
createNode joint -n "L_shoulder" -p "L_collar";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.5855588773546293 0 -0.025721982025333164 ;
	setAttr ".r" -type "double3" -0.0050377071351057389 -0.056612362402658753 0.016063725514596384 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 4.3524795555525246 0 ;
	setAttr ".bps" -type "matrix" 0.99712111294942696 -2.2009902676247903e-008 -0.075825365877759093 0
		 -0.075824859530270294 -0.0036548178831462101 -0.99711445330185433 0 -0.00027710595681413057 0.99999332113081696 -0.0036442977441680964 0
		 22.633239004761329 163.20672592530698 -9.1617669249332288 1;
createNode joint -n "L_elbow" -p "L_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.98471739812454795 0.0001857936069373754 -0.050834917631047201 ;
	setAttr ".r" -type "double3" 0.00026288006737754116 0.00063381740728919137 0.0076193880001400377 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -11.776309020143655 ;
	setAttr ".bps" -type "matrix" 0.99162610133446361 0.00074593972743962399 0.1291399191812343 0
		 0.12914177507130103 -0.0035778952259770264 -0.99161968546272083 0 -0.00027763941757629688 0.99999332109753392 -0.0036442662744166432 0
		 52.561017813334601 161.6572666266718 -11.437603579676502 1;
createNode joint -n "L_forearm" -p "L_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44997571783213852 0.00011646926590526287 -0.032552235507913752 ;
	setAttr ".r" -type "double3" 0 1.5667134395091007e-017 1.2204714929465736e-008 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jty" no;
	setAttr ".jtz" no;
	setAttr ".bps" -type "matrix" 0.99162610133446361 0.00074593972743962399 0.1291399191812343 0
		 0.12914177507130103 -0.0035778952259770264 -0.99161968546272083 0 -0.00027763941757629688 0.99999332109753392 -0.0036442662744166432 0
		 66.162161419238075 160.6752991708934 -9.6663204481866885 1;
createNode joint -n "L_wrist" -p "L_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.94325185966000191 0.00011646926590519366 -0.032552235507911885 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99162610133446361 0.00074593972743962399 0.1291399191812343 0
		 0.12914177507130103 -0.0035778952259770264 -0.99161968546272083 0 -0.00027763941757629688 0.99999332109753392 -0.0036442662744166432 0
		 81.071316180053174 160.68651441706706 -7.7246944277731995 1;
createNode joint -n "L_pinky_1" -p "L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.39971162214127098 0.17252076136606434 -0.024347198539145121 ;
	setAttr ".ra" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.8938807273991916 8.2076146355563591 18.251240081659152 ;
	setAttr ".bps" -type "matrix" 0.9721642827828435 -0.1431674269472023 -0.18547154806772267 0
		 -0.14607630103079028 -0.98927121872215062 -0.0020420786354649889 0 -0.18318930525137661 0.029078233600220427 -0.98264751298327169 0
		 93.831794838577778 159.9346905809185 -11.363016707668905 1;
createNode joint -n "L_pinky_2" -p "L_pinky_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.14606539078184058 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 88.106215591642794 0 0 ;
	setAttr ".bps" -type "matrix" 0.9721642827828435 -0.1431674269472023 -0.18547154806772267 0
		 -0.18791659627674065 -0.0036298526196685658 -0.98217828168501264 0 0.13994270300764006 0.98969182679826029 -0.030432348638224749 0
		 98.159941301459526 159.29729872903144 -12.188749599682414 1;
createNode joint -n "L_pinky_end" -p "L_pinky_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.15617237540618625 4.7807339889124605e-018 2.5041939941922411e-018 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.5520640795592668 -8.0603049520583827 -10.937050668201644 ;
	setAttr ".bps" -type "matrix" 0.9999999606322979 0.00027351613144929732 -6.2644466843370106e-005 0
		 -0.00027374255037909689 0.99999332562790966 -0.0036433178080656006 0 6.1647542538428857e-005 0.0036433348130925358 0.99999336113347304 0
		 102.78757355983404 158.61580259198672 -13.07161902211374 1;
createNode joint -n "L_ring_1" -p "L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.42523620616747537 0.073935657141738553 -0.016985237694967775 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.4357468046816407e-005 0.0002232707018012268 7.4235340236945229 ;
	setAttr ".bps" -type "matrix" 0.99999996063229779 0.00027351613144630779 -6.2644466842426416e-005 0
		 -0.00027374255037620478 0.99999332562790944 -0.0036433178080673705 0 6.1647542537485167e-005 0.0036433348130943707 0.99999336113347292 0
		 94.215152296513082 160.17041310615122 -8.2836727881908701 1;
createNode joint -n "L_ring_2" -p "L_ring_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.19012002838800482 0 -0.010006317283579194 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 0.99999996063229779 0.00027351613144630779 -6.2644466842426416e-005 0
		 -0.00027374255037620478 0.99999332562790944 -0.0036433178080673705 0 6.1647542537485167e-005 0.0036433348130943707 0.99999336113347292 0
		 100.00999173160795 160.17088690344283 -8.5890263300085117 1;
createNode joint -n "L_ring_end" -p "L_ring_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.19213264860208343 -0.027725322485216655 -0.0019807489546606375 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 0.99999996063229779 0.00027351613144630779 -6.2644466842426416e-005 0
		 -0.00027374255037620478 0.99999332562790944 -0.0036433178080673705 0 6.1647542537485167e-005 0.0036433348130943707 0.99999336113347292 0
		 105.86642223961589 159.32720652053163 -8.6466871653878332 1;
createNode joint -n "L_middle_1" -p "L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.43643875023055573 -0.027531863325473901 -0.014221554866589974 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.43574680468164e-005 0.00022327070180122675 7.4235340236945229 ;
	setAttr ".bps" -type "matrix" 0.99999996063229779 0.00027351613144630779 -6.2644466842426416e-005 0
		 -0.00027374255037620478 0.99999332562790944 -0.0036433178080673705 0 6.1647542537485167e-005 0.0036433348130943707 0.99999336113347292 0
		 94.154322509566029 160.26596976389948 -5.1730725140261056 1;
createNode joint -n "L_middle_2" -p "L_middle_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.2021276091282998 0 0 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 0.99999996063229779 0.00027351613144630779 -6.2644466842426416e-005 0
		 -0.00027374255037620478 0.99999332562790944 -0.0036433178080673705 0 6.1647542537485167e-005 0.0036433348130943707 0.99999336113347292 0
		 100.31517179325812 160.26765485562831 -5.1734584571599731 1;
createNode joint -n "L_middle_end" -p "L_middle_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.21373701313288082 -0.013053108356281802 -0.0019975421788119754 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".bps" -type "matrix" 0.99999996063229779 0.00027351613144630779 -6.2644466842426416e-005 0
		 -0.00027374255037620478 0.99999332562790944 -0.0036433178080673705 0 6.1647542537485167e-005 0.0036433348130943707 0.99999336113347292 0
		 106.8299808545304 159.87135882031356 -5.2333017228885907 1;
createNode joint -n "L_index_1" -p "L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44600177406164293 -0.12711450097031562 -0.04214939493368431 ;
	setAttr ".ra" -type "double3" -96.480000000000203 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4261286585803594 2.5202286309488047 -0.49646496084334513 ;
	setAttr ".bps" -type "matrix" 0.98952406800770087 -0.043195648985182182 0.13775432749006672 0
		 -0.055240323055951224 -0.99486160987265504 0.084846236865661104 0 0.13338150374832999 -0.091566987011360484 -0.98682564891043223 0
		 94.051617690320839 159.4258122207514 -2.1224863339018132 1;
createNode joint -n "L_index_2" -p "L_index_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.17414472297646913 -5.6913499868005481e-020 1.8212319957761754e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 95.053894438200331 0 0 ;
	setAttr ".bps" -type "matrix" 0.98952406800770087 -0.043195648985182182 0.13775432749006672 0
		 0.13772922574727811 -0.0035708947260097296 -0.99046348195474188 0 0.043275619100677579 0.99906025074547211 0.0024158170146719032 0
		 99.303943320830172 159.19653268968537 -1.3912958470989965 1;
createNode joint -n "L_index_end" -p "L_index_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.19819982403162709 5.4636959873285258e-018 3.6424639915523508e-018 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.34745134657700122 -2.4959475027059335 7.9275691451799739 ;
	setAttr ".bps" -type "matrix" 0.9999999606322979 0.00027351613144875608 -6.2644466843370106e-005 0
		 -0.00027374255037863893 0.99999332562790988 -0.0036433178080679854 0 6.1647542538428857e-005 0.0036433348130950113 0.99999336113347304 0
		 105.28178748360976 158.93558213123816 -0.55910395899050536 1;
createNode joint -n "L_thumb_1" -p "L_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.23641923138018434 -0.18073870719983576 -0.025497860645401566 ;
	setAttr ".ra" -type "double3" -159.84376614430309 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 42.711219604773873 9.3570283492603004 -72.341697826119386 ;
	setAttr ".bps" -type "matrix" 0.17542275964586668 -0.15899769143635528 0.97156913779521548 0
		 -0.47426330488830071 -0.87846188205810161 -0.058129505480137074 0 0.86272891051283085 -0.45058235195006058 -0.22950897820454996 0
		 87.505816161420853 159.9344304238638 -1.3285230775541459 1;
createNode joint -n "L_thumb_2" -p "L_thumb_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.14642083758917626 3.6424639915523508e-018 -2.9139711932418806e-017 ;
	setAttr ".ra" -type "double3" -132.15230031094583 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 158.58555134988669 -14.226981298289024 26.306297263349819 ;
	setAttr ".bps" -type "matrix" 0.16072723116427509 -0.62626444699056905 0.76286276590082902 0
		 -0.072255107038601954 -0.77830350431860307 -0.62371696679842092 0 0.98435052530544553 0.045127570297761731 -0.1703453719063559 0
		 88.288711646159214 159.22483849314378 3.0074997545261812 1;
createNode joint -n "L_thumb_end" -p "L_thumb_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.19571934216252332 3.6424639915523508e-018 -4.3709567898628207e-017 ;
	setAttr ".ra" -type "double3" 90 42.481333625629745 90 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 129.83612763735221 9.7947463736232852 -39.480898956355375 ;
	setAttr ".bps" -type "matrix" 0.99999996063229779 0.00027351613144557807 -6.2644466844542779e-005 0
		 -0.00027374255037562745 0.99999332562790921 -0.0036433178080683137 0 6.1647542539469691e-005 0.0036433348130953114 0.99999336113347292 0
		 89.247534050108001 155.48884193411996 7.5583770749751285 1;
createNode transform -n "pCube25" -p "L_wrist";
	setAttr ".t" -type "double3" -2.6087509591320477 -0.57594269110272611 -5.2720171738151729 ;
	setAttr ".r" -type "double3" 90.208801547166274 0.015907567057947745 7.4200018944313264 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 3.0678413625010275 5.2470522098224652 -0.1907539248118926 ;
	setAttr ".rpt" -type "double3" -0.046409754429980701 -4.6804837867611546 5.4376144944902167 ;
	setAttr ".sp" -type "double3" 3.0678413625010261 5.247052209822467 -0.19075392481189232 ;
	setAttr ".spt" -type "double3" -4.662353909187008e-016 -1.8649415636748028e-015 
		2.91397119324188e-017 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1 -1 0 -1 1 0 1 0 0 0 0 0 1 1 1 1 0 0 0 0 1
		 1 1 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  3.093127012 5.15904522 -0.076244317 2.7609725 5.19312906 -0.12441628
		 3.10565639 5.29038429 -0.065685511 2.77244973 5.31344414 -0.11474377 3.10187459 5.31502724 -0.38982433
		 2.7786715 5.32968616 -0.34144169 3.089344501 5.18368864 -0.40038311 2.76719499 5.20937157 -0.35111448
		 3.43111753 5.25038767 -0.37353808 3.42492223 5.18523979 -0.37773547 3.43400383 5.22650051 -0.1008188
		 3.42780805 5.16135311 -0.10501626 2.94099665 5.15549326 -0.054400425 2.93816042 5.27064657 -0.051576462
		 2.8363409 5.30296278 -0.0048691831 2.83893871 5.19747496 -0.0074562789 2.98939896 5.18730593 0.11383393
		 2.98783922 5.25064039 0.1153871 2.93183899 5.2684145 0.14107612 2.93326712 5.21039677 0.13965322;
	setAttr -s 36 ".ed[0:35]"  0 1 1 2 3 1 4 5 0 6 7 0 0 2 1 1 3 0 2 4 1
		 3 5 0 4 6 1 5 7 0 6 0 1 7 1 0 4 8 0 6 9 0 8 9 0 2 10 0 10 8 0 0 11 0 11 10 0 9 11 0
		 0 12 0 2 13 0 12 13 0 3 14 0 13 14 1 1 15 0 15 14 1 12 15 1 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -15 -17 -19 -20
		mu 0 4 14 15 16 17
		f 4 -9 12 14 -14
		mu 0 4 12 13 15 14
		f 4 -7 15 16 -13
		mu 0 4 13 2 16 15
		f 4 -5 17 18 -16
		mu 0 4 2 0 17 16
		f 4 -11 13 19 -18
		mu 0 4 0 12 14 17
		f 4 4 21 -23 -21
		mu 0 4 0 2 19 18
		f 4 1 23 -25 -22
		mu 0 4 2 3 20 19
		f 4 -6 25 26 -24
		mu 0 4 3 1 21 20
		f 4 -1 20 27 -26
		mu 0 4 1 0 18 21
		f 4 22 29 -31 -29
		mu 0 4 18 19 23 22
		f 4 24 31 -33 -30
		mu 0 4 19 20 24 23
		f 4 -27 33 34 -32
		mu 0 4 20 21 25 24
		f 4 -28 28 35 -34
		mu 0 4 21 18 22 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode transform -n "pCylinder25" -p "L_elbow";
	setAttr ".t" -type "double3" -1.665499099472046 -0.57582622183682097 -5.3045694093230846 ;
	setAttr ".r" -type "double3" 90.208801547166274 0.015907567057947745 7.4200018944313264 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 2.2447098751817567 5.2736057385547115 -0.28057169351280103 ;
	setAttr ".rpt" -type "double3" -0.051096186825845311 -4.7243679150784175 5.55454146818699 ;
	setAttr ".sp" -type "double3" 2.2447098751817567 5.2736057385547142 -0.28057169351280148 ;
	setAttr ".spt" -type "double3" -4.662353909187008e-016 -2.7974123455122044e-015 
		5.8279423864837601e-017 ;
createNode mesh -n "pCylinderShape25" -p "pCylinder25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.15604441 0 0 -0.15604441 
		0 0 -0.15604441 0 0 -0.15604441 0 0 -0.15604441 0 0 -0.15604441 0 0 -0.090028785 
		0.011307145 -0.01703936 -0.08906541 -0.010179262 -0.018094622 -0.083161287 -0.017728217 
		-0.00087065087 -0.077883534 -0.011307145 0.017039396 -0.078846991 0.010179307 0.018094622 
		-0.08475107 0.017728217 0.0008706568 0.2411973 0 0 0.2411973 0 0 0.2411973 0 0 0.2411973 
		0 0 0.2411973 0 0 0.2411973 0 0 -0.15604441 0 0 0.2411973 0 0;
	setAttr -s 20 ".vt[0:19]"  1.94406581 5.33413219 -0.44694149 1.95119822 5.17505741 -0.45475385
		 2.016027927 5.053398132 -0.27302718 2.070487022 5.16302443 -0.079941951 2.063354492 5.32209921 -0.072129533
		 1.99852526 5.44375801 -0.25385618 2.069909334 5.37703419 -0.44448575 2.080186605 5.1478157 -0.45574331
		 2.14317203 5.067283154 -0.27199695 2.19947529 5.13578367 -0.080931529 2.18919778 5.36500216 -0.069674358
		 2.12621212 5.44553423 -0.25342062 2.34067321 5.32396555 -0.37313515 2.34587717 5.20790291 -0.37883508
		 2.39184046 5.14570379 -0.24968417 2.43259931 5.19956684 -0.11483318 2.42739511 5.31562996 -0.10913321
		 2.38143206 5.37782907 -0.23828413 1.97554445 5.2107501 -0.26521909 2.43576789 5.26414824 -0.2407582;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1 14 19 1 15 19 1 16 19 1
		 17 19 1;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 18 6 -20 -1
		mu 0 4 1 8 9 2
		f 4 19 7 -21 -2
		mu 0 4 2 9 10 3
		f 4 20 8 -22 -3
		mu 0 4 3 10 11 4
		f 4 21 9 -23 -4
		mu 0 4 4 11 12 5
		f 4 22 10 -24 -5
		mu 0 4 5 12 13 6
		f 4 23 11 -19 -6
		mu 0 4 6 13 14 7
		f 4 24 12 -26 -7
		mu 0 4 8 15 16 9
		f 4 25 13 -27 -8
		mu 0 4 9 16 17 10
		f 4 26 14 -28 -9
		mu 0 4 10 17 18 11
		f 4 27 15 -29 -10
		mu 0 4 11 18 19 12
		f 4 28 16 -30 -11
		mu 0 4 12 19 20 13
		f 4 29 17 -25 -12
		mu 0 4 13 20 21 14
		f 3 -32 30 0
		mu 0 3 2 0 1
		f 3 -33 31 1
		mu 0 3 3 0 2
		f 3 -34 32 2
		mu 0 3 4 0 3
		f 3 -35 33 3
		mu 0 3 5 0 4
		f 3 -36 34 4
		mu 0 3 6 0 5
		f 3 -31 35 5
		mu 0 3 7 0 6
		f 3 36 -38 -13
		mu 0 3 15 22 16
		f 3 37 -39 -14
		mu 0 3 16 22 17
		f 3 38 -40 -15
		mu 0 3 17 22 18
		f 3 39 -41 -16
		mu 0 3 18 22 19
		f 3 40 -42 -17
		mu 0 3 19 22 20
		f 3 41 -37 -18
		mu 0 3 20 22 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector5" -p "L_elbow";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder27" -p "L_shoulder";
	setAttr ".t" -type "double3" -0.76321427831639199 -0.22384111515161279 -5.3554052588622563 ;
	setAttr ".r" -type "double3" 90.208803350231364 0.015877002006564001 -4.348618406415782 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.80827442952188633 5.2820555489932968 -0.26531343274389391 ;
	setAttr ".rpt" -type "double3" 0.017790441064100351 -5.0980999367098718 5.5480766070644458 ;
	setAttr ".sp" -type "double3" 0.80827442952188644 5.2820555489932977 -0.26531343274389396 ;
	setAttr ".spt" -type "double3" -2.331176954593504e-016 -9.3247078183740161e-016 
		5.8279423864837601e-017 ;
createNode mesh -n "pCylinderShape27" -p "pCylinder27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 8 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0.018837864 0 ;
	setAttr ".pt[12]" -type "float3" 0.16958588 0.01852853 0 ;
	setAttr ".pt[13]" -type "float3" 0.16958588 -0.015538749 0 ;
	setAttr ".pt[14]" -type "float3" 0.16958588 -0.034067083 0 ;
	setAttr ".pt[15]" -type "float3" 0.16958588 -0.018058624 0 ;
	setAttr ".pt[16]" -type "float3" 0.16958588 0.016008632 0 ;
	setAttr ".pt[17]" -type "float3" 0.16958588 0.034067083 0 ;
	setAttr ".pt[19]" -type "float3" 0.16958588 7.493305e-006 0 ;
	setAttr -s 20 ".vt[0:19]"  0.91811883 5.39015532 -0.52194017 0.91818851 5.14123106 -0.53087306
		 0.88402152 5.0073957443 -0.27441865 0.84786749 5.12196016 0.0055959905 0.84779787 5.37088442 0.014528736
		 0.88388216 5.50524473 -0.25655311 1.041502476 5.46054888 -0.51818931 1.04159236 5.13998699 -0.52969289
		 1.0074197054 5.026403427 -0.27251175 0.97127122 5.12071609 0.0067761797 0.97118151 5.4412775 0.018279672
		 1.0072716475 5.55538654 -0.25352892 1.50988817 5.32625771 -0.43762287 1.50992846 5.18158484 -0.44281468
		 1.4849422 5.10290098 -0.26870593 1.46726739 5.17088366 -0.10623948 1.4672271 5.31555653 -0.10104787
		 1.48486137 5.39224482 -0.25832272 0.79333174 5.25632763 -0.26638508 1.52218533 5.24760485 -0.26410839;
	setAttr -s 42 ".ed[0:41]"  0 1 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1 8 9 1
		 10 11 1 11 6 1 12 13 0 13 14 0 14 15 0 16 17 0 17 12 0 0 6 0 3 9 0 4 10 0 5 11 0
		 6 12 0 7 13 0 8 14 0 11 17 0 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1
		 14 19 1 15 19 1 16 19 1 17 19 1 2 1 0 8 2 0 7 8 1 1 7 0 10 9 1 16 10 0 15 16 0 9 15 0;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 14 5 -38 -1
		mu 0 4 1 8 9 2
		f 4 37 36 35 34
		mu 0 4 2 9 10 3
		f 4 -36 6 -16 -2
		mu 0 4 3 10 11 4
		f 4 15 -39 -17 -3
		mu 0 4 4 11 12 5
		f 4 16 7 -18 -4
		mu 0 4 5 12 13 6
		f 4 17 8 -15 -5
		mu 0 4 6 13 14 7
		f 4 18 9 -20 -6
		mu 0 4 8 15 16 9
		f 4 19 10 -21 -37
		mu 0 4 9 16 17 10
		f 4 20 11 -42 -7
		mu 0 4 10 17 18 11
		f 4 41 40 39 38
		mu 0 4 11 18 19 12
		f 4 -40 12 -22 -8
		mu 0 4 12 19 20 13
		f 4 21 13 -19 -9
		mu 0 4 13 20 21 14
		f 3 -24 22 0
		mu 0 3 2 0 1
		f 3 -25 23 -35
		mu 0 3 3 0 2
		f 3 -26 24 1
		mu 0 3 4 0 3
		f 3 -27 25 2
		mu 0 3 5 0 4
		f 3 -28 26 3
		mu 0 3 6 0 5
		f 3 -23 27 4
		mu 0 3 7 0 6
		f 3 28 -30 -10
		mu 0 3 15 22 16
		f 3 29 -31 -11
		mu 0 3 16 22 17
		f 3 30 -32 -12
		mu 0 3 17 22 18
		f 3 31 -33 -41
		mu 0 3 18 22 19
		f 3 32 -34 -13
		mu 0 3 19 22 20
		f 3 33 -29 -14
		mu 0 3 20 22 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode transform -n "polySurface119" -p "L_collar";
	setAttr ".t" -type "double3" -0.15234098997847387 -5.3579690843217413 0.22052473033863443 ;
	setAttr ".r" -type "double3" 0.5817811073929865 0.003739327691766681 0.049668134437110475 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".rp" -type "double3" 0.5973172101840184 5.6189725856134451 0.028682229866350915 ;
	setAttr ".rpt" -type "double3" -0.0048650588667910064 -6.5208374616425787e-005 0.057013582039636149 ;
	setAttr ".sp" -type "double3" 0.59731721018401851 5.618972585613446 0.028682229866350922 ;
	setAttr ".spt" -type "double3" -1.165588477296752e-016 -9.3247078183740161e-016 
		-7.2849279831047001e-018 ;
createNode mesh -n "polySurfaceShape122" -p "polySurface119";
	setAttr -k off ".v";
	setAttr ".iog[0].og[9].gcl" -type "componentList" 1 "f[0:52]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".op" yes;
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 63 ".vt[0:62]"  0.42196056 5.40863276 -0.52923661 0.42117006 5.37443304 -0.54152232
		 0.41407034 5.37814665 -0.57428712 0.42197666 5.4254384 -0.55027682 0.43839407 5.31052399 0.13617918
		 0.43130702 5.25753021 0.14622462 0.43770334 5.25316715 0.12138845 0.43838894 5.30212116 0.10722186
		 0.45048961 5.39724207 0.076171249 0.4504948 5.40564156 0.10512678 0.46034122 5.48848581 0.063577354
		 0.46033606 5.48008347 0.034620013 0.46768889 5.54440403 -0.017985953 0.46770075 5.55994749 0.0040042982
		 0.47327292 5.61701155 -0.14430894 0.4732984 5.64690924 -0.13864638 0.47081584 5.65834141 -0.22469032
		 0.47079036 5.62844229 -0.23035294 0.46351975 5.6390481 -0.31961876 0.46349886 5.61565876 -0.3107366
		 0.4515447 5.56969213 -0.39166293 0.45156083 5.58649921 -0.4126997 0.43613115 5.48925829 -0.47371128
		 0.43614727 5.50606346 -0.49475142 0.65316671 5.41615105 -0.55261296 0.75538123 5.4643755 -0.53595293
		 0.67664582 5.51429415 -0.49657139 0.69058168 5.41386461 0.10331348 0.71198094 5.32573938 0.13197042
		 0.82439965 5.52549744 -0.49790651 0.68130249 5.59496403 -0.41422072 0.90057302 5.60266161 -0.43535283
		 0.92738926 5.63796616 -0.39506653 0.68544382 5.64760637 -0.32103527 0.92441303 5.67482996 -0.32196003
		 0.68868178 5.66696978 -0.22601806 0.92502433 5.68219995 -0.14087655 0.92302519 5.69365835 -0.22692651
		 0.8402074 5.42510271 0.10194708 0.91391671 5.51966953 0.060755119 0.69187444 5.49686384 0.061951414
		 0.69229198 5.56851387 0.0024772019 0.93565542 5.59619474 0.0014603698 0.69078606 5.65554333 -0.13996713
		 0.66774696 5.41121626 -0.52471739 0.74618357 5.45656157 -0.51246578 0.81808424 5.51498413 -0.47141057
		 0.73953134 5.32632589 0.10316449 0.59779888 5.37854958 -0.5452832 0.59661579 5.38255024 -0.57550824
		 0.61290967 5.26191044 0.14501968 0.62063646 5.25754976 0.1201581 0.89381474 5.59119272 -0.41258448
		 0.96382773 5.58772755 -0.42286694 0.93194181 5.60963249 -0.38939807 0.92836457 5.64618349 -0.32260275
		 0.9269529 5.6652317 -0.22784303 0.92808688 5.65613937 -0.14578195 0.84523273 5.41351938 0.078995399
		 0.91855294 5.50668812 0.038751695 0.97730845 5.51756144 0.033943761 0.94333881 5.53959751 0.021491645
		 0.93624997 5.59752655 -0.031655494;
	setAttr -s 115 ".ed[0:114]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 9 4 0 7 8 0 8 9 0 10 9 0 8 11 0 11 10 0 13 10 0 11 12 0 12 13 0 15 13 0 12 14 0
		 14 15 0 16 15 0 14 17 0 17 16 0 18 16 0 17 19 0 19 18 0 21 18 0 19 20 0 20 21 0 23 21 0
		 20 22 0 22 23 0 3 23 0 22 0 0 26 24 0 24 25 0 25 26 0 28 27 0 29 26 0 25 29 0 30 26 0
		 31 30 0 29 31 0 32 30 0 31 32 0 32 34 0 34 33 0 33 30 0 35 43 0 35 37 0 37 36 0 33 35 0
		 34 37 0 38 28 0 27 38 0 40 39 0 39 38 0 27 40 0 41 40 0 42 39 0 41 42 0 36 43 0 43 41 0
		 36 42 0 24 44 0 44 45 0 45 25 0 45 46 0 28 47 0 38 58 0 58 47 0 49 2 0 1 48 0 48 49 0
		 26 23 0 3 24 0 49 24 0 30 21 0 33 18 0 16 35 0 5 50 0 51 6 0 50 51 0 9 27 0 28 4 0
		 50 28 0 10 40 0 13 41 0 43 15 0 48 44 0 46 29 0 52 31 0 46 52 0 52 53 0 53 31 0 54 32 0
		 32 53 0 53 54 0 55 34 0 54 55 0 55 56 0 56 37 0 56 57 0 57 36 0 47 51 0 59 58 0 39 59 0
		 39 60 0 60 59 0 61 60 0 60 42 0 42 61 0 62 61 0 42 62 0 57 62 0;
	setAttr -s 53 -ch 201 ".fc[0:52]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		f 4 -8 -7 -6 -5
		f 4 -11 -10 7 -9
		f 4 -14 -13 10 -12
		f 4 -17 -16 13 -15
		f 4 -20 -19 16 -18
		f 4 -23 -22 19 -21
		f 4 -26 -25 22 -24
		f 4 -29 -28 25 -27
		f 4 -32 -31 28 -30
		f 4 3 -34 31 -33
		f 3 -37 -36 -35
		f 3 -38 -54 -55
		f 3 -40 36 -39
		f 4 38 -41 -42 -43
		f 4 -48 -47 -46 43
		f 3 -45 41 -44
		f 4 -49 -80 20 -89
		f 4 -51 -50 48 -62
		f 4 -52 78 23 79
		f 4 -53 46 51 49
		f 4 54 -57 -56 -58
		f 4 57 -87 11 83
		f 4 -59 -88 14 86
		f 4 -61 58 55 -60
		f 4 60 -64 61 62
		f 4 -63 88 17 87
		f 4 35 -67 -66 -65
		f 4 39 -91 -68 66
		f 4 -69 -86 82 -105
		f 4 68 -71 -70 53
		f 4 -74 -73 1 -72
		f 4 73 76 64 -90
		f 4 34 -76 32 -75
		f 4 -77 71 2 75
		f 4 74 29 -78 40
		f 4 77 26 -79 47
		f 4 -82 -83 -81 5
		f 4 8 -85 37 -84
		f 4 4 80 85 84
		f 4 -93 90 42 -92
		f 3 91 -95 -94
		f 3 -98 -97 -96
		f 4 -100 95 45 -99
		f 4 -102 -101 98 52
		f 4 101 50 -104 -103
		f 3 96 94 44
		f 4 69 -106 -107 56
		f 3 -109 -108 106
		f 3 -112 -111 -110
		f 3 -114 111 -113
		f 4 63 113 -115 103
		f 3 59 107 110;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector4" -p "L_collar";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "R_collar" -p "Collar";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.05 -0.0010087445937509796 -0.15673628196848172 ;
	setAttr ".r" -type "double3" 0.5811833313359942 -0.05002721619847221 -0.0042892313422443788 ;
	setAttr ".ra" -type "double3" -89.999999999999986 -7.0622500768802538e-031 180 ;
	setAttr ".mnrl" -type "double3" -360 -5 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 178.96775530843428 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 0.99999961642651103 0.00087266451523442066 -7.485635977151659e-005 0
		 -0.00087337960446611949 0.9999480678232775 -0.01015376110416605 0 6.5991645306103568e-005 0.01015382258747022 0.99994844643709757 0
		 -4.7773218743993171 163.23490775187483 -8.3824097243058038 1;
createNode joint -n "R_shoulder" -p "R_collar";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.56388088420295857 0 -0.025661784472350957 ;
	setAttr ".r" -type "double3" 0.0026140283814630413 0.034551007127653022 0.024524169369313311 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999574 175.60756698484153 0 ;
	setAttr ".bps" -type "matrix" -0.99706801919372678 2.7800370520664631e-006 -0.076520357378738274 0
		 0.076520357378460135 -2.0640704202827499e-007 -0.99706801919760246 0 -2.7876803774067298e-006 -0.99999999999611444 -6.9275682898495283e-009 0
		 -21.964456249157454 163.21196716137493 -9.1632540283675326 1;
createNode joint -n "R_elbow" -p "R_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.99240665185035259 -1.5009209143192067e-008 0.050835257153343388 ;
	setAttr ".r" -type "double3" -0.00024782804680578425 -0.00068059690106008733 0.0076020271003978237 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -11.91115642864751 ;
	setAttr ".bps" -type "matrix" -0.99141089141976058 2.7628306731755656e-006 0.13078396066277684 0
		 -0.13078396066224957 3.714519473922613e-007 -0.99141089142361039 0 -2.7876803774067298e-006 -0.99999999999611444 -6.9275682898495283e-009 0
		 -52.124327170018418 161.66259261545011 -11.477883802499946 1;
createNode joint -n "R_forearm" -p "R_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.44999991006308493 -1.2091672184495598e-008 0.0325524529224454 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jty" no;
	setAttr ".jtz" no;
	setAttr ".bps" -type "matrix" -0.99141089141976058 2.7628306731755656e-006 0.13078396066277684 0
		 0.13078396066224957 -3.7145194795881115e-007 0.99141089142361039 0 2.7876803774808253e-006 0.99999999999611444 6.9275688515332156e-009 0
		 -65.722518956731861 160.67043174535561 -9.6840509980492921 1;
createNode joint -n "R_wrist" -p "R_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.99856694655682465 -1.2091672239132558e-008 0.032552452922445387 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.99141089141976058 2.7628306731755656e-006 0.13078396066277684 0
		 0.13078396066224957 -3.7145194795881115e-007 0.99141089142361039 0 2.7876803774808253e-006 0.99999999999611444 6.9275688515332156e-009 0
		 -82.299229556978304 160.67047794077763 -7.4973008969320789 1;
createNode joint -n "R_pinky_1" -p "R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.38537295646496211 -0.17228354620673972 -0.020140812870802386 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 177.65159369499847 9.030672968048453 -19.311963104886743 ;
	setAttr ".bps" -type "matrix" -0.96674456884178739 -0.15696049953273059 -0.20191171387847379 0
		 0.16189336814868494 -0.98677544783347582 -0.0080469188213955004 0 -0.19797847348734987 -0.040467482494954306 0.97937066879508905 0
		 -94.631282931145847 160.0566203677198 -11.167189905114792 1;
createNode joint -n "R_pinky_2" -p "R_pinky_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.13994170709523523 0 0 ;
	setAttr ".ra" -type "double3" 179.99999999999997 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -87.645053404250746 -4.2660166623216265 -0.17527619461241997 ;
	setAttr ".bps" -type "matrix" -0.97928258314798844 -0.15652483957079869 -0.12847411000018288 0
		 -0.13190464771221544 0.011686445631378125 0.99119351839104675 0 -0.15364500074821721 0.98760488130924162 -0.032090686487511393 0
		 -98.754857674747456 159.38711740646534 -12.028428820358029 1;
createNode joint -n "R_pinky_end" -p "R_pinky_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.16095376656746402 -2.0488859952481972e-018 -5.4636959873285258e-018 ;
	setAttr ".ra" -type "double3" -89.999999999999986 -7.0622500768802538e-031 180 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 178.13948747461725 -8.8385271362502866 7.6676208835692661 ;
	setAttr ".bps" -type "matrix" 0.99999999797805705 -3.3142101707739346e-006 6.350513589567508e-005 0
		 3.3142162668420294e-006 0.99999999999450373 -9.5889510158542191e-008 0 -6.3505135577401894e-005 9.60999798974016e-008 0.99999999798354489 0
		 -103.55909150923495 158.61922676576137 -12.65870620580324 1;
createNode joint -n "R_ring_1" -p "R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.41180482400285301 -0.075556792363601688 -0.0095282938862468643 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -178.12622554388781 2.2909960143053429 -9.4119208869835198 ;
	setAttr ".bps" -type "matrix" -0.99865317558319788 -0.039971985286799197 -0.033076808942623021 0
		 0.038846312571928589 -0.99866651248914418 0.034002365099128018 0 -0.034391843468457667 0.03267165782451642 0.99887424828045279 0
		 -95.04442420708294 160.38009107709755 -8.1389159012235286 1;
createNode joint -n "R_ring_2" -p "R_ring_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.18224791997215736 -4.5530799894404385e-019 4.5530799894404385e-019 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -96.300461637181698 0.46214042302586261 4.1782387098222991 ;
	setAttr ".bps" -type "matrix" -0.99285895355577392 -0.11288785604954302 -0.038567217953486464 0
		 0.11548409522104366 -0.99058734357626099 -0.073485634633605773 0 -0.029908562237442909 -0.077414770574254874 0.9965502652660454 0
		 -100.59185931052311 160.15805003246291 -8.3226548163187868 1;
createNode joint -n "R_ring_end" -p "R_ring_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.19433710334941678 -3.6424639915523508e-018 0 ;
	setAttr ".ra" -type "double3" -89.999999999999986 -7.0622500768802538e-031 180 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -85.558024093846058 -1.7102476171375984 -6.6344365297035237 ;
	setAttr ".bps" -type "matrix" 0.99999999797805705 -3.3142101740074592e-006 6.3505135894880577e-005 0
		 3.3142162701171873e-006 0.99999999999450362 -9.5889512413682709e-008 0 -6.3505135576617799e-005 9.6099981982539218e-008 0.99999999798354489 0
		 -106.47295498245288 159.48937068052805 -8.5511036788408088 1;
createNode joint -n "R_middle_1" -p "R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.4279867529019668 0.024041179480545228 -0.010644490526122069 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -177.88099768705595 -3.0212683757840903e-005 -7.0743908836321054 ;
	setAttr ".bps" -type "matrix" -0.99997044533404178 3.3148555354345575e-006 0.0076882018346420555 0
		 0.00028095960635573201 -0.99931618686886836 0.036974041212243999 0 0.0076830671048779692 0.036975108530968026 0.99928665148143847 0
		 -95.136386220811261 160.34606963857814 -5.0647381289966109 1;
createNode joint -n "R_middle_2" -p "R_middle_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.19419712462536029 9.0705890414633732e-020 0 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -98.054742854108241 0.59955399951342359 4.2288999375580367 ;
	setAttr ".bps" -type "matrix" -0.99725301484604634 -0.074070374446178408 -6.332356987763044e-005 0
		 0.073674676939181047 -0.99183652870752126 -0.10407853909102358 0 0.0076463297325505891 -0.10379730223284851 0.9945690793960994 0
		 -101.05533964153084 160.34608925963354 -5.0192306754906868 1;
createNode joint -n "R_middle_end" -p "R_middle_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.21376095487143484 -9.106159978880877e-019 -2.2765399947202193e-019 ;
	setAttr ".ra" -type "double3" -89.999999999999986 -7.0622500768802538e-031 180 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -84.041939817363783 0.44174532350711421 -4.2250111120873886 ;
	setAttr ".bps" -type "matrix" 0.99999999797805705 -3.3142101772548616e-006 6.3505135895044508e-005 0
		 3.314216273406223e-006 0.99999999999450362 -9.5889511733671107e-008 0 -6.350513557684002e-005 9.6099981460422259e-008 0.99999999798354466 0
		 -107.552875745805 159.86348863064927 -5.0196432560248203 1;
createNode joint -n "R_index_1" -p "R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.43521418644271942 0.12482098100657245 -0.020140776357105917 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -173.62525860933536 4.3018783513965584 3.101119976892134 ;
	setAttr ".bps" -type "matrix" -0.98011499385011513 -0.075008686947068651 0.18370709216757442 0
		 0.09372366895929865 -0.99101731970481666 0.095396781506973588 0 0.17490132277086085 0.1107175186118174 0.97834102355234276 0
		 -94.953049057496841 160.05662231406654 -1.9905428493116757 1;
createNode joint -n "R_index_2" -p "R_index_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.17153826509592549 -1.8212319957761754e-018 9.1061599788808774e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -96.379858569567702 2.290272911959724 -0.25601016760549455 ;
	setAttr ".bps" -type "matrix" -0.98673017239108851 -0.074948000612642091 0.14403598195319275 0
		 -0.14466592666702305 0.0030166739892361653 -0.9894759569285223 0 0.073724735025801208 -0.99718288035957103 -0.013819065205915221 0
		 -100.0775668949904 159.66444042047334 -1.030032831003789 1;
createNode joint -n "R_index_end" -p "R_index_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.1977757375139865 3.1871559926083069e-018 -3.6424639915523508e-018 ;
	setAttr ".ra" -type "double3" -89.999999999999986 -7.0622500768802538e-031 180 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.79423477196198045 4.2280915792407727 8.3444444590771862 ;
	setAttr ".bps" -type "matrix" 0.99999999797805694 -3.3142101706074012e-006 6.3505135894870168e-005 0
		 3.3142162667587627e-006 0.99999999999450362 -9.5889512127887017e-008 0 -6.3505135576624738e-005 9.6099981654676481e-008 0.99999999798354466 0
		 -106.02577814018345 159.21263854745615 -0.16175447939498555 1;
createNode joint -n "R_thumb_1" -p "R_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.19666874025007089 0.16874296975141873 -0.020140902636140039 ;
	setAttr ".ra" -type "double3" -146.7294859400653 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 140.1500747315207 8.4004151152030175 67.595193752288651 ;
	setAttr ".bps" -type "matrix" -0.25420612451435454 -0.146089493940599 0.95605287825494922 0
		 0.96435749226531275 -0.11335357298360593 0.23909327594812857 0 0.073442994023596775 0.98275573122319171 0.16969767051088225 0
		 -87.569548098792751 160.05659787963378 -1.6142117829207718 1;
createNode joint -n "R_thumb_2" -p "R_thumb_1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.16565694046905569 3.642463991552351e-017 0 ;
	setAttr ".ra" -type "double3" 136.6972139299728 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 148.86657513822178 28.927248647265877 7.672783130553789 ;
	setAttr ".bps" -type "matrix" -0.1433300262130251 -0.6153216363420797 0.77513597996421202 0
		 0.26100913309561591 -0.77899580820269532 -0.5701225861543332 0 0.95463644180727181 0.1206018849435415 0.27225805648615109 0
		 -88.853091648100119 159.3189593670792 3.2131129207041198 1;
createNode joint -n "R_thumb_end" -p "R_thumb_2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.18595163406601362 -1.4569855966209403e-017 0 ;
	setAttr ".ra" -type "double3" -133.55013678595478 23.475681450263593 -99.729347546835868 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -129.24074851141751 0.96974092568506021 0.96363682824220431 ;
	setAttr ".bps" -type "matrix" 0.99999999797805683 -3.314210172911114e-006 6.3505135893843212e-005 0
		 3.3142162690624755e-006 0.99999999999450329 -9.5889514772906637e-008 0 -6.3505135575583904e-005 9.609998435911038e-008 0.99999999798354455 0
		 -89.665458402892028 155.83143582385779 7.6064331286421991 1;
createNode transform -n "pCube26" -p "R_wrist";
	setAttr ".t" -type "double3" -2.6447595058394602 0.59699424697420467 -5.2713336110324143 ;
	setAttr ".r" -type "double3" 89.999999603079559 -0.00015972232027167599 172.48510325952384 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -3.0411649884120333 5.247052209822467 -0.1907539248118926 ;
	setAttr ".rpt" -type "double3" 6.0312760234460931 -5.8339052797024342 5.4377976554965457 ;
	setAttr ".sp" -type "double3" -3.0411649884120351 5.247052209822467 -0.19075392481189232 ;
	setAttr ".spt" -type "double3" 0 0 2.91397119324188e-017 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0 0 1 0 0 1 1 1 0
		 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1 -1 0 -1 1 0 1 0 0 0 0 0 1 1 1 1 0 0 0 0 1
		 1 1 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -3.066450834 5.15904522 -0.076244317 -2.73429608 5.19312906 -0.12441628
		 -3.078980446 5.29038429 -0.065685511 -2.74577332 5.31344414 -0.11474377 -3.075197935 5.31502724 -0.38982433
		 -2.75199509 5.32968616 -0.34144169 -3.0626688 5.18368864 -0.40038311 -2.74051881 5.20937157 -0.35111448
		 -3.40444112 5.25038767 -0.37353808 -3.39824605 5.18523979 -0.37773547 -3.40732765 5.22650051 -0.1008188
		 -3.40113211 5.16135311 -0.10501626 -2.91431999 5.15549326 -0.054400425 -2.911484 5.27064657 -0.051576462
		 -2.80966473 5.30296278 -0.0048691831 -2.8122623 5.19747496 -0.0074562789 -2.96272278 5.18730593 0.11383393
		 -2.96116304 5.25064039 0.1153871 -2.90516233 5.2684145 0.14107612 -2.9065907 5.21039677 0.13965322;
	setAttr -s 36 ".ed[0:35]"  0 1 1 2 3 1 4 5 0 6 7 0 0 2 1 1 3 0 2 4 1
		 3 5 0 4 6 1 5 7 0 6 0 1 7 1 0 4 8 0 6 9 0 8 9 0 2 10 0 10 8 0 0 11 0 11 10 0 9 11 0
		 0 12 0 2 13 0 12 13 0 3 14 0 13 14 1 1 15 0 15 14 1 12 15 1 12 16 0 13 17 0 16 17 0
		 14 18 0 17 18 0 15 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 35 34 -33 -31
		mu 0 4 22 25 24 23
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 19 18 16 14
		mu 0 4 14 17 16 15
		f 4 13 -15 -13 8
		mu 0 4 12 14 15 13
		f 4 12 -17 -16 6
		mu 0 4 13 15 16 2
		f 4 15 -19 -18 4
		mu 0 4 2 16 17 0
		f 4 17 -20 -14 10
		mu 0 4 0 17 14 12
		f 4 20 22 -22 -5
		mu 0 4 0 18 19 2
		f 4 21 24 -24 -2
		mu 0 4 2 19 20 3
		f 4 23 -27 -26 5
		mu 0 4 3 20 21 1
		f 4 25 -28 -21 0
		mu 0 4 1 21 18 0
		f 4 28 30 -30 -23
		mu 0 4 18 22 23 19
		f 4 29 32 -32 -25
		mu 0 4 19 23 24 20
		f 4 31 -35 -34 26
		mu 0 4 20 24 25 21
		f 4 33 -36 -29 27
		mu 0 4 21 25 22 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode transform -n "pCylinder30" -p "R_elbow";
	setAttr ".t" -type "double3" -1.6461925592826356 -0.59699425906587389 5.3038860639548595 ;
	setAttr ".r" -type "double3" -90.000000396920413 0.00015972232026743066 -172.48510325952384 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -2.2310684901159639 5.2736057385547142 -0.28057169351280103 ;
	setAttr ".rpt" -type "double3" 4.4062943834725967 -4.7036539732437248 -4.9930278235718912 ;
	setAttr ".sp" -type "double3" -2.2310684901159643 5.2736057385547142 -0.28057169351280148 ;
	setAttr ".spt" -type "double3" 0 0 5.8279423864837601e-017 ;
createNode mesh -n "pCylinderShape30" -p "pCylinder30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -1.77438021 5.33413219 -0.44694149 -1.78151274 5.17505741 -0.45475385
		 -1.84634209 5.053398132 -0.27302718 -1.9008013 5.16302443 -0.079941951 -1.89366877 5.32209921 -0.072129533
		 -1.82883942 5.44375801 -0.25385618 -1.96623909 5.38834095 -0.46152511 -1.97747982 5.13763666 -0.47383794
		 -2.046369314 5.049554825 -0.27286765 -2.10795021 5.12447643 -0.063892134 -2.096709251 5.37518167 -0.05157974
		 -2.027819395 5.46326256 -0.25254998 -2.56822896 5.32396555 -0.37313515 -2.57343292 5.20790291 -0.37883508
		 -2.61939621 5.14570379 -0.24968417 -2.66015506 5.19956684 -0.11483318 -2.65495062 5.31562996 -0.10913321
		 -2.60898781 5.37782907 -0.23828413 -1.80585861 5.2107501 -0.26521909 -2.66332316 5.26414824 -0.2407582;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1 14 19 1 15 19 1 16 19 1
		 17 19 1;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 1 2 9 8
		f 4 1 20 -8 -20
		mu 0 4 2 3 10 9
		f 4 2 21 -9 -21
		mu 0 4 3 4 11 10
		f 4 3 22 -10 -22
		mu 0 4 4 5 12 11
		f 4 4 23 -11 -23
		mu 0 4 5 6 13 12
		f 4 5 18 -12 -24
		mu 0 4 6 7 14 13
		f 4 6 25 -13 -25
		mu 0 4 8 9 16 15
		f 4 7 26 -14 -26
		mu 0 4 9 10 17 16
		f 4 8 27 -15 -27
		mu 0 4 10 11 18 17
		f 4 9 28 -16 -28
		mu 0 4 11 12 19 18
		f 4 10 29 -17 -29
		mu 0 4 12 13 20 19
		f 4 11 24 -18 -30
		mu 0 4 13 14 21 20
		f 3 -1 -31 31
		mu 0 3 2 1 0
		f 3 -2 -32 32
		mu 0 3 3 2 0
		f 3 -3 -33 33
		mu 0 3 4 3 0
		f 3 -4 -34 34
		mu 0 3 5 4 0
		f 3 -5 -35 35
		mu 0 3 6 5 0
		f 3 -6 -36 30
		mu 0 3 7 6 0
		f 3 12 37 -37
		mu 0 3 15 16 22
		f 3 13 38 -38
		mu 0 3 16 17 22
		f 3 14 39 -39
		mu 0 3 17 18 22
		f 3 15 40 -40
		mu 0 3 18 19 22
		f 3 16 41 -41
		mu 0 3 19 20 22
		f 3 17 36 -42
		mu 0 3 20 21 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector7" -p "R_elbow";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder29" -p "R_shoulder";
	setAttr ".t" -type "double3" -0.74152513429572242 -0.24460714611418657 5.3547213211082028 ;
	setAttr ".r" -type "double3" -90.000000396920413 0.00015972232026743058 175.61141655560897 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -0.77122663249357382 5.2820555489932985 -0.26531343274389391 ;
	setAttr ".rpt" -type "double3" 1.5605086063044702 -5.0765356379324844 -5.0167399644575532 ;
	setAttr ".sp" -type "double3" -0.77122663249357404 5.2820555489932977 -0.26531343274389396 ;
	setAttr ".spt" -type "double3" 1.165588477296752e-016 9.32470781837402e-016 5.8279423864837601e-017 ;
createNode mesh -n "pCylinderShape29" -p "pCylinder29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -0.88107097 5.39015532 -0.52194017 -0.88114065 5.14123106 -0.53087306
		 -0.84697366 5.026233673 -0.27441865 -0.81081969 5.12196016 0.0055959905 -0.81075001 5.37088442 0.014528736
		 -0.84683436 5.50524473 -0.25655311 -1.0044547319 5.46054888 -0.51818931 -1.0045446157 5.13998699 -0.52969289
		 -0.97037184 5.026403427 -0.27251175 -0.93422335 5.12071609 0.0067761797 -0.93413365 5.4412775 0.018279672
		 -0.97022378 5.55538654 -0.25352892 -1.64242601 5.34478569 -0.43762287 -1.64246631 5.16604614 -0.44281468
		 -1.61747992 5.068833351 -0.26870593 -1.59980512 5.15282488 -0.10623948 -1.5997647 5.3315649 -0.10104787
		 -1.61739922 5.42631245 -0.25832272 -0.75628388 5.25632763 -0.26638508 -1.65472353 5.247612 -0.26410839;
	setAttr -s 42 ".ed[0:41]"  0 1 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1 8 9 1
		 10 11 1 11 6 1 12 13 0 13 14 0 14 15 0 16 17 0 17 12 0 0 6 0 3 9 0 4 10 0 5 11 0
		 6 12 0 7 13 0 8 14 0 11 17 0 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1
		 14 19 1 15 19 1 16 19 1 17 19 1 2 1 0 8 2 0 7 8 1 1 7 0 10 9 1 16 10 0 15 16 0 9 15 0;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 0 37 -6 -15
		mu 0 4 1 2 9 8
		f 4 -35 -36 -37 -38
		mu 0 4 2 3 10 9
		f 4 1 15 -7 35
		mu 0 4 3 4 11 10
		f 4 2 16 38 -16
		mu 0 4 4 5 12 11
		f 4 3 17 -8 -17
		mu 0 4 5 6 13 12
		f 4 4 14 -9 -18
		mu 0 4 6 7 14 13
		f 4 5 19 -10 -19
		mu 0 4 8 9 16 15
		f 4 36 20 -11 -20
		mu 0 4 9 10 17 16
		f 4 6 41 -12 -21
		mu 0 4 10 11 18 17
		f 4 -39 -40 -41 -42
		mu 0 4 11 12 19 18
		f 4 7 21 -13 39
		mu 0 4 12 13 20 19
		f 4 8 18 -14 -22
		mu 0 4 13 14 21 20
		f 3 -1 -23 23
		mu 0 3 2 1 0
		f 3 34 -24 24
		mu 0 3 3 2 0
		f 3 -2 -25 25
		mu 0 3 4 3 0
		f 3 -3 -26 26
		mu 0 3 5 4 0
		f 3 -4 -27 27
		mu 0 3 6 5 0
		f 3 -5 -28 22
		mu 0 3 7 6 0
		f 3 9 29 -29
		mu 0 3 15 16 22
		f 3 10 30 -30
		mu 0 3 16 17 22
		f 3 11 31 -31
		mu 0 3 17 18 22
		f 3 40 32 -32
		mu 0 3 18 19 22
		f 3 12 33 -33
		mu 0 3 19 20 22
		f 3 13 28 -34
		mu 0 3 20 21 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode transform -n "polySurface118" -p "R_collar";
	setAttr ".t" -type "double3" 0.15204210149687103 -5.3581271656530545 0.22063105482791362 ;
	setAttr ".r" -type "double3" 0.58178117869642143 -0.003781042761933404 -0.050040971719475094 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -0.59431256534988519 5.5895379009346504 0.028981304586758384 ;
	setAttr ".rpt" -type "double3" 0.0048758499102839583 -6.5485640074461167e-005 0.056714462438510103 ;
	setAttr ".sp" -type "double3" -0.59431256534988519 5.5895379009346495 0.028981304586758377 ;
	setAttr ".spt" -type "double3" 0 9.32470781837402e-016 7.2849279831047031e-018 ;
createNode mesh -n "polySurfaceShape119" -p "polySurface118";
	setAttr -k off ".v";
	setAttr ".iog[0].og[7].gcl" -type "componentList" 1 "f[0:52]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 63 ".pt[0:62]" -type "float3"  -0.41494122 5.3587904 -0.52364105 
		-0.41415772 5.324934 -0.53581846 -0.40712628 5.3286204 -0.5682677 -0.41495749 5.3754349 
		-0.54447454 -0.43121421 5.2614622 0.13535905 -0.42419422 5.2089915 0.1452931 -0.43052912 
		5.204679 0.12069412 -0.431209 5.2531509 0.10667735 -0.44319516 5.3473358 0.075951658 
		-0.44320035 5.3556437 0.10463159 -0.45295376 5.4376774 0.063504405 -0.45294854 5.4293661 
		0.034822684 -0.46023199 5.4930639 -0.017260112 -0.46024394 5.5084457 0.0045234142 
		-0.46576387 5.5649867 -0.14234993 -0.46578962 5.5945859 -0.13673328 -0.46333125 5.6059294 
		-0.22194797 -0.4633055 5.5763288 -0.22756468 -0.45610499 5.5868554 -0.31597051 -0.45608389 
		5.5636964 -0.30718026 -0.44424385 5.5182095 -0.38734269 -0.44426015 5.5348554 -0.40817276 
		-0.42897704 5.4385991 -0.46862605 -0.42899331 5.4552436 -0.48945948 -0.64392704 5.3662367 
		-0.54679048 -0.74516064 5.4139757 -0.5302766 -0.66718221 5.4633884 -0.49125922 -0.68098158 
		5.3637819 0.10283842 -0.70217371 5.2765222 0.13119544 -0.81351715 5.4744782 -0.49257809 
		-0.67179549 5.5432334 -0.40967637 -0.88896024 5.5508561 -0.43060303 -0.91551954 5.5857983 
		-0.39069352 -0.67589784 5.5953255 -0.31737068 -0.91257238 5.6222744 -0.3182784 -0.67910486 
		5.6144686 -0.22326015 -0.91317773 5.6295185 -0.13893129 -0.91119808 5.6408887 -0.22415195 
		-0.82917053 5.3749051 0.10148857 -0.90217358 5.4685435 0.060718849 -0.68226349 5.4459682 
		0.061896838 -0.68267828 5.5169239 0.0030137864 -0.92370498 5.5443254 0.0020149462 
		-0.68118852 5.6031308 -0.13803853 -0.65836704 5.3613429 -0.51916414 -0.73605114 5.4062324 
		-0.50701714 -0.80726224 5.4640613 -0.4663395 -0.72945952 5.2771111 0.10266627 -0.58909023 
		5.3290081 -0.53954178 -0.58791864 5.3329773 -0.56947553 -0.60405272 5.213325 0.14410125 
		-0.61170536 5.2090149 0.11947715 -0.88226664 5.5394945 -0.40805653 -0.95160723 5.5360661 
		-0.41824114 -0.92002785 5.557744 -0.38508746 -0.91648555 5.5939126 -0.31892306 -0.91508764 
		5.6127443 -0.22506766 -0.91621035 5.6037183 -0.14379694 -0.83414733 5.3634439 0.078753963 
		-0.9067651 5.4556975 0.03892301 -0.96495652 5.4664631 0.034164395 -0.93131351 5.4882851 
		0.021837976 -0.92429388 5.5456543 -0.030782627;
	setAttr -s 63 ".vt[0:62]"  -0.0040131891 0.020409219 -0.0052965879 -0.0040058726 0.020065978 -0.0054048882
		 -0.0039376309 0.020093242 -0.0057204729 -0.0040131891 0.02056998 -0.0055033136 -0.0041723093 0.0196291 0.0011190944
		 -0.0041046916 0.019105677 0.001230479 -0.0041661416 0.019055149 0.00099327427 -0.0041723093 0.019537203 0.00084347109
		 -0.0042877132 0.020472916 0.00051855313 -0.0042877132 0.02056478 0.00079416006 -0.0043815617 0.021375492 0.00037191599
		 -0.0043815617 0.021283597 9.629265e-005 -0.0044516074 0.021907104 -0.00042687004
		 -0.0044516074 0.02206788 -0.00022014437 -0.0045045437 0.022591388 -0.0016600558 -0.0045045437 0.022889961 -0.001614124
		 -0.0044805445 0.022978378 -0.0024433727 -0.0044805445 0.022679791 -0.0024893044 -0.0044105644 0.022759022 -0.0033492455
		 -0.0044105644 0.022529332 -0.0032573822 -0.0042960793 0.022049116 -0.0040213093 -0.0042960793 0.022209892 -0.0042280019
		 -0.0041486551 0.021226246 -0.004786286 -0.0041486551 0.021387007 -0.0049930108 -0.0062336614 0.02047905 -0.0055233431
		 -0.0072149602 0.020963714 -0.0053770998 -0.0064583821 0.021470275 -0.0050130333 -0.0065934877 0.020647978 0.00077420444
		 -0.0067997635 0.019781323 0.0010741388 -0.0078773461 0.021582415 -0.0050291503 -0.0065024938 0.022295488 -0.00424521
		 -0.0086083338 0.022367651 -0.004450459 -0.0088656172 0.022730248 -0.0040736874 -0.0065418961 0.022845507 -0.0033654694
		 -0.0088367779 0.023117652 -0.0033822507 -0.0065729003 0.02306555 -0.0024587598 -0.0088427169 0.023243668 -0.0016459154
		 -0.0088233594 0.02333235 -0.0024752296 -0.0080304295 0.020760465 0.00075777562 -0.0087375324 0.021688255 0.00033559711
		 -0.0066051837 0.021460203 0.00035372376 -0.0066085551 0.022154436 -0.00023743436
		 -0.0089456365 0.022431137 -0.00025523291 -0.006593266 0.022977192 -0.0016294455 -0.0063737533 0.020438302 -0.0052541667
		 -0.0071267062 0.020892881 -0.0051494096 -0.0078167981 0.021485679 -0.004771817 -0.0070643374 0.019778986 0.00079740817
		 -0.0057022148 0.020107282 -0.0054423227 -0.0056907968 0.020138185 -0.005733612 -0.0058488026 0.019150378 0.0012175033
		 -0.0059230318 0.019099886 0.00098005251 -0.008543537 0.022260334 -0.0042286417 -0.009215978 0.022223523 -0.0043264437
		 -0.0089095803 0.022450557 -0.004011286 -0.0088749677 0.022833005 -0.0033803477 -0.0088613201 0.023049803 -0.0024760172
		 -0.0088723432 0.022983449 -0.0016856628 -0.0080787735 0.020638781 0.00054069882 -0.0087821521 0.021552954 0.00012801836
		 -0.0093463585 0.021660039 7.8740159e-005 -0.0090199141 0.021874968 -4.6981626e-005
		 -0.0089513119 0.022434711 -0.00057352358;
	setAttr -s 115 ".ed[0:114]"  0 1 0 1 2 0 2 3 0 3 0 0 4 5 0 5 6 0 6 7 0
		 7 4 0 9 4 0 7 8 0 8 9 0 10 9 0 8 11 0 11 10 0 13 10 0 11 12 0 12 13 0 15 13 0 12 14 0
		 14 15 0 16 15 0 14 17 0 17 16 0 18 16 0 17 19 0 19 18 0 21 18 0 19 20 0 20 21 0 23 21 0
		 20 22 0 22 23 0 3 23 0 22 0 0 26 24 0 24 25 0 25 26 0 28 27 0 29 26 0 25 29 0 30 26 0
		 31 30 0 29 31 0 32 30 0 31 32 0 32 34 0 34 33 0 33 30 0 35 43 0 35 37 0 37 36 0 33 35 0
		 34 37 0 38 28 0 27 38 0 40 39 0 39 38 0 27 40 0 41 40 0 42 39 0 41 42 0 36 43 0 43 41 0
		 36 42 0 24 44 0 44 45 0 45 25 0 45 46 0 28 47 0 38 58 0 58 47 0 49 2 0 1 48 0 48 49 0
		 26 23 0 3 24 0 49 24 0 30 21 0 33 18 0 16 35 0 5 50 0 51 6 0 50 51 0 9 27 0 28 4 0
		 50 28 0 10 40 0 13 41 0 43 15 0 48 44 0 46 29 0 52 31 0 46 52 0 52 53 0 53 31 0 54 32 0
		 32 53 0 53 54 0 55 34 0 54 55 0 55 56 0 56 37 0 56 57 0 57 36 0 47 51 0 59 58 0 39 59 0
		 39 60 0 60 59 0 61 60 0 60 42 0 42 61 0 62 61 0 42 62 0 57 62 0;
	setAttr -s 53 -ch 201 ".fc[0:52]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 7
		f 4 8 -8 9 10
		f 4 11 -11 12 13
		f 4 14 -14 15 16
		f 4 17 -17 18 19
		f 4 20 -20 21 22
		f 4 23 -23 24 25
		f 4 26 -26 27 28
		f 4 29 -29 30 31
		f 4 32 -32 33 -4
		f 3 34 35 36
		f 3 54 53 37
		f 3 38 -37 39
		f 4 42 41 40 -39
		f 4 -44 45 46 47
		f 3 43 -42 44
		f 4 88 -21 79 48
		f 4 61 -49 49 50
		f 4 -80 -24 -79 51
		f 4 -50 -52 -47 52
		f 4 57 55 56 -55
		f 4 -84 -12 86 -58
		f 4 -87 -15 87 58
		f 4 59 -56 -59 60
		f 4 -63 -62 63 -61
		f 4 -88 -18 -89 62
		f 4 64 65 66 -36
		f 4 -67 67 90 -40
		f 4 104 -83 85 68
		f 4 -54 69 70 -69
		f 4 71 -2 72 73
		f 4 89 -65 -77 -74
		f 4 74 -33 75 -35
		f 4 -76 -3 -72 76
		f 4 -41 77 -30 -75
		f 4 -48 78 -27 -78
		f 4 -6 80 82 81
		f 4 83 -38 84 -9
		f 4 -85 -86 -81 -5
		f 4 91 -43 -91 92
		f 3 93 94 -92
		f 3 95 96 97
		f 4 98 -46 -96 99
		f 4 -53 -99 100 101
		f 4 102 103 -51 -102
		f 3 -45 -95 -97
		f 4 -57 106 105 -70
		f 3 -107 107 108
		f 3 109 110 111
		f 3 112 -112 113
		f 4 -104 114 -114 -64
		f 3 -111 -108 -60;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector6" -p "R_collar";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder8" -p "Collar";
	setAttr ".t" -type "double3" -5.4095612558409165 0.17748066432156628 1.7637882683005811e-015 ;
	setAttr ".r" -type "double3" -88.967755308434249 -89.999999999999986 0 ;
	setAttr ".rp" -type "double3" -0.00098707956415495677 5.4399476909606523 -0.11049923625806252 ;
	setAttr ".rpt" -type "double3" 5.4420426028822355 -5.4524278260387824 0.10951215669390697 ;
	setAttr ".sp" -type "double3" -0.00098707956415495677 5.4399476909606523 -0.11049923625806252 ;
createNode mesh -n "pCylinderShape8" -p "pCylinder8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648
		 0.5 0.4774648 0.66666669 0.4774648 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0.0067622624 3.226218 0.071190357 
		-0.0087364148 3.226218 0.071190357 -0.016485754 3.2128425 0.084326938 -0.0087364186 
		3.1997633 0.097172663 0.0067622568 3.1997633 0.09717267 0.014511595 3.2128425 0.084326938 
		0.0067622624 3.2091258 0.080864303 -0.0087364148 3.2091258 0.080864295 -0.013852661 
		3.2011797 0.088668406 -0.0063430588 3.1903832 0.099272318 0.0043688971 3.1903832 
		0.099272318 0.011878499 3.2011797 0.088668406 -0.00098707958 3.2128425 0.084326938 
		-0.00098707958 3.2011797 0.088668406;
	setAttr -s 14 ".vt[0:13]"  0.1880438 2.13164663 -0.52378279 -0.18804364 2.13164663 -0.52378291
		 -0.3760874 2.13164663 -0.19860019 -0.18804374 2.13164663 0.11938266 0.18804367 2.13164663 0.11938271
		 0.37608737 2.13164663 -0.19860011 0.1880438 2.33749127 -0.47115454 -0.18804364 2.33749127 -0.47115466
		 -0.3121933 2.33749127 -0.27797174 -0.129967 2.33749127 -0.015482797 0.12996694 2.33749127 -0.015482771
		 0.31219327 2.33749127 -0.27797168 0 2.13164663 -0.19860011 1.2685798e-018 2.33749127 -0.27797168;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 1 2 9 8
		f 4 1 14 -8 -14
		mu 0 4 2 3 10 9
		f 4 2 15 -9 -15
		mu 0 4 3 4 11 10
		f 4 3 16 -10 -16
		mu 0 4 4 5 12 11
		f 4 4 17 -11 -17
		mu 0 4 5 6 13 12
		f 4 5 12 -12 -18
		mu 0 4 6 7 14 13
		f 3 -1 -19 19
		mu 0 3 2 1 0
		f 3 -2 -20 20
		mu 0 3 3 2 0
		f 3 -3 -21 21
		mu 0 3 4 3 0
		f 3 -4 -22 22
		mu 0 3 5 4 0
		f 3 -5 -23 23
		mu 0 3 6 5 0
		f 3 -6 -24 18
		mu 0 3 7 6 0
		f 3 6 25 -25
		mu 0 3 8 9 15
		f 3 7 26 -26
		mu 0 3 9 10 15
		f 3 8 27 -27
		mu 0 3 10 11 15
		f 3 9 28 -28
		mu 0 3 11 12 15
		f 3 10 29 -29
		mu 0 3 12 13 15
		f 3 11 24 -30
		mu 0 3 13 14 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode transform -n "HeadGRP1" -p "Collar";
	setAttr ".t" -type "double3" 0.46856722894242675 0.050594607639192705 1.8290971601131019e-017 ;
	setAttr ".r" -type "double3" -88.967755308434235 -89.999999999999986 0 ;
createNode transform -n "L_shoulder_pos" -p "Collar";
	setAttr ".t" -type "double3" -0.050463814300487408 -0.026590713783991936 0.74256033480188066 ;
	setAttr ".r" -type "double3" -88.967755308434235 -89.999999999999986 0 ;
createNode transform -n "L_shoulder_rot" -p "L_shoulder_pos";
	setAttr ".rp" -type "double3" -0.58556033480188074 0.00076836701959292163 0.02567728815428293 ;
createNode transform -n "L_shoulder_fin" -p "L_shoulder_rot";
createNode transform -n "R_shoulder_pos" -p "Collar";
	setAttr ".t" -type "double3" -0.050291006695382105 -0.026636397535289159 -0.72061864334506076 ;
	setAttr ".r" -type "double3" -88.967755308434235 -89.999999999999986 0 ;
createNode transform -n "R_shoulder_rot" -p "R_shoulder_pos";
	setAttr ".rp" -type "double3" 0.5638823613765791 0.00075264404519767298 0.025618251445598681 ;
createNode transform -n "R_shoulder_fin" -p "R_shoulder_rot";
createNode transform -n "pCylinder6" -p "Spine_2";
	setAttr ".t" -type "double3" -4.3968359236261394 0.57857886709852602 -1.578863175193777e-015 ;
	setAttr ".r" -type "double3" 100.14494156330672 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -0.0013216087366750208 4.526401367579556 -0.07963499907236897 ;
	setAttr ".rpt" -type "double3" 4.4709809749889162 -5.2452867709485114 0.08095660780904744 ;
	setAttr ".sp" -type "double3" -0.0013216087366750208 4.5264013675795551 -0.079634999072369012 ;
	setAttr ".spt" -type "double3" 0 9.32470781837402e-016 -1.4569855966209406e-017 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648
		 0.5 0.4774648 0.66666669 0.4774648 0.83333337 0.4774648 1 0.4774648 0 0.4774648 0.16666667
		 0.4774648 0.5 0.63661975 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.63661975
		 0.33333334 0.4774648 0.5 0.4774648 0.5 0.63661975 0.5 0.4774648 0.66666669 0.4774648
		 0.5 0.63661975 0.66666669 0.4774648 0.83333337 0.4774648 0.5 0.63661975 0.83333337
		 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0 -0.14278948 0 0 -0.14278948 
		0 0 -0.14278948 0 0 -0.14278948 0 0 -0.14278948 0 0 -0.14278948 0 0 -0.073143028 
		-0.040935222 0 -0.073143028 -0.040935222 0 -0.073143028 0 0 -0.073143028 0 0 -0.073143028 
		0 0 -0.073143028 0 0 -0.14278948 0 -0.028358009 0.052493244 -0.03581832 0.028357977 
		0.052493244 -0.03581832 -3.923013e-009 0.052493244 -0.03581832 0.056715984 0.052493244 
		-0.03581832 0.028357992 0.052493244 -0.03581832 -0.028357992 0.052493244 -0.03581832 
		-0.056715984 0.052493244 -0.03581832;
	setAttr -s 20 ".vt[0:19]"  0.28747562 4.61811543 -0.52681249 -0.28944954 4.61811543 -0.52681261
		 -0.57791215 4.67089558 -0.031766258 -0.28944966 4.71013689 0.33629835 0.28747538 4.71013689 0.33629838
		 0.57593787 4.67089558 -0.031766184 0.32984275 4.8920536 -0.6103791 -0.33181661 4.8920536 -0.61037928
		 -0.66264641 4.95016813 -0.065297522 -0.33181676 4.99077034 0.31553549 0.32984254 4.99077034 0.36197928
		 0.66067213 4.95016813 -0.065297432 -0.00098708749 4.60540199 -0.074851029 0.32984275 5.11986017 -0.63177258
		 -0.33181661 5.11986017 -0.63177282 -0.00098707597 5.24570322 -0.19973008 -0.66264641 5.18223619 -0.093161233
		 -0.33181676 5.22283936 0.28767172 0.32984254 5.22283936 0.2876718 0.66067213 5.18223619 -0.093161091;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 13 14 0
		 14 16 0 16 17 0 17 18 0 18 19 0 19 13 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1
		 12 1 1 12 2 1 12 3 1 12 4 1 12 5 1 13 15 0 14 15 0 16 15 0 17 15 0 18 15 0 19 15 0
		 6 13 0 6 7 1 7 14 0 7 8 1 8 16 0 8 9 1 9 17 0 9 10 1 10 18 0 10 11 1 11 19 0 11 6 1;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 0 13 -32 -13
		mu 0 4 1 2 9 8
		f 4 1 14 -34 -14
		mu 0 4 2 3 10 9
		f 4 2 15 -36 -15
		mu 0 4 3 4 11 10
		f 4 3 16 -38 -16
		mu 0 4 4 5 12 11
		f 4 4 17 -40 -17
		mu 0 4 5 6 13 12
		f 4 5 12 -42 -18
		mu 0 4 6 7 14 13
		f 3 -1 -19 19
		mu 0 3 2 1 0
		f 3 -2 -20 20
		mu 0 3 3 2 0
		f 3 -3 -21 21
		mu 0 3 4 3 0
		f 3 -4 -22 22
		mu 0 3 5 4 0
		f 3 -5 -23 23
		mu 0 3 6 5 0
		f 3 -6 -24 18
		mu 0 3 7 6 0
		f 3 6 25 -25
		mu 0 3 15 16 17
		f 3 7 26 -26
		mu 0 3 18 19 20
		f 3 8 27 -27
		mu 0 3 21 22 23
		f 3 9 28 -28
		mu 0 3 24 25 26
		f 3 10 29 -29
		mu 0 3 27 28 29
		f 3 11 24 -30
		mu 0 3 30 31 32
		f 4 31 32 -7 -31
		mu 0 4 8 9 16 15
		f 4 33 34 -8 -33
		mu 0 4 9 10 19 18
		f 4 35 36 -9 -35
		mu 0 4 10 11 22 21
		f 4 37 38 -10 -37
		mu 0 4 11 12 25 24
		f 4 39 40 -11 -39
		mu 0 4 12 13 28 27
		f 4 41 30 -12 -41
		mu 0 4 13 14 31 30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector2" -p "Spine_2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder5" -p "Spine_1";
	setAttr ".t" -type "double3" -3.9227821505963054 0.33102459721152488 -1.6318113278581252e-015 ;
	setAttr ".r" -type "double3" 98.000661484430466 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -0.0013216087366768206 3.9473132187800006 -0.18272451359596978 ;
	setAttr ".rpt" -type "double3" 3.935645930167786 -4.3157722108264034 0.18404612233264939 ;
	setAttr ".sp" -type "double3" -0.0013216087366768206 3.9473132187799993 -0.18272451359596975 ;
	setAttr ".spt" -type "double3" 0 9.32470781837402e-016 -2.9139711932418813e-017 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  0.0094600003 3.2748697 0.016579123 
		-0.012103209 3.2748697 0.016579118 0.0042644842 3.259712 -0.11525678 -0.012103214 
		3.2542751 -0.096989445 0.0094599938 3.2542751 -0.096989445 -0.006907702 3.259712 
		-0.11525676 0.0094600003 3.3088231 -0.034996331 -0.012103209 3.3088231 -0.034996331 
		-0.022884816 3.2985256 -0.10968977 -0.012103214 3.2882283 -0.066694461 0.0094599938 
		3.2882283 -0.066694461 0.020241596 3.2985256 -0.10968977 0.0094600003 3.3427761 -0.020052034 
		-0.012103209 3.3427761 -0.020052047 0.0042644842 3.3373392 -0.10412276 -0.012103214 
		3.3221812 -0.061983977 0.0094599938 3.3221812 -0.061983977 -0.006907702 3.3373392 
		-0.10412276 -0.0013216087 3.1796103 -0.11684735 -0.0013216087 3.4174411 -0.1025322;
	setAttr -s 20 ".vt[0:19]"  0.26162413 0.77167505 -0.49363455 -0.26162389 0.77167505 -0.49363464
		 -0.52324802 0.77167505 -0.065762848 -0.26162404 0.77167505 0.36210901 0.26162395 0.77167505 0.36210904
		 0.52324796 0.77167505 -0.065762766 0.26162413 0.90126818 -0.49363455 -0.26162389 0.90126818 -0.49363464
		 -0.52324802 0.90126818 -0.065762848 -0.26162404 0.90126818 0.36210901 0.26162395 0.90126818 0.36210904
		 0.52324796 0.90126818 -0.065762766 0.26162413 1.030861259 -0.49363455 -0.26162389 1.030861259 -0.49363464
		 -0.52324802 1.030861259 -0.065762848 -0.26162404 1.030861259 0.36210901 0.26162395 1.030861259 0.36210904
		 0.52324796 1.030861259 -0.065762766 0 0.77167505 -0.065762766 0 1.030861259 -0.065762766;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1 14 19 1 15 19 1 16 19 1
		 17 19 1;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 1 2 9 8
		f 4 1 20 -8 -20
		mu 0 4 2 3 10 9
		f 4 2 21 -9 -21
		mu 0 4 3 4 11 10
		f 4 3 22 -10 -22
		mu 0 4 4 5 12 11
		f 4 4 23 -11 -23
		mu 0 4 5 6 13 12
		f 4 5 18 -12 -24
		mu 0 4 6 7 14 13
		f 4 6 25 -13 -25
		mu 0 4 8 9 16 15
		f 4 7 26 -14 -26
		mu 0 4 9 10 17 16
		f 4 8 27 -15 -27
		mu 0 4 10 11 18 17
		f 4 9 28 -16 -28
		mu 0 4 11 12 19 18
		f 4 10 29 -17 -29
		mu 0 4 12 13 20 19
		f 4 11 24 -18 -30
		mu 0 4 13 14 21 20
		f 3 -1 -31 31
		mu 0 3 2 1 0
		f 3 -2 -32 32
		mu 0 3 3 2 0
		f 3 -3 -33 33
		mu 0 3 4 3 0
		f 3 -4 -34 34
		mu 0 3 5 4 0
		f 3 -5 -35 35
		mu 0 3 6 5 0
		f 3 -6 -36 30
		mu 0 3 7 6 0
		f 3 12 37 -37
		mu 0 3 15 16 22
		f 3 13 38 -38
		mu 0 3 16 17 22
		f 3 14 39 -39
		mu 0 3 17 18 22
		f 3 15 40 -40
		mu 0 3 18 19 22
		f 3 16 41 -41
		mu 0 3 19 20 22
		f 3 17 36 -42
		mu 0 3 20 21 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode ikEffector -n "effector1" -p "Spine_1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "pCylinder4" -p "Skeleton_Root";
	setAttr ".t" -type "double3" -5.5930834782309896e-015 -3.8920157988064581 0.21818804765762612 ;
	setAttr ".r" -type "double3" -6.3611093629270391e-015 6.3611093629270288e-015 -8.2694421718051442e-014 ;
	setAttr ".rp" -type "double3" -0.0056379319222770044 3.8666974764010513 -0.14789891690019952 ;
	setAttr ".sp" -type "double3" -0.0056379319222770044 3.8666974764010513 -0.14789891690019952 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 23 ".uvst[0].uvsp[0:22]" -type "float2" 0.5 0 0 0.15915494
		 0.16666667 0.15915494 0.33333334 0.15915494 0.5 0.15915494 0.66666669 0.15915494
		 0.83333337 0.15915494 1 0.15915494 0 0.31830987 0.16666667 0.31830987 0.33333334
		 0.31830987 0.5 0.31830987 0.66666669 0.31830987 0.83333337 0.31830987 1 0.31830987
		 0 0.4774648 0.16666667 0.4774648 0.33333334 0.4774648 0.5 0.4774648 0.66666669 0.4774648
		 0.83333337 0.4774648 1 0.4774648 0.5 0.63661975;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".fbda" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.021912407 3.2661388 -0.08821734 
		0.018594649 3.2661388 -0.08821734 0.038848184 3.2661388 -0.085117944 0.01859466 3.2661388 
		-0.082018547 -0.021912392 3.2661388 -0.082018547 -0.04216592 3.2661388 -0.085117944 
		-0.021912407 3.2081976 -0.022204522 0.018594649 3.2081976 -0.022204522 0.038848184 
		3.2081976 -0.085117944 0.01859466 3.2081976 -0.081741907 -0.021912392 3.2081976 -0.081741907 
		-0.04216592 3.2081976 -0.085117944 -0.020589953 3.1374714 -0.088028178 0.0172722 
		3.1374714 -0.088028185 0.03620328 3.1374714 -0.085117944 0.017272206 3.1374714 -0.08220771 
		-0.02058994 3.1374714 -0.08220771 -0.039521012 3.1374714 -0.085117944 -0.0016588696 
		3.2094536 -0.085117944 -0.0016588693 3.159667 -0.085117944;
	setAttr -s 20 ".vt[0:19]"  0.2878359 0.26370502 -0.47795549 -0.28783563 0.26370502 -0.47795561
		 -0.57567149 0.26370502 -0.061151672 -0.28783578 0.26370502 0.3556523 0.28783569 0.26370502 0.3556523
		 0.57567143 0.26370502 -0.061151598 0.2878359 0.46219909 -0.54612523 -0.28783563 0.46219909 -0.54612541
		 -0.57567149 0.46219909 -0.061151676 -0.28783578 0.46219909 0.39285582 0.28783569 0.46219909 0.39285585
		 0.57567143 0.46219909 -0.061151594 0.26904166 0.66069317 -0.4525176 -0.26904142 0.66069317 -0.45251772
		 -0.53808302 0.66069317 -0.061151672 -0.26904154 0.66069317 0.33021438 0.26904148 0.66069317 0.33021441
		 0.53808296 0.66069317 -0.061151598 2.352174e-009 0.14002492 -0.061151598 0 0.70912093 -0.061151598;
	setAttr -s 42 ".ed[0:41]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 12 0
		 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 6 12 0 7 13 0 8 14 0 9 15 0 10 16 0 11 17 0
		 18 0 1 18 1 1 18 2 1 18 3 1 18 4 1 18 5 1 12 19 1 13 19 1 14 19 1 15 19 1 16 19 1
		 17 19 1;
	setAttr -s 24 -ch 84 ".fc[0:23]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 1 2 9 8
		f 4 1 20 -8 -20
		mu 0 4 2 3 10 9
		f 4 2 21 -9 -21
		mu 0 4 3 4 11 10
		f 4 3 22 -10 -22
		mu 0 4 4 5 12 11
		f 4 4 23 -11 -23
		mu 0 4 5 6 13 12
		f 4 5 18 -12 -24
		mu 0 4 6 7 14 13
		f 4 6 25 -13 -25
		mu 0 4 8 9 16 15
		f 4 7 26 -14 -26
		mu 0 4 9 10 17 16
		f 4 8 27 -15 -27
		mu 0 4 10 11 18 17
		f 4 9 28 -16 -28
		mu 0 4 11 12 19 18
		f 4 10 29 -17 -29
		mu 0 4 12 13 20 19
		f 4 11 24 -18 -30
		mu 0 4 13 14 21 20
		f 3 -1 -31 31
		mu 0 3 2 1 0
		f 3 -2 -32 32
		mu 0 3 3 2 0
		f 3 -3 -33 33
		mu 0 3 4 3 0
		f 3 -4 -34 34
		mu 0 3 5 4 0
		f 3 -5 -35 35
		mu 0 3 6 5 0
		f 3 -6 -36 30
		mu 0 3 7 6 0
		f 3 12 37 -37
		mu 0 3 15 16 22
		f 3 13 38 -38
		mu 0 3 16 17 22
		f 3 14 39 -39
		mu 0 3 17 18 22
		f 3 15 40 -40
		mu 0 3 18 19 22
		f 3 16 41 -41
		mu 0 3 19 20 22
		f 3 17 36 -42
		mu 0 3 20 21 22;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bck" 3;
	setAttr ".vbc" no;
	setAttr ".bw" 3.8724;
	setAttr ".tgsp" 1;
	setAttr ".vnm" 0;
createNode transform -n "HeadGRP2" -p "Dummy_Root";
createNode pointConstraint -n "HeadGRP2_pointConstraint1" -p "HeadGRP2";
	addAttr -ci true -sn "w0" -ln "HeadGRP1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "HeadLocator" -p "HeadGRP2";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 9.3247078183740181e-016 0 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode locator -n "HeadLocatorShape" -p "HeadLocator";
	setAttr -k off ".v";
createNode ikHandle -n "HeadIK" -p "HeadLocator";
	setAttr ".pv" -type "double3" 3.3561548016747166e-016 0.85702281911025058 -5.1925500216679978 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "HeadIK_pointConstraint1" -p "HeadIK";
	addAttr -ci true -sn "w0" -ln "HeadLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "L_ankleLocator" -p "Dummy_Root";
	addAttr -ci true -sn "KneeTwist" -ln "KneeTwist" -min -360 -max 360 -at "double";
	addAttr -ci true -sn "ToeFlex" -ln "ToeFlex" -min -20 -max 20 -at "double";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0.36545328336849398 0.44223828350612393 -0.22455515235628967 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".KneeTwist";
	setAttr -k on ".ToeFlex";
createNode locator -n "L_ankleLocatorShape" -p "L_ankleLocator";
	setAttr -k off ".v";
createNode ikHandle -n "L_ballIK" -p "L_ankleLocator";
	setAttr ".t" -type "double3" -1.4426373021232321e-007 -0.30013135089314369 0.42120667429076991 ;
	setAttr ".pv" -type "double3" 2.166815555720299e-006 4.2860297065400346 3.0540159126389046 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode transform -n "R_ankleLocator" -p "Dummy_Root";
	addAttr -ci true -sn "KneeTwist" -ln "KneeTwist" -min -360 -max 360 -at "double";
	addAttr -ci true -sn "ToeFlex" -ln "ToeFlex" -min -20 -max 20 -at "double";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -0.36500000000000038 0.44223828350543065 -0.22455515235636159 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".KneeTwist";
	setAttr -k on ".ToeFlex";
createNode locator -n "R_ankleLocatorShape" -p "R_ankleLocator";
	setAttr -k off ".v";
createNode ikHandle -n "R_ballIK" -p "R_ankleLocator";
	setAttr ".t" -type "double3" 7.6060199841530444e-009 -0.30013135089292714 0.42120667428962238 ;
	setAttr ".pv" -type "double3" 2.0262287696455591e-007 4.286029706539435 3.0540159126405078 ;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode ikHandle -n "L_shoulderIK" -p "Dummy_Root";
	setAttr ".twi" -0.57847862743055278;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "L_shoulderIK_pointConstraint1" -p "L_shoulderIK";
	addAttr -ci true -sn "w0" -ln "L_shoulderLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "L_shoulderIK_poleVectorConstraint1" -p "L_shoulderIK";
	addAttr -ci true -sn "w0" -ln "L_shoulderPoleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode ikHandle -n "L_armIK" -p "Dummy_Root";
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "L_armIK_pointConstraint1" -p "L_armIK";
	addAttr -ci true -sn "w0" -ln "L_wristLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "L_armIK_poleVectorConstraint1" -p "L_armIK";
	addAttr -ci true -sn "w0" -ln "L_armPoleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode ikHandle -n "R_shoulderIK" -p "Dummy_Root";
	setAttr ".twi" 0.57830272440549846;
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "R_shoulderIK_pointConstraint1" -p "R_shoulderIK";
	addAttr -ci true -sn "w0" -ln "R_shoulderLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "R_shoulderIK_poleVectorConstraint1" -p "R_shoulderIK";
	addAttr -ci true -sn "w0" -ln "R_shoulderPoleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode ikHandle -n "R_armIK" -p "Dummy_Root";
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "R_armIK_pointConstraint1" -p "R_armIK";
	addAttr -ci true -sn "w0" -ln "R_wristLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "R_armIK_poleVectorConstraint1" -p "R_armIK";
	addAttr -ci true -sn "w0" -ln "R_armPoleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode ikHandle -n "L_legIK" -p "Dummy_Root";
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "L_legIK_pointConstraint1" -p "L_legIK";
	addAttr -ci true -sn "w0" -ln "L_ankleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "L_legIK_poleVectorConstraint1" -p "L_legIK";
	addAttr -ci true -sn "w0" -ln "L_LegPoleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "L_legPoleGRP" -p "Dummy_Root";
createNode pointConstraint -n "L_legPoleGRP_pointConstraint1" -p "L_legPoleGRP";
	addAttr -ci true -sn "w0" -ln "L_ankleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "L_LegPoleLocator" -p "L_legPoleGRP";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 5.256457199382722 ;
createNode locator -n "L_LegPoleLocatorShape" -p "L_LegPoleLocator";
	setAttr -k off ".v";
createNode ikHandle -n "R_legIK" -p "Dummy_Root";
	setAttr ".roc" yes;
	setAttr ".sio" yes;
createNode pointConstraint -n "R_legIK_pointConstraint1" -p "R_legIK";
	addAttr -ci true -sn "w0" -ln "R_ankleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "R_legIK_poleVectorConstraint1" -p "R_legIK";
	addAttr -ci true -sn "w0" -ln "R_LegPoleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "R_legPoleGRP" -p "Dummy_Root";
createNode pointConstraint -n "R_legPoleGRP_pointConstraint1" -p "R_legPoleGRP";
	addAttr -ci true -sn "w0" -ln "R_ankleLocatorW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode transform -n "R_LegPoleLocator" -p "R_legPoleGRP";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 5.2564571993827203 ;
createNode locator -n "R_LegPoleLocatorShape" -p "R_LegPoleLocator";
	setAttr -k off ".v";
createNode displayLayer -n "defaultLayer";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 12 ".dli[1:11]"  15 29 31 32 33 2 3 4 
		5 1 6;
	setAttr -s 2 ".dli";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n"
		+ "                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 1\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n"
		+ "                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 1\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" (localizedPanelLabel(\"Web Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode displayLayer -n "LowRes";
	setAttr ".do" 1;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode expression -n "expression1";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = (.I[0] * 1) * 0.3553246851 * (1 - .I[1] * .1)";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 30.48;
createNode expression -n "expression2";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = (.I[0] * 1) * 0.3553246851 * (1 - .I[1] * .1)";
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 30.48;
createNode expression -n "expression3";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = .I[0] * (1 - .I[1] * .1)";
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "expression4";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = .I[0] * (1 - .I[1] * .1)";
createNode unitConversion -n "unitConversion7";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "expression5";
	setAttr -k on ".nds";
	setAttr -s 2 ".in";
	setAttr -s 2 ".in";
	setAttr ".ixp" -type "string" ".O[0] = .I[0] * (1 - .I[1] * .1)";
createNode unitConversion -n "unitConversion9";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion10";
	setAttr ".cf" 0.017453292519943295;
createNode ikRPsolver -n "ikRPsolver";
createNode expression -n "expression6";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = -(.I[0] * .75)";
createNode unitConversion -n "unitConversion11";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion13";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion14";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion15";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion16";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion17";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion18";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion19";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion20";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion21";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion22";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion23";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion24";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion25";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion26";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion27";
	setAttr ".cf" 0.032808398950131233;
createNode expression -n "expression7";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0] * 9";
createNode unitConversion -n "unitConversion28";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "expression8";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0] * 9";
createNode unitConversion -n "unitConversion29";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion30";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion31";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion32";
	setAttr ".cf" 0.032808398950131233;
createNode expression -n "expression9";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = -(.I[0] * 9)";
createNode unitConversion -n "unitConversion33";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "expression10";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0] * 9";
createNode unitConversion -n "unitConversion34";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "expression11";
	setAttr -k on ".nds";
	setAttr -s 3 ".in";
	setAttr -s 3 ".in";
	setAttr ".ixp" -type "string" ".O[0] = ((.I[0] *1) - (.I[1] * 2) )* (.I[2] * 10)";
createNode unitConversion -n "unitConversion35";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion36";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion37";
	setAttr ".cf" 0.017453292519943295;
createNode expression -n "expression12";
	setAttr -k on ".nds";
	setAttr -s 3 ".in";
	setAttr -s 3 ".in";
	setAttr ".ixp" -type "string" ".O[0] = ((.I[0] *1)- (.I[1] * 2) )* (.I[2] * 10)";
createNode unitConversion -n "unitConversion38";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion39";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion40";
	setAttr ".cf" 0.017453292519943295;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 22 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :lambert1;
	setAttr ".miic" -type "float3" 3.1415927 3.1415927 3.1415927 ;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr ".ep" 1;
select -ne :defaultResolution;
	setAttr ".w" 320;
	setAttr ".h" 240;
	setAttr ".dar" 1.3333332538604736;
select -ne :hardwareRenderGlobals;
	setAttr ".enpt" no;
	setAttr ".hgcd" no;
	setAttr ".hgci" no;
select -ne :hardwareRenderingGlobals;
	setAttr ".vac" 2;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
select -ne :hyperGraphLayout;
connectAttr "unitConversion6.o" "MidRot.rx";
connectAttr "unitConversion8.o" "MidRot.ry";
connectAttr "unitConversion10.o" "MidRot.rz";
connectAttr "unitConversion2.o" "MidBackGRP.tx";
connectAttr "unitConversion4.o" "MidBackGRP.tz";
connectAttr "Spine_1.msg" "MidBackIK.hsj";
connectAttr "effector1.hp" "MidBackIK.hee";
connectAttr "ikRPsolver.msg" "MidBackIK.hsv";
connectAttr "MidBackIK_pointConstraint1.ctx" "MidBackIK.tx";
connectAttr "MidBackIK_pointConstraint1.cty" "MidBackIK.ty";
connectAttr "MidBackIK_pointConstraint1.ctz" "MidBackIK.tz";
connectAttr "MidBackIK.pim" "MidBackIK_pointConstraint1.cpim";
connectAttr "MidBackIK.rp" "MidBackIK_pointConstraint1.crp";
connectAttr "MidBackIK.rpt" "MidBackIK_pointConstraint1.crt";
connectAttr "MidBackLocator.t" "MidBackIK_pointConstraint1.tg[0].tt";
connectAttr "MidBackLocator.rp" "MidBackIK_pointConstraint1.tg[0].trp";
connectAttr "MidBackLocator.rpt" "MidBackIK_pointConstraint1.tg[0].trt";
connectAttr "MidBackLocator.pm" "MidBackIK_pointConstraint1.tg[0].tpm";
connectAttr "MidBackIK_pointConstraint1.w0" "MidBackIK_pointConstraint1.tg[0].tw"
		;
connectAttr "Spine_2.msg" "CollarIK.hsj";
connectAttr "effector2.hp" "CollarIK.hee";
connectAttr "ikRPsolver.msg" "CollarIK.hsv";
connectAttr "CollarIK_pointConstraint1.ctx" "CollarIK.tx";
connectAttr "CollarIK_pointConstraint1.cty" "CollarIK.ty";
connectAttr "CollarIK_pointConstraint1.ctz" "CollarIK.tz";
connectAttr "CollarIK.pim" "CollarIK_pointConstraint1.cpim";
connectAttr "CollarIK.rp" "CollarIK_pointConstraint1.crp";
connectAttr "CollarIK.rpt" "CollarIK_pointConstraint1.crt";
connectAttr "CollarGRP.t" "CollarIK_pointConstraint1.tg[0].tt";
connectAttr "CollarGRP.rp" "CollarIK_pointConstraint1.tg[0].trp";
connectAttr "CollarGRP.rpt" "CollarIK_pointConstraint1.tg[0].trt";
connectAttr "CollarGRP.pm" "CollarIK_pointConstraint1.tg[0].tpm";
connectAttr "CollarIK_pointConstraint1.w0" "CollarIK_pointConstraint1.tg[0].tw";
connectAttr "L_armGroup_pointConstraint1.ctx" "L_armGroup.tx";
connectAttr "L_armGroup_pointConstraint1.cty" "L_armGroup.ty";
connectAttr "L_armGroup_pointConstraint1.ctz" "L_armGroup.tz";
connectAttr "L_armGroup.pim" "L_armGroup_pointConstraint1.cpim";
connectAttr "L_armGroup.rp" "L_armGroup_pointConstraint1.crp";
connectAttr "L_armGroup.rpt" "L_armGroup_pointConstraint1.crt";
connectAttr "L_shoulder_fin.t" "L_armGroup_pointConstraint1.tg[0].tt";
connectAttr "L_shoulder_fin.rp" "L_armGroup_pointConstraint1.tg[0].trp";
connectAttr "L_shoulder_fin.rpt" "L_armGroup_pointConstraint1.tg[0].trt";
connectAttr "L_shoulder_fin.pm" "L_armGroup_pointConstraint1.tg[0].tpm";
connectAttr "L_armGroup_pointConstraint1.w0" "L_armGroup_pointConstraint1.tg[0].tw"
		;
connectAttr "R_armGroup_pointConstraint1.ctx" "R_armGroup.tx";
connectAttr "R_armGroup_pointConstraint1.cty" "R_armGroup.ty";
connectAttr "R_armGroup_pointConstraint1.ctz" "R_armGroup.tz";
connectAttr "R_armGroup.pim" "R_armGroup_pointConstraint1.cpim";
connectAttr "R_armGroup.rp" "R_armGroup_pointConstraint1.crp";
connectAttr "R_armGroup.rpt" "R_armGroup_pointConstraint1.crt";
connectAttr "R_shoulder_fin.t" "R_armGroup_pointConstraint1.tg[0].tt";
connectAttr "R_shoulder_fin.rp" "R_armGroup_pointConstraint1.tg[0].trp";
connectAttr "R_shoulder_fin.rpt" "R_armGroup_pointConstraint1.tg[0].trt";
connectAttr "R_shoulder_fin.pm" "R_armGroup_pointConstraint1.tg[0].tpm";
connectAttr "R_armGroup_pointConstraint1.w0" "R_armGroup_pointConstraint1.tg[0].tw"
		;
connectAttr "neckTwist_orientConstraint1.crx" "neckTwist.rx";
connectAttr "neckTwist_orientConstraint1.cry" "neckTwist.ry";
connectAttr "neckTwist_orientConstraint1.crz" "neckTwist.rz";
connectAttr "neckTwist.ro" "neckTwist_orientConstraint1.cro";
connectAttr "neckTwist.pim" "neckTwist_orientConstraint1.cpim";
connectAttr "HeadLocator.r" "neckTwist_orientConstraint1.tg[0].tr";
connectAttr "HeadLocator.ro" "neckTwist_orientConstraint1.tg[0].tro";
connectAttr "HeadLocator.pm" "neckTwist_orientConstraint1.tg[0].tpm";
connectAttr "neckTwist_orientConstraint1.w0" "neckTwist_orientConstraint1.tg[0].tw"
		;
connectAttr "Skeleton_Root.s" "L_hip.is";
connectAttr "L_hip.s" "L_knee.is";
connectAttr "L_knee.s" "L_ankle.is";
connectAttr "L_ankle.s" "L_ball.is";
connectAttr "unitConversion29.o" "L_ball.rz";
connectAttr "L_ball.s" "L_toe.is";
connectAttr "LowRes.di" "pCube1.do";
connectAttr "LowRes.di" "pCubeShape1.do";
connectAttr "LowRes.di" "pCylinder3.do";
connectAttr "LowRes.di" "pCylinderShape3.do";
connectAttr "L_ball.tx" "effector9.tx";
connectAttr "L_ball.ty" "effector9.ty";
connectAttr "L_ball.tz" "effector9.tz";
connectAttr "LowRes.di" "pCylinder1.do";
connectAttr "LowRes.di" "pCylinderShape1.do";
connectAttr "L_ankle.tx" "effector8.tx";
connectAttr "L_ankle.ty" "effector8.ty";
connectAttr "L_ankle.tz" "effector8.tz";
connectAttr "LowRes.di" "pCylinder28.do";
connectAttr "LowRes.di" "pCylinderShape28.do";
connectAttr "Skeleton_Root.s" "R_hip.is";
connectAttr "R_hip.s" "R_knee.is";
connectAttr "R_knee.s" "R_ankle.is";
connectAttr "R_ankle.s" "R_ball.is";
connectAttr "unitConversion34.o" "R_ball.rz";
connectAttr "R_ball.s" "R_toe.is";
connectAttr "LowRes.di" "pCube14.do";
connectAttr "LowRes.di" "pCubeShape14.do";
connectAttr "LowRes.di" "pCylinder19.do";
connectAttr "LowRes.di" "pCylinderShape19.do";
connectAttr "R_ball.tx" "effector11.tx";
connectAttr "R_ball.ty" "effector11.ty";
connectAttr "R_ball.tz" "effector11.tz";
connectAttr "LowRes.di" "pCylinder32.do";
connectAttr "LowRes.di" "pCylinderShape32.do";
connectAttr "R_ankle.tx" "effector10.tx";
connectAttr "R_ankle.ty" "effector10.ty";
connectAttr "R_ankle.tz" "effector10.tz";
connectAttr "LowRes.di" "pCylinder31.do";
connectAttr "LowRes.di" "pCylinderShape31.do";
connectAttr "Spine_1.s" "Spine_2.is";
connectAttr "Spine_2.s" "Collar.is";
connectAttr "Collar.s" "Neck_1.is";
connectAttr "Neck_1.s" "Head_1.is";
connectAttr "Head_1_orientConstraint1.crx" "Head_1.rx";
connectAttr "Head_1_orientConstraint1.cry" "Head_1.ry";
connectAttr "Head_1_orientConstraint1.crz" "Head_1.rz";
connectAttr "LowRes.di" "pCylinder16.do";
connectAttr "LowRes.di" "pCylinderShape16.do";
connectAttr "Head_1.ro" "Head_1_orientConstraint1.cro";
connectAttr "Head_1.pim" "Head_1_orientConstraint1.cpim";
connectAttr "Head_1.jo" "Head_1_orientConstraint1.cjo";
connectAttr "HeadLocator.r" "Head_1_orientConstraint1.tg[0].tr";
connectAttr "HeadLocator.ro" "Head_1_orientConstraint1.tg[0].tro";
connectAttr "HeadLocator.pm" "Head_1_orientConstraint1.tg[0].tpm";
connectAttr "Head_1_orientConstraint1.w0" "Head_1_orientConstraint1.tg[0].tw";
connectAttr "LowRes.di" "pCylinder9.do";
connectAttr "LowRes.di" "pCylinderShape9.do";
connectAttr "Head_1.tx" "effector3.tx";
connectAttr "Head_1.ty" "effector3.ty";
connectAttr "Head_1.tz" "effector3.tz";
connectAttr "Collar.s" "L_collar.is";
connectAttr "L_collar.s" "L_shoulder.is";
connectAttr "L_shoulder.s" "L_elbow.is";
connectAttr "L_elbow.s" "L_forearm.is";
connectAttr "L_wrist.s" "L_pinky_1.is";
connectAttr "L_pinky_1.s" "L_pinky_2.is";
connectAttr "L_pinky_2.s" "L_pinky_end.is";
connectAttr "L_wrist.s" "L_ring_1.is";
connectAttr "L_ring_1.s" "L_ring_2.is";
connectAttr "L_ring_2.s" "L_ring_end.is";
connectAttr "L_wrist.s" "L_middle_1.is";
connectAttr "L_middle_1.s" "L_middle_2.is";
connectAttr "L_middle_2.s" "L_middle_end.is";
connectAttr "L_wrist.s" "L_index_1.is";
connectAttr "L_index_1.s" "L_index_2.is";
connectAttr "L_index_2.s" "L_index_end.is";
connectAttr "L_wrist.s" "L_thumb_1.is";
connectAttr "L_thumb_1.s" "L_thumb_2.is";
connectAttr "L_thumb_2.s" "L_thumb_end.is";
connectAttr "LowRes.di" "pCube25.do";
connectAttr "LowRes.di" "pCubeShape25.do";
connectAttr "LowRes.di" "pCylinder25.do";
connectAttr "LowRes.di" "pCylinderShape25.do";
connectAttr "L_wrist.tx" "effector5.tx";
connectAttr "L_wrist.ty" "effector5.ty";
connectAttr "L_wrist.tz" "effector5.tz";
connectAttr "LowRes.di" "pCylinder27.do";
connectAttr "LowRes.di" "pCylinderShape27.do";
connectAttr "LowRes.di" "polySurface119.do";
connectAttr "groupId2.id" "polySurfaceShape122.iog.og[9].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape122.iog.og[9].gco";
connectAttr "LowRes.di" "polySurfaceShape122.do";
connectAttr "L_shoulder.tx" "effector4.tx";
connectAttr "L_shoulder.ty" "effector4.ty";
connectAttr "L_shoulder.tz" "effector4.tz";
connectAttr "Collar.s" "R_collar.is";
connectAttr "R_collar.s" "R_shoulder.is";
connectAttr "R_shoulder.s" "R_elbow.is";
connectAttr "R_elbow.s" "R_forearm.is";
connectAttr "R_wrist.s" "R_pinky_1.is";
connectAttr "R_pinky_1.s" "R_pinky_2.is";
connectAttr "R_pinky_2.s" "R_pinky_end.is";
connectAttr "R_wrist.s" "R_ring_1.is";
connectAttr "R_ring_1.s" "R_ring_2.is";
connectAttr "R_ring_2.s" "R_ring_end.is";
connectAttr "R_wrist.s" "R_middle_1.is";
connectAttr "R_middle_1.s" "R_middle_2.is";
connectAttr "R_middle_2.s" "R_middle_end.is";
connectAttr "R_wrist.s" "R_index_1.is";
connectAttr "R_index_1.s" "R_index_2.is";
connectAttr "R_index_2.s" "R_index_end.is";
connectAttr "R_wrist.s" "R_thumb_1.is";
connectAttr "R_thumb_1.s" "R_thumb_2.is";
connectAttr "R_thumb_2.s" "R_thumb_end.is";
connectAttr "LowRes.di" "pCube26.do";
connectAttr "LowRes.di" "pCubeShape26.do";
connectAttr "LowRes.di" "pCylinder30.do";
connectAttr "LowRes.di" "pCylinderShape30.do";
connectAttr "R_wrist.tx" "effector7.tx";
connectAttr "R_wrist.ty" "effector7.ty";
connectAttr "R_wrist.tz" "effector7.tz";
connectAttr "LowRes.di" "pCylinder29.do";
connectAttr "LowRes.di" "pCylinderShape29.do";
connectAttr "LowRes.di" "polySurface118.do";
connectAttr "groupId1.id" "polySurfaceShape119.iog.og[7].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape119.iog.og[7].gco";
connectAttr "LowRes.di" "polySurfaceShape119.do";
connectAttr "R_shoulder.tx" "effector6.tx";
connectAttr "R_shoulder.ty" "effector6.ty";
connectAttr "R_shoulder.tz" "effector6.tz";
connectAttr "LowRes.di" "pCylinder8.do";
connectAttr "LowRes.di" "pCylinderShape8.do";
connectAttr "unitConversion37.o" "L_shoulder_rot.rz";
connectAttr "unitConversion40.o" "R_shoulder_rot.rz";
connectAttr "LowRes.di" "pCylinder6.do";
connectAttr "LowRes.di" "pCylinderShape6.do";
connectAttr "Collar.tx" "effector2.tx";
connectAttr "Collar.ty" "effector2.ty";
connectAttr "Collar.tz" "effector2.tz";
connectAttr "LowRes.di" "pCylinder5.do";
connectAttr "LowRes.di" "pCylinderShape5.do";
connectAttr "Spine_2.tx" "effector1.tx";
connectAttr "Spine_2.ty" "effector1.ty";
connectAttr "Spine_2.tz" "effector1.tz";
connectAttr "LowRes.di" "pCylinder4.do";
connectAttr "LowRes.di" "pCylinderShape4.do";
connectAttr "HeadGRP2_pointConstraint1.ctx" "HeadGRP2.tx";
connectAttr "HeadGRP2_pointConstraint1.cty" "HeadGRP2.ty";
connectAttr "HeadGRP2_pointConstraint1.ctz" "HeadGRP2.tz";
connectAttr "HeadGRP2.pim" "HeadGRP2_pointConstraint1.cpim";
connectAttr "HeadGRP2.rp" "HeadGRP2_pointConstraint1.crp";
connectAttr "HeadGRP2.rpt" "HeadGRP2_pointConstraint1.crt";
connectAttr "HeadGRP1.t" "HeadGRP2_pointConstraint1.tg[0].tt";
connectAttr "HeadGRP1.rp" "HeadGRP2_pointConstraint1.tg[0].trp";
connectAttr "HeadGRP1.rpt" "HeadGRP2_pointConstraint1.tg[0].trt";
connectAttr "HeadGRP1.pm" "HeadGRP2_pointConstraint1.tg[0].tpm";
connectAttr "HeadGRP2_pointConstraint1.w0" "HeadGRP2_pointConstraint1.tg[0].tw";
connectAttr "Neck_1.msg" "HeadIK.hsj";
connectAttr "effector3.hp" "HeadIK.hee";
connectAttr "ikRPsolver.msg" "HeadIK.hsv";
connectAttr "HeadIK_pointConstraint1.ctx" "HeadIK.tx";
connectAttr "HeadIK_pointConstraint1.cty" "HeadIK.ty";
connectAttr "HeadIK_pointConstraint1.ctz" "HeadIK.tz";
connectAttr "unitConversion12.o" "HeadIK.twi";
connectAttr "HeadIK.pim" "HeadIK_pointConstraint1.cpim";
connectAttr "HeadIK.rp" "HeadIK_pointConstraint1.crp";
connectAttr "HeadIK.rpt" "HeadIK_pointConstraint1.crt";
connectAttr "HeadLocator.t" "HeadIK_pointConstraint1.tg[0].tt";
connectAttr "HeadLocator.rp" "HeadIK_pointConstraint1.tg[0].trp";
connectAttr "HeadLocator.rpt" "HeadIK_pointConstraint1.tg[0].trt";
connectAttr "HeadLocator.pm" "HeadIK_pointConstraint1.tg[0].tpm";
connectAttr "HeadIK_pointConstraint1.w0" "HeadIK_pointConstraint1.tg[0].tw";
connectAttr "L_ankle.msg" "L_ballIK.hsj";
connectAttr "effector9.hp" "L_ballIK.hee";
connectAttr "ikRPsolver.msg" "L_ballIK.hsv";
connectAttr "R_ankle.msg" "R_ballIK.hsj";
connectAttr "effector11.hp" "R_ballIK.hee";
connectAttr "ikRPsolver.msg" "R_ballIK.hsv";
connectAttr "L_collar.msg" "L_shoulderIK.hsj";
connectAttr "effector4.hp" "L_shoulderIK.hee";
connectAttr "ikRPsolver.msg" "L_shoulderIK.hsv";
connectAttr "L_shoulderIK_pointConstraint1.ctx" "L_shoulderIK.tx";
connectAttr "L_shoulderIK_pointConstraint1.cty" "L_shoulderIK.ty";
connectAttr "L_shoulderIK_pointConstraint1.ctz" "L_shoulderIK.tz";
connectAttr "unitConversion13.o" "L_shoulderIK.pvx";
connectAttr "unitConversion14.o" "L_shoulderIK.pvy";
connectAttr "unitConversion15.o" "L_shoulderIK.pvz";
connectAttr "L_shoulderIK.pim" "L_shoulderIK_pointConstraint1.cpim";
connectAttr "L_shoulderIK.rp" "L_shoulderIK_pointConstraint1.crp";
connectAttr "L_shoulderIK.rpt" "L_shoulderIK_pointConstraint1.crt";
connectAttr "L_shoulderLocator.t" "L_shoulderIK_pointConstraint1.tg[0].tt";
connectAttr "L_shoulderLocator.rp" "L_shoulderIK_pointConstraint1.tg[0].trp";
connectAttr "L_shoulderLocator.rpt" "L_shoulderIK_pointConstraint1.tg[0].trt";
connectAttr "L_shoulderLocator.pm" "L_shoulderIK_pointConstraint1.tg[0].tpm";
connectAttr "L_shoulderIK_pointConstraint1.w0" "L_shoulderIK_pointConstraint1.tg[0].tw"
		;
connectAttr "L_shoulderIK.pim" "L_shoulderIK_poleVectorConstraint1.cpim";
connectAttr "L_collar.pm" "L_shoulderIK_poleVectorConstraint1.ps";
connectAttr "L_collar.t" "L_shoulderIK_poleVectorConstraint1.crp";
connectAttr "L_shoulderPoleLocator.t" "L_shoulderIK_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "L_shoulderPoleLocator.rp" "L_shoulderIK_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "L_shoulderPoleLocator.rpt" "L_shoulderIK_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "L_shoulderPoleLocator.pm" "L_shoulderIK_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "L_shoulderIK_poleVectorConstraint1.w0" "L_shoulderIK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_shoulder.msg" "L_armIK.hsj";
connectAttr "effector5.hp" "L_armIK.hee";
connectAttr "ikRPsolver.msg" "L_armIK.hsv";
connectAttr "L_armIK_pointConstraint1.ctx" "L_armIK.tx";
connectAttr "L_armIK_pointConstraint1.cty" "L_armIK.ty";
connectAttr "L_armIK_pointConstraint1.ctz" "L_armIK.tz";
connectAttr "unitConversion16.o" "L_armIK.pvx";
connectAttr "unitConversion17.o" "L_armIK.pvy";
connectAttr "unitConversion18.o" "L_armIK.pvz";
connectAttr "L_armIK.pim" "L_armIK_pointConstraint1.cpim";
connectAttr "L_armIK.rp" "L_armIK_pointConstraint1.crp";
connectAttr "L_armIK.rpt" "L_armIK_pointConstraint1.crt";
connectAttr "L_wristLocator.t" "L_armIK_pointConstraint1.tg[0].tt";
connectAttr "L_wristLocator.rp" "L_armIK_pointConstraint1.tg[0].trp";
connectAttr "L_wristLocator.rpt" "L_armIK_pointConstraint1.tg[0].trt";
connectAttr "L_wristLocator.pm" "L_armIK_pointConstraint1.tg[0].tpm";
connectAttr "L_armIK_pointConstraint1.w0" "L_armIK_pointConstraint1.tg[0].tw";
connectAttr "L_armIK.pim" "L_armIK_poleVectorConstraint1.cpim";
connectAttr "L_shoulder.pm" "L_armIK_poleVectorConstraint1.ps";
connectAttr "L_shoulder.t" "L_armIK_poleVectorConstraint1.crp";
connectAttr "L_armPoleLocator.t" "L_armIK_poleVectorConstraint1.tg[0].tt";
connectAttr "L_armPoleLocator.rp" "L_armIK_poleVectorConstraint1.tg[0].trp";
connectAttr "L_armPoleLocator.rpt" "L_armIK_poleVectorConstraint1.tg[0].trt";
connectAttr "L_armPoleLocator.pm" "L_armIK_poleVectorConstraint1.tg[0].tpm";
connectAttr "L_armIK_poleVectorConstraint1.w0" "L_armIK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_collar.msg" "R_shoulderIK.hsj";
connectAttr "effector6.hp" "R_shoulderIK.hee";
connectAttr "ikRPsolver.msg" "R_shoulderIK.hsv";
connectAttr "R_shoulderIK_pointConstraint1.ctx" "R_shoulderIK.tx";
connectAttr "R_shoulderIK_pointConstraint1.cty" "R_shoulderIK.ty";
connectAttr "R_shoulderIK_pointConstraint1.ctz" "R_shoulderIK.tz";
connectAttr "unitConversion19.o" "R_shoulderIK.pvx";
connectAttr "unitConversion20.o" "R_shoulderIK.pvy";
connectAttr "unitConversion21.o" "R_shoulderIK.pvz";
connectAttr "R_shoulderIK.pim" "R_shoulderIK_pointConstraint1.cpim";
connectAttr "R_shoulderIK.rp" "R_shoulderIK_pointConstraint1.crp";
connectAttr "R_shoulderIK.rpt" "R_shoulderIK_pointConstraint1.crt";
connectAttr "R_shoulderLocator.t" "R_shoulderIK_pointConstraint1.tg[0].tt";
connectAttr "R_shoulderLocator.rp" "R_shoulderIK_pointConstraint1.tg[0].trp";
connectAttr "R_shoulderLocator.rpt" "R_shoulderIK_pointConstraint1.tg[0].trt";
connectAttr "R_shoulderLocator.pm" "R_shoulderIK_pointConstraint1.tg[0].tpm";
connectAttr "R_shoulderIK_pointConstraint1.w0" "R_shoulderIK_pointConstraint1.tg[0].tw"
		;
connectAttr "R_shoulderIK.pim" "R_shoulderIK_poleVectorConstraint1.cpim";
connectAttr "R_collar.pm" "R_shoulderIK_poleVectorConstraint1.ps";
connectAttr "R_collar.t" "R_shoulderIK_poleVectorConstraint1.crp";
connectAttr "R_shoulderPoleLocator.t" "R_shoulderIK_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "R_shoulderPoleLocator.rp" "R_shoulderIK_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "R_shoulderPoleLocator.rpt" "R_shoulderIK_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "R_shoulderPoleLocator.pm" "R_shoulderIK_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "R_shoulderIK_poleVectorConstraint1.w0" "R_shoulderIK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_shoulder.msg" "R_armIK.hsj";
connectAttr "effector7.hp" "R_armIK.hee";
connectAttr "ikRPsolver.msg" "R_armIK.hsv";
connectAttr "R_armIK_pointConstraint1.ctx" "R_armIK.tx";
connectAttr "R_armIK_pointConstraint1.cty" "R_armIK.ty";
connectAttr "R_armIK_pointConstraint1.ctz" "R_armIK.tz";
connectAttr "unitConversion22.o" "R_armIK.pvx";
connectAttr "unitConversion23.o" "R_armIK.pvy";
connectAttr "unitConversion24.o" "R_armIK.pvz";
connectAttr "R_armIK.pim" "R_armIK_pointConstraint1.cpim";
connectAttr "R_armIK.rp" "R_armIK_pointConstraint1.crp";
connectAttr "R_armIK.rpt" "R_armIK_pointConstraint1.crt";
connectAttr "R_wristLocator.t" "R_armIK_pointConstraint1.tg[0].tt";
connectAttr "R_wristLocator.rp" "R_armIK_pointConstraint1.tg[0].trp";
connectAttr "R_wristLocator.rpt" "R_armIK_pointConstraint1.tg[0].trt";
connectAttr "R_wristLocator.pm" "R_armIK_pointConstraint1.tg[0].tpm";
connectAttr "R_armIK_pointConstraint1.w0" "R_armIK_pointConstraint1.tg[0].tw";
connectAttr "R_armIK.pim" "R_armIK_poleVectorConstraint1.cpim";
connectAttr "R_shoulder.pm" "R_armIK_poleVectorConstraint1.ps";
connectAttr "R_shoulder.t" "R_armIK_poleVectorConstraint1.crp";
connectAttr "R_armPoleLocator.t" "R_armIK_poleVectorConstraint1.tg[0].tt";
connectAttr "R_armPoleLocator.rp" "R_armIK_poleVectorConstraint1.tg[0].trp";
connectAttr "R_armPoleLocator.rpt" "R_armIK_poleVectorConstraint1.tg[0].trt";
connectAttr "R_armPoleLocator.pm" "R_armIK_poleVectorConstraint1.tg[0].tpm";
connectAttr "R_armIK_poleVectorConstraint1.w0" "R_armIK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_hip.msg" "L_legIK.hsj";
connectAttr "effector8.hp" "L_legIK.hee";
connectAttr "ikRPsolver.msg" "L_legIK.hsv";
connectAttr "L_legIK_pointConstraint1.ctx" "L_legIK.tx";
connectAttr "L_legIK_pointConstraint1.cty" "L_legIK.ty";
connectAttr "L_legIK_pointConstraint1.ctz" "L_legIK.tz";
connectAttr "unitConversion25.o" "L_legIK.pvx";
connectAttr "unitConversion26.o" "L_legIK.pvy";
connectAttr "unitConversion27.o" "L_legIK.pvz";
connectAttr "L_legIK.pim" "L_legIK_pointConstraint1.cpim";
connectAttr "L_legIK.rp" "L_legIK_pointConstraint1.crp";
connectAttr "L_legIK.rpt" "L_legIK_pointConstraint1.crt";
connectAttr "L_ankleLocator.t" "L_legIK_pointConstraint1.tg[0].tt";
connectAttr "L_ankleLocator.rp" "L_legIK_pointConstraint1.tg[0].trp";
connectAttr "L_ankleLocator.rpt" "L_legIK_pointConstraint1.tg[0].trt";
connectAttr "L_ankleLocator.pm" "L_legIK_pointConstraint1.tg[0].tpm";
connectAttr "L_legIK_pointConstraint1.w0" "L_legIK_pointConstraint1.tg[0].tw";
connectAttr "L_legIK.pim" "L_legIK_poleVectorConstraint1.cpim";
connectAttr "L_hip.pm" "L_legIK_poleVectorConstraint1.ps";
connectAttr "L_hip.t" "L_legIK_poleVectorConstraint1.crp";
connectAttr "L_LegPoleLocator.t" "L_legIK_poleVectorConstraint1.tg[0].tt";
connectAttr "L_LegPoleLocator.rp" "L_legIK_poleVectorConstraint1.tg[0].trp";
connectAttr "L_LegPoleLocator.rpt" "L_legIK_poleVectorConstraint1.tg[0].trt";
connectAttr "L_LegPoleLocator.pm" "L_legIK_poleVectorConstraint1.tg[0].tpm";
connectAttr "L_legIK_poleVectorConstraint1.w0" "L_legIK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_legPoleGRP_pointConstraint1.ctx" "L_legPoleGRP.tx";
connectAttr "L_legPoleGRP_pointConstraint1.cty" "L_legPoleGRP.ty";
connectAttr "L_legPoleGRP_pointConstraint1.ctz" "L_legPoleGRP.tz";
connectAttr "unitConversion28.o" "L_legPoleGRP.ry";
connectAttr "L_legPoleGRP.pim" "L_legPoleGRP_pointConstraint1.cpim";
connectAttr "L_legPoleGRP.rp" "L_legPoleGRP_pointConstraint1.crp";
connectAttr "L_legPoleGRP.rpt" "L_legPoleGRP_pointConstraint1.crt";
connectAttr "L_ankleLocator.t" "L_legPoleGRP_pointConstraint1.tg[0].tt";
connectAttr "L_ankleLocator.rp" "L_legPoleGRP_pointConstraint1.tg[0].trp";
connectAttr "L_ankleLocator.rpt" "L_legPoleGRP_pointConstraint1.tg[0].trt";
connectAttr "L_ankleLocator.pm" "L_legPoleGRP_pointConstraint1.tg[0].tpm";
connectAttr "L_legPoleGRP_pointConstraint1.w0" "L_legPoleGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "R_hip.msg" "R_legIK.hsj";
connectAttr "effector10.hp" "R_legIK.hee";
connectAttr "ikRPsolver.msg" "R_legIK.hsv";
connectAttr "R_legIK_pointConstraint1.ctx" "R_legIK.tx";
connectAttr "R_legIK_pointConstraint1.cty" "R_legIK.ty";
connectAttr "R_legIK_pointConstraint1.ctz" "R_legIK.tz";
connectAttr "unitConversion30.o" "R_legIK.pvx";
connectAttr "unitConversion31.o" "R_legIK.pvy";
connectAttr "unitConversion32.o" "R_legIK.pvz";
connectAttr "R_legIK.pim" "R_legIK_pointConstraint1.cpim";
connectAttr "R_legIK.rp" "R_legIK_pointConstraint1.crp";
connectAttr "R_legIK.rpt" "R_legIK_pointConstraint1.crt";
connectAttr "R_ankleLocator.t" "R_legIK_pointConstraint1.tg[0].tt";
connectAttr "R_ankleLocator.rp" "R_legIK_pointConstraint1.tg[0].trp";
connectAttr "R_ankleLocator.rpt" "R_legIK_pointConstraint1.tg[0].trt";
connectAttr "R_ankleLocator.pm" "R_legIK_pointConstraint1.tg[0].tpm";
connectAttr "R_legIK_pointConstraint1.w0" "R_legIK_pointConstraint1.tg[0].tw";
connectAttr "R_legIK.pim" "R_legIK_poleVectorConstraint1.cpim";
connectAttr "R_hip.pm" "R_legIK_poleVectorConstraint1.ps";
connectAttr "R_hip.t" "R_legIK_poleVectorConstraint1.crp";
connectAttr "R_LegPoleLocator.t" "R_legIK_poleVectorConstraint1.tg[0].tt";
connectAttr "R_LegPoleLocator.rp" "R_legIK_poleVectorConstraint1.tg[0].trp";
connectAttr "R_LegPoleLocator.rpt" "R_legIK_poleVectorConstraint1.tg[0].trt";
connectAttr "R_LegPoleLocator.pm" "R_legIK_poleVectorConstraint1.tg[0].tpm";
connectAttr "R_legIK_poleVectorConstraint1.w0" "R_legIK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_legPoleGRP_pointConstraint1.ctx" "R_legPoleGRP.tx";
connectAttr "R_legPoleGRP_pointConstraint1.cty" "R_legPoleGRP.ty";
connectAttr "R_legPoleGRP_pointConstraint1.ctz" "R_legPoleGRP.tz";
connectAttr "unitConversion33.o" "R_legPoleGRP.ry";
connectAttr "R_legPoleGRP.pim" "R_legPoleGRP_pointConstraint1.cpim";
connectAttr "R_legPoleGRP.rp" "R_legPoleGRP_pointConstraint1.crp";
connectAttr "R_legPoleGRP.rpt" "R_legPoleGRP_pointConstraint1.crt";
connectAttr "R_ankleLocator.t" "R_legPoleGRP_pointConstraint1.tg[0].tt";
connectAttr "R_ankleLocator.rp" "R_legPoleGRP_pointConstraint1.tg[0].trp";
connectAttr "R_ankleLocator.rpt" "R_legPoleGRP_pointConstraint1.tg[0].trt";
connectAttr "R_ankleLocator.pm" "R_legPoleGRP_pointConstraint1.tg[0].tpm";
connectAttr "R_legPoleGRP_pointConstraint1.w0" "R_legPoleGRP_pointConstraint1.tg[0].tw"
		;
connectAttr "layerManager.dli[0]" "defaultLayer.id";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "LowRes.id";
connectAttr "unitConversion1.o" "expression1.in[0]";
connectAttr "UpperBody.sideFlex" "expression1.in[1]";
connectAttr ":time1.o" "expression1.tim";
connectAttr "UpperBody.tx" "unitConversion1.i";
connectAttr "expression1.out[0]" "unitConversion2.i";
connectAttr "unitConversion3.o" "expression2.in[0]";
connectAttr "UpperBody.frontFlex" "expression2.in[1]";
connectAttr ":time1.o" "expression2.tim";
connectAttr "UpperBody.tz" "unitConversion3.i";
connectAttr "expression2.out[0]" "unitConversion4.i";
connectAttr "unitConversion5.o" "expression3.in[0]";
connectAttr "UpperBody.frontFlex" "expression3.in[1]";
connectAttr ":time1.o" "expression3.tim";
connectAttr "UpperBody.rx" "unitConversion5.i";
connectAttr "expression3.out[0]" "unitConversion6.i";
connectAttr "unitConversion7.o" "expression4.in[0]";
connectAttr "UpperBody.twistFlex" "expression4.in[1]";
connectAttr ":time1.o" "expression4.tim";
connectAttr "UpperBody.ry" "unitConversion7.i";
connectAttr "expression4.out[0]" "unitConversion8.i";
connectAttr "unitConversion9.o" "expression5.in[0]";
connectAttr "UpperBody.sideFlex" "expression5.in[1]";
connectAttr ":time1.o" "expression5.tim";
connectAttr "UpperBody.rz" "unitConversion9.i";
connectAttr "expression5.out[0]" "unitConversion10.i";
connectAttr "unitConversion11.o" "expression6.in[0]";
connectAttr ":time1.o" "expression6.tim";
connectAttr "neckTwist.ry" "unitConversion11.i";
connectAttr "expression6.out[0]" "unitConversion12.i";
connectAttr "L_shoulderIK_poleVectorConstraint1.ctx" "unitConversion13.i";
connectAttr "L_shoulderIK_poleVectorConstraint1.cty" "unitConversion14.i";
connectAttr "L_shoulderIK_poleVectorConstraint1.ctz" "unitConversion15.i";
connectAttr "L_armIK_poleVectorConstraint1.ctx" "unitConversion16.i";
connectAttr "L_armIK_poleVectorConstraint1.cty" "unitConversion17.i";
connectAttr "L_armIK_poleVectorConstraint1.ctz" "unitConversion18.i";
connectAttr "R_shoulderIK_poleVectorConstraint1.ctx" "unitConversion19.i";
connectAttr "R_shoulderIK_poleVectorConstraint1.cty" "unitConversion20.i";
connectAttr "R_shoulderIK_poleVectorConstraint1.ctz" "unitConversion21.i";
connectAttr "R_armIK_poleVectorConstraint1.ctx" "unitConversion22.i";
connectAttr "R_armIK_poleVectorConstraint1.cty" "unitConversion23.i";
connectAttr "R_armIK_poleVectorConstraint1.ctz" "unitConversion24.i";
connectAttr "L_legIK_poleVectorConstraint1.ctx" "unitConversion25.i";
connectAttr "L_legIK_poleVectorConstraint1.cty" "unitConversion26.i";
connectAttr "L_legIK_poleVectorConstraint1.ctz" "unitConversion27.i";
connectAttr "L_ankleLocator.KneeTwist" "expression7.in[0]";
connectAttr ":time1.o" "expression7.tim";
connectAttr "expression7.out[0]" "unitConversion28.i";
connectAttr "L_ankleLocator.ToeFlex" "expression8.in[0]";
connectAttr ":time1.o" "expression8.tim";
connectAttr "expression8.out[0]" "unitConversion29.i";
connectAttr "R_legIK_poleVectorConstraint1.ctx" "unitConversion30.i";
connectAttr "R_legIK_poleVectorConstraint1.cty" "unitConversion31.i";
connectAttr "R_legIK_poleVectorConstraint1.ctz" "unitConversion32.i";
connectAttr "R_ankleLocator.KneeTwist" "expression9.in[0]";
connectAttr ":time1.o" "expression9.tim";
connectAttr "expression9.out[0]" "unitConversion33.i";
connectAttr "R_ankleLocator.ToeFlex" "expression10.in[0]";
connectAttr ":time1.o" "expression10.tim";
connectAttr "expression10.out[0]" "unitConversion34.i";
connectAttr "unitConversion35.o" "expression11.in[0]";
connectAttr "unitConversion36.o" "expression11.in[1]";
connectAttr "UpperBody.shoulderFlex" "expression11.in[2]";
connectAttr ":time1.o" "expression11.tim";
connectAttr "UpperBody.tx" "unitConversion35.i";
connectAttr "MidBackLocator.tx" "unitConversion36.i";
connectAttr "expression11.out[0]" "unitConversion37.i";
connectAttr "unitConversion38.o" "expression12.in[0]";
connectAttr "unitConversion39.o" "expression12.in[1]";
connectAttr "UpperBody.shoulderFlex" "expression12.in[2]";
connectAttr ":time1.o" "expression12.tim";
connectAttr "UpperBody.tx" "unitConversion38.i";
connectAttr "MidBackLocator.tx" "unitConversion39.i";
connectAttr "expression12.out[0]" "unitConversion40.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape119.iog.og[7]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape122.iog.og[9]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "Skeleton_Root.msg" ":hyperGraphLayout.hyp[104].dn";
// End of Skeleton_Rigged.ma
