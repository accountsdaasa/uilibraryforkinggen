-- ================================================================= --
--     KING UI - UNIVERSAL REMASTERED (Mobile & PC Friendly)
--     >> BASED ON KING UI V7 + UNIVERSAL STYLE ANIMATIONS
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")

-- // DETECT DEVICE //
local IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled

-- // 1. Theme (Original King Colors)
local Theme = {
    WindowBG      = Color3.fromRGB(42, 40, 55),
    SidebarBG     = Color3.fromRGB(28, 26, 38),
    ItemBG        = Color3.fromRGB(65, 55, 85),
    AccentStart   = Color3.fromRGB(180, 60, 230),
    AccentEnd     = Color3.fromRGB(60, 160, 210),
    Text          = Color3.fromRGB(235, 235, 240),
    TextDark      = Color3.fromRGB(155, 150, 165),
    UIStrokeColor = Color3.fromRGB(90, 80, 115),
    Success       = Color3.fromRGB(60, 210, 100),
    Warning       = Color3.fromRGB(255, 200, 60),
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

-- // 3. Notification System (Modernized)
local function SendNotification(title, text, duration)
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 3,
            Icon = KINGHUB_DECAL_ID
        })
    end)
end

function Library:Notify(options)
    if type(options) == "table" then
        SendNotification(options.Title or "King Gen", options.Content or options.Text or "", options.Duration or 3)
    else
        SendNotification("King Gen", tostring(options), 3)
    end
end

-- // 4. Save System
function Library:Save()
    if writefile and makefolder then
        if not isfolder(self.FolderName) then makefolder(self.FolderName) end
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

-- // Utility: Smooth Drag
local function MakeDraggable(topbarobject, object, saveKey)
    local Dragging, DragInput, DragStart, StartPosition

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
            -- Smooth Drag utilizing TweenService usually, but direct update is more responsive for mobile
            object.Position = UDim2.new(
                StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, 
                StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y
            )
        end
    end)
end

-- // 5. Main Window Construction
function Library:Window(options)
    Library.CurrentConfig = options.ConfigName or "config.json"
    
    if CoreGui:FindFirstChild("KingGenUI") then CoreGui.KingGenUI:Destroy() end
    Library:Load()

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KingGenUI"
    ScreenGui.Parent = CoreGui
    ScreenGui.DisplayOrder = 999
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

    -- Scaling Logic for Mobile/PC
    local UIScale = Instance.new("UIScale", ScreenGui)
    if IsMobile then
        UIScale.Scale = 1.1 -- Slightly larger on mobile for touch
    else
        UIScale.Scale = 1.0
    end

    -- Main Container
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Name = "MainFrame"
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    -- Responsive Size
    MainFrame.Size = UDim2.new(0, 550, 0, 350) 
    MainFrame.BackgroundColor3 = Theme.SidebarBG
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = false -- Important for shadows/popups

    local MainCorner = Instance.new("UICorner", MainFrame)
    MainCorner.CornerRadius = UDim.new(0, 12) -- Rounder like Universal

    local MainStroke = Instance.new("UIStroke", MainFrame)
    MainStroke.Color = Theme.UIStrokeColor
    MainStroke.Transparency = 0.6
    MainStroke.Thickness = 1

    -- Shadow/Glow (Universal Style)
    local Shadow = Instance.new("ImageLabel", MainFrame)
    Shadow.Name = "Shadow"
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shadow.Size = UDim2.new(1, 120, 1, 120)
    Shadow.BackgroundTransparency = 1
    Shadow.Image = "rbxassetid://6014261993"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ImageTransparency = 0.4
    Shadow.ZIndex = -1
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(49, 49, 450, 450)

    -- Input Blocker (For Dropdowns)
    local InputBlocker = Instance.new("TextButton", MainFrame)
    InputBlocker.Name = "InputBlocker"
    InputBlocker.Size = UDim2.new(1, 0, 1, 0)
    InputBlocker.BackgroundTransparency = 1
    InputBlocker.Text = ""
    InputBlocker.Visible = false
    InputBlocker.ZIndex = 200

    -- [[ Title Bar ]]
    local TitleBar = Instance.new("Frame", MainFrame)
    TitleBar.Name = "TitleBar"
    TitleBar.Size = UDim2.new(1, 0, 0, 50)
    TitleBar.BackgroundColor3 = Theme.WindowBG
    TitleBar.BackgroundTransparency = 1
    TitleBar.ZIndex = 2

    local TitleDecor = Instance.new("Frame", TitleBar)
    TitleDecor.Size = UDim2.new(1, 0, 1, 0)
    TitleDecor.BackgroundColor3 = Theme.WindowBG
    TitleDecor.ZIndex = 1
    local TitleCorner = Instance.new("UICorner", TitleDecor)
    TitleCorner.CornerRadius = UDim.new(0, 12)
    -- Fix bottom corners to be square
    local DecorFix = Instance.new("Frame", TitleDecor)
    DecorFix.Size = UDim2.new(1, 0, 0.5, 0)
    DecorFix.Position = UDim2.new(0, 0, 0.5, 0)
    DecorFix.BackgroundColor3 = Theme.WindowBG
    DecorFix.BorderSizePixel = 0
    
    local Separator = Instance.new("Frame", TitleBar)
    Separator.Size = UDim2.new(1, 0, 0, 1)
    Separator.Position = UDim2.new(0, 0, 1, 0)
    Separator.BackgroundColor3 = Theme.UIStrokeColor
    Separator.BorderSizePixel = 0
    Separator.BackgroundTransparency = 0.5

    MakeDraggable(TitleBar, MainFrame)

    local Logo = Instance.new("ImageLabel", TitleBar)
    Logo.Size = UDim2.new(0, 32, 0, 32)
    Logo.Position = UDim2.new(0, 12, 0.5, -16)
    Logo.Image = KINGHUB_DECAL_ID
    Logo.BackgroundTransparency = 1
    Logo.ScaleType = Enum.ScaleType.Fit
    Logo.ZIndex = 3

    local TitleText = Instance.new("TextLabel", TitleBar)
    TitleText.Text = "KING <font color=\"rgb(180,60,230)\">GEN</font>" -- Rich Text for Accent
    TitleText.RichText = true
    TitleText.Size = UDim2.new(1, -100, 1, 0)
    TitleText.Position = UDim2.new(0, 54, 0, 0)
    TitleText.Font = Enum.Font.GothamBold
    TitleText.TextSize = 18
    TitleText.TextColor3 = Theme.Text
    TitleText.BackgroundTransparency = 1
    TitleText.TextXAlignment = Enum.TextXAlignment.Left
    TitleText.ZIndex = 3

    -- Close/Minimize Button (Standard Universal X)
    local CloseBtn = Instance.new("TextButton", TitleBar)
    CloseBtn.Size = UDim2.new(0, 40, 0, 40)
    CloseBtn.Position = UDim2.new(1, -45, 0.5, -20)
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.Text = "×"
    CloseBtn.Font = Enum.Font.Gotham
    CloseBtn.TextSize = 32
    CloseBtn.TextColor3 = Theme.TextDark
    CloseBtn.ZIndex = 3

    -- Floating Menu Button (Universal Style)
    local KGui = Instance.new("ScreenGui", CoreGui)
    KGui.Name = "KingButtonGui"
    KGui.DisplayOrder = 1000
    
    local KBtn = Instance.new("ImageButton", KGui)
    KBtn.Name = "ToggleBtn"
    KBtn.Size = UDim2.new(0, 60, 0, 60)
    KBtn.Image = KINGHUB_DECAL_ID
    KBtn.BackgroundTransparency = 1 -- Circular icon usually has transparency
    KBtn.Visible = false
    KBtn.Active = true
    
    -- Load saved position for button
    if Library.Flags["__K_POS_X_Scale"] then
        KBtn.Position = UDim2.new(
            Library.Flags["__K_POS_X_Scale"], Library.Flags["__K_POS_X_Offset"],
            Library.Flags["__K_POS_Y_Scale"], Library.Flags["__K_POS_Y_Offset"]
        )
    else
        KBtn.Position = UDim2.new(0.1, 0, 0.1, 0)
    end

    local KBtnStroke = Instance.new("UIStroke", KBtn)
    KBtnStroke.Color = Theme.AccentStart
    KBtnStroke.Thickness = 2
    KBtnStroke.Transparency = 0
    KBtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    
    local KBtnCorner = Instance.new("UICorner", KBtn)
    KBtnCorner.CornerRadius = UDim.new(1, 0) -- Circle

    MakeDraggable(KBtn, KBtn, "__K_POS")

    -- Intro Animation Function
    local function IntroAnim()
        MainFrame.Size = UDim2.new(0, 0, 0, 0)
        MainFrame.Visible = true
        TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 550, 0, 350)
        }):Play()
    end

    local function ToggleUI(bool)
        if bool == nil then bool = not MainFrame.Visible end
        
        if bool then
            KBtn.Visible = false
            MainFrame.Visible = true
            TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 550, 0, 350), BackgroundTransparency = 0
            }):Play()
            for _, child in pairs(MainFrame:GetDescendants()) do
                if child:IsA("TextLabel") or child:IsA("TextButton") or child:IsA("ImageLabel") then
                     TweenService:Create(child, TweenInfo.new(0.2), {TextTransparency = 0, ImageTransparency = 0}):Play()
                end
            end
        else
            TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                Size = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 1
            }):Play()
            task.wait(0.2)
            MainFrame.Visible = false
            KBtn.Visible = true
        end
    end

    CloseBtn.MouseButton1Click:Connect(function() ToggleUI(false) end)
    
    -- Smart logic for button click vs drag
    local KBtnStartPos
    KBtn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            KBtnStartPos = input.Position
        end
    end)
    KBtn.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            if (input.Position - KBtnStartPos).Magnitude < 5 then
                ToggleUI(true)
            end
        end
    end)

    -- [[ Layout: Sidebar & Pages ]]
    local Container = Instance.new("Frame", MainFrame)
    Container.Size = UDim2.new(1, 0, 1, -50)
    Container.Position = UDim2.new(0, 0, 0, 50)
    Container.BackgroundTransparency = 1
    
    local Sidebar = Instance.new("ScrollingFrame", Container)
    Sidebar.Size = UDim2.new(0, 140, 1, 0)
    Sidebar.BackgroundColor3 = Theme.SidebarBG
    Sidebar.BorderSizePixel = 0
    Sidebar.ScrollBarThickness = 2
    Sidebar.CanvasSize = UDim2.new(0,0,0,0)
    Sidebar.AutomaticCanvasSize = Enum.AutomaticSize.Y
    
    local SidebarLayout = Instance.new("UIListLayout", Sidebar)
    SidebarLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SidebarLayout.Padding = UDim.new(0, 6)
    
    local SidebarPad = Instance.new("UIPadding", Sidebar)
    SidebarPad.PaddingTop = UDim.new(0, 10)
    SidebarPad.PaddingLeft = UDim.new(0, 10)
    SidebarPad.PaddingRight = UDim.new(0, 10)

    local Pages = Instance.new("Frame", Container)
    Pages.Size = UDim2.new(1, -140, 1, 0)
    Pages.Position = UDim2.new(0, 140, 0, 0)
    Pages.BackgroundTransparency = 1
    Pages.ClipsDescendants = true -- Clip pages for clean look

    local WindowAPI = {}
    local FirstTab = true
    local TabButtons = {}
    local PageFrames = {}

    function WindowAPI:Tab(name, iconId)
        local Tab = {}
        
        local Page = Instance.new("ScrollingFrame", Pages)
        Page.Name = name .. "_Page"
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.BackgroundTransparency = 1
        Page.Visible = false
        Page.ScrollBarThickness = 4
        Page.ScrollBarImageColor3 = Theme.AccentEnd
        Page.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Page.CanvasSize = UDim2.new(0,0,0,0)
        
        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 10)
        
        local PagePad = Instance.new("UIPadding", Page)
        PagePad.PaddingTop = UDim.new(0, 15)
        PagePad.PaddingLeft = UDim.new(0, 15)
        PagePad.PaddingRight = UDim.new(0, 15)
        PagePad.PaddingBottom = UDim.new(0, 15)

        -- Tab Button
        local Btn = Instance.new("TextButton", Sidebar)
        Btn.Size = UDim2.new(1, 0, 0, 36)
        Btn.Text = name
        Btn.Font = Enum.Font.GothamBold
        Btn.TextSize = 13
        Btn.TextColor3 = Theme.TextDark
        Btn.BackgroundColor3 = Theme.SidebarBG
        Btn.AutoButtonColor = false
        Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 8)
        
        -- Animation Indicator
        local Indicator = Instance.new("Frame", Btn)
        Indicator.Size = UDim2.new(0, 4, 0.6, 0)
        Indicator.Position = UDim2.new(0, 0, 0.2, 0)
        Indicator.BackgroundColor3 = Theme.AccentStart
        Indicator.BackgroundTransparency = 1
        Instance.new("UICorner", Indicator).CornerRadius = UDim.new(0, 4)

        local function Activate()
            for _, b in ipairs(TabButtons) do
                TweenService:Create(b.Btn, TweenInfo.new(0.2), {TextColor3 = Theme.TextDark, BackgroundTransparency = 1}):Play()
                TweenService:Create(b.Ind, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
            end
            for _, p in ipairs(PageFrames) do p.Visible = false end
            
            TweenService:Create(Btn, TweenInfo.new(0.2), {TextColor3 = Theme.Text, BackgroundTransparency = 0.9}):Play()
            TweenService:Create(Indicator, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
            Page.Visible = true
        end

        Btn.MouseButton1Click:Connect(Activate)
        table.insert(TabButtons, {Btn = Btn, Ind = Indicator})
        table.insert(PageFrames, Page)

        if FirstTab then Activate() FirstTab = false end

        -- [[ Elements ]]
        
        -- TOGGLE
        function Tab:Toggle(options)
            local tFlag = options.Flag
            local default = Library.Flags[tFlag] or options.Default or false
            Library.Flags[tFlag] = default

            local ToggleFrame = Instance.new("TextButton", Page) -- Button for full click area
            ToggleFrame.Size = UDim2.new(1, 0, 0, 42)
            ToggleFrame.BackgroundColor3 = Theme.ItemBG
            ToggleFrame.AutoButtonColor = false
            Instance.new("UICorner", ToggleFrame).CornerRadius = UDim.new(0, 8)
            ToggleFrame.Text = ""

            local Title = Instance.new("TextLabel", ToggleFrame)
            Title.Text = options.Name
            Title.Size = UDim2.new(0.7, 0, 1, 0)
            Title.Position = UDim2.new(0, 12, 0, 0)
            Title.Font = Enum.Font.GothamSemibold
            Title.TextSize = 14
            Title.TextColor3 = Theme.Text
            Title.TextXAlignment = Enum.TextXAlignment.Left
            Title.BackgroundTransparency = 1

            local Toggler = Instance.new("Frame", ToggleFrame)
            Toggler.Size = UDim2.new(0, 40, 0, 20)
            Toggler.AnchorPoint = Vector2.new(1, 0.5)
            Toggler.Position = UDim2.new(1, -12, 0.5, 0)
            Toggler.BackgroundColor3 = Theme.SidebarBG
            Instance.new("UICorner", Toggler).CornerRadius = UDim.new(1, 0)
            
            local Knob = Instance.new("Frame", Toggler)
            Knob.Size = UDim2.new(0, 16, 0, 16)
            Knob.Position = UDim2.new(0, 2, 0.5, -8)
            Knob.BackgroundColor3 = Theme.TextDark
            Instance.new("UICorner", Knob).CornerRadius = UDim.new(1, 0)

            local function Update(val)
                Library.Flags[tFlag] = val
                
                local targetColor = val and Theme.AccentStart or Theme.SidebarBG
                local targetKnobColor = val and Theme.Text or Theme.TextDark
                local targetPos = val and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
                
                TweenService:Create(Toggler, TweenInfo.new(0.2), {BackgroundColor3 = targetColor}):Play()
                TweenService:Create(Knob, TweenInfo.new(0.2), {Position = targetPos, BackgroundColor3 = targetKnobColor}):Play()
                
                -- Loop handling
                if Library.ActiveLoops[tFlag] then task.cancel(Library.ActiveLoops[tFlag]) Library.ActiveLoops[tFlag] = nil end
                if val then
                    Library.ActiveLoops[tFlag] = task.spawn(function()
                        while Library.Flags[tFlag] do
                            pcall(options.Callback, true)
                            task.wait(options.Delay or 0.1)
                        end
                    end)
                else
                     pcall(options.Callback, false)
                end
                Library:Save()
            end

            ToggleFrame.MouseButton1Click:Connect(function()
                Update(not Library.Flags[tFlag])
            end)
            
            Update(default)
        end

        -- SLIDER
        function Tab:Slider(options)
            local sFlag = options.Flag
            local min, max = options.Min, options.Max
            local default = Library.Flags[sFlag] or options.Default or min
            
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 55)
            Frame.BackgroundColor3 = Theme.ItemBG
            Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)

            local Title = Instance.new("TextLabel", Frame)
            Title.Text = options.Name
            Title.Position = UDim2.new(0, 12, 0, 8)
            Title.Font = Enum.Font.GothamSemibold
            Title.TextSize = 14
            Title.TextColor3 = Theme.Text
            Title.TextXAlignment = Enum.TextXAlignment.Left
            Title.BackgroundTransparency = 1
            
            local ValueLabel = Instance.new("TextLabel", Frame)
            ValueLabel.Text = tostring(default) .. (options.Suffix or "")
            ValueLabel.Size = UDim2.new(0, 50, 0, 20)
            ValueLabel.Position = UDim2.new(1, -62, 0, 8)
            ValueLabel.Font = Enum.Font.Gotham
            ValueLabel.TextSize = 13
            ValueLabel.TextColor3 = Theme.TextDark
            ValueLabel.BackgroundTransparency = 1
            ValueLabel.TextXAlignment = Enum.TextXAlignment.Right

            local BarBG = Instance.new("Frame", Frame)
            BarBG.Size = UDim2.new(1, -24, 0, 6)
            BarBG.Position = UDim2.new(0, 12, 0, 35)
            BarBG.BackgroundColor3 = Theme.SidebarBG
            Instance.new("UICorner", BarBG).CornerRadius = UDim.new(1, 0)
            
            local Fill = Instance.new("Frame", BarBG)
            Fill.Size = UDim2.new(0, 0, 1, 0)
            Fill.BackgroundColor3 = Theme.AccentStart
            Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)

            local function UpdateFromInput(input)
                local sizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1)
                local val = math.floor(min + ((max - min) * sizeX))
                Library.Flags[sFlag] = val
                ValueLabel.Text = tostring(val) .. (options.Suffix or "")
                TweenService:Create(Fill, TweenInfo.new(0.1), {Size = UDim2.new(sizeX, 0, 1, 0)}):Play()
                pcall(options.Callback, val)
                Library:Save()
            end
            
            -- Set Initial
            local percent = (default - min) / (max - min)
            Fill.Size = UDim2.new(percent, 0, 1, 0)

            local Dragging = false
            Frame.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    UpdateFromInput(input)
                end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if Dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                    UpdateFromInput(input)
                end
            end)
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then Dragging = false end
            end)
        end

        -- DROPDOWN (Fixed Overflow)
        function Tab:Dropdown(options)
            local dFlag = options.Flag
            local default = Library.Flags[dFlag] or options.Default or options.List[1]
            Library.Flags[dFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 55) -- Base size
            Frame.BackgroundColor3 = Theme.ItemBG
            Frame.ZIndex = 5
            Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)
            
            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Position = UDim2.new(0, 12, 0, 0)
            Label.Size = UDim2.new(1, -50, 1, 0)
            Label.Font = Enum.Font.GothamSemibold
            Label.TextColor3 = Theme.Text
            Label.TextSize = 14
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.BackgroundTransparency = 1

            local Icon = Instance.new("TextLabel", Frame)
            Icon.Text = "v"
            Icon.Position = UDim2.new(1, -30, 0, 0)
            Icon.Size = UDim2.new(0, 30, 1, 0)
            Icon.Font = Enum.Font.GothamBold
            Icon.TextColor3 = Theme.TextDark
            Icon.BackgroundTransparency = 1

            -- Logic
            local Open = false
            local DropScroll = Instance.new("ScrollingFrame")
            DropScroll.Name = "DropScroll"
            DropScroll.Size = UDim2.new(0, 0, 0, 0) -- Set dynamically
            DropScroll.BackgroundColor3 = Theme.ItemBG
            DropScroll.BorderSizePixel = 0
            DropScroll.ScrollBarThickness = 4
            DropScroll.ZIndex = 100
            Instance.new("UICorner", DropScroll).CornerRadius = UDim.new(0, 8)
            
            local List = Instance.new("UIListLayout", DropScroll)
            List.SortOrder = Enum.SortOrder.LayoutOrder
            List.Padding = UDim.new(0, 4)
            Instance.new("UIPadding", DropScroll).PaddingTop = UDim.new(0, 8)
            Instance.new("UIPadding", DropScroll).PaddingLeft = UDim.new(0, 8)

            local function Refresh()
                for _, c in pairs(DropScroll:GetChildren()) do if c:IsA("TextButton") then c:Destroy() end end
                for _, item in ipairs(options.List) do
                    local B = Instance.new("TextButton", DropScroll)
                    B.Size = UDim2.new(1, -10, 0, 30)
                    B.Text = "  " .. item
                    B.BackgroundColor3 = Theme.SidebarBG
                    B.TextColor3 = Theme.TextDark
                    B.Font = Enum.Font.Gotham
                    B.TextSize = 13
                    B.TextXAlignment = Enum.TextXAlignment.Left
                    Instance.new("UICorner", B).CornerRadius = UDim.new(0, 6)
                    
                    if item == Library.Flags[dFlag] then
                        B.TextColor3 = Theme.AccentStart
                    end

                    B.MouseButton1Click:Connect(function()
                        Library.Flags[dFlag] = item
                        Label.Text = options.Name .. ": " .. item
                        pcall(options.Callback, item)
                        -- Close
                        Open = false
                        DropScroll.Visible = false
                        InputBlocker.Visible = false
                        Icon.Rotation = 0
                        Library:Save()
                    end)
                end
                DropScroll.CanvasSize = UDim2.new(0, 0, 0, List.AbsoluteContentSize.Y + 16)
            end

            -- Update Pos loop
            local function UpdatePos()
                if Open then
                    DropScroll.Position = UDim2.new(0, Frame.AbsolutePosition.X, 0, Frame.AbsolutePosition.Y + Frame.AbsoluteSize.Y + 5)
                    DropScroll.Size = UDim2.new(0, Frame.AbsoluteSize.X, 0, 150)
                end
            end

            local ClickBtn = Instance.new("TextButton", Frame)
            ClickBtn.Size = UDim2.new(1,0,1,0)
            ClickBtn.BackgroundTransparency = 1
            ClickBtn.Text = ""
            
            ClickBtn.MouseButton1Click:Connect(function()
                Open = not Open
                if Open then
                    Refresh()
                    DropScroll.Parent = ScreenGui -- Reparent to Float
                    DropScroll.Visible = true
                    InputBlocker.Visible = true
                    InputBlocker.MouseButton1Click:Connect(function()
                        Open = false
                        DropScroll.Visible = false
                        InputBlocker.Visible = false
                        Icon.Rotation = 0
                    end)
                    TweenService:Create(Icon, TweenInfo.new(0.2), {Rotation = 180}):Play()
                    RunService.RenderStepped:Connect(UpdatePos)
                else
                    DropScroll.Visible = false
                    InputBlocker.Visible = false
                    TweenService:Create(Icon, TweenInfo.new(0.2), {Rotation = 0}):Play()
                end
            end)

            Label.Text = options.Name .. ": " .. tostring(default)
            pcall(options.Callback, default)
        end

        -- BUTTON
        function Tab:Button(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 45)
            Frame.BackgroundTransparency = 1
            
            local Btn = Instance.new("TextButton", Frame)
            Btn.Size = UDim2.new(1, 0, 1, 0)
            Btn.BackgroundColor3 = Theme.ItemBG
            Btn.Text = options.Name
            Btn.Font = Enum.Font.GothamBold
            Btn.TextSize = 14
            Btn.TextColor3 = Theme.Text
            Btn.AutoButtonColor = false
            Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 8)
            
            local Gradient = Instance.new("UIGradient", Btn)
            Gradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Theme.AccentStart),
                ColorSequenceKeypoint.new(1, Theme.AccentEnd)
            })
            Gradient.Transparency = NumberSequence.new(0.4)

            Btn.MouseButton1Click:Connect(function()
                TweenService:Create(Gradient, TweenInfo.new(0.1), {Transparency = NumberSequence.new(0)}):Play()
                task.wait(0.1)
                TweenService:Create(Gradient, TweenInfo.new(0.3), {Transparency = NumberSequence.new(0.4)}):Play()
                pcall(options.Callback)
            end)
        end
        
        -- LABEL
        function Tab:Label(text)
            local Lab = Instance.new("TextLabel", Page)
            Lab.Size = UDim2.new(1, 0, 0, 25)
            Lab.BackgroundTransparency = 1
            Lab.Text = text
            Lab.TextColor3 = Theme.TextDark
            Lab.Font = Enum.Font.Gotham
            Lab.TextSize = 14
        end

        return Tab
    end
    
    -- Credits Tab Auto
    local Credits = WindowAPI:Tab("Credits")
    Credits:Label("Created with King Gen UI")
    Credits:Button({
        Name = "Join Discord",
        Callback = function()
            setclipboard("https://discord.gg/RhDnUQr4Du")
            Library:Notify({Title="Discord", Content="Link Copied to Clipboard!"})
        end
    })

    IntroAnim()
    return WindowAPI
end

return Library
