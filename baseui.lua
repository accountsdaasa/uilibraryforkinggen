-- ================================================================= --
--     KING UI - REMASTERED (Responsive + Modern Sidebar Look)
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

-- // 1. Configuration & Thèmes (Conservés de ta version)
local DEFAULTS = {
    ToggleKey = Enum.KeyCode.RightControl, -- Changé en Enum pour plus de stabilité
    ThemeName = "Default",
    GuiScale = 1
}

local THEME = {
    WindowBG = Color3.fromRGB(25, 25, 35), -- Un peu plus sombre pour le moderne
    SidebarBG = Color3.fromRGB(30, 30, 45),
    ContentBG = Color3.fromRGB(20, 20, 30), -- Fond des éléments
    TextLight = Color3.fromRGB(240, 240, 240),
    TextDark = Color3.fromRGB(180, 180, 180),
    Accent = Color3.fromRGB(130, 120, 240), -- Couleur principale (Violet style King)
    Outline = Color3.fromRGB(50, 50, 70),
    Success = Color3.fromRGB(80, 220, 140),
    Fail = Color3.fromRGB(220, 80, 80)
}

Library.Theme = THEME
Library.Flags = {}
Library.Opened = true

-- // 2. Utilitaires UI
local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
        local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
        Tween:Play()
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

local function CreateRounded(instance, radius)
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, radius or 6)
    uiCorner.Parent = instance
    return uiCorner
end

local function CreateStroke(instance, color, thickness)
    local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = color or THEME.Outline
    uiStroke.Thickness = thickness or 1
    uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uiStroke.Parent = instance
    return uiStroke
end

-- // 3. Création de la Fenêtre Principale
function Library:CreateWindow(Settings)
    local TitleName = Settings.Name or "King UI"
    
    -- Protection GUI
    local KingGui = Instance.new("ScreenGui")
    KingGui.Name = "KingUI_Remastered"
    KingGui.ResetOnSpawn = false
    KingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Sécurité pour éviter la détection basique
    if syn and syn.protect_gui then
        syn.protect_gui(KingGui)
        KingGui.Parent = CoreGui
    elseif gethui then
        KingGui.Parent = gethui()
    else
        KingGui.Parent = CoreGui
    end

    -- MAIN FRAME
    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.fromOffset(650, 400) -- Taille de base (sera scalée)
    MainFrame.Position = UDim2.fromScale(0.5, 0.5)
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = THEME.WindowBG
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = KingGui
    
    CreateRounded(MainFrame, 8)
    CreateStroke(MainFrame, THEME.Outline, 1)
    MakeDraggable(MainFrame, MainFrame)

    -- *** LE FIX "RESPONSIVE" MAGIQUE ***
    -- On utilise UIScale pour redimensionner toute la fenêtre sans casser le layout
    local MainScale = Instance.new("UIScale")
    MainScale.Parent = MainFrame
    
    local function UpdateScale()
        local ViewportSize = workspace.CurrentCamera.ViewportSize
        local BaseSize = 1080 -- On se base sur un écran 1080p
        local ScaleFactor = ViewportSize.Y / BaseSize
        
        -- On garde une taille minimale lisible (ne descend pas en dessous de 0.8)
        if ScaleFactor < 0.7 then ScaleFactor = 0.7 end
        if ScaleFactor > 1.3 then ScaleFactor = 1.3 end
        
        MainScale.Scale = ScaleFactor * (DEFAULTS.GuiScale or 1)
    end
    
    workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateScale)
    UpdateScale() -- Premier appel

    -- SIDEBAR (Gauche)
    local Sidebar = Instance.new("Frame")
    Sidebar.Name = "Sidebar"
    Sidebar.Size = UDim2.new(0, 180, 1, 0)
    Sidebar.BackgroundColor3 = THEME.SidebarBG
    Sidebar.BorderSizePixel = 0
    Sidebar.Parent = MainFrame
    
    local SidebarCorner = Instance.new("UICorner")
    SidebarCorner.CornerRadius = UDim.new(0, 8)
    SidebarCorner.Parent = Sidebar
    
    -- Patch pour coin droit carré (pour coller au content)
    local SidebarPatch = Instance.new("Frame")
    SidebarPatch.Size = UDim2.new(0, 10, 1, 0)
    SidebarPatch.Position = UDim2.new(1, -10, 0, 0)
    SidebarPatch.BackgroundColor3 = THEME.SidebarBG
    SidebarPatch.BorderSizePixel = 0
    SidebarPatch.Parent = Sidebar
    
    -- Titre
    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Text = TitleName
    TitleLabel.Size = UDim2.new(1, -20, 0, 50)
    TitleLabel.Position = UDim2.new(0, 10, 0, 10)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.TextColor3 = THEME.Accent
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextSize = 22
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.Parent = Sidebar

    local Line = Instance.new("Frame")
    Line.Size = UDim2.new(1, 0, 0, 1)
    Line.Position = UDim2.new(0, 0, 0, 60)
    Line.BackgroundColor3 = THEME.Outline
    Line.BorderSizePixel = 0
    Line.Parent = Sidebar

    -- Container des boutons d'onglets
    local TabContainer = Instance.new("ScrollingFrame")
    TabContainer.Name = "TabContainer"
    TabContainer.Size = UDim2.new(1, 0, 1, -70)
    TabContainer.Position = UDim2.new(0, 0, 0, 70)
    TabContainer.BackgroundTransparency = 1
    TabContainer.ScrollBarThickness = 2
    TabContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabContainer.Parent = Sidebar

    local TabListLayout = Instance.new("UIListLayout")
    TabListLayout.Padding = UDim.new(0, 5)
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    TabListLayout.Parent = TabContainer

    -- CONTENT (Droite)
    local Content = Instance.new("Frame")
    Content.Name = "Content"
    Content.Size = UDim2.new(1, -180, 1, 0)
    Content.Position = UDim2.new(0, 180, 0, 0)
    Content.BackgroundColor3 = Color3.new(0,0,0) -- Invisible container
    Content.BackgroundTransparency = 1
    Content.Parent = MainFrame
    
    local ContentPadding = Instance.new("UIPadding")
    ContentPadding.PaddingTop = UDim.new(0, 15)
    ContentPadding.PaddingLeft = UDim.new(0, 15)
    ContentPadding.PaddingRight = UDim.new(0, 15)
    ContentPadding.PaddingBottom = UDim.new(0, 15)
    ContentPadding.Parent = Content

    -- Gestionnaire de navigation
    local Tabs = {}
    local FirstTab = true

    local Window = {}

    function Window:Tab(TabName)
        local Tab = {}
        
        -- Bouton Tab (Sidebar)
        local TabBtn = Instance.new("TextButton")
        TabBtn.Name = TabName
        TabBtn.Size = UDim2.new(0.85, 0, 0, 35)
        TabBtn.BackgroundColor3 = THEME.WindowBG
        TabBtn.BackgroundTransparency = 1
        TabBtn.Text = ""
        TabBtn.AutoButtonColor = false
        TabBtn.Parent = TabContainer
        
        CreateRounded(TabBtn, 6)

        local TabBtnTitle = Instance.new("TextLabel")
        TabBtnTitle.Size = UDim2.new(1, -15, 1, 0)
        TabBtnTitle.Position = UDim2.new(0, 15, 0, 0)
        TabBtnTitle.BackgroundTransparency = 1
        TabBtnTitle.Text = TabName
        TabBtnTitle.TextColor3 = THEME.TextDark
        TabBtnTitle.Font = Enum.Font.GothamMedium
        TabBtnTitle.TextSize = 14
        TabBtnTitle.TextXAlignment = Enum.TextXAlignment.Left
        TabBtnTitle.Parent = TabBtn

        -- Page (Contenu)
        local TabPage = Instance.new("ScrollingFrame")
        TabPage.Name = TabName.."_Page"
        TabPage.Size = UDim2.new(1, 0, 1, 0)
        TabPage.BackgroundTransparency = 1
        TabPage.ScrollBarThickness = 3
        TabPage.ScrollBarImageColor3 = THEME.Accent
        TabPage.Visible = false
        TabPage.Parent = Content
        
        local PageLayout = Instance.new("UIListLayout")
        PageLayout.Padding = UDim.new(0, 8)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Parent = TabPage

        -- Ajustement automatique du scroll
        PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            TabPage.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 10)
        end)

        -- Fonction d'activation
        local function Activate()
            for _, t in pairs(Tabs) do
                TweenService:Create(t.Btn, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
                TweenService:Create(t.Title, TweenInfo.new(0.2), {TextColor3 = THEME.TextDark}):Play()
                t.Page.Visible = false
            end
            TweenService:Create(TabBtn, TweenInfo.new(0.2), {BackgroundTransparency = 0.9}):Play() -- Léger fond actif
            TweenService:Create(TabBtnTitle, TweenInfo.new(0.2), {TextColor3 = THEME.TextLight}):Play()
            TabPage.Visible = true
        end

        TabBtn.MouseButton1Click:Connect(Activate)

        -- Sauvegarde
        table.insert(Tabs, {Btn = TabBtn, Title = TabBtnTitle, Page = TabPage})

        if FirstTab then
            Activate()
            FirstTab = false
        end

        -- // ELEMENTS //

        function Tab:Label(Info)
            local LabelFrame = Instance.new("Frame")
            LabelFrame.Size = UDim2.new(1, 0, 0, 30)
            LabelFrame.BackgroundTransparency = 1
            LabelFrame.Parent = TabPage

            local Text = Instance.new("TextLabel")
            Text.Size = UDim2.new(1, 0, 1, 0)
            Text.BackgroundTransparency = 1
            Text.Text = Info.Text or "Label"
            Text.TextColor3 = THEME.TextLight
            Text.Font = Enum.Font.GothamBold
            Text.TextSize = 14
            Text.TextXAlignment = Info.Align or Enum.TextXAlignment.Left
            Text.Parent = LabelFrame
            return LabelFrame
        end
        
        function Tab:Spacer(size)
           local Space = Instance.new("Frame")
           Space.Size = UDim2.new(1,0,0, size or 10)
           Space.BackgroundTransparency = 1
           Space.Parent = TabPage
        end

        function Tab:Button(Info)
            local BtnName = Info.Name or "Button"
            local Callback = Info.Callback or function() end

            local BtnFrame = Instance.new("Frame")
            BtnFrame.Size = UDim2.new(1, 0, 0, 38)
            BtnFrame.BackgroundColor3 = THEME.SidebarBG
            BtnFrame.Parent = TabPage
            
            CreateRounded(BtnFrame, 6)
            CreateStroke(BtnFrame, THEME.Outline, 1)

            local Btn = Instance.new("TextButton")
            Btn.Size = UDim2.new(1, 0, 1, 0)
            Btn.BackgroundTransparency = 1
            Btn.Text = BtnName
            Btn.TextColor3 = THEME.TextLight
            Btn.Font = Enum.Font.Gotham
            Btn.TextSize = 13
            Btn.Parent = BtnFrame

            Btn.MouseButton1Click:Connect(function()
                -- Animation de clic
                local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, true)
                TweenService:Create(BtnFrame, tweenInfo, {BackgroundColor3 = THEME.Accent}):Play()
                Callback()
            end)
        end

        function Tab:Toggle(Info)
            local TName = Info.Name or "Toggle"
            local Default = Info.Default or false
            local Callback = Info.Callback or function() end
            local Flag = Info.Flag or TName

            local CurrentValue = Default
            Library.Flags[Flag] = Default

            local ToggleFrame = Instance.new("Frame")
            ToggleFrame.Size = UDim2.new(1, 0, 0, 38)
            ToggleFrame.BackgroundColor3 = THEME.SidebarBG
            ToggleFrame.Parent = TabPage
            CreateRounded(ToggleFrame, 6)
            CreateStroke(ToggleFrame, THEME.Outline, 1)

            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(0.7, 0, 1, 0)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.BackgroundTransparency = 1
            Label.Text = TName
            Label.TextColor3 = THEME.TextLight
            Label.Font = Enum.Font.Gotham
            Label.TextSize = 13
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = ToggleFrame

            -- Switch Container
            local SwitchBg = Instance.new("Frame")
            SwitchBg.Size = UDim2.new(0, 44, 0, 22)
            SwitchBg.Position = UDim2.new(1, -54, 0.5, -11)
            SwitchBg.BackgroundColor3 = Default and THEME.Accent or THEME.WindowBG
            SwitchBg.Parent = ToggleFrame
            CreateRounded(SwitchBg, 12)
            
            local SwitchDot = Instance.new("Frame")
            SwitchDot.Size = UDim2.new(0, 18, 0, 18)
            SwitchDot.Position = Default and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
            SwitchDot.BackgroundColor3 = THEME.TextLight
            SwitchDot.Parent = SwitchBg
            CreateRounded(SwitchDot, 9)

            local Trigger = Instance.new("TextButton")
            Trigger.Size = UDim2.new(1, 0, 1, 0)
            Trigger.BackgroundTransparency = 1
            Trigger.Text = ""
            Trigger.Parent = ToggleFrame

            Trigger.MouseButton1Click:Connect(function()
                CurrentValue = not CurrentValue
                Library.Flags[Flag] = CurrentValue
                
                -- Animation
                local targetColor = CurrentValue and THEME.Accent or THEME.WindowBG
                local targetPos = CurrentValue and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
                
                TweenService:Create(SwitchBg, TweenInfo.new(0.2), {BackgroundColor3 = targetColor}):Play()
                TweenService:Create(SwitchDot, TweenInfo.new(0.2), {Position = targetPos}):Play()
                
                Callback(CurrentValue)
            end)
        end

        function Tab:Slider(Info)
            local SName = Info.Name or "Slider"
            local Min = Info.Min or 0
            local Max = Info.Max or 100
            local Default = Info.Default or Min
            local Callback = Info.Callback or function() end
            
            -- Sécurité pour éviter division par zéro
            if Min == Max then Max = Min + 1 end
            
            local Value = Default
            local Dragging = false

            local SliderFrame = Instance.new("Frame")
            SliderFrame.Size = UDim2.new(1, 0, 0, 50) -- Plus haut pour accomodate le slider
            SliderFrame.BackgroundColor3 = THEME.SidebarBG
            SliderFrame.Parent = TabPage
            CreateRounded(SliderFrame, 6)
            CreateStroke(SliderFrame, THEME.Outline, 1)

            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(1, -20, 0, 25)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.BackgroundTransparency = 1
            Label.Text = SName
            Label.TextColor3 = THEME.TextLight
            Label.Font = Enum.Font.Gotham
            Label.TextSize = 13
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = SliderFrame

            local ValLabel = Instance.new("TextLabel")
            ValLabel.Size = UDim2.new(0, 50, 0, 25)
            ValLabel.Position = UDim2.new(1, -60, 0, 0)
            ValLabel.BackgroundTransparency = 1
            ValLabel.Text = tostring(Value)
            ValLabel.TextColor3 = THEME.TextDark
            ValLabel.Font = Enum.Font.Gotham
            ValLabel.TextSize = 13
            ValLabel.TextXAlignment = Enum.TextXAlignment.Right
            ValLabel.Parent = SliderFrame

            -- Bar Background
            local SliderBg = Instance.new("Frame")
            SliderBg.Size = UDim2.new(1, -20, 0, 6)
            SliderBg.Position = UDim2.new(0, 10, 0, 32)
            SliderBg.BackgroundColor3 = THEME.WindowBG
            SliderBg.Parent = SliderFrame
            CreateRounded(SliderBg, 3)

            local SliderFill = Instance.new("Frame")
            SliderFill.Size = UDim2.new((Value - Min) / (Max - Min), 0, 1, 0)
            SliderFill.BackgroundColor3 = THEME.Accent
            SliderFill.Parent = SliderBg
            CreateRounded(SliderFill, 3)

            local Trigger = Instance.new("TextButton")
            Trigger.Size = UDim2.new(1, 0, 1, 0) -- Couvre toute la barre
            Trigger.BackgroundTransparency = 1
            Trigger.Text = ""
            Trigger.Parent = SliderBg

            local function UpdateSlide(input)
                local SizeX = math.clamp((input.Position.X - SliderBg.AbsolutePosition.X) / SliderBg.AbsoluteSize.X, 0, 1)
                local NewValue = math.floor(Min + ((Max - Min) * SizeX))
                
                Value = NewValue
                ValLabel.Text = tostring(Value)
                TweenService:Create(SliderFill, TweenInfo.new(0.05), {Size = UDim2.new(SizeX, 0, 1, 0)}):Play()
                Callback(Value)
            end

            Trigger.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    UpdateSlide(input)
                end
            end)

            UserInputService.InputChanged:Connect(function(input)
                if Dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    UpdateSlide(input)
                end
            end)

            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = false
                end
            end)
        end

        function Tab:Input(Info)
            local IName = Info.Name or "Input"
            local Default = Info.Default or ""
            local PlaceHolder = Info.Placeholder or "Type here..."
            local Callback = Info.Callback or function() end

            local InputFrame = Instance.new("Frame")
            InputFrame.Size = UDim2.new(1, 0, 0, 38)
            InputFrame.BackgroundColor3 = THEME.SidebarBG
            InputFrame.Parent = TabPage
            CreateRounded(InputFrame, 6)
            CreateStroke(InputFrame, THEME.Outline, 1)

            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(0, 100, 1, 0)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.BackgroundTransparency = 1
            Label.Text = IName
            Label.TextColor3 = THEME.TextLight
            Label.Font = Enum.Font.Gotham
            Label.TextSize = 13
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.Parent = InputFrame

            local TextBox = Instance.new("TextBox")
            TextBox.Size = UDim2.new(0, 120, 0, 24)
            TextBox.Position = UDim2.new(1, -130, 0.5, -12)
            TextBox.BackgroundColor3 = THEME.WindowBG
            TextBox.Text = Default
            TextBox.PlaceholderText = PlaceHolder
            TextBox.TextColor3 = THEME.TextLight
            TextBox.Font = Enum.Font.Gotham
            TextBox.TextSize = 13
            TextBox.Parent = InputFrame
            CreateRounded(TextBox, 4)

            TextBox.FocusLost:Connect(function(enterPressed)
                Callback(TextBox.Text)
            end)
        end
        
        -- Dropdown Simple (ZIndex Fix)
        function Tab:Dropdown(Info)
            local DName = Info.Name or "Dropdown"
            local Options = Info.Options or {}
            local Default = Info.Default or Options[1]
            local Callback = Info.Callback or function() end
            
            local DropFrame = Instance.new("Frame")
            DropFrame.Size = UDim2.new(1, 0, 0, 38) -- Taille fermée
            DropFrame.BackgroundColor3 = THEME.SidebarBG
            DropFrame.Parent = TabPage
            DropFrame.ClipsDescendants = true -- Important pour l'animation
            DropFrame.ZIndex = 2
            CreateRounded(DropFrame, 6)
            CreateStroke(DropFrame, THEME.Outline, 1)
            
            local Label = Instance.new("TextLabel")
            Label.Size = UDim2.new(0.5, 0, 0, 38)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.BackgroundTransparency = 1
            Label.Text = DName
            Label.TextColor3 = THEME.TextLight
            Label.Font = Enum.Font.Gotham
            Label.TextSize = 13
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 3
            Label.Parent = DropFrame
            
            local SelectedText = Instance.new("TextLabel")
            SelectedText.Size = UDim2.new(0.5, -35, 0, 38)
            SelectedText.Position = UDim2.new(0.5, 0, 0, 0)
            SelectedText.BackgroundTransparency = 1
            SelectedText.Text = Default
            SelectedText.TextColor3 = THEME.Accent
            SelectedText.Font = Enum.Font.GothamBold
            SelectedText.TextSize = 13
            SelectedText.TextXAlignment = Enum.TextXAlignment.Right
            SelectedText.ZIndex = 3
            SelectedText.Parent = DropFrame
            
            local Arrow = Instance.new("TextLabel")
            Arrow.Size = UDim2.new(0, 30, 0, 38)
            Arrow.Position = UDim2.new(1, -30, 0, 0)
            Arrow.BackgroundTransparency = 1
            Arrow.Text = "v"
            Arrow.TextColor3 = THEME.TextDark
            Arrow.Font = Enum.Font.Gotham
            Arrow.ZIndex = 3
            Arrow.Parent = DropFrame
            
            local Trigger = Instance.new("TextButton")
            Trigger.Size = UDim2.new(1,0,0,38)
            Trigger.BackgroundTransparency = 1
            Trigger.Text = ""
            Trigger.ZIndex = 4
            Trigger.Parent = DropFrame
            
            -- Liste des options
            local OptionContainer = Instance.new("Frame")
            OptionContainer.Size = UDim2.new(1, -4, 0, 0) -- Hauteur dynamique
            OptionContainer.Position = UDim2.new(0, 2, 0, 40)
            OptionContainer.BackgroundColor3 = THEME.WindowBG
            OptionContainer.ZIndex = 5
            OptionContainer.Parent = DropFrame
            CreateRounded(OptionContainer, 4)
            
            local OptionList = Instance.new("UIListLayout")
            OptionList.Padding = UDim.new(0, 2)
            OptionList.SortOrder = Enum.SortOrder.LayoutOrder
            OptionList.Parent = OptionContainer
            
            local Open = false
            local DropHeight = 40 + (#Options * 26) + 4
            
            Trigger.MouseButton1Click:Connect(function()
                Open = not Open
                
                if Open then
                     -- On ouvre
                    Arrow.Rotation = 180
                    TweenService:Create(DropFrame, TweenInfo.new(0.3), {Size = UDim2.new(1, 0, 0, DropHeight)}):Play()
                else
                    -- On ferme
                    Arrow.Rotation = 0
                    TweenService:Create(DropFrame, TweenInfo.new(0.3), {Size = UDim2.new(1, 0, 0, 38)}):Play()
                end
            end)
            
            for _, opt in pairs(Options) do
                local OptBtn = Instance.new("TextButton")
                OptBtn.Size = UDim2.new(1, 0, 0, 24)
                OptBtn.BackgroundColor3 = THEME.SidebarBG
                OptBtn.BackgroundTransparency = 0.5
                OptBtn.Text = opt
                OptBtn.TextColor3 = THEME.TextLight
                OptBtn.Font = Enum.Font.Gotham
                OptBtn.TextSize = 12
                OptBtn.ZIndex = 6
                OptBtn.Parent = OptionContainer
                CreateRounded(OptBtn, 3)
                
                OptBtn.MouseButton1Click:Connect(function()
                    SelectedText.Text = opt
                    Open = false
                    Arrow.Rotation = 0
                    TweenService:Create(DropFrame, TweenInfo.new(0.3), {Size = UDim2.new(1, 0, 0, 38)}):Play()
                    Callback(opt)
                end)
            end
        end

        return Tab
    end
    
    -- Toggle UI keybind
    UserInputService.InputBegan:Connect(function(input, gpe)
        if not gpe and input.KeyCode == DEFAULTS.ToggleKey then
            Library.Opened = not Library.Opened
            KingGui.Enabled = Library.Opened
        end
    end)
    
    return Window
end

return Library
