-- ================================================================= --
--     KING UI - FINAL MODERNIZED V20 (All Functions Restored)
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")

-- // 0. Modern Animation Helper
local function Tween(obj, props, time, style, dir)
    TweenService:Create(obj, TweenInfo.new(time or 0.3, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out), props):Play()
end

-- // 1. Theme Defaults & Presets
local DEFAULTS = {
    ToggleKey = "RightControl",
    ThemeName = "Default",
    KSize = 50,
    GuiScale = 1
}

local COLOR_PALETTE = {
    ["Red"] = 0, ["Orange"] = 0.08, ["Yellow"] = 0.16, ["Lime"] = 0.25,
    ["Green"] = 0.33, ["Cyan"] = 0.5, ["Blue"] = 0.6, ["Purple"] = 0.77,
    ["Pink"] = 0.83, ["White/Grey"] = 0
}

local BUILTIN_THEMES = {
    ["Default"] = {
        WindowBG = Color3.fromRGB(20, 20, 25),
        SidebarBG = Color3.fromRGB(15, 15, 20),
        ItemBG = Color3.fromRGB(30, 30, 35),
        Accent1 = Color3.fromRGB(180, 60, 230),
        Accent2 = Color3.fromRGB(60, 160, 210),
        ToggleON = Color3.fromRGB(180, 60, 230),
        Text = Color3.fromRGB(240, 240, 245),
        TextDark = Color3.fromRGB(120, 120, 130),
        Stroke = Color3.fromRGB(45, 45, 50)
    },
    ["Snow"] = {
        WindowBG = Color3.fromRGB(245, 245, 250),
        SidebarBG = Color3.fromRGB(255, 255, 255),
        ItemBG = Color3.fromRGB(235, 235, 240),
        Accent1 = Color3.fromRGB(100, 180, 255),
        Accent2 = Color3.fromRGB(180, 180, 200),
        ToggleON = Color3.fromRGB(100, 180, 255),
        Text = Color3.fromRGB(40, 40, 50),
        TextDark = Color3.fromRGB(150, 150, 160),
        Stroke = Color3.fromRGB(210, 210, 220)
    },
    ["Pinky"] = {
        WindowBG = Color3.fromRGB(40, 30, 35),
        SidebarBG = Color3.fromRGB(30, 20, 25),
        ItemBG = Color3.fromRGB(50, 40, 45),
        Accent1 = Color3.fromRGB(255, 105, 180),
        Accent2 = Color3.fromRGB(255, 182, 193),
        ToggleON = Color3.fromRGB(255, 105, 180),
        Text = Color3.fromRGB(255, 235, 240),
        TextDark = Color3.fromRGB(180, 140, 150),
        Stroke = Color3.fromRGB(80, 50, 60)
    }
}

local Theme = {
    WindowBG    = BUILTIN_THEMES["Default"].WindowBG,
    SidebarBG   = BUILTIN_THEMES["Default"].SidebarBG,
    ItemBG      = BUILTIN_THEMES["Default"].ItemBG,
    AccentStart = BUILTIN_THEMES["Default"].Accent1,
    AccentEnd   = BUILTIN_THEMES["Default"].Accent2,
    ToggleON    = BUILTIN_THEMES["Default"].ToggleON,
    Text        = BUILTIN_THEMES["Default"].Text,
    TextDark    = BUILTIN_THEMES["Default"].TextDark,
    UIStrokeColor = BUILTIN_THEMES["Default"].Stroke,
}

Library.ThemeObjects = {
    Gradients = {}, TitleGradients = {}, Corners = {}, Frames = {},     
    BgMain = {}, BgSidebar = {}, BgItems = {}, Strokes = {},
    Texts = {}, TextDarks = {}, Tabs = {}, Toggles = {}
}

Library.Flags = {}
Library.SavedThemes = {} 
Library.FolderName = "KingGen"
Library.CurrentConfig = "default.json"
Library.ThemesFile = "themes.json"
Library.ActiveLoops = {} 
Library.MainScale = nil
Library.CurrentTab = nil 

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
            Title = title, Text = text, Duration = duration or 3
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

-- // 4. Save/Load System
function Library:Save()
    if writefile and makefolder then
        if not isfolder(self.FolderName) then makefolder(self.FolderName) end
        local ok, json = pcall(function() return HttpService:JSONEncode(self.Flags) end)
        if ok and json then writefile(self.FolderName .. "/" .. self.CurrentConfig, json) end
        local ok2, themeJson = pcall(function() return HttpService:JSONEncode(self.SavedThemes) end)
        if ok2 and themeJson then writefile(self.FolderName .. "/" .. self.ThemesFile, themeJson) end
    end
end

function Library:Load()
    if readfile and isfile and isfolder(self.FolderName) then
        local path = self.FolderName .. "/" .. self.CurrentConfig
        if isfile(path) then
            local success, decoded = pcall(function() return HttpService:JSONDecode(readfile(path)) end)
            if success and type(decoded) == "table" then
                for flag, value in pairs(decoded) do self.Flags[flag] = value end
            end
        end
        local themePath = self.FolderName .. "/" .. self.ThemesFile
        if isfile(themePath) then
             local success, decoded = pcall(function() return HttpService:JSONDecode(readfile(themePath)) end)
             if success and type(decoded) == "table" then self.SavedThemes = decoded end
        end
    end
end

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
            local smoothPos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
            object.Position = smoothPos
        end
    end)
end

-- // Helper: Colors
local function ToColor(tbl) return Color3.new(tbl.R, tbl.G, tbl.B) end
local function FromColor(col) return {R = col.R, G = col.G, B = col.B} end

-- // Helper: Global Theme Update
function Library:ApplyTheme(themeName)
    if themeName then
        local data = BUILTIN_THEMES[themeName]
        if not data and Library.SavedThemes[themeName] then
            local saved = Library.SavedThemes[themeName]
            data = {
                WindowBG = ToColor(saved.WindowBG), SidebarBG = ToColor(saved.SidebarBG), ItemBG = ToColor(saved.ItemBG),
                Accent1 = ToColor(saved.Accent1), Accent2 = ToColor(saved.Accent2), ToggleON = saved.ToggleON and ToColor(saved.ToggleON) or ToColor(saved.Accent2),
                Text = ToColor(saved.Text), TextDark = ToColor(saved.TextDark), Stroke = ToColor(saved.Stroke),
            }
        end
        if data then
            Theme.WindowBG = data.WindowBG
            Theme.SidebarBG = data.SidebarBG
            Theme.ItemBG = data.ItemBG
            Theme.AccentStart = data.Accent1
            Theme.AccentEnd = data.Accent2
            Theme.ToggleON = data.ToggleON or data.Accent2
            Theme.Text = data.Text
            Theme.TextDark = data.TextDark
            Theme.UIStrokeColor = data.Stroke
            Library.Flags["__CurrentTheme"] = themeName
        end
    end
    
    for _, gradient in pairs(Library.ThemeObjects.Gradients) do
        gradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Theme.AccentStart), ColorSequenceKeypoint.new(1, Theme.AccentEnd) })
    end
    for _, obj in pairs(Library.ThemeObjects.BgMain) do
        if obj:IsA("UIGradient") then
            obj.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Theme.WindowBG), ColorSequenceKeypoint.new(1, Theme.WindowBG) })
        elseif obj:IsA("GuiObject") then
             Tween(obj, {BackgroundColor3 = Theme.WindowBG}, 0.3)
        end
    end
    for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
        if obj:IsA("UIGradient") then
             obj.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Theme.SidebarBG), ColorSequenceKeypoint.new(1, Theme.SidebarBG) })
        elseif obj:IsA("GuiObject") then
             Tween(obj, {BackgroundColor3 = Theme.SidebarBG}, 0.3)
        end
    end
    for _, obj in pairs(Library.ThemeObjects.BgItems) do
        if obj:IsA("GuiObject") then Tween(obj, {BackgroundColor3 = Theme.ItemBG}, 0.3) end
    end
    for _, obj in pairs(Library.ThemeObjects.Strokes) do
        Tween(obj, {Color = Theme.UIStrokeColor}, 0.3)
    end
    for _, obj in pairs(Library.ThemeObjects.Texts) do
        Tween(obj, {TextColor3 = Theme.Text}, 0.3)
    end
    for _, obj in pairs(Library.ThemeObjects.TextDarks) do
        Tween(obj, {TextColor3 = Theme.TextDark}, 0.3)
    end

    for _, tab in pairs(Library.ThemeObjects.Tabs) do
        local isActive = (tab.Name == Library.CurrentTab)
        if isActive then
            Tween(tab.Btn, {BackgroundColor3 = Theme.ItemBG, TextColor3 = Theme.Text}, 0.3)
            Tween(tab.Indicator, {BackgroundTransparency = 0, BackgroundColor3 = Theme.AccentStart}, 0.3)
        else
            Tween(tab.Btn, {BackgroundColor3 = Theme.SidebarBG, TextColor3 = Theme.TextDark}, 0.3)
            Tween(tab.Indicator, {BackgroundTransparency = 1, BackgroundColor3 = Theme.AccentStart}, 0.3)
        end
    end

    for _, toggle in pairs(Library.ThemeObjects.Toggles) do
        toggle.Update(Library.Flags[toggle.Flag])
    end
end

-- // 5. Main Window
function Library:Window(options)
    Library.CurrentConfig = options.ConfigName or "config.json"

    if CoreGui:FindFirstChild("KingGenUI") then 
        SendNotification("KingUI", "Already Running", 5)
        return
    end
    Library:Load()

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KingGenUI" 
    ScreenGui.Parent = CoreGui
    ScreenGui.DisplayOrder = 999
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local ShadowHolder = Instance.new("Frame", ScreenGui)
    ShadowHolder.Name = "Shadow"
    ShadowHolder.BackgroundTransparency = 1
    ShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
    ShadowHolder.Size = UDim2.new(0, 650, 0, 400) 
    ShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0)
    ShadowHolder.ZIndex = 0

    local ShadowImage = Instance.new("ImageLabel", ShadowHolder)
    ShadowImage.Image = "rbxassetid://6015897843" 
    ShadowImage.ImageColor3 = Color3.new(0, 0, 0)
    ShadowImage.ImageTransparency = 0.4
    ShadowImage.ScaleType = Enum.ScaleType.Slice
    ShadowImage.SliceCenter = Rect.new(49, 49, 450, 450)
    ShadowImage.Size = UDim2.new(1, 15, 1, 15)
    ShadowImage.Position = UDim2.new(0, -7, 0, -7)
    ShadowImage.BackgroundTransparency = 1
    ShadowImage.ZIndex = 0

    local MainFrame = Instance.new("Frame", ShadowHolder)
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(1, -20, 1, -20)
    MainFrame.Position = UDim2.new(0, 10, 0, 10)
    MainFrame.BackgroundColor3 = Theme.WindowBG
    MainFrame.BorderSizePixel = 0
    MainFrame.ZIndex = 1
    MainFrame.ClipsDescendants = true 

    local MainScale = Instance.new("UIScale", ShadowHolder)
    MainScale.Scale = Library.Flags["__GuiScale"] or DEFAULTS.GuiScale
    Library.MainScale = MainScale

    table.insert(Library.ThemeObjects.Frames, MainFrame)
    table.insert(Library.ThemeObjects.BgMain, MainFrame)
    
    local MainCorner = Instance.new("UICorner", MainFrame)
    MainCorner.CornerRadius = UDim.new(0, 12)
    table.insert(Library.ThemeObjects.Corners, MainCorner)
    
    local FrameStroke = Instance.new("UIStroke", MainFrame)
    FrameStroke.Color = Theme.UIStrokeColor
    FrameStroke.Transparency = 0.8
    FrameStroke.Thickness = 1
    table.insert(Library.ThemeObjects.Strokes, FrameStroke)
    
    local sizeConstraint = Instance.new("UISizeConstraint", ShadowHolder)
    sizeConstraint.MaxSize = Vector2.new(9999, 9999)
    sizeConstraint.MinSize = Vector2.new(300, 200)

    local InputBlocker = Instance.new("TextButton", MainFrame)
    InputBlocker.Name = "InputBlocker"
    InputBlocker.Size = UDim2.new(1, 0, 1, 0)
    InputBlocker.BackgroundTransparency = 1
    InputBlocker.Text = ""
    InputBlocker.Visible = false
    InputBlocker.ZIndex = 500 
   
    local TitleBar = Instance.new("Frame", MainFrame)
    TitleBar.Name = "TitleBar"
    TitleBar.Size = UDim2.new(1, 0, 0, 50)
    TitleBar.BackgroundColor3 = Theme.SidebarBG
    TitleBar.BackgroundTransparency = 1
    TitleBar.ZIndex = 2
    
    MakeDraggable(TitleBar, ShadowHolder)

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
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextSize = 16
    TitleLabel.TextColor3 = Theme.Text
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left 
    TitleLabel.ZIndex = 3
    table.insert(Library.ThemeObjects.Texts, TitleLabel)

    local TitleDivider = Instance.new("Frame", TitleBar)
    TitleDivider.Size = UDim2.new(1, 0, 0, 1)
    TitleDivider.Position = UDim2.new(0,0,1,0)
    TitleDivider.BackgroundColor3 = Theme.UIStrokeColor
    TitleDivider.BorderSizePixel = 0
    table.insert(Library.ThemeObjects.Strokes, TitleDivider)

    local MinBtn = Instance.new("TextButton", TitleBar)
    MinBtn.Size = UDim2.new(0, 30, 0, 30)
    MinBtn.Position = UDim2.new(1, -40, 0.5, -15)
    MinBtn.Text = "" 
    MinBtn.BackgroundColor3 = Theme.ItemBG
    MinBtn.ZIndex = 3
    Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 8)
    MinBtn.AutoButtonColor = false
    table.insert(Library.ThemeObjects.BgItems, MinBtn)

    local MinIcon = Instance.new("ImageLabel", MinBtn)
    MinIcon.Size = UDim2.new(0, 14, 0, 14)
    MinIcon.Position = UDim2.new(0.5, -7, 0.5, -7)
    MinIcon.BackgroundTransparency = 1
    MinIcon.Image = "rbxassetid://6031094678"
    MinIcon.ImageColor3 = Theme.Text
    table.insert(Library.ThemeObjects.Texts, MinIcon)

    MinBtn.MouseEnter:Connect(function() Tween(MinBtn, {BackgroundColor3 = Theme.AccentStart}, 0.2) end)
    MinBtn.MouseLeave:Connect(function() 
        if not Library.Flags["__UI_MINIMIZED"] then Tween(MinBtn, {BackgroundColor3 = Theme.ItemBG}, 0.2) end 
    end)

    local KGui = Instance.new("ScreenGui", CoreGui)
    KGui.Name = "KButtonGui"
    KGui.ResetOnSpawn = false
    KGui.DisplayOrder = 1000
    local KBtn = Instance.new("ImageButton", KGui) 
    KBtn.Image = KINGHUB_DECAL_ID
    KBtn.BackgroundTransparency = 1
    KBtn.Size = UDim2.new(0, 0, 0, 0)
    KBtn.Position = UDim2.new(0.9, -50, 0.5, 0)
    KBtn.Visible = false
    KBtn.ZIndex = 10
    MakeDraggable(KBtn, KBtn, "__K_POS")

    local function SetState(isMinimized)
        Library.Flags["__UI_MINIMIZED"] = isMinimized
        Library:Save()
        local kSize = Library.Flags["__K_Size"] or DEFAULTS.KSize
        if isMinimized then
            Tween(ShadowHolder, {Position = UDim2.new(0.5, 0, 1.5, 0), Rotation = 10}, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In)
            task.wait(0.4) 
            ShadowHolder.Visible = false
            KBtn.Visible = true 
            Tween(KBtn, {Size = UDim2.new(0, kSize, 0, kSize), ImageTransparency = 0}, 0.4, Enum.EasingStyle.Back)
        else
            Tween(KBtn, {Size = UDim2.new(0, 0, 0, 0), ImageTransparency = 1}, 0.3, Enum.EasingStyle.Back)
            task.wait(0.2) 
            KBtn.Visible = false
            ShadowHolder.Visible = true
            ShadowHolder.Rotation = -10
            ShadowHolder.Position = UDim2.new(0.5, 0, 1.5, 0)
            Tween(ShadowHolder, {Position = UDim2.new(0.5, 0, 0.5, 0), Rotation = 0}, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
        end
    end
    
    function Library:UpdateKButtonSize()
        if Library.Flags["__UI_MINIMIZED"] then
             local kSize = Library.Flags["__K_Size"] or DEFAULTS.KSize
             Tween(KBtn, {Size = UDim2.new(0, kSize, 0, kSize)}, 0.3)
        end
    end

    MinBtn.MouseButton1Click:Connect(function() SetState(true) end)

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        local bind = Library.Flags["__ToggleKey"] or DEFAULTS.ToggleKey
        if input.KeyCode.Name == bind then
            local currentlyMinimized = Library.Flags["__UI_MINIMIZED"]
            if currentlyMinimized == nil then currentlyMinimized = false end
            SetState(not currentlyMinimized)
        end
    end)
    
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
        ShadowHolder.Visible = false
        KBtn.Visible = true
        KBtn.ImageTransparency = 0 
        local kSize = Library.Flags["__K_Size"] or DEFAULTS.KSize
        KBtn.Size = UDim2.new(0, kSize, 0, kSize)
    else 
        KBtn.Visible = false
        ShadowHolder.Visible = true 
    end
    
    local SidebarContainer = Instance.new("Frame", MainFrame)
    SidebarContainer.Name = "SidebarContainer"
    SidebarContainer.Size = UDim2.new(0, 130, 1, -50) 
    SidebarContainer.Position = UDim2.new(0, 0, 0, 50)
    SidebarContainer.BackgroundColor3 = Theme.SidebarBG
    SidebarContainer.BorderSizePixel = 0
    SidebarContainer.ZIndex = 2
    table.insert(Library.ThemeObjects.BgSidebar, SidebarContainer)
    
    local SidebarDivider = Instance.new("Frame", SidebarContainer)
    SidebarDivider.Size = UDim2.new(0, 1, 1, 0)
    SidebarDivider.Position = UDim2.new(1, -1, 0, 0)
    SidebarDivider.BackgroundColor3 = Theme.UIStrokeColor
    SidebarDivider.BorderSizePixel = 0
    table.insert(Library.ThemeObjects.Strokes, SidebarDivider)
     
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

    TabListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        TabBar.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 20)
    end)

    local PagesContainer = Instance.new("Frame", MainFrame)
    PagesContainer.Size = UDim2.new(1, -130, 1, -50) 
    PagesContainer.Position = UDim2.new(0, 130, 0, 50) 
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
        local TabBtn = Instance.new("TextButton", TabBar)
        TabBtn.Size = UDim2.new(1, -20, 0, 36) 
        TabBtn.Text = name
        TabBtn.Font = Enum.Font.GothamMedium
        TabBtn.TextSize = 13
        TabBtn.AutoButtonColor = false 
        TabBtn.ZIndex = 3
        Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 6)
        
        local Indicator = Instance.new("Frame", TabBtn)
        Indicator.Size = UDim2.new(0, 3, 0.6, 0)
        Indicator.Position = UDim2.new(0, 0, 0.2, 0)
        Indicator.BackgroundColor3 = Theme.AccentStart
        Indicator.BackgroundTransparency = 1
        Instance.new("UICorner", Indicator).CornerRadius = UDim.new(0, 4)

        local function UpdateTabButtonStyle(button, indicator, isActive)
            if isActive then
                Tween(button, {BackgroundColor3 = Theme.ItemBG, TextColor3 = Theme.Text}, 0.3)
                Tween(indicator, {BackgroundTransparency = 0, BackgroundColor3 = Theme.AccentStart}, 0.3)
            else
                Tween(button, {BackgroundColor3 = Theme.SidebarBG, TextColor3 = Theme.TextDark}, 0.3)
                Tween(indicator, {BackgroundTransparency = 1}, 0.3)
            end
        end

        table.insert(TabButtons, {Btn = TabBtn, Indicator = Indicator, Name = name})
        table.insert(Library.ThemeObjects.Tabs, {Btn = TabBtn, Indicator = Indicator, Name = name})

        local Page = Instance.new("ScrollingFrame", PagesContainer)
        Page.Name = name .. "_Page"
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.BackgroundTransparency = 1
        Page.ScrollBarThickness = 4
        Page.ScrollBarImageColor3 = Theme.AccentEnd
        Page.Visible = FirstTab
        Page.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Page.CanvasSize = UDim2.new(0,0,0,0)
        Page.ZIndex = 2
        
        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 8)

        local PagePadding = Instance.new("UIPadding", Page)
        PagePadding.PaddingRight = UDim.new(0, 10)
        PagePadding.PaddingBottom = UDim.new(0, 10)

        table.insert(Pages, {Frame = Page, Name = name})

        if FirstTab then Library.CurrentTab = name end 

        TabBtn.MouseButton1Click:Connect(function()
            Library.CurrentTab = name 
            for _, tabData in ipairs(TabButtons) do UpdateTabButtonStyle(tabData.Btn, tabData.Indicator, false) end
            UpdateTabButtonStyle(TabBtn, Indicator, true)
            for _, pageData in ipairs(Pages) do
                pageData.Frame.Visible = (pageData.Name == name)
            end
        end)
        
        UpdateTabButtonStyle(TabBtn, Indicator, FirstTab)
        FirstTab = false

        local Elements = {}

        -- [[ Element: Toggle ]]
        function Elements:Toggle(options)
            local tFlag = options.Flag
            local default = Library.Flags[tFlag] or options.Default or false
            Library.Flags[tFlag] = default
            local delayTime = options.Delay or 0.1 

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 38)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(0.7, 0, 1, 0)
            Label.Font = Enum.Font.GothamMedium
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.ZIndex = 5
            table.insert(Library.ThemeObjects.Texts, Label)

            local SwitchBg = Instance.new("Frame", Frame)
            SwitchBg.Size = UDim2.new(0, 44, 0, 22)
            SwitchBg.Position = UDim2.new(1, -44, 0.5, -11)
            SwitchBg.BackgroundColor3 = Theme.ItemBG
            Instance.new("UICorner", SwitchBg).CornerRadius = UDim.new(1, 0)
            
            local SwitchKnob = Instance.new("Frame", SwitchBg)
            SwitchKnob.Size = UDim2.new(0, 18, 0, 18)
            SwitchKnob.Position = UDim2.new(0, 2, 0.5, -9)
            SwitchKnob.BackgroundColor3 = Theme.Text
            Instance.new("UICorner", SwitchKnob).CornerRadius = UDim.new(1, 0)
            
            local ClickArea = Instance.new("TextButton", Frame)
            ClickArea.Text = ""
            ClickArea.BackgroundTransparency = 1
            ClickArea.Size = UDim2.new(0, 50, 1, 0)
            ClickArea.Position = UDim2.new(1, -50, 0, 0)
            ClickArea.ZIndex = 10 

            local function UpdateVisuals(val)
                if val then
                    Tween(SwitchBg, {BackgroundColor3 = Theme.ToggleON}, 0.25)
                    Tween(SwitchKnob, {Position = UDim2.new(1, -20, 0.5, -9), BackgroundColor3 = Color3.new(1,1,1)}, 0.25, Enum.EasingStyle.Back)
                else
                    Tween(SwitchBg, {BackgroundColor3 = Theme.ItemBG}, 0.25)
                    Tween(SwitchKnob, {Position = UDim2.new(0, 2, 0.5, -9), BackgroundColor3 = Theme.TextDark}, 0.25, Enum.EasingStyle.Back)
                end
            end
            
            table.insert(Library.ThemeObjects.Toggles, {Update = UpdateVisuals, Flag = tFlag})

            local function HandleLoop(val)
                Library.Flags[tFlag] = val
                if Library.ActiveLoops[tFlag] then task.cancel(Library.ActiveLoops[tFlag]) Library.ActiveLoops[tFlag] = nil end
                if val then
                    Library.ActiveLoops[tFlag] = task.spawn(function()
                        pcall(options.Callback, true)
                        while Library.Flags[tFlag] do pcall(options.Callback, true) task.wait(delayTime) end
                        pcall(options.Callback, false) 
                    end)
                else
                    pcall(options.Callback, false)
                end
                Library:Save()
            end

            ClickArea.MouseButton1Click:Connect(function()
                local newVal = not Library.Flags[tFlag]
                if options.Condition and newVal then
                    local success, reason = options.Condition()
                    if not success then SendNotification("Denied", reason, 3) return end
                end
                UpdateVisuals(newVal)
                HandleLoop(newVal)
            end)
 
            UpdateVisuals(default)
            if default then HandleLoop(default) end
            
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
            TopLabel.Size = UDim2.new(1, -40, 0, 20)
            TopLabel.Text = options.Name
            TopLabel.Font = Enum.Font.GothamMedium
            TopLabel.TextSize = 14
            TopLabel.TextColor3 = Theme.Text
            TopLabel.BackgroundTransparency = 1
            TopLabel.TextXAlignment = Enum.TextXAlignment.Left
            table.insert(Library.ThemeObjects.Texts, TopLabel)

            local ValLabel = Instance.new("TextLabel", Frame)
            ValLabel.Text = tostring(default)
            ValLabel.Size = UDim2.new(0, 40, 0, 20)
            ValLabel.Position = UDim2.new(1, -40, 0, 0)
            ValLabel.Font = Enum.Font.GothamBold
            ValLabel.TextSize = 14
            ValLabel.TextColor3 = Theme.AccentStart
            ValLabel.BackgroundTransparency = 1
            ValLabel.TextXAlignment = Enum.TextXAlignment.Right
            table.insert(Library.ThemeObjects.Texts, ValLabel)

            local SliderBarBG = Instance.new("Frame", Frame)
            SliderBarBG.Size = UDim2.new(1, 0, 0, 6)
            SliderBarBG.Position = UDim2.new(0, 0, 0, 30)
            SliderBarBG.BackgroundColor3 = Theme.ItemBG
            Instance.new("UICorner", SliderBarBG).CornerRadius = UDim.new(1, 0)
            table.insert(Library.ThemeObjects.BgItems, SliderBarBG)

            local Fill = Instance.new("Frame", SliderBarBG)
            Fill.BackgroundColor3 = Theme.AccentStart
            Fill.Size = UDim2.new(0,0,1,0)
            Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)
            
            local UIGradientFill = Instance.new("UIGradient", Fill)
            UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart), ColorSequenceKeypoint.new(1, Theme.AccentEnd)})
            table.insert(Library.ThemeObjects.Gradients, UIGradientFill)
            
            local Knob = Instance.new("Frame", Fill)
            Knob.Size = UDim2.new(0, 14, 0, 14)
            Knob.AnchorPoint = Vector2.new(0.5, 0.5)
            Knob.Position = UDim2.new(1, 0, 0.5, 0)
            Knob.BackgroundColor3 = Color3.fromRGB(255,255,255)
            Instance.new("UICorner", Knob).CornerRadius = UDim.new(1,0)
            
            local function Update(input)
                local SizeX = math.clamp((input.Position.X - SliderBarBG.AbsolutePosition.X) / SliderBarBG.AbsoluteSize.X, 0, 1)
                local Value = math.floor(min + ((max - min) * SizeX))
                if (max - min) < 2 then Value = math.floor((min + ((max - min) * SizeX)) * 100) / 100 end
                
                Library.Flags[sFlag] = Value
                Tween(Fill, {Size = UDim2.new(SizeX, 0, 1, 0)}, 0.05)
                ValLabel.Text = tostring(Value)
                ValLabel.TextColor3 = Theme.AccentStart
                pcall(options.Callback, Value)
                Library:Save()
            end

            local percent = (default - min) / (max - min)
            Fill.Size = UDim2.new(percent, 0, 1, 0)
            pcall(options.Callback, default)

            local Dragging = false
            SliderBarBG.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    Dragging = true
                    Update(input)
                    Tween(Knob, {Size = UDim2.new(0, 18, 0, 18)}, 0.2)
                end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if Dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then Update(input) end
            end)
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then 
                     Dragging = false 
                     Tween(Knob, {Size = UDim2.new(0, 14, 0, 14)}, 0.2)
                end
            end)
        end

        -- [[ Element: Dropdown ]]
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
            Label.Font = Enum.Font.GothamMedium
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            table.insert(Library.ThemeObjects.Texts, Label)

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, 0, 0, 38)
            MainBtn.Position = UDim2.new(0, 0, 0, 24)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = ""
            MainBtn.AutoButtonColor = false
            MainBtn.ZIndex = 6 
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 8)
            table.insert(Library.ThemeObjects.BgItems, MainBtn)
            
            local MainStroke = Instance.new("UIStroke", MainBtn)
            MainStroke.Color = Theme.UIStrokeColor
            MainStroke.Transparency = 0.8
            MainStroke.Thickness = 1
            table.insert(Library.ThemeObjects.Strokes, MainStroke)
            
            local SelectedText = Instance.new("TextLabel", MainBtn)
            SelectedText.Text = default
            SelectedText.Size = UDim2.new(1, -30, 1, 0)
            SelectedText.Position = UDim2.new(0, 12, 0, 0)
            SelectedText.Font = Enum.Font.Gotham
            SelectedText.TextColor3 = Theme.Text
            SelectedText.TextSize = 14
            SelectedText.TextXAlignment = Enum.TextXAlignment.Left
            SelectedText.BackgroundTransparency = 1
            SelectedText.ZIndex = 7
            table.insert(Library.ThemeObjects.Texts, SelectedText)
            
            local Chevron = Instance.new("TextLabel", MainBtn)
            Chevron.Text = ">"
            Chevron.Size = UDim2.new(0, 30, 1, 0)
            Chevron.Position = UDim2.new(1, -30, 0, 0)
            Chevron.Font = Enum.Font.GothamBold
            Chevron.TextColor3 = Theme.TextDark
            Chevron.TextSize = 14
            Chevron.BackgroundTransparency = 1
            Chevron.Rotation = 90
            Chevron.ZIndex = 7
            table.insert(Library.ThemeObjects.TextDarks, Chevron)

            local DropdownHolder = Instance.new("Frame", ScreenGui)
            DropdownHolder.Name = "Dropdown"
            DropdownHolder.BackgroundColor3 = Theme.ItemBG
            DropdownHolder.BackgroundTransparency = 0.05
            DropdownHolder.Size = UDim2.new(0, 0, 0, 0)
            DropdownHolder.Visible = false
            DropdownHolder.ZIndex = 600
            Instance.new("UICorner", DropdownHolder).CornerRadius = UDim.new(0, 8)
            Instance.new("UIStroke", DropdownHolder).Color = Theme.AccentStart
            Instance.new("UIStroke", DropdownHolder).Thickness = 1

            local Scroll = Instance.new("ScrollingFrame", DropdownHolder)
            Scroll.Size = UDim2.new(1, -4, 1, -4)
            Scroll.Position = UDim2.new(0, 2, 0, 2)
            Scroll.BackgroundTransparency = 1
            Scroll.ScrollBarThickness = 2
            Scroll.ScrollBarImageColor3 = Theme.AccentEnd
            Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
            Scroll.CanvasSize = UDim2.new(0,0,0,0)
            
            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.SortOrder = Enum.SortOrder.LayoutOrder
            
            local Open = false
            local RenderStep

            local function UpdatePosition()
                if Open and DropdownHolder.Parent then
                    local btnPos = MainBtn.AbsolutePosition
                    local btnSize = MainBtn.AbsoluteSize
                    DropdownHolder.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 4)
                    DropdownHolder.Size = UDim2.new(0, btnSize.X, 0, math.min(Layout.AbsoluteContentSize.Y + 10, 160)) 
                end
            end

            local function ToggleMenu()
                Open = not Open
                if Open then
                    DropdownHolder.Parent = ScreenGui
                    DropdownHolder.Visible = true
                    InputBlocker.Visible = true
                    Tween(Chevron, {Rotation = -90}, 0.2)
                    Tween(MainStroke, {Color = Theme.AccentStart, Transparency = 0.5}, 0.2)
                    
                    RenderStep = RunService.RenderStepped:Connect(UpdatePosition)
                    for _, child in ipairs(Scroll:GetChildren()) do if child:IsA("TextButton") then child:Destroy() end end
                    
                    for _, item in ipairs(options.List) do
                         local ItemBtn = Instance.new("TextButton", Scroll)
                         ItemBtn.Size = UDim2.new(1, 0, 0, 28)
                         ItemBtn.BackgroundTransparency = 1
                         ItemBtn.Text = item
                         ItemBtn.TextColor3 = (item == Library.Flags[dFlag]) and Theme.AccentStart or Theme.TextDark
                         ItemBtn.Font = Enum.Font.GothamMedium
                         ItemBtn.TextSize = 13
                         ItemBtn.MouseButton1Click:Connect(function()
                             Library.Flags[dFlag] = item
                             SelectedText.Text = item
                             pcall(options.Callback, item)
                             ToggleMenu()
                             Library:Save()
                         end)
                    end
                    UpdatePosition()
                else
                    DropdownHolder.Visible = false
                    DropdownHolder.Parent = nil
                    InputBlocker.Visible = false
                    Tween(Chevron, {Rotation = 90}, 0.2)
                    Tween(MainStroke, {Color = Theme.UIStrokeColor, Transparency = 0.8}, 0.2)
                    if RenderStep then RenderStep:Disconnect() end
                end
            end
            
            InputBlocker.MouseButton1Click:Connect(function() if Open then ToggleMenu() end end)
            MainBtn.MouseButton1Click:Connect(ToggleMenu)
            
            pcall(options.Callback, default)
            
            local DropdownAPI = {}
            function DropdownAPI:Set(value)
                Library.Flags[dFlag] = value
                SelectedText.Text = value
                pcall(options.Callback, value)
                Library:Save()
            end
            function DropdownAPI:Update(newList)
                options.List = newList
                if Open then ToggleMenu() ToggleMenu() end
            end
            return DropdownAPI
        end

        -- [[ Element: MultiDropdown (RESTORED & MODERNIZED) ]]
        function Elements:MultiDropdown(options)
            local dFlag = options.Flag
            local default = Library.Flags[dFlag] or {}
            Library.Flags[dFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 65)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamMedium
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            table.insert(Library.ThemeObjects.Texts, Label)

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, 0, 0, 38)
            MainBtn.Position = UDim2.new(0, 0, 0, 24)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = ""
            MainBtn.AutoButtonColor = false
            MainBtn.ZIndex = 6
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 8)
            table.insert(Library.ThemeObjects.BgItems, MainBtn)
            
            local MainStroke = Instance.new("UIStroke", MainBtn)
            MainStroke.Color = Theme.UIStrokeColor
            MainStroke.Transparency = 0.8
            MainStroke.Thickness = 1
            table.insert(Library.ThemeObjects.Strokes, MainStroke)
            
            local SelectedText = Instance.new("TextLabel", MainBtn)
            SelectedText.Text = "Select Items..."
            SelectedText.Size = UDim2.new(1, -30, 1, 0)
            SelectedText.Position = UDim2.new(0, 12, 0, 0)
            SelectedText.Font = Enum.Font.Gotham
            SelectedText.TextColor3 = Theme.Text
            SelectedText.TextSize = 14
            SelectedText.TextXAlignment = Enum.TextXAlignment.Left
            SelectedText.BackgroundTransparency = 1
            SelectedText.ZIndex = 7
            table.insert(Library.ThemeObjects.Texts, SelectedText)
            
            local Chevron = Instance.new("TextLabel", MainBtn)
            Chevron.Text = ">"
            Chevron.Size = UDim2.new(0, 30, 1, 0)
            Chevron.Position = UDim2.new(1, -30, 0, 0)
            Chevron.Font = Enum.Font.GothamBold
            Chevron.TextColor3 = Theme.TextDark
            Chevron.TextSize = 14
            Chevron.BackgroundTransparency = 1
            Chevron.Rotation = 90
            Chevron.ZIndex = 7
            table.insert(Library.ThemeObjects.TextDarks, Chevron)

            local DropdownHolder = Instance.new("Frame", ScreenGui)
            DropdownHolder.Name = "MultiDropdown"
            DropdownHolder.BackgroundColor3 = Theme.ItemBG
            DropdownHolder.BackgroundTransparency = 0.05
            DropdownHolder.Size = UDim2.new(0, 0, 0, 0)
            DropdownHolder.Visible = false
            DropdownHolder.ZIndex = 600
            Instance.new("UICorner", DropdownHolder).CornerRadius = UDim.new(0, 8)
            Instance.new("UIStroke", DropdownHolder).Color = Theme.AccentStart
            Instance.new("UIStroke", DropdownHolder).Thickness = 1

            local Scroll = Instance.new("ScrollingFrame", DropdownHolder)
            Scroll.Size = UDim2.new(1, -4, 1, -4)
            Scroll.Position = UDim2.new(0, 2, 0, 2)
            Scroll.BackgroundTransparency = 1
            Scroll.ScrollBarThickness = 2
            Scroll.ScrollBarImageColor3 = Theme.AccentEnd
            Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
            Scroll.CanvasSize = UDim2.new(0,0,0,0)
            
            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.SortOrder = Enum.SortOrder.LayoutOrder
            
            local Open = false
            local RenderStep

            local function UpdateText()
                local count = 0
                for _, v in pairs(Library.Flags[dFlag]) do if v then count = count + 1 end end
                SelectedText.Text = count > 0 and (count .. " Selected") or "Select Items..."
            end

            local function UpdatePosition()
                if Open and DropdownHolder.Parent then
                    local btnPos = MainBtn.AbsolutePosition
                    local btnSize = MainBtn.AbsoluteSize
                    DropdownHolder.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 4)
                    DropdownHolder.Size = UDim2.new(0, btnSize.X, 0, math.min(Layout.AbsoluteContentSize.Y + 10, 160)) 
                end
            end

            local function ToggleMenu()
                Open = not Open
                if Open then
                    DropdownHolder.Parent = ScreenGui
                    DropdownHolder.Visible = true
                    InputBlocker.Visible = true
                    Tween(Chevron, {Rotation = -90}, 0.2)
                    Tween(MainStroke, {Color = Theme.AccentStart, Transparency = 0.5}, 0.2)
                    
                    RenderStep = RunService.RenderStepped:Connect(UpdatePosition)
                    for _, child in ipairs(Scroll:GetChildren()) do if child:IsA("TextButton") then child:Destroy() end end
                    
                    for _, item in ipairs(options.List) do
                         if Library.Flags[dFlag][item] == nil then Library.Flags[dFlag][item] = false end
                         local ItemBtn = Instance.new("TextButton", Scroll)
                         ItemBtn.Size = UDim2.new(1, 0, 0, 28)
                         ItemBtn.BackgroundTransparency = 1
                         ItemBtn.Text = item
                         ItemBtn.TextColor3 = Library.Flags[dFlag][item] and Theme.AccentStart or Theme.TextDark
                         ItemBtn.Font = Enum.Font.GothamMedium
                         ItemBtn.TextSize = 13
                         
                         ItemBtn.MouseButton1Click:Connect(function()
                             Library.Flags[dFlag][item] = not Library.Flags[dFlag][item]
                             ItemBtn.TextColor3 = Library.Flags[dFlag][item] and Theme.AccentStart or Theme.TextDark
                             UpdateText()
                             pcall(options.Callback, Library.Flags[dFlag])
                             Library:Save()
                         end)
                    end
                    UpdatePosition()
                else
                    DropdownHolder.Visible = false
                    DropdownHolder.Parent = nil
                    InputBlocker.Visible = false
                    Tween(Chevron, {Rotation = 90}, 0.2)
                    Tween(MainStroke, {Color = Theme.UIStrokeColor, Transparency = 0.8}, 0.2)
                    if RenderStep then RenderStep:Disconnect() end
                end
            end
            
            InputBlocker.MouseButton1Click:Connect(function() if Open then ToggleMenu() end end)
            MainBtn.MouseButton1Click:Connect(ToggleMenu)
            
            UpdateText()
            pcall(options.Callback, Library.Flags[dFlag])
        end

        -- [[ Element: Cycle (RESTORED & MODERNIZED) ]]
        function Elements:Cycle(options)
            local cFlag = options.Flag
            local default = Library.Flags[cFlag] or options.Default or options.List[1]
            Library.Flags[cFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 65)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamMedium
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            table.insert(Library.ThemeObjects.Texts, Label)

            local Button = Instance.new("TextButton", Frame)
            Button.Size = UDim2.new(1, 0, 0, 38)
            Button.Position = UDim2.new(0, 0, 0, 24)
            Button.BackgroundColor3 = Theme.ItemBG
            Button.Text = default
            Button.TextColor3 = Theme.AccentStart
            Button.Font = Enum.Font.GothamBold
            Button.TextSize = 14
            Button.AutoButtonColor = false
            Button.ZIndex = 6
            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 8)
            table.insert(Library.ThemeObjects.BgItems, Button)
            
            -- Cycle visual effect
            local BtnStroke = Instance.new("UIStroke", Button)
            BtnStroke.Color = Theme.UIStrokeColor
            BtnStroke.Transparency = 0.8
            BtnStroke.Thickness = 1
            table.insert(Library.ThemeObjects.Strokes, BtnStroke)

            local idx = table.find(options.List, default) or 1
            
            Button.MouseButton1Click:Connect(function()
                idx = idx + 1
                if idx > #options.List then idx = 1 end
                local val = options.List[idx]
                Library.Flags[cFlag] = val
                Button.Text = val
                
                -- Simple animation
                Tween(Button, {BackgroundColor3 = Theme.WindowBG}, 0.1)
                task.wait(0.1)
                Tween(Button, {BackgroundColor3 = Theme.ItemBG}, 0.1)

                pcall(options.Callback, val)
                Library:Save()
            end)
            
            pcall(options.Callback, default)
        end

        -- [[ Element: Input / TextBox ]]
        function Elements:Input(options)
            local tFlag = options.Flag
            local default = Library.Flags[tFlag] or options.Default or ""
            Library.Flags[tFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 65)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamMedium
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left
            table.insert(Library.ThemeObjects.Texts, Label)

            local InputContainer = Instance.new("Frame", Frame)
            InputContainer.Size = UDim2.new(1, 0, 0, 38)
            InputContainer.Position = UDim2.new(0, 0, 0, 24)
            InputContainer.BackgroundColor3 = Theme.ItemBG
            Instance.new("UICorner", InputContainer).CornerRadius = UDim.new(0, 8)
            table.insert(Library.ThemeObjects.BgItems, InputContainer)

            local InputStroke = Instance.new("UIStroke", InputContainer)
            InputStroke.Color = Theme.UIStrokeColor
            InputStroke.Transparency = 0.8
            table.insert(Library.ThemeObjects.Strokes, InputStroke)

            local Input = Instance.new("TextBox", InputContainer)
            Input.Size = UDim2.new(1, -20, 1, 0)
            Input.Position = UDim2.new(0, 10, 0, 0)
            Input.PlaceholderText = options.Placeholder or "..."
            Input.Text = default
            Input.BackgroundTransparency = 1
            Input.TextColor3 = Theme.Text
            Input.Font = Enum.Font.Gotham
            Input.TextSize = 14
            table.insert(Library.ThemeObjects.Texts, Input)

            Input.Focused:Connect(function()
                Tween(InputStroke, {Color = Theme.AccentStart, Transparency = 0.2}, 0.3)
            end)
            Input.FocusLost:Connect(function()
                Tween(InputStroke, {Color = Theme.UIStrokeColor, Transparency = 0.8}, 0.3)
                Library.Flags[tFlag] = Input.Text
                pcall(options.Callback, Input.Text)
                Library:Save()
            end)
            
            pcall(options.Callback, default)
        end
        Elements.TextBox = Elements.Input 

        -- [[ Element: Button ]]
        function Elements:Button(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 42)
            Frame.BackgroundTransparency = 1
            if options.Name == "" then return end

            local Btn = Instance.new("TextButton", Frame)
            Btn.Size = UDim2.new(1, 0, 1, 0)
            Btn.BackgroundColor3 = Theme.ItemBG
            Btn.Text = options.Name
            Btn.TextColor3 = Color3.new(1,1,1)
            Btn.Font = Enum.Font.GothamBold
            Btn.TextSize = 14
            Btn.AutoButtonColor = false
            Btn.ZIndex = 6 
            Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 8)

            local BtnGradient = Instance.new("UIGradient", Btn)
            BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart), ColorSequenceKeypoint.new(1, Theme.AccentEnd)})
            table.insert(Library.ThemeObjects.Gradients, BtnGradient)
            
            local BtnStroke = Instance.new("UIStroke", Btn)
            BtnStroke.Color = Theme.AccentStart
            BtnStroke.Transparency = 0.8
            BtnStroke.Thickness = 1

            Btn.MouseEnter:Connect(function()
                Tween(Btn, {BackgroundTransparency = 0.1}, 0.2)
                Tween(BtnStroke, {Transparency = 0.4}, 0.2)
            end)
            Btn.MouseLeave:Connect(function()
                Tween(Btn, {BackgroundTransparency = 0}, 0.2)
                Tween(BtnStroke, {Transparency = 0.8}, 0.2)
            end)
            
            Btn.MouseButton1Click:Connect(function()
                Tween(Btn, {TextSize = 12}, 0.05)
                task.wait(0.05)
                Tween(Btn, {TextSize = 14}, 0.05)
                pcall(options.Callback)
            end)
        end

        -- [[ Element: CreditBox (RESTORED & MODERNIZED) ]]
        function Elements:CreditBox(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 95)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name or "Credit"
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamMedium
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Center
            table.insert(Library.ThemeObjects.Texts, Label)

            local BoxContainer = Instance.new("Frame", Frame)
            BoxContainer.Size = UDim2.new(0.9, 0, 0, 32)
            BoxContainer.Position = UDim2.new(0.05, 0, 0, 24)
            BoxContainer.BackgroundColor3 = Theme.ItemBG
            Instance.new("UICorner", BoxContainer).CornerRadius = UDim.new(0, 8)
            table.insert(Library.ThemeObjects.BgItems, BoxContainer)

            local Box = Instance.new("TextBox", BoxContainer)
            Box.Size = UDim2.new(1, 0, 1, 0)
            Box.Text = options.Link or ""
            Box.TextColor3 = Theme.Text
            Box.Font = Enum.Font.Gotham
            Box.TextSize = 13
            Box.BackgroundTransparency = 1
            Box.TextEditable = false
            Box.ClearTextOnFocus = false
            table.insert(Library.ThemeObjects.Texts, Box)
            
            -- Copy Button
            local CopyBtn = Instance.new("TextButton", Frame)
            CopyBtn.Size = UDim2.new(0.5, 0, 0, 28)
            CopyBtn.Position = UDim2.new(0.25, 0, 0, 62)
            CopyBtn.BackgroundColor3 = Theme.AccentStart
            CopyBtn.Text = "Copy"
            CopyBtn.TextColor3 = Color3.new(1,1,1)
            CopyBtn.Font = Enum.Font.GothamBold
            CopyBtn.TextSize = 13
            CopyBtn.AutoButtonColor = false
            CopyBtn.ZIndex = 6
            Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 8)
            
            local CopyGradient = Instance.new("UIGradient", CopyBtn)
            CopyGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart), ColorSequenceKeypoint.new(1, Theme.AccentEnd)})
            table.insert(Library.ThemeObjects.Gradients, CopyGradient)

            CopyBtn.MouseButton1Click:Connect(function()
                if setclipboard then
                    pcall(function() setclipboard(options.Link or "") end)
                    CopyBtn.Text = "Copied!"
                    task.delay(2, function() CopyBtn.Text = "Copy" end)
                else
                    SendNotification("Error", "Your executor doesn't support clipboard.", 3)
                end
            end)
        end
        
        function Elements:LinkBox(options) self:CreditBox(options) end

        function Elements:Spacer(height)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, height or 10)
            Frame.BackgroundTransparency = 1
        end

        function Elements:Label(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 26)
            Frame.BackgroundTransparency = 1
            
            local Text = Instance.new("TextLabel", Frame)
            Text.Size = UDim2.new(1, 0, 1, 0)
            Text.Text = options.Text or "Label"
            Text.TextColor3 = options.Color or Theme.Text
            Text.Font = Enum.Font.GothamBold
            Text.TextSize = 14
            Text.BackgroundTransparency = 1
            Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left
        end

        return Elements
    end

    function WindowAPI:Init()
        local SettingsTab = WindowAPI:Tab("⚙️ Settings")
        SettingsTab:Label({Text = "Theme Manager", Align = Enum.TextXAlignment.Center})

        local themeList = {"Default", "Snow", "Pinky"}
        for name, _ in pairs(Library.SavedThemes) do table.insert(themeList, name) end

        local ThemeDropdown = SettingsTab:Dropdown({
            Name = "Select Theme", Flag = "__CurrentTheme", List = themeList,
            Default = Library.Flags["__CurrentTheme"] or "Default",
            Callback = function(val) Library:ApplyTheme(val) end
        })

        SettingsTab:Input({
            Name = "Save Theme As...", Flag = "__NewThemeName", Placeholder = "Name...", Callback = function() end
        })

        SettingsTab:Button({
            Name = "Save Current Theme",
            Callback = function()
                local name = Library.Flags["__NewThemeName"]
                if name and name ~= "" then
                    Library.SavedThemes[name] = {
                        WindowBG = FromColor(Theme.WindowBG), SidebarBG = FromColor(Theme.SidebarBG), ItemBG = FromColor(Theme.ItemBG),
                        Accent1 = FromColor(Theme.AccentStart), Accent2 = FromColor(Theme.AccentEnd), ToggleON = FromColor(Theme.ToggleON),
                        Text = FromColor(Theme.Text), TextDark = FromColor(Theme.TextDark), Stroke = FromColor(Theme.UIStrokeColor)
                    }
                    Library:Save()
                    Library:Notify({Title="Theme", Content="Saved: " .. name})
                    local newList = {"Default", "Snow", "Pinky"}
                    for n, _ in pairs(Library.SavedThemes) do table.insert(newList, n) end
                    ThemeDropdown:Update(newList)
                end
            end
        })
        
        SettingsTab:Spacer(10)
        SettingsTab:Label({Text = "Interface Colors", Align = Enum.TextXAlignment.Center})
        
        local colorNames = {}
        for n, _ in pairs(COLOR_PALETTE) do table.insert(colorNames, n) end
        table.sort(colorNames)

        SettingsTab:Dropdown({
            Name = "Accent Color 1", Flag = "__ColorSelect1", List = colorNames, Default = "Purple",
            Callback = function(val)
                if COLOR_PALETTE[val] then Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1) Library:ApplyTheme(nil) end
            end
        })
        SettingsTab:Dropdown({
            Name = "Accent Color 2", Flag = "__ColorSelect2", List = colorNames, Default = "Blue",
            Callback = function(val)
                if COLOR_PALETTE[val] then Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1) Library:ApplyTheme(nil) end
            end
        })
        
        SettingsTab:Dropdown({
            Name = "Toggle ON Color", Flag = "__ToggleColorSelect", List = colorNames, Default = "Purple",
            Callback = function(val)
                if COLOR_PALETTE[val] then Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1) Library:ApplyTheme(nil) end
            end
        })

        SettingsTab:Slider({
            Name = "UI Scale", Flag = "__GuiScale", Min = 0.5, Max = 1.5, Default = 1,
            Callback = function(val) if Library.MainScale then Library.MainScale.Scale = val end end
        })

        local CreditsTab = WindowAPI:Tab("Infos")
        CreditsTab:Label({Text = "Modern UI by LizeDev", Align = Enum.TextXAlignment.Center, Color = Theme.AccentEnd})
        CreditsTab:Spacer(5)
        CreditsTab:CreditBox({Name = "Discord Server", Link = "https://discord.gg/RhDnUQr4Du"})

        Library:ApplyTheme(Library.Flags["__CurrentTheme"] or "Default")
    end

    return WindowAPI
end

return Library
