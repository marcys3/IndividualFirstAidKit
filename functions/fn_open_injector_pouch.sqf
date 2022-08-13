params [
	["_caller",player,[objNull]]
];

//Injector types
_injector1_type = _caller getVariable "flf_injector1_type_namespace_cba";
_injector2_type = _caller getVariable "flf_injector2_type_namespace_cba";

//Injector Amount
_injector1_Amount = _caller getVariable "flf_injector1_Amount_namespace_cba";
_injector2_Amount = _caller getVariable "flf_injector2_Amount_namespace_cba";

if (_caller getVariable "flf_injector1_Amount_namespace" > 0 || _caller getVariable "flf_injector2_Amount_namespace" > 0) then {
//replace IFAK item with lighter version
[-10,_caller] call flf_fnc_change_ifak_size;
	
//I N J E C T O R S
if (_caller getVariable "flf_injector1_Amount_namespace" > 0) then {
for "_i" from 1 to _injector1_Amount do { if !(_caller canAdd [_injector1_type, 1]) then { break }; _caller addItem _injector1_type; _caller setVariable ["flf_injector1_Amount_namespace", (_injector1_Amount - _i)]; };
};
	
if (_caller getVariable "flf_injector2_Amount_namespace" > 0) then {
for "_j" from 1 to _injector2_Amount do { if !(_caller canAdd [_injector2_type, 1]) then { break }; _caller addItem _injector2_type; _caller setVariable ["flf_injector2_Amount_namespace", (_injector2_Amount - _j)]; };
};
	
[[localize "$STR_FLF_Injectors"],true] call CBA_fnc_notify;
//systemChat "Injectors unpacked";
// in case when after unpacking selected items ifak would be empty we need to reset all the values
[_caller] call flf_fnc_handle_refill;
};
	