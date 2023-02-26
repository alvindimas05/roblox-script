local Player = game.Players.LocalPlayer.Character.HumanoidRootPart
local cur = Player.CFrame
local hazmat = workspace.Scripted.Other.HazmatSuit.Torso

Player.CFrame = hazmat.CFrame
wait(.2)
fireproximityprompt(hazmat.Attachment.DoorInteract)
Player.CFrame = cur