// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: customGroup3.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

private ["_group", "_pos", "_nbUnits", "_unitTypes", "_uPos", "_unit"];

_group = _this select 0;
_pos = _this select 1;
_nbUnits = param [2, 7, [0]];
_radius = param [3, 10, [0]];

_unitTypes =
[
	"C_man_polo_1_F", "C_man_polo_1_F_euro", "C_man_polo_1_F_afro", "C_man_polo_1_F_asia",
	"C_man_polo_2_F", "C_man_polo_2_F_euro", "C_man_polo_2_F_afro", "C_man_polo_2_F_asia",
	"C_man_polo_3_F", "C_man_polo_3_F_euro", "C_man_polo_3_F_afro", "C_man_polo_3_F_asia",
	"C_man_polo_4_F", "C_man_polo_4_F_euro", "C_man_polo_4_F_afro", "C_man_polo_4_F_asia",
	"C_man_polo_5_F", "C_man_polo_5_F_euro", "C_man_polo_5_F_afro", "C_man_polo_5_F_asia",
	"C_man_polo_6_F", "C_man_polo_6_F_euro", "C_man_polo_6_F_afro", "C_man_polo_6_F_asia"
];

for "_i" from 1 to _nbUnits do
{
	_uPos = _pos vectorAdd ([[random _radius, 0, 0], random 360] call BIS_fnc_rotateVector2D);
	_unit = _group createUnit [_unitTypes call BIS_fnc_selectRandom, _uPos, [], 0, "Form"];
	_unit setPosATL _uPos;

	removeAllWeapons _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit addMagazine "30Rnd_545x39_Mag_F";
	_unit addMagazine "30Rnd_545x39_Mag_F";
	_unit addMagazine "30Rnd_545x39_Mag_F";

	switch (true) do
	{
		// Grenadier every 3 units
		case (_i % 3 == 0):
		{
			_unit addUniform "U_I_C_Soldier_Bandit_3_F";
			_unit addGoggles "G_Balaclava_blk";
			_unit addVest "V_TacVest_oli";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addWeapon "arifle_AK12_GL_F";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
			_unit addMagazine "1Rnd_HE_Grenade_shell";
		};
		// RPG every 7 units, starting from second one
		case ((_i + 5) % 7 == 0):
		{
			_unit addUniform "U_I_C_Soldier_Bandit_3_F";
			_unit addVest "V_TacVest_oli";
			_unit addGoggles "G_Balaclava_blk";
			_unit addBackpack "B_Kitbag_mcamo";
			_unit addWeapon "arifle_AKS_F";
			_unit addMagazine "RPG7_F";
			_unit addWeapon "launch_RPG7_F";
			_unit addMagazine "RPG7_F";
			_unit addMagazine "RPG7_F";;
		};
		// Rifleman
		default
		{
			_unit addUniform "U_I_C_Soldier_Bandit_5_F";
			_unit addGoggles "G_Balaclava_blk";

			if (_unit == leader _group) then
			{
				_unit addWeapon "arifle_AKS_F";
				_unit setRank "SERGEANT";
			}
			else
			{
				_unit addWeapon "arifle_AKS_F";
			};
		};
	};

	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit enablegunlights "forceOn";

	_unit addRating 1e11;
	_unit spawn refillPrimaryAmmo;
	_unit call setMissionSkill;
	_unit addEventHandler ["Killed", server_playerDied];
};

[_group, _pos] call defendArea;
