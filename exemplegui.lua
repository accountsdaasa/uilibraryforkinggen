
--            LOAD.
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua', true))()

-- 1. CREATE THE MAIN WINDOW
local Window = Library:Window({
    -- File name for automatic saving/loading of toggle states, slider values, etc.
    ConfigName = "gamename.json"
})

-- ===================================================
-- 2. ADD CUSTOM CONTROLS TO THE 'SETTINGS' PAGE (Optional)
--    These elements will appear below the default Theme Selector and Keybind field.
--    We use Window:AddToSettings() to achieve this.
-- ===================================================

-- ADD A CUSTOM BUTTON IN SETTINGS
Window:AddToSettings("Button", {
    Name = "Wipe Saved Data (Danger!)",
    Callback = function()
        print("!! WARNING: Deleting all script saved configurations. !!")
        -- Logic to clear saved configuration data
        if isfile and isfile(Library.FolderName .. "/" .. Window.ConfigName) then
            pcall(function() deletefile(Library.FolderName .. "/" .. Window.ConfigName) end)
            -- Reload the default configuration after deletion
            Library:Load() 
        end
    end
})

-- ADD A CUSTOM TOGGLE IN SETTINGS
Window:AddToSettings("Toggle", {
    Name = "Auto Save Enabled",
    Flag = "SettingsAutoSave", -- Unique flag for saving state
    Default = true,
    Delay = 60, -- Tries to save every 60 seconds
    Callback = function(IsActive)
        if IsActive then
            print("Auto Save: Configuration saved automatically.")
            Library:Save()
        else
            print("Auto Save Loop: Stopped.")
        end
    end
})


-- ===================================================
-- 3. CREATE YOUR OWN CUSTOM PAGES (Tabs)
-- ===================================================

local CombatTab = Window:Tab("Combat")
local VisualsTab = Window:Tab("Visuals")
local UtilityTab = Window:Tab("Utility")


-- ===================================================
-- 4. ADD CONTROLS TO YOUR CUSTOM PAGES
-- ===================================================

-- --- COMBAT TAB ---

-- TOGGLE (Looping Functionality)
CombatTab:Toggle({
    Name = "Auto-Heal (Loop)",
    Flag = "AutoHealActive",
    Default = false,
    Delay = 0.2, -- Checks every 0.2 seconds
    Callback = function(IsActive)
        local Humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if IsActive and Humanoid and Humanoid.Health < Humanoid.MaxHealth then
            Humanoid.Health = Humanoid.Health + 5 -- Small regeneration
            print("Auto-Healing...")
        end
    end
})

-- SLIDER (Numerical Value Adjustment)
CombatTab:Slider({
    Name = "Hitbox Size Multiplier",
    Flag = "HitboxScale",
    Min = 1,
    Max = 5,
    Default = 2.5,
    Callback = function(NewValue)
        print("Hitbox scale set to: " .. NewValue)
    end
})

-- DROPDOWN (Single Choice Selection)
CombatTab:Dropdown({
    Name = "Target Priority",
    Flag = "TargetMode",
    List = {"Closest Player", "Lowest Health", "Oldest Player"},
    Default = "Closest Player",
    Callback = function(SelectedValue)
        print("Target priority changed to: " .. SelectedValue)
    end
})


-- --- VISUALS TAB ---

-- MULTI DROPDOWN (Multiple Independent Choices)
VisualsTab:MultiDropdown({
    Name = "ESP Elements",
    Flag = "ESPOptions",
    List = {"Name Tag", "Distance", "Box", "Health Bar"},
    Callback = function(SelectedStateTable)
        if SelectedStateTable["Box"] then
            print("Box ESP is active.")
        end
    end
})

-- CYCLE BUTTON (Cycles through a list of options)
VisualsTab:Cycle({
    Name = "Tracer Line Style",
    Flag = "TracerStyle",
    List = {"Solid", "Dashed", "Dotted", "Rainbow"},
    Default = "Solid",
    Callback = function(NewStyle)
        print("Tracer style set to: " .. NewStyle)
    end
})


-- --- UTILITY TAB ---

-- BUTTON (One-Time Action)
UtilityTab:Button({
    Name = "Teleport To Safe Zone",
    Callback = function()
        local Player = game.Players.LocalPlayer
        -- Example of coordinates (0, 50, 0)
        Player.Character:SetPrimaryPartCFrame(CFrame.new(0, 50, 0)) 
        print("Teleported to 0, 50, 0.")
    end
})

-- TEXTBOX (Free Text/String Input)
UtilityTab:TextBox({
    Name = "Chat Message Spam",
    Flag = "SpamText",
    Default = "Pwned by KingGen!",
    Placeholder = "Enter message to spam...",
    Callback = function(Text)
        print("Spam text saved: " .. Text)
    end
})

-- ===================================================
-- 5. INITIALIZE THE WINDOW (REQUIRED - MUST BE LAST)
-- ===================================================
Window:Init()
