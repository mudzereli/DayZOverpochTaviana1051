//Code developed by Axe Cop - Massiv improvments && performance tunes by Skaronator
private ["_missing","_missingQty","_proceed","_itemIn","_countIn","_qty","_num_removed","_uniqueID","_removed","_removed_total","_tobe_removed_total","_obj","_objectID","_objectUID","_classname","_location","_dir","_objectCharacterID","_object","_temp_removed_array","_textMissing","_target","_objectClasses","_range","_objects","_requirements","_count","_cost","_itemText","_option"];

if (DZE_ActionInProgress) exitWith { cutText [(localize "STR_EPOCH_ACTIONS_2") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

player removeAction s_player_maintain_area;
s_player_maintain_area = 1;
player removeAction s_player_maintain_area_preview;
s_player_maintain_area_preview = 1;

_target = cursorTarget; // Plastic_Pole_EP1_DZ

_objectClasses = DZE_maintainClasses;
_range = DZE_maintainRange; // set the max range for the maintain area
_objects = nearestObjects [_target, _objectClasses, _range];

//filter to only those that have 10% damage
_objects_filtered = [];
{
    if (damage _x >= DZE_DamageBeforeMaint) then {
        _objects_filtered set [count _objects_filtered, _x];
   };
} count _objects;
_objects = _objects_filtered;

// TODO dynamic requirements based on used building parts?
_count = count _objects;

if (_count == 0) exitWith {
	cutText [format[(localize "STR_EPOCH_ACTIONS_22"), _count], "PLAIN DOWN"];
	DZE_ActionInProgress = false;
	s_player_maintain_area = -1;
	s_player_maintain_area_preview = -1;
};

//maintain area as soon as they click it
cutText [format[(localize "STR_EPOCH_ACTIONS_4"), _count], "PLAIN DOWN", 5];
PVDZE_maintainArea = [player,1,_target];
publicVariableServer "PVDZE_maintainArea";	

DZE_ActionInProgress = false;
s_player_maintain_area = -1;
s_player_maintain_area_preview = -1;
