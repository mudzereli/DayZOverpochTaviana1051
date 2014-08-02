CREATE TRIGGER `t_update_buildables` BEFORE INSERT ON `Character_DATA` FOR EACH ROW BEGIN
    update Object_DATA
    set CharacterId = NEW.CharacterId
    where CharacterId in (select CharacterId from Character_DATA where PlayerUID = NEW.PlayerUID)
    and ClassName not in ("VaultStorageLocked","LockboxStorageLocked","MMT_Civ")
    and ClassName not like "%Bike%"
    and Fuel = 0
    and HitPoints = "[]"
    and Damage = 0;
END