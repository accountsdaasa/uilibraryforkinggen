-- ================================================================= --
--     KING UI - REMASTERED (Modern Layout + AutoScale Fix)
-- ================================================================= --

local Library = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

-- // 1. Configuration & Thèmes
local DEFAULTS = {
    ToggleKey = Enum.KeyCode.RightControl, -- Changé en Enum pour la sécurité
    ThemeName = "Default",
    GuiScale = 1
}

-- On garde tes couleurs exactes
local THEME = {
    WindowBG = Color3.fromRGB(25, 25, 35),      -- Fond principal plus sombre
    SidebarBG = Color3.fromRGB(30, 30, 45),     -- Fond de la sidebar
    ContentBG = Color3.fromRGB(20, 20, 30),     -- Fond de la zone de contenu
    ElementBG = Color3.fromRGB(45, 45, 60),     -- Fond des boutons/inputs
    Text = Color3.fromRGB(240, 240, 240),       -- Texte principal
    TextDark = Color3.fromRGB(160, 160, 160),   -- Texte secondaire
    Main = Color3.fromRGB(164, 118, 255),       -- Couleur d'accentuation (Mauve/Rose King)
    Stroke = Color3.fromRGB(60, 60, 80)         -- Bordures
}

Library.Flags = {}
Library.Theme = THEME

-- // 2. Fonctions Utilitaires
local function Create(class, properties)
    local instance = Instance.new(class)
    for k, v in pairs(properties) do
        instance[k] = v
    end
    return instance
end

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

-- // 3. Création de la Fenêtre Principale
function Library:Window(options)
    local Title = options.Text or "King UI Remastered"
    
    -- ScreenGui
    local ScreenGui = Create("ScreenGui", {
        Name = "KingUI_Remastered",
        Parent = CoreGui,
        ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
        ResetOnSpawn = false
    })

    -- Main Frame (Conteneur Principal)
    local MainFrame = Create("Frame", {
        Name = "MainFrame",
        Parent = ScreenGui,
        BackgroundColor3 = THEME.WindowBG,
        Position = UDim2.new(0.5, -300, 0.5, -200), -- Centré par défaut
        Size = UDim2.new(0, 650, 0, 400), -- Taille fixe pour éviter le stacking illisible
        ClipsDescendants = true -- Important pour les arrondis
    })
    
    -- Arrondis et Bordure
    Create("UICorner", {Parent = MainFrame, CornerRadius = UDim.new(0, 8)})
    Create("UIStroke", {Parent = MainFrame, Color = THEME.Stroke, Thickness = 1})

    -- Rendre la fenêtre déplaçable
    MakeDraggable(MainFrame, MainFrame)

    -- Sidebar (Gauche)
    local Sidebar = Create("Frame", {
        Name = "Sidebar",
        Parent = MainFrame,
        BackgroundColor3 = THEME.SidebarBG,
        Size = UDim2.new(0, 160, 1, 0), -- Largeur fixe pour la sidebar
        BorderSizePixel = 0
    })
    
    Create("UICorner", {Parent = Sidebar, CornerRadius = UDim.new(0, 8)})
    -- Cache le coin droit de la sidebar pour qu'il colle au content
    local HideCorner = Create("Frame", {
        Parent = Sidebar,
        BackgroundColor3 = THEME.SidebarBG,
        BorderSizePixel = 0,
        Size = UDim2.new(0, 10, 1, 0),
        Position = UDim2.new(1, -10, 0, 0),
        ZIndex = 2
    })

    -- Titre dans la Sidebar
    local TitleLabel = Create("TextLabel", {
        Parent = Sidebar,
        Text = Title,
        Font = Enum.Font.GothamBold,
        TextSize = 18,
        TextColor3 = THEME.Main,
        Size = UDim2.new(1, -20, 0, 50),
        Position = UDim2.new(0, 10, 0, 10),
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left
    })

    -- Container des boutons d'onglets
    local TabContainer = Create("ScrollingFrame", {
        Parent = Sidebar,
        BackgroundTransparency = 1,
        Position = UDim2.new(0, 0, 0, 60),
        Size = UDim2.new(1, 0, 1, -70),
        ScrollBarThickness = 2,
        BorderSizePixel = 0
    })
    Create("UIListLayout", {
        Parent = TabContainer,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Padding = UDim.new(0, 5)
    })
    Create("UIPadding", {
        Parent = TabContainer,
        PaddingLeft = UDim.new(0, 10),
        PaddingTop = UDim.new(0, 10)
    })

    -- Zone de Contenu (Droite)
    local ContentArea = Create("Frame", {
        Name = "ContentArea",
        Parent = MainFrame,
        BackgroundColor3 = THEME.ContentBG,
        Position = UDim2.new(0, 160, 0, 0),
        Size = UDim2.new(1, -160, 1, 0),
        BorderSizePixel = 0
    })
    Create("UICorner", {Parent = ContentArea, CornerRadius = UDim.new(0, 8)})
    -- Cache le coin gauche
    local HideCornerContent = Create("Frame", {
        Parent = ContentArea,
        BackgroundColor3 = THEME.ContentBG,
        BorderSizePixel = 0,
        Size = UDim2.new(0, 10, 1, 0),
        Position = UDim2.new(0, 0, 0, 0),
        ZIndex = 2
    })

    -- Gestion des Onglets
    local Tabs = {}
    local FirstTab = true

    local WindowFunctions = {}

    -- // 4. Fonction Création d'Onglet
    function WindowFunctions:Tab(options)
        local TabName = options.Text or "Tab"
        
        -- Bouton dans la Sidebar
        local TabButton = Create("TextButton", {
            Parent = TabContainer,
            Text = TabName,
            Font = Enum.Font.GothamMedium,
            TextSize = 14,
            TextColor3 = THEME.TextDark,
            BackgroundColor3 = Color3.new(1,1,1),
            BackgroundTransparency = 1,
            Size = UDim2.new(1, -20, 0, 35),
            AutoButtonColor = false,
            TextXAlignment = Enum.TextXAlignment.Left
        })
        
        -- Indicateur visuel (petite barre à gauche du bouton)
        local TabIndicator = Create("Frame", {
            Parent = TabButton,
            BackgroundColor3 = THEME.Main,
            Size = UDim2.new(0, 3, 0, 20),
            Position = UDim2.new(0, -5, 0.5, -10),
            BackgroundTransparency = 1 -- Invisible par défaut
        })
        Create("UICorner", {Parent = TabIndicator, CornerRadius = UDim.new(1, 0)})
        Create("UIPadding", {Parent = TabButton, PaddingLeft = UDim.new(0, 12)})

        -- Page de contenu (ScrollingFrame)
        local TabPage = Create("ScrollingFrame", {
            Name = TabName .. "_Page",
            Parent = ContentArea,
            BackgroundTransparency = 1,
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, 0, 0, 0),
            Visible = false, -- Caché par défaut
            ScrollBarThickness = 3,
            ScrollBarImageColor3 = THEME.Main,
            BorderSizePixel = 0,
            AutomaticCanvasSize = Enum.AutomaticSize.Y -- FIX CRITIQUE: Permet de scroller si trop d'items
        })
        
        Create("UIPadding", {
            Parent = TabPage,
            PaddingTop = UDim.new(0, 15),
            PaddingLeft = UDim.new(0, 15),
            PaddingRight = UDim.new(0, 15),
            PaddingBottom = UDim.new(0, 15)
        })
        
        Create("UIListLayout", {
            Parent = TabPage,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, 8) -- Espace entre les éléments
        })

        -- Logique d'activation de l'onglet
        local function Activate()
            -- Désactiver tous les autres
            for _, tab in pairs(Tabs) do
                tab.Page.Visible = false
                TweenService:Create(tab.Btn, TweenInfo.new(0.3), {TextColor3 = THEME.TextDark}):Play()
                TweenService:Create(tab.Ind, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
            end
            
            -- Activer celui-ci
            TabPage.Visible = true
            TweenService:Create(TabButton, TweenInfo.new(0.3), {TextColor3 = THEME.Text}):Play()
            TweenService:Create(TabIndicator, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
        end

        TabButton.MouseButton1Click:Connect(Activate)

        -- Si c'est le premier onglet, on l'active par défaut
        if FirstTab then
            FirstTab = false
            Activate()
        end

        table.insert(Tabs, {Btn = TabButton, Page = TabPage, Ind = TabIndicator})

        local TabFunctions = {}

        -- // 5. Éléments UI (Boutons, Sliders, etc.)
        
        -- BUTTON
        function TabFunctions:Button(options)
            local BtnText = options.Text or "Button"
            local Callback = options.Callback or function() end
            
            local ButtonFrame = Create("TextButton", {
                Parent = TabPage,
                BackgroundColor3 = THEME.ElementBG,
                Size = UDim2.new(1, 0, 0, 38), -- Hauteur fixe
                Text = "",
                AutoButtonColor = false
            })
            Create("UICorner", {Parent = ButtonFrame, CornerRadius = UDim.new(0, 6)})
            
            local BtnLabel = Create("TextLabel", {
                Parent = ButtonFrame,
                Text = BtnText,
                TextColor3 = THEME.Text,
                Font = Enum.Font.Gotham,
                TextSize = 14,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                Position = UDim2.new(0, 0, 0, 0)
            })

            -- Animation simple
            ButtonFrame.MouseEnter:Connect(function()
                TweenService:Create(ButtonFrame, TweenInfo.new(0.2), {BackgroundColor3 = Color3.new(THEME.ElementBG.R+0.1, THEME.ElementBG.G+0.1, THEME.ElementBG.B+0.1)}):Play()
            end)
            ButtonFrame.MouseLeave:Connect(function()
                TweenService:Create(ButtonFrame, TweenInfo.new(0.2), {BackgroundColor3 = THEME.ElementBG}):Play()
            end)
            
            ButtonFrame.MouseButton1Click:Connect(function()
                -- Effet de clic
                local ripple = Create("Frame", {
                    Parent = ButtonFrame,
                    BackgroundColor3 = Color3.new(1,1,1),
                    BackgroundTransparency = 0.8,
                    Position = UDim2.new(0, 0, 0, 0),
                    Size = UDim2.new(1, 0, 1, 0),
                    ZIndex = 10
                })
                Create("UICorner", {Parent = ripple, CornerRadius = UDim.new(0, 6)})
                TweenService:Create(ripple, TweenInfo.new(0.4), {BackgroundTransparency = 1}):Play()
                game.Debris:AddItem(ripple, 0.4)
                
                Callback()
            end)
        end

        -- TOGGLE
        function TabFunctions:Toggle(options)
            local ToggleText = options.Text or "Toggle"
            local Default = options.Default or false
            local Flag = options.Flag or ToggleText
            local Callback = options.Callback or function() end

            local Toggled = Default
            Library.Flags[Flag] = Default

            local ToggleFrame = Create("TextButton", {
                Parent = TabPage,
                BackgroundColor3 = THEME.ElementBG,
                Size = UDim2.new(1, 0, 0, 38),
                Text = "",
                AutoButtonColor = false
            })
            Create("UICorner", {Parent = ToggleFrame, CornerRadius = UDim.new(0, 6)})

            local Label = Create("TextLabel", {
                Parent = ToggleFrame,
                Text = ToggleText,
                Font = Enum.Font.Gotham,
                TextSize = 14,
                TextColor3 = THEME.Text,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, -50, 1, 0),
                Position = UDim2.new(0, 12, 0, 0),
                TextXAlignment = Enum.TextXAlignment.Left
            })

            -- Le visuel du switch
            local SwitchBg = Create("Frame", {
                Parent = ToggleFrame,
                BackgroundColor3 = Toggled and THEME.Main or Color3.fromRGB(30, 30, 30),
                Size = UDim2.new(0, 40, 0, 20),
                Position = UDim2.new(1, -50, 0.5, -10)
            })
            Create("UICorner", {Parent = SwitchBg, CornerRadius = UDim.new(1, 0)})
            
            local SwitchCircle = Create("Frame", {
                Parent = SwitchBg,
                BackgroundColor3 = Color3.new(1,1,1),
                Size = UDim2.new(0, 16, 0, 16),
                Position = Toggled and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
            })
            Create("UICorner", {Parent = SwitchCircle, CornerRadius = UDim.new(1, 0)})

            ToggleFrame.MouseButton1Click:Connect(function()
                Toggled = not Toggled
                Library.Flags[Flag] = Toggled
                
                -- Animation
                local targetColor = Toggled and THEME.Main or Color3.fromRGB(30, 30, 30)
                local targetPos = Toggled and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
                
                TweenService:Create(SwitchBg, TweenInfo.new(0.2), {BackgroundColor3 = targetColor}):Play()
                TweenService:Create(SwitchCircle, TweenInfo.new(0.2), {Position = targetPos}):Play()
                
                Callback(Toggled)
            end)
            
            -- Executer une fois si defaut est true
            if Default then Callback(true) end
        end

        -- SLIDER
        function TabFunctions:Slider(options)
            local SliderText = options.Text or "Slider"
            local Min = options.Min or 0
            local Max = options.Max or 100
            local Default = options.Default or Min
            local Flag = options.Flag or SliderText
            local Callback = options.Callback or function() end

            Library.Flags[Flag] = Default

            local SliderFrame = Create("Frame", {
                Parent = TabPage,
                BackgroundColor3 = THEME.ElementBG,
                Size = UDim2.new(1, 0, 0, 50) -- Plus haut pour slider
            })
            Create("UICorner", {Parent = SliderFrame, CornerRadius = UDim.new(0, 6)})

            local Label = Create("TextLabel", {
                Parent = SliderFrame,
                Text = SliderText,
                Font = Enum.Font.Gotham,
                TextSize = 14,
                TextColor3 = THEME.Text,
                BackgroundTransparency = 1,
                Position = UDim2.new(0, 12, 0, 5),
                Size = UDim2.new(1, -24, 0, 20),
                TextXAlignment = Enum.TextXAlignment.Left
            })

            local ValueLabel = Create("TextLabel", {
                Parent = SliderFrame,
                Text = tostring(Default),
                Font = Enum.Font.GothamBold,
                TextSize = 14,
                TextColor3 = THEME.TextDark,
                BackgroundTransparency = 1,
                Position = UDim2.new(1, -60, 0, 5),
                Size = UDim2.new(0, 50, 0, 20),
                TextXAlignment = Enum.TextXAlignment.Right
            })

            local SliderBar = Create("Frame", {
                Parent = SliderFrame,
                BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                Size = UDim2.new(1, -24, 0, 6),
                Position = UDim2.new(0, 12, 0, 32)
            })
            Create("UICorner", {Parent = SliderBar, CornerRadius = UDim.new(1, 0)})

            local Fill = Create("Frame", {
                Parent = SliderBar,
                BackgroundColor3 = THEME.Main,
                Size = UDim2.new((Default - Min) / (Max - Min), 0, 1, 0)
            })
            Create("UICorner", {Parent = Fill, CornerRadius = UDim.new(1, 0)})

            -- Logique du drag
            local Dragging = false
            
            local function UpdateSlide(input)
                local SizeX = math.clamp((input.Position.X - SliderBar.AbsolutePosition.X) / SliderBar.AbsoluteSize.X, 0, 1)
                local Value = math.floor(Min + ((Max - Min) * SizeX))
                
                Fill.Size = UDim2.new(SizeX, 0, 1, 0)
                ValueLabel.Text = tostring(Value)
                Library.Flags[Flag] = Value
                Callback(Value)
            end

            SliderFrame.InputBegan:Connect(function(input)
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
        
        -- LABEL
        function TabFunctions:Label(options)
            local Text = options.Text or "Label"
            
            local LabelFrame = Create("Frame", {
                Parent = TabPage,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 0, 25)
            })
            
            local LabelText = Create("TextLabel", {
                Parent = LabelFrame,
                Text = Text,
                Font = Enum.Font.Gotham,
                TextSize = 14,
                TextColor3 = THEME.TextDark,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, 0, 1, 0),
                TextXAlignment = Enum.TextXAlignment.Left
            })
            Create("UIPadding", {Parent = LabelFrame, PaddingLeft = UDim.new(0, 5)})
        end

        -- INPUT
        function TabFunctions:Input(options)
            local Name = options.Name or "Input"
            local Placeholder = options.Placeholder or "Type here..."
            local Flag = options.Flag or Name
            local Callback = options.Callback or function() end

            local InputFrame = Create("Frame", {
                Parent = TabPage,
                BackgroundColor3 = THEME.ElementBG,
                Size = UDim2.new(1, 0, 0, 38)
            })
            Create("UICorner", {Parent = InputFrame, CornerRadius = UDim.new(0, 6)})

            local Label = Create("TextLabel", {
                Parent = InputFrame,
                Text = Name,
                Font = Enum.Font.Gotham,
                TextSize = 14,
                TextColor3 = THEME.Text,
                BackgroundTransparency = 1,
                Size = UDim2.new(0, 100, 1, 0),
                Position = UDim2.new(0, 12, 0, 0),
                TextXAlignment = Enum.TextXAlignment.Left
            })

            local TextBox = Create("TextBox", {
                Parent = InputFrame,
                Font = Enum.Font.Gotham,
                Text = "",
                PlaceholderText = Placeholder,
                TextSize = 13,
                TextColor3 = THEME.Text,
                PlaceholderColor3 = THEME.TextDark,
                BackgroundTransparency = 1,
                Size = UDim2.new(1, -120, 1, 0),
                Position = UDim2.new(0, 110, 0, 0),
                TextXAlignment = Enum.TextXAlignment.Right
            })
            
            TextBox.FocusLost:Connect(function(enterPressed)
                Library.Flags[Flag] = TextBox.Text
                Callback(TextBox.Text)
            end)
        end

        return TabFunctions
    end

    return WindowFunctions
end

return Library
