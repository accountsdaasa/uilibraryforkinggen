

-- 1. LOADING STRING
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))()

if not Library then
    return
end

-- 2. WINDOW SETUP
local Window = Library:Window({
    ConfigName = "putthenameofthegamehere.json"
})

-- 3. TABS
local MainTab = Window:Tab("Main")
local VisualsTab = Window:Tab("Visuals")
local SettingsTab = Window:Tab("Settings")

-- ================================================================= --
-- MAIN TAB
-- ================================================================= --

-- TOGGLE: Auto Farm (Loop)
MainTab:Toggle({
    Name = "Auto Farm (Loop)",
    Flag = "AutoFarm",
    Default = false,
    Delay = 0.2,
    
    Condition = function()
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            if player.Character.Humanoid.Health <= 0 then
                return false, "Player is dead"
            end
        end
        return true
    end,
    
    Callback = function(Value)
        if Value then
            -- Add your auto-farm code here
        else
            -- Code to stop farming (optional)
        end
    end
})

-- TOGGLE: Instant Kill
MainTab:Toggle({
    Name = "Instant Kill",
    Flag = "InstaKill",
    Default = false,
    Callback = function(Value)
        -- Add instant kill logic here
    end
})

-- BUTTON: Server Hop
MainTab:Button({
    Name = "Server Hop",
    Callback = function()
        -- Add server hop logic here
    end
})

-- ================================================================= --
-- VISUALS TAB
-- ================================================================= --

-- SLIDER: WalkSpeed
VisualsTab:Slider({
    Name = "Walk Speed",
    Flag = "WalkSpeed",
    Default = 16,
    Min = 16,
    Max = 250,
    Callback = function(Value)
        pcall(function()
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end)
    end
})

-- DROPDOWN: Scroll Test
local Weapons = {
    "Starter Sword", "Iron Blade", "Steel Katana", "Golden Saber",
    "Diamond Claymore", "Obsidian Dagger", "Emerald Spear", "Ruby Scythe",
    "Void Staff", "Solar Bow", "Lunar Shield", "Galaxy Hammer",
    "Infinity Gauntlet", "Admin Gun", "Developer Tool"
}

VisualsTab:Dropdown({
    Name = "Select Weapon",
    Flag = "WeaponSelector",
    List = Weapons,
    Default = "Starter Sword",
    Callback = function(Selected)
        -- Add weapon equip logic here
    end
})

-- MULTI-DROPDOWN: ESP Filters
local EspItems = {
    "Players", "Chests", "Enemies", "Allies",
    "Rare Items", "Quest Givers", "Vehicles", "Traps",
    "Safe Zones", "Bosses", "Legendary Loot"
}

VisualsTab:MultiDropdown({
    Name = "ESP Filter",
    Flag = "EspFilter",
    List = EspItems,
    Callback = function(SelectedTable)
        -- Add ESP filter logic here
    end
})

-- ================================================================= --
-- SETTINGS TAB
-- ================================================================= --

-- TEXTBOX: Chat Spam
SettingsTab:TextBox({
    Name = "Chat Spam Message",
    Flag = "SpamText",
    Default = "King Gen OP!",
    Placeholder = "Type message...",
    Callback = function(Text)
        -- Add chat spam logic here
    end
})

-- CYCLE: Anti-AFK Mode
SettingsTab:Cycle({
    Name = "Anti-AFK Action",
    Flag = "AfkAction",
    List = {"Jump", "Walk", "Spin", "Emote"},
    Default = "Jump",
    Callback = function(Mode)
        -- Add Anti-AFK logic here
    end
})

-- 4. INITIALIZATION
Window:Init()
