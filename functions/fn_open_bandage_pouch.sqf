
params [
	["_caller",player,[objNull]]
];


//Get all the bandage types
_bandage1_type = _caller getVariable "flf_bandage1_type_namespace";
_bandage2_type = _caller getVariable "flf_bandage2_type_namespace";
_bandage3_type = _caller getVariable "flf_bandage3_type_namespace";

//Get bandage Amount
_bandage1_Amount = _caller getVariable "flf_bandage1_Amount_namespace";
_bandage2_Amount = _caller getVariable "flf_bandage2_Amount_namespace";
_bandage3_Amount = _caller getVariable "flf_bandage3_Amount_namespace";

if (_caller getVariable "flf_bandage1_Amount_namespace" > 0 || _caller getVariable "flf_bandage2_Amount_namespace" > 0 || _caller getVariable "flf_bandage3_Amount_namespace" > 0) then {
//replace IFAK item with lighter version
[-15,_caller] call flf_fnc_change_ifak_size;

// B A N D A G E S
//Get desired ammount from namespace, then iterate through each bandage and chceck if it fits inside the inventory if not, break the loop and save remaining ammount to namespace.
if (_caller getVariable "flf_bandage1_Amount_namespace" > 0) then {
for "_i" from 1 to _bandage1_Amount do { if !(_caller canAdd [_bandage1_type, 1]) then { break }; _caller addItem _bandage1_type; _caller setVariable ["flf_bandage1_Amount_namespace", (_bandage1_Amount - _i)]; };
};
	
if (_caller getVariable "flf_bandage2_Amount_namespace" > 0) then {
for "_j" from 1 to _bandage2_Amount do { if !(_caller canAdd [_bandage2_type, 1]) then { break }; _caller addItem _bandage2_type; _caller setVariable ["flf_bandage2_Amount_namespace", (_bandage2_Amount - _j)]; };
};
	
if (_caller getVariable "flf_bandage3_Amount_namespace" > 0) then {
for "_k" from 1 to _bandage3_Amount do { if !(_caller canAdd [_bandage3_type, 1]) then { break }; _caller addItem _bandage3_type; _caller setVariable ["flf_bandage3_Amount_namespace", (_bandage3_Amount - _k)]; };
};
	
[[localize "$STR_FLF_Bandages"],true] call CBA_fnc_notify;
//systemChat "Bandages unpacked";
// in case when after unpacking selected items ifak would be empty we need to reset all the values
[_caller] call flf_fnc_handle_refill;
};
	