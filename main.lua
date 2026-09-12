if not script_key then return end

writefile('landryhaxx/key.txt', script_key)

queue_on_teleport([[
    script_key = readfile('landryhaxx/key.txt')

    task.spawn(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/259f2737dc5cf5778cb87c834144a903.lua"))()
    end)

    repeat task.wait() until getgenv().bypassloaded

    loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/af3a50145af3c7bd2dda5350aa974db3.lua"))()
]])

rconsoleprint('connect to a server now')
