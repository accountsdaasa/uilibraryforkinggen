-- 1. LOADING STRING
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua', true))()

-- --- Window Setup ---

local Window = Library:Window({
    ConfigName = "nameofyourgame.json" -- Configuration file for saving settings
})

-- --- Tab Definitions ---

local MainTab = Window:Tab("Main")
local VisualsTab = Window:Tab("Settings")

-- === MAIN FEATURES TAB ===

-- 2. TOGGLE (Auto-Executing Loop) 
MainTab:Toggle({
    Name = "Auto-Execute Skill",
    Flag = "SkillActive",
    Default = false,
    Delay = 0.2,
    
    Condition = function()
        ---putscripthere
        return true, "Insufficient energy to activate."
    end,
    
    Callback = function(IsActive)
        ---putscripthere
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
        ---putscripthere
    end
})

-- === VISUALS & SETTINGS TAB ===

-- 5. SLIDER (Movement Speed)
VisualsTab:Slider({
    Name = "Movement Speed Multiplier (WalkSpeed)",
    Flag = "WalkSpeedMultiplier",
    Default = 16,
    Min = 16,
    Max = 100,
    
    Callback = function(NewSpeed)
        ---putscripthere
    end
})

-- 6. DROPDOWN (Single Option Selection)
VisualsTab:Dropdown({
    Name = "Aimbot Target Part",
    Flag = "AimbotPart",
    List = {"Head", "Torso", "Left Foot"},
    Default = "Head",
    Callback = function(SelectedValue)
        ---putscripthere
    end
})

-- 7. MULTI DROPDOWN (Multiple Selections)
VisualsTab:MultiDropdown({
    Name = "Loot ESP Types",
    Flag = "ESPLootFilter",
    List = {"Epic Chests", "Rare Resources", "NPC Drops", "Currency Bags"},
    Callback = function(SelectedStateTable)
        ---putscripthere
    end
})

-- 8. TEXTBOX (String Input)
VisualsTab:TextBox({
    Name = "Custom Chat Message",
    Flag = "CustomMessage",
    Default = "Hello World!",
    Placeholder = "Enter message to spam...",
    Callback = function(Text)
        ---putscripthere
    end
})

-- 9. CYCLE BUTTON (Options Cycling)
VisualsTab:Cycle({
    Name = "Anti-AFK Mode",
    Flag = "AntiAFK",
    List = {"Jump", "Walk", "None"},
    Default = "Jump",
    Callback = function(NewMode)
        ---putscripthere
    end
})

-- --- Initialization ---
Window:Init()
