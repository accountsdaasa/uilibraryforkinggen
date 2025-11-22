

-- 1. Load the Library
local Library = loadstring(readfile("library.lua"))()

-- 2. Create the Window (Loads config automatically)
local Window = Library:Window({
    ConfigName = "EnglishConfig.json" -- Settings will be saved here
})

-- 3. Create Tabs
local MainTab = Window:Tab("Auto Farm")
local CombatTab = Window:Tab("Combat")
local MiscTab = Window:Tab("Misc")

-- ================================================================= --
-- TAB 1: MAIN (Testing Auto-Execute Loop)
-- ================================================================= --

-- TOGGLE: Auto Farm
-- logic: If you leave this ON and execute the script again, the loop restarts automatically.
MainTab:Toggle({
    Name = "Auto Farm Level",
    Flag = "AutoFarmFlag", -- Unique ID for saving
    Default = false,
    Delay = 1, -- How often the loop runs (in seconds)
    Callback = function(enabled)
        if enabled then
            -- This code runs repeatedly while ON
            print("[Loop] Farming mobs... (+XP)")
            
            -- Example: game.ReplicatedStorage.Attack:FireServer()
        else
            -- This runs once when turned OFF
            print("[Loop] Farming stopped.")
        end
    end
})

-- TOGGLE: Auto Collect
MainTab:Toggle({
    Name = "Auto Collect Drops",
    Flag = "AutoCollectFlag",
    Default = true,
    Delay = 0.5,
    Callback = function(enabled)
        if enabled then
            print("[Loop] Collecting items...")
        end
    end
})

MainTab:Button({
    Name = "Redeem Daily Codes",
    Callback = function()
        print("Codes redeemed!")
    end
})

-- ================================================================= --
-- TAB 2: COMBAT (Testing Scrollable Dropdowns)
-- ================================================================= --

-- GENERATE A LONG LIST TO TEST SCROLLING
local WeaponList = {}
for i = 1, 50 do
    table.insert(WeaponList, "Epic Sword Level " .. i)
end

-- DROPDOWN (SINGLE): Scrollable
-- Open this to see the scrollbar appear because the list is long.
CombatTab:Dropdown({
    Name = "Select Weapon (Scroll Test)",
    Flag = "WeaponSelector",
    List = WeaponList, -- List of 50 items
    Default = "Epic Sword Level 1",
    Multi = false,
    Callback = function(selectedItem)
        print("Equipped: " .. selectedItem)
    end
})

-- SLIDER: WalkSpeed
CombatTab:Slider({
    Name = "WalkSpeed",
    Flag = "WalkSpeedVal",
    Min = 16,
    Max = 250,
    Default = 16,
    Callback = function(value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
        end
    end
})

-- ================================================================= --
-- TAB 3: MISC (Multi-Dropdown & Inputs)
-- ================================================================= --

-- MULTI DROPDOWN: ESP Settings
-- Select multiple options. The scrollbar works here too if the list is long.
CombatTab:MultiDropdown({
    Name = "ESP Configuration",
    Flag = "ESP_Settings",
    List = {"Players", "Chests", "Ores", "Enemies", "NPCs", "Mythical Items", "Bosses"},
    Callback = function(selectedList)
        -- selectedList looks like: { ["Players"] = true, ["Chests"] = false }
        for name, state in pairs(selectedList) do
            if state then
                print("ESP Enabled for: " .. name)
            end
        end
    end
})

-- CYCLE BUTTON
MiscTab:Cycle({
    Name = "Lighting Mode",
    Flag = "LightingMode",
    List = {"Day", "Night", "Sunset", "Void"},
    Default = "Day",
    Callback = function(mode)
        print("Lighting changed to: " .. mode)
        local L = game:GetService("Lighting")
        if mode == "Day" then L.ClockTime = 14
        elseif mode == "Night" then L.ClockTime = 0
        elseif mode == "Sunset" then L.ClockTime = 18
        elseif mode == "Void" then L.ClockTime = 0; L.Brightness = 0
        end
    end
})

-- TEXTBOX
MiscTab:TextBox({
    Name = "Webhook URL",
    Flag = "WebhookLink",
    Default = "",
    Placeholder = "Paste your link here...",
    Callback = function(text)
        print("Webhook Saved: " .. text)
    end
})

-- BUTTON: Unload
MiscTab:Button({
    Name = "Unload UI",
    Callback = function()
        game:GetService("CoreGui").KingGenUI:Destroy()
    end
})

-- Initialize the Credits Tab
Window:Init()
