// BANDAGE POUCH 1
[
    "flf_bandage1_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    "$STR_FLF_Bandage_type", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Bandage_pouch1"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [["ACE_quikclot", "ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage"], ["$STR_FLF_Quik", "$STR_FLF_Basic","$STR_FLF_Elastic","$STR_FLF_Packing"], 1], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];      
		player setVariable ["flf_bandage1_type_namespace_cba", _value];
		player setVariable ["flf_bandage1_type_namespace", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "flf_bandage1_Amount", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "$STR_FLF_Amount", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Bandage_pouch1"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [0, 5, 3, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_bandage1_Amount_namespace_cba", round _value];
		player setVariable ["flf_bandage1_Amount_namespace", round _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

///////////////////////
// BANDAGE POUCH 2
[
    "flf_bandage2_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    "$STR_FLF_Bandage_type", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Bandage_pouch2"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [["ACE_quikclot", "ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage"], ["$STR_FLF_Quik", "$STR_FLF_Basic","$STR_FLF_Elastic","$STR_FLF_Packing"], 1], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_bandage2_type_namespace_cba", _value];
		player setVariable ["flf_bandage2_type_namespace", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "flf_bandage2_Amount", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "$STR_FLF_Amount", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Bandage_pouch2"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [0, 5, 3, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_bandage2_Amount_namespace_cba", round _value];
		player setVariable ["flf_bandage2_Amount_namespace", round _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

///////////////////////
// BANDAGE POUCH 3
[
    "flf_bandage3_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    "$STR_FLF_Bandage_type", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Bandage_pouch3"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [["ACE_quikclot", "ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage"], ["$STR_FLF_Quik", "$STR_FLF_Basic","$STR_FLF_Elastic","$STR_FLF_Packing"], 1], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_bandage3_type_namespace_cba", _value];
		player setVariable ["flf_bandage3_type_namespace", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "flf_bandage3_Amount", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "$STR_FLF_Amount", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Bandage_pouch3"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [0, 5, 3, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_bandage3_Amount_namespace_cba", round _value];
		player setVariable ["flf_bandage3_Amount_namespace", round _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;
///////////////////////
//I N J E C T O R S
///////////////////////
// INJECTOR POUCH 1
[
    "flf_injector1_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    "$STR_FLF_Injector_type", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Injector_pouch1"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [["ACE_adenosine", "ACE_epinephrine","ACE_morphine"], ["$STR_FLF_Adenosine", "$STR_FLF_Epinephrine","$STR_FLF_Morphine"], 2], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_injector1_type_namespace_cba", _value];
		player setVariable ["flf_injector1_type_namespace", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "flf_injector1_Amount", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "$STR_FLF_Amount", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Injector_pouch1"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [0, 5, 3, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_injector1_Amount_namespace_cba", round _value];
		player setVariable ["flf_injector1_Amount_namespace", round _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;
///////////////////////
// INJECTOR POUCH 2
[
    "flf_injector2_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    "$STR_FLF_Injector_type", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Injector_pouch2"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [["ACE_adenosine", "ACE_epinephrine","ACE_morphine"], ["$STR_FLF_Adenosine", "$STR_FLF_Epinephrine","$STR_FLF_Morphine"], 1], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_injector2_type_namespace_cba", _value];
		player setVariable ["flf_injector2_type_namespace", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "flf_injector2_Amount", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "$STR_FLF_Amount", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Injector_pouch2"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [0, 5, 3, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_injector2_Amount_namespace_cba", round _value];
		player setVariable ["flf_injector2_Amount_namespace", round _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;
///////////////////////
// M I S C   I T E M S
// MISCELLANEOUS POUCH 1
[
    "flf_misc1_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    "$STR_FLF_Medical_item", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Medical_pouch1"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [["ACE_tourniquet", "ACE_splint","kat_guedel","kat_larynx"], ["$STR_FLF_Torniquet","$STR_FLF_Splint","$STR_FLF_Guedel","$STR_FLF_Larynx"], 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_misc1_type_namespace_cba", _value];
		player setVariable ["flf_misc1_type_namespace", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "flf_misc1_Amount", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "$STR_FLF_Amount", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Medical_pouch1"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [0, 2, 2, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_misc1_Amount_namespace_cba", round _value];
		player setVariable ["flf_misc1_Amount_namespace", round _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;
///////////////////////
// MISCELLANEOUS POUCH 1
[
    "flf_misc2_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "LIST", // setting type
    "$STR_FLF_Medical_item", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Medical_pouch2"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [["ACE_tourniquet", "ACE_splint","kat_guedel","kat_larynx"], ["$STR_FLF_Torniquet","$STR_FLF_Splint","$STR_FLF_Guedel","$STR_FLF_Larynx"], 2], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_misc2_type_namespace_cba", _value];
		player setVariable ["flf_misc2_type_namespace", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;

[
    "flf_misc2_Amount", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "SLIDER", // setting type
    "$STR_FLF_Amount", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Medical_pouch2"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
   [0, 2, 1, 0], // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_misc2_Amount_namespace_cba", round _value];
		player setVariable ["flf_misc2_Amount_namespace", round _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;
///////////////////////
// P A I N K I L L E R S
// PAINKILLER POUCH
[
    "flf_pain_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "CHECKBOX", // setting type
    "$STR_FLF_Painkillers_type", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","$STR_FLF_Painkillers_pouch"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    true, // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_pain_type_namespace_cba", _value];
		player setVariable ["flf_pain_type_namespace", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;
///////////////////////
// C U S T O M   I T E M
// ADDITIONAL POUCH 1
/*
[
    "flf_add1_type", // Internal setting name, should always contain a tag! This will be the global variable which takes the value of the setting.
    "EDITBOX", // setting type
    "Classname", // Pretty name shown inside the ingame settings menu. Can be stringtable entry.
    ["IFAK Settings","Small Pouch"], // Pretty name of the category where the setting can be found. Can be stringtable entry.
    "ACE_EarPlugs", // data for this setting: [min, max, default, number of shown trailing decimals]
    nil, // "_isGlobal" flag. Set this to true to always have this setting synchronized between all clients in multiplayer
    {  
        params ["_value"];
        player setVariable ["flf_add_type_namespace_cba", _value];
    } // function that will be executed once on mission start and every time the setting is changed.
] call CBA_fnc_addSetting;
*/