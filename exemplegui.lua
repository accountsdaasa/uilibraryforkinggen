-- ================================================================= --
-- STEP 1: LOAD THE KINGGEN UI LIBRARY
-- This line fetches the script from the URL and executes it.
-- It assumes the loaded script makes the 'KingGen' library object
-- available either globally or returns it (often via 'getgenv()').
-- ================================================================= --
local KingGen = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))() or getgenv().KingGen

-- Check if the library loaded correctly before proceeding
if not KingGen or type(KingGen) ~= "table" then
    error("Failed to load or access the KingGen UI Library.")
end

-- ================================================================= --
-- STEP 2: USE THE LOADED LIBRARY TO CREATE THE UI
-- ================================================================= --

-- 1. Create the main window
local Window = KingGen:Window({
    Name = "My Custom Script UI",    -- Window Title
    ConfigName = "CustomScriptConfig.json" -- Name for auto-saving
})

-- 2. Add a tab
local MainTab = Window:Tab("Key Features")

-- 3. Add a simple Toggle element
MainTab:Toggle({
    Name = "Activate Speed Boost",
    Flag = "SpeedBoostActive",
    Default = false, -- Speed boost is off by default
    Callback = function(state)
        if state then
            print("Speed Boost ACTIVATED")
            -- Example action: game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        else
            print("Speed Boost DEACTIVATED")
            -- Example action: game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end
})

-- 4. Add a Slider
MainTab:Slider({
    Name = "Jump Power",
    Flag = "JumpPowerValue",
    Min = 50,
    Max = 200,
    Default = 50,
    Callback = function(value)
        print("Jump Power set to: " .. value)
        -- Example action: game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
})

-- 5. Initialize the window to display it
Window:Init()

print("KingGen UI successfully loaded and displayed with features.")
