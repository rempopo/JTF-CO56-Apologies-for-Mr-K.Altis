
/* *********** This array defines detailed properties of zones ************************** */
// MAIN BASE
/*
Dynai zones:

MainTown
ForwardPatrol
HillsPatrol
*/

[
	"MainTown" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			2, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
				,["O_Soldier_F", ["indoors"], "kit_ins_random"]
			]
		]
		,[
			3, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
, [
	"HillsPatrol" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_r"]
				,["O_Soldier_F", [], "kit_ins_ar"]
				,["O_Soldier_F", [], "kit_ins_at"]
			]
		]
		,[
			3, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","RED","WEDGE"]
]
, [
	"ForwardPatrol" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_r"]
				,["O_Soldier_F", [], "kit_ins_ar"]
				,["O_Soldier_F", [], "kit_ins_at"]
			]
		]
		,[
			3, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","RED","WEDGE"]
]

, [
	"Reinforcement" /* Zone Name */
	,"EAST",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			1, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_r"]
				,["rhsgref_cdf_b_bmp1", "Vehicle Advance", ""]
				,["O_Soldier_F", [1,"Gunner"], "kit_ins_r"]
				,["O_Soldier_F", [1,"Driver"], "kit_ins_r"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
			]
		]
		,[
			1, /* Groups quantity */
			/* Units */
			[
				["O_Soldier_F", [], "kit_ins_gr"]
				,["I_G_Van_01_transport_F", "Vehicle Advance", ""]
				,["O_Soldier_F", [1,"Driver"], "kit_ins_r"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
				,["O_Soldier_F", [], "kit_ins_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["FULL","AWARE","RED","WEDGE"]
	   ,{ ReinforcementCalled }
]