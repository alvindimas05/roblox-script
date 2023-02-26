function JoinRandomServer()
	local servers = {}
	for _, server in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=50")).data) do
	if type(server) == "table" and server.maxPlayers > server.playing and server.id ~= game.JobId then
			table.insert(servers, server.id)
		end
	end
	if #servers > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)])
	else
		print("Couldn't find a server.")
	end
end
game:GetService("NetworkClient").ConnectionAccepted:Connect(function(peer, replicator)
	local ip = peer:sub(1, peer:find("|")-1)
	print("Connected to " .. ip)
	local data = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://ip-api.com/json/" .. ip))
	print("Country: " .. data.country)
	print("Region: " .. data.regionName)
	print("City: " .. data.city)
end)