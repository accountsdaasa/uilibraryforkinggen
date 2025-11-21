-- ================================================================= --
--                             KING GEN UI USAGE EXAMPLE
--               Includes the loading string for the provided URL.
-- ================================================================= --

-- 1. LOADING STRING
-- This line downloads the script from GitHub, compiles it, and stores the 
-- UI Library API in the 'Library' variable.
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua', true))()

-- --- Window Setup ---

local Window = Library:Window({
    ConfigName = "KingGen_Master_Config.json" -- Configuration file for saving settings
})

-- --- Tab Definitions ---

local MainTab = Window:Tab("Main Features")
local VisualsTab = Window:Tab("Visuals & Settings")

-- === MAIN FEATURES TAB ===

-- 2. TOGGLE (The Persistent Loop Fix)
MainTab:Toggle({
    Name = "Auto-Execute Skill",
    Flag = "SkillActive",
    Default = false,
    Delay = 0.2, 
    
    Condition = function()
        -- Must pass a condition (e.g., check for energy/mana)
        local playerHasEnergy = true -- Assume check here
        return playerHasEnergy, "Insufficient energy to activate."
    end,
    
    Callback = function(IsActive)
        if IsActive then
            -- Logic that runs repeatedly (the core exploit function)
            -- print("Skill activated. Loop running.")
        else
            -- Logic for cleanup (runs once when disabled)
            -- print("Skill deactivated. Loop stopped.")
        end
    end
})

-- 3. BUTTON (Instant Teleport)
MainTab:Button({
    Name = "Instant Server Hop",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        TeleportService:Teleport(game.PlaceId)
    end
})

-- 4. SLIDER (Health Adjustment)
MainTab:Slider({
    Name = "Set Player Health",
    Flag = "HealthValue",
    Min = 0,
    Max = 1000,
    Default = 100,
    Callback = function(Value)
        local Humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if Humanoid then
            Humanoid.Health = math.floor(Value)
        end
    end
})

-- === VISUALS & SETTINGS TAB ===

-- 5. DROPDOWN (Single Option Selection)
VisualsTab:Dropdown({
    Name = "Aimbot Target Part",
    Flag = "AimbotPart",
    List = {"Head", "Torso", "Left Foot"},
    Default = "Head",
    Callback = function(SelectedValue)
        print("Aimbot now targeting: " .. SelectedValue)
    end
})

-- 6. MULTI DROPDOWN (Multiple Selections)
VisualsTab:MultiDropdown({
    Name = "Loot ESP Types",
    Flag = "ESPLootFilter",
    List = {"Epic Chests", "Rare Resources", "NPC Drops", "Currency Bags"},
    Callback = function(SelectedStateTable)
        if SelectedStateTable["Epic Chests"] then
            print("Rendering Epic Chests.")
        end
    end
})

-- 7. TEXTBOX (String Input)
VisualsTab:TextBox({
    Name = "Custom Chat Message",
    Flag = "CustomMessage",
    Default = "Hello World!",
    Placeholder = "Enter message to spam...",
    Callback = function(Text)
        print("Spam message updated.")
    end
})

-- 8. CYCLE BUTTON (Options Cycling)
VisualsTab:Cycle({
    Name = "Anti-AFK Mode",
    Flag = "AntiAFK",
    List = {"Jump", "Walk", "None"},
    Default = "Jump",
    Callback = function(NewMode)
        print("Anti-AFK mode set to: " .. NewMode)
    end
})

-- --- Initialization ---
Window:Init()
