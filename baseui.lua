-- ================================================================= --
--     KING UI - ROUNDIFY ADAPTIVE (Mobile Optimized V9)
--     >> FIX: ClipsDescendants, Auto-Scaling, Knob Animations
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")

-- // 1. Theme (Sombre et Moderne)
local Theme = {
    WindowBG    = Color3.fromRGB(30, 30, 40), 
    SidebarBG   = Color3.fromRGB(25, 25, 35),
    ItemBG      = Color3.fromRGB(45, 45, 55),
    AccentStart = Color3.fromRGB(170, 50, 220), -- Mauve
    AccentEnd   = Color3.fromRGB(50, 150, 210), -- Bleu
    Text        = Color3.fromRGB(245, 245, 250),
    TextDark    = Color3.fromRGB(160, 160, 170),
}

Library.Flags = {}
Library.FolderName = "KingGen"
Library.CurrentConfig = "default.json"
Library.ActiveLoops = {} 

local KINGHUB_DECAL_ID = "rbxassetid://90251722897707"

-- // 2. Anti-AFK
task.spawn(function()
    pcall(function()
        Players.LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0,0))
        end)
    end)
end)

-- // 3. Notification System
local function SendNotification(title, text, duration)
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 3
        })
    end)
end

function Library:Notify(options)
    if type(options) == "table" then
        SendNotification(options.Title or "Notification", options.Content or options.Text or "", options.Duration or 3)
    else
        SendNotification("Notification", tostring(options), 3)
    end
end

-- // 4. Save System
function Library:Save()
    if writefile and makefolder then
        if not isfolder(self.FolderName) then
            makefolder(self.FolderName)
        end
        local ok, json = pcall(function() return HttpService:JSONEncode(self.Flags) end)
        if ok and json then
            writefile(self.FolderName .. "/" .. self.CurrentConfig, json)
        end
    end
end

function Library:Load()
    if readfile and isfile and isfolder(self.FolderName) then
        local path = self.FolderName .. "/" .. self.CurrentConfig
        if isfile(path) then
            local success, decoded = pcall(function() return HttpService:JSONDecode(readfile(path)) end)
            if success and type(decoded) == "table" then
                for flag, value in pairs(decoded) do
                    self.Flags[flag] = value
                end
            end
        end
    end
end

-- // Draggable Function (Mobile Optimized)
local function MakeDraggable(topbarobject, object, saveKey)
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
                    if saveKey then
                        Library.Flags[saveKey .. "_X_Scale"] = object.Position.X.Scale
                        Library.Flags[saveKey .. "_X_Offset"] = object.Position.X.Offset
                        Library.Flags[saveKey .. "_Y_Scale"] = object.Position.Y.Scale
                        Library.Flags[saveKey .. "_Y_Offset"] = object.Position.Y.Offset
                        Library:Save()
                    end
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
                StartPosition.X.Scale, 
                StartPosition.X.Offset + Delta.X, 
                StartPosition.Y.Scale, 
                StartPosition.Y.Offset + Delta.Y
            )
        end
    end)
end

-- // 5. Main Window
function Library:Window(options)
    Library.CurrentConfig = options.ConfigName or "config.json"

    if CoreGui:FindFirstChild("KingGenUI") then 
        CoreGui.KingGenUI:Destroy()
    end

    Library:Load()

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KingGenUI" 
    ScreenGui.Parent = CoreGui
    ScreenGui.DisplayOrder = 999
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

    -- Main Frame (Le conteneur principal arrondi)
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Name = "MainFrame"
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    -- Taille adaptative : 50% de la largeur d'écran, mais avec des limites min/max
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.Size = UDim2.new(0, 500, 0, 350) -- Taille de base (Offset pour la précision)
    MainFrame.BackgroundColor3 = Theme.SidebarBG
    MainFrame.BackgroundTransparency = 0
    MainFrame.BorderSizePixel = 0
    MainFrame.ZIndex = 1
    MainFrame.ClipsDescendants = true -- C'est ça qui fait le "Roundify" parfait (coupe tout ce qui dépasse)
    
    local MainCorner = Instance.new("UICorner", MainFrame)
    MainCorner.CornerRadius = UDim.new(0, 18) -- Arrondi prononcé
    
    -- Contraintes de taille pour Mobile vs PC
    local sizeConstraint = Instance.new("UISizeConstraint", MainFrame)
    sizeConstraint.MaxSize = Vector2.new(600, 450)
    sizeConstraint.MinSize = Vector2.new(350, 280) -- Ne devient jamais trop petit sur mobile

    -- Background Gradient (Subtil)
    local MainGradient = Instance.new("UIGradient", MainFrame)
    MainGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Theme.WindowBG), 
        ColorSequenceKeypoint.new(1, Theme.SidebarBG) 
    })
    MainGradient.Rotation = 45

    local InputBlocker = Instance.new("TextButton", MainFrame)
    InputBlocker.Name = "InputBlocker"
    InputBlocker.Size = UDim2.new(1, 0, 1, 0)
    InputBlocker.BackgroundTransparency = 1
    InputBlocker.Text = ""
    InputBlocker.Visible = false
    InputBlocker.ZIndex = 500 
    
    -- Title Bar
    local TitleBar = Instance.new("Frame", MainFrame)
    TitleBar.Name = "TitleBar"
    TitleBar.Size = UDim2.new(1, 0, 0, 44)
    TitleBar.BackgroundColor3 = Theme.SidebarBG
    TitleBar.BackgroundTransparency = 1 -- Transparent pour laisser voir le gradient du MainFrame
    TitleBar.ZIndex = 2
    
    MakeDraggable(TitleBar, MainFrame)

    local TitleLogo = Instance.new("ImageLabel", TitleBar)
    TitleLogo.Image = KINGHUB_DECAL_ID
    TitleLogo.Size = UDim2.new(0, 28, 0, 28)
    TitleLogo.Position = UDim2.new(0, 12, 0.5, -14) 
    TitleLogo.BackgroundTransparency = 1
    TitleLogo.ScaleType = Enum.ScaleType.Fit
    TitleLogo.ZIndex = 3

    local TitleLabel = Instance.new("TextLabel", TitleBar)
    TitleLabel.Text = "KING GEN"
    TitleLabel.Size = UDim2.new(1, -100, 1, 0) 
    TitleLabel.Position = UDim2.new(0, 50, 0, 0)
    TitleLabel.Font = Enum.Font.GothamBlack -- Police plus épaisse
    TitleLabel.TextScaled = false
    TitleLabel.TextSize = 20
    TitleLabel.TextColor3 = Theme.Text
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left 
    TitleLabel.ZIndex = 3

    -- Minimize Button (Style rond et coloré)
    local MinBtn = Instance.new("TextButton", TitleBar)
    MinBtn.Size = UDim2.new(0, 30, 0, 30)
    MinBtn.Position = UDim2.new(1, -40, 0.5, -15)
    MinBtn.Text = "-"
    MinBtn.Font = Enum.Font.GothamBold
    MinBtn.TextSize = 20
    MinBtn.BackgroundColor3 = Theme.AccentStart -- Couleur accentuée directe
    MinBtn.TextColor3 = Theme.Text
    MinBtn.ZIndex = 3
    Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 8)
    MinBtn.AutoButtonColor = false

    local MinBtnGradient = Instance.new("UIGradient", MinBtn)
    MinBtnGradient.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd)
    MinBtnGradient.Rotation = 45

    -- K Button (Floating)
    local KGui = Instance.new("ScreenGui", CoreGui)
    KGui.Name = "KButtonGui"
    KGui.ResetOnSpawn = false
    KGui.DisplayOrder = 1000
    
    local KBtn = Instance.new("ImageButton", KGui) 
    KBtn.Image = KINGHUB_DECAL_ID
    KBtn.BackgroundTransparency = 1
    KBtn.Size = UDim2.new(0, 70, 0, 70)
    
    if Library.Flags["__K_POS_X_Scale"] then
        KBtn.Position = UDim2.new(
            Library.Flags["__K_POS_X_Scale"], Library.Flags["__K_POS_X_Offset"],
            Library.Flags["__K_POS_Y_Scale"], Library.Flags["__K_POS_Y_Offset"]
        )
    else
        KBtn.Position = UDim2.new(0.9, -80, 0.2, 0) 
    end
    
    KBtn.ScaleType = Enum.ScaleType.Fit
    KBtn.ZIndex = 3
    
    MakeDraggable(KBtn, KBtn, "__K_POS")

    local function SetState(isMinimized)
        Library.Flags["__UI_MINIMIZED"] = isMinimized
        Library:Save()
        
        local info = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

        if isMinimized then
            -- Animation de fermeture (Scale Down)
            TweenService:Create(MainFrame, info, {Size = UDim2.new(0,0,0,0), BackgroundTransparency = 1}):Play()
            task.wait(0.2)
            MainFrame.Visible = false
            KBtn.Visible = true 
            KBtn.Size = UDim2.new(0,0,0,0)
            TweenService:Create(KBtn, info, {Size = UDim2.new(0,70,0,70)}):Play()
        else
            -- Animation d'ouverture (Scale Up)
            KBtn.Visible = false
            MainFrame.Visible = true
            MainFrame.Size = UDim2.new(0,0,0,0)
            MainFrame.BackgroundTransparency = 0
            TweenService:Create(MainFrame, info, {Size = UDim2.new(0, 500, 0, 350)}):Play()
        end
    end
    
    MinBtn.MouseButton1Click:Connect(function() SetState(true) end)
    
    local KBtnStartPos = Vector3.new(0,0,0)
    KBtn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then KBtnStartPos = input.Position end
    end)
    KBtn.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            if (input.Position - KBtnStartPos).Magnitude < 5 then SetState(false) end
        end
    end)
    
    if Library.Flags["__UI_MINIMIZED"] then 
        MainFrame.Visible = false
        KBtn.Visible = true
    else 
        KBtn.Visible = false
        MainFrame.Visible = true 
    end
    
    -- [[ Sidebar ]]
    local SidebarContainer = Instance.new("Frame", MainFrame)
    SidebarContainer.Name = "SidebarContainer"
    SidebarContainer.Size = UDim2.new(0, 130, 1, -44) 
    SidebarContainer.Position = UDim2.new(0, 0, 0, 44)
    SidebarContainer.BackgroundColor3 = Theme.SidebarBG
    SidebarContainer.BackgroundTransparency = 0 -- Opaque pour se différencier
    SidebarContainer.BorderSizePixel = 0
    SidebarContainer.ZIndex = 2
    
    -- Séparateur visuel (sans contour blanc)
    local SidebarDiv = Instance.new("Frame", SidebarContainer)
    SidebarDiv.Size = UDim2.new(0, 1, 0.9, 0)
    SidebarDiv.Position = UDim2.new(1, -1, 0.05, 0)
    SidebarDiv.BackgroundColor3 = Color3.fromRGB(255,255,255)
    SidebarDiv.BackgroundTransparency = 0.95
    
    local TabBar = Instance.new("ScrollingFrame", SidebarContainer)
    TabBar.Size = UDim2.new(1, 0, 1, 0)
    TabBar.BackgroundTransparency = 1
    TabBar.ScrollBarThickness = 2
    TabBar.ScrollBarImageColor3 = Theme.AccentEnd 
    TabBar.ZIndex = 2
    TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y
    TabBar.CanvasSize = UDim2.new(0,0,0,0)
    
    local TabListLayout = Instance.new("UIListLayout", TabBar)
    TabListLayout.FillDirection = Enum.FillDirection.Vertical
    TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.Padding = UDim.new(0, 6)
    
    Instance.new("UIPadding", TabBar).PaddingTop = UDim.new(0, 10)

    -- [[ Pages Container ]]
    local PagesContainer = Instance.new("Frame", MainFrame)
    PagesContainer.Size = UDim2.new(1, -130, 1, -44) 
    PagesContainer.Position = UDim2.new(0, 130, 0, 44) 
    PagesContainer.BackgroundTransparency = 1
    PagesContainer.ZIndex = 2
    
    local ContentPadding = Instance.new("UIPadding", PagesContainer)
    ContentPadding.PaddingLeft = UDim.new(0, 15)
    ContentPadding.PaddingRight = UDim.new(0, 15)
    ContentPadding.PaddingTop = UDim.new(0, 15)
    ContentPadding.PaddingBottom = UDim.new(0, 15)
    
    local WindowAPI = {}
    local FirstTab = true
    local TabButtons = {}
    local Pages = {}

    function WindowAPI:Tab(name)
        local buttonHeight = 36
        local TabBtn = Instance.new("TextButton", TabBar)
        TabBtn.Size = UDim2.new(0.85, 0, 0, buttonHeight) 
        TabBtn.Text = name
        TabBtn.Font = Enum.Font.GothamBold
        TabBtn.TextSize = 14
        TabBtn.TextScaled = false
        TabBtn.AutoButtonColor = false 
        TabBtn.ZIndex = 3
        Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 8)
        
        local function UpdateTabButtonStyle(button, isActive)
            local targetBG = isActive and Theme.ItemBG or Color3.fromRGB(30,30,40)
            local targetText = isActive and Theme.AccentStart or Theme.TextDark
            
            TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = targetBG, TextColor3 = targetText}):Play()
        end

        table.insert(TabButtons, {Btn = TabBtn, Name = name})

        local Page = Instance.new("ScrollingFrame", PagesContainer)
        Page.Name = name .. "_Page"
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.BackgroundTransparency = 1
        Page.ScrollBarThickness = 3
        Page.ScrollBarImageColor3 = Theme.AccentEnd
        Page.Visible = FirstTab
        Page.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Page.CanvasSize = UDim2.new(0,0,0,0)
        Page.ZIndex = 2
        
        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 8)

        local PagePadding = Instance.new("UIPadding", Page)
        PagePadding.PaddingRight = UDim.new(0, 6)
        PagePadding.PaddingBottom = UDim.new(0, 10) 

        table.insert(Pages, {Frame = Page, Name = name})

        TabBtn.MouseButton1Click:Connect(function()
            for _, tabData in ipairs(TabButtons) do UpdateTabButtonStyle(tabData.Btn, false) end
            UpdateTabButtonStyle(TabBtn, true)
            for _, pageData in ipairs(Pages) do pageData.Frame.Visible = (pageData.Name == name) end
        end)
        
        UpdateTabButtonStyle(TabBtn, FirstTab)
        FirstTab = false

        local Elements = {}

        -- [[ Toggle avec Animation "Dot" (Rond) ]]
        function Elements:Toggle(options)
            local tFlag = options.Flag
            local default = Library.Flags[tFlag] or options.Default or false
            Library.Flags[tFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 42)
            Frame.BackgroundColor3 = Theme.ItemBG
            Frame.ZIndex = 5
            Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 10)

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(0.7, 0, 1, 0)
            Label.Position = UDim2.new(0, 12, 0, 0)
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5

            local Button = Instance.new("TextButton", Frame)
            Button.Size = UDim2.new(0, 44, 0, 24)
            Button.AnchorPoint = Vector2.new(1, 0.5)
            Button.Position = UDim2.new(1, -12, 0.5, 0)
            Button.Text = ""
            Button.BackgroundColor3 = Color3.fromRGB(30, 30, 40) -- Off Color
            Button.AutoButtonColor = false
            Instance.new("UICorner", Button).CornerRadius = UDim.new(1, 0) -- Pill Shape
            
            -- Le Point (Dot/Knob)
            local Dot = Instance.new("Frame", Button)
            Dot.Size = UDim2.new(0, 18, 0, 18)
            Dot.Position = UDim2.new(0, 3, 0.5, -9)
            Dot.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
            Instance.new("UICorner", Dot).CornerRadius = UDim.new(1, 0) -- Rond parfait

            local function UpdateVisuals(val)
                local targetBG = val and Theme.AccentStart or Color3.fromRGB(30, 30, 40)
                local targetDotPos = val and UDim2.new(1, -21, 0.5, -9) or UDim2.new(0, 3, 0.5, -9)
                local targetDotColor = val and Color3.fromRGB(255,255,255) or Color3.fromRGB(150,150,160)
                
                TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = targetBG}):Play()
                TweenService:Create(Dot, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = targetDotPos, BackgroundColor3 = targetDotColor}):Play()
            end

            local function HandleLoop(val)
                Library.Flags[tFlag] = val
                if Library.ActiveLoops[tFlag] then
                    task.cancel(Library.ActiveLoops[tFlag])
                    Library.ActiveLoops[tFlag] = nil
                end
                if val then
                    Library.ActiveLoops[tFlag] = task.spawn(function()
                        pcall(options.Callback, true)
                        while Library.Flags[tFlag] do
                            pcall(options.Callback, true) 
                            task.wait(options.Delay or 0.1)
                        end
                        pcall(options.Callback, false) 
                    end)
                else
                    pcall(options.Callback, false)
                end
                Library:Save()
            end

            Button.MouseButton1Click:Connect(function()
                local newVal = not Library.Flags[tFlag]
                UpdateVisuals(newVal)
                HandleLoop(newVal)
            end)
            
            UpdateVisuals(default)
            if default then HandleLoop(default) end
            
            local API = {}
            function API:Set(v) Library.Flags[tFlag] = v UpdateVisuals(v) HandleLoop(v) end
            return API
        end

        -- [[ Slider avec Knob (Rond) ]]
        function Elements:Slider(options)
            local sFlag = options.Flag
            local min, max = options.Min, options.Max
            local default = Library.Flags[sFlag] or options.Default or min
            Library.Flags[sFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 60)
            Frame.BackgroundColor3 = Theme.ItemBG
            Frame.ZIndex = 5
            Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 10)

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, -24, 0, 20)
            Label.Position = UDim2.new(0, 12, 0, 8)
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5

            local ValueLabel = Instance.new("TextLabel", Frame)
            ValueLabel.Text = tostring(default)
            ValueLabel.Size = UDim2.new(0, 50, 0, 20)
            ValueLabel.Position = UDim2.new(1, -62, 0, 8)
            ValueLabel.Font = Enum.Font.GothamBold
            ValueLabel.TextSize = 14
            ValueLabel.TextColor3 = Theme.AccentEnd
            ValueLabel.BackgroundTransparency = 1
            ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
            ValueLabel.ZIndex = 5

            local SliderTrack = Instance.new("Frame", Frame)
            SliderTrack.Size = UDim2.new(1, -24, 0, 6)
            SliderTrack.Position = UDim2.new(0, 12, 0, 38)
            SliderTrack.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
            SliderTrack.ZIndex = 5
            Instance.new("UICorner", SliderTrack).CornerRadius = UDim.new(1, 0)

            local SliderFill = Instance.new("Frame", SliderTrack)
            SliderFill.Size = UDim2.new(0, 0, 1, 0)
            SliderFill.BackgroundColor3 = Theme.AccentStart
            SliderFill.ZIndex = 6
            Instance.new("UICorner", SliderFill).CornerRadius = UDim.new(1, 0)
            
            -- Gradient sur le Fill
            local FillGrad = Instance.new("UIGradient", SliderFill)
            FillGrad.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd)

            -- Le Knob (Rond)
            local Knob = Instance.new("Frame", SliderTrack)
            Knob.Size = UDim2.new(0, 16, 0, 16)
            Knob.AnchorPoint = Vector2.new(0.5, 0.5)
            Knob.Position = UDim2.new(0, 0, 0.5, 0)
            Knob.BackgroundColor3 = Color3.fromRGB(255,255,255)
            Knob.ZIndex = 7
            Instance.new("UICorner", Knob).CornerRadius = UDim.new(1, 0)

            local function Update(input)
                local SizeX = math.clamp((input.Position.X - SliderTrack.AbsolutePosition.X) / SliderTrack.AbsoluteSize.X, 0, 1)
                local Value = math.floor(min + ((max - min) * SizeX))
                Library.Flags[sFlag] = Value
                
                SliderFill.Size = UDim2.new(SizeX, 0, 1, 0)
                Knob.Position = UDim2.new(SizeX, 0, 0.5, 0)
                ValueLabel.Text = tostring(Value)
                pcall(options.Callback, Value)
                Library:Save()
            end

            local percent = (default - min) / (max - min)
            SliderFill.Size = UDim2.new(percent, 0, 1, 0)
            Knob.Position = UDim2.new(percent, 0, 0.5, 0)
            
            local Dragging = false
            SliderTrack.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    Update(input)
                    TweenService:Create(Knob, TweenInfo.new(0.1), {Size = UDim2.new(0, 20, 0, 20)}):Play() -- Grossit un peu
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
                    TweenService:Create(Knob, TweenInfo.new(0.1), {Size = UDim2.new(0, 16, 0, 16)}):Play() -- Revient normal
                end
            end)
        end

        -- [[ Dropdown (Clean) ]]
        function Elements:Dropdown(options)
            local dFlag = options.Flag
            local default = Library.Flags[dFlag] or options.Default or options.List[1]
            Library.Flags[dFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 65)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Position = UDim2.new(0, 2, 0, 0)
            Label.Font = Enum.Font.GothamSemibold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, 0, 0, 38)
            MainBtn.Position = UDim2.new(0, 0, 0, 25)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = default
            MainBtn.TextColor3 = Theme.AccentStart
            MainBtn.Font = Enum.Font.GothamBold
            MainBtn.TextSize = 14
            MainBtn.ZIndex = 6
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 10)
            MainBtn.AutoButtonColor = false
            
            local Arrow = Instance.new("TextLabel", MainBtn)
            Arrow.Text = "v"
            Arrow.Size = UDim2.new(0, 30, 1, 0)
            Arrow.Position = UDim2.new(1, -30, 0, 0)
            Arrow.BackgroundTransparency = 1
            Arrow.TextColor3 = Theme.TextDark
            Arrow.Font = Enum.Font.GothamBold
            Arrow.ZIndex = 7

            local Scroll = Instance.new("ScrollingFrame", MainBtn)
            Scroll.Size = UDim2.new(1, 0, 0, 120)
            Scroll.Position = UDim2.new(0, 0, 1, 5)
            Scroll.BackgroundColor3 = Theme.SidebarBG
            Scroll.Visible = false
            Scroll.ZIndex = 200
            Scroll.ScrollBarThickness = 2
            Instance.new("UICorner", Scroll).CornerRadius = UDim.new(0, 10)
            
            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.SortOrder = Enum.SortOrder.LayoutOrder
            
            local Open = false
            
            local function Close()
                Open = false
                Scroll.Visible = false
                Scroll.Parent = MainBtn
                Arrow.Rotation = 0
                InputBlocker.Visible = false
            end
            
            local function OpenDrop()
                Open = true
                Scroll.Parent = ScreenGui -- Reparent pour passer au dessus de tout
                local absPos = MainBtn.AbsolutePosition
                local absSize = MainBtn.AbsoluteSize
                Scroll.Position = UDim2.new(0, absPos.X, 0, absPos.Y + absSize.Y + 5)
                Scroll.Size = UDim2.new(0, absSize.X, 0, 150)
                Scroll.Visible = true
                Arrow.Rotation = 180
                InputBlocker.Visible = true
                
                -- Connection pour fermer si on clique ailleurs
                local c; c = InputBlocker.MouseButton1Click:Connect(function()
                    Close()
                    c:Disconnect()
                end)
            end

            MainBtn.MouseButton1Click:Connect(function()
                if Open then Close() else OpenDrop() end
            end)

            local function Refresh()
                for _, child in ipairs(Scroll:GetChildren()) do if child:IsA("TextButton") then child:Destroy() end end
                for _, item in ipairs(options.List) do
                    local ItemBtn = Instance.new("TextButton", Scroll)
                    ItemBtn.Size = UDim2.new(1, 0, 0, 30)
                    ItemBtn.BackgroundTransparency = 1
                    ItemBtn.Text = item
                    ItemBtn.TextColor3 = Theme.Text
                    ItemBtn.Font = Enum.Font.Gotham
                    ItemBtn.TextSize = 14
                    ItemBtn.ZIndex = 205
                    ItemBtn.MouseButton1Click:Connect(function()
                        Library.Flags[dFlag] = item
                        MainBtn.Text = item
                        pcall(options.Callback, item)
                        Library:Save()
                        Close()
                    end)
                end
                Scroll.CanvasSize = UDim2.new(0,0,0, Layout.AbsoluteContentSize.Y)
            end
            Refresh()
        end
        
        -- [[ Button Simple ]]
        function Elements:Button(options)
            local Btn = Instance.new("TextButton", Page)
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.BackgroundColor3 = Theme.ItemBG
            Btn.Text = options.Name
            Btn.TextColor3 = Color3.fromRGB(255,255,255)
            Btn.Font = Enum.Font.GothamBold
            Btn.TextSize = 14
            Btn.AutoButtonColor = false
            Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 12)
            
            local BtnGrad = Instance.new("UIGradient", Btn)
            BtnGrad.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd)
            BtnGrad.Rotation = 45
            
            Btn.MouseButton1Click:Connect(function()
                TweenService:Create(Btn, TweenInfo.new(0.1), {Size = UDim2.new(1, -4, 0, 36)}):Play()
                task.wait(0.1)
                TweenService:Create(Btn, TweenInfo.new(0.1), {Size = UDim2.new(1, 0, 0, 40)}):Play()
                pcall(options.Callback)
            end)
        end
        
        -- [[ LinkBox (Discord etc) ]]
        function Elements:LinkBox(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 60)
            Frame.BackgroundTransparency = 1
            
            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamBold
            Label.TextColor3 = Theme.Text
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.BackgroundTransparency = 1
            
            local CopyBtn = Instance.new("TextButton", Frame)
            CopyBtn.Size = UDim2.new(1, 0, 0, 35)
            CopyBtn.Position = UDim2.new(0, 0, 0, 25)
            CopyBtn.BackgroundColor3 = Theme.ItemBG
            CopyBtn.Text = "Copy Link: " .. (options.Link or "")
            CopyBtn.TextColor3 = Theme.AccentEnd
            CopyBtn.Font = Enum.Font.Gotham
            CopyBtn.TextTruncate = Enum.TextTruncate.AtEnd
            Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 10)
            
            CopyBtn.MouseButton1Click:Connect(function()
                if setclipboard then
                    setclipboard(options.Link)
                    CopyBtn.Text = "Copied to Clipboard!"
                    task.wait(2)
                    CopyBtn.Text = "Copy Link: " .. (options.Link or "")
                end
            end)
        end

        return Elements
    end

    function WindowAPI:Init()
        local CreditsTab = WindowAPI:Tab("Credits")
        CreditsTab:LinkBox({ Name = "Discord Server", Link = "https://discord.gg/RhDnUQr4Du" })
    end

    return WindowAPI
end

return Library
