-- 1. Load the Library 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))()

-- 2. Create Window
local Window = Library:Window({
    ConfigName = "CompleteExampleConfig.json"
})

if not Window then return end

-- 3. Create Tabs
local MainTab = Window:Tab("Main")
local CombatTab = Window:Tab("Combat")
local SettingsTab = Window:Tab("Settings")

-- =========================================
-- [MAIN TAB] - Toggles & Dependencies
-- =========================================

-- Toggle 1: Auto Farm
local autoFarmToggle = MainTab:Toggle({
    Name = "Auto Farm",
    Flag = "AutoFarm",
    Default = false,
    Callback = function(value)
        print("Auto Farm is:", value)
    end
})

-- Toggle 2: Auto Quest (Cannot be enabled if Auto Farm is ON)
local autoQuestToggle = MainTab:Toggle({
    Name = "Auto Quest",
    Flag = "AutoQuest",
    Default = false,
    Condition = function()
        -- Checks the state of the other toggle
        if Library.Flags["AutoFarm"] then
            return false, "Please disable Auto Farm first!"
        end
        return true
    end,
    Callback = function(value)
        print("Auto Quest is:", value)
    end
})

-- Button
MainTab:Button({
    Name = "Redeem Codes",
    Callback = function()
        print("Redeeming codes...")
    end
})

-- =========================================
-- [COMBAT TAB] - Dropdowns & TextBoxes
-- =========================================

-- Single Dropdown (Dropdown)
CombatTab:Dropdown({
    Name = "Select Weapon",
    Flag = "WeaponSelect",
    List = {"Katana", "Scythe", "Dual Blades", "Fists"},
    Default = "Katana",
    Callback = function(item)
        print("Selected:", item)
    end
})

-- Multi Dropdown (Dropdown Multiple)
CombatTab:MultiDropdown({
    Name = "Select Mobs",
    Flag = "MobMultiSelect",
    List = {"Zombie", "Skeleton", "Boss", "Orc"},
    Callback = function(list)
        -- Handle the list here
    end
})

-- TextBox
CombatTab:TextBox({
    Name = "Player Target",
    Flag = "TargetPlayerName",
    Default = "",
    Placeholder = "Enter player name...",
    Callback = function(text)
        print("Target set to:", text)
    end
})

-- =========================================
-- [SETTINGS TAB] - Sliders & Cycles
-- =========================================

-- Slider
SettingsTab:Slider({
    Name = "Walk Speed",
    Flag = "WalkSpeed",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(val)
        print("Speed:", val)
    end
})

-- Cycle Button (Dropdown Single/Cycle)
SettingsTab:Cycle({
    Name = "Teleport Mode",
    Flag = "TPMode",
    List = {"Above", "Below", "Behind"},
    Default = "Above",
    Callback = function(mode)
        print("TP Mode:", mode)
    end
})

-- 4. Initialize Credits
Window:Init()
