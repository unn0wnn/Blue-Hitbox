_G.HeadSize = 20
_G.Disabled = true

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Hitbox Version BETA";
	Text = "by Hypixie";
	Icon = "rbxthumb://type=Asset&id=1891351283&w=150&h=150"})
Duration = 5;
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
