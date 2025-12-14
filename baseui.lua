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
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\116\114\44\28\99\216\100", "\35\200\29\28\72\115\20\154")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\182\213\218\143\45\38\59\152", "\84\121\223\177\191\237\76")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\66\204\173\24\119", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\86\5\40\97\77\22\32\91", "\69\41\34\96")]=Color3.fromRGB(75, 65, 95),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\192\212\15\12\63\143\215\214\24\22", "\75\220\163\183\106\98")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\185\136\50\215\22\159\133\51", "\185\98\218\235\87")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242", "\202\171\92\71\134\190")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\196\52\156\13\192\62\131", "\232\73\161\76")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\240\113\73\12\180\210\71\126\17\183\214\80", "\126\219\185\34\61")]=Color3.fromRGB(90, 80, 115),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\199\72\123\122\114\225", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(55, 50, 70)};
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
local function SendNotification(title, text)
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\244\64\113\6\173\27\213\115\101\29", "\126\167\52\16\116\217")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\251\43\46\132\154\22\232\193\40\41\131\181\13\245\199\32", "\156\168\78\64\224\212\121"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\231\177\194\2", "\174\103\142\197")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44", "\152\54\72\63\88\69\62")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\209\252\93\192\205\225\82", "\60\180\164\142")]=3,[LUAOBFUSACTOR_DECRYPT_STR_0("\113\93\10\39", "\114\56\62\101\73\71\141")]=KINGHUB_DECAL_ID});
end
Library.Notify = function(self, options)
	SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\147\224\213\195\248\206\222\202", "\164\216\137\187"), ((type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\198\231\51\190\163", "\107\178\134\81\210\198\158")) and options.Text) or tostring(options));
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\59\1\140\192\163\63\64\136\213\165\54", "\202\88\110\226\166");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\232\6\140\240\237\198\1\183\249\195\213\10\144\228\203\207", "\170\163\111\226\151")) then
		CoreGui.KingGenUniversal:Destroy();
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\51\160\61\75\57\14\4\57", "\73\113\80\210\88\46\87"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\170\37\195\21\192\132\34\248\28\238\151\41\223\1\230\141", "\135\225\76\173\114");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	local UIScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\196\139\179\173\177\162", "\199\122\141\216\208\204\221"), ScreenGui);
	UIScale.Scale = (IsMobile and 1.1) or 1;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\207\17\253\125", "\150\205\189\112\144\24"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\8\133\182\66\34\154\16\29\32", "\112\69\228\223\44\100\232\113");
	MainFrame.Size = UDim2.new(0, 600, 0, 380);
	MainFrame.Position = UDim2.new(0.5, -300, 0.5, -190);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ClipsDescendants = false;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\225\54\36\220\164\114\131\198", "\230\180\127\103\179\214\28"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 10);
	local Shadow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\165\8\94\65\225\109\225\142\0\83", "\128\236\101\63\38\132\33"), MainFrame);
	Shadow.ZIndex = -1;
	Shadow.Position = UDim2.new(0, -15, 0, -15);
	Shadow.Size = UDim2.new(1, 30, 1, 30);
	Shadow.BackgroundTransparency = 1;
	Shadow.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\190\171\9\69\165\248\202\184\160\21\30\249\164\153\252\248\69\22\224\186\150\245\250", "\175\204\201\113\36\214\139");
	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0);
	Shadow.ImageTransparency = 0.4;
	Shadow.ScaleType = Enum.ScaleType.Slice;
	Shadow.SliceCenter = Rect.new(49, 49, 450, 450);
	local Sidebar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\222\52\209\1", "\100\39\172\85\188"), MainFrame);
	Sidebar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\158\113\189\133\49\172\106", "\83\205\24\217\224");
	Sidebar.Size = UDim2.new(0, 160, 1, 0);
	Sidebar.BackgroundColor3 = Theme.SidebarBG;
	Sidebar.BorderSizePixel = 0;
	local SidebarCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\236\238\50\244\203\200\47", "\93\134\165\173"), Sidebar);
	SidebarCorner.CornerRadius = UDim.new(0, 10);
	local SidebarFix = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\224\192\207\63", "\30\222\146\161\162\90\174\210"), Sidebar);
	SidebarFix.Size = UDim2.new(0, 10, 1, 0);
	SidebarFix.Position = UDim2.new(1, -10, 0, 0);
	SidebarFix.BackgroundColor3 = Theme.SidebarBG;
	SidebarFix.BorderSizePixel = 0;
	SidebarFix.ZIndex = 1;
	local LogoArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\92\113\7\224", "\106\133\46\16"), Sidebar);
	LogoArea.Size = UDim2.new(1, 0, 0, 70);
	LogoArea.BackgroundTransparency = 1;
	LogoArea.ZIndex = 2;
	local LogoImg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\45\114\251\95\108\89\34\118\240", "\32\56\64\19\156\58"), LogoArea);
	LogoImg.Size = UDim2.new(0, 36, 0, 36);
	LogoImg.Position = UDim2.new(0, 15, 0, 17);
	LogoImg.Image = KINGHUB_DECAL_ID;
	LogoImg.BackgroundColor3 = Theme.WindowBG;
	LogoImg.BorderSizePixel = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\225\198\89\72\252\133\72", "\224\58\168\133\54\58\146"), LogoImg).CornerRadius = UDim.new(1, 0);
	local LogoTitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233\89\135\133\14\85", "\107\57\54\43\157\21\230\231"), LogoArea);
	LogoTitle.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\240\130\31\242\249\251\202\213", "\175\187\235\113\149\217\188");
	LogoTitle.Size = UDim2.new(1, -60, 0, 20);
	LogoTitle.Position = UDim2.new(0, 60, 0, 15);
	LogoTitle.Font = Enum.Font.GothamBold;
	LogoTitle.TextSize = 16;
	LogoTitle.TextColor3 = Theme.Text;
	LogoTitle.TextXAlignment = Enum.TextXAlignment.Left;
	LogoTitle.BackgroundTransparency = 1;
	local LogoSub = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\207\120\122\57\163", "\24\92\207\225\44\131\25"), LogoArea);
	LogoSub.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\126\221\177\90\30\111\88\210\180\12\45\37", "\29\43\179\216\44\123");
	LogoSub.Size = UDim2.new(1, -60, 0, 15);
	LogoSub.Position = UDim2.new(0, 60, 0, 37);
	LogoSub.Font = Enum.Font.Gotham;
	LogoSub.TextSize = 12;
	LogoSub.TextColor3 = Theme.AccentStart;
	LogoSub.TextXAlignment = Enum.TextXAlignment.Left;
	LogoSub.BackgroundTransparency = 1;
	local TabContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\218\50\67\177\213\41\66\186\255\50\77\176\220", "\44\221\185\64"), Sidebar);
	TabContainer.Size = UDim2.new(1, 0, 1, -70);
	TabContainer.Position = UDim2.new(0, 0, 0, 70);
	TabContainer.BackgroundTransparency = 1;
	TabContainer.ScrollBarThickness = 0;
	TabContainer.ZIndex = 2;
	local TabList = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\100\86\96\21\203\73\70\124\20\243", "\19\97\135\40\63"), TabContainer);
	TabList.SortOrder = Enum.SortOrder.LayoutOrder;
	TabList.Padding = UDim.new(0, 5);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\117\3\58\43\53\167\82\52", "\81\206\60\83\91\79"), TabContainer).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\130\224\115\43\199\68\170\73", "\196\46\203\176\18\79\163\45"), TabContainer).PaddingLeft = UDim.new(0, 10);
	local PageContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\48\127\19\33", "\143\216\66\30\126\68\155"), MainFrame);
	PageContainer.Size = UDim2.new(1, -160, 1, 0);
	PageContainer.Position = UDim2.new(0, 160, 0, 0);
	PageContainer.BackgroundTransparency = 1;
	local TopBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\218\12\198\192", "\129\202\168\109\171\165\195\183"), PageContainer);
	TopBar.Size = UDim2.new(1, 0, 0, 40);
	TopBar.BackgroundTransparency = 1;
	MakeDraggable(TopBar, MainFrame);
	local PageTitle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\47\204\242\21\228\39\84", "\134\66\56\87\184\190\116"), TopBar);
	PageTitle.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\12\48\14\190\45\226\53\57\57", "\85\92\81\105\219\121\139\65");
	PageTitle.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\217\178\67\77\126\208\252\161\84", "\191\157\211\48\37\28");
	PageTitle.Size = UDim2.new(1, -20, 1, 0);
	PageTitle.Position = UDim2.new(0, 20, 0, 0);
	PageTitle.Font = Enum.Font.GothamBold;
	PageTitle.TextSize = 18;
	PageTitle.TextColor3 = Theme.Text;
	PageTitle.TextXAlignment = Enum.TextXAlignment.Left;
	PageTitle.BackgroundTransparency = 1;
	local CloseBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8\24\202\11\224\19\52", "\90\191\127\148\124"), TopBar);
	CloseBtn.Size = UDim2.new(0, 30, 0, 30);
	CloseBtn.Position = UDim2.new(1, -35, 0.5, -15);
	CloseBtn.Text = "×";
	CloseBtn.Font = Enum.Font.Gotham;
	CloseBtn.TextSize = 24;
	CloseBtn.TextColor3 = Theme.TextDark;
	CloseBtn.BackgroundTransparency = 1;
	local Content = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\94\149\47\26\125", "\119\24\231\78"), PageContainer);
	Content.Size = UDim2.new(1, 0, 1, -50);
	Content.Position = UDim2.new(0, 0, 0, 50);
	Content.BackgroundTransparency = 1;
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\46\183\79\217\78\54\151\36", "\113\226\77\197\42\188\32"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\17\31\250\178\23\25\246\188\54\19\214\160\46\2\251\187", "\213\90\118\148");
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\35\181\81\72\121\59\160\66\66\85", "\45\59\78\212\54"), KGui);
	KBtn.Size = UDim2.new(0, 50, 0, 50);
	KBtn.Position = UDim2.new(0.1, 0, 0.2, 0);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundColor3 = Theme.SidebarBG;
	KBtn.Visible = false;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\127\160\132\148\32\168\226", "\144\112\54\227\235\230\78\205"), KBtn).CornerRadius = UDim.new(1, 0);
	local KStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\1\60\232\194\84\184\45", "\59\211\72\111\156\176"), KBtn);
	KStroke.Color = Theme.AccentStart;
	KStroke.Thickness = 2;
	MakeDraggable(KBtn, KBtn);
	local function ToggleUI()
		MainFrame.Visible = not MainFrame.Visible;
		KBtn.Visible = not MainFrame.Visible;
	end
	CloseBtn.MouseButton1Click:Connect(ToggleUI);
	KBtn.MouseButton1Click:Connect(ToggleUI);
	if IsMobile then
		KBtn.Visible = false;
	else
		KBtn.Visible = false;
	end
	local WindowAPI = {};
	local Tabs = {};
	WindowAPI.Tab = function(self, name, icon)
		local Tab = {};
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\130\251\57\108\146\247\57\65\137", "\77\46\231\131"), TabContainer);
		TabBtn.Size = UDim2.new(1, -10, 0, 34);
		TabBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\250\20\246\0\250\20\246", "\32\218\52\214") .. name;
		TabBtn.Font = Enum.Font.GothamSemibold;
		TabBtn.TextSize = 13;
		TabBtn.TextColor3 = Theme.TextDark;
		TabBtn.BackgroundColor3 = Theme.SidebarBG;
		TabBtn.AutoButtonColor = false;
		TabBtn.TextXAlignment = Enum.TextXAlignment.Left;
		local TabCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\62\18\167\227\190\64\72", "\58\46\119\81\200\145\208\37"), TabBtn);
		TabCorner.CornerRadius = UDim.new(0, 6);
		local SelectedBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\158\49\161\172", "\86\75\236\80\204\201\221"), TabBtn);
		SelectedBar.Size = UDim2.new(0, 3, 0.6, 0);
		SelectedBar.Position = UDim2.new(0, 0, 0.2, 0);
		SelectedBar.BackgroundColor3 = Theme.AccentStart;
		SelectedBar.Visible = false;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\71\104\84\138\236\133\119\83", "\235\18\33\23\229\158"), SelectedBar).CornerRadius = UDim.new(0, 4);
		local PageScroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\185\211\180\92\182\200\181\87\156\211\186\93\191", "\219\48\218\161"), Content);
		PageScroll.Size = UDim2.new(1, 0, 1, 0);
		PageScroll.BackgroundTransparency = 1;
		PageScroll.ScrollBarThickness = 3;
		PageScroll.ScrollBarImageColor3 = Theme.AccentStart;
		PageScroll.Visible = false;
		PageScroll.CanvasSize = UDim2.new(0, 0, 0, 0);
		PageScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\80\64\200\91\204\229\104\115\92\207", "\128\132\17\28\41\187\47"), PageScroll);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\27\54\59\89\5\59\8\61", "\61\97\82\102\90"), PageScroll).PaddingTop = UDim.new(0, 10);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\7\155\74\195\83\23\7\171", "\105\204\78\203\43\167\55\126"), PageScroll).PaddingLeft = UDim.new(0, 20);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\131\19\31\23\0\206\95\162", "\49\197\202\67\126\115\100\167"), PageScroll).PaddingRight = UDim.new(0, 20);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\114\239\40\132\82\87\57\92", "\62\87\59\191\73\224\54"), PageScroll).PaddingBottom = UDim.new(0, 10);
		TabBtn.MouseButton1Click:Connect(function()
			for _, t in pairs(Tabs) do
				t.Btn.TextColor3 = Theme.TextDark;
				t.Btn.BackgroundColor3 = Theme.SidebarBG;
				t.Bar.Visible = false;
				t.Page.Visible = false;
			end
			TabBtn.TextColor3 = Theme.Text;
			TabBtn.BackgroundColor3 = Theme.ItemBG;
			SelectedBar.Visible = true;
			PageScroll.Visible = true;
			PageTitle.Text = name;
		end);
		table.insert(Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\22\244", "\169\135\98\154")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\118\54", "\168\171\23\68\52\157\83")]=SelectedBar,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\112\242\168", "\231\148\17\149\205\69\77")]=PageScroll});
		if (#Tabs == 1) then
			TabBtn.TextColor3 = Theme.Text;
			TabBtn.BackgroundColor3 = Theme.ItemBG;
			SelectedBar.Visible = true;
			PageScroll.Visible = true;
			PageTitle.Text = name;
		end
		Tab.Toggle = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or false;
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\181\198\246\82", "\159\224\199\167\155\55"), PageScroll);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\218\31\221\229\253\57\192", "\178\151\147\92"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\248\84\38\62\77\120\137\241", "\26\236\157\44\82\114\44"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, 0, 1, 0);
			Label.Position = UDim2.new(0, 12, 0, 0);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Switch = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\43\205\79\8\59\193\79\37\32", "\59\74\78\181"), Frame);
			Switch.Size = UDim2.new(0, 40, 0, 22);
			Switch.Position = UDim2.new(1, -50, 0.5, -11);
			Switch.BackgroundColor3 = (default and Theme.AccentStart) or Color3.fromRGB(50, 50, 50);
			Switch.Text = "";
			Switch.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\248\121\85\161\43\212\72", "\211\69\177\58\58"), Switch).CornerRadius = UDim.new(1, 0);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\247\120\248\236", "\171\215\133\25\149\137"), Switch);
			Knob.Size = UDim2.new(0, 18, 0, 18);
			Knob.Position = (default and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9);
			Knob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\225\17\245\253\62\249\80", "\34\129\168\82\154\143\80\156"), Knob).CornerRadius = UDim.new(1, 0);
			local function ToggleLogic()
				local val = not Library.Flags[tFlag];
				Library.Flags[tFlag] = val;
				TweenService:Create(Switch, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\167\179\48\0\79\92\134\144\188\55\40\71\66\134\151\225", "\233\229\210\83\107\40\46")]=((val and Theme.AccentStart) or Color3.fromRGB(50, 50, 50))}):Play();
				TweenService:Create(Knob, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\241\77\33\223\17\200\77\60", "\101\161\34\82\182")]=((val and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9))}):Play();
				if Library.ActiveLoops[tFlag] then
					task.cancel(Library.ActiveLoops[tFlag]);
					Library.ActiveLoops[tFlag] = nil;
				end
				if (val and options.Callback) then
					Library.ActiveLoops[tFlag] = task.spawn(function()
						while Library.Flags[tFlag] do
							pcall(options.Callback, true);
							task.wait(0.05);
						end
					end);
				elseif (not val and options.Callback) then
					pcall(options.Callback, false);
				end
				Library:Save();
			end
			Switch.MouseButton1Click:Connect(ToggleLogic);
		end;
		Tab.Slider = function(self, options)
			local sFlag = options.Flag;
			local min, max = options.Min, options.Max;
			local default = Library.Flags[sFlag] or options.Default or min;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\31\88\243\222", "\78\136\109\57\158\187\130\226"), PageScroll);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\22\218\254\44\49\252\227", "\145\94\95\153"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\200\12\193\98\182\255\200\24", "\215\157\173\116\181\46"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 8);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local ValueText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\177\147\230\246\52\182\142\254", "\186\85\212\235\146"), Frame);
			ValueText.Text = tostring(default);
			ValueText.Size = UDim2.new(0, 50, 0, 20);
			ValueText.Position = UDim2.new(1, -62, 0, 8);
			ValueText.Font = Enum.Font.Gotham;
			ValueText.TextSize = 13;
			ValueText.TextColor3 = Theme.AccentStart;
			ValueText.TextXAlignment = Enum.TextXAlignment.Right;
			ValueText.BackgroundTransparency = 1;
			local Track = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\228\147\23\243\60", "\56\162\225\118\158\89\142"), Frame);
			Track.Size = UDim2.new(1, -24, 0, 4);
			Track.Position = UDim2.new(0, 12, 0, 40);
			Track.BackgroundColor3 = Color3.fromRGB(40, 40, 50);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\44\227\160\48\214\89\23", "\184\60\101\160\207\66"), Track).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\125\177\52", "\220\81\226\28"), Track);
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\252\161\244\248\201\22\199", "\167\115\181\226\155\138"), Fill).CornerRadius = UDim.new(1, 0);
			local Gradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\11\192\78\122\117\207\231\44\243", "\166\130\66\135\60\27\17"), Fill);
			Gradient.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\88\207\120\53", "\80\36\42\174\21"), Track);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(0, 0, 0.5, 0);
			Knob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\57\20\117\92\30\50\104", "\26\46\112\87"), Knob).CornerRadius = UDim.new(1, 0);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\49\170\121\186", "\212\217\67\203\20\223\223\37"), PageScroll);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\139\221\168\131\173\192", "\178\218\237\200"), Frame).CornerRadius = UDim.new(0, 6);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\176\254\196\154\180\228\213\186", "\176\214\213\134"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 5);
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\168\174\192\138\67\77\224\162\184", "\57\148\205\214\180\200\54"), Frame);
			Box.Size = UDim2.new(1, -24, 0, 28);
			Box.Position = UDim2.new(0, 12, 0, 28);
			Box.BackgroundColor3 = Theme.WindowBG;
			Box.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\82\189", "\22\114\157\85\84") .. default;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.TextColor3 = Theme.TextDark;
			Box.TextXAlignment = Enum.TextXAlignment.Left;
			Box.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\48\203\79\248\173\214", "\200\164\171\115\164\61\150"), Box).CornerRadius = UDim.new(0, 4);
			local Icon = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\241\27\81\175\191\246\6\73", "\227\222\148\99\37"), Box);
			Icon.Text = "v";
			Icon.Size = UDim2.new(0, 30, 1, 0);
			Icon.Position = UDim2.new(1, -30, 0, 0);
			Icon.BackgroundTransparency = 1;
			Icon.TextColor3 = Theme.TextDark;
			Icon.Font = Enum.Font.GothamBold;
			local DropList = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\81\64\249\245\63\91\92\241\223\33\83\95\243", "\153\83\50\50\150"));
			DropList.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\121\100\124\12\119\164\90\83\90\122\15\103", "\45\61\22\19\124\19\203");
			DropList.Parent = ScreenGui;
			DropList.Size = UDim2.new(0, 0, 0, 0);
			DropList.BackgroundColor3 = Theme.ItemBG;
			DropList.Visible = false;
			DropList.ScrollBarThickness = 2;
			DropList.ZIndex = 100;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\59\46\250\16\126\188\211", "\217\161\114\109\149\98\16"), DropList).CornerRadius = UDim.new(0, 6);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\9\11\104\174\123\25\37", "\20\114\64\88\28\220"), DropList).Color = Theme.UIStrokeColor;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\40\225\160\234\223\182\52", "\221\81\97\178\212\152\176"), DropList).Thickness = 1;
			local ListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\49\242\9\217\203\28\226\21\216\243", "\122\173\135\125\155"), DropList);
			ListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
			local Open = false;
			local function RefreshList()
				for _, c in pairs(DropList:GetChildren()) do
					if c:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\176\196\24\173\29\36\220\144\206\14", "\168\228\161\96\217\95\81")) then
						c:Destroy();
					end
				end
				for _, item in ipairs(options.List) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\212\54\72\13\66\207\197\33\82", "\55\187\177\78\60\79"), DropList);
					ItemBtn.Size = UDim2.new(1, 0, 0, 30);
					ItemBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\109\142", "\224\77\174\63\139\38\175") .. item;
					ItemBtn.TextColor3 = ((item == Library.Flags[dFlag]) and Theme.AccentStart) or Theme.TextDark;
					ItemBtn.BackgroundColor3 = Theme.ItemBG;
					ItemBtn.Font = Enum.Font.Gotham;
					ItemBtn.TextSize = 13;
					ItemBtn.TextXAlignment = Enum.TextXAlignment.Left;
					ItemBtn.AutoButtonColor = false;
					ItemBtn.MouseButton1Click:Connect(function()
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
			Box.MouseButton1Click:Connect(function()
				Open = not Open;
				if Open then
					RefreshList();
					local absPos = Box.AbsolutePosition;
					local absSize = Box.AbsoluteSize;
					DropList.Position = UDim2.new(0, absPos.X, 0, absPos.Y + absSize.Y + 5);
					DropList.Size = UDim2.new(0, absSize.X, 0, math.min(#options.List * 30, 150));
					DropList.Visible = true;
				else
					DropList.Visible = false;
				end
			end);
		end;
		Tab.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\108\179\14\128", "\229\174\30\210\99"), PageScroll);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\232\158\69\207\40\45\15\226\136", "\89\123\141\230\49\141\93"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.Text = options.Name;
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextColor3 = Theme.Text;
			Btn.TextSize = 14;
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\88\213\3\2\68\246\99", "\42\147\17\150\108\112"), Btn).CornerRadius = UDim.new(0, 6);
			local Gradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\143\10\109\230\236\6\163\35\107", "\136\111\198\77\31\135"), Btn);
			Gradient.Color = ColorSequence.new(Theme.AccentStart, Theme.AccentEnd);
			Gradient.Transparency = NumberSequence.new(0.5);
			Btn.MouseButton1Click:Connect(function()
				TweenService:Create(Gradient, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\27\166\88\174\244\22\187\7\7\164\79", "\201\98\105\199\54\221\132\119")]=NumberSequence.new(0)}):Play();
				task.wait(0.1);
				TweenService:Create(Gradient, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\30\130\47\17\37\173\171\9\141\34\27", "\204\217\108\227\65\98\85")]=NumberSequence.new(0.5)}):Play();
				pcall(options.Callback);
			end);
		end;
		return Tab;
	end;
	local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\125\209\240\225\37\212\77", "\160\62\163\149\133\76"), "");
	CreditsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\161\0\42", "\163\182\192\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\41\9\206\181\16\47\19\195\250\38\34\64\243\240\38\48\5\210", "\149\84\70\96\160"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\7\1\225\58\7\14\230", "\141\88\102\109")]=function()
		setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\187\71\222\96\9\103\26\142\183\90\217\115\21\47\81\143\180\84\133\66\18\25\91\244\130\65\158\84\15", "\161\211\51\170\16\122\93\53"));
		Library:Notify(LUAOBFUSACTOR_DECRYPT_STR_0("\216\161\162\33\254\170\242\60\244\238\177\36\242\190\176\39\250\188\182\105", "\72\155\206\210"));
	end});
	return WindowAPI;
end;
return Library;
