-- 1. Load the Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))()

-- 2. Create Window (Name & Config File)
local Window = Library:Window({
    ConfigName = "putnameofgamehere.json"
})

if not Window then return end

-- 3. Create Tabs
local MainTab = Window:Tab("Main")
local CombatTab = Window:Tab("Combat")
local SettingsTab = Window:Tab("Settings")

-- =========================================
-- [MAIN TAB] - Toggles
-- =========================================

MainTab:Toggle({
    Name = "Auto Farm",
    Flag = "AutoFarmKey", -- Flag for saving
    Default = false,
    Callback = function(value)
        -- ---script here
        print("Auto Farm:", value)
    end
})

MainTab:Toggle({
    Name = "Auto Collect",
    Flag = "AutoCollectKey",
    Default = false,
    Callback = function(value)
        -- ---script here
    end
})

-- =========================================
-- [COMBAT TAB] - Sliders & Buttons
-- =========================================

CombatTab:Slider({
    Name = "Walk Speed",
    Flag = "WalkSpeedKey",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(value)
        -- ---script here
        print("Speed:", value)
    end
})

CombatTab:Button({
    Name = "Kill All Mobs",
    Callback = function()
        -- ---script here
        print("Killed all mobs")
    end
})

-- =========================================
-- [SETTINGS TAB] - Dropdowns & Cycles
-- =========================================

SettingsTab:Dropdown({
    Name = "Select Weapon",
    Flag = "WeaponSelect",
    List = {"Katana", "Scythe", "Bow", "Fists"},
    Default = "Katana",
    Callback = function(item)
        -- ---script here
        print("Selected:", item)
    end
})

SettingsTab:Cycle({
    Name = "Teleport Mode",
    Flag = "TPMode",
    List = {"Above", "Below", "Behind"},
    Default = "Behind",
    Callback = function(mode)
        -- ---script here
        print("TP Mode:", mode)
    end
})

SettingsTab:MultiDropdown({
    Name = "Target Mobs",
    Flag = "TargetMobList",
    List = {"Zombie", "Skeleton", "Boss"},
    Callback = function(list)
        -- ---script here
    end
})

-- 4. Initialize (Credits Page)
Window:Init()
