
TunnelV2 = module("lib/TunnelV2")

CoordsT = {}
TunnelV2.bindInterface("coords", CoordsT)

function CoordsT.getPermission()
	TriggerEvent("vorp:getUser", source, function(user)
		if user.group == 'mod' or user.group == 'admin' or user.group == 'superadmin' then
		
		TriggerClientEvent('zm_getcoords:Display', source)
		return true

	else
		TriggerClientEvent('zm_getcoords:Notification', source, "error", "Non hai i permessi necessari")
		return false
	end
end)
end

RegisterServerEvent('zm_getcoords:ControllaPermessiDisplay')
AddEventHandler('zm_getcoords:ControllaPermessiDisplay', function ()
	TriggerEvent("vorp:getUser", source, function(user)
		if user.group == 'supporto' or user.group == 'helper' or user.group == 'alexa' or user.group == 'mod' or user.group == 'admin' or user.group == 'superadmin' then
			TriggerClientEvent('zm_getcoords:Display', source)
		else
			TriggerClientEvent("vorp:Tip", source, Config.Langs["NoPermissions"], 4000)
		end
	end)
end)

RegisterServerEvent('zm_getcoords:ControlloSwitch')
AddEventHandler('zm_getcoords:ControlloSwitch', function ()
	if IsPlayerAceAllowed(source, "zm_getcoords.command") then
		TriggerClientEvent('zm_getcoords:ControlloSwitch', source)
	else
		TriggerClientEvent('zm_getcoords:Notification', source, "error", "Non hai i permessi necessari")
	end
end)

--[[


 __      __     _   _  ______          ________  _____ _______   _____  _____  
 \ \    / /\   | \ | |/ __ \ \        / /  ____|/ ____|__   __| |  __ \|  __ \ 
  \ \  / /  \  |  \| | |  | \ \  /\  / /| |__  | (___    | |    | |__) | |__) |
   \ \/ / /\ \ | . ` | |  | |\ \/  \/ / |  __|  \___ \   | |    |  _  /|  ___/ 
    \  / ____ \| |\  | |__| | \  /\  /  | |____ ____) |  | |    | | \ \| |     
     \/_/    \_\_| \_|\___\_\  \/  \/   |______|_____/   |_|    |_|  \_\_|     
                                                                               
                                                                               


]]
