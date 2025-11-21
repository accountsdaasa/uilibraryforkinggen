

-- 1. LOAD THE LIBRARY
-- IMPORTANT: Replace the URL below if your base UI script is hosted elsewhere.
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua', true))()

-- --- 2. WINDOW CREATION (The Main UI Container) ---
local Window = Library:Window({
    -- This sets the filename for saving and loading settings (e.g., toggle state, slider value).
    ConfigName = "my_awesome_script_config.json" 
})

-- --- 3. CREATE TABS (Pages for organizing controls) ---
-- Tabs are automatically placed in order, with 'Settings' and 'Credits' at the end.
local GameplayTab = Window:Tab("Gameplay Hacks")
local VisualsTab = Window:Tab("Visual Settings")

-- ===================================================
--             GAMEPLAY HACKS TAB CONTROLS
-- ===================================================

-- 4. TOGGLE CONTROL (Our Special 'Reset Player' Loop)
-- Toggles run a function repeatedly (with 'Delay') when ON, and stop when OFF.
GameplayTab:Toggle({
    Name = "Reset Player (Loop)", -- Display name on the UI
    Flag = "ResetPlayerActive",  -- Unique saved setting name (Flag)
    Default = false,             -- Starts in the OFF state
    Delay = 0.5,                 -- How often the 'Callback' runs (every 0.5 seconds)
    
    Callback = function(IsActive)
        local LocalPlayer = game.Players.LocalPlayer
        
        if IsActive then
            -- LOGIC WHEN TOGGLE IS ON: Kill the player repeatedly
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                LocalPlayer.Character.Humanoid.Health = 0
                print("Killing player in loop: " .. tick())
            end
        else
            -- LOGIC WHEN TOGGLE IS OFF: Runs only once to stop the loop
            print("Reset Player Loop has been stopped.")
        end
    end
})

-- 5. SLIDER CONTROL (Numerical Value Adjustment)
GameplayTab:Slider({
    Name = "Walkspeed Multiplier",
    Flag = "SpeedValue",
    Min = 16,  -- Minimum value the slider can reach
    Max = 100, -- Maximum value
    Default = 25,
    Callback = function(NewValue)
        local Humanoid = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if Humanoid then
            Humanoid.WalkSpeed = NewValue
        end
        print("Walkspeed set to: " .. NewValue)
    end
})

-- 6. BUTTON CONTROL (One-Time Action)
GameplayTab:Button({
    Name = "Give Infinite Cash",
    Callback = function()
        -- Note: This is an example. Real exploit logic would go here.
        print("Executing: Giving infinite money! (If the script supports it)")
    end
})


-- ===================================================
--               VISUAL SETTINGS TAB CONTROLS
-- ===================================================

-- 7. DROPDOWN (Single Choice Selection)
VisualsTab:Dropdown({
    Name = "Chams Color",
    Flag = "ChamsColor",
    List = {"Red", "Green", "Blue", "Gold"}, -- List of options to choose from
    Default = "Red",
    Callback = function(SelectedValue)
        print("Chams color selected: " .. SelectedValue)
    end
})

-- 8. MULTI DROPDOWN (Multiple Independent Choices)
VisualsTab:MultiDropdown({
    Name = "ESP Elements to Show",
    Flag = "ESPElements",
    List = {"Players", "Weapons", "Health Bars", "Loot Crates"},
    Callback = function(SelectedStateTable)
        -- SelectedStateTable is a table like: {["Players"] = true, ["Weapons"] = false, ...}
        if SelectedStateTable["Loot Crates"] then
            print("Loot Crates ESP is checked.")
        end
    end
})

-- 9. TEXTBOX (Text or String Input)
VisualsTab:TextBox({
    Name = "Set Custom Title",
    Flag = "CustomWindowTitle",
    Default = "My Hack",
    Placeholder = "Enter new window title...",
    Callback = function(Text)
        print("New title saved: " .. Text)
        -- In a real UI, you might update the TitleLabel here
    end
})

-- 10. CYCLE BUTTON (Simple Toggling through a list)
VisualsTab:Cycle({
    Name = "FOV Circle Shape",
    Flag = "FovShape",
    List = {"Circle", "Square", "Diamond"},
    Default = "Circle",
    Callback = function(NewShape)
        print("FOV shape changed to: " .. NewShape)
    end
})


-- --- 4. INITIALIZE THE WINDOW ---
-- This must be called at the very end to draw the UI on the screen.
Window:Init()
