-- ================================================================= --
--     KING UI - REMASTERED "UNIVERSAL V8" (Mobile Optimized)
--     >> DESIGN MATCH: IMAGE REFERENCE
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- // 1. Theme (Adapté à l'image fournie)
local Theme = {
    WindowBG    = Color3.fromRGB(32, 30, 38),      -- Fond principal (droite)
    SidebarBG   = Color3.fromRGB(22, 20, 28),      -- Fond sidebar (gauche)
    ItemBG      = Color3.fromRGB(45, 42, 55),      -- Fond des éléments (boutons/inputs)
    ItemStroke  = Color3.fromRGB(60, 55, 75),      -- Contour subtil
    AccentStart = Color3.fromRGB(160, 60, 220),    -- Violet vif (Gradient début)
    AccentEnd   = Color3.fromRGB(80, 160, 255),    -- Bleu clair (Gradient fin)
    Text        = Color3.fromRGB(240, 240, 245),
    TextSub     = Color3.fromRGB(160, 155, 175),   -- Texte secondaire
    Red         = Color3.fromRGB(255, 80, 80)
}

Library.Flags = {}
Library.FolderName = "KingGenConfig"
Library.CurrentConfig = "config.json"
Library.ActiveLoops = {} 

local KINGHUB_DECAL_ID = "rbxassetid://90251722897707" -- Ton logo

-- // 2. Helper Functions
local function GetTextSize(text, font, size)
    return game:GetService("TextService"):GetTextSize(text, size, font, Vector2.new(10000, 10000))
end

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

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
            local Delta = input.Position - DragStart
            object.Position = UDim2.new(
                StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, 
                StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y
            )
        end
    end)
end

-- // 3. Main Library
function Library:Window(options)
    local ConfigName = options.ConfigName or "default"

    -- Check if UI exists
    if CoreGui:FindFirstChild("KingGenUI_V8") then 
        CoreGui.KingGenUI_V8:Destroy()
    end

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KingGenUI_V8"
    ScreenGui.Parent = CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
    ScreenGui.ResetOnSpawn = false

    -- Main Container
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.fromOffset(600, 380) -- Taille de base
    MainFrame.Position = UDim2.fromScale(0.5, 0.5)
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Theme.WindowBG
    MainFrame.BorderSizePixel = 0
    
    local MainCorner = Instance.new("UICorner", MainFrame)
    MainCorner.CornerRadius = UDim.new(0, 12)

    -- Constraints pour Mobile (Empêche d'être trop grand sur petit écran)
    local SizeConst = Instance.new("UISizeConstraint", MainFrame)
    SizeConst.MinSize = Vector2.new(450, 300)
    SizeConst.MaxSize = Vector2.new(700, 500)

    -- Shadow
    local Shadow = Instance.new("ImageLabel", MainFrame)
    Shadow.Name = "Shadow"
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.BackgroundTransparency = 1
    Shadow.Position = UDim2.fromScale(0.5, 0.5)
    Shadow.Size = UDim2.new(1, 140, 1, 140)
    Shadow.ZIndex = -1
    Shadow.Image = "rbxassetid://6014261993"
    Shadow.ImageColor3 = Color3.new(0, 0, 0)
    Shadow.ImageTransparency = 0.4
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(49, 49, 450, 450)

    MakeDraggable(MainFrame, MainFrame) -- Toute la frame est draggable si on touche le vide, mais on ajoutera une sidebar active

    -- [[ Sidebar Section ]]
    local Sidebar = Instance.new("Frame", MainFrame)
    Sidebar.Name = "Sidebar"
    Sidebar.Size = UDim2.new(0, 160, 1, 0)
    Sidebar.BackgroundColor3 = Theme.SidebarBG
    Sidebar.BorderSizePixel = 0
    Sidebar.ZIndex = 2
    
    local SidebarCorner = Instance.new("UICorner", Sidebar)
    SidebarCorner.CornerRadius = UDim.new(0, 12)
    
    -- Fix: Corner clip pour que le côté droit soit droit
    local SidebarFix = Instance.new("Frame", Sidebar)
    SidebarFix.Size = UDim2.new(0, 10, 1, 0)
    SidebarFix.Position = UDim2.new(1, -10, 0, 0)
    SidebarFix.BackgroundColor3 = Theme.SidebarBG
    SidebarFix.BorderSizePixel = 0
    SidebarFix.ZIndex = 2

    -- Logo & Title Area
    local LogoContainer = Instance.new("Frame", Sidebar)
    LogoContainer.Size = UDim2.new(1, 0, 0, 80)
    LogoContainer.BackgroundTransparency = 1
    LogoContainer.ZIndex = 3

    local LogoIcon = Instance.new("ImageLabel", LogoContainer)
    LogoIcon.Size = UDim2.fromOffset(40, 40)
    LogoIcon.Position = UDim2.fromOffset(15, 20)
    LogoIcon.Image = KINGHUB_DECAL_ID
    LogoIcon.BackgroundTransparency = 1
    
    -- Gradient sur le logo
    local LogoGradient = Instance.new("UIGradient", LogoIcon)
    LogoGradient.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd)
    LogoGradient.Rotation = 45

    local TitleLabel = Instance.new("TextLabel", LogoContainer)
    TitleLabel.Text = "King Gen"
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextSize = 18
    TitleLabel.TextColor3 = Theme.Text
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Position = UDim2.fromOffset(65, 22)
    TitleLabel.Size = UDim2.fromOffset(80, 20)
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local SubTitleLabel = Instance.new("TextLabel", LogoContainer)
    SubTitleLabel.Text = "Best HUB"
    SubTitleLabel.Font = Enum.Font.Gotham
    SubTitleLabel.TextSize = 12
    SubTitleLabel.TextColor3 = Theme.AccentStart
    SubTitleLabel.BackgroundTransparency = 1
    SubTitleLabel.Position = UDim2.fromOffset(65, 42)
    SubTitleLabel.Size = UDim2.fromOffset(80, 15)
    SubTitleLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- [[ Tab Container ]]
    local TabContainer = Instance.new("ScrollingFrame", Sidebar)
    TabContainer.Size = UDim2.new(1, 0, 1, -90)
    TabContainer.Position = UDim2.new(0, 0, 0, 90)
    TabContainer.BackgroundTransparency = 1
    TabContainer.ScrollBarThickness = 2
    TabContainer.ZIndex = 3
    TabContainer.CanvasSize = UDim2.new(0,0,0,0)
    TabContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
    
    local TabListLayout = Instance.new("UIListLayout", TabContainer)
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.Padding = UDim.new(0, 6)
    
    local TabPadding = Instance.new("UIPadding", TabContainer)
    TabPadding.PaddingLeft = UDim.new(0, 10)
    TabPadding.PaddingTop = UDim.new(0, 10)

    -- [[ Content Area ]]
    local ContentArea = Instance.new("Frame", MainFrame)
    ContentArea.Name = "ContentArea"
    ContentArea.Size = UDim2.new(1, -160, 1, 0)
    ContentArea.Position = UDim2.new(0, 160, 0, 0)
    ContentArea.BackgroundTransparency = 1
    ContentArea.ClipsDescendants = true

    -- Close Button (Top Right)
    local CloseBtn = Instance.new("TextButton", MainFrame)
    CloseBtn.Size = UDim2.fromOffset(30, 30)
    CloseBtn.Position = UDim2.new(1, -35, 0, 10)
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.Text = "×" -- Symbole X
    CloseBtn.Font = Enum.Font.GothamMedium
    CloseBtn.TextSize = 24
    CloseBtn.TextColor3 = Theme.TextSub
    CloseBtn.ZIndex = 10
    
    CloseBtn.MouseButton1Click:Connect(function()
        -- Animation simple de fermeture
        TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0,0,0,0), BackgroundTransparency = 1}):Play()
        task.wait(0.3)
        ScreenGui:Destroy()
    end)
    
    -- Minimiser en Mobile Button (Optionnel)
    local ToggleUIBtn = Instance.new("ImageButton", ScreenGui)
    ToggleUIBtn.Name = "ToggleUI"
    ToggleUIBtn.Size = UDim2.fromOffset(50, 50)
    ToggleUIBtn.Position = UDim2.new(0.9, -50, 0.1, 0) -- Position mobile safe
    ToggleUIBtn.Image = KINGHUB_DECAL_ID
    ToggleUIBtn.BackgroundColor3 = Theme.SidebarBG
    ToggleUIBtn.Visible = false -- Caché par défaut
    Instance.new("UICorner", ToggleUIBtn).CornerRadius = UDim.new(0, 12)
    
    -- [[ Logic Variables ]]
    local Tabs = {}
    local FirstTab = true

    local WindowAPI = {}

    function WindowAPI:Tab(name)
        -- Tab Button
        local TabBtn = Instance.new("TextButton", TabContainer)
        TabBtn.Size = UDim2.new(1, -20, 0, 38)
        TabBtn.BackgroundTransparency = 1
        TabBtn.Text = name
        TabBtn.Font = Enum.Font.GothamMedium
        TabBtn.TextSize = 14
        TabBtn.TextColor3 = Theme.TextSub
        TabBtn.TextXAlignment = Enum.TextXAlignment.Left
        TabBtn.ZIndex = 4
        
        local TabBtnPadding = Instance.new("UIPadding", TabBtn)
        TabBtnPadding.PaddingLeft = UDim.new(0, 12)

        local TabBtnCorner = Instance.new("UICorner", TabBtn)
        TabBtnCorner.CornerRadius = UDim.new(0, 8)
        
        -- Indicateur visuel (Le trait violet ou fond)
        local TabIndicator = Instance.new("Frame", TabBtn)
        TabIndicator.Size = UDim2.new(0, 4, 0.6, 0)
        TabIndicator.Position = UDim2.new(0, -6, 0.2, 0) -- Caché à gauche
        TabIndicator.BackgroundColor3 = Theme.AccentStart
        TabIndicator.Visible = false
        Instance.new("UICorner", TabIndicator).CornerRadius = UDim.new(0, 4)

        -- Page
        local Page = Instance.new("ScrollingFrame", ContentArea)
        Page.Name = name .. "Page"
        Page.Size = UDim2.new(1, 0, 1, -50) -- Laisse place au header
        Page.Position = UDim2.new(0, 0, 0, 50)
        Page.BackgroundTransparency = 1
        Page.ScrollBarThickness = 4
        Page.ScrollBarImageColor3 = Theme.AccentEnd
        Page.Visible = false
        Page.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Page.CanvasSize = UDim2.new(0,0,0,0)
        
        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 10)
        
        local PagePadding = Instance.new("UIPadding", Page)
        PagePadding.PaddingLeft = UDim.new(0, 20)
        PagePadding.PaddingRight = UDim.new(0, 20)
        PagePadding.PaddingTop = UDim.new(0, 10)
        PagePadding.PaddingBottom = UDim.new(0, 20)
        
        -- Header Title dans la page
        local PageTitle = Instance.new("TextLabel", ContentArea)
        PageTitle.Text = name
        PageTitle.Font = Enum.Font.GothamBold
        PageTitle.TextSize = 20
        PageTitle.TextColor3 = Theme.Text
        PageTitle.BackgroundTransparency = 1
        PageTitle.Position = UDim2.new(0, 20, 0, 15)
        PageTitle.Size = UDim2.new(1, -50, 0, 30)
        PageTitle.TextXAlignment = Enum.TextXAlignment.Left
        PageTitle.Visible = false

        local function Activate()
            for _, t in pairs(Tabs) do
                TweenService:Create(t.Btn, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
                TweenService:Create(t.Btn, TweenInfo.new(0.2), {TextColor3 = Theme.TextSub}):Play()
                t.Page.Visible = false
                t.Title.Visible = false
                t.Indicator.Visible = false
            end
            
            TweenService:Create(TabBtn, TweenInfo.new(0.2), {BackgroundTransparency = 0.9, BackgroundColor3 = Theme.AccentStart}):Play() -- Léger fond violet
            TweenService:Create(TabBtn, TweenInfo.new(0.2), {TextColor3 = Theme.Text}):Play()
            TabIndicator.Visible = true
            Page.Visible = true
            PageTitle.Visible = true
        end

        TabBtn.MouseButton1Click:Connect(Activate)

        table.insert(Tabs, {Btn = TabBtn, Page = Page, Title = PageTitle, Indicator = TabIndicator})

        if FirstTab then
            Activate()
            FirstTab = false
        end

        local Elements = {}

        -- // ELEMENT: DROPDOWN (Style Image)
        function Elements:Dropdown(options)
            local Name = options.Name or "Dropdown"
            local List = options.List or {}
            local Callback = options.Callback or function() end
            
            local DropFrame = Instance.new("Frame", Page)
            DropFrame.Size = UDim2.new(1, 0, 0, 65) -- Hauteur totale
            DropFrame.BackgroundTransparency = 1
            
            local Label = Instance.new("TextLabel", DropFrame)
            Label.Text = Name
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local Button = Instance.new("TextButton", DropFrame)
            Button.Size = UDim2.new(1, 0, 0, 38)
            Button.Position = UDim2.new(0, 0, 0, 25)
            Button.BackgroundColor3 = Theme.ItemBG
            Button.Text = options.Default or List[1] or "Select..."
            Button.Font = Enum.Font.Gotham
            Button.TextColor3 = Theme.TextSub
            Button.TextSize = 13
            Button.TextXAlignment = Enum.TextXAlignment.Left
            Button.AutoButtonColor = false
            
            local BtnPadding = Instance.new("UIPadding", Button)
            BtnPadding.PaddingLeft = UDim.new(0, 12)
            
            local BtnCorner = Instance.new("UICorner", Button)
            BtnCorner.CornerRadius = UDim.new(0, 8)
            
            local Arrow = Instance.new("TextLabel", Button)
            Arrow.Text = "v"
            Arrow.Font = Enum.Font.GothamBold
            Arrow.TextColor3 = Theme.TextSub
            Arrow.BackgroundTransparency = 1
            Arrow.Size = UDim2.new(0, 30, 1, 0)
            Arrow.Position = UDim2.new(1, -30, 0, 0)
            Arrow.TextSize = 12

            -- Floating List Logic
            local ListFrame = Instance.new("ScrollingFrame")
            ListFrame.Name = "DropdownList"
            ListFrame.BackgroundColor3 = Theme.ItemBG
            ListFrame.BorderSizePixel = 0
            ListFrame.Size = UDim2.new(0, 0, 0, 0) -- Animera
            ListFrame.Visible = false
            ListFrame.ZIndex = 100
            ListFrame.ScrollBarThickness = 2
            ListFrame.ScrollBarImageColor3 = Theme.AccentStart
            Instance.new("UICorner", ListFrame).CornerRadius = UDim.new(0, 8)
            
            local ListLayout = Instance.new("UIListLayout", ListFrame)
            ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            
            local IsOpen = false

            local function Close()
                IsOpen = false
                ListFrame.Visible = false
                ListFrame.Parent = nil
                Arrow.Rotation = 0
            end

            local function RefreshList()
                for _, v in pairs(ListFrame:GetChildren()) do
                    if v:IsA("TextButton") then v:Destroy() end
                end
                
                for _, item in ipairs(List) do
                    local ItemBtn = Instance.new("TextButton", ListFrame)
                    ItemBtn.Size = UDim2.new(1, 0, 0, 30)
                    ItemBtn.BackgroundTransparency = 1
                    ItemBtn.Text = item
                    ItemBtn.TextColor3 = Theme.TextSub
                    ItemBtn.Font = Enum.Font.Gotham
                    ItemBtn.TextSize = 13
                    ItemBtn.ZIndex = 101
                    
                    ItemBtn.MouseEnter:Connect(function() ItemBtn.TextColor3 = Theme.AccentStart end)
                    ItemBtn.MouseLeave:Connect(function() ItemBtn.TextColor3 = Theme.TextSub end)
                    
                    ItemBtn.MouseButton1Click:Connect(function()
                        Button.Text = item
                        Callback(item)
                        Close()
                    end)
                end
                ListFrame.CanvasSize = UDim2.new(0, 0, 0, ListLayout.AbsoluteContentSize.Y)
            end

            Button.MouseButton1Click:Connect(function()
                IsOpen = not IsOpen
                if IsOpen then
                    RefreshList()
                    ListFrame.Parent = ScreenGui -- Parent to ScreenGui to avoid clipping
                    local absPos = Button.AbsolutePosition
                    local absSize = Button.AbsoluteSize
                    
                    ListFrame.Position = UDim2.fromOffset(absPos.X, absPos.Y + absSize.Y + 5)
                    ListFrame.Size = UDim2.fromOffset(absSize.X, 150)
                    ListFrame.Visible = true
                    Arrow.Rotation = 180
                    
                    -- Update Pos on frame move
                    local con; con = RunService.RenderStepped:Connect(function()
                        if not IsOpen or not ListFrame.Parent then con:Disconnect() return end
                        local newPos = Button.AbsolutePosition
                        ListFrame.Position = UDim2.fromOffset(newPos.X, newPos.Y + Button.AbsoluteSize.Y + 5)
                    end)
                else
                    Close()
                end
            end)
        end
        
        -- // ELEMENT: SLIDER (Style Image)
        function Elements:Slider(options)
            local Name = options.Name or "Slider"
            local Min = options.Min or 0
            local Max = options.Max or 100
            local Default = options.Default or Min
            local Callback = options.Callback or function() end
            
            local SliderFrame = Instance.new("Frame", Page)
            SliderFrame.Size = UDim2.new(1, 0, 0, 60)
            SliderFrame.BackgroundTransparency = 1
            
            local Label = Instance.new("TextLabel", SliderFrame)
            Label.Text = Name
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            
            local ValueLabel = Instance.new("TextLabel", SliderFrame)
            ValueLabel.Text = tostring(Default)
            ValueLabel.Font = Enum.Font.Gotham
            ValueLabel.TextSize = 14
            ValueLabel.TextColor3 = Theme.AccentEnd
            ValueLabel.Size = UDim2.new(1, 0, 0, 20)
            ValueLabel.BackgroundTransparency = 1
            ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
            
            -- Slider Bar Bg
            local BarBG = Instance.new("Frame", SliderFrame)
            BarBG.Size = UDim2.new(1, 0, 0, 6) -- Thin line
            BarBG.Position = UDim2.new(0, 0, 0, 35)
            BarBG.BackgroundColor3 = Theme.ItemBG
            Instance.new("UICorner", BarBG).CornerRadius = UDim.new(1, 0)
            
            -- Fill
            local Fill = Instance.new("Frame", BarBG)
            Fill.Size = UDim2.new(0, 0, 1, 0)
            Fill.BackgroundColor3 = Theme.AccentStart
            Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)
            
            local FillGradient = Instance.new("UIGradient", Fill)
            FillGradient.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd)
            
            -- Knob (Rond)
            local Knob = Instance.new("Frame", Fill)
            Knob.Size = UDim2.fromOffset(16, 16)
            Knob.AnchorPoint = Vector2.new(0.5, 0.5)
            Knob.Position = UDim2.new(1, 0, 0.5, 0)
            Knob.BackgroundColor3 = Color3.new(1,1,1)
            Instance.new("UICorner", Knob).CornerRadius = UDim.new(1, 0)
            
            -- Logic
            local function Update(input)
                local SizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1)
                local Value = math.floor(Min + ((Max - Min) * SizeX))
                
                TweenService:Create(Fill, TweenInfo.new(0.1), {Size = UDim2.fromScale(SizeX, 1)}):Play()
                ValueLabel.Text = tostring(Value)
                Callback(Value)
            end
            
            local Dragging = false
            BarBG.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    Update(input)
                end
            end)
            
            UserInputService.InputChanged:Connect(function(input)
                if Dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    Update(input)
                end
            end)
            
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = false
                end
            end)
            
            -- Init
            local percent = (Default - Min) / (Max - Min)
            Fill.Size = UDim2.fromScale(percent, 1)
        end
        
        -- // ELEMENT: TOGGLE (Switch Style)
        function Elements:Toggle(options)
            local Name = options.Name or "Toggle"
            local Default = options.Default or false
            local Callback = options.Callback or function() end
            
            local ToggleFrame = Instance.new("Frame", Page)
            ToggleFrame.Size = UDim2.new(1, 0, 0, 40)
            ToggleFrame.BackgroundTransparency = 1
            
            local Label = Instance.new("TextLabel", ToggleFrame)
            Label.Text = Name
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.Size = UDim2.new(0.7, 0, 1, 0)
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            
            local Switch = Instance.new("TextButton", ToggleFrame)
            Switch.Text = ""
            Switch.Size = UDim2.fromOffset(44, 24)
            Switch.Position = UDim2.new(1, -44, 0.5, -12)
            Switch.BackgroundColor3 = Theme.ItemBG
            Switch.AutoButtonColor = false
            
            local SwitchCorner = Instance.new("UICorner", Switch)
            SwitchCorner.CornerRadius = UDim.new(1, 0)
            
            local Circle = Instance.new("Frame", Switch)
            Circle.Size = UDim2.fromOffset(18, 18)
            Circle.Position = UDim2.new(0, 3, 0.5, -9)
            Circle.BackgroundColor3 = Theme.TextSub
            Instance.new("UICorner", Circle).CornerRadius = UDim.new(1, 0)
            
            local Toggled = Default
            
            local function UpdateVisuals()
                if Toggled then
                    TweenService:Create(Switch, TweenInfo.new(0.2), {BackgroundColor3 = Theme.AccentStart}):Play()
                    TweenService:Create(Circle, TweenInfo.new(0.2), {Position = UDim2.new(1, -21, 0.5, -9), BackgroundColor3 = Color3.new(1,1,1)}):Play()
                else
                    TweenService:Create(Switch, TweenInfo.new(0.2), {BackgroundColor3 = Theme.ItemBG}):Play()
                    TweenService:Create(Circle, TweenInfo.new(0.2), {Position = UDim2.new(0, 3, 0.5, -9), BackgroundColor3 = Theme.TextSub}):Play()
                end
            end
            
            Switch.MouseButton1Click:Connect(function()
                Toggled = not Toggled
                UpdateVisuals()
                Callback(Toggled)
            end)
            
            UpdateVisuals()
        end

        return Elements
    end

    return WindowAPI
end

-- ================================================================= --
--     EXEMPLE D'UTILISATION (Basé sur ton image)
-- ================================================================= --

local Window = Library:Window({ConfigName = "KingGenConfig"})

local CreditsTab = Window:Tab("Credits")
local MainTab = Window:Tab("Main")
local MiscTab = Window:Tab("Misc")
local WebhookTab = Window:Tab("Webhook")
local SettingTab = Window:Tab("Setting") -- C'est l'onglet de l'image

-- Reproduction de l'image dans l'onglet Setting
SettingTab:Dropdown({
    Name = "Choose Map",
    List = {"Level 1", "Level 2", "Boss Arena", "Lobby"},
    Default = "Level 1",
    Callback = function(val)
        print("Map Selected:", val)
    end
})

-- Espace vide pour ressembler à la zone violette de l'image (si besoin d'info)
-- Ici j'ai mis un slider à la place pour l'exemple fonctionnel

SettingTab:Slider({
    Name = "TP Distance",
    Min = 0,
    Max = 100,
    Default = 15,
    Callback = function(val)
        print("TP Distance:", val)
    end
})

SettingTab:Dropdown({
    Name = "TP Method",
    List = {"Above", "Below", "Behind"},
    Default = "Above",
    Callback = function(val)
        print("Method:", val)
    end
})

SettingTab:Toggle({
    Name = "Auto Save Config",
    Default = true,
    Callback = function(val)
        print("Auto Save:", val)
    end
})

return Library
