TAG_Respawn_UI = {
 
       titleText ["", "BLACK FADED", 10];
       CreateDialog "DigitalLoadout";
       [(_this select 0)] call loadChange;
       titleText ["", "BLACK IN", 10];
       [(_this select 0)] call TAG_FNC_Rifleman;
     
};

