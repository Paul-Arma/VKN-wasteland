while {true} do {
      _clear = nearestObjects [player,["weaponholder"],20];
      for "_i" from 0 to count _clear - 1 do {
	      deleteVehicle (_clear select _i);
        };
    sleep 0.1;
};
	