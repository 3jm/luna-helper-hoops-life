if game.PlaceId == 9742262009 then
    local StarterGui = game:GetService("StarterGui")
    local Notifications = {
        ["Title"] = "Skru",
        ["Text"] = "Skru is now loaded! @NBA_Youngboy owns everyone in your game now.",
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

    

    -- LIGHTING SECTION --
    local Lighting = Window:NewTab("Lighting")
    local LightingSection = Lighting:NewSection("Lighting")
    LightingSection:NewToggle("Toggle Sun Rays", "Enabled or Disables Sun Rays", function(state)
        if state then
            game:GetService("Lighting").SunRays.Enabled = false
        else
            game:GetService("Lighting").SunRays.Enabled = true
        end
    end)
    LightingSection:NewColorPicker("Atmosphere Color", "Changes Atmosphere Color", Color3.fromRGB(0,0,0), function(color)
        game:GetService("Lighting").ColorCorrection.TintColor = color
    end)
    LightingSection:NewSlider("Saturation", "funny", 100, -100, function(v)
        game:GetService("Lighting").ColorCorrection.Saturation = v
    end)
    LightingSection:NewButton("Reset", "Resets Saturation to default", function()
        game:GetService("Lighting").ColorCorrection.Saturation = 0
    end)


elseif game.PlaceId ~= 9742262009 then
    local StarterGui = game:GetService("StarterGui")
    local Notifications = {
        ["Title"] = "Skru [ERROR]",
        ["Text"] = "Skru can only be loaded when you are in the park!",
        ["Duration"] = 5,
        ["Icon"] = "rbxassetid://9798398854"
    }
    StarterGui:SetCore("SendNotification", Notifications)
end
