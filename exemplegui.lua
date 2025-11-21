local Library = loadstring(game:HttpGet("[https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua](https://raw.githubusercontent.com/accountsdaasa/uilibraryforkinggen/refs/heads/main/baseui.lua)"))()

local Window = Library:CreateWindow({
    Title = "King Gen - Universal Test",
    ConfigFolder = "KingGen_Test"
})

local Tab1 = Window:AddTab("Farming")
local Tab2 = Window:AddTab("Settings")

Tab1:AddToggle({
    Name = "Enable Auto Farm",
    Flag = "FarmOn",
    Default = false,
    Callback = function(v) print("Farm:", v) end
})

Tab1:AddDropdown({
    Name = "Select Mobs",
    Flag = "MobList",
    List = {"Goblin", "Orc", "Dragon"},
    Multi = true,
    Default = {["Goblin"] = true},
    Callback = function(t) 
        for k,v in pairs(t) do if v then print(k) end end
    end
})

Tab2:AddSlider({
    Name = "Attack Distance",
    Flag = "Dist",
    Min = 5,
    Max = 50,
    Default = 10,
    Callback = function(v) print("Dist:", v) end
})

Tab2:AddButtonDropdown({
    Name = "Teleport Method",
    Flag = "TPMethod",
    List = {"Tween", "CFrame", "Bypass"},
    Default = "Tween",
    Callback = function(v) print("TP:", v) end
})

Library:Notify({Title="King Gen", Text="Loaded Successfully!", Duration=5})
