-- ================================================================= --
--                             KING GEN UI USAGE EXAMPLE
--               Complete script using all major UI elements.
-- ================================================================= --

-- 1. LOADING STRING
-- This line downloads the script from the provided URL, compiles it, 
-- and initializes the UI Library API in the 'Library' variable.
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua', true))()

-- --- Window Setup ---

local Window = Library:Window({
    ConfigName = "nameofyourgame.json" -- Configuration file for saving settings
})

-- --- Tab Definitions ---

local MainTab = Window:Tab("Main Features")
local VisualsTab = Window:Tab("Visuals & Settings")

-- === MAIN FEATURES TAB ===

-- 2. TOGGLE (Auto-Executing Loop) 
MainTab:Toggle({
    Name = "Auto-Execute Skill",
    Flag = "SkillActive",
    Default = false,
    Delay = 0.2, -- Time delay between loop iterations
    
    Condition = function()
        -- Condition check before activation (e.g., resource check)
        local playerHasEnergy = true 
        return playerHasEnergy, "Insufficient energy to activate."
    end,
    
    Callback = function(IsActive)
        if IsActive then
            -- Persistent loop logic goes here
            -- Example: print("Skill loop running.")
        else
            -- Cleanup logic when disabled
            -- Example: print("Skill loop stopped.")
        end
    end
})

-- 3. TOGGLE (Instant Kill Feature)
MainTab:Toggle({
    Name = "Instant Kill",
    Flag = "InstantKillActive",
    Default = false,
    
    Callback = function(IsActive)
        local Humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        
        if Humanoid then
            if IsActive then
                -- Setting health/maxhealth to 0 for instant death effect
                Humanoid.MaxHealth = 0
                Humanoid.Health = 0
            else
                -- Reverting to default health values
                Humanoid.MaxHealth = 100
                Humanoid.Health = 100 
            end
        end
    end
})

-- 4. BUTTON (Instant Teleport)
MainTab:Button({
    Name = "Instant Server Hop",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        TeleportService:Teleport(game.PlaceId)
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
        -- SelectedStateTable is used to check which items are selected (true/false)
        if SelectedStateTable["Epic Chests"] then
            -- Logic to render epic chests
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
        print("Spam message updated to: " .. Text)
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
