// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupGear.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private ["_player", "_uniform", "_vest", "_headgear", "_goggles"];
_player = _this;

// Clothing is now defined in "client\functions\getDefaultClothing.sqf"

_uniform = [_player, "uniform"] call getDefaultClothing;
_vest = [_player, "vest"] call getDefaultClothing;
_headgear = [_player, "headgear"] call getDefaultClothing;
_goggles = [_player, "goggles"] call getDefaultClothing;

if (_uniform != "") then { _player addUniform _uniform };
if (_vest != "") then { _player addVest _vest };
if (_headgear != "") then { _player addHeadgear _headgear };
if (_goggles != "") then { _player addGoggles _goggles };

sleep 0.1;

// ADD GPS
_player linkItem "ItemGPS";

// Remove radio
//_player unlinkItem "ItemRadio";

// Remove NVG
if (hmd _player != "") then { _player unlinkItem hmd _player };

// Add NVG

_player addBackpack "B_Kitbag_mcamo";
_player addItemtoBackpack "NVGoggles";
_player addMagazine "30Rnd_556x45_Stanag";
_player addWeapon "arifle_Mk20C_F";
_player addPrimaryWeaponItem "optic_aco_smg";
_player addMagazine "30Rnd_556x45_Stanag";
_player addItem "HandGrenade";
_player addItem "SmokeShell";
_player addItem "FirstAidKit";
_player selectWeapon "arifle_Mk20C_F";

switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player removeItem "FirstAidKit";
		_player addItem "SmokeShell";
		_player addItem "Medikit";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player removeWeapon "arifle_Mk20C_F";
		_player removeMagazine "30Rnd_556x45_Stanag";
		_player removeMagazine "30Rnd_556x45_Stanag";
		_player removeMagazine "30Rnd_556x45_Stanag";
		_player addMagazine "30Rnd_65x39_caseless_mag";
		_player addWeapon "arifle_MX_SW_F";
		_player addPrimaryWeaponItem "optic_Aco_grn";
		_player addMagazine "30Rnd_65x39_caseless_mag";
		_player addItem "MiniGrenade";
		_player addItem "MineDetector";
		_player addItem "Toolkit";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Rangefinder";
	};
};

if (_player == player) then
{
	thirstLevel = 100;
	hungerLevel = 100;
};
