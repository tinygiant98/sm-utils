/*
int EVENT_SCRIPT_MODULE_ON_HEARTBEAT                     = 3000;
int EVENT_SCRIPT_MODULE_ON_USER_DEFINED_EVENT            = 3001;
int EVENT_SCRIPT_MODULE_ON_MODULE_LOAD                   = 3002;
int EVENT_SCRIPT_MODULE_ON_CLIENT_ENTER                  = 3004;
int EVENT_SCRIPT_MODULE_ON_CLIENT_EXIT                   = 3005;
int EVENT_SCRIPT_MODULE_ON_ACTIVATE_ITEM                 = 3006;
int EVENT_SCRIPT_MODULE_ON_ACQUIRE_ITEM                  = 3007;
int EVENT_SCRIPT_MODULE_ON_LOSE_ITEM                     = 3008;
int EVENT_SCRIPT_MODULE_ON_PLAYER_DEATH                  = 3009;
int EVENT_SCRIPT_MODULE_ON_PLAYER_DYING                  = 3010;
int EVENT_SCRIPT_MODULE_ON_RESPAWN_BUTTON_PRESSED        = 3011;
int EVENT_SCRIPT_MODULE_ON_PLAYER_REST                   = 3012;
int EVENT_SCRIPT_MODULE_ON_PLAYER_LEVEL_UP               = 3013;
int EVENT_SCRIPT_MODULE_ON_PLAYER_CANCEL_CUTSCENE        = 3014;
int EVENT_SCRIPT_MODULE_ON_EQUIP_ITEM                    = 3015;
int EVENT_SCRIPT_MODULE_ON_UNEQUIP_ITEM                  = 3016;
int EVENT_SCRIPT_MODULE_ON_PLAYER_CHAT                   = 3017;
int EVENT_SCRIPT_MODULE_ON_PLAYER_TARGET                 = 3018;
int EVENT_SCRIPT_MODULE_ON_PLAYER_GUIEVENT               = 3019;
int EVENT_SCRIPT_MODULE_ON_PLAYER_TILE_ACTION            = 3020;
int EVENT_SCRIPT_MODULE_ON_NUI_EVENT                     = 3021;

int EVENT_SCRIPT_AREA_ON_HEARTBEAT                       = 4000;
int EVENT_SCRIPT_AREA_ON_USER_DEFINED_EVENT              = 4001;
int EVENT_SCRIPT_AREA_ON_ENTER                           = 4002;
int EVENT_SCRIPT_AREA_ON_EXIT                            = 4003;

int EVENT_SCRIPT_AREAOFEFFECT_ON_HEARTBEAT               = 11000;
int EVENT_SCRIPT_AREAOFEFFECT_ON_USER_DEFINED_EVENT      = 11001;
int EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_ENTER            = 11002;
int EVENT_SCRIPT_AREAOFEFFECT_ON_OBJECT_EXIT             = 11003;

int EVENT_SCRIPT_CREATURE_ON_HEARTBEAT                   = 5000;
int EVENT_SCRIPT_CREATURE_ON_NOTICE                      = 5001;
int EVENT_SCRIPT_CREATURE_ON_SPELLCASTAT                 = 5002;
int EVENT_SCRIPT_CREATURE_ON_MELEE_ATTACKED              = 5003;
int EVENT_SCRIPT_CREATURE_ON_DAMAGED                     = 5004;
int EVENT_SCRIPT_CREATURE_ON_DISTURBED                   = 5005;
int EVENT_SCRIPT_CREATURE_ON_END_COMBATROUND             = 5006;
int EVENT_SCRIPT_CREATURE_ON_DIALOGUE                    = 5007;
int EVENT_SCRIPT_CREATURE_ON_SPAWN_IN                    = 5008;
int EVENT_SCRIPT_CREATURE_ON_RESTED                      = 5009;
int EVENT_SCRIPT_CREATURE_ON_DEATH                       = 5010;
int EVENT_SCRIPT_CREATURE_ON_USER_DEFINED_EVENT          = 5011;
int EVENT_SCRIPT_CREATURE_ON_BLOCKED_BY_DOOR             = 5012;

int EVENT_SCRIPT_TRIGGER_ON_HEARTBEAT                    = 7000;
int EVENT_SCRIPT_TRIGGER_ON_OBJECT_ENTER                 = 7001;
int EVENT_SCRIPT_TRIGGER_ON_OBJECT_EXIT                  = 7002;
int EVENT_SCRIPT_TRIGGER_ON_USER_DEFINED_EVENT           = 7003;
int EVENT_SCRIPT_TRIGGER_ON_TRAPTRIGGERED                = 7004;
int EVENT_SCRIPT_TRIGGER_ON_DISARMED                     = 7005;
int EVENT_SCRIPT_TRIGGER_ON_CLICKED                      = 7006;

int EVENT_SCRIPT_PLACEABLE_ON_CLOSED                     = 9000;
int EVENT_SCRIPT_PLACEABLE_ON_DAMAGED                    = 9001;
int EVENT_SCRIPT_PLACEABLE_ON_DEATH                      = 9002;
int EVENT_SCRIPT_PLACEABLE_ON_DISARM                     = 9003;
int EVENT_SCRIPT_PLACEABLE_ON_HEARTBEAT                  = 9004;
int EVENT_SCRIPT_PLACEABLE_ON_INVENTORYDISTURBED         = 9005;
int EVENT_SCRIPT_PLACEABLE_ON_LOCK                       = 9006;
int EVENT_SCRIPT_PLACEABLE_ON_MELEEATTACKED              = 9007;
int EVENT_SCRIPT_PLACEABLE_ON_OPEN                       = 9008;
int EVENT_SCRIPT_PLACEABLE_ON_SPELLCASTAT                = 9009;
int EVENT_SCRIPT_PLACEABLE_ON_TRAPTRIGGERED              = 9010;
int EVENT_SCRIPT_PLACEABLE_ON_UNLOCK                     = 9011;
int EVENT_SCRIPT_PLACEABLE_ON_USED                       = 9012;
int EVENT_SCRIPT_PLACEABLE_ON_USER_DEFINED_EVENT         = 9013;
int EVENT_SCRIPT_PLACEABLE_ON_DIALOGUE                   = 9014;
int EVENT_SCRIPT_PLACEABLE_ON_LEFT_CLICK                 = 9015;

int EVENT_SCRIPT_DOOR_ON_OPEN                            = 10000;
int EVENT_SCRIPT_DOOR_ON_CLOSE                           = 10001;
int EVENT_SCRIPT_DOOR_ON_DAMAGE                          = 10002;
int EVENT_SCRIPT_DOOR_ON_DEATH                           = 10003;
int EVENT_SCRIPT_DOOR_ON_DISARM                          = 10004;
int EVENT_SCRIPT_DOOR_ON_HEARTBEAT                       = 10005;
int EVENT_SCRIPT_DOOR_ON_LOCK                            = 10006;
int EVENT_SCRIPT_DOOR_ON_MELEE_ATTACKED                  = 10007;
int EVENT_SCRIPT_DOOR_ON_SPELLCASTAT                     = 10008;
int EVENT_SCRIPT_DOOR_ON_TRAPTRIGGERED                   = 10009;
int EVENT_SCRIPT_DOOR_ON_UNLOCK                          = 10010;
int EVENT_SCRIPT_DOOR_ON_USERDEFINED                     = 10011;
int EVENT_SCRIPT_DOOR_ON_CLICKED                         = 10012;
int EVENT_SCRIPT_DOOR_ON_DIALOGUE                        = 10013;
int EVENT_SCRIPT_DOOR_ON_FAIL_TO_OPEN                    = 10014;

int EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_ENTER               = 13000;
int EVENT_SCRIPT_ENCOUNTER_ON_OBJECT_EXIT                = 13001;
int EVENT_SCRIPT_ENCOUNTER_ON_HEARTBEAT                  = 13002;
int EVENT_SCRIPT_ENCOUNTER_ON_ENCOUNTER_EXHAUSTED        = 13003;
int EVENT_SCRIPT_ENCOUNTER_ON_USER_DEFINED_EVENT         = 13004;

int EVENT_SCRIPT_STORE_ON_OPEN                           = 14000;
int EVENT_SCRIPT_STORE_ON_CLOSE                          = 14001;
*/

json audit_GetClientData(object oPC = OBJECT_SELF)
{
    if (!GetIsPC(oPC)) return JSON_OBJECT;

    json j = JsonObjectSet(JSON_OBJECT, "client_name", JsonString(GetPCPlayerName(oPC)));
         j = JsonObjectSet(j, "client_ip", JsonString(GetPCIPAddress(oPC)));
    return   JsonObjectSet(j, "client_cdkey", JsonString(GetPCPublicCDKey(oPC)));
}

json audit_GetPlayerData(object oPC = OBJECT_SELF, int bExtendedData = FALSE)
{
    if (!GetIsPC(oPC)) return JSON_OBJECT;

    json j = JsonObjectSet(JSON_OBJECT, "player_uuid", JsonString(GetObjectUUID(oPC)));
         j = JsonObjectSet(j, "player_name", JsonString(GetPCPlayerName(oPC)));
         j = JsonObjectSet(j, "player_location", LocationTojson(GetLocation(oPC)));

         if (bExtendedData)
            j = JsonObjectSet(j, "player_json", ObjectToJson(oPC, TRUE));

    return j;


}
