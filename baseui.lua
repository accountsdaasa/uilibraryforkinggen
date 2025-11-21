--[[
    KingGen UI Library - V5 (Vertical Mobile Style Fix)
    Style: Portrait (Taller), Fixed Scroll, Responsive
    Dimensions: Optimized for the "Hub" look (~380x480)
]]

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

-- // 1. Theme Configuration
local Theme = {
    Main        = Color3.fromRGB(45, 48, 53),
    TabBG       = Color3.fromRGB(50, 53, 58),
    ItemBG      = Color3.fromRGB(60, 64, 70),
    Text        = Color3.fromRGB(230, 230, 230),
    SubText     = Color3.fromRGB(170, 170, 170),
    Accent      = Color3.fromRGB(255, 65, 65),
    RedText     = Color3.fromRGB(255, 80, 80)
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

    -- [[ SIZE CONFIGURATION - VERTICAL STYLE ]] --
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Name = "MainFrame"
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    
    -- ICI : On force une taille verticale (380 de large, 480 de haut)
    -- C'est ce qui donne l'aspect "Téléphone" sur PC
    MainFrame.Size = UDim2.new(0, 380, 0, 480) 
    MainFrame.BackgroundColor3 = Theme.Main
    MainFrame.BorderSizePixel = 0
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

    -- Constraints pour garder ce ratio même si redimensionné
    local SizeConstraint = Instance.new("UISizeConstraint", MainFrame)
    SizeConstraint.MinSize = Vector2.new(300, 400) -- Minimum très vertical
    SizeConstraint.MaxSize = Vector2.new(500, 600) -- Maximum

    -- Title Bar
    local TitleBar = Instance.new("Frame", MainFrame)
    TitleBar.Name = "TitleBar"
    TitleBar.Size = UDim2.new(1, 0, 0, 40)
    TitleBar.BackgroundTransparency = 1
    MakeDraggable(TitleBar, MainFrame)

    local TitleLabel = Instance.new("TextLabel", TitleBar)
    TitleLabel.Text = "King Gen"
    TitleLabel.Size = UDim2.new(1, 0, 1, 0)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.TextSize = 20
    TitleLabel.TextColor3 = Theme.Text
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Center

    -- Minimize Button
    local MinBtn = Instance.new("TextButton", TitleBar)
    MinBtn.Size = UDim2.new(0, 30, 0, 30)
    MinBtn.Position = UDim2.new(1, -35, 0.5, -15)
    MinBtn.Text = "-"
    MinBtn.Font = Enum.Font.GothamBold
    MinBtn.TextSize = 20
    MinBtn.BackgroundColor3 = Theme.ItemBG
    MinBtn.TextColor3 = Theme.Text
    Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 8)

    -- K Button (Floating Open Button)
    local KGui = Instance.new("ScreenGui", CoreGui)
    KGui.Name = "KButtonGui"
    KGui.Enabled = false
    
    local KBtn = Instance.new("TextButton", KGui)
    KBtn.Size = UDim2.new(0, 50, 0, 50)
    KBtn.Position = UDim2.new(0, 20, 0.5, -25) 
    KBtn.Text = "K"
    KBtn.Font = Enum.Font.GothamBold
    KBtn.TextSize = 30
    KBtn.BackgroundColor3 = Theme.ItemBG
    KBtn.TextColor3 = Theme.Accent
    Instance.new("UICorner", KBtn).CornerRadius = UDim.new(0, 16)
    MakeDraggable(KBtn, KBtn)

    local function ToggleUI()
        MainFrame.Visible = not MainFrame.Visible
        KGui.Enabled = not MainFrame.Visible
    end
    MinBtn.MouseButton1Click:Connect(ToggleUI)
    KBtn.MouseButton1Click:Connect(ToggleUI)

    -- Tab Container
    local TabContainer = Instance.new("Frame", MainFrame)
    TabContainer.Size = UDim2.new(1, -20, 0, 35)
    TabContainer.Position = UDim2.new(0, 10, 0, 45)
    TabContainer.BackgroundColor3 = Theme.TabBG
    Instance.new("UICorner", TabContainer).CornerRadius = UDim.new(0, 8)

    local TabScroll = Instance.new("ScrollingFrame", TabContainer)
    TabScroll.Size = UDim2.new(1, 0, 1, 0)
    TabScroll.BackgroundTransparency = 1
    TabScroll.ScrollBarThickness = 0
    TabScroll.AutomaticCanvasSize = Enum.AutomaticSize.X
    TabScroll.CanvasSize = UDim2.new(0,0,0,0)
    
    local TabListLayout = Instance.new("UIListLayout", TabScroll)
    TabListLayout.FillDirection = Enum.FillDirection.Horizontal
    TabListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabListLayout.Padding = UDim.new(0, 0)

    -- Pages Container
    local PagesContainer = Instance.new("Frame", MainFrame)
    PagesContainer.Size = UDim2.new(1, -24, 1, -100)
    PagesContainer.Position = UDim2.new(0, 12, 0, 90)
    PagesContainer.BackgroundTransparency = 1

    local WindowAPI = {}
    local FirstTab = true

    function WindowAPI:Tab(name)
        local TabBtn = Instance.new("TextButton", TabScroll)
        TabBtn.Text = name
        TabBtn.Size = UDim2.new(0, 90, 1, 0) 
        TabBtn.BackgroundTransparency = 1
        TabBtn.TextColor3 = FirstTab and Theme.Text or Theme.SubText
        TabBtn.Font = Enum.Font.GothamBold
        TabBtn.TextSize = 14

        local ActiveLine = Instance.new("Frame", TabBtn)
        ActiveLine.Size = UDim2.new(1, 0, 0, 2)
        ActiveLine.Position = UDim2.new(0, 0, 1, -2)
        ActiveLine.BackgroundColor3 = Theme.Accent
        ActiveLine.BorderSizePixel = 0
        ActiveLine.Visible = FirstTab

        local Page = Instance.new("ScrollingFrame", PagesContainer)
        Page.Name = name .. "_Page"
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.BackgroundTransparency = 1
        Page.ScrollBarThickness = 6 -- Scrollbar plus visible
        Page.ScrollBarImageColor3 = Theme.Accent -- Scrollbar Rouge pour la voir
        Page.Visible = FirstTab
        
        -- IMPORTANT : Calcul Manuel du Scroll (Fix pour que ça descende bien)
        Page.CanvasSize = UDim2.new(0, 0, 0, 0)
        
        local PageLayout = Instance.new("UIListLayout", Page)
        PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
        PageLayout.Padding = UDim.new(0, 8)
        
        -- Listener pour agrandir le scroll automatiquement
        PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y + 25)
        end)
        
        local PagePadding = Instance.new("UIPadding", Page)
        PagePadding.PaddingRight = UDim.new(0, 10)
        PagePadding.PaddingTop = UDim.new(0, 5)
        PagePadding.PaddingBottom = UDim.new(0, 5)

        TabBtn.MouseButton1Click:Connect(function()
            for _, v in pairs(TabScroll:GetChildren()) do
                if v:IsA("TextButton") then
                    v.TextColor3 = Theme.SubText
                    if v:FindFirstChild("Frame") then v.Frame.Visible = false end
                end
            end
            for _, v in pairs(PagesContainer:GetChildren()) do
                v.Visible = false
            end
            TabBtn.TextColor3 = Theme.Text
            ActiveLine.Visible = true
            Page.Visible = true
        end)

        FirstTab = false
        local Elements = {}

        -- TOGGLE
        function Elements:Toggle(options)
            local tFlag = options.Flag
            local default = Library.Flags[tFlag] or options.Default or false
            Library.Flags[tFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 35)
            Frame.BackgroundTransparency = 1

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(0.6, 0, 1, 0)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local Button = Instance.new("TextButton", Frame)
            Button.Size = UDim2.new(0, 60, 0, 28)
            Button.Position = UDim2.new(1, -60, 0.5, -14)
            Button.Font = Enum.Font.GothamBold
            Button.TextSize = 12
            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 6)

            local function Update()
                if Library.Flags[tFlag] then
                    Button.Text = "ON"
                    Button.BackgroundColor3 = Theme.Accent
                    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                else
                    Button.Text = "OFF"
                    Button.BackgroundColor3 = Theme.ItemBG
                    Button.TextColor3 = Color3.fromRGB(200, 200, 200)
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

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local ValueLabel = Instance.new("TextLabel", Frame)
            ValueLabel.Text = tostring(default)
            ValueLabel.Size = UDim2.new(1, 0, 0, 20)
            ValueLabel.Font = Enum.Font.GothamBold
            ValueLabel.TextSize = 14
            ValueLabel.TextColor3 = Theme.Text
            ValueLabel.BackgroundTransparency = 1
            ValueLabel.TextXAlignment = Enum.TextXAlignment.Right

            local SliderBG = Instance.new("Frame", Frame)
            SliderBG.Size = UDim2.new(1, 0, 0, 8)
            SliderBG.Position = UDim2.new(0, 0, 0, 28)
            SliderBG.BackgroundColor3 = Theme.ItemBG
            Instance.new("UICorner", SliderBG).CornerRadius = UDim.new(0, 4)

            local Fill = Instance.new("Frame", SliderBG)
            Fill.BackgroundColor3 = Theme.Accent
            Fill.Size = UDim2.new(0, 0, 1, 0)
            Instance.new("UICorner", Fill).CornerRadius = UDim.new(0, 4)

            local function Update(input)
                local SizeX = math.clamp((input.Position.X - SliderBG.AbsolutePosition.X) / SliderBG.AbsoluteSize.X, 0, 1)
                local Value = math.floor(min + ((max - min) * SizeX))
                Library.Flags[sFlag] = Value
                Fill.Size = UDim2.new(SizeX, 0, 1, 0)
                ValueLabel.Text = tostring(Value)
                pcall(options.Callback, Value)
                Library:Save()
            end

            local percent = (default - min) / (max - min)
            Fill.Size = UDim2.new(percent, 0, 1, 0)

            local Dragging = false
            SliderBG.InputBegan:Connect(function(input)
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
            Frame.Size = UDim2.new(1, 0, 0, 60)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, 0, 0, 30)
            MainBtn.Position = UDim2.new(0, 0, 0, 25)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = default
            MainBtn.TextColor3 = Theme.RedText
            MainBtn.Font = Enum.Font.GothamSemibold
            MainBtn.TextSize = 13
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 6)

            local Scroll = Instance.new("ScrollingFrame", MainBtn)
            Scroll.Size = UDim2.new(1, 0, 0, 120)
            Scroll.Position = UDim2.new(0, 0, 1, 5)
            Scroll.BackgroundColor3 = Theme.ItemBG
            Scroll.Visible = false
            Scroll.ZIndex = 10
            Scroll.ScrollBarThickness = 2
            Instance.new("UICorner", Scroll).CornerRadius = UDim.new(0, 6)
            
            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.Padding = UDim.new(0, 2)
            Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                Scroll.CanvasSize = UDim2.new(0, 0, 0, Layout.AbsoluteContentSize.Y + 5)
            end)

            local Open = false
            MainBtn.MouseButton1Click:Connect(function()
                Open = not Open
                Scroll.Visible = Open
                Frame.ZIndex = Open and 20 or 5
            end)

            for _, item in ipairs(options.List) do
                local ItemBtn = Instance.new("TextButton", Scroll)
                ItemBtn.Size = UDim2.new(1, 0, 0, 25)
                ItemBtn.BackgroundTransparency = 1
                ItemBtn.Text = item
                ItemBtn.TextColor3 = Theme.Text
                ItemBtn.Font = Enum.Font.Gotham
                ItemBtn.TextSize = 12
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

        -- MULTI DROPDOWN
        function Elements:MultiDropdown(options)
            local dFlag = options.Flag
            local default = Library.Flags[dFlag] or {}
            Library.Flags[dFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 60)
            Frame.BackgroundTransparency = 1
            Frame.ZIndex = 5

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local MainBtn = Instance.new("TextButton", Frame)
            MainBtn.Size = UDim2.new(1, 0, 0, 30)
            MainBtn.Position = UDim2.new(0, 0, 0, 25)
            MainBtn.BackgroundColor3 = Theme.ItemBG
            MainBtn.Text = "Select Items..."
            MainBtn.TextColor3 = Theme.RedText
            MainBtn.Font = Enum.Font.GothamSemibold
            MainBtn.TextSize = 13
            Instance.new("UICorner", MainBtn).CornerRadius = UDim.new(0, 6)

            local Scroll = Instance.new("ScrollingFrame", MainBtn)
            Scroll.Size = UDim2.new(1, 0, 0, 120)
            Scroll.Position = UDim2.new(0, 0, 1, 5)
            Scroll.BackgroundColor3 = Theme.ItemBG
            Scroll.Visible = false
            Scroll.ZIndex = 10
            Scroll.ScrollBarThickness = 2
            Instance.new("UICorner", Scroll).CornerRadius = UDim.new(0, 6)

            local Layout = Instance.new("UIListLayout", Scroll)
            Layout.Padding = UDim.new(0, 2)
            Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                Scroll.CanvasSize = UDim2.new(0, 0, 0, Layout.AbsoluteContentSize.Y + 5)
            end)

            local Open = false
            MainBtn.MouseButton1Click:Connect(function()
                Open = not Open
                Scroll.Visible = Open
                Frame.ZIndex = Open and 20 or 5
            end)

            for _, item in ipairs(options.List) do
                if Library.Flags[dFlag][item] == nil then Library.Flags[dFlag][item] = false end
                local ItemBtn = Instance.new("TextButton", Scroll)
                ItemBtn.Size = UDim2.new(1, 0, 0, 25)
                ItemBtn.BackgroundTransparency = 1
                ItemBtn.Text = item
                ItemBtn.TextColor3 = Library.Flags[dFlag][item] and Theme.Accent or Theme.Text
                ItemBtn.Font = Enum.Font.Gotham
                ItemBtn.TextSize = 12
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

        -- CYCLE BUTTON
        function Elements:Cycle(options)
            local cFlag = options.Flag
            local default = Library.Flags[cFlag] or options.Default or options.List[1]
            Library.Flags[cFlag] = default

            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 60)
            Frame.BackgroundTransparency = 1

            local Label = Instance.new("TextLabel", Frame)
            Label.Text = options.Name
            Label.Size = UDim2.new(1, 0, 0, 20)
            Label.Font = Enum.Font.GothamBold
            Label.TextSize = 14
            Label.TextColor3 = Theme.Text
            Label.BackgroundTransparency = 1
            Label.TextXAlignment = Enum.TextXAlignment.Left

            local Button = Instance.new("TextButton", Frame)
            Button.Size = UDim2.new(1, 0, 0, 30)
            Button.Position = UDim2.new(0, 0, 0, 25)
            Button.BackgroundColor3 = Theme.ItemBG
            Button.Text = default
            Button.TextColor3 = Theme.RedText
            Button.Font = Enum.Font.GothamSemibold
            Button.TextSize = 13
            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 6)

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

        -- BUTTON
        function Elements:Button(options)
            local Frame = Instance.new("Frame", Page)
            Frame.Size = UDim2.new(1, 0, 0, 45)
            Frame.BackgroundTransparency = 1

            local Btn = Instance.new("TextButton", Frame)
            Btn.Size = UDim2.new(1, 0, 0, 35)
            Btn.Position = UDim2.new(0, 0, 0, 5)
            Btn.BackgroundColor3 = Theme.Accent
            Btn.Text = options.Name
            Btn.TextColor3 = Color3.fromRGB(255,255,255)
            Btn.Font = Enum.Font.GothamBold
            Btn.TextSize = 14
            Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 8)

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
            -- Utilisation d'un UIListLayout pour les crédits pour éviter le chevauchement
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
            Title.TextSize = 16
            Title.LayoutOrder = 1

            local Box = Instance.new("TextBox", CreditsPage)
            Box.Text = "https://discord.gg/RhDnUQr4Du"
            Box.Size = UDim2.new(1, 0, 0, 40)
            Box.BackgroundColor3 = Theme.ItemBG
            Box.TextColor3 = Theme.Accent
            Box.Font = Enum.Font.Gotham
            Box.TextSize = 14
            Box.TextEditable = false
            Box.ClearTextOnFocus = false
            Instance.new("UICorner", Box).CornerRadius = UDim.new(0, 8)
            Box.LayoutOrder = 2

            local CopyBtn = Instance.new("TextButton", CreditsPage)
            CopyBtn.Text = "Copy Link"
            CopyBtn.Size = UDim2.new(1, 0, 0, 35)
            CopyBtn.BackgroundColor3 = Theme.Accent
            CopyBtn.TextColor3 = Color3.fromRGB(255,255,255)
            CopyBtn.Font = Enum.Font.GothamBold
            CopyBtn.TextSize = 14
            Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 8)
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
