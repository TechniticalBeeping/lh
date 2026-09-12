if not lp_key then return end

writefile('landryhaxx/key.txt', lp_key)

queue_on_teleport([=[
    lp_key = readfile('landryhaxx/key.txt')

    task.spawn(function()
        loadstring(game:HttpGet("https://luaprot.net/api/v2/loaders/get/59810384473976980152"))()
    end)()

    repeat task.wait() until getgenv().Bypassed

    loadstring(game:HttpGet("https://luaprot.net/api/v2/loaders/get/99779786104572102737"))()
]=])

rconsoleprint("connect to a server now")
