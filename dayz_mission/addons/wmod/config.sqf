// an array of playerUIDs of players who are admins
// these players can add/remove any weapon mods even if they dont have the parts
DZE_WEAPON_MOD_ADMINS = [];

// an array of classes that can be clicked on to check weapon mod inventory 
// note:    backpacks are added by default to this list
DZE_WEAPON_MOD_INV_CHECK_ITEMS = ["ItemToolbox"];

// use the hint version of the weapon mod inventory? change to false if it conflicts with your debug monitor. */
DZE_WEAPON_MOD_USE_HINT_INVENTORY = true;

//  **DZE_WEAPON_MODS FORMAT**
//  ```
//  DZE_WEAPON_MODS = [
//       [_attachment,_base,_upgrade],
//       [_attachment,_base,_upgrade],
//       [... more info here ...]
//  ];
//  ```
//  
//   parameter    | description                                                         |  type  | example
//  --------------|---------------------------------------------------------------------|--------|--------
//  _attachment   | the name of the weapon attachment                                   | string | "GP25 GL"
//  _base         | the classname that the attachment is put on to                      | string | "AK_74"
//  _upgrade      | the classname the item becomes after the attachment it put on       | string | "AK_74_GL"
//
// this is where the links are setup for the weapon mods
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

//  **DZE_WEAPON_MOD_COMBINE FORMAT**
//  
//  DZE_WEAPON_MOD_COMBINE = [
//      [_combined,_attachments],
//      [_combined,_attachments],
//      [... more info here ...]
//  ];
//  
//   parameter    | description                                                         |  type  | example
//  --------------|---------------------------------------------------------------------|--------|--------
//  _combined     | the name of the attachment to combine the other attachments into    | string | "CCO Sight"
//  _attachments  | array of attachments to combine into the combined attachment        | array  | ["Kobra Sight"]
//  
//   this is where you can combine groups of weapon mods into smaller groups (so mods are more compatible across weapons)
DZE_WEAPON_MOD_COMBINE = [
   ["G. Launcher",["M203 GL","GP25 GL"]],
   ["CCO Sight",["SUSAT Sight","Kobra Sight"]],
   ["ACOG Scope",["PSO Scope"]]
];

// these are the images used for the inventory dialog
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