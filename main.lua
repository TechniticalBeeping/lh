if not script_key then return end

writefile('landryhaxx/key.txt', script_key)

queue_on_teleport([[
    script_key = readfile('landryhaxx/key.txt')

    task.spawn(function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/4f8fea439b937332e4dc5f226ae9d6f7.lua"))()
    end)

    repeat task.wait() until getgenv().bypassloaded

    loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/1bd272822d12866d9aa64c087bf7e22f.lua"))()
]])

rconsoleprint('connect to a server now')
