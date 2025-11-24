-- ================================================================= --
--     KINGHUB UI LIBRARY - CLEAN VERSION (No Strokes, Perfect Align)
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

-- // 1. Theme (Mauve Premium)
local Theme = {
    WindowBG    = Color3.fromRGB(35, 33, 45),    -- Un peu plus sombre pour le contraste sans bordure
    SidebarBG   = Color3.fromRGB(25, 23, 33),
    ItemBG      = Color3.fromRGB(50, 45, 65),
    AccentStart = Color3.fromRGB(180, 60, 230),
    AccentEnd   = Color3.fromRGB(140, 90, 200),
    Text        = Color3.fromRGB(255, 255, 255),
}

Library.Flags = {}
Library.FolderName = "KINGHUB"
Library.CurrentConfig = "default.json"
Library.ActiveLoops = {} 

local KINGHUB_DECAL_ID = "rbxassetid://90251722897707"

-- // Helper: Apply Text Gradient
local function ApplyTextGradient(instance)
    if instance:IsA("TextLabel") or instance:IsA("TextButton") or instance:IsA("TextBox") then
        instance.TextColor3 = Color3.fromRGB(255, 255, 255)
        
        if instance:IsA("TextButton") and instance.BackgroundTransparency < 1 then
            local originalText = instance.Text
            instance.TextTransparency = 1
            
            local label = Instance.new("TextLabel", instance)
            label.Name = "GradientLabel"
            label.Size = UDim2.new(1, 0, 1, 0)
            label.BackgroundTransparency = 1
            label.Text = originalText
            label.Font = instance.Font
            label.TextSize = instance.TextSize
            label.TextScaled = instance.TextScaled
            label.TextColor3 = Color3.fromRGB(255, 255, 255)
            label.TextXAlignment = instance.TextXAlignment
            label.ZIndex = instance.ZIndex + 1
            
            instance:GetPropertyChangedSignal("Text"):Connect(function()
                label.Text = instance.Text
            end)

            local gradient = Instance.new("UIGradient", label)
            gradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Theme.AccentStart),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
            })
            gradient.Rotation = 90
        else
            local gradient = Instance.new("UIGradient", instance)
            gradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Theme.AccentStart),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
            })
            gradient.Rotation = 90
        end
    end
end

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

-- // Draggable Function
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
        SendNotification("KINGHUB", "KINGHUB Already Running", 5)
        return
    end

    Library:Load()

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KingGenUI" 
    ScreenGui.Parent = CoreGui
    ScreenGui.DisplayOrder = 999
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

    -- Main Frame
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Name = "MainFrame"
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0)
    MainFrame.BackgroundColor3 = Theme.SidebarBG
    MainFrame.BackgroundTransparency = 0
    MainFrame.BorderSizePixel = 0 -- Suppression explicite des bordures
    MainFrame.ZIndex = 1
    
    local MainFrameGradient = Instance.new("UIGradient", MainFrame)
    MainFrameGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Theme.WindowBG), 
        ColorSequenceKeypoint.new(1, Theme.SidebarBG) 
    })
    MainFrameGradient.Transparency = NumberSequence.new(0)
    MainFrameGradient.Rotation = 90
    
    local MainCorner = Instance.new("UICorner", MainFrame)
    MainCorner.CornerRadius = UDim.new(0, 16)
    
    -- [[ SUPPRESSION DE UI STROKE ICI ]]
    
    local arConstraint = Instance.new("UIAspectRatioConstraint", MainFrame)
    arConstraint.AspectRatio = 480 / 540
    arConstraint.DominantAxis = Enum.DominantAxis.Height
    
    local sizeConstraint = Instance.new("UISizeConstraint", MainFrame)
    sizeConstraint.MaxSize = Vector2.new(480, 540)
    sizeConstraint.MinSize = Vector2.new(240, 270)

    -- Input Blocker
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
    TitleBar.BackgroundTransparency = 0
    TitleBar.ZIndex = 2
    
    local TitleBarGradient = Instance.new("UIGradient", TitleBar)
    TitleBarGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Theme.SidebarBG), 
        ColorSequenceKeypoint.new(1, Theme.AccentStart) 
    })
    TitleBarGradient.Rotation = 90
    
    MakeDraggable(TitleBar, MainFrame)

    -- Logo
    local TitleLogo = Instance.new("ImageLabel", TitleBar)
    TitleLogo.Image = KINGHUB_DECAL_ID
    TitleLogo.Size = UDim2.new(0, 32, 0, 32)
    TitleLogo.Position = UDim2.new(0, 8, 0.5, -16) 
    TitleLogo.BackgroundTransparency = 1
    TitleLogo.ScaleType = Enum.ScaleType.Fit
    TitleLogo.ZIndex = 3

    local TitleLabel = Instance.new("TextLabel", TitleBar)
    TitleLabel.Text = "KING HUB"
    TitleLabel.Size = UDim2.new(1, -50, 1, 0) 
    TitleLabel.Position = UDim2.new(0, 48, 0, 0)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextScaled = true
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left 
    TitleLabel.ZIndex = 3
    ApplyTextGradient(TitleLabel)

    -- Minimize Button
    local MinBtn = Instance.new("TextButton", TitleBar)
    MinBtn.Size = UDim2.new(0, 34, 0, 34)
    MinBtn.Position = UDim2.new(1, -40, 0.5, -17)
    MinBtn.Text = "−" 
    MinBtn.Font = Enum.Font.GothamBold
    MinBtn.TextSize = 24 
    MinBtn.BackgroundColor3 = Theme.ItemBG
    MinBtn.BorderSizePixel = 0
    MinBtn.ZIndex = 3
    Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 12)
    MinBtn.AutoButtonColor = false
    ApplyTextGradient(MinBtn)

    local function AnimateButtonColor(button, color)
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = color}):Play()
    end

    MinBtn.MouseEnter:Connect(function() AnimateButtonColor(MinBtn, Theme.AccentStart) end)
    MinBtn.MouseLeave:Connect(function() 
        if not Library.Flags["__UI_MINIMIZED"] then AnimateButtonColor(MinBtn, Theme.ItemBG) end 
    end)


    -- K Button (Floating)
    local KGui = Instance.new("ScreenGui", CoreGui)
    KGui.Name = "KButtonGui"
    KGui.ResetOnSpawn = false
    KGui.DisplayOrder = 1000
    
    local KBtn = Instance.new("ImageButton", KGui) 
    KBtn.Image = KINGHUB_DECAL_ID
    KBtn.BackgroundTransparency = 1
    KBtn.Size = UDim2.new(0, 100, 0, 100) 
    
    if Library.Flags["__K_POS_X_Scale"] then
        KBtn.Position = UDim2.new(
            Library.Flags["__K_POS_X_Scale"], 
            Library.Flags["__K_POS_X_Offset"],
            Library.Flags["__K_POS_Y_Scale"], Library.Flags["__K_POS_Y_Offset"]
        )
    else
        KBtn.Position = UDim2.new(0.5, -50, 0, 40) 
    end
    
    KBtn.ScaleType = Enum.ScaleType.Fit
    KBtn.ZIndex = 3
    
    -- [[ State Logic ]]
    local function SetState(isMinimized)
        if Library.Flags["__UI_MINIMIZED"] == isMinimized then return end

        Library.Flags["__UI_MINIMIZED"] = isMinimized
        Library:Save()

        local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

        if isMinimized then
            -- Minimizing
            MainFrame.ZIndex = 1
            TweenService:Create(MainFrame, mainFrameTweenInfo, {Position = UDim2.new(0.5, 0, 1.5, 0), Rotation = -10}):Play()
            task.wait(0.3) 
            MainFrame.Visible = false

            KBtn.Visible = true 
            KBtn.ImageTransparency = 1 
            TweenService:Create(KBtn, kBtnTweenInfo, {ImageTransparency = 0, Size = UDim2.new(0,100,0,100)}):Play()
        else
            -- Maximizing
            TweenService:Create(KBtn, kBtnTweenInfo, {ImageTransparency = 1, Size = UDim2.new(0,80,0,80)}):Play()
            task.wait(0.3) 
            KBtn.Visible = false

            MainFrame.Visible = true
            
            MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0)
            MainFrame.Rotation = -10

            TweenService:Create(MainFrame, mainFrameTweenInfo, {Position = UDim2.new(0.5, 0, 0.5, 0), Rotation = 0}):Play()
        end
    end

    MinBtn.MouseButton1Click:Connect(function() SetState(true) end)

    -- [[ CUSTOM DRAG LOGIC FOR K-BUTTON ]]
    local K_Dragging = false
    local K_DragInput = nil
    local K_DragStart = nil
    local K_StartPosition = nil
    local K_StartAbsPos = nil

    KBtn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            K_Dragging = true
            K_DragStart = input.Position
            K_StartPosition = KBtn.Position
            K_StartAbsPos = KBtn.AbsolutePosition
            
            local connection
            connection = input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    K_Dragging = false
                    connection:Disconnect()

                    Library.Flags["__K_POS_X_Scale"] = KBtn.Position.X.Scale
                    Library.Flags["__K_POS_X_Offset"] = KBtn.Position.X.Offset
                    Library.Flags["__K_POS_Y_Scale"] = KBtn.Position.Y.Scale
                    Library.Flags["__K_POS_Y_Offset"] = KBtn.Position.Y.Offset
                    Library:Save()
                    
                    local K_EndAbsPos = KBtn.AbsolutePosition
                    local Distance = (K_EndAbsPos - K_StartAbsPos).Magnitude
                    
                    if Distance < 5 then
                        SetState(false)
                    end
                end
            end)
        end
    end)

    KBtn.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            K_DragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == K_DragInput and K_Dragging then
            local Delta = input.Position - K_DragStart
            KBtn.Position = UDim2.new(
                K_StartPosition.X.Scale, 
                K_StartPosition.X.Offset + Delta.X, 
                K_StartPosition.Y.Scale, 
                K_StartPosition.Y.Offset + Delta.Y
            )
        end
    end)
    
    if Library.Flags["__UI_MINIMIZED"] == nil then
        Library.Flags["__UI_MINIMIZED"] = false
    end

    if Library.Flags["__UI_MINIMIZED"] then 
        MainFrame.Visible = false
        KBtn.Visible = true
        KBtn.ImageTransparency = 0 
    else 
        KBtn.Visible = false
        MainFrame.Visible = true 
        MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0) 
        MainFrame.Rotation = 0
    end
    
    -- [[ Sidebar Tabs ]]
    -- Increased Width from 120 to 130 for better spacing
    local SidebarWidth = 130 
    
    local SidebarContainer = Instance.new("Frame", MainFrame)
    SidebarContainer.Name = "SidebarContainer"
    SidebarContainer.Size = UDim2.new(0, SidebarWidth, 1, -44) 
    SidebarContainer.Position = UDim2.new(0, 0, 0, 44)
    SidebarContainer.BackgroundColor3 = Theme.SidebarBG
    SidebarContainer.BackgroundTransparency = 0
    SidebarContainer.BorderSizePixel = 0
    SidebarContainer.ZIndex = 2
    
    local SidebarGradient = Instance.new("UIGradient", SidebarContainer)
    SidebarGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Theme.SidebarBG), 
        ColorSequenceKeypoint.new(1, Theme.AccentStart) 
    })
    SidebarGradient.Rotation = 90
    
    -- [[ SUPPRESSION UI STROKE SIDEBAR ]]
    
    local TabBar = Instance.new("ScrollingFrame", SidebarContainer)
    TabBar.Size = UDim2.new(1, 0, 1, 0)
    TabBar.BackgroundTransparency = 1
    TabBar.ScrollBarThickness = 6
    TabBar.ScrollBarImageColor3 = Theme.AccentEnd 
    TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None
    TabBar.ZIndex = 2
    TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y
    TabBar.CanvasSize = UDim2.new(0,0,0,0)
    
    local TabListLayout = Instance.new("UIListLayout", TabBar)
    TabListLayout.FillDirection = Enum.FillDirection.Vertical
    TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder 
    TabListLayout.Padding = UDim.new(0, 8)
    
    -- ALIGNEMENT FIX : Padding Top à 10
    Instance.new("UIPadding", TabBar).PaddingTop = UDim.new(0, 10)
    Instance.new("UIPadding", TabBar).PaddingBottom = UDim.new(0, 10)

    local PagesContainer = Instance.new("Frame", MainFrame)
    PagesContainer.Size = UDim2.new(1, -SidebarWidth, 1, -44) 
    PagesContainer.Position = UDim2.new(0, SidebarWidth, 0, 44) 
    PagesContainer.BackgroundTransparency = 1
    PagesContainer.ZIndex = 2
    
    local ContentPadding = Instance.new("UIPadding", PagesContainer)
    ContentPadding.PaddingLeft = UDim.new(0, 10)
    ContentPadding.PaddingRight = UDim.new(0, 10)
    ContentPadding.PaddingTop = UDim.new(0, 10)
    ContentPadding.PaddingBottom = UDim.new(0, 10)
    
    local WindowAPI = {}
    local FirstTab = true
    local TabButtons = {}
    local Pages = {}
    local TabCount = 0 

    function WindowAPI:Tab(name, isCredits)
        local order
        if isCredits then
            order = 9999
        else
            TabCount = TabCount + 1
            order = TabCount
        end

        local buttonHeight = 40
        
        local TabBtn = Instance.new("TextButton", TabBar)
        TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight) 
        TabBtn.Text = name
        TabBtn.Font = Enum.Font.GothamBold
        TabBtn.TextScaled = true
        TabBtn.AutoButtonColor = false 
        TabBtn.ZIndex = 3
        TabBtn.LayoutOrder = order
        Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 8)
        ApplyTextGradient(TabBtn)
        
        -- [[ SUPPRESSION UI STROKE TABBTN ]]
        
        local function UpdateTabButtonStyle(button, isActive)
            if isActive then
                button.BackgroundColor3 = Theme.WindowBG 
            else
                button.BackgroundColor3 = Theme.SidebarBG
            end
        end

        table.insert(TabButtons, {Btn = TabBtn, Name = name})

        local Page = Instance.new("ScrollingFrame", PagesContainer)
        Page.Name = name .. "_Page"
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.BackgroundTransparency = 1
        Page.ScrollBarThickness = 8
        Page.ScrollBarImageColor3 = Theme.AccentEnd
        Page.Visible = FirstTab
        Page.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Page.CanvasSize = UDim2.new(0,0,0,0)
        Page.ZIndex = 2
        
        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 10)

        local PagePadding = Instance.new("UIPadding", Page)
        PagePadding.PaddingRight = UDim.new(0, 15)
        -- ALIGNEMENT FIX : Padding Top à 10 pour matcher la TabBar
        PagePadding.PaddingTop = UDim.new(0, 10)
        PagePadding.PaddingBottom = UDim.new(0, 25) 

        table.insert(Pages, {Frame = Page, Name = name})

        TabBtn.MouseButton1Click:Connect(function()
            for _, tabData in ipairs(TabButtons) do
                UpdateTabButtonStyle(tabData.Btn, false)
            end
            UpdateTabButtonStyle(TabBtn, true)
            
            for _, pageData in ipairs(Pages) do
                pageData.Frame.Visible = (pageData.Name == name)
            end
        end)
        
        UpdateTabButtonStyle(TabBtn, FirstTab)

        FirstTab = false
        local Elements = {}

        -- [[ Element: Toggle ]]
        function Elements:Toggle(options)
            local tFlag = options.Flag
            local default = Library.Flags[tFlag]
            if default == nil then default = options.Default or false end
            
            Library.Flags[tFlag] = default
            local delayTime = options.Delay or 0.1 

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 40) -- Hauteur standardisée
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(0.7, -5, 1, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextScaled = true
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5
            ApplyTextGradient(Label)

            local Button = Instance.new("TextButton", Frame)
            Button.Size = UDim2.new(0.3, 0, 1, 0)
            Button.Position = UDim2.new(0.7, 0, 0, 0)
            Button.Font = Enum.Font.GothamBold
            Button.TextScaled = true
            Button.ZIndex = 5
            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 14)
            Button.AutoButtonColor = false 
            ApplyTextGradient(Button)
            
            -- [[ SUPPRESSION UI STROKE TOGGLE ]]
    
            local function UpdateVisuals(val)
                Button.Text = val and "ON" or "OFF"
                local targetColor = val and Theme.AccentEnd or Theme.ItemBG
                TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundColor3 = targetColor}):Play()
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
                            task.wait(delayTime)
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
                if options.Condition and newVal then
                    local success, reason = options.Condition()
                    if not success then
                        SendNotification("Action Denied", reason or "Cannot enable this right now.", 4)
                        return
                    end
                end
                UpdateVisuals(newVal)
                HandleLoop(newVal)
            end)
            
            UpdateVisuals(default)
            if default then
                HandleLoop(default)
            end
            
            local ToggleAPI = {}
            function ToggleAPI:Set(value)
                Library.Flags[tFlag] = value
                UpdateVisuals(value)
                HandleLoop(value)
            end
            return ToggleAPI
        end

        -- [[ Element: Slider ]]
        function Elements:Slider(options)
            local sFlag = options.Flag
            local min, max = options.Min, options.Max
            local default = Library.Flags[sFlag] or options.Default or min
            Library.Flags[sFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 50)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local TopLabel = Instance.new("TextLabel", Frame)
            TopLabel.Size = UDim2.new(1, 0, 0, 20)
            TopLabel.Text = options.Name
            TopLabel.Font = Enum.Font.GothamBold
            TopLabel.TextScaled = true
            TopLabel.BackgroundTransparency = 1
            TopLabel.TextXAlignment = Enum.TextXAlignment.Left
            TopLabel.ZIndex = 5
            ApplyTextGradient(TopLabel)

            local SliderFrame = Instance.new("Frame", Frame)
            SliderFrame.Size = UDim2.new(1, 0, 0, 28)
            SliderFrame.Position = UDim2.new(0,0,0,22)
            SliderFrame.BackgroundColor3 = Theme.ItemBG
            SliderFrame.ZIndex = 5
            Instance.new("UICorner", SliderFrame).CornerRadius = UDim.new(0,8)
            
            -- [[ SUPPRESSION UI STROKE SLIDER ]]

            local ValLabel = Instance.new("TextLabel", SliderFrame)
            ValLabel.Text = tostring(default)
            ValLabel.Size = UDim2.new(0, 40, 1, 0)
            ValLabel.Position = UDim2.new(1, -45, 0, 0)
            ValLabel.Font = Enum.Font.GothamBold
            ValLabel.TextScaled = true
            ValLabel.BackgroundTransparency = 1
            ValLabel.ZIndex = 6
            ApplyTextGradient(ValLabel)
            
            local BarBG = Instance.new("Frame", SliderFrame)
            BarBG.Size = UDim2.new(1, -50, 1, -4)
            BarBG.Position = UDim2.new(0, 4, 0, 2)
            BarBG.BackgroundColor3 = Color3.fromRGB(50,50,60)
            BarBG.ZIndex = 6
            Instance.new("UICorner", BarBG).CornerRadius = UDim.new(0,8)
            
            local Fill = Instance.new("Frame", BarBG)
            Fill.BackgroundColor3 = Theme.AccentStart
            Fill.Size = UDim2.new(0,0,1,0)
            Fill.ZIndex = 7
            Instance.new("UICorner", Fill).CornerRadius = UDim.new(0,8)

            local UIGradientFill = Instance.new("UIGradient", Fill)
            UIGradientFill.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Theme.AccentStart),
                ColorSequenceKeypoint.new(1, Theme.AccentEnd)
            })
            UIGradientFill.Rotation = 90

            local function Update(input)
                local SizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1)
                local Value = math.floor(min + ((max - min) * SizeX))
                
                Library.Flags[sFlag] = Value
                Fill.Size = UDim2.new(SizeX, 0, 1, 0)
                ValLabel.Text = tostring(Value)
                pcall(options.Callback, Value)
                Library:Save()
            end

            local percent = (default - min) / (max - min)
            Fill.Size = UDim2.new(percent, 0, 1, 0)
            pcall(options.Callback, default)

            local Dragging = false
            
            SliderFrame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    Dragging = true
                    Update(input)
                end
            end)
            
            UserInputService.InputChanged:Connect(function(input)
                if Dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    Update(input)
                end
            end)
            
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then Dragging = false 
                end
            end)
        end

        -- [[ Element: Dropdown ]]
        function Elements:Dropdown(options)
            local dFlag = options.Flag
            local default = Library.Flags[dFlag] or options.Default or options.List[1]
            Library.Flags[dFlag] = default
            local isSearchable = options.Search or false

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 70)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, -20, 0, 24)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextScaled = true
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5
            ApplyTextGradient(Label)

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, -20, 0, 35)
            MainBtn.Position = UDim2.new(0, 10, 0, 30)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = default
            MainBtn.Font = Enum.Font.GothamSemibold
            MainBtn.TextScaled = true
            MainBtn.ZIndex = 6
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 8)
            MainBtn.AutoButtonColor = false
            ApplyTextGradient(MainBtn)

            local Scroll = Instance.new("ScrollingFrame", MainBtn)
            Scroll.Size = UDim2.new(1, 0, 0, isSearchable and 150 or 120) 
            Scroll.Position = UDim2.new(0, 0, 1, 5)
            Scroll.BackgroundColor3 = Theme.SidebarBG
            Scroll.Visible = false
            Scroll.ZIndex = 600 
            Scroll.ScrollBarThickness = 6
            Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
            Scroll.CanvasSize = UDim2.new(0,0,0,0)
            Scroll.Active = true
            
            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.Padding = UDim.new(0, 5)
            Layout.SortOrder = Enum.SortOrder.LayoutOrder
            
            local SearchBox
            if isSearchable then
                SearchBox = Instance.new("TextBox", Scroll)
                SearchBox.ZIndex = 605 
                SearchBox.Size = UDim2.new(1, -10, 0, 25)
                SearchBox.PlaceholderText = "Search..."
                SearchBox.Text = ""
                SearchBox.BackgroundColor3 = Theme.ItemBG
                SearchBox.Font = Enum.Font.Gotham
                SearchBox.TextSize = 14
                SearchBox.LayoutOrder = -1 
                Instance.new("UICorner", SearchBox).CornerRadius = UDim.new(0, 6)
                ApplyTextGradient(SearchBox)
                
                SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
                    local txt = SearchBox.Text:lower()
                    for _, child in ipairs(Scroll:GetChildren()) do
                        if child:IsA("TextButton") then
                            if txt == "" or string.find(child.Text:lower(), txt) then
                                child.Visible = true
                            else
                                child.Visible = false
                            end
                        end
                    end
                end)
            end

            local Open = false
            local BlockerConnection

            local function CloseDropdown()
                Open = false
                Scroll.Visible = false
                Frame.ZIndex = 5
                MainBtn.ZIndex = 6
                InputBlocker.Visible = false
                if BlockerConnection then 
                    BlockerConnection:Disconnect() 
                    BlockerConnection = nil 
                end
            end

            MainBtn.MouseButton1Click:Connect(function()
                Open = not Open
                Scroll.Visible = Open
                InputBlocker.Visible = Open
                if Open then
                    Frame.ZIndex = 550
                    MainBtn.ZIndex = 551
                    Scroll.ZIndex = 600
                    BlockerConnection = InputBlocker.MouseButton1Click:Connect(function() CloseDropdown() end)
                    if isSearchable and SearchBox then SearchBox.Text = "" end
                else
                    CloseDropdown()
                end
            end)
            
            for _, item in ipairs(options.List) do
                local ItemBtn = Instance.new("TextButton", Scroll)
                ItemBtn.Size = UDim2.new(1, -10, 0, 25)
                ItemBtn.BackgroundTransparency = 1
                ItemBtn.Text = item
                ItemBtn.Font = Enum.Font.Gotham
                ItemBtn.TextScaled = true
                ItemBtn.ZIndex = 605
                ItemBtn.AutoButtonColor = false
                ApplyTextGradient(ItemBtn)
                ItemBtn.MouseButton1Click:Connect(function()
                    Library.Flags[dFlag] = item
                    MainBtn.Text = item
                    pcall(options.Callback, item)
                    CloseDropdown()
                    Library:Save()
                end)
            end
            pcall(options.Callback, default)
            
            local DropdownAPI = {}
            function DropdownAPI:Set(value)
                Library.Flags[dFlag] = value
                MainBtn.Text = value
                pcall(options.Callback, value)
                Library:Save()
            end

            function DropdownAPI:Update(newList)
                Scroll.CanvasSize = UDim2.new(0,0,0,0)
                for _, child in ipairs(Scroll:GetChildren()) do
                    if child:IsA("TextButton") then child:Destroy() end
                end
                
                if isSearchable and SearchBox then 
                    SearchBox.Text = "" 
                    SearchBox.Parent = Scroll
                end

                for _, item in ipairs(newList) do
                    local ItemBtn = Instance.new("TextButton", Scroll)
                    ItemBtn.Size = UDim2.new(1, -10, 0, 25)
                    ItemBtn.BackgroundTransparency = 1
                    ItemBtn.Text = item
                    ItemBtn.Font = Enum.Font.Gotham
                    ItemBtn.TextScaled = true
                    ItemBtn.ZIndex = 605
                    ItemBtn.AutoButtonColor = false
                    ApplyTextGradient(ItemBtn)
                    ItemBtn.MouseButton1Click:Connect(function()
                        Library.Flags[dFlag] = item
                        MainBtn.Text = item
                        pcall(options.Callback, item)
                        CloseDropdown()
                        Library:Save()
                    end)
                end
            end
            return DropdownAPI
        end

        -- [[ Element: MultiDropdown ]]
        function Elements:MultiDropdown(options)
            local dFlag = options.Flag
            local default = Library.Flags[dFlag] or {}
            Library.Flags[dFlag] = default
            local isSearchable = options.Search or false

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 70)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, -20, 0, 24)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextScaled = true
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5
            ApplyTextGradient(Label)

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, -20, 0, 35)
            MainBtn.Position = UDim2.new(0, 10, 0, 30)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = "Select Items..."
            MainBtn.Font = Enum.Font.GothamSemibold
            MainBtn.TextScaled = true
            MainBtn.ZIndex = 6
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 8)
            MainBtn.AutoButtonColor = false
            ApplyTextGradient(MainBtn)

            local Scroll = Instance.new("ScrollingFrame", MainBtn)
            Scroll.Size = UDim2.new(1, 0, 0, isSearchable and 150 or 120) 
            Scroll.Position = UDim2.new(0, 0, 1, 5)
            Scroll.BackgroundColor3 = Theme.SidebarBG
            Scroll.Visible = false
            Scroll.ZIndex = 600 
            Scroll.ScrollBarThickness = 6
            Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
            Scroll.CanvasSize = UDim2.new(0,0,0,0)
            Scroll.Active = true
            
            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.Padding = UDim.new(0, 5)
            
            local SearchBox
            if isSearchable then
                SearchBox = Instance.new("TextBox", Scroll)
                SearchBox.ZIndex = 605 
                SearchBox.Size = UDim2.new(1, -10, 0, 25)
                SearchBox.PlaceholderText = "Search..."
                SearchBox.Text = ""
                SearchBox.BackgroundColor3 = Theme.ItemBG
                SearchBox.Font = Enum.Font.Gotham
                SearchBox.TextSize = 14
                SearchBox.LayoutOrder = -1 
                Instance.new("UICorner", SearchBox).CornerRadius = UDim.new(0, 6)
                ApplyTextGradient(SearchBox)
                
                SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
                    local txt = SearchBox.Text:lower()
                    for _, child in ipairs(Scroll:GetChildren()) do
                        if child:IsA("TextButton") then
                            if txt == "" or string.find(child.Text:lower(), txt) then
                                child.Visible = true
                            else
                                child.Visible = false
                            end
                        end
                    end
                end)
            end

            local Open = false
            local BlockerConnection

            local function CloseDropdown()
                Open = false
                Scroll.Visible = false
                Frame.ZIndex = 5
                MainBtn.ZIndex = 6
                InputBlocker.Visible = false
                if BlockerConnection then 
                    BlockerConnection:Disconnect() 
                    BlockerConnection = nil 
                end
            end

            MainBtn.MouseButton1Click:Connect(function()
                Open = not Open
                Scroll.Visible = Open
                InputBlocker.Visible = Open
                if Open then
                    Frame.ZIndex = 550
                    MainBtn.ZIndex = 551
                    Scroll.ZIndex = 600
                    BlockerConnection = InputBlocker.MouseButton1Click:Connect(function() CloseDropdown() end)
                    if isSearchable and SearchBox then SearchBox.Text = "" end
                else
                    CloseDropdown()
                end
            end)

            local function UpdateText()
                local count = 0
                for _, v in pairs(Library.Flags[dFlag]) do
                    if v then count = count + 1 end
                end
                MainBtn.Text = count > 0 and (count .. " Selected") or "Select Items..."
            end
        
            for _, item in ipairs(options.List) do
                if Library.Flags[dFlag][item] == nil then Library.Flags[dFlag][item] = false end
                local ItemBtn = Instance.new("TextButton", Scroll)
                ItemBtn.Size = UDim2.new(1, -10, 0, 25)
                ItemBtn.BackgroundTransparency = 1
                ItemBtn.Text = item
                ItemBtn.Font = Enum.Font.Gotham
                ItemBtn.TextScaled = true
                ItemBtn.ZIndex = 605
                ItemBtn.AutoButtonColor = false
                ApplyTextGradient(ItemBtn)
                ItemBtn.MouseButton1Click:Connect(function()
                    Library.Flags[dFlag][item] = not Library.Flags[dFlag][item]
                    UpdateText()
                    pcall(options.Callback, Library.Flags[dFlag])
                    Library:Save()
                end)
            end
            UpdateText()
            pcall(options.Callback, Library.Flags[dFlag])
        end
        
        -- [[ Element: Cycle ]]
        function Elements:Cycle(options)
            local cFlag = options.Flag
            local default = Library.Flags[cFlag] or options.Default or options.List[1]
            Library.Flags[cFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 70)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, -20, 0, 24)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextScaled = true
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5
            ApplyTextGradient(Label)

            local Button = Instance.new("TextButton", Frame)
            Button.Size = UDim2.new(1, -20, 0, 35)
            Button.Position = UDim2.new(0, 10, 0, 30)
            Button.BackgroundColor3 = Theme.ItemBG
            Button.Text = default
            Button.Font = Enum.Font.GothamSemibold
            Button.TextScaled = true
            Button.ZIndex = 5
            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 8)
            Button.AutoButtonColor = false
            ApplyTextGradient(Button)
            
            local idx = table.find(options.List, default) or 1

            Button.MouseButton1Click:Connect(function()
                idx = idx + 1
                if idx > #options.List then idx = 1 end
                local val = options.List[idx]
                Library.Flags[cFlag] = val
                Button.Text = val
                pcall(options.Callback, val)
                Library:Save()
            end)
            pcall(options.Callback, default)
        end

        -- [[ Element: Input ]]
        function Elements:Input(options)
            local tFlag = options.Flag
            local default = Library.Flags[tFlag] or options.Default or ""
            Library.Flags[tFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 70)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, -20, 0, 24)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextScaled = true
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5
            ApplyTextGradient(Label)

            local Input = Instance.new("TextBox", Frame)
            Input.Size = UDim2.new(1, -20, 0, 35)
            Input.Position = UDim2.new(0, 10, 0, 30)
            Input.BackgroundColor3 = Theme.ItemBG
            Input.Text = default
            Input.PlaceholderText = options.Placeholder or "Type here..."
            Input.Font = Enum.Font.GothamSemibold
            Input.TextScaled = true
            Input.ZIndex = 5
            Instance.new("UICorner", Input).CornerRadius = UDim.new(0, 8)
            Input.AutoButtonColor = false
            ApplyTextGradient(Input)

            Input.FocusLost:Connect(function()
                Library.Flags[tFlag] = Input.Text
                pcall(options.Callback, Input.Text)
                Library:Save()
            end)
            pcall(options.Callback, default)
        end

        -- [[ Element: Button ]]
        function Elements:Button(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 50)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            if options.Name == "" then return end

            local Btn = Instance.new("TextButton", Frame)
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.Position = UDim2.new(0, 0, 0, 5)
            
            -- Dégradé pour le bouton (Fond)
            local BtnGradient = Instance.new("UIGradient", Btn)
            BtnGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Theme.AccentStart),
                ColorSequenceKeypoint.new(1, Theme.AccentEnd)
            })
            BtnGradient.Rotation = 45

            Btn.BackgroundColor3 = Theme.ItemBG 
            Btn.BackgroundTransparency = 0.5 
            Btn.Text = options.Name
            Btn.Font = Enum.Font.GothamBold
            Btn.TextScaled = true
            Btn.ZIndex = 5
            Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 14)
            Btn.AutoButtonColor = false
            ApplyTextGradient(Btn) -- Dégradé sur texte

            -- Animation de survol
            local defaultSize = Btn.Size
            Btn.MouseEnter:Connect(function()
                TweenService:Create(Btn, TweenInfo.new(0.1), {Size = defaultSize + UDim2.new(0, 0, 0, 2)}):Play()
            end)
            Btn.MouseLeave:Connect(function()
                TweenService:Create(Btn, TweenInfo.new(0.1), {Size = defaultSize}):Play()
            end)

            Btn.MouseButton1Click:Connect(function()
                pcall(options.Callback)
            end)
        end
        
        -- [[ Element: Spacer ]]
        function Elements:Spacer(height)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, height or 10)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5
        end

        -- [[ Element: LinkBox (REDESIGNED: SIDE BY SIDE) ]]
        function Elements:LinkBox(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 70) 
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Position = UDim2.new(0, 0, 0, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextScaled = true
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5
            ApplyTextGradient(Label)

            -- Conteneur pour la ligne du bas (Input + Button)
            local BottomContainer = Instance.new("Frame", Frame)
            BottomContainer.Size = UDim2.new(1, 0, 0, 35)
            BottomContainer.Position = UDim2.new(0, 0, 0, 25)
            BottomContainer.BackgroundTransparency = 1
            BottomContainer.ZIndex = 5
            
            -- Zone de texte (URL) à GAUCHE (70%)
            local Box = Instance.new("TextLabel", BottomContainer)
            Box.Text = options.Link or "Loading..."
            Box.Size = UDim2.new(0.7, -5, 1, 0)
            Box.Position = UDim2.new(0, 0, 0, 0)
            Box.BackgroundColor3 = Theme.ItemBG
            Box.Font = Enum.Font.Gotham
            Box.TextScaled = true
            Box.TextWrapped = true
            Box.ZIndex = 5
            Instance.new("UICorner", Box).CornerRadius = UDim.new(0, 8)
            ApplyTextGradient(Box)

            -- Bouton Copy à DROITE (30%)
            local CopyBtn = Instance.new("TextButton", BottomContainer)
            CopyBtn.Text = "Copy"
            CopyBtn.Size = UDim2.new(0.3, 0, 1, 0)
            CopyBtn.AnchorPoint = Vector2.new(1, 0)
            CopyBtn.Position = UDim2.new(1, 0, 0, 0)
            CopyBtn.Font = Enum.Font.GothamBold
            CopyBtn.TextScaled = true
            CopyBtn.ZIndex = 5
            Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 8)
            CopyBtn.AutoButtonColor = false
            ApplyTextGradient(CopyBtn)
            
            -- Dégradé pour le bouton Copy (Fond)
            local CopyBtnGradient = Instance.new("UIGradient", CopyBtn)
            CopyBtnGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Theme.AccentStart),
                ColorSequenceKeypoint.new(1, Theme.AccentEnd)
            })
            CopyBtnGradient.Rotation = 45

            -- Animation de survol pour le bouton Copy
            local defaultCopySize = CopyBtn.Size
            CopyBtn.MouseEnter:Connect(function()
                TweenService:Create(CopyBtn, TweenInfo.new(0.1), {Size = defaultCopySize + UDim2.new(0, 0, 0, 2)}):Play()
            end)
            CopyBtn.MouseLeave:Connect(function()
                TweenService:Create(CopyBtn, TweenInfo.new(0.1), {Size = defaultCopySize}):Play()
            end)

            CopyBtn.MouseButton1Click:Connect(function()
                if setclipboard then
                    pcall(function() setclipboard(Box.Text) end)
                    CopyBtn.Text = "K"
                    task.wait(1)
                    CopyBtn.Text = "Copy"
                else
                    SendNotification("Clipboard Unavailable", "Cannot copy on this executor.", 3)
                end
            end)
        end

        return Elements
    end

    Library.WindowInstance = MainFrame
    Library.TabContainer = PagesContainer
    
    -- // AUTO-ADD CREDITS TAB
    local CreditsTab = WindowAPI:Tab("Credits", true)
    CreditsTab:Button({Name = "UI by KING HUB", Callback = function() 
    end})
    CreditsTab:LinkBox({Name = "Join Discord", Link = "https://discord.gg/RhDnUQr4Du"})
    
    return WindowAPI
end

return Library
