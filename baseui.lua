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
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\116\114\44\28\99\216\100", "\35\200\29\28\72\115\20\154")]=Color3.fromRGB(35, 32, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\182\213\218\143\45\38\59\152", "\84\121\223\177\191\237\76")]=Color3.fromRGB(28, 25, 35),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\66\204\173\24\119", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(45, 42, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\65\3\32\71\86\51\49\72\80\20", "\69\41\34\96")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\192\212\15\12\63\153\205\211", "\75\220\163\183\106\98")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\191\147\35", "\185\98\218\235\87")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242\250\171\217\55", "\202\171\92\71\134\190")]=Color3.fromRGB(160, 155, 175),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\200\58\129\45\196\62", "\232\73\161\76")]=Color3.fromRGB(55, 50, 70),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\204\65\94\27\168\202", "\126\219\185\34\61")]=Color3.fromRGB(60, 210, 100)};
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
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\19\7\140\193\141\61\0\164\207\178\61\10", "\202\88\110\226\166")) then
		CoreGui.KingGenFixed:Destroy();
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\12\144\242\207\205\40\151\254", "\170\163\111\226\151"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\58\57\188\63\105\50\39\55\57\170\61\74", "\73\113\80\210\88\46\87");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 1000;
	ScreenGui.ResetOnSpawn = false;
	local UIScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\5\254\17\230\141\41", "\135\225\76\173\114"), ScreenGui);
	UIScale.Scale = (IsMobile and 1.1) or 1;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\255\185\189\169", "\199\122\141\216\208\204\221"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\128\220\25\254\94\228\172\208\21", "\150\205\189\112\144\24");
	MainFrame.Size = UDim2.new(0, 580, 0, 360);
	MainFrame.Position = UDim2.new(0.5, -290, 0.5, -180);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ClipsDescendants = false;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\173\156\67\22\134\20\2", "\112\69\228\223\44\100\232\113"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 10);
	local Shadow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\18\6\212\179\80\135\214\26\11", "\230\180\127\103\179\214\28"), MainFrame);
	Shadow.ZIndex = -1;
	Shadow.Position = UDim2.new(0, -20, 0, -20);
	Shadow.Size = UDim2.new(1, 40, 1, 40);
	Shadow.BackgroundTransparency = 1;
	Shadow.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\158\7\71\71\247\82\229\152\12\91\28\171\14\182\220\84\11\20\178\16\185\213\86", "\128\236\101\63\38\132\33");
	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0);
	Shadow.ImageTransparency = 0.5;
	Shadow.ScaleType = Enum.ScaleType.Slice;
	Shadow.SliceCenter = Rect.new(49, 49, 450, 450);
	local Sidebar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\187\16\73\179", "\175\204\201\113\36\214\139"), MainFrame);
	Sidebar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\116\197\49\217\6\70\222", "\100\39\172\85\188");
	Sidebar.Size = UDim2.new(0, 150, 1, 0);
	Sidebar.BackgroundColor3 = Theme.SidebarBG;
	Sidebar.BorderSizePixel = 0;
	local SidebarCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\81\154\143\33\163\125\171", "\83\205\24\217\224"), Sidebar);
	SidebarCorner.CornerRadius = UDim.new(0, 10);
	local SidebarFix = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\215\204\48\227", "\93\134\165\173"), Sidebar);
	SidebarFix.Size = UDim2.new(0, 10, 1, 0);
	SidebarFix.Position = UDim2.new(1, -10, 0, 0);
	SidebarFix.BackgroundColor3 = Theme.SidebarBG;
	SidebarFix.BorderSizePixel = 0;
	local LogoContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\224\192\207\63", "\30\222\146\161\162\90\174\210"), Sidebar);
	LogoContainer.Size = UDim2.new(1, 0, 0, 60);
	LogoContainer.BackgroundTransparency = 1;
	local Logo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\67\113\13\224\98\113\8\224\66", "\106\133\46\16"), LogoContainer);
	Logo.Size = UDim2.new(0, 32, 0, 32);
	Logo.Position = UDim2.new(0, 15, 0, 14);
	Logo.Image = KINGHUB_DECAL_ID;
	Logo.BackgroundTransparency = 1;
	local Title = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\37\107\232\118\65\90\37\127", "\32\56\64\19\156\58"), LogoContainer);
	Title.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\113\193\235\81\26\213\133\84", "\224\58\168\133\54\58\146");
	Title.Size = UDim2.new(0, 100, 0, 20);
	Title.Position = UDim2.new(0, 55, 0, 12);
	Title.Font = Enum.Font.GothamBold;
	Title.TextColor3 = Theme.Text;
	Title.TextSize = 14;
	Title.TextXAlignment = Enum.TextXAlignment.Left;
	Title.BackgroundTransparency = 1;
	local SubTitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233\89\135\133\14\85", "\107\57\54\43\157\21\230\231"), LogoContainer);
	SubTitle.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\238\133\24\227\188\206\220\218\135\81\195\224", "\175\187\235\113\149\217\188");
	SubTitle.Size = UDim2.new(0, 100, 0, 15);
	SubTitle.Position = UDim2.new(0, 55, 0, 32);
	SubTitle.Font = Enum.Font.Gotham;
	SubTitle.TextColor3 = Theme.AccentStart;
	SubTitle.TextSize = 11;
	SubTitle.TextXAlignment = Enum.TextXAlignment.Left;
	SubTitle.BackgroundTransparency = 1;
	local TabHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\172\147\67\239\117\113\50\168\167\94\226\116\125", "\24\92\207\225\44\131\25"), Sidebar);
	TabHolder.Size = UDim2.new(1, 0, 1, -60);
	TabHolder.Position = UDim2.new(0, 0, 0, 60);
	TabHolder.BackgroundTransparency = 1;
	TabHolder.ScrollBarThickness = 0;
	local TabList = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\250\148\69\8\105\103\210\161\67\14\105", "\29\43\179\216\44\123"), TabHolder);
	TabList.SortOrder = Enum.SortOrder.LayoutOrder;
	TabList.Padding = UDim.new(0, 4);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\240\16\77\185\221\41\66\186", "\44\221\185\64"), TabHolder).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\120\94\119\5\238\70\88", "\19\97\135\40\63"), TabHolder).PaddingLeft = UDim.new(0, 10);
	local PageArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\78\50\54\42", "\81\206\60\83\91\79"), MainFrame);
	PageArea.Size = UDim2.new(1, -150, 1, 0);
	PageArea.Position = UDim2.new(0, 150, 0, 0);
	PageArea.BackgroundTransparency = 1;
	local TopBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\185\209\127\42", "\196\46\203\176\18\79\163\45"), PageArea);
	TopBar.Size = UDim2.new(1, 0, 0, 50);
	TopBar.BackgroundTransparency = 1;
	MakeDraggable(TopBar, MainFrame);
	local PageTitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\39\102\10\8\250\237\189\46", "\143\216\66\30\126\68\155"), TopBar);
	PageTitle.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\153\205\25\223\204\173\208\242", "\129\202\168\109\171\165\195\183");
	PageTitle.Size = UDim2.new(1, -40, 1, 0);
	PageTitle.Position = UDim2.new(0, 20, 0, 0);
	PageTitle.Font = Enum.Font.GothamBold;
	PageTitle.TextColor3 = Theme.Text;
	PageTitle.TextSize = 18;
	PageTitle.TextXAlignment = Enum.TextXAlignment.Left;
	PageTitle.BackgroundTransparency = 1;
	local CloseBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\47\204\252\1\242\54\87\57", "\134\66\56\87\184\190\116"), TopBar);
	CloseBtn.Size = UDim2.new(0, 30, 0, 30);
	CloseBtn.Position = UDim2.new(1, -35, 0.5, -15);
	CloseBtn.Text = "×";
	CloseBtn.Font = Enum.Font.Gotham;
	CloseBtn.TextColor3 = Theme.TextDark;
	CloseBtn.TextSize = 24;
	CloseBtn.BackgroundTransparency = 1;
	local FloatGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\50\27\190\28\229\6\32\53", "\85\92\81\105\219\121\139\65"), CoreGui);
	FloatGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\214\186\94\66\90\211\242\178\68", "\191\157\211\48\37\28");
	FloatGui.DisplayOrder = 1001;
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
	local Tabs = {};
	local WindowAPI = {};
	WindowAPI.Tab = function(self, name)
		local Tab = {};
		local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\43\172\66\111\78\58\160\89\67", "\45\59\78\212\54"), TabHolder);
		Btn.Size = UDim2.new(1, -10, 0, 32);
		Btn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\80\22\195\203\198\110\237", "\144\112\54\227\235\230\78\205") .. name;
		Btn.Font = Enum.Font.GothamSemibold;
		Btn.TextColor3 = Theme.TextDark;
		Btn.TextSize = 13;
		Btn.TextXAlignment = Enum.TextXAlignment.Left;
		Btn.BackgroundColor3 = Theme.SidebarBG;
		Btn.AutoButtonColor = false;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\1\44\243\194\85\182\58", "\59\211\72\111\156\176"), Btn).CornerRadius = UDim.new(0, 6);
		local Ind = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\149\226\32\75", "\77\46\231\131"), Btn);
		Ind.Size = UDim2.new(0, 3, 0.6, 0);
		Ind.Position = UDim2.new(0, 0, 0.2, 0);
		Ind.BackgroundColor3 = Theme.AccentStart;
		Ind.Visible = false;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\125\149\79\168\90\179\82", "\32\218\52\214"), Ind).CornerRadius = UDim.new(0, 4);
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\20\35\167\253\188\76\84\73\49\35\169\252\181", "\58\46\119\81\200\145\208\37"), PageArea);
		Page.Size = UDim2.new(1, 0, 1, -50);
		Page.Position = UDim2.new(0, 0, 0, 50);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 2;
		Page.ScrollBarImageColor3 = Theme.AccentStart;
		Page.Visible = false;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\165\28\165\186\169\26\42\149\63\185\189", "\86\75\236\80\204\201\221"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\71\104\71\132\250\143\123\79\112", "\235\18\33\23\229\158"), Page).PaddingTop = UDim.new(0, 5);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\147\241\186\84\190\200\181\87", "\219\48\218\161"), Page).PaddingLeft = UDim.new(0, 20);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\76\72\223\75\233\234\118", "\128\132\17\28\41\187\47"), Page).PaddingRight = UDim.new(0, 20);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\27\54\59\89\5\59\8\61", "\61\97\82\102\90"), Page).PaddingBottom = UDim.new(0, 20);
		local function Activate()
			for _, t in pairs(Tabs) do
				t.Btn.TextColor3 = Theme.TextDark;
				t.Btn.BackgroundColor3 = Theme.SidebarBG;
				t.Ind.Visible = false;
				t.Page.Visible = false;
			end
			Btn.TextColor3 = Theme.Text;
			Btn.BackgroundColor3 = Theme.ItemBG;
			Ind.Visible = true;
			Page.Visible = true;
			PageTitle.Text = name;
		end
		Btn.MouseButton1Click:Connect(Activate);
		table.insert(Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\58\165", "\105\204\78\203\43\167\55\126")]=Btn,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\164\39", "\49\197\202\67\126\115\100\167")]=Ind,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\90\216\44", "\62\87\59\191\73\224\54")]=Page});
		if (#Tabs == 1) then
			Activate();
		end
		Tab.Toggle = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or false;
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\16\251\196\226", "\169\135\98\154"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 36);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\94\7\91\239\61\205\217", "\168\171\23\68\52\157\83"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\116\237\185\9\44\133\241\125", "\231\148\17\149\205\69\77"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -50, 1, 0);
			Label.Position = UDim2.new(0, 12, 0, 0);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextColor3 = Theme.Text;
			Label.TextSize = 13;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Switch = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\162\223\239\117\234\148\179\200\245", "\159\224\199\167\155\55"), Frame);
			Switch.Size = UDim2.new(0, 36, 0, 20);
			Switch.Position = UDim2.new(1, -45, 0.5, -10);
			Switch.BackgroundColor3 = (default and Theme.AccentStart) or Color3.fromRGB(60, 60, 60);
			Switch.Text = "";
			Switch.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\218\31\221\229\253\57\192", "\178\151\147\92"), Switch).CornerRadius = UDim.new(1, 0);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\239\77\63\23", "\26\236\157\44\82\114\44"), Switch);
			Knob.Size = UDim2.new(0, 16, 0, 16);
			Knob.Position = (default and UDim2.new(1, -18, 0.5, -8)) or UDim2.new(0, 2, 0.5, -8);
			Knob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\7\246\84\56\32\208\73", "\59\74\78\181"), Knob).CornerRadius = UDim.new(1, 0);
			local function Update(val)
				Library.Flags[tFlag] = val;
				TweenService:Create(Switch, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\208\89\81\180\55\222\79\84\183\6\222\86\85\161\118", "\211\69\177\58\58")]=((val and Theme.AccentStart) or Color3.fromRGB(60, 60, 60))}):Play();
				TweenService:Create(Knob, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\234\106\252\253\194\184\235", "\171\215\133\25\149\137")]=((val and UDim2.new(1, -18, 0.5, -8)) or UDim2.new(0, 2, 0.5, -8))}):Play();
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
				Update(not Library.Flags[tFlag]);
			end);
			if default then
				Update(true);
			end
		end;
		Tab.Slider = function(self, options)
			local sFlag = options.Flag;
			local min, max = options.Min, options.Max;
			local default = Library.Flags[sFlag] or options.Default or min;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\218\51\247\234", "\34\129\168\82\154\143\80\156"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\155\16\4\90\64\140\151", "\233\229\210\83\107\40\46"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\245\71\42\194\41\192\64\55\218", "\101\161\34\82\182"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 5);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextColor3 = Theme.Text;
			Label.TextSize = 13;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Val = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\8\65\234\247\227\128\43\228", "\78\136\109\57\158\187\130\226"), Frame);
			Val.Text = tostring(default);
			Val.Size = UDim2.new(0, 40, 0, 20);
			Val.Position = UDim2.new(1, -50, 0, 5);
			Val.Font = Enum.Font.Gotham;
			Val.TextColor3 = Theme.AccentStart;
			Val.TextSize = 13;
			Val.BackgroundTransparency = 1;
			local Track = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\45\248\252\59", "\145\94\95\153"), Frame);
			Track.Size = UDim2.new(1, -24, 0, 4);
			Track.Position = UDim2.new(0, 12, 0, 32);
			Track.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\228\55\218\92\185\248\223", "\215\157\173\116\181\46"), Track).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\166\138\255\223", "\186\85\212\235\146"), Track);
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\168\53\241\43\224\93\208", "\56\162\225\118\158\89\142"), Fill).CornerRadius = UDim.new(1, 0);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\23\193\162\39", "\184\60\101\160\207\66"), Track);
			Knob.Size = UDim2.new(0, 12, 0, 12);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\171\95\179\35\140\121\174", "\220\81\226\28"), Knob).CornerRadius = UDim.new(1, 0);
			local function Update(input)
				local s = math.clamp((input.Position.X - Track.AbsolutePosition.X) / Track.AbsoluteSize.X, 0, 1);
				local v = math.floor(min + ((max - min) * s));
				Library.Flags[sFlag] = v;
				Val.Text = tostring(v);
				Fill.Size = UDim2.new(s, 0, 1, 0);
				Knob.Position = UDim2.new(s, 0, 0.5, 0);
				pcall(options.Callback, v);
				Library:Save();
			end
			local p = (default - min) / (max - min);
			Fill.Size = UDim2.new(p, 0, 1, 0);
			Knob.Position = UDim2.new(p, 0, 0.5, 0);
			local Dragging = false;
			Frame.InputBegan:Connect(function(i)
				if ((i.UserInputType == Enum.UserInputType.MouseButton1) or (i.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = true;
					Update(i);
				end
			end);
			UserInputService.InputChanged:Connect(function(i)
				if (Dragging and ((i.UserInputType == Enum.UserInputType.MouseMovement) or (i.UserInputType == Enum.UserInputType.Touch))) then
					Update(i);
				end
			end);
			UserInputService.InputEnded:Connect(function(i)
				if ((i.UserInputType == Enum.UserInputType.MouseButton1) or (i.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = false;
				end
			end);
		end;
		Tab.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\199\131\246\239", "\167\115\181\226\155\138"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 56);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\11\196\83\105\127\195\240", "\166\130\66\135\60\27\17"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\112\79\214\97\28\69\72\203\121", "\80\36\42\174\21"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 5);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextColor3 = Theme.Text;
			Label.TextSize = 13;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\21\47\110\108\5\35\110\65\30", "\26\46\112\87"), Frame);
			Box.Size = UDim2.new(1, -24, 0, 26);
			Box.Position = UDim2.new(0, 12, 0, 24);
			Box.BackgroundColor3 = Theme.WindowBG;
			Box.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\249\99", "\212\217\67\203\20\223\223\37") .. default;
			Box.TextColor3 = Theme.TextDark;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 12;
			Box.TextXAlignment = Enum.TextXAlignment.Left;
			Box.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\139\221\168\131\173\192", "\178\218\237\200"), Box).CornerRadius = UDim.new(0, 4);
			local Icon = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\176\254\196\154\180\228\213\186", "\176\214\213\134"), Box);
			Icon.Text = "v";
			Icon.Size = UDim2.new(0, 20, 1, 0);
			Icon.Position = UDim2.new(1, -20, 0, 0);
			Icon.BackgroundTransparency = 1;
			Icon.TextColor3 = Theme.TextDark;
			local DropList = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\174\164\219\164\90\80\250\170\144\198\169\91\92", "\57\148\205\214\180\200\54"), ScreenGui);
			DropList.Visible = false;
			DropList.BackgroundColor3 = Theme.SidebarBG;
			DropList.BorderSizePixel = 0;
			DropList.ZIndex = 2000;
			DropList.ScrollBarThickness = 2;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\212\22\59\100\28\248\39", "\22\114\157\85\84"), DropList).CornerRadius = UDim.new(0, 6);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\32\208\79\249\163\193", "\200\164\171\115\164\61\150"), DropList).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\221\48\81\145\177\255\6", "\227\222\148\99\37"), DropList).Thickness = 1;
			local ListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\123\126\255\234\39\126\83\239\246\38\70", "\153\83\50\50\150"), DropList);
			ListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			local Open = false;
			local function Refresh()
				for _, c in pairs(DropList:GetChildren()) do
					if c:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\105\115\107\8\81\190\89\73\121\125", "\45\61\22\19\124\19\203")) then
						c:Destroy();
					end
				end
				for _, item in ipairs(options.List) do
					local B = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\245\23\21\225\32\101\173\213\29\3", "\217\161\114\109\149\98\16"), DropList);
					B.Size = UDim2.new(1, 0, 0, 25);
					B.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\82\96", "\20\114\64\88\28\220") .. item;
					B.TextColor3 = ((item == Library.Flags[dFlag]) and Theme.AccentStart) or Theme.Text;
					B.BackgroundColor3 = Theme.SidebarBG;
					B.Font = Enum.Font.Gotham;
					B.TextSize = 12;
					B.TextXAlignment = Enum.TextXAlignment.Left;
					B.AutoButtonColor = false;
					B.MouseButton1Click:Connect(function()
						Library.Flags[dFlag] = item;
						Box.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\113\65", "\221\81\97\178\212\152\176") .. item;
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
					DropList.Position = UDim2.new(0, Box.AbsolutePosition.X, 0, Box.AbsolutePosition.Y + Box.AbsoluteSize.Y + 4);
					DropList.Size = UDim2.new(0, Box.AbsoluteSize.X, 0, math.min((#options.List * 25) + 5, 150));
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
		end;
		Tab.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\245\28\246\31", "\122\173\135\125\155"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			local B = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\196\24\173\29\36\220\144\206\14", "\168\228\161\96\217\95\81"), Frame);
			B.Size = UDim2.new(1, 0, 1, 0);
			B.Text = options.Name;
			B.Font = Enum.Font.GothamBold;
			B.TextSize = 13;
			B.TextColor3 = Color3.new(1, 1, 1);
			B.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\248\13\83\61\89\222\195", "\55\187\177\78\60\79"), B).CornerRadius = UDim.new(0, 6);
			local G = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\231\120\249\71\203\137\40\192\75", "\224\77\174\63\139\38\175"), B);
			G.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd);
			G.Transparency = NumberSequence.new(0.3);
			B.MouseButton1Click:Connect(function()
				TweenService:Create(G, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\176\83\89\32\151\81\89\60\129\79\91\55", "\78\228\33\56")]=NumberSequence.new(0)}):Play();
				task.wait(0.1);
				TweenService:Create(G, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\250\108\179\13\150\222\127\160\6\139\205\103", "\229\174\30\210\99")]=NumberSequence.new(0.3)}):Play();
				pcall(options.Callback);
			end);
		end;
		return Tab;
	end;
	local C = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\56\255\131\85\228\41\42", "\89\123\141\230\49\141\93"));
	C:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\112\251\9", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\169\61\102\167\204\6\181\46\112\245\236\79\138\36\113\236", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\8\171\90\191\229\20\162", "\201\98\105\199\54\221\132\119")]=function()
		setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\177\24\151\49\17\111\227\246\8\138\50\1\58\190\189\66\132\38\77\7\164\157\2\182\16\16\97\136\172", "\204\217\108\227\65\98\85"));
	end});
	C:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\194\248\224", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\174\1\32\194\210\224\56\6", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\39\12\204\247\53\37\11", "\149\84\70\96\160")]=function()
		ScreenGui:Destroy();
		FloatGui:Destroy();
	end});
	MainFrame.Size = UDim2.new(0, 0, 0, 0);
	TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\11\15\23\232", "\141\88\102\109")]=UDim2.new(0, 580, 0, 360)}):Play();
	return WindowAPI;
end;
return Library;
