local StarterGui = game:GetService("StarterGui")
local Notifications = {
    ["Title"] = "Luna",
    ["Text"] = "Luna is now loaded! @NBA_Youngboy owns everyone in your game now.",
    ["Duration"] = 5,
    ["Icon"] = "rbxassetid://9798398854"
}
StarterGui:SetCore("SendNotification", Notifications)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(249,0,77),
    Background = Color3.fromRGB(33,33,33),
    Header = Color3.fromRGB(10,10,10),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Window = Library.CreateLib("Luna Helper | [Hoops Life] | Blind#2665", colors)

-- VISUALS SECTION --
local Visuals = Window:NewTab("Visuals")
local VisualsSection = Visuals:NewSection("Visuals")
VisualsSection:NewButton("Unlock Camera", "Unlocks Camera Zoom", function()
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 5000
    game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0.5
end)
VisualsSection:NewSlider("Field Of View", "Changes your cameras FOV", 120, 70, function(v) -- 500 (MaxValue) | 0 (MinValue)
    game.Workspace.Camera.FieldOfView = v
end)

-- LIGHTING SECTION --
local Lighting = Window:NewTab("Lighting")
local LightingSection = Lighting:NewSection("Lighting")

LightingSection:NewColorPicker("Atmosphere Color", "Changes Atmosphere Color", Color3.fromRGB(0,0,0), function(color)
    game:GetService("Lighting").ColorCorrection.TintColor = color
end)
LightingSection:NewSlider("Saturation", "funny", 100, -100, function(v)
    game:GetService("Lighting").ColorCorrection.Saturation = v
end)
LightingSection:NewButton("Reset", "Resets Saturation to default", function()
    game:GetService("Lighting").ColorCorrection.Saturation = 0
    game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(255,255,255)
end)
-- Teleport Section -- 
local Teleport = Window:NewTab("Teleport")
local TeleportSection = Teleport:NewSection("Teleport (PLAZA ONLY)")
TeleportSection:NewButton("Park", "Teleports you to park enterence (PLAZA ONLY)", function()
    if game.PlaceId == 10008443595 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180,3.37,-88)
    else
        local StarterGui = game:GetService("StarterGui")
        local Notifications = {
            ["Title"] = "Luna Helper [ERROR]",
            ["Text"] = "This only works when you are in the plaza!",
            ["Duration"] = 5,
            ["Icon"] = "rbxassetid://9798398854"
        }
StarterGui:SetCore("SendNotification", Notifications)
    end
end)
TeleportSection:NewButton("Mall", "Teleports you to the mall (PLAZA ONLY)", function()
    if game.PlaceId == 10008443595 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-96.99,7.15,-575.83)
    else
        local StarterGui = game:GetService("StarterGui")
        local Notifications = {
            ["Title"] = "Luna Helper [ERROR]",
            ["Text"] = "This only works when you are in the plaza!",
            ["Duration"] = 5,
            ["Icon"] = "rbxassetid://9798398854"
        }
StarterGui:SetCore("SendNotification", Notifications)
    end
end)
TeleportSection:NewButton("Haircut Shop", "Teleports you to the haircut shop (PLAZA ONLY)", function()
    if game.PlaceId == 10008443595 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.64,3.5,-250.21)
    else
        local StarterGui = game:GetService("StarterGui")
        local Notifications = {
            ["Title"] = "Luna Helper [ERROR]",
            ["Text"] = "This only works when you are in the plaza!",
            ["Duration"] = 5,
            ["Icon"] = "rbxassetid://9798398854"
        }
StarterGui:SetCore("SendNotification", Notifications)
    end
end)
TeleportSection:NewButton("Clothing Shop", "Teleports you to the clothing shop (PLAZA ONLY)", function()
    if game.PlaceId == 10008443595 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.03,3.5,-258.06)
    else
        local StarterGui = game:GetService("StarterGui")
        local Notifications = {
            ["Title"] = "Luna Helper [ERROR]",
            ["Text"] = "This only works when you are in the plaza!",
            ["Duration"] = 5,
            ["Icon"] = "rbxassetid://9798398854"
        }
StarterGui:SetCore("SendNotification", Notifications)
    end
end)
TeleportSection:NewButton("Gym", "Teleports you to the gym (PLAZA ONLY)", function()
    if game.PlaceId == 10008443595 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-47.74,3.5,-11.05)
    else
        local StarterGui = game:GetService("StarterGui")
        local Notifications = {
            ["Title"] = "Luna Helper [ERROR]",
            ["Text"] = "This only works when you are in the plaza!",
            ["Duration"] = 5,
            ["Icon"] = "rbxassetid://9798398854"
        }
StarterGui:SetCore("SendNotification", Notifications)
    end
end)
TeleportSection:NewButton("MatchMaker", "Teleports you to the matchmaker (PLAZA ONLY)", function()
    if game.PlaceId == 10008443595 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.79,3.5,29.75)
    else
        local StarterGui = game:GetService("StarterGui")
        local Notifications = {
            ["Title"] = "Luna Helper [ERROR]",
            ["Text"] = "This only works when you are in the plaza!",
            ["Duration"] = 5,
            ["Icon"] = "rbxassetid://9798398854"
        }
StarterGui:SetCore("SendNotification", Notifications)
    end
end)
TeleportSection:NewLabel("Teleport (COURT ONLY)")
TeleportSection:NewButton("Back To Plaza", "Teleports you to plaza return", function()
    if game.PlaceId == 10008450542 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(399.27,23.35,-214.65)
    else
        local StarterGui = game:GetService("StarterGui")
        local Notifications = {
            ["Title"] = "Luna Helper [ERROR]",
            ["Text"] = "This only works when you are on the court!",
            ["Duration"] = 5,
            ["Icon"] = "rbxassetid://9798398854"
        }
StarterGui:SetCore("SendNotification", Notifications)
    end
end)
TeleportSection:NewLabel("Teleport (GLOBAL)")
TeleportSection:NewTextBox("Teleport To", "Player Name", function(txt)
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    local p2 = txt
    p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame 
    --[[
        no check to see if they're in the game or not yet. If you dont get teleported, their player is not in the game
        or you typed their name wrong.
    ]]--
end)
-- Credits Section --
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Dev: NBA_Grownboy")
-- Settings Section --
local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Settings")
SettingsSection:NewKeybind("Open/Close", "Open/Close menu button", Enum.KeyCode.Insert, function()
    Library:ToggleUI()
end)
