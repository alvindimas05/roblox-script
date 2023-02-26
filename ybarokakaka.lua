function notify(msg)
	game.StarterGui:SetCore("SendNotification", {
		Title = "YBA Item Notifier";
		Text = msg;
		Duration = 5;
	})
end

while wait() do
	for _, obj in workspace.Item_Spawns.Items:GetChildren() do
		local mesh = obj:FindFirstChild("MeshPart")
		if mesh then
			if mesh.Material == Enum.Material.Fabric and obj:FindFirstChild("BillboardGui") == nil then
				local a = Instance.new("BillboardGui", obj)
                a.Size = UDim2.new(10,0, 10,0)
                a.AlwaysOnTop = true    
                
                local b = Instance.new("Frame", a)
                b.Size = UDim2.new(1,0, 1,0)  
                b.BackgroundTransparency = 0.75
                b.BorderSizePixel = 0
                b.BackgroundColor3 = Color3.new(255, 215, 0)

				notify("Rokakaka Spawned!")
			end
		end
	end
end