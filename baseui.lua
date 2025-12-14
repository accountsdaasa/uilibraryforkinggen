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
local GuiService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\143\104\117\27\22\102\236\74\171\120", "\35\200\29\28\72\115\20\154"));
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\182\223\219\130\59\22\62", "\84\121\223\177\191\237\76")]=Color3.fromRGB(32, 30, 42),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\95\205\165\56\81\34\227\156", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(24, 22, 32),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\86\5\40\107\101", "\69\41\34\96")]=Color3.fromRGB(48, 44, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\192\212\15\12\63\143\215\214\24\22", "\75\220\163\183\106\98")]=Color3.fromRGB(170, 50, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\185\136\50\215\22\159\133\51", "\185\98\218\235\87")]=Color3.fromRGB(40, 160, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242", "\202\171\92\71\134\190")]=Color3.fromRGB(245, 245, 250),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\196\52\156\13\192\62\131", "\232\73\161\76")]=Color3.fromRGB(140, 135, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\240\113\73\12\180\210\71\126\17\183\214\80", "\126\219\185\34\61")]=Color3.fromRGB(70, 60, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\194\81\101", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(170, 50, 230)};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\157\224\36\204\63\171\61", "\167\214\137\74\171\120\206\83");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\143\245\52\92\237\171\159\190\56\78\247\169", "\199\235\144\82\61\152");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\21\20\161\42\20\5\188\63\14\18\227\100\72\79\233\121\82\71\238\121\85\78\224\124\80\70\238", "\75\103\118\217");
task.spawn(function()
	pcall(function()
		Players.LocalPlayer.Idled:Connect(function()
			VirtualUser:CaptureController();
			VirtualUser:ClickButton2(Vector2.new(0, 0));
		end);
	end);
end);
local function SendNotification(title, text, duration)
	pcall(function()
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\244\64\113\6\173\27\213\115\101\29", "\126\167\52\16\116\217")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\251\43\46\132\154\22\232\193\40\41\131\181\13\245\199\32", "\156\168\78\64\224\212\121"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\231\177\194\2", "\174\103\142\197")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44", "\152\54\72\63\88\69\62")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\209\252\93\192\205\225\82", "\60\180\164\142")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\76\95\7\37\34", "\114\56\62\101\73\71\141")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\147\224\213\195\248\206\222\202", "\164\216\137\187"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\249\239\63\181\230\217\14\220", "\107\178\134\81\210\198\158"), tostring(options), 3);
	end
end;
Library.Save = function(self)
	if (writefile and makefolder) then
		if not isfolder(self.FolderName) then
			makefolder(self.FolderName);
		end
		local ok, json = pcall(function()
			return HttpService:JSONEncode(self.Flags);
		end);
		if (ok and json) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\44\15\128\202\175", "\202\88\110\226\166"))) then
				for flag, value in pairs(decoded) do
					self.Flags[flag] = value;
				end
			end
		end
	end
end;
local function MakeDraggable(topbarobject, object, saveKey)
	local Dragging = nil;
	local DragInput = nil;
	local DragStart = nil;
	local StartPosition = nil;
	topbarobject.InputBegan:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			Dragging = true;
			DragStart = input.Position;
			StartPosition = object.Position;
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					Dragging = false;
					if saveKey then
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\252\55\189\196\201\194\3\135", "\170\163\111\226\151")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\46\8\141\23\72\49\58\20\36", "\73\113\80\210\88\46\87")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\190\21\242\33\228\128\32\200", "\135\225\76\173\114")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\37\212\135\159\170\187\180\31\249", "\199\122\141\216\208\204\221")] = object.Position.Y.Offset;
						Library:Save();
					end
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\174\210\30\246\113\241\227\215\3\255\118", "\150\205\189\112\144\24");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\14\141\177\75\35\141\31\37\12", "\112\69\228\223\44\100\232\113")) then
		CoreGui.KingGenUI:Destroy();
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\28\21\214\179\114\161\193\22", "\230\180\127\103\179\214\28"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\167\12\81\65\195\68\238\185\44", "\128\236\101\63\38\132\33");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	ScreenGui.IgnoreGuiInset = true;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\187\16\73\179", "\175\204\201\113\36\214\139"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\106\205\60\210\34\85\205\56\217", "\100\39\172\85\188");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0, 550, 0, 350);
	if (UserInputService.TouchEnabled and not UserInputService.MouseEnabled) then
		MainFrame.Size = UDim2.new(0.6, 0, 0.5, 0);
	end
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\81\154\143\33\163\125\171", "\83\205\24\217\224"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 10);
	local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\236\254\41\244\202\198\56", "\93\134\165\173"), MainFrame);
	MainStroke.Color = Theme.UIStrokeColor;
	MainStroke.Thickness = 1.5;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\219\242\203\32\203\145\113\176\225\213\208\59\199\188\106", "\30\222\146\161\162\90\174\210"), MainFrame);
	sizeConstraint.MinSize = Vector2.new(450, 300);
	sizeConstraint.MaxSize = Vector2.new(800, 600);
	local Sidebar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\92\113\7\224", "\106\133\46\16"), MainFrame);
	Sidebar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\107\41\119\249\88\65\74", "\32\56\64\19\156\58");
	Sidebar.Size = UDim2.new(0, 160, 1, 0);
	Sidebar.BackgroundColor3 = Theme.SidebarBG;
	Sidebar.BorderSizePixel = 0;
	Sidebar.ZIndex = 2;
	local SidebarCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\225\198\89\72\252\133\72", "\224\58\168\133\54\58\146"), Sidebar);
	SidebarCorner.CornerRadius = UDim.new(0, 10);
	local SidebarFix = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\68\74\240\112", "\107\57\54\43\157\21\230\231"), Sidebar);
	SidebarFix.Size = UDim2.new(0, 10, 1, 0);
	SidebarFix.Position = UDim2.new(1, -5, 0, 0);
	SidebarFix.BackgroundColor3 = Theme.SidebarBG;
	SidebarFix.BorderSizePixel = 0;
	SidebarFix.ZIndex = 2;
	local ProfileFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\153\16\248\188", "\175\187\235\113\149\217\188"), Sidebar);
	ProfileFrame.Size = UDim2.new(1, 0, 0, 80);
	ProfileFrame.BackgroundTransparency = 1;
	ProfileFrame.ZIndex = 3;
	local Logo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\162\128\75\230\85\121\62\170\141", "\24\92\207\225\44\131\25"), ProfileFrame);
	Logo.Size = UDim2.new(0, 40, 0, 40);
	Logo.Position = UDim2.new(0, 15, 0, 20);
	Logo.Image = KINGHUB_DECAL_ID;
	Logo.BackgroundTransparency = 1;
	local Title = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\214\160\88\55\124\73\214\180", "\29\43\179\216\44\123"), ProfileFrame);
	Title.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\150\208\46\75\253\254\37\66", "\44\221\185\64");
	Title.Size = UDim2.new(0, 80, 0, 20);
	Title.Position = UDim2.new(0, 65, 0, 22);
	Title.Font = Enum.Font.GothamBold;
	Title.TextSize = 16;
	Title.TextColor3 = Theme.Text;
	Title.BackgroundTransparency = 1;
	Title.TextXAlignment = Enum.TextXAlignment.Left;
	local SubTitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\226\80\75\95\0\229\77\83", "\19\97\135\40\63"), ProfileFrame);
	SubTitle.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\131\93\55\62\111\19\183\28\31\50\53\52\138\89\37", "\81\206\60\83\91\79");
	SubTitle.Size = UDim2.new(0, 80, 0, 15);
	SubTitle.Position = UDim2.new(0, 65, 0, 42);
	SubTitle.Font = Enum.Font.Gotham;
	SubTitle.TextSize = 12;
	SubTitle.TextColor3 = Theme.AccentStart;
	SubTitle.BackgroundTransparency = 1;
	SubTitle.TextXAlignment = Enum.TextXAlignment.Left;
	local TabContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\168\194\125\35\207\68\170\73\141\194\115\34\198", "\196\46\203\176\18\79\163\45"), Sidebar);
	TabContainer.Size = UDim2.new(1, 0, 1, -90);
	TabContainer.Position = UDim2.new(0, 0, 0, 90);
	TabContainer.BackgroundTransparency = 1;
	TabContainer.ScrollBarThickness = 2;
	TabContainer.ZIndex = 3;
	local TabLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\11\82\23\55\239\195\185\59\113\11\48", "\143\216\66\30\126\68\155"), TabContainer);
	TabLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabLayout.Padding = UDim.new(0, 5);
	local TabPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\225\61\202\193\167\222\239\173", "\129\202\168\109\171\165\195\183"), TabContainer);
	TabPadding.PaddingLeft = UDim.new(0, 10);
	TabPadding.PaddingTop = UDim.new(0, 10);
	local ContentArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\74\54\213\219", "\134\66\56\87\184\190\116"), MainFrame);
	ContentArea.Size = UDim2.new(1, -160, 1, 0);
	ContentArea.Position = UDim2.new(0, 160, 0, 0);
	ContentArea.BackgroundTransparency = 1;
	ContentArea.ClipsDescendants = true;
	local DragBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\35\8\182\28", "\85\92\81\105\219\121\139\65"), MainFrame);
	DragBar.Size = UDim2.new(1, 0, 0, 40);
	DragBar.BackgroundTransparency = 1;
	DragBar.ZIndex = 100;
	MakeDraggable(DragBar, MainFrame);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\161\81\72\121", "\191\157\211\48\37\28"), ContentArea);
	PagesContainer.Size = UDim2.new(1, 0, 1, -50);
	PagesContainer.Position = UDim2.new(0, 0, 0, 50);
	PagesContainer.BackgroundTransparency = 1;
	local PageTitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8\22\222\29\241\16", "\90\191\127\148\124"), ContentArea);
	PageTitle.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\75\130\58\3\113\137\41", "\119\24\231\78");
	PageTitle.Size = UDim2.new(1, -40, 0, 50);
	PageTitle.Position = UDim2.new(0, 20, 0, 0);
	PageTitle.Font = Enum.Font.GothamBold;
	PageTitle.TextSize = 18;
	PageTitle.TextColor3 = Theme.Text;
	PageTitle.BackgroundTransparency = 1;
	PageTitle.TextXAlignment = Enum.TextXAlignment.Left;
	local CloseBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\182\40\189\94\254\85\5\150\34\171", "\113\226\77\197\42\188\32"), ContentArea);
	CloseBtn.Size = UDim2.new(0, 30, 0, 30);
	CloseBtn.Position = UDim2.new(1, -35, 0, 10);
	CloseBtn.Text = "×";
	CloseBtn.Font = Enum.Font.Gotham;
	CloseBtn.TextSize = 24;
	CloseBtn.TextColor3 = Theme.TextDark;
	CloseBtn.BackgroundTransparency = 1;
	CloseBtn.Selectable = true;
	CloseBtn.MouseButton1Click:Connect(function()
		ScreenGui:Destroy();
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\21\230\176\63\24\211\160\51", "\213\90\118\148"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\112\12\161\66\89\84\32\147\67\68", "\45\59\78\212\54");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\91\130\140\131\12\184\228\4\89\141", "\144\112\54\227\235\230\78\205"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 60, 0, 60);
	KBtn.Position = UDim2.new(0.9, -70, 0.1, 0);
	KBtn.Visible = false;
	KBtn.Selectable = true;
	MakeDraggable(KBtn, KBtn);
	KBtn.MouseButton1Click:Connect(function()
		MainFrame.Visible = true;
		KBtn.Visible = false;
	end);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	WindowAPI.Tab = function(self, name)
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\135\45\23\232\242\78\167\60\0\242", "\59\211\72\111\156\176"), TabContainer);
		TabBtn.Size = UDim2.new(1, -20, 0, 35);
		TabBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\14\199\163", "\77\46\231\131") .. name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 14;
		TabBtn.TextColor3 = Theme.TextDark;
		TabBtn.BackgroundColor3 = Theme.SidebarBG;
		TabBtn.AutoButtonColor = false;
		TabBtn.TextXAlignment = Enum.TextXAlignment.Left;
		TabBtn.Selectable = true;
		local TabCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\125\149\79\168\90\179\82", "\32\218\52\214"), TabBtn);
		TabCorner.CornerRadius = UDim.new(0, 6);
		local TabIndicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\5\48\165\244", "\58\46\119\81\200\145\208\37"), TabBtn);
		TabIndicator.Size = UDim2.new(0, 3, 0.6, 0);
		TabIndicator.Position = UDim2.new(0, 0, 0.2, 0);
		TabIndicator.BackgroundColor3 = Theme.AccentStart;
		TabIndicator.BorderSizePixel = 0;
		TabIndicator.Visible = false;
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\143\34\163\165\177\63\37\139\22\190\168\176\51", "\86\75\236\80\204\201\221"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\77\113\118\130\251", "\235\18\33\23\229\158");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentStart;
		Page.Visible = false;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\147\237\178\67\174\237\186\73\181\212\175", "\219\48\218\161"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePad = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\76\72\223\75\233\234\118", "\128\132\17\28\41\187\47"), Page);
		PagePad.PaddingLeft = UDim.new(0, 20);
		PagePad.PaddingRight = UDim.new(0, 20);
		PagePad.PaddingTop = UDim.new(0, 10);
		PagePad.PaddingBottom = UDim.new(0, 10);
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\35\38\8", "\61\97\82\102\90")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\32\175\66\196\86\10\6\190", "\105\204\78\203\43\167\55\126")]=TabIndicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\171\36\27", "\49\197\202\67\126\115\100\167")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\25\90\210\44", "\62\87\59\191\73\224\54")]=name});
		local function UpdateTabs()
			for _, v in pairs(TabButtons) do
				if (v.Name == name) then
					v.Btn.TextColor3 = Theme.Text;
					v.Indicator.Visible = true;
					v.Page.Visible = true;
					PageTitle.Text = name;
					TweenService:Create(v.Btn, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\3\249\194\224\16\245\220\233\6\217\198\235\13\232\154", "\169\135\98\154")]=Color3.fromRGB(35, 33, 45)}):Play();
				else
					v.Btn.TextColor3 = Theme.TextDark;
					v.Indicator.Visible = false;
					v.Page.Visible = false;
					TweenService:Create(v.Btn, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\233\118\39\95\250\33\199\222\121\32\119\242\63\199\217\36", "\168\171\23\68\52\157\83")]=Theme.SidebarBG}):Play();
				end
			end
		end
		TabBtn.MouseButton1Click:Connect(UpdateTabs);
		if FirstTab then
			FirstTab = false;
			UpdateTabs();
		end
		local Elements = {};
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\99\244\160\32", "\231\148\17\149\205\69\77"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundTransparency = 1;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\162\223\239\123\254\130\162\203", "\159\224\199\167\155\55"), Frame);
			Label.Text = options.Name;
			Label.Font = Enum.Font.GothamBold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			local DropBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\246\36\198\213\230\40\198\248\253", "\178\151\147\92"), Frame);
			DropBtn.Size = UDim2.new(1, 0, 0, 32);
			DropBtn.Position = UDim2.new(0, 0, 0, 24);
			DropBtn.BackgroundColor3 = Theme.ItemBG;
			DropBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\204\189", "\26\236\157\44\82\114\44") .. default;
			DropBtn.TextColor3 = Theme.Text;
			DropBtn.Font = Enum.Font.Gotham;
			DropBtn.TextSize = 13;
			DropBtn.TextXAlignment = Enum.TextXAlignment.Left;
			DropBtn.AutoButtonColor = false;
			DropBtn.Selectable = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\7\246\84\56\32\208\73", "\59\74\78\181"), DropBtn).CornerRadius = UDim.new(0, 6);
			local Arrow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\212\66\78\159\36\211\95\86", "\211\69\177\58\58"), DropBtn);
			Arrow.Text = "v";
			Arrow.Size = UDim2.new(0, 30, 1, 0);
			Arrow.Position = UDim2.new(1, -30, 0, 0);
			Arrow.BackgroundTransparency = 1;
			Arrow.TextColor3 = Theme.TextDark;
			Arrow.Font = Enum.Font.GothamBold;
			local DropScroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\230\107\250\229\199\190\235\126\211\251\202\186\224", "\171\215\133\25\149\137"), ScreenGui);
			DropScroll.Size = UDim2.new(0, 0, 0, 0);
			DropScroll.BackgroundColor3 = Theme.ItemBG;
			DropScroll.Visible = false;
			DropScroll.BorderSizePixel = 0;
			DropScroll.ZIndex = 105;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\225\17\245\253\62\249\80", "\34\129\168\82\154\143\80\156"), DropScroll).CornerRadius = UDim.new(0, 6);
			local DropLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\155\31\2\91\90\165\132\171\60\30\92", "\233\229\210\83\107\40\46"), DropScroll);
			DropLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateDropdown()
				for _, child in pairs(DropScroll:GetChildren()) do
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\245\71\42\194\39\212\86\38\217\11", "\101\161\34\82\182")) then
						child:Destroy();
					end
				end
				for _, item in pairs(options.List) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\8\65\234\249\247\150\58\231\3", "\78\136\109\57\158\187\130\226"), DropScroll);
					ItemBtn.Size = UDim2.new(1, 0, 0, 30);
					ItemBtn.BackgroundTransparency = 1;
					ItemBtn.Text = item;
					ItemBtn.TextColor3 = Theme.Text;
					ItemBtn.Font = Enum.Font.Gotham;
					ItemBtn.TextSize = 13;
					ItemBtn.Selectable = true;
					ItemBtn.MouseButton1Click:Connect(function()
						Library.Flags[dFlag] = item;
						DropBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\126\127", "\145\94\95\153") .. item;
						pcall(options.Callback, item);
						DropScroll.Visible = false;
						Library:Save();
					end);
				end
				DropScroll.CanvasSize = UDim2.new(0, 0, 0, #options.List * 30);
			end
			UpdateDropdown();
			local Open = false;
			DropBtn.MouseButton1Click:Connect(function()
				Open = not Open;
				DropScroll.Visible = Open;
				if Open then
					local absPos = DropBtn.AbsolutePosition;
					local absSize = DropBtn.AbsoluteSize;
					DropScroll.Position = UDim2.new(0, absPos.X, 0, absPos.Y + absSize.Y + 4);
					DropScroll.Size = UDim2.new(0, absSize.X, 0, math.min(#options.List * 30, 150));
				end
			end);
			UserInputService.InputBegan:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					if (Open and DropScroll.Visible) then
						local pos = input.Position;
						local dPos = DropScroll.AbsolutePosition;
						local dSize = DropScroll.AbsoluteSize;
						if ((pos.X < dPos.X) or (pos.X > (dPos.X + dSize.X)) or (pos.Y < dPos.Y) or (pos.Y > (dPos.Y + dSize.Y))) then
							Open = false;
							DropScroll.Visible = false;
						end
					end
				end
			end);
			return {[LUAOBFUSACTOR_DECRYPT_STR_0("\207\200\18\199\75\164\245", "\215\157\173\116\181\46")]=function(newList)
				options.List = newList;
				UpdateDropdown();
			end};
		end;
		Elements.Slider = function(self, options)
			local sFlag = options.Flag;
			local min, max = options.Min, options.Max;
			local default = Library.Flags[sFlag] or options.Default or min;
			Library.Flags[sFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\166\138\255\223", "\186\85\212\235\146"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundTransparency = 1;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\132\14\234\21\239\90\199\141", "\56\162\225\118\158\89\142"), Frame);
			Label.Text = options.Name;
			Label.Font = Enum.Font.GothamBold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.Size = UDim2.new(1, -30, 0, 20);
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			local ValueLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\0\216\187\14\217\94\0\204", "\184\60\101\160\207\66"), Frame);
			ValueLabel.Text = tostring(default);
			ValueLabel.Font = Enum.Font.Gotham;
			ValueLabel.TextSize = 13;
			ValueLabel.TextColor3 = Theme.AccentStart;
			ValueLabel.Size = UDim2.new(0, 30, 0, 20);
			ValueLabel.Position = UDim2.new(1, -30, 0, 0);
			ValueLabel.BackgroundTransparency = 1;
			ValueLabel.TextXAlignment = Enum.TextXAlignment.Right;
			local SliderBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\125\177\52", "\220\81\226\28"), Frame);
			SliderBG.Size = UDim2.new(1, 0, 0, 6);
			SliderBG.Position = UDim2.new(0, 0, 0, 35);
			SliderBG.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\252\161\244\248\201\22\199", "\167\115\181\226\155\138"), SliderBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\48\230\81\126", "\166\130\66\135\60\27\17"), SliderBG);
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\99\237\122\34\74\79\220", "\80\36\42\174\21"), Fill).CornerRadius = UDim.new(1, 0);
			local Gradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\57\16\104\79\20\62\127\64\4", "\26\46\112\87"), Fill);
			Gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\49\170\121\186", "\212\217\67\203\20\223\223\37"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.Position = UDim2.new(1, -7, 0.5, -7);
			Knob.BackgroundColor3 = Color3.new(1, 1, 1);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\139\221\168\131\173\192", "\178\218\237\200"), Knob).CornerRadius = UDim.new(1, 0);
			local Interact = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\176\254\196\148\160\242\196\185\187", "\176\214\213\134"), SliderBG);
			Interact.Size = UDim2.new(1, 0, 1, 0);
			Interact.BackgroundTransparency = 1;
			Interact.Text = "";
			Interact.Selectable = true;
			local function Update(input)
				local SizeX = math.clamp((input.Position.X - SliderBG.AbsolutePosition.X) / SliderBG.AbsoluteSize.X, 0, 1);
				local Value = math.floor(min + ((max - min) * SizeX));
				Fill.Size = UDim2.new(SizeX, 0, 1, 0);
				ValueLabel.Text = tostring(Value);
				Library.Flags[sFlag] = Value;
				pcall(options.Callback, Value);
				Library:Save();
			end
			local dragging = false;
			Interact.InputBegan:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					dragging = true;
					Update(input);
				end
			end);
			UserInputService.InputChanged:Connect(function(input)
				if (dragging and ((input.UserInputType == Enum.UserInputType.MouseMovement) or (input.UserInputType == Enum.UserInputType.Touch))) then
					Update(input);
				end
			end);
			UserInputService.InputEnded:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					dragging = false;
				end
			end);
			local percent = (default - min) / (max - min);
			Fill.Size = UDim2.new(percent, 0, 1, 0);
		end;
		Elements.Toggle = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or false;
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\191\183\217\173", "\57\148\205\214\180\200\54"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\248\45\32\90\19\255\48\56", "\22\114\157\85\84"), Frame);
			Label.Text = options.Name;
			Label.Font = Enum.Font.GothamBold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.Size = UDim2.new(1, -50, 1, 0);
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			local Toggler = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\206\11\208\127\227\188\208\196\29", "\200\164\171\115\164\61\150"), Frame);
			Toggler.Size = UDim2.new(0, 46, 0, 24);
			Toggler.Position = UDim2.new(1, -46, 0.5, -12);
			Toggler.BackgroundColor3 = Theme.ItemBG;
			Toggler.Text = "";
			Toggler.AutoButtonColor = false;
			Toggler.Selectable = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\221\32\74\145\176\241\17", "\227\222\148\99\37"), Toggler).CornerRadius = UDim.new(1, 0);
			local Circle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\64\83\251\252", "\153\83\50\50\150"), Toggler);
			Circle.Size = UDim2.new(0, 18, 0, 18);
			Circle.Position = UDim2.new(0, 3, 0.5, -9);
			Circle.BackgroundColor3 = Theme.TextDark;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\95\80\19\97\165\72\79", "\45\61\22\19\124\19\203"), Circle).CornerRadius = UDim.new(1, 0);
			local function UpdateState(val)
				if val then
					TweenService:Create(Toggler, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\227\19\14\254\5\98\182\212\28\9\214\13\124\182\211\65", "\217\161\114\109\149\98\16")]=Theme.AccentStart}):Play();
					TweenService:Create(Circle, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\34\47\43\117\168\125\29\46", "\20\114\64\88\28\220")]=UDim2.new(1, -21, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\0\209\191\255\194\178\36\15\214\151\247\220\178\35\82", "\221\81\97\178\212\152\176")]=Color3.new(1, 1, 1)}):Play();
				else
					TweenService:Create(Toggler, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\239\230\30\240\29\223\232\8\245\30\238\232\17\244\8\158", "\122\173\135\125\155")]=Theme.ItemBG}):Play();
					TweenService:Create(Circle, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\180\206\19\176\43\56\199\138", "\168\228\161\96\217\95\81")]=UDim2.new(0, 3, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\208\45\87\40\69\212\196\32\88\12\88\215\222\60\15", "\55\187\177\78\60\79")]=Theme.TextDark}):Play();
				end
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
			Toggler.MouseButton1Click:Connect(function()
				Library.Flags[tFlag] = not Library.Flags[tFlag];
				UpdateState(Library.Flags[tFlag]);
			end);
			UpdateState(default);
		end;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\220\94\230\67", "\224\77\174\63\139\38\175"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 45);
			Frame.BackgroundTransparency = 1;
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\68\64\58\166\84\76\58\139\79", "\78\228\33\56"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, -5);
			Btn.Text = options.Name;
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.TextColor3 = Theme.Text;
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.AutoButtonColor = false;
			Btn.Selectable = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\87\145\12\151\192\123\160", "\229\174\30\210\99"), Btn).CornerRadius = UDim.new(0, 8);
			Btn.MouseButton1Click:Connect(function()
				local ripple = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\255\135\92\232", "\89\123\141\230\49\141\93"), Btn);
				ripple.BackgroundColor3 = Color3.new(1, 1, 1);
				ripple.BackgroundTransparency = 0.8;
				ripple.Size = UDim2.new(0, 0, 0, 0);
				ripple.Position = UDim2.new(0.5, 0, 0.5, 0);
				ripple.AnchorPoint = Vector2.new(0.5, 0.5);
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\88\213\3\2\68\246\99", "\42\147\17\150\108\112"), ripple).CornerRadius = UDim.new(1, 0);
				TweenService:Create(ripple, TweenInfo.new(0.4), {[LUAOBFUSACTOR_DECRYPT_STR_0("\60\175\55\122", "\136\111\198\77\31\135")]=UDim2.new(1.5, 0, 2.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\8\164\93\186\246\24\188\12\13\147\68\188\234\4\185\3\27\162\88\190\253", "\201\98\105\199\54\221\132\119")]=1}):Play();
				task.delay(0.4, function()
					ripple:Destroy();
				end);
				pcall(options.Callback);
			end);
		end;
		return Elements;
	end;
	local Credits = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\154\30\134\37\11\33\191", "\204\217\108\227\65\98\85"));
	Credits:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\194\248\224", "\160\62\163\149\133\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\245\175\29\54\131\242\169\30\44\204\196\164\77\3\202\216\171", "\163\182\192\109\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\39\12\204\247\53\37\11", "\149\84\70\96\160")]=function()
		if setclipboard then
			setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\48\18\25\253\43\92\66\162\60\15\30\238\55\20\9\163\63\1\66\223\48\34\3\216\9\20\89\201\45", "\141\88\102\109"));
		end
	end});
	return WindowAPI;
end;
return Library;
