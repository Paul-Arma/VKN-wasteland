//Rifle 1
TAG_FNC_Rifleman = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "arifle_Katiba_F" ,6 ,"30Rnd_65x39_caseless_green"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "optic_Hamr";
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  [_unit] call loadChange;
};

//Rifle 2
TAG_FNC_Grenadier = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "srifle_EBR_F" ,6 ,"20Rnd_762x51_Mag"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
   _unit addPrimaryWeaponItem "optic_Hamr";
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  [_unit] call loadChange;
};

//Rifle 3
TAG_FNC_Engineer = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "srifle_DMR_06_camo_F" ,6 ,"20Rnd_762x51_Mag"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "optic_Hamr";
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  [_unit] call loadChange;
};

//Heavy 1
TAG_FNC_AutoRifleman = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "LMG_Mk200_F" ,2 ,"200Rnd_65x39_cased_Box"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "optic_DMS";
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  [_unit] call loadChange;
};

//Heavy 2
TAG_FNC_AT_Light = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "LMG_Zafir_pointer_F" ,2 ,"150Rnd_762x54_Box"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "optic_DMS";
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  [_unit] call loadChange;
};

//Heavy 3
TAG_FNC_Pilot = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "MMG_01_tan_F" ,2 ,"150Rnd_93x64_Mag"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "optic_DMS";
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  [_unit] call loadChange;
};

//Sniper 1
TAG_FNC_AA = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "rangefinder";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "srifle_DMR_01_F" ,10 ,"10Rnd_762x54_Mag"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "optic_SOS";
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  [_unit] call loadChange;
};

//Sniper 2
TAG_FNC_SpecialF = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "rangefinder";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "srifle_GM6_F" ,10 ,"5Rnd_127x108_Mag"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  _unit addPrimaryWeaponItem "optic_SOS";
  [_unit] call loadChange;
};

//Sniper 3
TAG_FNC_AT_Heavy = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "rangefinder";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "srifle_DMR_05_tan_f" ,10 ,"10Rnd_93x64_DMR_05_Mag"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "acc_pointer_IR";
  _unit addPrimaryWeaponItem "optic_SOS";
  [_unit] call loadChange;
};

//Launcher
TAG_FNC_Marksman = 
{
  _unit = _this select 0;

   removeAllWeapons _unit;
   removeHeadgear _unit;
   removeVest _unit;
   removeUniform _unit;
   removeBackPack _unit;

  _unit addHeadgear "H_HelmetIA";
  _unit addUniform "U_I_CombatUniform_shortsleeve";
  _unit addVest "V_PlateCarrierSpec_rgr";
  _Unit addBackPack "B_Carryall_oli";

  _unit addWeapon "Binocular";
  _unit addWeapon "itemGps";
  (unitBackpack _unit) addMagazineCargo ["smokeshell",1];
  (unitBackpack _unit) addMagazineCargo ["HandGrenade",2]; 
  _unit addItemtoBackpack "NVGoggles";
  _unit addItem "Medikit";
  [_unit, "arifle_MXM_Hamr_pointer_F" ,6 ,"30Rnd_65x39_caseless_mag"] call BIS_fnc_addWeapon;
  [_unit, "launch_RPG32_F" ,2 ,"RPG32_F"] call BIS_fnc_addWeapon;
  [_unit, "hgun_pistol_heavy_01_F" ,6 ,"11Rnd_45ACP_Mag"] call BIS_fnc_addWeapon;
  _unit addPrimaryWeaponItem "optic_Hamr";
  [_unit] call loadChange;
};