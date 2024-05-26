Config  = {}

Config.KickUser = true 
Config.MessageKick = 'Don\'t run over the people.'

Config.MessageWhenPlayerRevive = 'You have been revived since you were run over'

function ShowNotification(msg)
	BeginTextCommandThefeedPost('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandThefeedPostTicker(0,1)
end

function RevivePlayer() -- Revive the player
    TriggerEvent('esx_ambulancejob:revive') -- This is for V.ESX
    ShowNotification(Config.MessageWhenPlayerRevive)
end