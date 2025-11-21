
-- 1. Load the Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))()

-- 2. Create Window (ConfigName is vital for saving!)
local Window = Library:CreateWindow({
    Title = "King Gen - Blade Zombie",
    ConfigName = "KingGen_BladeZombie_Config" -- Folder name in workspace
})

-- 3. Create Tabs
local MainTab = Window:AddTab("Main")
local SettingsTab = Window:AddTab("Settings")

-- 4. Toggle Example
MainTab:AddToggle({
    Name = "Auto Attack",
    Flag = "AutoAttack", -- Unique ID for saving
    Default = false,
    Callback = function(Value)
        print("Auto Attack is:", Value)
        _G.AutoAttack = Value
    end
})

-- 5. Slider Example
MainTab:AddSlider({
    Name = "WalkSpeed",
    Flag = "WalkSpeedVal",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(Value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    end
})

-- 6. Single Dropdown Example
MainTab:AddDropdown({
    Name = "Select Weapon",
    Flag = "WeaponSelect",
    List = {"Katana", "Scythe", "Bow"},
    Multi = false,
    Default = "Katana",
    Callback = function(Value)
        print("Weapon Selected:", Value)
    end
})

-- 7. Multi Dropdown Example
MainTab:AddDropdown({
    Name = "Select Mobs",
    Flag = "MobSelect",
    List = {"Zombie", "Skeleton", "Boss", "Orc"},
    Multi = true,
    Default = {["Zombie"] = true},
    Callback = function(Value)
        -- Value is a table: { ["Zombie"] = true, ["Boss"] = false }
        for mob, enabled in pairs(Value) do
            if enabled then print("Farming:", mob) end
        end
    end
})

-- 8. Button Dropdown (Cycle) Example
SettingsTab:AddButtonDropdown({
    Name = "Teleport Mode",
    Flag = "TPMode",
    List = {"Above", "Behind", "Below"},
    Default = "Behind",
    Callback = function(Value)
        print("TP Mode:", Value)
    end
})

-- 9. Button Example (No saving needed for buttons)
SettingsTab:AddButton({
    Name = "Server Hop",
    Callback = function()
        print("Server Hopping...")
    end
})

-- Init Notification
Library:Notify({
    Title = "Loaded",
    Text = "KingGen loaded successfully!",
    Duration = 5
})
