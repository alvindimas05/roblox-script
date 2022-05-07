local current = 0
local new = 0

local mesh = 0
local lucky = false

game.StarterGui:SetCore("SendNotification", {
        Title = "YBA Item Notifier";
        Text = "Script Loaded!";
        Duration = 5;
        })

function creategui()
    for __,v in pairs(game.Workspace.Item_Spawns.Items:GetChildren()) do
        for __,o in pairs(v:GetChildren()) do
            mesh += 1
        end
        if mesh == 8 then
            if v:FindFirstChild("BillboardGui") == nil then
                local a = Instance.new("BillboardGui",v)
                a.Size = UDim2.new(10,0, 10,0)
                a.AlwaysOnTop = true    
                
                local b = Instance.new("Frame",a)
                b.Size = UDim2.new(1,0, 1,0)  
                b.BackgroundTransparency = 0.75
                b.BorderSizePixel = 0
                b.BackgroundColor3 = Color3.new(255, 215, 0)

                current += 1
            end
        else
            if v:FindFirstChild("BillboardGui") == nil then
                local a = Instance.new("BillboardGui",v)
                a.Size = UDim2.new(10,0, 10,0)
                a.AlwaysOnTop = true    
                
                local b = Instance.new("Frame",a)
                b.Size = UDim2.new(1,0, 1,0)  
                b.BackgroundTransparency = 0.75
                b.BorderSizePixel = 0
                b.BackgroundColor3 = Color3.new(0, 17, 255)

                current += 1
            end
        end
    end
end

creategui()

function check()
    repeat
		new = 0
        for __,v in pairs(game.Workspace.Item_Spawns.Items:GetChildren()) do
            new += 1
        end
        wait(0.1)
		if new < current then
			current = new
		end
    until current < new

    if current < new and lucky == false then
        game.StarterGui:SetCore("SendNotification", {
        Title = "YBA Item Notifier";
        Text = "An Item Spawned!";
        Duration = 5;
        })

        creategui()
    elseif current < new and lucky == true then
        game.StarterGui:SetCore("SendNotification", {
            Title = "YBA Item Notifier";
            Text = "Lucky Arrow Has Been Spawned!";
            Duration = 5;
            })

            creategui()
    end
    current = new
end

while true do
	check()
end
