-- Charger la Library (Mets ton lien RAW ici)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua"))()

-- Création de la Fenêtre avec nom de fichier de sauvegarde spécifique
local Window = Library:Window({
    ConfigName = "weaklegacy.json" -- Changement du nom du fichier de sauvegarde ici
    -- Note: Le Titre visuel sera toujours "King Gen"
})

if not Window then return end -- Arrête si déjà lancé

-- Création des Onglets
local MainTab = Window:Tab("Main")
local MiscTab = Window:Tab("Misc")
local RollTab = Window:Tab("Roll")
local MissionsTab = Window:Tab("Missions")
local SettingsTab = Window:Tab("Settings")

-- === Onglet Main (Comme sur l'image) ===
MainTab:Toggle({
    Name = "Auto Quest",
    Flag = "AutoQuest",
    Default = false,
    Callback = function(value)
        -- ---put script here (Auto Quest Logic)
        print("Auto Quest is:", value)
    end
})

MainTab:Toggle({
    Name = "Auto Mob",
    Flag = "AutoMob",
    Default = false,
    Callback = function(value)
        -- ---put script here (Auto Mob Logic)
    end
})

MainTab:Toggle({
    Name = "Auto Raid",
    Flag = "AutoRaid",
    Default = true, -- ON par défaut comme sur l'image pour tester
    Callback = function(value)
        -- ---put script here (Auto Raid Logic)
    end
})

MainTab:Toggle({
    Name = "Auto Boss",
    Flag = "AutoBoss",
    Default = false,
    Callback = function(value)
        -- ---put script here (Auto Boss Logic)
    end
})

MainTab:Toggle({
    Name = "Both Mode",
    Flag = "BothMode",
    Default = false,
    Callback = function(value)
        -- ---put script here (Both Mode Logic)
    end
})

-- === Exemples d'autres éléments ===

-- Dropdown Button (Cycle)
SettingsTab:Cycle({
    Name = "Choose Raid",
    Flag = "RaidSelect",
    List = {"Tanjiro Raid", "Mugen Train", "Dungeon"},
    Default = "Tanjiro Raid",
    Callback = function(value)
        -- ---put script here
        print("Raid Selected:", value)
    end
})

-- Dropdown Normal
SettingsTab:Dropdown({
    Name = "Weapon Select",
    Flag = "WeaponSel",
    List = {"Katana", "Scythe", "Dual Blades"},
    Callback = function(val)
        -- ---put script here
    end
})

-- Multi Dropdown
SettingsTab:MultiDropdown({
    Name = "Select Bosses",
    Flag = "BossSelect",
    List = {"Akaza", "Rengoku", "Tanjiro"},
    Callback = function(selected)
        -- ---put script here
        for boss, active in pairs(selected) do
            if active then print(boss .. " active") end
        end
    end
})

-- Slider
SettingsTab:Slider({
    Name = "WalkSpeed",
    Flag = "WS",
    Min = 16,
    Max = 200,
    Default = 16,
    Callback = function(val)
        -- ---put script here
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
        end
    end
})

-- Bouton Simple
SettingsTab:Button({
    Name = "Server Hop",
    Callback = function()
        -- ---put script here
    end
})

-- Initialiser les Crédits à la fin (Obligatoire)
Window:Init()
