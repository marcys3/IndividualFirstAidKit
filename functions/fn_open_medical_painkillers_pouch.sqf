params [
	["_caller",player,[objNull]]
];

//Misc types
_Misc1_type = _caller getVariable "flf_misc1_type_namespace_cba";
_Misc2_type = _caller getVariable "flf_misc2_type_namespace_cba";

//Misc Amount
_Misc1_Amount = _caller getVariable "flf_misc1_Amount_namespace_cba";
_Misc2_Amount = _caller getVariable "flf_misc2_Amount_namespace_cba";

//Painkillers
_pain_bool = _caller getVariable "flf_pain_type_namespace_cba";

if (_caller getVariable "flf_misc1_Amount_namespace" > 0 || _caller getVariable "flf_misc2_Amount_namespace" > 0 || _caller getVariable "flf_pain_type_namespace" == true) then {
//replace IFAK item with lighter version
[-5,_caller] call flf_fnc_change_ifak_size;
	
// M I S C   I T E M S
if (_caller getVariable "flf_misc1_Amount_namespace" > 0) then {
for "_i" from 1 to _Misc1_Amount do { if !(_caller canAdd [_Misc1_type, 1]) then { break }; _caller addItem _Misc1_type; _caller setVariable ["flf_misc1_Amount_namespace", (_Misc1_Amount - _i)]; };
};
	
if (_caller getVariable "flf_misc2_Amount_namespace" > 0) then {
for "_j" from 1 to _Misc2_Amount do { if !(_caller canAdd [_Misc2_type, 1]) then { break }; _caller addItem _Misc2_type; _caller setVariable ["flf_misc2_Amount_namespace", (_Misc2_Amount - _j)]; };
};
	
//P A I N K I L L E R S
//check before another check for ppl playing without KAT
if (_caller getVariable "flf_pain_type_namespace" == true) then {
	if (_caller canAdd ["kat_Painkiller", 1]) then {
	if (_pain_bool) then {_caller addMagazine "kat_Painkiller"; _caller setVariable ["flf_pain_type_namespace", false]; };
	};
};

[[localize "$STR_FLF_MedicalMisc"],true] call CBA_fnc_notify;
//systemChat "Medical items and painkillers unpacked";
// in case when after unpacking selected items ifak would be empty we need to reset all the values
[_caller] call flf_fnc_handle_refill;
};
	