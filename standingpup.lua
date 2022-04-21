local anim = game:GetService("Players").LocalPlayer.Character.Animate

anim:FindFirstChild("idle").Value = "http://www.roblox.com/asset/?id=8955234815"
anim:FindFirstChild("walk").Value = "http://www.roblox.com/asset/?id=7088128832"
anim:FindFirstChild("fall"):Destroy()
anim:FindFirstChild("jump"):Destroy()