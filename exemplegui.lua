-- ================================================================= --
--                             KING GEN UI USAGE EXAMPLE
--              Complete Example with All Controls + 'Reset Player' Toggle
-- ================================================================= --

-- 1. LIBRARY LOADING (Assumes the fixed KingGen UI script is loaded)
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua', true))()

-- --- Window Setup ---

local Window = Library:Window({
    ConfigName = "kinggen_full_demo.json" -- Configuration file for saving settings
})

-- --- Tab Definitions ---

local MainTab = Window:Tab("Main")
local SettingsTab = Window:Tab("Settings")

-- --- CORE TAB (Essential Features) ---

-- 2. TOGGLE SPECIAL (Reset Player Loop - Kills the player repeatedly)
MainTab:Toggle({
    Name = "Reset Player (Loop)", -- Name of the Toggle
    Flag = "ResetPlayerActive",
    Default = false,
    Delay = 1.0, -- Kills the player every 1.0 second while ON
    
    Condition = function()
        -- Optional: Safety or validation check before turning ON
        return true
    end,
    
    Callback = function(IsActive)
        local LocalPlayer = game.Players.LocalPlayer
        
        if IsActive then
            -- Logic that runs repeatedly while the toggle is ON: Kill the player
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                LocalPlayer.Character.Humanoid.Health = 0
                print("Killing player: Resetting...")
            end
        else
            -- Logic that runs once when the toggle is turned OFF (Cleanup/Stop)
            print("Reset Player Loop stopped.")
        end
    end
})

-- 3. BUTTON (One-time Action)
MainTab:Button({
    Name = "Instant Teleport to Spawn",
    Callback = function()
        print("Teleporting to spawn...")
        local Char = game.Players.LocalPlayer.Character
        if Char and game.Workspace:FindFirstChild("SpawnLocation") then
            -- Note: In a real game, you would need better teleport logic
            Char:SetPrimaryPartCFrame(game.Workspace.SpawnLocation.CFrame)
        end
    end
})

-- 4. SLIDER (Value adjustment)
MainTab:Slider({
    Name = "Jump Power Adjustment",
    Flag = "JumpPowerValue",
    Min = 50,
    Max = 200,
    Default = 50,
    Callback = function(NewValue)
        local Humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if Humanoid then
            Humanoid.JumpPower = NewValue
        end
        print("Jump Power set to: " .. NewValue)
    end
})

---
## ✨ Customization Tab (Settings)

-- 5. DROPDOWN (Single Selection)
SettingsTab:Dropdown({
    Name = "Visual Theme",
    Flag = "UITheme",
    List = {"Dark Mode", "Light Mode", "Accent Red", "Accent Blue"},
    Default = "Dark Mode",
    Callback = function(SelectedValue)
        print("Visual theme updated to: " .. SelectedValue)
    end
})

-- 6. MULTI DROPDOWN (Multiple Selection)
SettingsTab:MultiDropdown({
    Name = "ESP Render Settings",
    Flag = "ESPElements",
    List = {"Players", "NPCs", "Aimbots", "Chests", "Resources"},
    Callback = function(SelectedStateTable)
        -- SelectedStateTable is a dictionary showing which items are ON/OFF
        if SelectedStateTable["Players"] then
            print("Player ESP is active.")
        end
    end
})

-- 7. TEXTBOX (String Input)
SettingsTab:TextBox({
    Name = "Custom Chat Command",
    Flag = "ChatCommand",
    Default = "/e dance",
    Placeholder = "Enter a command or message...",
    Callback = function(Text)
        print("New command saved: " .. Text)
    end
})

-- 8. CYCLE BUTTON (Cycling through a fixed list of options)
SettingsTab:Cycle({
    Name = "Aimbot Keybind",
    Flag = "AimbotKey",
    List = {"LMB", "RMB", "V", "E", "Q"},
    Default = "RMB",
    Callback = function(NewKey)
        print("Aimbot key set to: " .. NewKey)
    end
})

-- --- Initialization ---
Window:Init()
