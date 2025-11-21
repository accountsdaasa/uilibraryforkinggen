-- ================================================================= --
--                             KING GEN UI USAGE EXAMPLE
--               Illustrates all major control types (V8 API)
-- ================================================================= --

-- 1. LOADING STRING
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua', true))()

-- --- Window Setup ---

local Window = Library:Window({
    ConfigName = "kinggen_example.json" -- Configuration file for saving settings
})

-- --- Tab Definitions ---

local MainTab = Window:Tab("Core Functions")
local SettingsTab = Window:Tab("Visuals & Input")

-- --- CORE FUNCTIONS TAB ---

-- 2. TOGGLE (Auto-Executing Loop / Persistent Feature)
MainTab:Toggle({
    Name = "Auto Farm Enabled",
    Flag = "AutoFarmActive",
    Default = false,
    Delay = 0.5, -- Loop execution rate (0.5 seconds)
    
    Condition = function()
        -- Optional: Check before activating
        local playerIsReady = true 
        return playerIsReady, "Player is not yet ready for auto-farming."
    end,
    
    Callback = function(IsActive)
        if IsActive then
            -- Logic that runs repeatedly while the toggle is ON
            print("Auto-Farm loop: Executing attack command...")
        else
            -- Logic that runs once when the toggle is turned OFF (Cleanup)
            print("Auto-Farm stopped. Cleaning up threads.")
        end
    end
})

-- 3. BUTTON (One-time Action)
MainTab:Button({
    Name = "Teleport to Safezone",
    Callback = function()
        print("Attempting to teleport to Safezone...")
        -- Example implementation: game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(...)
    end
})

-- 4. SLIDER (Value adjustment)
MainTab:Slider({
    Name = "Player Speed Multiplier",
    Flag = "WalkspeedValue",
    Min = 16,
    Max = 100,
    Default = 20,
    Callback = function(NewValue)
        local Humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if Humanoid then
            Humanoid.WalkSpeed = NewValue
        end
        print("Speed set to: " .. NewValue)
    end
})

-- --- VISUALS & INPUT TAB ---

-- 5. DROPDOWN (Single Selection)
SettingsTab:Dropdown({
    Name = "Aim Target Priority",
    Flag = "AimPriority",
    List = {"Nearest Enemy", "Lowest Health", "Highest Level"},
    Default = "Nearest Enemy",
    Callback = function(SelectedValue)
        print("Aim priority updated to: " .. SelectedValue)
    end
})

-- 6. MULTI DROPDOWN (Multiple Selection)
SettingsTab:MultiDropdown({
    Name = "Loot ESP Filters",
    Flag = "ESPFiltres",
    List = {"Rare Materials", "Epic Weapons", "Quest Items", "Currency Bags"},
    Callback = function(SelectedStateTable)
        -- SelectedStateTable is a dictionary: {["Rare Materials"] = true, ["Epic Weapons"] = false, ...}
        if SelectedStateTable["Epic Weapons"] then
            print("Rendering Epic Weapons on screen.")
        end
    end
})

-- 7. TEXTBOX (String Input)
SettingsTab:TextBox({
    Name = "Custom Server Message",
    Flag = "CustomMessage",
    Default = "/say KingGen User here!",
    Placeholder = "Enter chat message...",
    Callback = function(Text)
        print("Custom message saved: " .. Text)
    end
})

-- 8. CYCLE BUTTON (Cycling through a fixed list of options)
SettingsTab:Cycle({
    Name = "ESP Line Style",
    Flag = "ESPStyle",
    List = {"Box", "Corner", "Tracer"},
    Default = "Box",
    Callback = function(NewMode)
        print("ESP style set to: " .. NewMode)
    end
})

-- --- Initialization ---
Window:Init()
