// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: licenseVehicle.sqf
//	@file Author: 
//  @file edited: CRE4MPIE
//  @credits to: Cael817, Lodac, Wiking, Gigatek (original auth of chopshop)


#include "sellIncludesStart.sqf";

storeSellingHandle = _this spawn
{
#define CHOPSHOP_PRICE_RELATIONSHIP 10
#define VEHICLE_MAX_SELLING_DISTANCE 50

private ["_vehicle","_type", "_price", "_confirmMsg", "_playerMoney", "_text"];

_storeNPC = _this select 0;
_vehicle = objectFromNetId (player getVariable ["lastVehicleRidden", ""]);
_type = typeOf _vehicle;
_playerMoney = player getVariable "cmoney";
_price = 500;
_objClass = typeOf _vehicle;
_objName = getText (configFile >> "CfgVehicles" >> _objClass >> "displayName");

	if (isNull _vehicle) exitWith
	{
		playSound "FD_CP_Not_Clear_F";
		["Dude! Where's your vehicle?", "Error"] call  BIS_fnc_guiMessage;
	};
	

	if (_vehicle distance _storeNPC > VEHICLE_MAX_SELLING_DISTANCE) exitWith
	{
		playSound "FD_CP_Not_Clear_F";
		[format ['"%1" is further away than %2m from the store.', _objname, VEHICLE_MAX_SELLING_DISTANCE], "Error"] call  BIS_fnc_guiMessage;
	};
	
	
	
{	
	if (_type == _x select 1) then
	{	
	_price = _x select 2;
	_price = _price / CHOPSHOP_PRICE_RELATIONSHIP;
	};
	
} forEach (call allVehStoreVehicles);

	if (_price > _playerMoney) exitWith
	{
		playSound "FD_CP_Not_Clear_F";
		[format ['You do not have enough money to buy a license for the %1', _objname], "Error"] call  BIS_fnc_guiMessage;
	};
	
	if (!isNil "_price") then 
	{
		// Add total sell value to confirm message
		_confirmMsg = format ["Buying a license for the %1 will cost you $%2 <br/>", _objName, _price];
		_confirmMsg = _confirmMsg + format ["<br/><t font='EtelkaMonospaceProBold'>1</t> x %1", _objName];

		// Display confirm message
		if ([parseText _confirmMsg, "Confirm", "LICENSE", true] call BIS_fnc_guiMessage) then
		{	
		  	_vehicle setVariable ["A3W_missionVehicle", true, true];	
			_vehicle setVariable ["ownerN", name player, true];
			_vehicle setVariable ["ownerUID", getPlayerUID player, true];		
		  
			player setVariable["cmoney",(player getVariable "cmoney")-_price,true];
			[format ['Congratulations! You are now the proud owner of a %1', _objname, VEHICLE_MAX_SELLING_DISTANCE], "THANK YOU"] call  BIS_fnc_guiMessage;
			
		if (["A3W_playerSaving"] call isConfigOn) then
		{
				[] spawn fn_savePlayerData;
		};
		 };
	} else {
		hint parseText "<t color='#ffff00'>An unknown error occurred.</t><br/>Cancelled.";
		playSound "FD_CP_Not_Clear_F";
	};
};	
		
#include "sellIncludesEnd.sqf";


