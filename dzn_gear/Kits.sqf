// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************



/*
	ISIS Hunters
		SL
		Corpsman
		
		FTL
		AR
		AAR
		R
	
*/

#define	AK74	["rhs_weap_ak74n","rhs_weap_ak74n_2","rhs_weap_aks74","rhs_weap_aks74_2"],["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"]
#define	AK74GP	["rhs_weap_ak74_gp25","rhs_weap_ak74n_gp25","rhs_weap_ak74n_2_gp25","rhs_weap_aks74_gp25"],["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK"]


/*
	ISIS Hunters
*/
#define	IH_UNI		["rhs_uniform_m88_patchless","rhs_uniform_emr_patchless"]
#define	IH_HEAD	["rhs_6b27m_green","rhs_6b27m_green_ess","rhs_6b27m_digi","rhs_6b27m_digi_ess","rhs_6b28_green","rhs_6b7_1m_emr","rhs_6b7_1m_olive","rhs_6b7_1m_ess","rhs_6b7_1m"]

kit_ih_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_m88_patchless","rhs_6b23_6sh116_vog_od","tf_rt1523g_big_bwmod","rhs_6b27m_green",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_fullplum_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",2],["rhs_mag_rgd5",2],["rhs_30Rnd_545x39_AK_green",4],["PRIMARY MAG",6],["rhs_VG40MD_Red",5],["rhs_VG40MD_Green",2]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellRed",2],["SmokeShellGreen",2],["SmokeShellBlue",1],["SmokeShellOrange",1]]]
];

kit_ih_medic = [
	["<EQUIPEMENT >>  ","rhs_uniform_m88_patchless","rhs_6b23_6sh116_od","B_FieldPack_khk","rhs_6b27m_green",""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",6],["rhs_mag_rgd5",2],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["ACE_salineIV_250",8],["ACE_packingBandage",5],["ACE_morphine",5],["ACE_epinephrine",5],["ACE_elasticBandage",5],["ACE_fieldDressing",5],["ACE_tourniquet",10],["ACE_surgicalKit",9]]]
];


// Khaki fireteam with AK only
kit_ih_k_ftl = [
	["<EQUIPEMENT >>  ","rhs_uniform_m88_patchless","rhs_6b23_6sh116_vog_od","B_FieldPack_oli",IH_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74GP,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",2],["rhs_VOG25P",10],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["rhs_30Rnd_545x39_AK_green",2],["rhs_VG40MD_Red",4]]]
];

kit_ih_k_ar = [
	["<EQUIPEMENT >>  ","rhs_uniform_m88_patchless","rhs_6b23_6sh116_od","B_FieldPack_oli",IH_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_2mag_camo","rhs_45Rnd_545X39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",2],["rhs_mag_rgd5",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",10]]]
];

kit_ih_k_aar = [
	["<EQUIPEMENT >>  ","rhs_uniform_m88_patchless","rhs_6b23_6sh116_od","B_FieldPack_oli",IH_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",2],["PRIMARY MAG",8],["rhs_30Rnd_545x39_AK_green",3]]],
	["<BACKPACK ITEMS >> ",[["rhs_45Rnd_545X39_7N6_AK",12]]]
];

kit_ih_k_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_m88_patchless","rhs_6b23_6sh116_od","",IH_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",3],["SmokeShell",2],["PRIMARY MAG",11]]],
	["<BACKPACK ITEMS >> ",[]]
];


// Gorka fireteam with PKM
kit_ih_g_ftl = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b23_6sh116_vog_od","B_FieldPack_oli",IH_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74GP,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",2],["rhs_VOG25P",10],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["rhs_30Rnd_545x39_AK_green",2],["rhs_VG40MD_Red",4]]]
];

kit_ih_g_mg = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b23_digi_engineer","B_Kitbag_rgr",IH_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",2],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_ih_g_amg = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b23_6sh116_od","B_Kitbag_rgr",IH_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["SmokeShell",2],["rhs_mag_rgd5",2],["PRIMARY MAG",7],["rhs_30Rnd_545x39_AK_green",4]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",4]]]
];

kit_ih_g_r = [
	["<EQUIPEMENT >>  ","rhs_uniform_gorka_r_y","rhs_6b23_6sh116_od","B_FieldPack_oli",IH_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["SmokeShell",2],["rhs_mag_rgd5",2],["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",3]]]
];


/*
	SAA
*/
kit_saa_pl = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_vest_commander","tf_rt1523g_big_bwmod","rhs_Booniehat_m81",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["SmokeShellRed",2],["SmokeShellGreen",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
];


kit_saa_sl = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","tf_rt1523g_big_bwmod","rhs_6b27m_green",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pm63","rhs_30Rnd_762x39mm_tracer",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShellRed",2],["SmokeShellGreen",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5]]]
];

#define	SAA_HEAD	["rhs_6b27m_green","rhs_6b27m_green","rhs_6b27m_green","rhs_6b27m_green","rhs_6b27m_green","rhs_6b27m_green","rhs_6b27m_green_ess"]

kit_saa_mg = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR","B_FieldPack_khk",SAA_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_saa_at = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","rhs_rpg_empty",SAA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_OG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_saa_aat = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","rhs_rpg_empty",SAA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_saa_gr = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92_vog","B_LegStrapBag_olive_F",SAA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74GP,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",2],["rhs_VOG25P",10],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5],["rhs_VG40MD_Red",3],["SmokeShellBlue",1],["SmokeShellRed",1]]]
];

kit_saa_sh = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","rhs_assault_umbts_engineer_empty",SAA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rshg2","rhs_rshg2_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["ACE_wirecutter",1],["ACE_Clacker",1],["DemoCharge_Remote_Mag",1],["rhs_weap_rshg2",1]]]
];

kit_saa_r = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","B_FieldPack_khk",SAA_HEAD,""],
	["<PRIMARY WEAPON >>  ",AK74,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",3]]]
];

kit_saa_crew = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","V_I_G_resistanceLeader_F","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74un","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShellRed",1],["SmokeShellBlue",1],["SmokeShell",2],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];


// Weapon Squad
kit_saa_atgm_tl = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","RHS_Kornet_Tripod_Bag","rhs_Booniehat_m81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n_2","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_saa_atgm = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","RHS_Kornet_Gun_Bag","rhs_Booniehat_m81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n_2","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_saa_aatgm = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","RHS_Kornet_Tripod_Bag","rhs_Booniehat_m81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n_2","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[]]
];


kit_saa_ag_tl = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","RHS_AGS30_Tripod_Bag","rhs_Booniehat_m81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n_2","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_saa_ag = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","RHS_AGS30_Gun_Bag","rhs_Booniehat_m81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n_2","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_saa_aag = [
	["<EQUIPEMENT >>  ","rhsgref_uniform_woodland","rhs_6b13_EMR_6sh92","RHS_AGS30_Tripod_Bag","rhs_Booniehat_m81",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n_2","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[]]
];


/*
	Vehicle Kits are NEEDED:
		- Weapon Squad
		- Generic AK74, PKM, RPG-7 ammo, ПАНАМКИ!!
		
*/	
cargo_kit_vehicle_ammo = [
	[["rhs_weap_rshg2",2]],
	[
		["rhs_100Rnd_762x54mmR",10],["rhs_30Rnd_545x39_AK",15],["rhs_30Rnd_545x39_AK_green",15],["rhs_45Rnd_545X39_7N6_AK",15],["rhs_30Rnd_762x39mm_tracer",15]
		,["rhs_VOG25P",20],["rhs_VG40MD_Red",10]
		,["rhs_rpg7_OG7V_mag",6],["rhs_rpg7_PG7VL_mag",6]
		,["rhs_mag_rgd5",10],["SmokeShellRed",10],["SmokeShellGreen",10],["SmokeShell",10]
		,["DemoCharge_Remote_Mag",5]
	],
	[["rhs_Booniehat_m81",10],["ACE_fieldDressing",20],["ACE_packingBandage",20],["ACE_elasticBandage",20],["ACE_tourniquet",20],["ACE_quikclot",10]],
	[["B_FieldPack_oli",3]]
];

cargo_kit_vehicle_ws = [
	[],
	[["rhs_30Rnd_545x39_AK_green",20],["SmokeShell",10],["rhs_mag_rgd5",10],["rhs_30Rnd_545x39_AK",20],["SmokeShellRed",10],["SmokeShellGreen",10]],
	[["ACE_fieldDressing",10],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_tourniquet",10],["ACE_quikclot",5]],
	[["RHS_Kornet_Tripod_Bag",4],["RHS_AGS30_Tripod_Bag",4]]
];

/*
	Insurgents
*/
kit_ins_random = [
	"kit_ins_r", "kit_ins_r", "kit_ins_r"
	, "kit_ins_gr"
	, "kit_ins_ar"
	, "kit_ins_at"
];

#define	INS_UNI	["U_BG_Guerrilla_6_1","U_BG_Guerrilla_6_1","U_BG_Guerrilla_6_1","U_I_G_resistanceLeader_F","U_BG_Guerilla1_1","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_BG_leader","U_I_C_Soldier_Bandit_3_F","U_I_C_Soldier_Para_5_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_1_F","U_C_Mechanic_01_F"]
#define	INS_HEAD	["rhs_Booniehat_ocp","H_Booniehat_tan","H_Watchcap_blk","H_PASGT_basic_olive_F","H_MilCap_gry","H_Shemag_olive","H_ShemagOpen_tan","rhsgref_helmet_pasgt_3color_desert"]
#define	INS_RFL	["rhs_weap_akmn","rhs_weap_akm","rhs_weap_akms","rhs_weap_ak74n","rhs_weap_ak74m_fullplum","rhs_weap_aks74","rhs_weap_aks74n_2","rhs_weap_ak74n_2","rhs_weap_ak74","rhs_weap_ak74_2","rhs_weap_m92","rhs_weap_m16a4_carryhandle","rhs_weap_m4a1_carryhandle","rhs_weap_pm63","rhs_weap_savz58p","rhs_weap_savz58v","rhs_weap_m70b1","rhs_weap_m70ab2"],["rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK","rhs_30Rnd_762x39mm","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_mag_30Rnd_556x45_M855_Stanag","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm_Savz58","rhs_30Rnd_762x39mm_Savz58","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm"]
#define	INS_GP		["rhs_weap_aks74n_gp25","rhs_weap_akms_gp25","rhs_weap_akmn_gp25","rhs_weap_ak74n_2_gp25","rhs_weap_ak74n_gp25"],["rhs_30Rnd_545x39_AK","rhs_VOG25P","rhs_VOG25P","rhs_VOG25P","rhs_VOG25P"]

kit_ins_r = [
	["<EQUIPEMENT >>  ",INS_UNI,"V_HarnessO_brn","",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_RFL,["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["PRIMARY MAG",15]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_gr = [
	["<EQUIPEMENT >>  ",INS_UNI,"V_HarnessOGL_gry","",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74n_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["PRIMARY MAG",8],["rhs_VOG25P",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_at = [
	["<EQUIPEMENT >>  ",INS_UNI,"V_HarnessO_brn","B_Messenger_Coyote_F",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_RFL,["rhs_acc_dtk1983","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",1],["PRIMARY MAG",15]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2],["rhs_rpg7_OG7V_mag",1]]]
];

#define	INS_MG		["rhs_weap_m249","rhs_weap_pkm"],["rhs_200rnd_556x45_M_SAW","rhs_100Rnd_762x54mmR"]
kit_ins_ar = [
	["<EQUIPEMENT >>  ",INS_UNI,"V_BandollierB_khk","B_Kitbag_cbr",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_ins_mm = [];
