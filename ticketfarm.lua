local lplayer = game:GetService("Players").LocalPlayer
local player = lplayer.Character.HumanoidRootPart

local vu = game:GetService("VirtualUser")
local vim = game:service("VirtualInputManager")

local bat

local box
local trash = workspace.Scripted.Interactable.TrashCan.Union.Attachment.ProximityPrompt

local vending
local far

-- Notify Function
function notify(msg)
	print("Message From Kaiju Paradise Ticket Farm : \n"..msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Kaiju Paradise Ticket Farm";
		Text = msg;
		Duration = 5;
	})
end

local function keyPress(keyCode)
  vim:SendKeyEvent(true, keyCode, false, game)
  vim:SendKeyEvent(false, keyCode, false, game)
end

-- Checking Box ProximityPrompt
for _, v in workspace.Scripted.Other.CardboardBox:GetChildren() do
	if v:FindFirstChild("Attachment") then
		box = v.Attachment.ProximityPrompt
	end
end

-- Checking Farthest Bat
for _, v in workspace.Scripted.Interactable:GetChildren() do
	if v.Name == "Bat" and lplayer:DistanceFromCharacter(v.Part.Position) then
		bat = v
	end
end

bat = bat.Part.Attachment.GiveItem

-- Wait Until Player Mouse In Inventory
local destroying = false
local near = false

lplayer.PlayerScripts.LocalScript.Zone.Disabled = true

local start = coroutine.create(function()
	while not near do
		vending = nil
		far = 0
		-- Checking Farthest and Not Broken Vending
		for _, v in workspace.Scripted.Other.VendingMachine:GetChildren() do
			if v.Name == "VendingMachine" then
				local ran = lplayer:DistanceFromCharacter(v.HumanoidRootPart.Position)
				if ran > far and v:FindFirstChild("Broken") == nil then
					far = ran
					vending = v
				end
			end
		end

		-- Start Destroying Vending
		if vending:FindFirstChild("Broken") == nil then
			-- Equip Weapon
			player.CFrame = bat.Parent.Parent.CFrame
			task.wait(.5)
			fireproximityprompt(bat)

			-- Destroying Vending Machine
			task.wait(1)
			keyPress(Enum.KeyCode.One)
			player.CFrame = vending.HumanoidRootPart.CFrame
			task.wait(.5)
			destroying = true
			repeat
				task.wait()
				vu:ClickButton1(Vector2.new(500,0), workspace.Camera.CFrame)
			until vending:FindFirstChild("Broken") or near

			destroying = false
			task.wait(1)
			-- Checking If Bat didn't broke
			if player.Parent:FindFirstChild("Bat") then
				player.CFrame = trash.Parent.Parent.CFrame
				task.wait(.5)
				fireproximityprompt(trash)
				task.wait(.5)
			end
			-- Taking Every Cola
			for _, v in vending.Reward:GetChildren() do
				if v then
					-- Taking Cola
					player.CFrame = v.BasePart.CFrame
					task.wait(.5)
					fireproximityprompt(v.BasePart.Attachment.GiveItem)
					task.wait(1)

					-- Teleport To Box And Put Cola
					player.CFrame = box.Parent.Parent.CFrame
					task.wait(.5)
					fireproximityprompt(box)
					task.wait(1)
				end
			end
		end
	end
end)

local closest = coroutine.create(function()
	while not near do
		repeat wait() until destroying
		for _, v in game:GetService("Players"):GetChildren() do
			if v.Character and v ~= lplayer then
				v = v.Character
				local human = v:FindFirstChild("HumanoidRootPart")

				if human then
					local distance = lplayer:DistanceFromCharacter(v.HumanoidRootPart.Position)
					if distance < 70 then
						near = true
						coroutine.close(start)
						keyPress(Enum.KeyCode.One)
						player.CFrame = workspace.Spawns.SpawnLocation.CFrame

						notify("There is player nearby!")
						notify("Stopping script! Restart to use again!")
						break
					end
				end
			end
		end
	end
end)

coroutine.resume(start)
coroutine.resume(closest)