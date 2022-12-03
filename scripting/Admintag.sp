#include <sourcemod>
#include <sdktools>
#include <multicolors>
#include <cstrike>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = 
{
	name = "Admintag",
	author = "MRxMAG1C, Fury",
	description = "Lets you turn your admin tag off/on via a command.",
	version = "1.0",
	url = "hjemezez.dk"
};

public void OnPluginStart()
{
	//Commands
	RegConsoleCmd("sm_admintag", Command_Admintag, "Turns your admintag off/on");
}


public Action Command_Admintag(int client, int args)
{
	if (args > 0)
	{ 
		CSetPrefix("{darkred}[ADMINTAG]");
		CReplyToCommand(client, "{lightgreen}Usage: !admintag");
		return Plugin_Handled;
	}
	
	char tag[32];
	CS_GetClientClanTag(client, tag, sizeof(tag));
	GroupId adminGroup = FindAdmGroup("admin");
	GroupId adminvipGroup = FindAdmGroup("admin+vip");
	GroupId adminvipplusGroup = FindAdmGroup("Admin+VIPPLUS");
	GroupId senioradminGroup = FindAdmGroup("Senior Admin");
	GroupId headadminGroup = FindAdmGroup("Headdmin");
	GroupId headofsupportGroup = FindAdmGroup("HeadOFSupport");
	GroupId teknikerGroup = FindAdmGroup("Tekniker");
	GroupId managerGroup = FindAdmGroup("Manager");
	GroupId ownerGroup = FindAdmGroup("*Ejer*");
	if (CanSetTag(client)) {
		if (adminGroup != INVALID_GROUP_ID && adminGroup.ImmunityLevel == 60) {
			if (StrEqual(tag, "[ADMIN]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[ADMIN]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else if (senioradminGroup != INVALID_GROUP_ID && senioradminGroup.ImmunityLevel == 60) {
			if (StrEqual(tag, "[SENIOR ADMIN]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[SENIOR ADMIN]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else if (adminvipGroup != INVALID_GROUP_ID && adminvipGroup.ImmunityLevel == 60) {
			if (StrEqual(tag, "[ADMIN]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[ADMIN]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else if (adminvipplusGroup != INVALID_GROUP_ID && adminvipplusGroup.ImmunityLevel == 60) {
			if (StrEqual(tag, "[ADMIN]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[ADMIN]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else if (headadminGroup != INVALID_GROUP_ID && headadminGroup.ImmunityLevel == 65) {
			if (StrEqual(tag, "[HEADADMIN]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[HEADADMIN]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else if (headofsupportGroup != INVALID_GROUP_ID && headofsupportGroup.ImmunityLevel == 70) {
			if (StrEqual(tag, "[HEADOFSUPPORT]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[HEADOFSUPPORT]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else if (teknikerGroup != INVALID_GROUP_ID && teknikerGroup.ImmunityLevel == 80) {
			if (StrEqual(tag, "[TEKNIKER]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[TEKNIKER]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else if (managerGroup != INVALID_GROUP_ID && managerGroup.ImmunityLevel == 75) {
			if (StrEqual(tag, "[MANAGER]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[MANAGER]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else if (ownerGroup != INVALID_GROUP_ID && ownerGroup.ImmunityLevel == 99) {
			if (StrEqual(tag, "[OWNER]"))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "");
				CReplyToCommand(client, "Your tag is now {darkred}OFF");
				return Plugin_Handled;
			} 
			if (StrEqual(tag, ""))
			{
				CSetPrefix("{darkred}[ADMINTAG]");
				CS_SetClientClanTag(client, "[OWNER]");
				CReplyToCommand(client, "Your tag is now {lightgreen}ON");
				return Plugin_Handled;
			}
		}else ReplyToCommand(client, "{darkred}[ADMINTAG] {white}You don't have the permissions for that");
	}
return Plugin_Handled;}

//Helpers
stock bool IsValidClient(int client)
{
	if(client <= 0 ) return false;
	if(client > MaxClients) return false;
	if(!IsClientConnected(client)) return false;
	if(IsFakeClient(client)) return false;
	return IsClientInGame(client);
}

bool CanSetTag(int client) {
    char SteamID[20];
    if(!GetClientAuthId(client, AuthId_Steam2, SteamID, sizeof(SteamID))) {
        return false;
    }
    
    AdminId admin = FindAdminByIdentity("steam", SteamID);
    if(admin == INVALID_ADMIN_ID) {
        return false;
    }
    // GRUPPER
	GroupId adminGroup = FindAdmGroup("admin");
    if(adminGroup == INVALID_GROUP_ID) {
        return false;
    }
	GroupId adminvipGroup = FindAdmGroup("admin+vip");
	if(adminvipGroup == INVALID_GROUP_ID) {
        return false;
    }
	GroupId adminvipplusGroup = FindAdmGroup("Admin+VIPPLUS");
	if(adminvipplusGroup == INVALID_GROUP_ID) {
        return false;
    }
	GroupId senioradminGroup = FindAdmGroup("Senior Admin");
	if(senioradminGroup == INVALID_GROUP_ID) {
        return false;
    }
	GroupId headadminGroup = FindAdmGroup("Headadmin");
	if(headadminGroup == INVALID_GROUP_ID) {
        return false;
    }
	GroupId managerGroup = FindAdmGroup("Manager");
	if(managerGroup == INVALID_GROUP_ID) {
        return false;
    }
	GroupId headofsupportGroup = FindAdmGroup("HeadOFSupport");
	if(headofsupportGroup == INVALID_GROUP_ID) {
        return false;
    }
	GroupId teknikerGroup = FindAdmGroup("Tekniker");
	if(teknikerGroup == INVALID_GROUP_ID) {
        return false;
    }
	GroupId ownerGroup = FindAdmGroup("*Ejer*");
	if(teknikerGroup == INVALID_GROUP_ID) {
        return false;
    }
    
    for(int i = 0; i < admin.GroupCount; i++) {
        char groupName[25];
        GroupId ownedGroup = admin.GetGroup(i, groupName, sizeof(groupName));
        if(ownedGroup == adminGroup) {
            return true;
        }
		if(ownedGroup == adminvipplusGroup) {
            return true;
		}
		if(ownedGroup == adminvipGroup) {
            return true;
        }
		if(ownedGroup == senioradminGroup) {
            return true;
        }
		if(ownedGroup == headadminGroup) {
            return true;
        }
		if(ownedGroup == managerGroup) {
            return true;
        }
		if(ownedGroup == headofsupportGroup) {
            return true;
        }
		if(ownedGroup == ownerGroup) {
            return true;
        }
    }
    
    return false;
}