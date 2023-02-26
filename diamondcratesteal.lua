local player = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local found = true

function notify(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Diamond Crate Stealer";
		Text = msg;
		Duration = 5;
	})
end

notify("Stealer Started!")
notify("Waiting until Crate Found!")

repeat wait() until workspace.Terrain:FindFirstChild("DiamondCrate")

notify("Crate Found!")

local crate = workspace.Terrain.DiamondCrate.Crate
player.CFrame = crate.CFrame
wait(3)
fireproximityprompt(crate.Attachment.Proximity)