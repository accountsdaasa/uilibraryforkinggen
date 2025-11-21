-- 1. Load the Library
-- Replace the URL below with your RAW GitHub URL for baseui.lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))()

-- 2. Create the Window
local Window = Library:Window({
    ConfigName = "WeakLegacyConfig.json" -- Custom save file name
})

if not Window then return end -- Stop if script is already running

-- 3. Create Tabs
local MainTab = Window:Tab("Main")
local MiscTab = Window:Tab("Misc")
local RollTab = Window:Tab("Roll")
local MissionsTab = Window:Tab("Missions")
local SettingsTab = Window:Tab("Settings")

-- === Main Tab Examples (Compact Toggles like Image 1) ===

MainTab:Toggle({
    Name = "Auto Quest",
    Flag = "AutoQuest", -- Save key
    Default = false,
    Callback = function(value)
        -- ---put script here
        print("Auto Quest is:", value)
        _G.AutoQuest = value
        while _G.AutoQuest do
            -- Auto Quest Logic
            task.wait(1)
        end
    end
})

MainTab:Toggle({
    Name = "Auto Mob",
    Flag = "AutoMob",
    Default = false,
    Callback = function(value)
        -- ---put script here
    end
})

MainTab:Toggle({
    Name = "Auto Raid",
    Flag = "AutoRaid",
    Default = true,
    Callback = function(value)
        -- ---put script here
    end
})

MainTab:Toggle({
    Name = "Auto Boss",
    Flag = "AutoBoss",
    Default = false,
    Callback = function(value)
        -- ---put script here
    end
})

MainTab:Toggle({
    Name = "Both Mode",
    Flag = "BothMode",
    Default = false,
    Callback = function(value)
        -- ---put script here
    end
})

-- === Settings Tab Examples (Stacked Elements like Image 2) ===

-- Cycle Button (For choosing modes/raids)
SettingsTab:Cycle({
    Name = "Choose Raid",
    Flag = "RaidSelection",
    List = {"Dungeon", "Tanjiro Raid", "Mugen Train"},
    Default = "Dungeon",
    Callback = function(value)
        -- ---put script here
        print("Raid set to:", value)
    end
})

-- Standard Dropdown (Single Select)
SettingsTab:Dropdown({
    Name = "Weapon Select",
    Flag = "WeaponSelection",
    List = {"Katana", "Scythe", "Dual Blades", "Greatsword"},
    Default = "Katana",
    Callback = function(value)
        -- ---put script here
        print("Weapon equipped:", value)
    end
})

-- Multi Dropdown (Select Multiple Items)
SettingsTab:MultiDropdown({
    Name = "Select Bosses",
    Flag = "BossSelection",
    List = {"Akaza", "Rengoku", "Nezuko", "Tanjiro"},
    Callback = function(selectedList)
        -- ---put script here
        for boss, active in pairs(selectedList) do
            if active then
                print("Hunting boss:", boss)
            end
        end
    end
})

-- Slider (WalkSpeed)
SettingsTab:Slider({
    Name = "WalkSpeed",
    Flag = "WalkSpeedVal",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    end
})

-- Standard Button
SettingsTab:Button({
    Name = "Server Hop",
    Callback = function()
        -- ---put script here
    end
})

-- 4. Initialize Credits (Must be called last)
Window:Init()
