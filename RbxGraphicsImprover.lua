--mouse dot
local cursor = game.Players.LocalPlayer:GetMouse()
cursor.Icon = 'rbxassetid://8246959026'

--custom sky
sky1 = game.Lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky")
sky1.SkyboxBk = "rbxassetid://144933338"
sky1.SkyboxDn = "rbxassetid://144931530"
sky1.SkyboxFt = "rbxassetid://144933262"
sky1.SkyboxLf = "rbxassetid://144933244"
sky1.SkyboxRt = "rbxassetid://144933299"
sky1.SkyboxUp = "rbxassetid://144931564"
sky1.SunTextureId = "rbxassetid://8245454517"
sky1.StarCount = 0
sky1.Parent = game.Lighting

--lighting
sethiddenproperty(game.Lighting, "Technology", "ShadowMap")
game.Lighting.OutdoorAmbient = Color3.fromRGB(80, 135, 160)
game.Lighting.ShadowSoftness = 0.037
game.Lighting.Brightness = 5
game.Lighting.ColorShift_Top = Color3.fromRGB(130, 110, 50)
game.Lighting.ColorShift_Bottom = Color3.fromRGB(255, 0, 0)
game.Lighting.GlobalShadows = true

--clouds
local clouds = game.Lighting:FindFirstChildOfClass("Clouds") or Instance.new("Clouds")
clouds.Cover = 0.65
clouds.Density = 1
clouds.Color = Color3.fromRGB(134, 128, 122)
clouds.Parent = game.Workspace.Terrain

--sun rays
local sunrays = game.Lighting:FindFirstChildOfClass("SunRaysEffect") or Instance.new("SunRaysEffect")
sunrays.Intensity = 0.08
sunrays.Spread = 1
sunrays.Parent = game.Lighting

--atmosphere
local atmosphere = game.Lighting:FidFirstChildOfClass("Atmosphere") or Instance.new("Atmosphere")
atmosphere.Density = 0.35
atmosphere.Offset = 0.2
atmosphere.Parent = game.Lighting
 
--colorcorrection
local ColorCorrection = game.Lighting:FindFirstChildOfClass("ColorCorrectionEffect") or Instance.new("ColorCorrectionEffect")
ColorCorrection.Brightness = 0
ColorCorrection.Contrast = 0.1 
ColorCorrection.Saturation = 0.2
ColorCorrection.TintColor = Color3.fromRGB(255, 252, 240)
ColorCorrection.Parent = game.Lighting

--natural disaster survival
while true do
if game.Workspace.Structure:FindFirstChild("Cloud") then
game.Workspace.Structure.Cloud.Transparency = 0.3
game.Workspace.Structure.Cloud.CastShadow = false
end
task.wait(2)
end




