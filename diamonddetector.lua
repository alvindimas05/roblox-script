function notify(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Title Here";
		Text = msg;
		Duration = 5;
	})
end

for _, v in game:GetService("Players"):GetChildren() do
	if v.Character.Head:FindFirstChild("ShinyParticle") then
		notify(v.Name.." is a Diamond!")
	end
end
notify("Done Detecting!")