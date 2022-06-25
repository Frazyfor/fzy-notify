function Alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('fzy-notify:Alert')
AddEventHandler('fzy-notify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)

-- Example Commands - Delete them

RegisterCommand('success', function()
	exports['okokNotify']:Alert("SUCCESS", "You have sent <span style='color:#47cf73'>420€</span> to Tommy!", 5000, 'success')
end)

RegisterCommand('info', function()
	exports['okokNotify']:Alert("INFO", "The Casino has opened!", 5000, 'info')
end)

RegisterCommand('warning', function()
	exports['okokNotify']:Alert("WARNING", "You are getting nervous!", 5000, 'warning')
end)
