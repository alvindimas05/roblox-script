local tool = Instance.new("Tool")
tool.Name = "Print Clicked Object Name"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Parent = game.Players.LocalPlayer.Backpack

function encode_cframe(cf)
	return string.format(string.rep("%f,",12), cf:components())
end


tool.Equipped:Connect(function(mouse)
	mouse.Button1Down:Connect(function()
		if mouse.Target and mouse.Target.Parent then
			print(mouse.Target.Name.." | "..mouse.Target:GetFullName())
		end
	end)
end)
