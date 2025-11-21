================================================================
            KINGGEN UI LIBRARY - DOCUMENTATION
================================================================

[ INTRODUCTION ]
KingGen UI Library is a universal, modular interface system for Roblox scripts.
It features auto-saving configurations, a sleek dark theme, and essential
elements like Toggles, Sliders, and Dropdowns.

----------------------------------------------------------------
[ 1. GETTING STARTED ]
----------------------------------------------------------------

To use the library, add this line at the very top of your script:

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))()

----------------------------------------------------------------
[ 2. CREATING A WINDOW ]
----------------------------------------------------------------

Create the main GUI window. 'ConfigFolder' is where settings are saved.

local Window = Library:CreateWindow({
    Title = "King Gen - Script Name",
    ConfigFolder = "KingGen_Config"
})

----------------------------------------------------------------
[ 3. CREATING TABS ]
----------------------------------------------------------------

Tabs organize your features (e.g., Main, Settings, Misc).
Note: A 'Credits' tab is automatically added at the end.

local MainTab = Window:AddTab("Main")
local SettingsTab = Window:AddTab("Settings")

----------------------------------------------------------------
[ 4. UI ELEMENTS ]
----------------------------------------------------------------

[ TOGGLE ]
Creates an ON/OFF switch. Saves automatically.
- Flag: Unique ID for saving (Must be unique per button).

MainTab:AddToggle({
    Name = "Auto Farm",
    Flag = "Farm_Toggle",
    Default = false,
    Callback = function(Value)
        print("Auto Farm is now:", Value)
    end
})

[ SLIDER ]
Creates a slider to select a number.
- Min/Max: The range of the slider.

MainTab:AddSlider({
    Name = "WalkSpeed",
    Flag = "Speed_Slider",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})

[ BUTTON ]
Creates a clickable button for one-time actions.

SettingsTab:AddButton({
    Name = "Server Hop",
    Callback = function()
        -- Insert Server Hop Code Here
        print("Server Hopping...")
    end
})

[ DROPDOWN (SINGLE) ]
Select one option from a list. Includes a search bar.

MainTab:AddDropdown({
    Name = "Select Weapon",
    Flag = "Weapon_Drop",
    List = {"Katana", "Bow", "Magic"},
    Multi = false,
    Default = "Katana",
    Callback = function(Value)
        print("Selected:", Value)
    end
})

[ DROPDOWN (MULTI) ]
Select multiple options. Returns a table of selected items.

MainTab:AddDropdown({
    Name = "Select Targets",
    Flag = "Target_Drop",
    List = {"Boss", "NPC", "Player"},
    Multi = true,
    Default = {["Boss"] = true},
    Callback = function(SelectedTable)
        for name, state in pairs(SelectedTable) do
            if state then
                print(name .. " is active")
            end
        end
    end
})

[ CYCLE BUTTON ]
A button that cycles through options when clicked.

SettingsTab:AddButtonDropdown({
    Name = "Difficulty",
    Flag = "Diff_Cycle",
    List = {"Easy", "Normal", "Hard"},
    Default = "Normal",
    Callback = function(Value)
        print("Difficulty:", Value)
    end
})

----------------------------------------------------------------
[ 5. NOTIFICATIONS ]
----------------------------------------------------------------

Send a notification to the user.

Library:Notify({
    Title = "Success",
    Text = "Script Loaded Successfully!",
    Duration = 5
})

Library:Notify({Title="King Gen", Text="Ready!", Duration=5})
