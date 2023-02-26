while 1 do
	local findpath = function(obj)
		local serv = game:GetService("PathfindingService")
		local human = game.Players.LocalPlayer.Character.Humanoid -- Change PlayerNameHere to your username.
		local body = game.Players.LocalPlayer.Character.Torso or game.Players.LocalPlayer.Character.HumanoidRootPart
		local dest = obj -- Change PartNameHere to the part.
		local path = serv:CreatePath()
		path:ComputeAsync(body.Position,dest.Position)
		if path.Status == Enum.PathStatus.Success then
			local wayPoints = path:GetWaypoints()
			for i = 1,#wayPoints do
				local point = wayPoints[i]
				human:MoveTo(point.Position)
				local success = human.MoveToFinished:Wait()
				if point.Action == Enum.PathWaypointAction.Jump then
					human.WalkSpeed = 0
					wait(0.2)
					human.WalkSpeed = 16
					human.Jump = true
				end
				if not success then
					print("trying again")
					human.Jump = true
					human:MoveTo(point.Position)
					if not human.MoveToFinished:Wait() then
						break
					end
				end
			end
		end
	end
	local getclosest = function()
		local MaxDistance = math.huge --u can remove this if the variable is defined somewhere else
		local ClosestObject
		for i, v in pairs(game.workspace.Terrain:GetChildren()) do
			local MinDistance = MaxDistance
			if v.Name == "Halloween" then
				v = v.SpinPart
				local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
				if dist < MinDistance then
					MinDistance, ClosestObject = dist, v
				end
			end
		end
		findpath(ClosestObject)
	end

	getclosest()
end