//##### DZAP COMMON CONFIG ######################################################################################################################################################################################
//##### DZAP COMMON CONFIG ######################################################################################################################################################################################
//##### DZAP COMMON CONFIG ######################################################################################################################################################################################
//##### DZAP COMMON CONFIG ######################################################################################################################################################################################
//##### DZAP COMMON CONFIG ######################################################################################################################################################################################

//  DZE_COLOR_<TYPE> -- colors used in addons
//
//  DZE_COLOR_<TYPE> format
//  
//  DZE_COLOR_<TYPE> = [_percentRed,_percentBlue,_percentGreen,_percentOpaque];
//
DZE_COLOR_PRIMARY = [(51/255),(181/255),(229/255),1];
DZE_COLOR_SUCCESS = [(153/255),(204/255),0,1];
DZE_COLOR_DANGER  = [1,(68/255),(68/255),1];
DZE_COLOR_WARNING = [1,(187/255),(51/255),1];

// DZE_COLOR_<TYPE>_HEX -- the hex color code string (including #) used in addons
DZE_COLOR_PRIMARY_HEX = "#33b5e5";
DZE_COLOR_SUCCESS_HEX = "#99cc00";
DZE_COLOR_DANGER_HEX  = "#ff4444";
DZE_COLOR_WARNING_HEX = "#ffbb33";

//##### CLICK ACTIONS CONFIGURATION ##############################################################################################################################################################################
//##### CLICK ACTIONS CONFIGURATION ##############################################################################################################################################################################
//##### CLICK ACTIONS CONFIGURATION ##############################################################################################################################################################################
//##### CLICK ACTIONS CONFIGURATION ##############################################################################################################################################################################
//##### CLICK ACTIONS CONFIGURATION ##############################################################################################################################################################################

//  DZE_DEPLOYABLES_ENABLE - If true, click actions addon is enabled. If false, click actions addon is disabled.
DZE_CLICK_ACTIONS_ENABLE = true;

//  DZE_CLICK_ACTIONS -- This is where you register your custom right-click actions
//
//  DZE_CLICK_ACTIONS format
//
//  DZE_CLICK_ACTIONS = [
//      [_classname,_text,_execute,_condition],
//      [_classname,_text,_execute,_condition],
//      [...more...]
//  ];
//
//  DZE_CLICK_ACTIONS parameters
//
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _classname    | the name of the class to click on                                   | string | "ItemBloodbag"
// _text         | the text for the option that is displayed when right clicking       | string | "Self Transfusion"
// _execute      | uncompiled code to execute when the option is selected              | string | "execVM 'my\scripts\self_transfuse.sqf';"
// _condition    | uncompiled code to check whether the option should be displayed     | string | "true"
//
DZE_CLICK_ACTIONS = [
    ["ItemGPS","Scan Nearby","if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_ZOMBIE_COUNT = count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]); DZE_CLICK_ACTIONS_MAN_COUNT = count ((position player) nearEntities ['CAManBase',DZE_CLICK_ACTIONS_GPS_RANGE]);cutText[format['Within %1 Meters: %2 AI/players, %3 zombies, %4 vehicles',DZE_CLICK_ACTIONS_GPS_RANGE,DZE_CLICK_ACTIONS_MAN_COUNT - DZE_CLICK_ACTIONS_ZOMBIE_COUNT,count ((position player) nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]),count ((position player) nearEntities ['allVehicles',DZE_CLICK_ACTIONS_GPS_RANGE]) - DZE_CLICK_ACTIONS_MAN_COUNT],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Up"   ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE + 100) min 2500; cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Down" ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE - 100) max 1000;  cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"]
];

//##### DEPLOYABLE VEHICLES AND BUILDINGS CONFIGURATION ##########################################################################################################################################################
//##### DEPLOYABLE VEHICLES AND BUILDINGS CONFIGURATION ##########################################################################################################################################################
//##### DEPLOYABLE VEHICLES AND BUILDINGS CONFIGURATION ##########################################################################################################################################################
//##### DEPLOYABLE VEHICLES AND BUILDINGS CONFIGURATION ##########################################################################################################################################################
//##### DEPLOYABLE VEHICLES AND BUILDINGS CONFIGURATION ##########################################################################################################################################################

//  DZE_DEPLOYABLES_ENABLE - If true, deployable addon is enabled. If false, deployable addon is disabled. REQUIRES DZE_CLICK_ACTIONS_ENABLE = true;
DZE_DEPLOYABLES_ENABLE = true;

//  DZE_DEPLOYABLES_CONFIG -- configure all of your deployable buildings/vehicles here
//
//  DZE_DEPLOYABLES_CONFIG format
//
//  DZE_DEPLOYABLES_CONFIG = [
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_hive,_plot,_simulation,_road,_deployables,_near,_parts],
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_hive,_plot,_simulation,_road,_deployables,_near,_parts],
//      [...more stuff here...]
//  ];
//    
//  DZE_DEPLOYABLES_CONFIG parameters
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
//
DZE_DEPLOYABLES_CONFIG = [
    // deploy a non-permanent bike from a toolbox right in front of the player that can be re-packed by the owner as long as it's under 10% damage
    ["ItemToolbox",[0,2,1],5,0.1,false,false,false,false,true,true,["MMT_Civ"],[],["ItemToolbox"]],
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
    ["ItemCrowbar",[0,6,0],5,-1,false,true,true,true,false,false,["Land_Misc_Cargo1Ao","Land_Misc_Cargo1Bo"],[],["metal_panel_kit","metal_panel_kit","metal_panel_kit","metal_panel_kit"]]
];

//  DZE_DEPLOYABLE_NAME_MAP -- allows you to change what names show up for an item when deploying
//
//  DZE_DEPLOYABLE_NAME_MAP format
//  
//  DZE_DEPLOYABLE_NAME_MAP = [
//      [_class,_name],
//      [_class,_name],
//      [... more ...]
//  ];
//
//  DZE_DEPLOYABLE_NAME_MAP parameters
//
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _class        | class name of the item you want to replace the name of              | string | "Notebook"
// _name         | new name to display when right clicking                             | string | "Macbook Pro"
//
DZE_DEPLOYABLE_NAME_MAP = [
    ["Notebook","Macbook Pro"]
];

//  DZE_DEPLOYABLE_ADMINS -- can pack anything or deploy without parts 
//  
//  DZE_DEPLOYABLE_ADMINS format
//
//  DZE_DEPLOYABLE_ADMINS = [_adminPlayerUID1, _adminPlayerUID2, ...more...];
//
DZE_DEPLOYABLE_ADMINS = [];

//##### WEAPON MODIFICATION CONFIGURATION #########################################################################################################################################################################
//##### WEAPON MODIFICATION CONFIGURATION #########################################################################################################################################################################
//##### WEAPON MODIFICATION CONFIGURATION #########################################################################################################################################################################
//##### WEAPON MODIFICATION CONFIGURATION #########################################################################################################################################################################
//##### WEAPON MODIFICATION CONFIGURATION #########################################################################################################################################################################

//  DZE_WEAPON_MOD_ENABLE - If true, weapon mod addon is enabled. If false, weapon mod addon is disabled. REQUIRES DZE_CLICK_ACTIONS_ENABLE = true;
DZE_WEAPON_MOD_ENABLE = true;

//  DZE_WEAPON_MOD_ADMINS -- players who can add parts to weapons without actually having them
//
//  DZE_WEAPON_MOD_ADMINS format
//  
//  DZE_WEAPON_MOD_ADMINS = [_adminPlayerUID1, _adminPlayerUID2, ...more...];
//
DZE_WEAPON_MOD_ADMINS = [];

//  DZE_WEAPON_MOD_INV_CHECK_ITEMS -- these items can be right clicked to show your weapon mod inventory
//
//  DZE_WEAPON_MOD_INV_CHECK_ITEMS format
//  
//  DZE_WEAPON_MOD_INV_CHECK_ITEMS = [_checkItem1,_checkItem2, ...more...];
//
DZE_WEAPON_MOD_INV_CHECK_ITEMS = ["ItemToolbox"];


//  DZE_WEAPON_MOD_USE_HINT_INVENTORY -- If true, the hint system will be used to track inventory. If false, a message with the inventory will be displayed in chat.
DZE_WEAPON_MOD_USE_HINT_INVENTORY = true;

//  DZE_WEAPON_MODS -- set up your mappings here to determine which guns can be modded
//  
//  DZE_WEAPON_MODS format
//
//  DZE_WEAPON_MODS = [
//       [_attachment,_base,_upgrade],
//       [_attachment,_base,_upgrade],
//       [... more info here ...]
//  ];
//  
//  DZE_WEAPON_MODS parameters
//
//   parameter    | description                                                         |  type  | example
//  --------------|---------------------------------------------------------------------|--------|--------
//  _attachment   | the name of the weapon attachment                                   | string | "GP25 GL"
//  _base         | the classname that the attachment is put on to                      | string | "AK_74"
//  _upgrade      | the classname the item becomes after the attachment it put on       | string | "AK_74_GL"
//
DZE_WEAPON_MODS = [
    ["GP25 GL"      ,"AK_74"                ,"AK_74_GL"             ],
    ["Kobra Sight"  ,"AK_74_GL"             ,"AK_74_GL_kobra"       ],
    
    ["Stock"        ,"AK_47_S"              ,"AK_47_M"              ],

    ["GP25 GL"      ,"AK_107_kobra"         ,"AK_107_GL_kobra"      ],
    ["PSO Scope"    ,"AK_107_kobra"         ,"AK_107_pso"           ],
    ["GP25 GL"      ,"AK_107_pso"           ,"AK_107_GL_pso"        ],
    ["PSO Scope"    ,"AK_107_GL_kobra"      ,"AK_107_GL_pso"        ],
    
    ["Gold Paint"   ,"AKS_74"               ,"AKS_GOLD"             ],
    ["Kobra Sight"  ,"AKS_74"               ,"AKS_74_kobra"         ],
    ["Suppressor"   ,"AKS_74_kobra"         ,"AKS_74_UN_kobra"      ],
    ["PSO Scope"    ,"AKS_74"               ,"AKS_74_pso"           ],
    ["NV Scope"     ,"AKS_74"               ,"AKS_74_NSPU"          ],
    ["Thermal Scope","AKS_74"               ,"AKS_74_GOSHAWK"       ],
    
    ["Thermal Scope","BAF_AS50_scoped_DZ"   ,"BAF_AS50_TWS"         ],
    
    ["M203 GL"      ,"BAF_L85A2_RIS_Holo"   ,"BAF_L85A2_UGL_Holo"   ],
    ["SUSAT Sight"  ,"BAF_L85A2_RIS_Holo"   ,"BAF_L85A2_RIS_SUSAT"  ],
    ["M203 GL"      ,"BAF_L85A2_RIS_SUSAT"  ,"BAF_L85A2_UGL_SUSAT"  ],
    ["SUSAT Sight"  ,"BAF_L85A2_UGL_Holo"   ,"BAF_L85A2_UGL_SUSAT"  ],
    ["ACOG Scope"   ,"BAF_L85A2_RIS_Holo"   ,"BAF_L85A2_RIS_ACOG"   ],
    ["M203 GL"      ,"BAF_L85A2_RIS_ACOG"   ,"BAF_L85A2_UGL_ACOG"   ],
    ["ACOG Scope"   ,"BAF_L85A2_UGL_Holo"   ,"BAF_L85A2_UGL_ACOG"   ],
    ["Thermal Scope","BAF_L85A2_RIS_Holo"   ,"BAF_L85A2_RIS_CWS"    ],
    
    ["Suppressor"   ,"bizon"                ,"bizon_silenced"       ],
    
    ["NV Scope"     ,"FN_FAL"               ,"FN_FAL_ANPVS4"        ],
    
    ["Camo Paint"   ,"G36a"                 ,"G36A_camo"            ],
    ["Camo Paint"   ,"G36C"                 ,"G36C_camo"            ],
    ["Camo Paint"   ,"G36K"                 ,"G36K_camo"            ],
    ["Suppressor"   ,"G36C"                 ,"G36_C_SD_eotech"      ],
    ["Camo Paint"   ,"G36_C_SD_eotech"      ,"G36_C_SD_camo"        ],
  
    ["Thermal Scope","M107_DZ"              ,"m107_TWS_EP1_DZ"      ],
        
    ["M203 GL"      ,"M16A2"                ,"M16A2GL"              ],

    ["ACOG Scope"   ,"m16a4"                ,"m16a4_acg"            ],
    ["M203 GL"      ,"m16a4"                ,"M16A4_GL"             ],
    ["M203 GL"      ,"m16a4_acg"            ,"M16A4_ACG_GL"         ],
    ["ACOG Scope"   ,"M16A4_GL"             ,"M16A4_ACG_GL"         ],
        
    ["Desert Paint" ,"M24"                  ,"M24_des_EP1"          ],
    
    ["ACOG Scope"   ,"M240_DZ"              ,"m240_scoped_EP1_DZE"  ],
    
    ["ACOG Scope"   ,"M249_EP1_DZ"          ,"M249_m145_EP1_DZE"    ],
    ["Thermal Scope","M249_EP1_DZ"          ,"M249_TWS_EP1"         ],
    
    ["Thermal Scope","M249_EP1_DZ"          ,"M249_TWS_EP1"         ],
    
    ["CCO Sight"    ,"M4A1"                 ,"M4A1_Aim"             ],
    ["Camo Paint"   ,"M4A1_Aim"             ,"M4A1_Aim_camo"        ],
    ["ACOG Scope"   ,"M4A1"                 ,"M4SPR"                ],
    ["M203 GL"      ,"M4A1"                 ,"M4A1_HWS_GL"          ],
    ["ACOG Scope"   ,"M4A1_HWS_GL"          ,"M4A1_RCO_GL"          ],
    ["M203 GL"      ,"M4SPR"                ,"M4A1_RCO_GL"          ],
    ["Suppressor"   ,"M4A1_Aim_camo"        ,"M4A1_AIM_SD_camo"     ],
    ["Camo Paint"   ,"M4A1_HWS_GL"          ,"M4A1_HWS_GL_camo"     ],
    ["Suppressor"   ,"M4A1_HWS_GL_camo"     ,"M4A1_HWS_GL_SD_Camo"  ],
    
    ["M203 GL"      ,"m8_carbine"           ,"m8_carbineGL"         ],
    ["ACOG Scope"   ,"m8_carbine"           ,"m8_sharpshooter"      ],
    ["Thermal Scope","m8_carbine"           ,"m8_tws"               ],
    ["Suppressor"   ,"m8_tws"               ,"m8_tws_sd"            ],
        
    ["CCO Sight"    ,"m8_compact"           ,"m8_compact_pmc"       ],
    ["Suppressor"   ,"m8_compact_pmc"       ,"m8_holo_sd"           ],
 
    ["Suppressor"   ,"M9"                   ,"M9SD"                 ],
    
    ["Suppressor"   ,"Makarov"              ,"MakarovSD"            ],

    ["Camo Paint"   ,"MG36"                 ,"MG36_camo_Large"      ],
 
    ["Desert Paint" ,"MK_48_DZ"             ,"Mk_48_DES_EP1"        ],
    
    ["Suppressor"   ,"MP5A5"                ,"MP5SD"                ],   

    ["Gold Paint"   ,"revolver_EP1"         ,"revolver_gold_EP1"    ],  
    
    ["Stock"        ,"Sa58V_EP1"             ,"Sa58P_EP1"           ],
    ["ACOG Scope"   ,"Sa58V_EP1"             ,"Sa58V_RCO_EP1"       ],
    ["CCO Sight"    ,"Sa58V_EP1"             ,"Sa58V_CCO_EP1"       ],

    ["Suppressor"   ,"SCAR_H_CQC_CCO"        ,"SCAR_H_CQC_CCO_SD"   ],

    ["Suppressor"   ,"SCAR_H_LNG_Sniper"     ,"SCAR_H_LNG_Sniper_SD"],

    ["M203 GL"      ,"SCAR_L_CQC_Holo"       ,"SCAR_L_CQC_EGLM_Holo"],
    ["ACOG Scope"   ,"SCAR_L_CQC_EGLM_Holo"  ,"SCAR_L_STD_EGLM_RCO" ],
    ["Thermal Scope","SCAR_L_CQC_EGLM_Holo"  ,"SCAR_L_STD_EGLM_TWS" ],

    ["Suppressor"   ,"UZI_EP1"               ,"UZI_SD_EP1"          ],

    ["Camo Paint"   ,"SVD"                   ,"SVD_CAMO"            ],
    ["Desert Paint" ,"SVD"                   ,"SVD_des_EP1"         ],
    ["NV Scope"     ,"SVD"                   ,"SVD_NSPU_EP1"        ]
];

//  DZE_WEAPON_MOD_COMBINE -- you can use this to squash down weapon categories so that there aren't as many types of parts and mods are more compatible across weapons
//  
//  DZE_WEAPON_MOD_COMBINE format
//
//  DZE_WEAPON_MOD_COMBINE = [
//      [_combined,_attachments],
//      [_combined,_attachments],
//      [... more info here ...]
//  ];
//  
//  DZE_WEAPON_MOD_COMBINE parameters
//
//   parameter    | description                                                         |  type  | example
//  --------------|---------------------------------------------------------------------|--------|--------
//  _combined     | the name of the attachment to combine the other attachments into    | string | "CCO Sight"
//  _attachments  | array of attachments to combine into the combined attachment        | array  | ["Kobra Sight"]
//  
DZE_WEAPON_MOD_COMBINE = [
   ["G. Launcher",["M203 GL","GP25 GL"]],
   ["CCO Sight",["SUSAT Sight","Kobra Sight"]],
   ["ACOG Scope",["PSO Scope"]]
];

//  DZE_WEAPON_MOD_IMAGE_MAP -- the classes of which images used for the inventory dialog
//  
//  DZE_WEAPON_MOD_IMAGE_MAP format
//
//  DZE_WEAPON_MOD_IMAGE_MAP = [
//      [_weaponMod,_imageClass],
//      [_weaponMod,_imageClass],
//      [...more...]
//  ];
//
//  DZE_WEAPON_MOD_IMAGE_MAP parameters
//
//   parameter    | description                                                         |  type  | example
//  --------------|---------------------------------------------------------------------|--------|--------
//  _weaponMod    | the name of the attachment which will use the image                 | string | "Suppressor"
//  _imageClass   | the class name of which the image will be used for the attachment   | string | "64Rnd_9x19_SD_Bizon"
//
DZE_WEAPON_MOD_IMAGE_MAP = [
    ["Suppressor","64Rnd_9x19_SD_Bizon"],
    ["G. Launcher","1Rnd_HE_M203"],
    ["CCO Sight","Binocular"],
    ["ACOG Scope","Binocular_Vector"],
    ["Thermal Scope","LaserDesignator"],
    ["NV Scope","NVGoggles"],
    ["Stock","ItemCore"],
    ["Camo Paint","ItemCanvas"],
    ["Desert Paint","ItemBurlap"],
    ["Gold Paint","ItemGoldBar"]
];

//##### SUICIDE CONFIGURATION ####################################################################################################################################################################
//##### SUICIDE CONFIGURATION ####################################################################################################################################################################
//##### SUICIDE CONFIGURATION ####################################################################################################################################################################
//##### SUICIDE CONFIGURATION ####################################################################################################################################################################
//##### SUICIDE CONFIGURATION ####################################################################################################################################################################

//  DZE_SUICIDE_ADDON_ENABLE -- If true, suicide addon is enabled. If false, suicide addon is disabled. REQUIRES DZE_CLICK_ACTIONS_ENABLE = true;
DZE_SUICIDE_ADDON_ENABLE = true;

//  DZE_SUICIDE_GUNS -- these items can be right clicked to commit suicide
//
//  DZE_SUICIDE_GUNS format
//  
//  DZE_SUICIDE_GUNS = [_weaponClass1,_weaponClass2, ...more...];
//
DZE_SUICIDE_GUNS = ["M9","M9SD","Makarov","MakarovSD","Sa61_EP1","UZI_EP1","UZI_SD_EP1","revolver_EP1","revolver_gold_EP1","glock17_EP1","Colt1911"];

//  DZE_SUICIDE_GENERIC -- these items can be right clicked to commit suicide but don't use a gun animation
//
//  DZE_SUICIDE_GENERIC format
//  
//  DZE_SUICIDE_GENERIC = [_weaponClass1,_weaponClass2, ...more...];
//
DZE_SUICIDE_GENERIC = ["ItemKnife","ItemHatchet_DZE","ItemCrowbar"];

//  DZE_SUICIDE_ADDON_ENABLE -- If true, you must have at least one bullet to commit suicide. If false, you can kill yourself without a bullet.
DZE_SUICIDE_REQUIRE_BULLET = true;

//  DZE_SUICIDE_CANCEL_TIME -- positive number which determines how long a player has to cancel the suicide action before they actually begin killing themselves
DZE_SUICIDE_CANCEL_TIME = 0;

//##### CLOTHES CONFIGURATION ####################################################################################################################################################################
//##### CLOTHES CONFIGURATION ####################################################################################################################################################################
//##### CLOTHES CONFIGURATION ####################################################################################################################################################################
//##### CLOTHES CONFIGURATION ####################################################################################################################################################################
//##### CLOTHES CONFIGURATION ####################################################################################################################################################################

//  DZE_TAKECLOTHES_ADDON_ENABLE -- If true, take clothes addon is enabled. If false, take clothes addon is disabled.
DZE_TAKECLOTHES_ADDON_ENABLE = true;

//  DZE_TAKECLOTHES_MAP -- a map of models to skin packages (use this to add clothes to models that aren't exact matches)
//  
//  DZE_TAKECLOTHES_MAP format
//
//  DZE_TAKECLOTHES_MAP = [
//      [_model,_skinPackage],
//      [_model,_skinPackage],
//      [...more...]
//  ];
//
//  DZE_TAKECLOTHES_MAP parameters
//
//   parameter    | description                                                         |  type  | example
//  --------------|---------------------------------------------------------------------|--------|--------
//  _model        | the name of the model of the dead player/zombie/ai/etc              | string | "z_policeman"
//  _skinPackage  | the class name of the skin which should be given for that model     | string | "Skin_RU_Policeman_DZ"
//
DZE_TAKECLOTHES_MAP = [
    ["z_policeman","Skin_RU_Policeman_DZ"],
    ["z_suit1","Skin_Functionary1_EP1_DZ"],
    ["z_suit2","Skin_Functionary1_EP1_DZ"],
    ["z_suit3","Skin_Functionary1_EP1_DZ"], 
    ["z_priest","Skin_Priest_DZ"],
    ["z_soldier","Skin_Camo1_DZ"],
    ["z_soldier_heavy","Skin_Soldier1_DZ"],
    ["z_soldier_pilot","Skin_RU_Soldier_Crew_DZ"]
];

//##### KITS CONFIGURATION ####################################################################################################################################################################
//##### KITS CONFIGURATION ####################################################################################################################################################################
//##### KITS CONFIGURATION ####################################################################################################################################################################
//##### KITS CONFIGURATION ####################################################################################################################################################################
//##### KITS CONFIGURATION ####################################################################################################################################################################

//  DZE_KITS_ADDON_ENABLE -- If true, kit addon is enabled. If false, kit addon is disabled. REQUIRES DZE_CLICK_ACTIONS_ENABLE = true;
DZE_KITS_ADDON_ENABLE = true;

//  DZE_KIT_CONFIG -- spawnable donator kits
//  
//  DZE_KIT_CONFIG format
//
//  DZE_KIT_CONFIG = [
//      [_name,_contents],
//      [_name,_contents],
//      [...more...]
//  ];
//
//  DZE_KIT_CONFIG parameters
//
//   parameter    | description                                                          |  type  | example
//  --------------|----------------------------------------------------------------------|--------|--------
//  _name         | the name of the kit which is displayed on right clicking a vault     | string | "Donator Kit #1"
//  _contents     | array in the format of [[_amount,_item],[_amount,_item],[...more..]] | string | [[2,"PartGeneric"],[9,"30m_plot_kit"]]
//
DZE_KITS_CONFIG = [
    ["Donator Kit #1",[[5,"ItemToolbox"],[2,"30m_plot_kit"]]],
    ["Donator Kit #2",[[2,"PartGeneric"],[9,"30m_plot_kit"]]]
];

DZE_KITS_ADMINS = ["38130182"];

//##### MAPS CONFIGURATION ####################################################################################################################################################################
//##### MAPS CONFIGURATION ####################################################################################################################################################################
//##### MAPS CONFIGURATION ####################################################################################################################################################################
//##### MAPS CONFIGURATION ####################################################################################################################################################################
//##### MAPS CONFIGURATION ####################################################################################################################################################################

//  DZE_MAP_MARKER_ADDON_ENABLE -- If true, map marker addon is enabled. If false, map marker addon is disabled. REQUIRES DZE_CLICK_ACTIONS_ENABLE = true;
DZE_MAP_MARKER_ADDON_ENABLE = true;

// DZE_MAP_MARKER_ALLOW_SELF -- if true, players can use GPS or Map to mark themselves on the map
DZE_MAP_MARKER_ALLOW_SELF = true;

// DZE_MAP_MARKER_ALLOW_FRIENDLIES -- if true, players can use GPS or Map to mark friendlies on the map
DZE_MAP_MARKER_ALLOW_FRIENDLIES = true;

// DZE_MAP_MARKER_ALLOW_VEHICLES -- if true, players can use GPS or Map to mark owned vehicles on the map
DZE_MAP_MARKER_ALLOW_VEHICLES = true;

// DZE_MAP_MARKER_ALLOW_ZOMBIES -- if true, players can use GPS or Map to mark Zombie on the map
DZE_MAP_MARKER_ALLOW_ZOMBIES = true;

// DZE_MAP_MARKER_VEHICLE_KEY_ONLY -- Only show vehicles that you have a key for? Only works if DZE_MAP_MARKER_ALLOW_VEHICLES = true;
DZE_MAP_MARKER_VEHICLE_KEY_ONLY = true;

// DZE_MAP_MARKER_ZOMBIE_RANGE -- Zombie Radar Radius. Only works if DZE_MAP_MARKER_ALLOW_ZOMBIES = true;
DZE_MAP_MARKER_ZOMBIE_RANGE = 100;

// DZE_MAP_MARKER_VEHICLE_RANGE -- Vehicle Radar Radius. Only works if DZE_MAP_MARKER_ALLOW_VEHICLES = true;
DZE_MAP_MARKER_VEHICLE_RANGE = 5000;

// DZE_MAP_MARKER_FRIENDLY_RANGE -- Friendly Radar Radius. Only works if DZE_MAP_MARKER_ALLOW_FRIENDLY = true;
DZE_MAP_MARKER_FRIENDLY_RANGE = 5000;