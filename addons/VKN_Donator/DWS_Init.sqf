If (!IsDedicated) Then {
  waitUntil { !IsNull Player };
      if (local player) then {
        [] call compile preprocessFile "Addons\VKN_Donator\loadChange.sqf";
        [] call compile preprocessFile "Addons\VKN_Donator\respawnUI.sqf";
        [] call compile preprocessFile "Addons\VKN_Donator\missionStartUI.sqf";
        loadoutSpawnEH = player addEventHandler ["respawn", {call TAG_Respawn_UI}];
        titleText ["", "BLACK FADED", 10];

        waitUntil { time > 1 };

        switch (faction player) do {
               case "BLU_F":{[] call compile preprocessFile "Addons\VKN_Donator\LoadoutsBlu.sqf";};
               case "BLU_G_F":{[] call compile preprocessFile "Addons\VKN_Donator\LoadoutsFia.sqf";};
               case "IND_F":{[] call compile preprocessFile "Addons\VKN_Donator\LoadoutsInd.sqf";};
               case "OPF_F":{[] call compile preprocessFile "Addons\VKN_Donator\LoadoutsOpf.sqf";};
              };
              
              call TAG_MissionStart_UI;

        if (paramsArray select 0 == 1) then {
             execVM "Addons\VKN_Donator\deleteWeapons.sqf";
              hint parseText format ["<img image='\A3\Ui_f\data\GUI\Cfg\Ranks\%1_gs.paa' align='center'/><br/><br/>" + "Welcome <t color='#84e4ff' >%1 %2</t>!! The ranking system has been enabled, you must move up the ranks to access the various roles. To move up in rank, simply participate in the objective and kill your opponent.", rank player, name player];
             waitUntil {score player >= 5};
              player setRank "CORPORAL";
              hintSilent parseText format ["<img image='\A3\Ui_f\data\GUI\Cfg\Ranks\corporal_gs.paa' align='center'/><br/><br/>" + "You've obtained the rank of <t color='#84e4ff' >corporal</t> %1. New loadout(s) available.", name player];
             waitUntil {score player >= 10};
              player setRank "SERGEANT";
              hintSilent parseText format ["<img image='\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa' align='center'/><br/><br/>" + "You've obtained the rank of <t color='#84e4ff' >sergeant</t> %1. New loadout(s) available.", name player];
             waitUntil {score player >= 15};
              player setRank "LIEUTENANT";
              hintSilent parseText format ["<img image='\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa' align='center'/><br/><br/>" + "You've obtained the rank of <t color='#84e4ff' >lieutenant</t> %1. New loadout(s) available.", name player];
             waitUntil {score player >= 20};
              player setRank "CAPTAIN";
              hintSilent parseText format ["<img image='\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa' align='center'/><br/><br/>" + "You've obtained the rank of <t color='#84e4ff' >captain</t> %1. New loadout(s) available.", name player];
             waitUntil {score player >= 25};
              player setRank "MAJOR";
              hintSilent parseText format ["<img image='\A3\Ui_f\data\GUI\Cfg\Ranks\major_gs.paa' align='center'/><br/><br/>" + "You've obtained the rank of <t color='#84e4ff' >major</t> %1. New loadout(s) available.", name player];
             waitUntil {score player >= 30};
              player setRank "COLONEL";
              hintSilent parseText format ["<img image='\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa' align='center'/><br/><br/>" + "You've obtained the rank of <t color='#84e4ff' >colonel</t> %1. New loadout(s) available.", name player];
             

            } else {

               hintSilent parseText format ["<img image='\A3\Ui_f\data\GUI\Cfg\Ranks\%1_gs.paa' align='center'/><br/><br/>" + "Welcome <t color='#84e4ff' >%1 %2</t>!! The ranking system has been disabled. All roles are open.", rank player, name player];
        
            };
       };

     
};
