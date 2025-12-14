-- ================================================================= --
--     KING UI - REVISITED V8 (Slider Knob & Auto-Responsive)
--     >> AJOUT : PASTILLE BLANCHE SUR SLIDER
--     >> AJOUT : DÉTECTION MOBILE/PC ET REDIMENSIONNEMENT AUTO
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- // DÉTECTION DU TYPE D'APPAREIL
local isMobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
-- Si tu veux forcer le mode mobile pour tester sur PC, mets ceci à true :
-- local isMobile = true 

-- // CONFIGURATION DES TAILLES SELON L'APPAREIL
local LayoutConfig = {
    WindowSize = isMobile and UDim2.new(0.85, 0, 0.60, 0) or UDim2.new(0, 650, 0, 450), -- PC: Fixe, Mobile: % Écran
    TabButtonHeight = isMobile and 40 or 32, -- Plus gros sur mobile
    ElementHeight = isMobile and 42 or 36,   -- Plus gros sur mobile
    Padding = 12
}

-- // 1. Theme
local Theme = {
    WindowBG    = Color3.fromRGB(42, 40, 55),
    SidebarBG   = Color3.fromRGB(28, 26, 38),
    ItemBG      = Color3.fromRGB(65, 55, 85),
    AccentStart = Color3.fromRGB(180, 60, 230),
    AccentEnd   = Color3.fromRGB(60, 160, 210),
    Text        = Color3.fromRGB(235, 235, 240),
    TextDark    = Color3.fromRGB(155, 150, 165),
    UIStrokeColor = Color3.fromRGB(90, 80, 115),
}

-- // UTILITAIRES
local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local newPos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
        TweenService:Create(object, TweenInfo.new(0.15), {Position = newPos}):Play()
    end

    topbarobject.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = input.Position
            StartPosition = object.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end
            end)
        end
    end)

    topbarobject.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            DragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == DragInput and Dragging then
            Update(input)
        end
    end)
end

-- // 2. CRÉATION DE LA FENÊTRE PRINCIPALE
function Library:Window(options)
    local TitleText = options.Name or "UI Library"
    
    -- ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KingLibrary_Responsive"
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Protection (Synapse/Krnl/Fluxus)
    if gethui then
        ScreenGui.Parent = gethui()
    elseif CoreGui:FindFirstChild("RobloxGui") then
        ScreenGui.Parent = CoreGui
    else
        ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    end

    -- MainFrame
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Theme.WindowBG
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = true -- Important pour les coins arrondis
    
    -- Positionnement centré et taille adaptative
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.Size = LayoutConfig.WindowSize 

    local UICornerMain = Instance.new("UICorner", MainFrame)
    UICornerMain.CornerRadius = UDim.new(0, 10)
    
    local UIStrokeMain = Instance.new("UIStroke", MainFrame)
    UIStrokeMain.Color = Theme.UIStrokeColor
    UIStrokeMain.Thickness = 1.5

    -- Sidebar (Gauche)
    local Sidebar = Instance.new("Frame")
    Sidebar.Name = "Sidebar"
    Sidebar.Parent = MainFrame
    Sidebar.BackgroundColor3 = Theme.SidebarBG
    Sidebar.BorderSizePixel = 0
    Sidebar.Size = UDim2.new(0, isMobile and 140 or 160, 1, 0) -- Sidebar un peu plus petite sur mobile si besoin
    
    -- Sidebar Corner (Left side only hack or just global corner)
    -- On laisse le MainFrame gérer le corner global.

    local SidebarLabel = Instance.new("TextLabel")
    SidebarLabel.Name = "Title"
    SidebarLabel.Parent = Sidebar
    SidebarLabel.BackgroundTransparency = 1
    SidebarLabel.Position = UDim2.new(0, 15, 0, 15)
    SidebarLabel.Size = UDim2.new(1, -30, 0, 30)
    SidebarLabel.Font = Enum.Font.GothamBold
    SidebarLabel.Text = TitleText
    SidebarLabel.TextColor3 = Theme.AccentEnd
    SidebarLabel.TextSize = 22
    SidebarLabel.TextXAlignment = Enum.TextXAlignment.Left

    local TabContainer = Instance.new("ScrollingFrame")
    TabContainer.Name = "TabContainer"
    TabContainer.Parent = Sidebar
    TabContainer.Active = true
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(0, 10, 0, 60)
    TabContainer.Size = UDim2.new(1, -20, 1, -70)
    TabContainer.ScrollBarThickness = 2
    TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    
    local TabListLayout = Instance.new("UIListLayout", TabContainer)
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.Padding = UDim.new(0, 8)

    -- Content Area (Droite)
    local Content = Instance.new("Frame")
    Content.Name = "Content"
    Content.Parent = MainFrame
    Content.BackgroundColor3 = Theme.WindowBG
    Content.BorderSizePixel = 0
    Content.Position = UDim2.new(0, isMobile and 140 or 160, 0, 0)
    Content.Size = UDim2.new(1, -(isMobile and 140 or 160), 1, 0)

    -- Dragify
    MakeDraggable(Sidebar, MainFrame)
    
    -- Pour gérer les onglets
    local Tabs = {}
    local FirstTab = true
    local WindowAPI = {}

    -- // 3. CRÉATION DES ONGLETS
    function WindowAPI:Tab(name)
        local TabButton = Instance.new("TextButton")
        TabButton.Name = name.."_Btn"
        TabButton.Parent = TabContainer
        TabButton.BackgroundColor3 = Theme.WindowBG -- Inactif par défaut
        TabButton.BackgroundTransparency = 1
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(1, 0, 0, LayoutConfig.TabButtonHeight)
        TabButton.Font = Enum.Font.GothamMedium
        TabButton.Text = name
        TabButton.TextColor3 = Theme.TextDark
        TabButton.TextSize = 14
        
        local TabBtnCorner = Instance.new("UICorner", TabButton)
        TabBtnCorner.CornerRadius = UDim.new(0, 6)

        -- Page Container
        local Page = Instance.new("ScrollingFrame")
        Page.Name = name.."_Page"
        Page.Parent = Content
        Page.Active = true
        Page.BackgroundColor3 = Theme.WindowBG
        Page.BackgroundTransparency = 1
        Page.BorderSizePixel = 0
        Page.Position = UDim2.new(0, 15, 0, 15)
        Page.Size = UDim2.new(1, -30, 1, -30)
        Page.ScrollBarThickness = 4
        Page.Visible = false -- Caché par défaut
        
        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, LayoutConfig.Padding)

        -- Auto-Canvas Size
        PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 20)
        end)

        -- Fonction d'activation
        local function Activate()
            -- Désactiver tous les autres
            for _, t in pairs(Tabs) do
                TweenService:Create(t.Btn, TweenInfo.new(0.2), {BackgroundTransparency = 1, TextColor3 = Theme.TextDark}):Play()
                t.Page.Visible = false
            end
            -- Activer celui-ci
            TweenService:Create(TabButton, TweenInfo.new(0.2), {BackgroundTransparency = 0, TextColor3 = Theme.Text}):Play()
            Page.Visible = true
        end

        TabButton.MouseButton1Click:Connect(Activate)

        -- Stockage
        table.insert(Tabs, {Btn = TabButton, Page = Page})

        -- Si c'est le premier, on l'active
        if FirstTab then
            FirstTab = false
            Activate()
        end

        local Elements = {}

        -- // 4. ÉLÉMENTS (Boutons, Toggles, etc.)
        
        -- LABEL
        function Elements:Label(text)
            local Lab = Instance.new("TextLabel")
            Lab.Parent = Page
            Lab.BackgroundColor3 = Theme.ItemBG
            Lab.BackgroundTransparency = 1
            Lab.Size = UDim2.new(1, 0, 0, 25)
            Lab.Font = Enum.Font.GothamBold
            Lab.Text = text
            Lab.TextColor3 = Theme.Text
            Lab.TextSize = 16
            Lab.TextXAlignment = Enum.TextXAlignment.Left
            return Lab
        end

        -- BUTTON
        function Elements:Button(options)
            local BtnFrame = Instance.new("TextButton")
            BtnFrame.Parent = Page
            BtnFrame.BackgroundColor3 = Theme.ItemBG
            BtnFrame.Size = UDim2.new(1, 0, 0, LayoutConfig.ElementHeight)
            BtnFrame.AutoButtonColor = false
            BtnFrame.Font = Enum.Font.GothamSemibold
            BtnFrame.Text = options.Name or "Button"
            BtnFrame.TextColor3 = Theme.Text
            BtnFrame.TextSize = 14
            
            local UIC = Instance.new("UICorner", BtnFrame)
            UIC.CornerRadius = UDim.new(0, 6)

            -- Gradient pour effet
            local Grad = Instance.new("UIGradient", BtnFrame)
            Grad.Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.new(1,1,1)),
                ColorSequenceKeypoint.new(1, Color3.new(0.8,0.8,0.8))
            }
            Grad.Enabled = false

            BtnFrame.MouseEnter:Connect(function()
                TweenService:Create(BtnFrame, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(75, 65, 95)}):Play()
            end)
            BtnFrame.MouseLeave:Connect(function()
                TweenService:Create(BtnFrame, TweenInfo.new(0.2), {BackgroundColor3 = Theme.ItemBG}):Play()
            end)

            BtnFrame.MouseButton1Click:Connect(function()
                -- Effet de clic
                local circle = Instance.new("ImageLabel")
                circle.Name = "Circle"
                circle.Parent = BtnFrame
                circle.BackgroundColor3 = Theme.AccentEnd
                circle.BackgroundTransparency = 1
                circle.Image = "rbxassetid://266543268"
                circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
                circle.ImageTransparency = 0.8
                circle.Position = UDim2.new(0, 0, 0, 0) -- Sera update par script souris
                -- Simplification: Juste un tween couleur
                TweenService:Create(BtnFrame, TweenInfo.new(0.1), {BackgroundColor3 = Theme.AccentStart}):Play()
                task.wait(0.1)
                TweenService:Create(BtnFrame, TweenInfo.new(0.2), {BackgroundColor3 = Theme.ItemBG}):Play()
                
                if options.Callback then options.Callback() end
            end)
            return BtnFrame
        end

        -- TOGGLE
        function Elements:Toggle(options)
            local Toggled = options.Default or false
            
            local ToggleFrame = Instance.new("TextButton")
            ToggleFrame.Parent = Page
            ToggleFrame.BackgroundColor3 = Theme.ItemBG
            ToggleFrame.Size = UDim2.new(1, 0, 0, LayoutConfig.ElementHeight)
            ToggleFrame.AutoButtonColor = false
            ToggleFrame.Text = ""
            
            local UIC = Instance.new("UICorner", ToggleFrame)
            UIC.CornerRadius = UDim.new(0, 6)

            local Title = Instance.new("TextLabel", ToggleFrame)
            Title.BackgroundTransparency = 1
            Title.Position = UDim2.new(0, 10, 0, 0)
            Title.Size = UDim2.new(1, -60, 1, 0)
            Title.Font = Enum.Font.GothamSemibold
            Title.Text = options.Name or "Toggle"
            Title.TextColor3 = Theme.Text
            Title.TextSize = 14
            Title.TextXAlignment = Enum.TextXAlignment.Left

            -- Switch BG
            local SwitchBG = Instance.new("Frame", ToggleFrame)
            SwitchBG.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
            SwitchBG.Position = UDim2.new(1, -50, 0.5, -10)
            SwitchBG.Size = UDim2.new(0, 40, 0, 20)
            
            local SwitchUIC = Instance.new("UICorner", SwitchBG)
            SwitchUIC.CornerRadius = UDim.new(1, 0)

            -- Switch Dot
            local Dot = Instance.new("Frame", SwitchBG)
            Dot.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
            Dot.Position = UDim2.new(0, 2, 0.5, -8)
            Dot.Size = UDim2.new(0, 16, 0, 16)
            
            local DotUIC = Instance.new("UICorner", Dot)
            DotUIC.CornerRadius = UDim.new(1, 0)

            local function UpdateToggle()
                if Toggled then
                    TweenService:Create(SwitchBG, TweenInfo.new(0.2), {BackgroundColor3 = Theme.AccentStart}):Play()
                    TweenService:Create(Dot, TweenInfo.new(0.2), {Position = UDim2.new(1, -18, 0.5, -8), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                else
                    TweenService:Create(SwitchBG, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(40, 40, 50)}):Play()
                    TweenService:Create(Dot, TweenInfo.new(0.2), {Position = UDim2.new(0, 2, 0.5, -8), BackgroundColor3 = Color3.fromRGB(200, 200, 200)}):Play()
                end
                if options.Callback then options.Callback(Toggled) end
            end
            
            -- Set initial state visual without callback
            if Toggled then
                SwitchBG.BackgroundColor3 = Theme.AccentStart
                Dot.Position = UDim2.new(1, -18, 0.5, -8)
                Dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            end

            ToggleFrame.MouseButton1Click:Connect(function()
                Toggled = not Toggled
                UpdateToggle()
            end)
        end

        -- SLIDER (MODIFIÉ AVEC LA PASTILLE BLANCHE)
        function Elements:Slider(options)
            local Min = options.Min or 0
            local Max = options.Max or 100
            local Default = options.Default or Min
            local Value = Default

            local SliderFrame = Instance.new("Frame")
            SliderFrame.Parent = Page
            SliderFrame.BackgroundColor3 = Theme.ItemBG
            SliderFrame.Size = UDim2.new(1, 0, 0, LayoutConfig.ElementHeight + 14) -- Un peu plus haut pour le slider
            
            local UIC = Instance.new("UICorner", SliderFrame)
            UIC.CornerRadius = UDim.new(0, 6)

            local Title = Instance.new("TextLabel", SliderFrame)
            Title.BackgroundTransparency = 1
            Title.Position = UDim2.new(0, 10, 0, 5)
            Title.Size = UDim2.new(1, -20, 0, 20)
            Title.Font = Enum.Font.GothamSemibold
            Title.Text = options.Name or "Slider"
            Title.TextColor3 = Theme.Text
            Title.TextSize = 14
            Title.TextXAlignment = Enum.TextXAlignment.Left

            local ValueLabel = Instance.new("TextLabel", SliderFrame)
            ValueLabel.BackgroundTransparency = 1
            ValueLabel.Position = UDim2.new(1, -60, 0, 5)
            ValueLabel.Size = UDim2.new(0, 50, 0, 20)
            ValueLabel.Font = Enum.Font.Gotham
            ValueLabel.Text = tostring(Value)
            ValueLabel.TextColor3 = Theme.TextDark
            ValueLabel.TextSize = 14
            ValueLabel.TextXAlignment = Enum.TextXAlignment.Right

            -- Slider BG
            local SliderBar = Instance.new("TextButton") -- TextButton pour click
            SliderBar.Name = "SliderBar"
            SliderBar.Parent = SliderFrame
            SliderBar.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
            SliderBar.Position = UDim2.new(0, 10, 0, 32)
            SliderBar.Size = UDim2.new(1, -20, 0, 6)
            SliderBar.AutoButtonColor = false
            SliderBar.Text = ""
            
            local BarUIC = Instance.new("UICorner", SliderBar)
            BarUIC.CornerRadius = UDim.new(1, 0)

            -- Slider Fill
            local SliderFill = Instance.new("Frame", SliderBar)
            SliderFill.Name = "Fill"
            SliderFill.BackgroundColor3 = Theme.AccentStart
            SliderFill.Size = UDim2.new(0, 0, 1, 0)
            SliderFill.BorderSizePixel = 0
            
            -- Gradient sur le fill
            local FillGrad = Instance.new("UIGradient", SliderFill)
            FillGrad.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd)

            local FillUIC = Instance.new("UICorner", SliderFill)
            FillUIC.CornerRadius = UDim.new(1, 0)

            -- >>> PASTILLE BLANCHE (KNOB) <<< --
            local Knob = Instance.new("Frame")
            Knob.Name = "Knob"
            Knob.Parent = SliderBar
            Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Knob.Size = UDim2.new(0, 14, 0, 14) -- Taille de la pastille
            Knob.AnchorPoint = Vector2.new(0.5, 0.5) -- Centré sur le point
            Knob.Position = UDim2.new(0, 0, 0.5, 0) -- Y = 0.5 pour être au milieu de la barre
            
            local KnobUIC = Instance.new("UICorner", Knob)
            KnobUIC.CornerRadius = UDim.new(1, 0) -- Rond parfait
            
            local KnobStroke = Instance.new("UIStroke", Knob)
            KnobStroke.Color = Color3.fromRGB(200, 200, 200)
            KnobStroke.Thickness = 1
            -- >>> FIN PASTILLE <<< --

            local dragging = false

            local function UpdateSlider(input)
                local pos = UDim2.new(math.clamp((input.Position.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X, 0, 1), 0, 1, 0)
                local sVal = math.floor(Min + ((Max - Min) * pos.X.Scale))
                
                -- Tween Fill
                TweenService:Create(SliderFill, TweenInfo.new(0.05), {Size = pos}):Play()
                
                -- Tween Knob (Pastille)
                -- On met à jour la position X du Knob en fonction du pourcentage
                TweenService:Create(Knob, TweenInfo.new(0.05), {Position = UDim2.new(pos.X.Scale, 0, 0.5, 0)}):Play()
                
                ValueLabel.Text = tostring(sVal)
                if options.Callback then options.Callback(sVal) end
            end

            SliderBar.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = true
                    UpdateSlider(input)
                end
            end)

            UserInputService.InputChanged:Connect(function(input)
                if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    UpdateSlider(input)
                end
            end)

            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    dragging = false
                end
            end)
            
            -- Set Initial
            local startPercent = (Default - Min) / (Max - Min)
            SliderFill.Size = UDim2.new(startPercent, 0, 1, 0)
            Knob.Position = UDim2.new(startPercent, 0, 0.5, 0)
        end

        -- DROPDOWN (Avec fix overflow)
        function Elements:Dropdown(options)
            local DropdownFrame = Instance.new("Frame")
            DropdownFrame.Parent = Page
            DropdownFrame.BackgroundColor3 = Theme.ItemBG
            DropdownFrame.Size = UDim2.new(1, 0, 0, LayoutConfig.ElementHeight)
            DropdownFrame.ClipsDescendants = false -- Important pour que la liste dépasse
            
            local UIC = Instance.new("UICorner", DropdownFrame)
            UIC.CornerRadius = UDim.new(0, 6)

            local Title = Instance.new("TextLabel", DropdownFrame)
            Title.BackgroundTransparency = 1
            Title.Position = UDim2.new(0, 10, 0, 0)
            Title.Size = UDim2.new(1, -40, 1, 0)
            Title.Font = Enum.Font.GothamSemibold
            Title.Text = (options.Name or "Dropdown") .. ": " .. (options.Default or "...")
            Title.TextColor3 = Theme.Text
            Title.TextSize = 14
            Title.TextXAlignment = Enum.TextXAlignment.Left

            local Arrow = Instance.new("ImageLabel", DropdownFrame)
            Arrow.BackgroundTransparency = 1
            Arrow.Image = "rbxassetid://6031091004" -- Fleche bas
            Arrow.Position = UDim2.new(1, -30, 0.5, -12)
            Arrow.Size = UDim2.new(0, 24, 0, 24)
            Arrow.ImageColor3 = Theme.TextDark

            local Button = Instance.new("TextButton", DropdownFrame)
            Button.Size = UDim2.new(1, 0, 1, 0)
            Button.BackgroundTransparency = 1
            Button.Text = ""

            -- Liste Déroulante (Separée pour le ZIndex)
            -- Pour éviter le clipping, on peut l'attacher au ScreenGui temporairement ou utiliser ZIndex élevé
            -- Ici méthode simple : Frame dans la page mais avec ZIndex supérieur
            
            local List = Instance.new("Frame")
            List.Name = "DropdownList"
            List.Parent = DropdownFrame -- Si on veut que ça scroll avec la page
            List.BackgroundColor3 = Theme.SidebarBG
            List.Position = UDim2.new(0, 0, 1, 2)
            List.Size = UDim2.new(1, 0, 0, 0)
            List.Visible = false
            List.ZIndex = 10 -- Au dessus des autres éléments
            List.ClipsDescendants = true
            
            local ListUIC = Instance.new("UICorner", List)
            ListUIC.CornerRadius = UDim.new(0, 6)
            
            local ListLayout = Instance.new("UIListLayout", List)
            ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            local Opened = false
            local Items = options.Options or {}

            local function ToggleList()
                Opened = not Opened
                if Opened then
                    List.Visible = true
                    TweenService:Create(Arrow, TweenInfo.new(0.2), {Rotation = 180}):Play()
                    -- Calcul taille
                    local count = #Items
                    local height = math.min(count * 30, 150) -- Max 150px
                    TweenService:Create(List, TweenInfo.new(0.2), {Size = UDim2.new(1, 0, 0, height)}):Play()
                else
                    TweenService:Create(Arrow, TweenInfo.new(0.2), {Rotation = 0}):Play()
                    TweenService:Create(List, TweenInfo.new(0.2), {Size = UDim2.new(1, 0, 0, 0)}):Play()
                    task.wait(0.2)
                    List.Visible = false
                end
            end

            Button.MouseButton1Click:Connect(ToggleList)

            for _, val in pairs(Items) do
                local ItemBtn = Instance.new("TextButton", List)
                ItemBtn.BackgroundColor3 = Theme.SidebarBG
                ItemBtn.Size = UDim2.new(1, 0, 0, 30)
                ItemBtn.Font = Enum.Font.Gotham
                ItemBtn.Text = val
                ItemBtn.TextColor3 = Theme.TextDark
                ItemBtn.TextSize = 14
                ItemBtn.ZIndex = 11

                ItemBtn.MouseEnter:Connect(function()
                    ItemBtn.TextColor3 = Theme.AccentEnd
                    ItemBtn.BackgroundColor3 = Color3.fromRGB(40, 38, 50)
                end)
                ItemBtn.MouseLeave:Connect(function()
                    ItemBtn.TextColor3 = Theme.TextDark
                    ItemBtn.BackgroundColor3 = Theme.SidebarBG
                end)

                ItemBtn.MouseButton1Click:Connect(function()
                    Title.Text = (options.Name or "Dropdown") .. ": " .. val
                    ToggleList()
                    if options.Callback then options.Callback(val) end
                end)
            end
        end
        
        -- LINK BOX / COPY
        function Elements:LinkBox(options)
            local Box = Instance.new("TextBox")
            Box.Parent = Page
            Box.BackgroundColor3 = Theme.ItemBG
            Box.Size = UDim2.new(1, 0, 0, LayoutConfig.ElementHeight)
            Box.Font = Enum.Font.Gotham
            Box.Text = options.Link or "https://discord.gg/..."
            Box.TextColor3 = Theme.AccentEnd
            Box.TextSize = 14
            Box.TextEditable = false
            Box.ClearTextOnFocus = false
            
            local UIC = Instance.new("UICorner", Box)
            UIC.CornerRadius = UDim.new(0, 6)

            local CopyBtn = Instance.new("TextButton", Box)
            CopyBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            CopyBtn.Size = UDim2.new(0, 80, 1, -8)
            CopyBtn.Position = UDim2.new(1, -85, 0, 4)
            CopyBtn.Font = Enum.Font.GothamBold
            CopyBtn.Text = "Copy"
            CopyBtn.TextColor3 = Color3.new(1,1,1)
            CopyBtn.TextSize = 12
            
            local CopyUIC = Instance.new("UICorner", CopyBtn)
            CopyUIC.CornerRadius = UDim.new(0, 4)
            
            local CopyGrad = Instance.new("UIGradient", CopyBtn)
            CopyGrad.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd)

            CopyBtn.MouseButton1Click:Connect(function()
                if setclipboard then
                    setclipboard(Box.Text)
                    CopyBtn.Text = "Copied!"
                    task.wait(1)
                    CopyBtn.Text = "Copy"
                end
            end)
        end

        return Elements
    end

    return WindowAPI
end

return Library
