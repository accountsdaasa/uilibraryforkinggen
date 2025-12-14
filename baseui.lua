--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local Library = {};
local UserInputService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\228\208\222\55\207\181\215\11\197\240\222\55\240\178\196\27", "\126\177\163\187\69\134\219\167"));
local TweenService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\23\218\47\192\242\16\200\56\211\245\32\200", "\156\67\173\74\165"));
local HttpService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\28\163\93\6\143\35\84\34\190\74\19", "\38\84\215\41\118\220\70"));
local CoreGui = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\115\25\48\23\217\69\31", "\158\48\118\66\114"));
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\155\40\17\47\118\183\232", "\155\203\68\112\86\19\197"));
local VirtualUser = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\112\212\36\232\85\121\233\205\85\216\36", "\152\38\189\86\156\32\24\133"));
local RunService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\206\66\169\117\249\69\177\79\255\82", "\38\156\55\199"));
local IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled;
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\116\114\44\28\99\216\100", "\35\200\29\28\72\115\20\154")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\182\213\218\143\45\38\59\152", "\84\121\223\177\191\237\76")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\66\204\173\24\119", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\65\3\32\71\86\51\49\72\80\20", "\69\41\34\96")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\192\212\15\12\63\153\205\211", "\75\220\163\183\106\98")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\191\147\35", "\185\98\218\235\87")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242\250\171\217\55", "\202\171\92\71\134\190")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\232\31\156\59\206\39\141\10\206\32\135\59", "\232\73\161\76")]=Color3.fromRGB(90, 80, 115),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\204\65\94\27\168\202", "\126\219\185\34\61")]=Color3.fromRGB(60, 210, 100)};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\39\199\80\117\89\114\253", "\135\108\174\62\18\30\23\147");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\178\236\44\202\13\162\39\137\188\250\37\197", "\167\214\137\74\171\120\206\83");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\153\242\42\92\235\180\142\228\59\89\162\232\196\169\98\15\173\246\220\162\96\5\161\240\220\160\101", "\199\235\144\82\61\152");
task.spawn(function()
	pcall(function()
		Players.LocalPlayer.Idled:Connect(function()
			VirtualUser:CaptureController();
			VirtualUser:ClickButton2(Vector2.new(0, 0));
		end);
	end);
end);
local function SendNotification(title, text)
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\52\2\184\57\19\19\171\12\18\31", "\75\103\118\217")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\244\81\126\16\151\17\211\93\118\29\186\31\211\93\127\26", "\126\167\52\16\116\217"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\252\39\52\140\177", "\156\168\78\64\224\212\121")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\235\189\218", "\174\103\142\197")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\114\61\77\57\49\87\247\88", "\152\54\72\63\88\69\62")]=3,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\199\225\82", "\60\180\164\142")]=KINGHUB_DECAL_ID});
end
Library.Notify = function(self, options)
	SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\115\87\11\46\103\202\23\86", "\114\56\62\101\73\71\141"), ((type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\172\232\217\200\189", "\164\216\137\187")) and options.Text) or tostring(options));
end;
Library.Save = function(self)
	if (writefile and makefolder) then
		if not isfolder(self.FolderName) then
			makefolder(self.FolderName);
		end
		local ok, json = pcall(function()
			return HttpService:JSONEncode(self.Flags);
		end);
		if ok then
			writefile(self.FolderName .. "/" .. self.CurrentConfig, json);
		end
	end
end;
Library.Load = function(self)
	if (readfile and isfile and isfolder(self.FolderName)) then
		local path = self.FolderName .. "/" .. self.CurrentConfig;
		if isfile(path) then
			local success, decoded = pcall(function()
				return HttpService:JSONDecode(readfile(path));
			end);
			if success then
				for flag, value in pairs(decoded) do
					self.Flags[flag] = value;
				end
			end
		end
	end
end;
local function MakeDraggable(topbarobject, object)
	local Dragging, DragInput, DragStart, StartPosition;
	topbarobject.InputBegan:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			Dragging = true;
			DragStart = input.Position;
			StartPosition = object.Position;
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					Dragging = false;
				end
			end);
		end
	end);
	topbarobject.InputChanged:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseMovement) or (input.UserInputType == Enum.UserInputType.Touch)) then
			DragInput = input;
		end
	end);
	UserInputService.InputChanged:Connect(function(input)
		if ((input == DragInput) and Dragging) then
			local Delta = input.Position - DragStart;
			object.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y);
		end
	end);
end
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\209\233\63\180\175\249\69\216\245\62\188", "\107\178\134\81\210\198\158");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\19\7\140\193\141\61\0\183\200\163\46\11\144\213\171\52", "\202\88\110\226\166")) then
		CoreGui.KingGenUniversal:Destroy();
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\12\144\242\207\205\40\151\254", "\170\163\111\226\151"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\58\57\188\63\105\50\39\36\62\187\46\75\37\58\16\60", "\73\113\80\210\88\46\87");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	local UIScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\5\254\17\230\141\41", "\135\225\76\173\114"), ScreenGui);
	UIScale.Scale = (IsMobile and 1.1) or 1;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\255\185\189\169", "\199\122\141\216\208\204\221"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\128\220\25\254\94\228\172\208\21", "\150\205\189\112\144\24");
	MainFrame.Size = UDim2.new(0, 600, 0, 380);
	MainFrame.Position = UDim2.new(0.5, -300, 0.5, -190);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ClipsDescendants = false;
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\173\156\67\22\134\20\2", "\112\69\228\223\44\100\232\113"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 12);
	local Shadow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\18\6\212\179\80\135\214\26\11", "\230\180\127\103\179\214\28"), MainFrame);
	Shadow.ZIndex = -1;
	Shadow.Position = UDim2.new(0, -25, 0, -25);
	Shadow.Size = UDim2.new(1, 50, 1, 50);
	Shadow.BackgroundTransparency = 1;
	Shadow.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\158\7\71\71\247\82\229\152\12\91\28\171\14\182\220\84\11\20\178\16\185\213\86", "\128\236\101\63\38\132\33");
	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0);
	Shadow.ImageTransparency = 0.4;
	Shadow.ScaleType = Enum.ScaleType.Slice;
	Shadow.SliceCenter = Rect.new(49, 49, 450, 450);
	local Sidebar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\187\16\73\179", "\175\204\201\113\36\214\139"), MainFrame);
	Sidebar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\116\197\49\217\6\70\222", "\100\39\172\85\188");
	Sidebar.Size = UDim2.new(0, 160, 1, 0);
	Sidebar.BackgroundColor3 = Theme.SidebarBG;
	Sidebar.BorderSizePixel = 0;
	local SidebarCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\81\154\143\33\163\125\171", "\83\205\24\217\224"), Sidebar);
	SidebarCorner.CornerRadius = UDim.new(0, 12);
	local SidebarFix = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\215\204\48\227", "\93\134\165\173"), Sidebar);
	SidebarFix.Size = UDim2.new(0, 10, 1, 0);
	SidebarFix.Position = UDim2.new(1, -10, 0, 0);
	SidebarFix.BackgroundColor3 = Theme.SidebarBG;
	SidebarFix.BorderSizePixel = 0;
	SidebarFix.ZIndex = 1;
	local LogoArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\224\192\207\63", "\30\222\146\161\162\90\174\210"), Sidebar);
	LogoArea.Size = UDim2.new(1, 0, 0, 70);
	LogoArea.BackgroundTransparency = 1;
	LogoArea.ZIndex = 2;
	local LogoImg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\67\113\13\224\98\113\8\224\66", "\106\133\46\16"), LogoArea);
	LogoImg.Size = UDim2.new(0, 36, 0, 36);
	LogoImg.Position = UDim2.new(0, 15, 0, 17);
	LogoImg.Image = KINGHUB_DECAL_ID;
	LogoImg.BackgroundTransparency = 1;
	LogoImg.ScaleType = Enum.ScaleType.Fit;
	local LogoText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\37\107\232\118\65\90\37\127", "\32\56\64\19\156\58"), LogoArea);
	LogoText.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\113\193\235\81\26\213\133\84", "\224\58\168\133\54\58\146");
	LogoText.Size = UDim2.new(0, 100, 0, 20);
	LogoText.Position = UDim2.new(0, 60, 0, 16);
	LogoText.Font = Enum.Font.GothamBold;
	LogoText.TextSize = 16;
	LogoText.TextColor3 = Theme.Text;
	LogoText.TextXAlignment = Enum.TextXAlignment.Left;
	LogoText.BackgroundTransparency = 1;
	local LogoSub = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233\89\135\133\14\85", "\107\57\54\43\157\21\230\231"), LogoArea);
	LogoSub.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\238\133\24\227\188\206\220\218\135\81\195\225", "\175\187\235\113\149\217\188");
	LogoSub.Size = UDim2.new(0, 100, 0, 15);
	LogoSub.Position = UDim2.new(0, 60, 0, 38);
	LogoSub.Font = Enum.Font.Gotham;
	LogoSub.TextSize = 12;
	LogoSub.TextColor3 = Theme.AccentStart;
	LogoSub.TextXAlignment = Enum.TextXAlignment.Left;
	LogoSub.BackgroundTransparency = 1;
	local TabContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\172\147\67\239\117\113\50\168\167\94\226\116\125", "\24\92\207\225\44\131\25"), Sidebar);
	TabContainer.Size = UDim2.new(1, 0, 1, -70);
	TabContainer.Position = UDim2.new(0, 0, 0, 70);
	TabContainer.BackgroundTransparency = 1;
	TabContainer.ScrollBarThickness = 0;
	TabContainer.ZIndex = 2;
	local TabList = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\250\148\69\8\105\103\210\161\67\14\105", "\29\43\179\216\44\123"), TabContainer);
	TabList.SortOrder = Enum.SortOrder.LayoutOrder;
	TabList.Padding = UDim.new(0, 5);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\240\16\77\185\221\41\66\186", "\44\221\185\64"), TabContainer).PaddingLeft = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\120\94\119\5\238\70\88", "\19\97\135\40\63"), TabContainer).PaddingTop = UDim.new(0, 10);
	local PageContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\78\50\54\42", "\81\206\60\83\91\79"), MainFrame);
	PageContainer.Size = UDim2.new(1, -160, 1, 0);
	PageContainer.Position = UDim2.new(0, 160, 0, 0);
	PageContainer.BackgroundTransparency = 1;
	local TopBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\185\209\127\42", "\196\46\203\176\18\79\163\45"), PageContainer);
	TopBar.Size = UDim2.new(1, 0, 0, 50);
	TopBar.BackgroundTransparency = 1;
	MakeDraggable(TopBar, MainFrame);
	local CurrentPageTitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\39\102\10\8\250\237\189\46", "\143\216\66\30\126\68\155"), TopBar);
	CurrentPageTitle.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\142\201\30\195\199\172\214\243\174", "\129\202\168\109\171\165\195\183");
	CurrentPageTitle.Size = UDim2.new(1, -50, 1, 0);
	CurrentPageTitle.Position = UDim2.new(0, 20, 0, 0);
	CurrentPageTitle.Font = Enum.Font.GothamBold;
	CurrentPageTitle.TextSize = 18;
	CurrentPageTitle.TextColor3 = Theme.Text;
	CurrentPageTitle.TextXAlignment = Enum.TextXAlignment.Left;
	CurrentPageTitle.BackgroundTransparency = 1;
	local CloseBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\47\204\252\1\242\54\87\57", "\134\66\56\87\184\190\116"), TopBar);
	CloseBtn.Size = UDim2.new(0, 30, 0, 30);
	CloseBtn.Position = UDim2.new(1, -40, 0.5, -15);
	CloseBtn.Text = "×";
	CloseBtn.Font = Enum.Font.Gotham;
	CloseBtn.TextSize = 24;
	CloseBtn.TextColor3 = Theme.TextDark;
	CloseBtn.BackgroundTransparency = 1;
	local FloatGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\50\27\190\28\229\6\32\53", "\85\92\81\105\219\121\139\65"), CoreGui);
	FloatGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\214\186\94\66\90\211\242\178\68", "\191\157\211\48\37\28");
	FloatGui.DisplayOrder = 1000;
	local FloatBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\18\245\27\63\253\10\224\8\53\209", "\90\191\127\148\124"), FloatGui);
	FloatBtn.Size = UDim2.new(0, 50, 0, 50);
	FloatBtn.Position = UDim2.new(0.1, 0, 0.2, 0);
	FloatBtn.Image = KINGHUB_DECAL_ID;
	FloatBtn.BackgroundColor3 = Theme.SidebarBG;
	FloatBtn.Visible = false;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\174\13\24\106\137\43\5", "\119\24\231\78"), FloatBtn).CornerRadius = UDim.new(1, 0);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\4\150\94\206\79\26\135", "\113\226\77\197\42\188\32"), FloatBtn).Color = Theme.AccentStart;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\63\199\161\40\25\255\176", "\213\90\118\148"), FloatBtn).Thickness = 2;
	MakeDraggable(FloatBtn, FloatBtn);
	local function ToggleUI()
		MainFrame.Visible = not MainFrame.Visible;
		FloatBtn.Visible = not MainFrame.Visible;
	end
	CloseBtn.MouseButton1Click:Connect(ToggleUI);
	FloatBtn.MouseButton1Click:Connect(ToggleUI);
	local function Intro()
		MainFrame.Size = UDim2.new(0, 0, 0, 0);
		TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\104\39\174\83", "\45\59\78\212\54")]=UDim2.new(0, 600, 0, 380)}):Play();
	end
	local WindowAPI = {};
	local Tabs = {};
	WindowAPI.Tab = function(self, name)
		local Tab = {};
		local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\83\155\159\164\59\185\228\31\88", "\144\112\54\227\235\230\78\205"), TabContainer);
		Btn.Size = UDim2.new(1, -10, 0, 35);
		Btn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\243\104\79\188\144\27\243", "\59\211\72\111\156\176") .. name;
		Btn.Font = Enum.Font.GothamSemibold;
		Btn.TextSize = 13;
		Btn.TextColor3 = Theme.TextDark;
		Btn.BackgroundColor3 = Theme.SidebarBG;
		Btn.AutoButtonColor = false;
		Btn.TextXAlignment = Enum.TextXAlignment.Left;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\174\192\34\92\137\230\63", "\77\46\231\131"), Btn).CornerRadius = UDim.new(0, 6);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\70\183\77\191", "\32\218\52\214"), Btn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.Visible = false;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\62\18\167\227\190\64\72", "\58\46\119\81\200\145\208\37"), Indicator).CornerRadius = UDim.new(0, 4);
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\143\34\163\165\177\63\37\139\22\190\168\176\51", "\86\75\236\80\204\201\221"), PageContainer);
		Page.Size = UDim2.new(1, 0, 1, -50);
		Page.Position = UDim2.new(0, 0, 0, 50);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 3;
		Page.ScrollBarImageColor3 = Theme.AccentStart;
		Page.Visible = false;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\71\104\91\140\237\159\94\64\110\138\235\159", "\235\18\33\23\229\158"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\147\241\186\84\190\200\181\87", "\219\48\218\161"), Page).PaddingLeft = UDim.new(0, 20);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\76\72\223\75\233\234\118", "\128\132\17\28\41\187\47"), Page).PaddingRight = UDim.new(0, 20);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\27\54\59\89\5\59\8\61", "\61\97\82\102\90"), Page).PaddingBottom = UDim.new(0, 10);
		local function Activate()
			for _, t in pairs(Tabs) do
				TweenService:Create(t.Btn, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\43\179\95\228\88\18\6\190\125", "\105\204\78\203\43\167\55\126")]=Theme.TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\171\32\21\20\22\200\68\171\174\0\17\31\11\213\2", "\49\197\202\67\126\115\100\167")]=Theme.SidebarBG}):Play();
				t.Ind.Visible = false;
				t.Page.Visible = false;
			end
			TweenService:Create(Btn, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\3\94\199\61\163\89\82\56\73\140", "\62\87\59\191\73\224\54")]=Theme.Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\3\249\194\224\16\245\220\233\6\217\198\235\13\232\154", "\169\135\98\154")]=Theme.ItemBG}):Play();
			Indicator.Visible = true;
			Page.Visible = true;
			CurrentPageTitle.Text = name;
		end
		Btn.MouseButton1Click:Connect(Activate);
		table.insert(Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\233\99\42", "\168\171\23\68\52\157\83")]=Btn,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\127\241", "\231\148\17\149\205\69\77")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\176\166\192\254", "\159\224\199\167\155\55")]=Page});
		if (#Tabs == 1) then
			Activate();
		end
		Tab.Toggle = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or false;
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\61\223\242", "\178\151\147\92"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\212\111\61\0\66\127\158", "\26\236\157\44\82\114\44"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\43\205\79\6\47\215\94\38", "\59\74\78\181"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, 0, 1, 0);
			Label.Position = UDim2.new(0, 12, 0, 0);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Switch = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\212\66\78\145\48\197\78\85\189", "\211\69\177\58\58"), Frame);
			Switch.Size = UDim2.new(0, 40, 0, 22);
			Switch.Position = UDim2.new(1, -50, 0.5, -11);
			Switch.BackgroundColor3 = (default and Theme.AccentStart) or Color3.fromRGB(50, 50, 50);
			Switch.Text = "";
			Switch.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\204\90\250\251\197\178\247", "\171\215\133\25\149\137"), Switch).CornerRadius = UDim.new(1, 0);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\218\51\247\234", "\34\129\168\82\154\143\80\156"), Switch);
			Knob.Size = UDim2.new(0, 18, 0, 18);
			Knob.Position = (default and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9);
			Knob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\155\16\4\90\64\140\151", "\233\229\210\83\107\40\46"), Knob).CornerRadius = UDim.new(1, 0);
			local function Trigger(val)
				Library.Flags[tFlag] = val;
				TweenService:Create(Switch, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\227\67\49\221\2\211\77\39\216\1\226\77\62\217\23\146", "\101\161\34\82\182")]=((val and Theme.AccentStart) or Color3.fromRGB(50, 50, 50))}):Play();
				TweenService:Create(Knob, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\216\2\74\247\207\235\141\32", "\78\136\109\57\158\187\130\226")]=((val and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))}):Play();
				if Library.ActiveLoops[tFlag] then
					task.cancel(Library.ActiveLoops[tFlag]);
					Library.ActiveLoops[tFlag] = nil;
				end
				if val then
					Library.ActiveLoops[tFlag] = task.spawn(function()
						while Library.Flags[tFlag] do
							pcall(options.Callback, true);
							task.wait(options.Delay or 0.1);
						end
					end);
				else
					pcall(options.Callback, false);
				end
				Library:Save();
			end
			Switch.MouseButton1Click:Connect(function()
				Trigger(not Library.Flags[tFlag]);
			end);
			if default then
				Trigger(true);
			end
			local ToggleAPI = {};
			ToggleAPI.Set = function(self, val)
				Trigger(val);
			end;
			return ToggleAPI;
		end;
		Tab.Slider = function(self, options)
			local sFlag = options.Flag;
			local min, max = options.Min, options.Max;
			local default = Library.Flags[sFlag] or options.Default or min;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\45\248\252\59", "\145\94\95\153"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\228\55\218\92\185\248\223", "\215\157\173\116\181\46"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\177\147\230\246\52\182\142\254", "\186\85\212\235\146"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 8);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local ValueText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\132\14\234\21\239\90\199\141", "\56\162\225\118\158\89\142"), Frame);
			ValueText.Text = tostring(default);
			ValueText.Size = UDim2.new(0, 50, 0, 20);
			ValueText.Position = UDim2.new(1, -62, 0, 8);
			ValueText.Font = Enum.Font.Gotham;
			ValueText.TextSize = 13;
			ValueText.TextColor3 = Theme.AccentStart;
			ValueText.TextXAlignment = Enum.TextXAlignment.Right;
			ValueText.BackgroundTransparency = 1;
			local Track = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\23\193\162\39", "\184\60\101\160\207\66"), Frame);
			Track.Size = UDim2.new(1, -24, 0, 4);
			Track.Position = UDim2.new(0, 12, 0, 40);
			Track.BackgroundColor3 = Color3.fromRGB(40, 40, 50);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\171\95\179\35\140\121\174", "\220\81\226\28"), Track).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\199\131\246\239", "\167\115\181\226\155\138"), Track);
			Fill.Size = UDim2.new(0, 0, 1, 0);
			local Gradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\11\192\78\122\117\207\231\44\243", "\166\130\66\135\60\27\17"), Fill);
			Gradient.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\99\237\122\34\74\79\220", "\80\36\42\174\21"), Fill).CornerRadius = UDim.new(1, 0);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\2\54\119\75", "\26\46\112\87"), Track);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\10\136\123\173\177\64\166", "\212\217\67\203\20\223\223\37"), Knob).CornerRadius = UDim.new(1, 0);
			local function Update(input)
				local sizeX = math.clamp((input.Position.X - Track.AbsolutePosition.X) / Track.AbsoluteSize.X, 0, 1);
				local val = math.floor(min + ((max - min) * sizeX));
				Library.Flags[sFlag] = val;
				ValueText.Text = tostring(val);
				Fill.Size = UDim2.new(sizeX, 0, 1, 0);
				Knob.Position = UDim2.new(sizeX, 0, 0.5, 0);
				pcall(options.Callback, val);
				Library:Save();
			end
			local percent = (default - min) / (max - min);
			Fill.Size = UDim2.new(percent, 0, 1, 0);
			Knob.Position = UDim2.new(percent, 0, 0.5, 0);
			local Dragging = false;
			Frame.InputBegan:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = true;
					Update(input);
				end
			end);
			UserInputService.InputChanged:Connect(function(input)
				if (Dragging and ((input.UserInputType == Enum.UserInputType.MouseMovement) or (input.UserInputType == Enum.UserInputType.Touch))) then
					Update(input);
				end
			end);
			UserInputService.InputEnded:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = false;
				end
			end);
		end;
		Tab.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\159\169\223\191", "\178\218\237\200"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\197\223\164\187\227\194", "\176\214\213\134"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\168\174\192\132\87\91\241\161", "\57\148\205\214\180\200\54"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 5);
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\248\45\32\84\7\233\33\59\120", "\22\114\157\85\84"), Frame);
			Box.Size = UDim2.new(1, -24, 0, 28);
			Box.Position = UDim2.new(0, 12, 0, 28);
			Box.BackgroundColor3 = Theme.WindowBG;
			Box.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\132\139", "\200\164\171\115\164\61\150") .. default;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.TextColor3 = Theme.TextDark;
			Box.TextXAlignment = Enum.TextXAlignment.Left;
			Box.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\221\32\74\145\176\241\17", "\227\222\148\99\37"), Box).CornerRadius = UDim.new(0, 4);
			local DropList = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\81\64\249\245\63\91\92\241\223\33\83\95\243", "\153\83\50\50\150"));
			DropList.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\121\100\124\12\119\164\90\83\90\122\15\103", "\45\61\22\19\124\19\203");
			DropList.Parent = ScreenGui;
			DropList.Size = UDim2.new(0, 0, 0, 0);
			DropList.BackgroundColor3 = Theme.SidebarBG;
			DropList.Visible = false;
			DropList.ScrollBarThickness = 2;
			DropList.ZIndex = 1000;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\59\46\250\16\126\188\211", "\217\161\114\109\149\98\16"), DropList).CornerRadius = UDim.new(0, 6);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\9\11\104\174\123\25\37", "\20\114\64\88\28\220"), DropList).Color = Theme.UIStrokeColor;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\40\225\160\234\223\182\52", "\221\81\97\178\212\152\176"), DropList).Thickness = 1;
			local ListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\49\242\9\217\203\28\226\21\216\243", "\122\173\135\125\155"), DropList);
			ListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			local Open = false;
			local function Refresh()
				for _, c in pairs(DropList:GetChildren()) do
					if c:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\176\196\24\173\29\36\220\144\206\14", "\168\228\161\96\217\95\81")) then
						c:Destroy();
					end
				end
				for _, item in ipairs(options.List) do
					local B = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\212\54\72\13\66\207\197\33\82", "\55\187\177\78\60\79"), DropList);
					B.Size = UDim2.new(1, 0, 0, 30);
					B.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\109\142", "\224\77\174\63\139\38\175") .. item;
					B.TextColor3 = ((item == Library.Flags[dFlag]) and Theme.AccentStart) or Theme.Text;
					B.BackgroundColor3 = Theme.SidebarBG;
					B.Font = Enum.Font.Gotham;
					B.TextSize = 13;
					B.TextXAlignment = Enum.TextXAlignment.Left;
					B.AutoButtonColor = false;
					B.MouseButton1Click:Connect(function()
						Library.Flags[dFlag] = item;
						Box.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\196\1", "\78\228\33\56") .. item;
						pcall(options.Callback, item);
						Open = false;
						DropList.Visible = false;
						Library:Save();
					end);
				end
				DropList.CanvasSize = UDim2.new(0, 0, 0, ListLayout.AbsoluteContentSize.Y);
			end
			local function UpdatePos()
				if Open then
					DropList.Position = UDim2.new(0, Box.AbsolutePosition.X, 0, Box.AbsolutePosition.Y + Box.AbsoluteSize.Y + 5);
					DropList.Size = UDim2.new(0, Box.AbsoluteSize.X, 0, math.min(#options.List * 30, 150));
				end
			end
			Box.MouseButton1Click:Connect(function()
				Open = not Open;
				if Open then
					Refresh();
					DropList.Visible = true;
					RunService.RenderStepped:Connect(UpdatePos);
				else
					DropList.Visible = false;
				end
			end);
			local DropAPI = {};
			DropAPI.Update = function(self, newList)
				options.List = newList;
				if Open then
					Refresh();
				end
			end;
			return DropAPI;
		end;
		Tab.MultiDropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or {};
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\108\179\14\128", "\229\174\30\210\99"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\165\94\255\51\60\9", "\89\123\141\230\49\141\93"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\116\238\24\60\75\241\116\250", "\42\147\17\150\108\112"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 5);
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\163\53\107\197\253\27\178\34\113", "\136\111\198\77\31\135"), Frame);
			Box.Size = UDim2.new(1, -24, 0, 28);
			Box.Position = UDim2.new(0, 12, 0, 28);
			Box.BackgroundColor3 = Theme.WindowBG;
			Box.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\66\73\148\83\177\225\20\189\66\32\179\83\176\247\89\231\76", "\201\98\105\199\54\221\132\119");
			Box.Font = Enum.Font.Gotham;
			Box.TextColor3 = Theme.TextDark;
			Box.TextXAlignment = Enum.TextXAlignment.Left;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\37\160\46\16\59\169\171", "\204\217\108\227\65\98\85"), Box).CornerRadius = UDim.new(0, 4);
			local DropList = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\192\231\234\32\204\87\205\242\195\62\193\83\198", "\160\62\163\149\133\76"), ScreenGui);
			DropList.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\251\181\1\59\202\242\178\2\63\239\223\179\25", "\163\182\192\109\79");
			DropList.Visible = false;
			DropList.BackgroundColor3 = Theme.SidebarBG;
			DropList.ZIndex = 1000;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\15\35\207\231\58\35\18", "\149\84\70\96\160"), DropList).CornerRadius = UDim.new(0, 6);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\62\249\42\9\6\232", "\141\88\102\109"), DropList).Color = Theme.UIStrokeColor;
			local ListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\230\121\9\41\121\192\170\92\223\100", "\161\211\51\170\16\122\93\53"), DropList);
			local Open = false;
			local function UpdateText()
				local c = 0;
				for _, v in pairs(Library.Flags[dFlag]) do
					if v then
						c = c + 1;
					end
				end
				Box.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\187\238", "\72\155\206\210") .. (((c > 0) and (c .. LUAOBFUSACTOR_DECRYPT_STR_0("\6\73\81\2\54\69\110\81\10", "\83\38\26\52\110"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\107\18\43\67\91\3\103\111\76\18\42\85\22\89\105", "\38\56\119\71"));
			end
			local function Refresh()
				for _, c in pairs(DropList:GetChildren()) do
					if c:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\199\234\64\194\7\67\231\251\87\216", "\54\147\143\56\182\69")) then
						c:Destroy();
					end
				end
				for _, item in ipairs(options.List) do
					if (Library.Flags[dFlag][item] == nil) then
						Library.Flags[dFlag][item] = false;
					end
					local B = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\132\231\93\253\195\149\235\70\209", "\191\182\225\159\41"), DropList);
					B.Size = UDim2.new(1, 0, 0, 30);
					B.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\107\82", "\162\75\114\72\53\235\231") .. item;
					B.TextColor3 = (Library.Flags[dFlag][item] and Theme.AccentStart) or Theme.Text;
					B.BackgroundColor3 = Theme.SidebarBG;
					B.Font = Enum.Font.Gotham;
					B.TextXAlignment = Enum.TextXAlignment.Left;
					B.MouseButton1Click:Connect(function()
						Library.Flags[dFlag][item] = not Library.Flags[dFlag][item];
						B.TextColor3 = (Library.Flags[dFlag][item] and Theme.AccentStart) or Theme.Text;
						UpdateText();
						pcall(options.Callback, Library.Flags[dFlag]);
						Library:Save();
					end);
				end
				DropList.CanvasSize = UDim2.new(0, 0, 0, ListLayout.AbsoluteContentSize.Y);
			end
			local function UpdatePos()
				if Open then
					DropList.Position = UDim2.new(0, Box.AbsolutePosition.X, 0, Box.AbsolutePosition.Y + Box.AbsoluteSize.Y + 5);
					DropList.Size = UDim2.new(0, Box.AbsoluteSize.X, 0, math.min(#options.List * 30, 150));
				end
			end
			Box.MouseButton1Click:Connect(function()
				Open = not Open;
				if Open then
					Refresh();
					DropList.Visible = true;
					RunService.RenderStepped:Connect(UpdatePos);
				else
					DropList.Visible = false;
				end
			end);
			UpdateText();
		end;
		Tab.Cycle = function(self, options)
			local cFlag = options.Flag;
			local default = Library.Flags[cFlag] or options.Default or options.List[1];
			Library.Flags[cFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\46\69\239\86", "\98\236\92\36\130\51"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\47\181\87\166\176\34", "\80\196\121\108\218\37\200\213"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\118\26\107\103\15\136\5\127", "\234\96\19\98\31\43\110"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 5);
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\26\74\211\142\103\159\18\16\92", "\235\102\127\50\167\204\18"), Frame);
			Button.Size = UDim2.new(1, -24, 0, 28);
			Button.Position = UDim2.new(0, 12, 0, 28);
			Button.BackgroundColor3 = Theme.WindowBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\136\214\44\86\32\85\179", "\78\48\193\149\67\36"), Button).CornerRadius = UDim.new(0, 4);
			local idx = table.find(options.List, default) or 1;
			Button.MouseButton1Click:Connect(function()
				idx = idx + 1;
				if (idx > #options.List) then
					idx = 1;
				end
				local val = options.List[idx];
				Library.Flags[cFlag] = val;
				Button.Text = val;
				pcall(options.Callback, val);
				Library:Save();
			end);
		end;
		Tab.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\12\129\21\68", "\33\80\126\224\120"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 45);
			Frame.BackgroundTransparency = 1;
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\173\27\208\126\249\188\23\203\82", "\60\140\200\99\164"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.Text = options.Name;
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn.TextSize = 14;
			Btn.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\39\41\176\137\241\22", "\194\231\148\100\70"), Btn).CornerRadius = UDim.new(0, 8);
			local Gradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\230\177\247\204\79\73\207\183", "\168\38\44\161\195\150"), Btn);
			Gradient.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd);
			Gradient.Transparency = NumberSequence.new(0.4);
			Btn.MouseButton1Click:Connect(function()
				TweenService:Create(Gradient, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\180\238\131\120\35\248\183\4\133\242\129\111", "\118\224\156\226\22\80\136\214")]=NumberSequence.new(0)}):Play();
				task.wait(0.1);
				TweenService:Create(Gradient, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\118\252\88\142\81\254\88\146\71\224\90\153", "\224\34\142\57")]=NumberSequence.new(0.4)}):Play();
				pcall(options.Callback);
			end);
		end;
		Tab.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\181\196\208\118", "\110\190\199\165\189\19\145\61"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\84\231\153\201\223\249", "\167\186\139\23\136\235"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\176\144\25\54\180\138\8\22", "\109\122\213\232"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 5);
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\242\186\36\204\248\186", "\80\142\151\194"), Frame);
			Box.Size = UDim2.new(1, -24, 0, 28);
			Box.Position = UDim2.new(0, 12, 0, 28);
			Box.BackgroundColor3 = Theme.WindowBG;
			Box.Text = default;
			Box.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\38\200\99\73\17\134\99\73\27\210\57\2\77", "\44\99\166\23");
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextXAlignment = Enum.TextXAlignment.Left;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\222\10\57\33\170\121\229", "\196\28\151\73\86\83"), Box).CornerRadius = UDim.new(0, 4);
			Box.FocusLost:Connect(function()
				Library.Flags[tFlag] = Box.Text;
				pcall(options.Callback, Box.Text);
				Library:Save();
			end);
		end;
		Tab.TextBox = Tab.Input;
		Tab.LinkBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\17\40\29\135", "\22\147\99\73\112\226\56\120"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\92\193\250\159\182\112\240", "\237\216\21\130\149"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\182\75\71\75\156\200\92\135\66", "\62\226\46\63\63\208\169"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 5);
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\77\151\61\2\55", "\62\133\121\53\227\127\109\79"), Frame);
			Box.Size = UDim2.new(0.7, -12, 0, 28);
			Box.Position = UDim2.new(0, 12, 0, 28);
			Box.Text = options.Link;
			Box.TextColor3 = Theme.TextDark;
			Box.BackgroundColor3 = Theme.WindowBG;
			Box.TextEditable = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\61\17\250\196\160\167\2", "\194\112\116\82\149\182\206"), Box).CornerRadius = UDim.new(0, 4);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\173\84\12\226\247\26\45\167\66", "\110\89\200\44\120\160\130"), Frame);
			CopyBtn.Size = UDim2.new(0.3, -12, 0, 28);
			CopyBtn.Position = UDim2.new(0.7, 6, 0, 28);
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\136\204\91\95", "\45\203\163\43\38\35\42\91");
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.TextColor3 = Color3.new(1, 1, 1);
			CopyBtn.Font = Enum.Font.GothamBold;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\172\255\44\149\167\81\192", "\52\178\229\188\67\231\201"), CopyBtn).CornerRadius = UDim.new(0, 4);
			CopyBtn.MouseButton1Click:Connect(function()
				setclipboard(options.Link);
				CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\2\78\64\13\242\88\98", "\67\65\33\48\100\151\60");
				task.wait(2);
				CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\252\232\190\193", "\147\191\135\206\184");
			end);
		end;
		Tab.Spacer = function(self, h)
			local s = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\58\167\204\221", "\210\228\72\198\161\184\51"), Page);
			s.Size = UDim2.new(1, 0, 0, h or 10);
			s.BackgroundTransparency = 1;
		end;
		return Tab;
	end;
	local Credits = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\21\91\246\20\122\218\37", "\174\86\41\147\112\19"));
	Credits:LinkBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\117\1\128\14", "\203\59\96\237\107\69\111\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\25\165\239\113\212\222\55\21\163\243\53", "\183\68\118\204\129\81\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\164\126\239", "\226\110\205\16\132\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\215\244\201\82\177\140\175\221\72\248\192\239\203\69\165\196\231\150\115\227\231\238\236\112\249\151\196\204", "\33\139\163\128\185")});
	Credits:Spacer(10);
	Credits:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\89\9\219", "\190\55\56\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\161\48\17\18\231\179\101\172\46\23\3\247", "\147\54\207\92\126\115\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\48\57\113\15\127\14\58", "\30\109\81\85\29\109")]=function()
		ScreenGui:Destroy();
		FloatGui:Destroy();
	end});
	Intro();
	return WindowAPI;
end;
return Library;
