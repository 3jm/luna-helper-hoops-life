if game.PlaceId == 9742262009 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local colors = {
        SchemeColor = Color3.fromRGB(249,0,77),
        Background = Color3.fromRGB(33,33,33),
        Header = Color3.fromRGB(10,10,10),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }
    local Window = Library.CreateLib("Skru: By @NBA_Grownboy", colors)

    -- MAIN SECTION --
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    -- SHOOTING SECTION --
    local Shooting = Window:NewTab("Shooting")
    local ShootingSection = Shooting:NewSection("Shooting")
    

    -- PHYSICS ENGINE SECTION --
    local PhysicsEngine = Window:NewTab("Physics Engine")
    local PhysicsEngineSection = PhysicsEngine:NewSection("Physics Engine")
    PhysicsEngineSection:NewSlider("Walkspeed", "'1' is default walking speed.", 5000, 84, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game:GetService("Players").LocalPlayer.Attributes.Speed.Value = v
    end)
    PhysicsEngineSection:NewSlider("Jumppower", "'1' is default jump power", 500, 0, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
        

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


    -- SETTINGS SECTION --
    local Settings = Window:NewTab("Settings")
    local SettingsSection = Settings:NewSection("Settings")
    SettingsSection:NewKeybind("Toggle UI", "Open & Close menu", Enum.KeyCode.Insert, function()
        Library:ToggleUI()
    end)
    
end