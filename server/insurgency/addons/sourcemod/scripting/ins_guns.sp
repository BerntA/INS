#pragma semicolon 1
#include <sourcemod>

#define PLUGIN_VERSION "1.0"

public Plugin:myinfo = 
{
    name = "INS! Guns Menu",
    author = "BerntA",
    description = "Allows Clients To Get Any Guns From The Gun Menu",
    version = PLUGIN_VERSION,
    url = "http://infestus-game.com/index/"
}

public OnPluginStart()
{
    RegConsoleCmd("sm_guns", WeaponMenu);
    RegConsoleCmd("guns", WeaponMenu);

    CreateConVar("ins_guns_version", PLUGIN_VERSION, "INS Gun Menu Version", FCVAR_PLUGIN|FCVAR_SPONLY|FCVAR_REPLICATED|FCVAR_NOTIFY);
}

public Action:WeaponMenu(client,args)
{
    Weapons(client);
    
    return Plugin_Handled;
}

public Action:Weapons(clientId) 
{
	new Handle:menu = CreateMenu(WeaponMenuHandler);
	SetMenuTitle(menu, "Gun Menu");
	
	AddMenuItem(menu, "option1", "M4 AimPoint");
	AddMenuItem(menu, "option2", "M16M203");
	AddMenuItem(menu, "option3", "M16A4");
	AddMenuItem(menu, "option4", "M14 Sniper");
	AddMenuItem(menu, "option5", "M249 SAW");
	AddMenuItem(menu, "option6", "M1014 Shotgun");
	AddMenuItem(menu, "option7", "M4 Medium");
	
	AddMenuItem(menu, "option8", "AK-47");
	AddMenuItem(menu, "option9", "FNFAL");
	AddMenuItem(menu, "option10", "AKS-74U");
	AddMenuItem(menu, "option11", "RPK MG");
	AddMenuItem(menu, "option12", "TOZ Shotgun");
	AddMenuItem(menu, "option13", "Dragunov");
	AddMenuItem(menu, "option14", "SKS");
	AddMenuItem(menu, "option15", "L42A1");
	AddMenuItem(menu, "option16", "RPG-7");
	
	AddMenuItem(menu, "option17", "1911");
	AddMenuItem(menu, "option18", "M9");
	AddMenuItem(menu, "option19", "Makarov");
	
	SetMenuExitButton(menu, true);
	DisplayMenu(menu, clientId, 15);
	
	return Plugin_Handled;
}

public WeaponMenuHandler(Handle:menu, MenuAction:action, client, itemNum)
{
	SetConVarBool(FindConVar("sv_cheats"), true, false);

	if ( action == MenuAction_Select )
	{
		switch (itemNum)
		{
			case 0: 
			{
				FakeClientCommand(client, "give_weapon m4");
			}
			case 1: 
			{
				FakeClientCommand(client, "give_weapon m16m203");
			}
			case 2: 
			{
				FakeClientCommand(client, "give_weapon m16a4");
			}
			case 3: 
			{
				FakeClientCommand(client, "give_weapon m14");
			}
			case 4:
			{
				FakeClientCommand(client, "give_weapon m249");
			}
			case 5:
			{
				FakeClientCommand(client, "give_weapon m1014");
			}
			case 6: 
			{
				FakeClientCommand(client, "give_weapon m4med");
			}
			case 7: 
            {
                FakeClientCommand(client, "give_weapon ak47");
            }
			case 8: 
            {
                FakeClientCommand(client, "give_weapon fnfal");
            }
			case 9:
            {
                FakeClientCommand(client, "give_weapon aks74u");
            }
			case 10:
            {
                FakeClientCommand(client, "give_weapon rpk");
            }
			case 11:
            {
                FakeClientCommand(client, "give_weapon toz");
            }	
			case 12:
            {
                FakeClientCommand(client, "give_weapon svd");
            }	
			case 13:
            {
                FakeClientCommand(client, "give_weapon sks");
            }	
			case 14:
            {
                FakeClientCommand(client, "give_weapon l42a1");
            }	
			case 15:
            {
                FakeClientCommand(client, "give_weapon rpg7");
            }	
			case 16:
            {
                FakeClientCommand(client, "give_weapon 1911");
				FakeClientCommand(client, "give_clip 1911");
            }	
			case 17:
            {
                FakeClientCommand(client, "give_weapon m9");
            }	
			case 18:
            {
                FakeClientCommand(client, "give_weapon makarov");
            }		
		}
    }
	
	SetConVarBool(FindConVar("sv_cheats"), false, false);
}
