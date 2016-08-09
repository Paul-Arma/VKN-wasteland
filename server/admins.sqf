//	@file Name: A3Wasteland_settings\admins.sqf

// Admin menu (U key) access levels

/*******************************************************
 Player UID examples :

	"1234567887654321", // Meatwad
	"8765432112345678", // Master Shake
	"1234876543211234", // Frylock
	"1337133713371337"  // Carl

 Important: The player UID must always be placed between
            double quotes (") and all lines need to have
            a comma (,) except the last one.
********************************************************/

// Low Administrators: manage & spectate players, remove hacked vehicles
lowAdmins = 
[
	"76561198013950621"  // Dr Snake
];

// High Administrators: manage & spectate players, remove hacked vehicles, show player tags
highAdmins = 
[
	
];

// Server Owners: access to everything, including god mode, money, guns, and vehicles
serverOwners = 
[
		"76561197996326460",
		"76561198068539881"
];

if (typeName lowAdmins == "ARRAY") then { lowAdmins = compileFinal str lowAdmins };
if (typeName highAdmins == "ARRAY") then { highAdmins = compileFinal str highAdmins };
if (typeName serverOwners == "ARRAY") then { serverOwners = compileFinal str serverOwners };

publicVariable "lowAdmins";
publicVariable "highAdmins";
publicVariable "serverOwners";
