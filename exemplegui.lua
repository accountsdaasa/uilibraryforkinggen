-- [[ 1. EXECUTION PROTECTION ]]
if _G.KingGenExecuted then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "King Gen",
        Text = "Script already running!",
        Duration = 5
    })
    return
end
_G.KingGenExecuted = true

-- [[ 2. LOAD UI LIBRARY ]]
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))()

-- [[ 3. GLOBAL LOGIC / BACKEND ]]
local logic = {
    main = {
        autoFarm = false,
        autoCollect = false,
        speed = 16,
    },
    settings = {
        targetMob = "Zombie",
        teleportMode = "CFrame",
    }
}

-- [[ LOOP EXAMPLE (Runs the script logic based on 'logic' table) ]]
task.spawn(function()
    local lp = game.Players.LocalPlayer
    
    while task.wait(0.1) do
        -- WalkSpeed Logic
        if lp.Character and lp.Character:FindFirstChild("Humanoid") then
            lp.Character.Humanoid.WalkSpeed = logic.main.speed
        end

        -- Auto Farm Logic
        if logic.main.autoFarm then
            -- --- PUT YOUR CONTINUOUS FARMING SCRIPT HERE ---
            print("Auto Farming active! Target:", logic.settings.targetMob, "using TP mode:", logic.settings.teleportMode)
            task.wait(1)
            -- ---------------------------------------------
        end
    end
end)


-- [[ 4. CREATE WINDOW AND TABS ]]
local Window = Library:CreateWindow({
    -- Le titre est désormais fixé à "King Gen" dans baseui.lua
    ConfigFolder = "KingGen_GenericScript"
})

local MainTab = Window:AddTab("Main")
local PlayerTab = Window:AddTab("Player")
local SettingsTab = Window:AddTab("Settings")


-- [[ 5. ADD UI ELEMENTS ]]

-- TAB 1: Main
MainTab:AddToggle({
    Name = "Auto Farm",
    Flag = "Toggle_Farm",
    Default = false,
    Callback = function(Value)
        logic.main.autoFarm = Value
        -- --- PUT SCRIPT HERE: Initialisation/Désinitialisation de l'Auto Farm ---
        print("Auto Farm set to:", Value)
        -- ---------------------------------------------------------------------
    end
})

-- TAB 2: Player
PlayerTab:AddSlider({
    Name = "WalkSpeed",
    Flag = "Slider_WS",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(Value)
        logic.main.speed = Value
    end
})


-- TAB 3: Settings
SettingsTab:AddDropdown({
    Name = "Select Mob Target",
    Flag = "Drop_Mob",
    List = {"Zombie", "Skeleton", "Golem", "Boss"},
    Multi = false,
    Default = "Zombie",
    Callback = function(Value)
        logic.settings.targetMob = Value
    end
})

SettingsTab:AddButtonDropdown({
    Name = "Teleport Mode",
    Flag = "Cycle_TP",
    List = {"CFrame", "Tween", "Bypass"},
    Default = "CFrame",
    Callback = function(Value)
        logic.settings.teleportMode = Value
    end
})

-- [[ 6. NOTIFICATION ]]
Library:Notify({
    Title = "King Gen",
    Text = "Script Loaded (Template)",
    Duration = 5
})
