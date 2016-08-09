/*
	Author: IT07

	Description:
	Configuration and resource file for server menu. Should be used to adjust the content of menu.
*/

class SC_sMenuConfig
{
	class menuConfig
	{
		/////////////////////////////////////////////////////////
		///////  General config for the menu  ///////////////////
		///////  Please adjust these below to your needs  ///////
		/////////////////////////////////////////////////////////
		keyToOpenMenu = 0x43; // Change to false to disable. Works with useScrollAction. DEFAULT: 0x43 = F9 key. https://community.bistudio.com/wiki/DIK_KeyCodes
		useScrollAction = 1; // Change to false to disable. Can use any number to enable. Can be used in combo with keyToOpenMenu
		menuCategories[] = {"General","Rules","Donator"}; // Try to keep amount as low as possible for optimal speed/load
		serverIPandPort = "XX.XX.XXX.XXX:2302"; // Speaks for itself
		serverLocation = "Germany"; // Location of your server. Keep as short as possible
		maxPlayers = 60; // This should be exactly the same as the maximum slot count of your server
		restartInterval = 5; // Number of hours your server will be online before it automatically restarts. Set to 0 if you use a restart schedule.
		serverMods = "A3Wasteland Boosted"; // Put whatever mods you want to show here
		serverAllowedMods = "<a href='http://a3wasteland.com/'>Wasteland Official</a>"; // This example shows how to make a clickable text
		serverMission = "A3Wasteland"; // Name of the mission
		serverMap = "Tanoa"; // Name of map used on the server
		serverGameType = "PvP"; // The type of the mission
		serverAH = "WastelandAH"; // Put the name of your antihack(s) here
		serverManagedBy = "<a href='www.vikingpmc.com'>VIKING PMC</a>"; // Should be clear enough, right?
		serverHostLogo = "addons\VKN_Info_Menu\menuLogos\hosting\a3servers.jpg"; // use "" if you do not want to have this
		serverSquadLogo = ""; // use "" if you do not want to have this
		/////////////////////////////////////////////////////////
		///////  End of general config  /////////////////////////
		/////////////////////////////////////////////////////////
	}
	class configContent
	{
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  Config for the content of each menu category  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  == Instructions for editing the content ==  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  step 1: Adjust the amount of class items (below) to the amount of categories you have set in _menuCategories  ///////////////////////////////////////////////////////////
		///////  step 2: Configure contentArray. Please look at the examples to see how to do it. contentArray is used to divide the text into pieces for easier configuration  //////////
		///////  step 2b: it does not matter how you name the items in contentArray. They just have to match the actual item names that are defined in contentArray[]  ///////////////////
		///////  step 3: go nuts! :)  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  NOTE 1: Do not put the title in contentArray because the title is already put into the title bar automatically  /////////////////////////////////////////////////////////
		///////  NOTE 2: Less items in contentArray[] is faster  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		///////  NOTE 3: <br /> is a linebreak, <img image'path\to\Image.jpg' /> is an image and <a href='url'>this is a link</a>  ///////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		class 1 // First in _menuCategories
 		{
			title = "GENERAL";
			contentArray[] = {"txtOne","txtTwo","txtThree","txtFour","txtFive","txtSix","txtSeven"};
			txtOne = "<t size='1.5'><a href='url' color='#D13B3B'>Language English</a></t><br />";
			txtTwo = "<t size='1.5'>VIKING private military company</t> <br /><br /> <img image='mapConfig\Loading.jpg' size='7' /> <br /><br />";
			txtThree = "<t size='1.5'>VIKING Presents:</t> <br /> - Variety of custom missions <br /> - Bank limit is : 5 000 000 <br /> - Airdrop anywhere on the map <br /> - Base building <br /> - Optimised performance <br /> - <a href='url' color='#298A08'>Donator menu</a> <br /><br />";
			txtFour = "<t size='1.5'>Visit us at</t> <br /><a href='http://vikingpmc.com' color='#D13B3B'>vikingpmc.com</a> <br /><br />";
			txtFive = "<t size='1.5'>Teamspeak</t><br /> We also provide a free teamspeak server see our website for the adress <a href='vikingpmc.com' color D13B3B'>vikingpmc.com</a> <br /><br />";
			txtSix =  "<t size='1.5'>Nos Serveurs</t><br />Cliquer ici pour voir la liste de nos serveurs<br /><a href='http://www.gametracker.com/clan/frenchteamgaming/' color='#D13B3B'>Gametracker</a> <br /><br />";
			txtSeven = "<t size='1.5'>Our server admins</t><br /> - Wardaddy [Admin] <br /> -General [Admin] <br /> - Havok [Admin] <br /> - Bullets4yu [Admin] <br /> - Deputy Dawg [Admin] <br /> - Dothehump [Admin]";
		};
		
		class 2 // Second in _menuCategories
		{
			title = "THE RULES";
			contentArray[] = {"txtOne","txtTwo","txtThree","txtFour","txtFive","txtSix"};
			txtOne = "<t size='1.5'><a href='url' color='#D13B3B'>Language Français</a></t><br />";
			txtTwo = "<t size='1.5'>Règle #1</t> <br /> - Pas de racismes/profanation/insultes <br />  <t size='0.75' color='#c2c2c2'>En ne respectant pas ces règles, vous encourez des sanctions de type: banissement et exlusions (temporaire et/ou définitive).</t> <br /><br />";
			txtThree = "<t size='1.5'>Règle #2</t> <br /> - Teamkill strictement interdit ou troll <br /> <t size='0.75' color='#c2c2c2'>En ne respectant pas ces règles, vous encourez des sanctions de type: banissement et exlusions (temporaire et/ou définitive).</t> <br /><br />";
			txtFour = "<t size='1.5'>Règle #3</t> <br /> - Respecter les joueurs et admins <br /> <t size='0.75' color='#c2c2c2'>En ne respectant pas ces règles, vous encourez des sanctions de type: banissement et exlusions (temporaire et/ou définitive).</t> <br /><br />";
			txtFive = "<t size='1.5'>Règle #4</t> <br /> - Ne pas cheat, glitch ou exploiter des bugs <br /> <t size='0.75' color='#c2c2c2'>En ne respectant pas ces règles, vous encourez des sanctions de type: banissement et exlusions (temporaire et/ou définitive).</t> <br /><br />";
			txtSix = "<t size='1.5'>Règle #5</t> <br /> - Aucune possibilité de dire : je n'est pas lu les règles.<br /> <t size='0.75' color='#c2c2c2'>Ceci est non acceptable.</t> <br /><br />";
		};
		class 3 // Third in _menuCategories
		{
			title = "SUPPORT SERVER";
			contentArray[] = {"txtOne","txtTwo","txtThree","txtFour","txtFive"};
			txtOne = "<t size='1.5'><a href='url' color='#D13B3B'>Language Français</a></t><br />";
			txtTwo = "<t size='1.5'>Faites un don</t> <br />Si vous aimez jouer sur notre serveur et qu'il vous plaît, vous pouvez faire un don pour nous soutenir et participer au coûts du serveur !<br /><br />";
			txtThree = "<t size='1.5'><a href='url' color='#298A08'>Menu Donateur + Slots Réservés</a></t> <br /><br /> <img image='addons\FTG_Infos_Menu\menuLogos\vip.jpg' size='7' /> <br /><br />";
			txtFour = "<t size='1.5'>Devenir Donateur</t> <br />Veuillez vous rendre sur le <a href='url' color='#D13B3B'>Teamspeak</a> : FrenchTeamGaming.fr<br /><br />";
			txtFive = "<a href='http://frenchteamgaming.com/donation/' color='#D13B3B'>Cliquez ici pour faire un don</a> <br /><br />";
		};
	};
};

////////////////////////////////////////////////////////
/////// Do not change anything below this line  ////////
////////////////////////////////////////////////////////
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)
#define THEMECOLOR { 0.82, 0.231, 0.231, 0.8 }

class SC_sMenu
{
	idd = 297;
	//onLoad = "";
	movingEnable = 1;
	class controls
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by IT07, v1.063, #Sahycu)
////////////////////////////////////////////////////////

class sMenuTitle: RscText1
{
	colorBackground[] = THEMECOLOR;

	idc = 1000;
	text = "SERVER INFO MENU"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 19 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
};
class sMenuContentSelector: RscCombo1
{
	onLBSelChanged = "[297, 1100, _this] call SC_fnc_getContent";

	idc = 2100;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 14.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class sMenuContentTitle: RscText1
{
	colorBackground[] = THEMECOLOR;

	idc = 1008;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 35 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
};
class sMenuTitleHostedBy: RscText1
{
	idc = 1004;
	x = 35.5 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 10 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
};
class sMenuLogoHostedBy: RscPicture1
{
	style = 2096;

	idc = 1201;
	x = 35.5 * GUI_GRID_W + GUI_GRID_X;
	y = 1 * GUI_GRID_H + GUI_GRID_Y;
	w = 10 * GUI_GRID_W;
	h = 2.6 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class sMenuSquadLogo: RscPicture1
{
	style = 2096;

	idc = 1200;
	x = -4 * GUI_GRID_W + GUI_GRID_X;
	y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
};
class sMenuTitleServerInfo: RscText1
{
	colorBackground[] = THEMECOLOR;

	idc = 1003;
	text = "SERVER INFO"; //--- ToDo: Localize;
	x = 35.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 10 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
};
class sMenuTitleServerStats: RscText1
{
	colorBackground[] = THEMECOLOR;

	idc = 1005;
	text = "SERVER STATS"; //--- ToDo: Localize;
	x = 35.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4 * GUI_GRID_H + GUI_GRID_Y;
	w = 10 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
};
class sMenuTxtServerStats: RscText1
{
	shadow = 0;
	style = 528;
	sizeEx = 0.03;

	idc = 1006;
	x = 35.5 * GUI_GRID_W + GUI_GRID_X;
	y = 5 * GUI_GRID_H + GUI_GRID_Y;
	w = 10 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	colorBackground[] = {0,0,0,0.8};
};
class sMenuRefreshStats: RscButton1
{
	action = ["STATS","Stats refreshed! (Manual)"] call SC_fnc_f5Reload;

	idc = 1603;
	text = "REFRESH (F5)"; //--- ToDo: Localize;
	x = 35.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6.6 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
	tooltip = "Click to refresh server stats or press F5"; //--- ToDo: Localize;
};
class sMenuContentBg: IGUIBack1
{
	idc = 2200;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 35 * GUI_GRID_W;
	h = 19.8 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class contentGroup: RscControlsGroup1
{
	idc = 2300;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 35 * GUI_GRID_W;
	h = 19.6 * GUI_GRID_H;
	class controls
	{
		class sMenuContentTxt: RscStructuredText1
		{
			idc = 1100;
			x = 0.5 * GUI_GRID_W;
			y = 0.5 * GUI_GRID_H;
			w = 27 * GUI_GRID_W;
			h = 0.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0};
		};
	};
};
class sMenuGroupServerInfo: RscControlsGroup1
{
	idc = 2301;
	x = 35.5 * GUI_GRID_W + GUI_GRID_X;
	y = 9 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 16 * GUI_GRID_H;
	class controls
	{
		class sMenuStrTxtServerInfo: RscStructuredText1
		{
			idc = 1101;
			x = 0 * GUI_GRID_W;
			y = 0 * GUI_GRID_H;
			w = 10 * GUI_GRID_W;
			h = 16 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.8};
		};
	};
};
class sMenuBgCopy: IGUIBack1
{
	idc = 2201;
	x = 4 * GUI_GRID_W + GUI_GRID_X;
	y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 31 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.5};
};
class sMenuCopyUID: RscButton1
{
	action = [297, 1400, format["Name: %1 and UID: %2", name player, getPlayerUID player], 0] call SC_fnc_handleCtrlText;

	idc = 1601;
	text = "COPY PLAYER NAME & UID"; //--- ToDo: Localize;
	x = 11.5 * GUI_GRID_W + GUI_GRID_X;
	y = 23.8 * GUI_GRID_H + GUI_GRID_Y;
	w = 12 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class sMenuClose: RscButton1
{
	action = closeDialog 0;

	idc = 1600;
	text = "CLOSE"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 3.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class sMenuButtonCopyIPandPort: RscButton1
{
	action = [["serverIPandPort"],[1400,"IP:PORT = "]] call SC_fnc_getCfgSetting;

	idc = 1602;
	text = "COPY IP:PORT"; //--- ToDo: Localize;
	x = 4.5 * GUI_GRID_W + GUI_GRID_X;
	y = 23.8 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class sMenuOutputBg: IGUIBack1
{
	idc = 2202;
	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 23.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.8};
};
class sMenuOutputBar: RscEdit1
{
	idc = 1400;
	x = 24.5 * GUI_GRID_W + GUI_GRID_X;
	y = 23.8 * GUI_GRID_H + GUI_GRID_Y;
	w = 10 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,1,1,0.8};
	tooltip = "Ctrl+C to copy, Ctrl+V to paste"; //--- ToDo: Localize;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};