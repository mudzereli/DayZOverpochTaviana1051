//  **FORMAT** -- (note no comma after last array entry)
//
//  DZE_DEPLOYABLES_CONFIG = [
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_hive,_plot,_simulation,_road,_deployables,_near,_parts],
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_hive,_plot,_simulation,_road,_deployables,_near,_parts],
//      [...more stuff here...]
//  ];
//    
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _clickItem    | class name of the item to click on                                  | string | "ItemToolbox"
// _deployOffset | [_side,_front,_up] array to offset the deployable when buiding      | array  | [0,2,1]
// _packDistance | how close does the packer need to be to pack the object?            | number | 5
// _damageLimit  | item can't be repacked if damage is > this. (-1 = no re-packing)    | number | 0.1
// _packAny      | can anyone repack the deployable?                                   | bool   | false
// _cargo        | clear the cargo of the deployable?                                  | bool   | false
// _hive         | write deployable to database?                                       | bool   | false
// _plot         | require a plot from the owner to build the deployable?              | bool   | false
// _simulation   | enable simulation (movement/damage) for the object? (true for cars) | bool   | true
// _road         | enable road building for this object?                               | bool   | true
// _deployables  | array of class names that can be deployed with this method          | array  | ["MMT_Civ"]
// _near         | array of items required nearby to build (workshop/fire/fueltank)    | array  | []
// _parts        | array of parts required to build (will be taken from player)        | array  | ["ItemToolbox"]


DZE_DEPLOYABLES_CONFIG = [
    // deploy a non-permanent bike from a toolbox right in front of the player that can be re-packed by the owner as long as it's under 10% damage
    ["ItemToolbox",[0,2,1],5,0.1,false,false,false,false,true,true,["MMT_Civ"],[],["ItemToolbox"]],
    // deploy fortifications from etool 3 meters in front of player that are permanent until server restart
    //["ItemEtool",[0,3,0],5,-1,false,true,false,true,false,false,["Land_fort_rampart","Fort_StoneWall_EP1","Land_fort_bagfence_round"],[],["ItemEtool"]],
    // deploy a permanent helicopter from ruby 5 meters in front of player that can be re-packed by anyone as long as it's under 10% damage
    ["ItemRuby",[0,5,2],7,0.1,true,true,true,false,true,true,["AH6X_DZ","UH1Y_DZ"],[],["ItemRuby"]],
    // deploy military housing in front of the player that is permanent but can't be re-packed by anyone
    ["ItemEmerald",[0,8,0],10,-1,false,false,true,true,false,false,["Barrack2","Land_fortified_nest_small_EP1"],[],["ItemEmerald"]],
    ["ItemCitrine",[0,1,1],5,1,false,true,true,true,false,false,["Baseball","Loudspeaker","MetalBucket","Misc_Videoprojektor","Misc_Videoprojektor_platno","Misc_Wall_lamp","Notebook","SatPhone","Radio","SmallTV","Suitcase"],[],["ItemCitrine"]],
    // deploy some housing items from parts piles in front of the player that are permanent but can be re-packed by anyone
    ["PartGeneric",[0,2,0],5,1,true,true,true,true,false,false,["Desk","FoldChair","FoldTable","SmallTable","Barrel1","Garbage_can"],[],["PartGeneric"]],
    // deploy some housing items from wood piles in front of the player that are permanent but can be re-packed by anyone
    ["PartWoodPile",[0,2,0],5,1,true,true,true,true,false,false,["Land_Rack_EP1","Land_Table_EP1","Land_Shelf_EP1","WoodChair","Park_bench2","Park_bench1"],[],["PartWoodPile"]],
    // deploy concrete barricades from cinderblocks 2m in front of the player, that are permanent and can only be re-packed by the person who placed them
    ["CinderBlocks",[0,2,0],5,1,false,true,false,false,true,true,["Hhedgehog_concrete","Land_CncBlock","Land_CncBlock_Stripes"],[],["CinderBlocks"]],
    // deploy a mozzie in front of the player from a rotor/engine/fueltank
    ["ItemToolbox",[0,5,2],7,0.1,true,true,true,false,true,true,["CSJ_GyroC"],[],["PartVRotor","PartEngine","PartFueltank"]],
    //["ItemToolbox",[0,10,0],5,-1,false,true,true,true,false,false,["Land_Mil_Guardhouse"],[],["cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_door_kit"]],
    ["ItemCrowbar",[0,6,0],5,-1,false,true,true,true,false,false,["Land_Misc_Cargo1Ao","Land_Misc_Cargo1Bo"],[],["metal_panel_kit","metal_panel_kit","metal_panel_kit","metal_panel_kit"]]
    //["ItemEtool",[0,8,0],5,-1,false,true,true,true,false,false,["Land_Fort_Watchtower"],[],["forest_large_net_kit","ItemSandbagExLarge5x","ItemSandbagExLarge5x","ItemSandbagExLarge5x"]],
    //["ItemEtool",[0,8,0],5,-1,false,true,true,true,false,false,["Land_fortified_nest_big"],[],["ItemSandbagExLarge5x","ItemSandbagExLarge5x","ItemSandbagExLarge5x"]],
    //["PartWoodPile",[0,2,0],5,1,true,true,true,true,false,false,["Pile_of_wood"],[],["PartWoodPile","PartWoodPile","PartWoodPile","PartWoodPile","PartWoodPile"]],
    //["ItemSapphire",[0,2,0],5,1,true,true,true,true,false,false,["DSHKM_CDF","M2StaticMG","SearchLight_CDF"],[],["ItemSapphire"]]
];

// **DZE_DEPLOYABLE_NAME_MAP format
//  
//  DZE_DEPLOYABLE_NAME_MAP = [
//      [_class,_name],
//      [_class,_name],
//      [... more ...]
//  ];
//
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _class        | class name of the item you want to replace the name of              | string | "Notebook"
// _name         | new name to display when right clicking                             | string | "Macbook Pro"
//
DZE_DEPLOYABLE_NAME_MAP = [
    ["Notebook","Macbook Pro"]
];

DZE_DEPLOYABLE_ADMINS = [];
