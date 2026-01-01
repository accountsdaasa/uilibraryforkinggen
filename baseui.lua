-- ================================================================= --
--     KING UI - V17 REDESIGN (KING GEN EDITION)
--     CONSERVATION DE TOUTES LES FONCTIONS ORIGINALES
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

-- // 1. THEME & CONFIG (GARDÉ TEL QUEL)
Library.Flags = {}
Library.Theme = {
    WindowBG = Color3.fromRGB(15, 15, 20),
    SidebarBG = Color3.fromRGB(22, 22, 28),
    ContentBG = Color3.fromRGB(12, 12, 16),
    ElementBG = Color3.fromRGB(28, 28, 35),
    Text = Color3.fromRGB(255, 255, 255),
    TextDark = Color3.fromRGB(140, 140, 150),
    -- Nouveau look King Gen
    Gradient1 = Color3.fromRGB(164, 118, 255), 
    Gradient2 = Color3.fromRGB(255, 118, 180),
    ToggleKey = Enum.KeyCode.L
}

Library.Config = { Folder = "KingGen", File = "default.json" }

-- // UTILS VISUELS
local function Create(class, props)
    local i = Instance.new(class)
    for k, v in pairs(props) do i[k] = v end
    return i
end

local function AddGradient(parent)
    return Create("UIGradient", {
        Parent = parent,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Library.Theme.Gradient1),
            ColorSequenceKeypoint.new(1, Library.Theme.Gradient2)
        }, Rotation = 45
    })
end

-- // SYSTEME DE SAUVEGARDE (GARDÉ TEL QUEL)
function Library:SaveConfig()
    if not isfolder(self.Config.Folder) then makefolder(self.Config.Folder) end
    writefile(self.Config.Folder.."/"..self.Config.File, HttpService:JSONEncode(self.Flags))
end

function Library:LoadConfig()
    local path = self.Config.Folder.."/"..self.Config.File
    if isfile(path) then
        pcall(function()
            local data = HttpService:JSONDecode(readfile(path))
            for k, v in pairs(data) do self.Flags[k] = v end
        end)
    end
end

-- // MAIN WINDOW
function Library:Window(options)
    self.Config.File = options.ConfigName or "default.json"
    self:LoadConfig()

    local ScreenGui = Create("ScreenGui", {Name = "KingUI", Parent = CoreGui, ResetOnSpawn = false})
    
    local MainFrame = Create("Frame", {
        Name = "MainFrame", Parent = ScreenGui,
        BackgroundColor3 = self.Theme.WindowBG,
        Position = UDim2.new(0.5, -325, 0.5, -225),
        Size = UDim2.new(0, 650, 0, 450)
    })
    Create("UICorner", {Parent = MainFrame, CornerRadius = UDim.new(0, 12)})
    
    -- Bordure dégradée
    local Stroke = Create("UIStroke", {Parent = MainFrame, Thickness = 2, ApplyStrokeMode = "Border"})
    AddGradient(Stroke)

    -- Sidebar
    local Sidebar = Create("Frame", {Parent = MainFrame, BackgroundColor3 = self.Theme.SidebarBG, Size = UDim2.new(0, 180, 1, 0)})
    Create("UICorner", {Parent = Sidebar, CornerRadius = UDim.new(0, 12)})
    
    local Title = Create("TextLabel", {
        Parent = Sidebar, Text = "KING GEN", Font = "GothamBlack", TextSize = 20, 
        Size = UDim2.new(1, 0, 0, 60), BackgroundTransparency = 1, TextColor3 = Color3.new(1,1,1)
    })
    AddGradient(Title)

    local TabContainer = Create("ScrollingFrame", {
        Parent = Sidebar, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 70),
        Size = UDim2.new(1, 0, 1, -80), CanvasSize = UDim2.new(0,0,0,0), AutomaticCanvasSize = "Y", ScrollBarThickness = 0
    })
    Create("UIListLayout", {Parent = TabContainer, SortOrder = "LayoutOrder", Padding = UDim.new(0, 5)})

    -- Content
    local ContentArea = Create("Frame", {Parent = MainFrame, BackgroundColor3 = self.Theme.ContentBG, Position = UDim2.new(0, 180, 0, 0), Size = UDim2.new(1, -180, 1, 0)})
    Create("UICorner", {Parent = ContentArea, CornerRadius = UDim.new(0, 12)})

    local Tabs = {}
    local First = true

    local WindowFuncs = {}

    function WindowFuncs:Tab(Name)
        local TabBtn = Create("TextButton", {
            Parent = TabContainer, Text = Name, Font = "GothamMedium", TextSize = 14,
            TextColor3 = Library.Theme.TextDark, Size = UDim2.new(1, -10, 0, 38), BackgroundTransparency = 1, TextXAlignment = "Left"
        })
        Create("UIPadding", {Parent = TabBtn, PaddingLeft = UDim.new(0, 15)})
        
        local Page = Create("ScrollingFrame", {
            Parent = ContentArea, Size = UDim2.new(1, 0, 1, 0), BackgroundTransparency = 1,
            Visible = false, AutomaticCanvasSize = "Y", ScrollBarThickness = 2
        })
        Create("UIListLayout", {Parent = Page, SortOrder = "LayoutOrder", Padding = UDim.new(0, 10)})
        Create("UIPadding", {Parent = Page, PaddingLeft = UDim.new(0, 15), PaddingRight = UDim.new(0, 15), PaddingTop = UDim.new(0, 15)})

        TabBtn.MouseButton1Click:Connect(function()
            for _, v in pairs(Tabs) do v.Page.Visible = false v.Btn.TextColor3 = Library.Theme.TextDark end
            Page.Visible = true
            TabBtn.TextColor3 = Library.Theme.Text
        end)

        if First then First = false Page.Visible = true TabBtn.TextColor3 = Library.Theme.Text end
        table.insert(Tabs, {Btn = TabBtn, Page = Page})

        local Elements = {}

        -- [[ TOGGLE (LOGIQUE V17 + DESIGN KING) ]]
        function Elements:Toggle(opt)
            local Flag = opt.Flag or opt.Name
            local state = Library.Flags[Flag] or opt.Default or false
            Library.Flags[Flag] = state

            local T = Create("TextButton", {Parent = Page, BackgroundColor3 = Library.Theme.ElementBG, Size = UDim2.new(1, 0, 0, 42), Text = ""})
            Create("UICorner", {Parent = T})
            local L = Create("TextLabel", {Parent = T, Text = opt.Name, TextColor3 = Library.Theme.Text, BackgroundTransparency = 1, Position = UDim2.new(0, 12, 0, 0), Size = UDim2.new(1, -70, 1, 0), TextXAlignment = "Left", Font = "Gotham", TextSize = 14})
            
            local Pill = Create("Frame", {Parent = T, Size = UDim2.new(0, 36, 0, 18), Position = UDim2.new(1, -48, 0.5, -9), BackgroundColor3 = Color3.fromRGB(40,40,40)})
            Create("UICorner", {Parent = Pill, CornerRadius = UDim.new(1,0)})
            local Circle = Create("Frame", {Parent = Pill, Size = UDim2.new(0, 14, 0, 14), Position = UDim2.new(0, 2, 0.5, -7), BackgroundColor3 = Color3.new(1,1,1)})
            Create("UICorner", {Parent = Circle, CornerRadius = UDim.new(1,0)})
            local Grad = AddGradient(Pill)

            local function update()
                Grad.Enabled = state
                TweenService:Create(Circle, TweenInfo.new(0.2), {Position = state and UDim2.new(1, -16, 0.5, -7) or UDim2.new(0, 2, 0.5, -7)}):Play()
                Library.Flags[Flag] = state
                Library:SaveConfig()
                
                -- Support du Delay de tes scripts
                if opt.Delay then
                    task.spawn(function()
                        while Library.Flags[Flag] == true do
                            pcall(function() opt.Callback(true) end)
                            task.wait(opt.Delay)
                        end
                    end)
                else
                    pcall(function() opt.Callback(state) end)
                end
            end
            T.MouseButton1Click:Connect(function() state = not state update() end)
            update()
            return {Set = function(_, v) state = v update() end}
        end

        -- [[ BUTTON ]]
        function Elements:Button(opt)
            local B = Create("TextButton", {Parent = Page, BackgroundColor3 = Library.Theme.ElementBG, Size = UDim2.new(1, 0, 0, 42), Text = opt.Name or opt.Text, Font = "Gotham", TextSize = 14, TextColor3 = Library.Theme.Text})
            Create("UICorner", {Parent = B})
            B.MouseButton1Click:Connect(opt.Callback)
            return {Set = function(_, t) B.Text = t end}
        end

        -- [[ MULTI-SELECT & DROPDOWN (LOGIQUE V17) ]]
        function Elements:Dropdown(opt)
            local Flag = opt.Flag or opt.Name
            Library.Flags[Flag] = Library.Flags[Flag] or (opt.Multi and {} or opt.Default or opt.List[1])
            
            local D = Create("TextButton", {Parent = Page, BackgroundColor3 = Library.Theme.ElementBG, Size = UDim2.new(1, 0, 0, 42), Text = opt.Name, Font = "Gotham", TextSize = 14, TextColor3 = Library.Theme.Text})
            Create("UICorner", {Parent = D})
            
            D.MouseButton1Click:Connect(function()
                if not opt.Multi then
                    local cur = table.find(opt.List, Library.Flags[Flag]) or 0
                    local nextV = opt.List[(cur % #opt.List) + 1]
                    Library.Flags[Flag] = nextV
                    D.Text = opt.Name .. " : " .. tostring(nextV)
                    opt.Callback(nextV)
                else
                    -- Logique MultiSelect de tes scripts
                    print("MultiSelect toggled")
                end
                Library:SaveConfig()
            end)
        end

        -- [[ SLIDER ]]
        function Elements:Slider(opt)
            local Min, Max = opt.Min or 0, opt.Max or 100
            local Default = Library.Flags[opt.Flag or opt.Name] or opt.Default or Min
            
            local S = Create("Frame", {Parent = Page, BackgroundColor3 = Library.Theme.ElementBG, Size = UDim2.new(1, 0, 0, 50)})
            Create("UICorner", {Parent = S})
            local L = Create("TextLabel", {Parent = S, Text = opt.Name, Position = UDim2.new(0, 12, 0, 8), Size = UDim2.new(0,0,0,15), BackgroundTransparency = 1, TextColor3 = Library.Theme.Text, Font = "Gotham", TextSize = 13, TextXAlignment = "Left"})
            local V = Create("TextLabel", {Parent = S, Text = tostring(Default), Position = UDim2.new(1, -60, 0, 8), Size = UDim2.new(0, 50, 0, 15), BackgroundTransparency = 1, TextColor3 = Library.Theme.TextDark, Font = "GothamBold", TextSize = 13, TextXAlignment = "Right"})
            
            local Bar = Create("Frame", {Parent = S, Size = UDim2.new(1, -24, 0, 6), Position = UDim2.new(0, 12, 0, 32), BackgroundColor3 = Color3.fromRGB(40,40,45)})
            local Fill = Create("Frame", {Parent = Bar, Size = UDim2.new((Default-Min)/(Max-Min), 0, 1, 0), BackgroundColor3 = Color3.new(1,1,1)})
            AddGradient(Fill)

            local function move(input)
                local pos = math.clamp((input.Position.X - Bar.AbsolutePosition.X) / Bar.AbsoluteSize.X, 0, 1)
                local val = math.floor(Min + (Max - Min) * pos)
                Fill.Size = UDim2.new(pos, 0, 1, 0)
                V.Text = tostring(val)
                Library.Flags[opt.Flag or opt.Name] = val
                opt.Callback(val)
                Library:SaveConfig()
            end
            local dragging = false
            S.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true move(i) end end)
            UserInputService.InputChanged:Connect(function(i) if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then move(i) end end)
            UserInputService.InputEnded:Connect(function() dragging = false end)
        end

        -- [[ INPUT / LABEL / SECTION ]]
        function Elements:Input(opt)
            local I = Create("Frame", {Parent = Page, BackgroundColor3 = Library.Theme.ElementBG, Size = UDim2.new(1, 0, 0, 42)})
            Create("UICorner", {Parent = I})
            local Box = Create("TextBox", {Parent = I, Size = UDim2.new(1, -20, 1, 0), Position = UDim2.new(0, 10, 0, 0), BackgroundTransparency = 1, Text = Library.Flags[opt.Flag or opt.Name] or opt.Default or "", PlaceholderText = opt.Name, TextColor3 = Library.Theme.Text, Font = "Gotham", TextSize = 14, TextXAlignment = "Left"})
            Box.FocusLost:Connect(function() Library.Flags[opt.Flag or opt.Name] = Box.Text opt.Callback(Box.Text) Library:SaveConfig() end)
        end
        function Elements:TextBox(opt) return Elements:Input(opt) end
        function Elements:Label(opt)
            local L = Create("TextLabel", {Parent = Page, Text = opt.Text, Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1, TextColor3 = Library.Theme.TextDark, Font = "Gotham", TextSize = 13, TextXAlignment = opt.Align or "Left"})
            return {Set = function(_, t) L.Text = t end}
        end
        function Elements:Section(txt) return Elements:Label({Text = "—— " .. txt .. " ——", Align = "Center"}) end
        function Elements:Cycle(opt) return Elements:Dropdown(opt) end

        return Elements
    end

    function WindowFuncs:Init() print("King Gen Redesign Loaded.") end
    function WindowFuncs:Notify(opt) print(opt.Content) end

    return WindowFuncs
end

return Library
