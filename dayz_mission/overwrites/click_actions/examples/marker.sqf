if (isNil "DZE_SELF_MARKER_TOGGLE") then {
    DZE_SELF_MARKER_TOGGLE = false;
};
DZE_SELF_MARKER_TOGGLE = !DZE_SELF_MARKER_TOGGLE;

if(DZE_SELF_MARKER_TOGGLE) then {
    DZE_SELF_MARKER_SCRIPT_HANDLE = [] spawn {
        while {DZE_SELF_MARKER_TOGGLE} do {
            private["_marker"];
            deleteMarkerLocal "MarkerPlayer";
            if("ItemMap" in (weapons player) || "ItemGPS" in (weapons player)) then {
                _marker = createMarkerLocal["MarkerPlayer",(position player)];
                _marker setMarkerShapeLocal "ICON";
                _marker setMarkerTypeLocal "mil_dot";
                _marker setMarkerTextLocal "me";
                _marker setMarkerColorLocal "ColorGreen";
            } else {
                DZE_SELF_MARKER_TOGGLE = false;
            };
            sleep 2;
        };
    };
} else {
    terminate DZE_SELF_MARKER_SCRIPT_HANDLE;
    deleteMarkerLocal "MarkerPlayer";
};
cutText[format["Self Map Marker: %1",str DZE_SELF_MARKER_TOGGLE],"PLAIN DOWN"];