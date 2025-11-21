-- ================================================================= --
--                             KING GEN UI USAGE EXAMPLE
--                  Inclut tous les contrôles + Toggle 'Reset Player'
-- ================================================================= --

-- 1. CHARGEMENT DE LA LIBRAIRIE (doit être le script complet et corrigé)
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua', true))()

-- --- Configuration de la Fenêtre ---

local Window = Library:Window({
    ConfigName = "kinggen_full_demo.json" -- Fichier de configuration
})

-- --- Définition des Onglets ---

local MainTab = Window:Tab("Core")
local SettingsTab = Window:Tab("Customization")

-- --- CORE TAB ---

-- 2. TOGGLE SPECIAL (Reset Player Loop)
MainTab:Toggle({
    Name = "Reset Player (Loop)", -- Nom du Toggle
    Flag = "ResetPlayerActive",
    Default = false,
    Delay = 1.0, -- Tuer le joueur toutes les 1.0 secondes
    
    Condition = function()
        -- Condition de sécurité/vérification (optionnel)
        return true
    end,
    
    Callback = function(IsActive)
        local LocalPlayer = game.Players.LocalPlayer
        
        if IsActive then
            -- Logique exécutée en boucle : Tuer le joueur
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
                LocalPlayer.Character.Humanoid.Health = 0
                print("Killing player: Resetting...")
            end
        else
            -- Logique exécutée une fois lorsque le toggle est désactivé (Nettoyage)
            print("Reset Player Loop stopped.")
        end
    end
})

-- 3. BUTTON (Action Unique)
MainTab:Button({
    Name = "Instant Teleport to Spawn",
    Callback = function()
        print("Teleporting to spawn...")
        local Char = game.Players.LocalPlayer.Character
        if Char and game.Workspace:FindFirstChild("SpawnLocation") then
            Char:SetPrimaryPartCFrame(game.Workspace.SpawnLocation.CFrame)
        end
    end
})

-- 4. SLIDER (Ajustement de Valeur)
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

-- --- CUSTOMIZATION TAB ---

-- 5. DROPDOWN (Sélection Simple)
SettingsTab:Dropdown({
    Name = "Visual Theme",
    Flag = "UITheme",
    List = {"Dark Mode", "Light Mode", "Accent Red", "Accent Blue"},
    Default = "Dark Mode",
    Callback = function(SelectedValue)
        print("Visual theme updated to: " .. SelectedValue)
    end
})

-- 6. MULTI DROPDOWN (Sélection Multiple)
SettingsTab:MultiDropdown({
    Name = "ESP Render Settings",
    Flag = "ESPElements",
    List = {"Players", "NPCs", "Aimbots", "Chests", "Resources"},
    Callback = function(SelectedStateTable)
        -- SelectedStateTable: {["Players"] = true, ["Chests"] = false, ...}
        if SelectedStateTable["Players"] then
            print("Player ESP is active.")
        end
    end
})

-- 7. TEXTBOX (Saisie de Texte)
SettingsTab:TextBox({
    Name = "Custom Chat Command",
    Flag = "ChatCommand",
    Default = "/e dance",
    Placeholder = "Enter a command or message...",
    Callback = function(Text)
        print("New command saved: " .. Text)
    end
})

-- 8. CYCLE BUTTON (Alternance dans une Liste)
SettingsTab:Cycle({
    Name = "Aimbot Keybind",
    Flag = "AimbotKey",
    List = {"LMB", "RMB", "V", "E", "Q"},
    Default = "RMB",
    Callback = function(NewKey)
        print("Aimbot key set to: " .. NewKey)
    end
})

-- --- Initialisation ---
Window:Init()
