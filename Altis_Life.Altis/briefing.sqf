waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["BaseBuilding","KOS Base Building"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
				The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
			
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Server Rules", 
				"
				CHECK THE RULES ON THE FORUMS FOR THE LATEST RULES NOT READING THEM AND NOT KNOWING THEM IS NOT AN EXCUSE. <br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					If bombing (bombing can be intentionally exploding a vehicle), robbing, or killing occurs around these or in these areas it is punishable by ban.<br/><br/>
					
					Any vehicle spawn (shop or garage)<br/>
					Any weapon shop<br/>
					All Police HQs<br/>
					Rebel Outposts<br/>
					Donator Shops<br/><br/>
				"
		]
	];
					
	
	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Open Player Menu<br/>
				U: Lock and unlock cars<br/>
				F: Cop Siren (if cop)<br/>
				T: Vehicle Trunk<br/>
				Left Shift + H: Holster Weapon <br/>
				Left Ctrl +H: Unholster Weapon<br/>
				Left Shift + R: Restrain (Cop Only)<br/>
				Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
				Left Windows: Main Interaction key which is used for picking up items/money, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
				Left Shift + L: Activates cop siren lights (as a cop).<br/>
				"
		]
	];

// Base building Section

	player createDiaryRecord ["BaseBuilding",
		[
			"",
				"
				!!!NO COMP WILL BE GIVEIN DUE TO BASE BUILDING BUGS USE/ENTER AT YOUR OWN RISK!!!<br/>
				INSERT - BUILDING MENU<br/>
				SPACEBAR - PLACE OBJECT<br/>
				SHIFT+C - ROTATE OBJECT<br/>
				SHIFT+E - ROTATE PLAYER<br/>
				E - RAISE OBJECT<br/>
				C - LOWER OBJECT<br/>
				BUILD MENU ONLY WORKS IN KOS<br/>
				IF CAUGHT OBJECT GLICHING USEING ANY BASEBUILDING OBJECTS WILL RESULT IN PERM BAN<br/>
				!!!BASES DO NOT SAVE AFTER RESTARTS!!!<br/>
				"
		]
	];