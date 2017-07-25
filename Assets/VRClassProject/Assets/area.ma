//Maya ASCII 2017 scene
//Name: area.ma
//Last modified: Tue, Feb 14, 2017 03:31:51 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "Arena";
	rename -uid "94070022-4191-BE03-A5DC-779C8A226B44";
createNode transform -n "Wall" -p "Arena";
	rename -uid "B8FB73D5-4BC7-6E56-5E4B-3AAA45930E76";
createNode mesh -n "WallShape" -p "Wall";
	rename -uid "22842167-4CC3-190B-E662-AA8882F2AF19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "Wall";
	rename -uid "CEC326A5-4549-B609-697F-17BA3E7649D5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 1 0 1 1 0.5 0 0.5
		 1 0.25 0 0.25 1 0.125 0 0.125 1 0.375 0 0.375 1 0.75 0 0.75 1 0.625 0 0.625 1 0.875
		 0 0.875 1 0 0 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -2 0 10 -2 10 10 6 0 10 6 10 10 10 -2.220446e-015 -10
		 10 10 -10 -2 -2.220446e-015 -10 -2 10 -10 10 0 10 10 10 10 2 4.4408921e-016 12 2 10 12
		 6 4.4408921e-016 12 6 10 12 2 0 10 2 10 10;
	setAttr -s 24 ".ed[0:23]"  14 0 0 0 1 0 1 15 0 15 14 0 8 2 0 2 3 0 3 9 0
		 9 8 0 6 4 0 4 5 0 5 7 0 7 6 0 0 6 0 7 1 0 4 8 0 9 5 0 12 10 0 10 11 0 11 13 0 13 12 0
		 2 12 0 13 3 0 10 14 0 15 11 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 14 0 1 15
		f 4 4 5 6 7
		mu 0 4 8 2 3 9
		f 4 8 9 10 11
		mu 0 4 6 4 5 7
		f 4 12 -12 13 -2
		mu 0 4 16 6 7 17
		f 4 14 -8 15 -10
		mu 0 4 4 8 9 5
		f 4 16 17 18 19
		mu 0 4 12 10 11 13
		f 4 20 -20 21 -6
		mu 0 4 2 12 13 3
		f 4 22 -4 23 -18
		mu 0 4 10 14 15 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "9A89DD55-47B0-7CE9-A65C-E79E5752F991";
	setAttr ".ics" -type "componentList" 6 "e[2]" "e[6]" "e[10]" "e[13]" "e[15]" "e[18]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "107FE840-4F91-50C2-8A86-C1977D7C3F1A";
	setAttr ".ics" -type "componentList" 5 "e[0]" "e[4]" "e[8]" "e[12]" "e[14]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyCloseBorder2.out" "WallShape.i";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polySurfaceShape1.o" "polyCloseBorder1.ip";
connectAttr "WallShape.iog" ":initialShadingGroup.dsm" -na;
// End of area.ma
