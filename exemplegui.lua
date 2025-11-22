
-- 1. LOAD LIBRARY
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))() 

if not Library then return end

-- 2. WINDOW SETUP
local Window = Library:Window({
    ConfigName = "putgamenamehere.json" -- The name of the file where settings are saved
})

-- 3. CREATE TABS
local MainTab = Window:Tab("Main")
local VisualsTab = Window:Tab("Visuals")
local MiscTab = Window:Tab("Misc")

-- ================================================================= --
-- TAB 1: MAIN (Farming & Combat)
-- ================================================================= --

-- TOGGLE: Auto Farm (With Loop & Condition)
MainTab:Toggle({
    Name = "Auto Farm Level",
    Flag = "AutoFarm",
    Default = false,
    Delay = 0.5, -- Runs every 0.5 seconds
    
    -- Optional: Condition to check before running (e.g., is player alive?)
    Condition = function()
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            if player.Character.Humanoid.Health > 0 then
                return true
            end
        end
        return false, "Player is dead!" -- Returns false and a notification reason
    end,
    
    Callback = function(Value)
        if Value then
            print("Farming: Punching enemy...")
            -- Add your farming logic here
        else
            print("Farming stopped.")
        end
    end
})

-- DROPDOWN: Weapon Selector (WITH SEARCH BAR)
-- Set 'Search = true' to enable the search bar
local WeaponList = {
    "Starter Sword", "Iron Blade", "Steel Katana", "Golden Saber",
    "Diamond Claymore", "Obsidian Dagger", "Emerald Spear", "Ruby Scythe",
    "Void Staff", "Solar Bow", "Lunar Shield", "Galaxy Hammer",
    "Infinity Gauntlet", "Admin Gun", "Developer Tool"
}

MainTab:Dropdown({
    Name = "Select Weapon (Searchable)",
    Flag = "WeaponSelect",
    List = WeaponList,
    Default = "Starter Sword",
    Search = true, -- <--- THIS ENABLES THE SEARCH BAR
    Callback = function(Selected)
        print("Equipping weapon:", Selected)
    end
})

-- DROPDOWN: Teleport (Standard, NO Search)
MainTab:Dropdown({
    Name = "Teleport Location",
    Flag = "TpLoc",
    List = {"Spawn", "Forest", "Desert", "Ice Mountain", "Volcano"},
    Default = "Spawn",
    Search = false, -- No search bar here
    Callback = function(Selected)
        print("Teleporting to:", Selected)
    end
})

-- BUTTON: Kill Aura
MainTab:Button({
    Name = "Kill All Enemies",
    Callback = function()
        print("Button Clicked: Killing all enemies...")
    end
})

-- ================================================================= --
-- TAB 2: VISUALS (ESP & Rendering)
-- ================================================================= --

-- SLIDER: Field of View (FOV)
VisualsTab:Slider({
    Name = "Field of View",
    Flag = "FovSlider",
    Min = 70,
    Max = 120,
    Default = 70,
    Callback = function(Value)
        game.Workspace.CurrentCamera.FieldOfView = Value
    end
})

-- MULTI-DROPDOWN: ESP Filters
VisualsTab:MultiDropdown({
    Name = "ESP Entities",
    Flag = "EspFilter",
    List = {"Players", "NPCs", "Chests", "Dropped Items", "Traps"},
    Callback = function(SelectedTable)
        -- SelectedTable returns: { ["Players"] = true, ["NPCs"] = false, ... }
        for entity, enabled in pairs(SelectedTable) do
            if enabled then
                print("ESP Enabled for:", entity)
            end
        end
    end
})

-- ================================================================= --
-- TAB 3: MISC (Settings)
-- ================================================================= --

-- TEXTBOX: WalkSpeed Input
MiscTab:TextBox({
    Name = "Custom WalkSpeed",
    Flag = "SpeedBox",
    Default = "16",
    Placeholder = "Enter speed...",
    Callback = function(Text)
        if tonumber(Text) then
            local player = game.Players.LocalPlayer
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.WalkSpeed = tonumber(Text)
            end
        end
    end
})

-- CYCLE: Day/Night Cycle
MiscTab:Cycle({
    Name = "Time of Day",
    Flag = "TimeCycle",
    List = {"Day", "Sunset", "Night", "Sunrise"},
    Default = "Day",
    Callback = function(Selected)
        print("Changing time to:", Selected)
        if Selected == "Day" then
            game.Lighting.ClockTime = 14
        elseif Selected == "Night" then
            game.Lighting.ClockTime = 0
        end
    end
})

-- 4. INITIALIZE WINDOW
Window:Init()
