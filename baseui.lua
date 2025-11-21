--[[
    KingGen UI Library - V6 (Replica of Blade X / Weak Legacy 2)
    Features: 
    - Exact Aspect Ratio Resizing (480/540)
    - Auto-Save UI State (Minimized/Open)
    - Auto-Save K Button Position
    - Dark/Red Theme
]]

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

-- // 1. Theme (Extracted from your files)
local Theme = {
    Main        = Color3.fromRGB(47, 49, 54),
    TabBG       = Color3.fromRGB(54, 57, 64), -- Secondary
    ItemBG      = Color3.fromRGB(64, 68, 75),
    Text        = Color3.fromRGB(233, 236, 239),
    TextDark    = Color3.fromRGB(160, 160, 170),
    Accent      = Color3.fromRGB(240, 71, 71) -- The specific Red
}

Library.Flags = {}
Library.FolderName = "KingGen"
Library.CurrentConfig = "default.json"

-- // 2. Anti-AFK
task.spawn(function()
    pcall(function()
        Players.LocalPlayer.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0,0))
        end)
    end)
end)

-- // 3. Save System
function Library:Save()
    if writefile and makefolder then
        if not isfolder(Library.FolderName) then
            makefolder(Library.FolderName)
        end
        -- Save Flags
        local json = HttpService:JSONEncode(Library.Flags)
        writefile(Library.FolderName .. "/" .. Library.CurrentConfig, json)
    end
end

function Library:Load()
    if readfile and isfile and isfolder(Library.FolderName) then
        local path = Library.FolderName .. "/" .. Library.CurrentConfig
        if isfile(path) then
            local success, decoded = pcall(function() return HttpService:JSONDecode(readfile(path)) end)
            if success then
                for flag, value in pairs(decoded) do
                    Library.Flags[flag] = value
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
                    -- Save Position if key provided
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

-- // 4. Main Window
function Library:Window(options)
    Library.CurrentConfig = options.ConfigName or "config.json"
    
    if CoreGui:FindFirstChild("KingGenUI") then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "King Gen",
            Text = "Script is already running!",
            Duration = 5
        })
        return nil
    end

    Library:Load()

    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "KingGenUI"
    ScreenGui.Parent = CoreGui
    ScreenGui.DisplayOrder = 999
    ScreenGui.ResetOnSpawn = false

    -- [[ MAIN FRAME: EXACT RESIZING LOGIC FROM YOUR FILES ]]
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Name = "MainFrame"
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    
    -- Percentage based size (From weaklegacy2.lua)
    MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0) 
    
    MainFrame.BackgroundColor3 = Theme.Main
    MainFrame.BorderSizePixel = 0
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 16)

    -- Constraints (The Magic Part)
    local aspectRatio = 480 / 540
    local arConstraint = Instance.new("UIAspectRatioConstraint", MainFrame)
    arConstraint.AspectRatio = aspectRatio
    arConstraint.DominantAxis = Enum.DominantAxis.Height
    
    local sizeConstraint = Instance.new("UISizeConstraint", MainFrame)
    sizeConstraint.MaxSize = Vector2.new(480, 540)
    sizeConstraint.MinSize = Vector2.new(240, 270)

    -- Title Bar
    local TitleBar = Instance.new("Frame", MainFrame)
    TitleBar.Name = "TitleBar"
    TitleBar.Size = UDim2.new(1, 0, 0, 44)
    TitleBar.BackgroundColor3 = Theme.Main
    Instance.new("UICorner", TitleBar).CornerRadius = UDim.new(0, 16)
    MakeDraggable(TitleBar, MainFrame)

    local TitleLabel = Instance.new("TextLabel", TitleBar)
    TitleLabel.Text = "King Gen"
    TitleLabel.Size = UDim2.new(1, 0, 1, 0)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextScaled = true -- Scaled text like in source
    TitleLabel.TextColor3 = Theme.Text
    TitleLabel.BackgroundTransparency = 1

    -- Minimize Button
    local MinBtn = Instance.new("TextButton", TitleBar)
    MinBtn.Size = UDim2.new(0, 34, 0, 34)
    MinBtn.Position = UDim2.new(1, -40, 0.5, -17)
    MinBtn.Text = "-"
    MinBtn.Font = Enum.Font.GothamBold
    MinBtn.TextScaled = true
    MinBtn.BackgroundColor3 = Theme.ItemBG
    MinBtn.TextColor3 = Theme.Text
    Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 12)

    -- [[ K BUTTON (Separate GUI) ]]
    local KGui = Instance.new("ScreenGui", CoreGui)
    KGui.Name = "KButtonGui"
    KGui.ResetOnSpawn = false
    KGui.DisplayOrder = 1000
    
    local KBtn = Instance.new("TextButton", KGui)
    KBtn.Size = UDim2.new(0, 100, 0, 50)
    
    -- Load K Button Position from Save, or default to Left-Center
    if Library.Flags["__K_POS_X_Scale"] then
        KBtn.Position = UDim2.new(
            Library.Flags["__K_POS_X_Scale"], Library.Flags["__K_POS_X_Offset"],
            Library.Flags["__K_POS_Y_Scale"], Library.Flags["__K_POS_Y_Offset"]
        )
    else
        KBtn.Position = UDim2.new(0.5, -50, 0, 40) -- Default top center like source
    end

    KBtn.Text = "K"
    KBtn.Font = Enum.Font.GothamBold
    KBtn.TextSize = 36
    KBtn.BackgroundColor3 = Theme.ItemBG
    KBtn.TextColor3 = Color3.fromRGB(255, 0, 0) -- Explicit Red like source
    Instance.new("UICorner", KBtn).CornerRadius = UDim.new(0, 20)
    
    -- Make K Button Draggable AND Save its position
    MakeDraggable(KBtn, KBtn, "__K_POS")

    -- [[ VISIBILITY STATE LOGIC ]]
    local function SetState(isMinimized)
        if isMinimized then
            MainFrame.Visible = false
            KBtn.Visible = true
        else
            MainFrame.Visible = true
            KBtn.Visible = false
        end
        Library.Flags["__UI_MINIMIZED"] = isMinimized
        Library:Save()
    end

    MinBtn.MouseButton1Click:Connect(function() SetState(true) end)
    KBtn.MouseButton1Click:Connect(function() SetState(false) end)

    -- Apply Initial State
    if Library.Flags["__UI_MINIMIZED"] == true then
        SetState(true)
    else
        SetState(false)
    end

    -- [[ TAB SYSTEM ]]
    local TabBarContainer = Instance.new("Frame", MainFrame)
    TabBarContainer.Size = UDim2.new(1, 0, 0, 48)
    TabBarContainer.Position = UDim2.new(0, 0, 0, 44)
    TabBarContainer.BackgroundTransparency = 1

    local TabBar = Instance.new("ScrollingFrame", TabBarContainer)
    TabBar.Size = UDim2.new(1, 0, 1, 0)
    TabBar.ScrollBarThickness = 8
    TabBar.ScrollBarImageColor3 = Color3.fromRGB(200, 60, 60)
    TabBar.BackgroundTransparency = 1
    TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    
    local TabListLayout = Instance.new("UIListLayout", TabBar)
    TabListLayout.FillDirection = Enum.FillDirection.Horizontal
    TabListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.Padding = UDim.new(0, 4)
    
    local TabPadding = Instance.new("UIPadding", TabBar)
    TabPadding.PaddingLeft = UDim.new(0, 12)

    -- Pages Container
    local PagesContainer = Instance.new("Frame", MainFrame)
    PagesContainer.Size = UDim2.new(1, -36, 1, -140)
    PagesContainer.Position = UDim2.new(0, 18, 0, 92)
    PagesContainer.BackgroundTransparency = 1

    local WindowAPI = {}
    local FirstTab = true
    local TabCount = 0
    local TabButtons = {}
    local Pages = {}

    function WindowAPI:Tab(name)
        TabCount = TabCount + 1
        
        -- Update Canvas Size for Tabs
        local buttonWidth = 110
        local buttonPadding = 4
        local finalCanvasWidth = (buttonWidth * TabCount) + (buttonPadding * (TabCount - 1)) + 24
        TabBar.CanvasSize = UDim2.new(0, finalCanvasWidth, 0, 0)

        -- Tab Button
        local TabBtn = Instance.new("TextButton", TabBar)
        TabBtn.Size = UDim2.new(0, buttonWidth, 0, 36)
        TabBtn.Text = name
        TabBtn.Font = Enum.Font.GothamBold
        TabBtn.TextSize = 19
        TabBtn.AutoButtonColor = true
        Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 8)
        
        -- Color Logic
        if FirstTab then
            TabBtn.BackgroundColor3 = Color3.fromRGB(36, 39, 46)
            TabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        else
            TabBtn.BackgroundColor3 = Color3.fromRGB(54, 57, 64)
            TabBtn.TextColor3 = Color3.fromRGB(160, 160, 170)
        end

        table.insert(TabButtons, {Btn = TabBtn, Name = name})

        -- Page
        local Page = Instance.new("ScrollingFrame", PagesContainer)
        Page.Name = name .. "_Page"
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.BackgroundTransparency = 1
        Page.ScrollBarThickness = 12
        Page.Visible = FirstTab
        Page.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Page.CanvasSize = UDim2.new(0,0,0,0) -- Auto handling
        
        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 10)
        
        Instance.new("UIPadding", Page).PaddingRight = UDim.new(0, 15)

        table.insert(Pages, {Frame = Page, Name = name})

        TabBtn.MouseButton1Click:Connect(function()
            -- Reset Colors
            for _, tabData in ipairs(TabButtons) do
                tabData.Btn.BackgroundColor3 = Color3.fromRGB(54, 57, 64)
                tabData.Btn.TextColor3 = Color3.fromRGB(160, 160, 170)
            end
            -- Active Color
            TabBtn.BackgroundColor3 = Color3.fromRGB(36, 39, 46)
            TabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)

            -- Switch Page
            for _, pageData in ipairs(Pages) do
                pageData.Frame.Visible = (pageData.Name == name)
            end
        end)

        FirstTab = false
        local Elements = {}

        -- TOGGLE
        function Elements:Toggle(options)
            local tFlag = options.Flag
            local default = Library.Flags[tFlag] or options.Default or false
            Library.Flags[tFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 40)
            Frame.BackgroundTransparency = 1

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(0.7, -5, 1, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 22
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local Button = Instance.new("TextButton", Frame)
            Button.Size = UDim2.new(0.3, 0, 1, 0)
            Button.Position = UDim2.new(0.7, 0, 0, 0)
            Button.Font = Enum.Font.GothamBold
            Button.TextSize = 20
            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 14)

            local function Update()
                if Library.Flags[tFlag] then
                    Button.Text = "ON"
                    Button.TextColor3 = Color3.fromRGB(255,255,255)
                    Button.BackgroundColor3 = Theme.Accent
                else
                    Button.Text = "OFF"
                    Button.TextColor3 = Color3.fromRGB(200,200,200)
                    Button.BackgroundColor3 = Theme.ItemBG
                end
                pcall(options.Callback, Library.Flags[tFlag])
            end
            
            Button.MouseButton1Click:Connect(function()
                Library.Flags[tFlag] = not Library.Flags[tFlag]
                Update()
                Library:Save()
            end)
            Update()
        end

        -- SLIDER
        function Elements:Slider(options)
            local sFlag = options.Flag
            local min, max = options.Min, options.Max
            local default = Library.Flags[sFlag] or options.Default or min
            Library.Flags[sFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 50)
            Frame.BackgroundTransparency = 1

            local TopLabel = Instance.new("TextLabel", Frame)
            TopLabel.Size = UDim2.new(1, 0, 0, 20)
            TopLabel.Text = options.Name
            TopLabel.Font = Enum.Font.GothamBold
            TopLabel.TextSize = 18
            TopLabel.TextColor3 = Theme.Text
            TopLabel.BackgroundTransparency = 1
            TopLabel.TextXAlignment = Enum.TextXAlignment.Left

            local SliderFrame = Instance.new("Frame", Frame)
            SliderFrame.Size = UDim2.new(1, 0, 0, 28)
            SliderFrame.Position = UDim2.new(0,0,0,22)
            SliderFrame.BackgroundColor3 = Theme.ItemBG
            Instance.new("UICorner", SliderFrame).CornerRadius = UDim.new(0,8)

            local ValLabel = Instance.new("TextLabel", SliderFrame)
            ValLabel.Text = tostring(default)
            ValLabel.Size = UDim2.new(0, 40, 1, 0)
            ValLabel.Position = UDim2.new(1, -45, 0, 0)
            ValLabel.Font = Enum.Font.GothamBold
            ValLabel.TextSize = 15
            ValLabel.TextColor3 = Theme.Text
            ValLabel.BackgroundTransparency = 1
            
            local BarBG = Instance.new("Frame", SliderFrame)
            BarBG.Size = UDim2.new(1, -50, 1, -4)
            BarBG.Position = UDim2.new(0, 4, 0, 2)
            BarBG.BackgroundColor3 = Color3.fromRGB(50,50,50)
            Instance.new("UICorner", BarBG).CornerRadius = UDim.new(0,8)
            
            local Fill = Instance.new("Frame", BarBG)
            Fill.BackgroundColor3 = Theme.Accent
            Fill.Size = UDim2.new(0,0,1,0)
            Instance.new("UICorner", Fill).CornerRadius = UDim.new(0,8)

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
                if input.UserInputType == Enum.UserInputType.MouseButton1 then Dragging = false end
            end)
        end

        -- DROPDOWN
        function Elements:Dropdown(options)
            local dFlag = options.Flag
            local default = Library.Flags[dFlag] or options.Default or options.List[1]
            Library.Flags[dFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 70)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, -20, 0, 24)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 18
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, -20, 0, 35)
            MainBtn.Position = UDim2.new(0, 10, 0, 30)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = default
            MainBtn.TextColor3 = Theme.Accent
            MainBtn.Font = Enum.Font.GothamSemibold
            MainBtn.TextSize = 18
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 8)

            local Scroll = Instance.new("ScrollingFrame", MainBtn)
            Scroll.Size = UDim2.new(1, 0, 0, 120)
            Scroll.Position = UDim2.new(0, 0, 1, 5)
            Scroll.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
            Scroll.Visible = false
            Scroll.ZIndex = 10
            Scroll.ScrollBarThickness = 6
            
            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.Padding = UDim.new(0, 5)
            
            local Open = false
            MainBtn.MouseButton1Click:Connect(function()
                Open = not Open
                Scroll.Visible = Open
                Frame.ZIndex = Open and 20 or 5
            end)

            for _, item in ipairs(options.List) do
                local ItemBtn = Instance.new("TextButton", Scroll)
                ItemBtn.Size = UDim2.new(1, -10, 0, 25)
                ItemBtn.BackgroundTransparency = 1
                ItemBtn.Text = item
                ItemBtn.TextColor3 = Theme.Text
                ItemBtn.Font = Enum.Font.Gotham
                ItemBtn.TextSize = 16
                ItemBtn.ZIndex = 11
                ItemBtn.MouseButton1Click:Connect(function()
                    Library.Flags[dFlag] = item
                    MainBtn.Text = item
                    pcall(options.Callback, item)
                    Open = false
                    Scroll.Visible = false
                    Frame.ZIndex = 5
                    Library:Save()
                end)
            end
        end

        -- CYCLE BUTTON
        function Elements:Cycle(options)
            local cFlag = options.Flag
            local default = Library.Flags[cFlag] or options.Default or options.List[1]
            Library.Flags[cFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 70)
            Frame.BackgroundTransparency = 1

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, -20, 0, 24)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 18
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local Button = Instance.new("TextButton", Frame)
            Button.Size = UDim2.new(1, -20, 0, 35)
            Button.Position = UDim2.new(0, 10, 0, 30)
            Button.BackgroundColor3 = Theme.ItemBG
            Button.Text = default
            Button.TextColor3 = Theme.Accent
            Button.Font = Enum.Font.GothamSemibold
            Button.TextSize = 18
            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 8)

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
        end

        -- MULTI DROPDOWN
        function Elements:MultiDropdown(options)
            local dFlag = options.Flag
            local default = Library.Flags[dFlag] or {}
            Library.Flags[dFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 70)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, -20, 0, 24)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 18
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, -20, 0, 35)
            MainBtn.Position = UDim2.new(0, 10, 0, 30)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = "Select Items..."
            MainBtn.TextColor3 = Theme.Accent
            MainBtn.Font = Enum.Font.GothamSemibold
            MainBtn.TextSize = 18
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 8)

            local Scroll = Instance.new("ScrollingFrame", MainBtn)
            Scroll.Size = UDim2.new(1, 0, 0, 120)
            Scroll.Position = UDim2.new(0, 0, 1, 5)
            Scroll.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
            Scroll.Visible = false
            Scroll.ZIndex = 10
            Scroll.ScrollBarThickness = 6
            
            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.Padding = UDim.new(0, 5)
            
            local Open = false
            MainBtn.MouseButton1Click:Connect(function()
                Open = not Open
                Scroll.Visible = Open
                Frame.ZIndex = Open and 20 or 5
            end)

            for _, item in ipairs(options.List) do
                if Library.Flags[dFlag][item] == nil then Library.Flags[dFlag][item] = false end
                
                local ItemBtn = Instance.new("TextButton", Scroll)
                ItemBtn.Size = UDim2.new(1, -10, 0, 25)
                ItemBtn.BackgroundTransparency = 1
                ItemBtn.Text = item
                -- Visual selection
                ItemBtn.TextColor3 = Library.Flags[dFlag][item] and Theme.Accent or Theme.Text
                ItemBtn.Font = Enum.Font.Gotham
                ItemBtn.TextSize = 16
                ItemBtn.ZIndex = 11
                
                ItemBtn.MouseButton1Click:Connect(function()
                    Library.Flags[dFlag][item] = not Library.Flags[dFlag][item]
                    ItemBtn.TextColor3 = Library.Flags[dFlag][item] and Theme.Accent or Theme.Text
                    
                    local count = 0
                    for _, v in pairs(Library.Flags[dFlag]) do if v then count = count + 1 end end
                    MainBtn.Text = count .. " Selected"
                    
                    pcall(options.Callback, Library.Flags[dFlag])
                    Library:Save()
                end)
            end
        end

        -- BUTTON
        function Elements:Button(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 50)
            Frame.BackgroundTransparency = 1

            local Btn = Instance.new("TextButton", Frame)
            Btn.Size = UDim2.new(1, 0, 0, 40)
            Btn.Position = UDim2.new(0, 0, 0, 5)
            Btn.BackgroundColor3 = Theme.Accent
            Btn.Text = options.Name
            Btn.TextColor3 = Color3.fromRGB(255,255,255)
            Btn.Font = Enum.Font.GothamBold
            Btn.TextSize = 18
            Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 12)

            Btn.MouseButton1Click:Connect(function()
                pcall(options.Callback)
            end)
        end

        return Elements
    end

    function WindowAPI:Init()
        WindowAPI:Tab("Credits") 
        local CreditsPage = PagesContainer:FindFirstChild("Credits_Page")
        
        if CreditsPage then
            -- Use UIListLayout for clean credits
            local ListLayout = Instance.new("UIListLayout", CreditsPage)
            ListLayout.Padding = UDim.new(0, 10)
            ListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            ListLayout.SortOrder = Enum.SortOrder.LayoutOrder

            local Title = Instance.new("TextLabel", CreditsPage)
            Title.Text = "Discord Server"
            Title.Size = UDim2.new(1, 0, 0, 30)
            Title.BackgroundTransparency = 1
            Title.TextColor3 = Theme.Text
            Title.Font = Enum.Font.GothamBold
            Title.TextSize = 18
            Title.LayoutOrder = 1

            local Box = Instance.new("TextBox", CreditsPage)
            Box.Text = "https://discord.gg/RhDnUQr4Du"
            Box.Size = UDim2.new(1, 0, 0, 60)
            Box.BackgroundColor3 = Theme.ItemBG
            Box.TextColor3 = Theme.Text
            Box.Font = Enum.Font.GothamSemibold
            Box.TextSize = 20
            Box.TextEditable = false
            Box.ClearTextOnFocus = false
            Instance.new("UICorner", Box).CornerRadius = UDim.new(0, 12)
            Box.LayoutOrder = 2

            local CopyBtn = Instance.new("TextButton", CreditsPage)
            CopyBtn.Text = "Copy Link"
            CopyBtn.Size = UDim2.new(0, 120, 0, 42)
            CopyBtn.BackgroundColor3 = Theme.Accent
            CopyBtn.TextColor3 = Color3.fromRGB(255,255,255)
            CopyBtn.Font = Enum.Font.GothamBold
            CopyBtn.TextSize = 20
            Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 14)
            CopyBtn.LayoutOrder = 3

            CopyBtn.MouseButton1Click:Connect(function()
                if setclipboard then
                    setclipboard(Box.Text)
                    CopyBtn.Text = "Copied!"
                    task.wait(2)
                    CopyBtn.Text = "Copy Link"
                end
            end)
        end
    end

    return WindowAPI
end

return Library
