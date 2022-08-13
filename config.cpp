
class CfgPatches
{
	class flf_ifak
	{
		name="IFAK";
		units[]={};
		weapons[]={"flf_ifak"};
		version = 2;
		requiredAddons[] = {"ace_medical_treatment", "ace_interaction"};
		author="Fluffy";
	};
};
/*
class CfgSounds
{
	sounds[] = {};
	class flf_sfx_zip1
	{
		// how the sound is referred to in the editor (e.g. trigger effects)
		name = "flf_sfx_zip1_effect";

		// filename, volume, pitch, distance (optional)
		sound[] = { "flf_pouch\sfx\zip1.ogg", 1, 1, 3 };

		// subtitle delay in seconds, subtitle text
		titles[] = { 1, "" };
	};
};
*/

class CfgWeapons
{
    class ACE_ItemCore;
	class CBA_MiscItem_ItemInfo;
	class flf_ifak: ACE_ItemCore
	{
		scope = 2;
		author = "Fluffy";
		picture = "\flf_pouch\img\ifak_bk.paa";
		displayName = "$STR_FLF_DisplayName";
		descriptionShort = "$STR_FLF_Description";
        descriptionUse = "";
		class ItemInfo: CBA_MiscItem_ItemInfo {
        	mass = 30; //1,46kg
        };
	};
	//Hidden items
	class flf_ifak_25: flf_ifak
	{
		scope = 1;
		displayName = "$STR_FLF_DisplayName_DNS";
		descriptionShort = "$STR_FLF_Description_DNS";
		class ItemInfo: CBA_MiscItem_ItemInfo {
        	mass = 25; 
        };
	};
	
	class flf_ifak_20: flf_ifak
	{
		scope = 1;
		displayName = "$STR_FLF_DisplayName_DNS";
		descriptionShort = "$STR_FLF_Description_DNS";
		class ItemInfo: CBA_MiscItem_ItemInfo {
        	mass = 20; 
        };
	};
	
	class flf_ifak_15: flf_ifak
	{
		scope = 1;
		displayName = "$STR_FLF_DisplayName_DNS";
		descriptionShort = "$STR_FLF_Description_DNS";
		class ItemInfo: CBA_MiscItem_ItemInfo {
        	mass = 15; 
        };
	};
	
	class flf_ifak_10: flf_ifak
	{
		scope = 1;
		displayName = "$STR_FLF_DisplayName_DNS";
		descriptionShort = "$STR_FLF_Description_DNS";
		class ItemInfo: CBA_MiscItem_ItemInfo {
        	mass = 10; 
        };
	};
	
	class flf_ifak_5: flf_ifak
	{
		scope = 1;
		displayName = "$STR_FLF_DisplayName_DNS";
		descriptionShort = "$STR_FLF_Description_DNS";
		class ItemInfo: CBA_MiscItem_ItemInfo {
        	mass = 5; 
        };
	};
};

class CfgVehicles {
    class Man;
	//class Land_Ground_sheet_folded_khaki_F;
    class CAManBase: Man {
        class ACE_SelfActions {
			class ACE_Equipment {
				class flf_open_ifak
				{
					displayName = "$STR_FLF_OpenIfak";
					condition = "('flf_ifak' in (items player)) || ('flf_ifak_25' in (items player)) || ('flf_ifak_20' in (items player)) || ('flf_ifak_15' in (items player)) || ('flf_ifak_10' in (items player)) || ('flf_ifak_5' in (items player))";
					exceptions[] = {};
					statement = "call flf_fnc_open_ifak; playSound3D ['flf_pouch\sfx\zip1.ogg', player,false,getposASL player, 0.6, 1, 0, 0, true];";
					icon = "\flf_pouch\img\ifak_interaction.paa";
					/*
					class flf_open_bandages
					{
						displayName = "$STR_FLF_OpenBandage";
						condition = "((('flf_ifak' in (items _player)) || ('flf_ifak_25' in (items _player)) || ('flf_ifak_20' in (items _player)) || ('flf_ifak_15' in (items _player)) || ('flf_ifak_10' in (items _player)) || ('flf_ifak_5' in (items _player))) && (_player getVariable ['flf_bandage1_Amount_namespace',0] > 0 || _player getVariable ['flf_bandage2_Amount_namespace',0] > 0 || _player getVariable ['flf_bandage3_Amount_namespace',0] > 0))";
						exceptions[] = {};
						statement = "[_player] call flf_fnc_open_bandage_pouch; playSound3D ['flf_pouch\sfx\zip2.ogg', _player,false,getposASL _player, 0.6, 1, 0, 0, true];";
						icon = "";
					};
					class flf_open_injectors
					{
						displayName = "$STR_FLF_OpenInjectors";
						condition = "(('flf_ifak' in (items player)) || ('flf_ifak_25' in (items player)) || ('flf_ifak_20' in (items player)) || ('flf_ifak_15' in (items player)) || ('flf_ifak_10' in (items player)) || ('flf_ifak_5' in (items player))) && (player getVariable 'flf_injector1_Amount_namespace' > 0 || player getVariable 'flf_injector2_Amount_namespace' > 0)";
						exceptions[] = {};
						statement = "call flf_fnc_open_injector_pouch; playSound3D ['flf_pouch\sfx\zip2.ogg', player,false,getposASL player, 0.6, 1, 0, 0, true];";
						icon = "";
					};
					class flf_open_misc_pain
					{
						displayName = "$STR_FLF_OpenMisc";
						condition = "(('flf_ifak' in (items player)) || ('flf_ifak_25' in (items player)) || ('flf_ifak_20' in (items player)) || ('flf_ifak_15' in (items player)) || ('flf_ifak_10' in (items player)) || ('flf_ifak_5' in (items player))) && (player getVariable 'flf_misc1_Amount_namespace' > 0 || player getVariable 'flf_misc2_Amount_namespace' > 0 || player getVariable 'flf_pain_type_namespace' == true)";
						exceptions[] = {};
						statement = "call flf_fnc_open_medical_painkillers_pouch; playSound3D ['flf_pouch\sfx\zip2.ogg', player,false,getposASL player, 0.6, 1, 0, 0, true];";
						icon = "";
					};
					*/
				};
			};
		};
		
		class ACE_Actions {
			class ACE_MainActions {
					class flf_open_unit_ifak {
					displayName = "$STR_FLF_OpenIfak";
					condition = "(('flf_ifak' in (items _target)) || ('flf_ifak_25' in (items _target)) || ('flf_ifak_20' in (items _target)) || ('flf_ifak_15' in (items _target)) || ('flf_ifak_10' in (items _target)) || ('flf_ifak_5' in (items _target))) && (_target getVariable ['ACE_isUnconscious', false])";
					exceptions[] = {};
					statement = "[_target] remoteExec ['flf_fnc_open_ifak', 0]; playSound3D ['flf_pouch\sfx\zip1.ogg', _target,false,getposASL _target, 0.6, 1, 0, 0, true];";
					icon = "\flf_pouch\img\ifak_interaction.paa";
					};
			};
		};
		
	};
	
/*	
	class ifak_placeable:Land_Ground_sheet_folded_khaki_F
	{
	displayname = "IFAK";
	author = "Fluffy";
	model="\flf_pouch\ifak_model.p3d";	
	};
*/
};


class CfgFunctions {
    #include "CfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers
{
   class flf_ifak_CBA_Settings
   {
		init = "call compile preProcessFileLineNumbers '\flf_pouch\functions\SettingsPreInit\CBASettings.sqf'";
   };       
};