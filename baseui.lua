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
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\155\126\125\36\22", "\35\200\29\28\72\115\20\154")]=0.45,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\176\196\209\137\34\49\10\172", "\84\121\223\177\191\237\76")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\85\202\165\52\68\97\254\147", "\161\219\54\169\192\90\48\80")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\65\3\32\71\86\82\26\97", "\69\41\34\96")]=0.58,[LUAOBFUSACTOR_DECRYPT_STR_0("\158\196\232\34", "\75\220\163\183\106\98")]=0.68,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\181\140\48\213\7\145\142\46", "\185\98\218\235\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\53\32\238\202\137\196\50\51\244\209\166", "\202\171\92\71\134\190")};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\30\200\34\140\38\214\14\175", "\232\73\161\76")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\208\70\88\28\186\203\96\122", "\126\219\185\34\61")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\218\91\127\92\80", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\234\41\206\22\186\0\211\183\251\62", "\167\214\137\74\171\120\206\83")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\170\243\49\88\246\179\174\254\54", "\199\235\144\82\61\152")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\19\161\63", "\75\103\118\217")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\81\104\0\157\31\213\95", "\126\167\52\16\116\217")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\7\19\148\166\22\247\205\13\47\140\187\11", "\156\168\78\64\224\212\121")]=Color3.fromRGB(90, 80, 115)};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\32\252\164\202\14\235\171\218\20", "\174\103\142\197")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\117\39\77\54\32\76\235", "\152\54\72\63\88\69\62")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\242\214\239\81\209\215", "\60\180\164\142")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\122\89\40\40\46\227", "\114\56\62\101\73\71\141")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\154\238\232\205\188\236\217\197\170", "\164\216\137\187")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\240\225\24\166\163\243\24", "\107\178\134\81\210\198\158")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\11\26\144\201\161\61\29", "\202\88\110\226\166")]={}};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\232\6\140\240\237\198\1", "\170\163\111\226\151");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\21\53\180\57\91\59\61\95\58\161\55\64", "\73\113\80\210\88\46\87");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\147\46\213\19\244\146\41\217\27\227\219\99\130\75\183\211\121\156\69\181\211\116\148\69\176\209\123", "\135\225\76\173\114");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\41\249\185\162\184\184\181\61\248\177", "\199\122\141\216\208\204\221")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\158\216\30\244\86\249\185\212\22\249\123\247\185\212\31\254", "\150\205\189\112\144\24"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\17\141\171\64\1", "\112\69\228\223\44\100\232\113")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\26\31\199", "\230\180\127\103\179\214\28")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\16\77\71\240\72\239\130", "\128\236\101\63\38\132\33")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\184\168\19\72\179", "\175\204\201\113\36\214\139")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\105\195\33\213\2\78\207\52\200\13\72\194", "\100\39\172\85\188"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\131\119\173\137\53\164\123\184\148\58\162\118", "\83\205\24\217\224"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\242\196\207\49\227", "\93\134\165\173"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\129\202\254\241\57\207\190\123", "\30\222\146\161\162\90\174\210")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\218\118\79\37\227\72\99\15\241", "\106\133\46\16")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\103\25\76\207\89\65\84\37", "\32\56\64\19\156\58")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\101\241\218\121\92\244\147\95\220", "\224\58\168\133\54\58\146")] = object.Position.Y.Offset;
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
Library.UpdateThemeGlobal = function(self)
	local h1 = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\102\105\126\212\74\165\136\7\86\68\26\194\93", "\107\57\54\43\157\21\230\231")] or DEFAULTS.Accent1_H;
	local h2 = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\228\180\36\220\134\255\192\215\132\3\167\134\244", "\175\187\235\113\149\217\188")] or DEFAULTS.Accent2_H;
	local bgH = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\3\144\180\101\220\91\127\3\135", "\24\92\207\225\44\131\25")] or DEFAULTS.Bg_H;
	Theme.AccentStart = Color3.fromHSV(h1, 0.75, 1);
	Theme.AccentEnd = Color3.fromHSV(h2, 0.75, 1);
	Theme.WindowBG = Color3.fromHSV(bgH, 0.27, 0.22);
	Theme.SidebarBG = Color3.fromHSV(bgH, 0.31, 0.15);
	Theme.ItemBG = Color3.fromHSV(bgH, 0.35, 0.33);
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\108\198\177\99\25\119\78\208\172", "\29\43\179\216\44\123")) then
			obj.BackgroundColor3 = Theme.ItemBG;
		end
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\190\214\46\74\180\222\110\70\174\214\46", "\44\221\185\64");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\70\88\84\4\233\125\118", "\19\97\135\40\63")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\133\85\61\60\26\24", "\81\206\60\83\91\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\111\167\194\119\46\199\84\228\124\190\222\124\38\205\74", "\196\46\203\176\18\79\163\45"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\33\108\27\33\245\200\173\43", "\143\216\66\30\126\68\155"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\129\193\3\204\226\166\217\212\131", "\129\202\168\109\171\165\195\183");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\74\54\213\219", "\134\66\56\87\184\190\116"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\17\48\0\181\63\249\32\56\57", "\85\92\81\105\219\121\139\65");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	local savedScale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\194\140\101\108\67\236\254\178\92\64", "\191\157\211\48\37\28")] or DEFAULTS.Scale;
	MainFrame.Size = UDim2.new(savedScale, 0, savedScale * 1.4, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\54\211\14\59\219\22\241\18\46", "\90\191\127\148\124"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\174\13\24\106\137\43\5", "\119\24\231\78"), MainFrame);
	local savedRound = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\189\18\144\99\227\114\30\151\35\161\68\217\83\2", "\113\226\77\197\42\188\32")] or DEFAULTS.Roundness;
	MainCorner.CornerRadius = UDim.new(0, savedRound);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\63\199\161\40\25\255\176", "\213\90\118\148"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\7\135\95\87\94\13\187\88\94\79\60\181\95\67\79", "\45\59\78\212\54"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(800, 900);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\83\155\159\164\59\185\228\31\88", "\144\112\54\227\235\230\78\205"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\154\38\31\233\196\121\191\39\12\247\213\73", "\59\211\72\111\156\176");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\149\226\32\75", "\77\46\231\131"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\142\93\162\76\191\118\183\82", "\32\218\52\214");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\62\22\186\240\180\76\95\64\3", "\58\46\119\81\200\145\208\37"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\129\49\171\172\145\55\41\137\60", "\86\75\236\80\204\201\221"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\210\138\112\68\123", "\235\18\33\23\229\158"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\123\147\239\156\16\157\228\149", "\219\48\218\161");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\100\93\249\90\244\240\126\114", "\128\132\17\28\41\187\47"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\27\37\53\79\15\55\20", "\61\97\82\102\90"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\47\168\64\192\69\17\28\162\42\136\68\203\88\12\90", "\105\204\78\203\43\167\55\126")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\154\149\22\55\44\41\238\127\140\135\10\36\54\32", "\49\197\202\67\126\115\100\167")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\88\205\44\133\88\121\34\82", "\62\87\59\191\73\224\54"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\204\32\239\221\243\13\244\238\242\11", "\169\135\98\154");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\122\37\83\248\17\221\223\99\43\90", "\168\171\23\68\52\157\83"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\88\212\190\53\40\132\224\67\244\185\44\34\164\251\127\230\185\55\44\142\250\101", "\231\148\17\149\205\69\77"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\152\236\196\103\208\179\152\255\196\100\252\129\171\194", "\159\224\199\167\155\55")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\200\204\23\237\199\220\15\237\207\204\15\209\246\255\57", "\178\151\147\92")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\179\194\103\13\34\99\73\179\197\115\29\20\74\105\137\233", "\26\236\157\44\82\114\44")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\21\17\254\100\26\1\230\100\19\17\230\88\43\34\208", "\59\74\78\181")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\26\238\113\101\131\10\226\101\99\140\10\215\92\73\182\49", "\211\69\177\58\58")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\136\218\82\202\217\228\132", "\171\215\133\25\149\137"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\222\247\7\211\208\29\213\108\200\229\27\192\202\20", "\34\129\168\82\154\143\80\156")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\181\189\32\2\92\71\134\139", "\233\229\210\83\107\40\46")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\77\38\215\17\200\77\60", "\101\161\34\82\182")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\193\0\88\249\222\214\144\47\230\30\73\255\201\231\140\45\241", "\78\136\109\57\158\187\130\226")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\54\227\244", "\145\94\95\153")]=UDim2.new(0, 100, 0, 100)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\192\21\210\75\131\239\204\26\198\94\182\239\200\26\214\87", "\215\157\173\116\181\46")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\189\145\247", "\186\85\212\235\146")]=UDim2.new(0, 80, 0, 80)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\242\142\5\247\45\231\87\204", "\56\162\225\118\158\89\142")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\10\212\174\54\209\83\11", "\184\60\101\160\207\66")]=0}):Play();
		end
	end
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\14\189\72\179\54\133\112\185\26\135\101", "\220\81\226\28")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\44\234\183\210\213\234\58\251\171\214\195\253\54\241", "\167\115\181\226\155\138")];
			if (currentlyMinimized == nil) then
				currentlyMinimized = false;
			end
			SetState(not currentlyMinimized);
		end
	end);
	local KBtnStartPos = Vector3.new(0, 0, 0);
	KBtn.InputBegan:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			KBtnStartPos = input.Position;
		end
	end);
	KBtn.InputEnded:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			local distance = (input.Position - KBtnStartPos).Magnitude;
			if (distance < 5) then
				SetState(false);
			end
		end
	end);
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\221\29\210\117\68\92\239\204\11\202\117\65\84\226", "\166\130\66\135\60\27\17")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\88\207\120\53", "\80\36\42\174\21"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\125\25\51\127\76\17\37\89\65\30\35\123\71\30\50\104", "\26\46\112\87");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\10\140\102\190\187\76\177\183\55", "\212\217\67\203\20\223\223\37"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\155\198\168\130\163\215", "\178\218\237\200"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\182\244\223\186\185\239\222\177\147\244\209\187\176", "\176\214\213\134"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\132\154\221\187\66\117\245\180\185\193\188", "\57\148\205\214\180\200\54"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\212\5\53\114\22\244\59\51", "\22\114\157\85\84"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\35\197\89\242\161\202\204", "\200\164\171\115\164\61\150"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\230\2\72\134", "\227\222\148\99\37"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\123\98\247\253\55\91\92\241", "\153\83\50\50\150"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 10);
	ContentPadding.PaddingRight = UDim.new(0, 10);
	ContentPadding.PaddingTop = UDim.new(0, 10);
	ContentPadding.PaddingBottom = UDim.new(0, 10);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local buttonHeight = 40;
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\115\107\8\81\190\89\73\121\125", "\45\61\22\19\124\19\203"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\59\46\250\16\126\188\211", "\217\161\114\109\149\98\16"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\9\11\104\174\123\25\37", "\20\114\64\88\28\220"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\19\211\186\235\192\188\35\4\220\183\225", "\221\81\97\178\212\152\176")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\232\17\244\8", "\122\173\135\125\155")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\176\211\1\183\44\33\201\150\196\14\186\38", "\168\228\161\96\217\95\81")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\222\34\83\61", "\55\187\177\78\60\79")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\15\218\81", "\224\77\174\63\139\38\175")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\170\64\85\43", "\78\228\33\56")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\106\160\12\142\203", "\229\174\30\210\99")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\40\238\148\94\225\49\48\21\234\160\67\236\48\60", "\89\123\141\230\49\141\93"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\204\65\247\11\21", "\42\147\17\150\108\112");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\143\1\118\244\252\35\167\52\112\242\252", "\136\111\198\77\31\135"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\32\151\87\185\224\30\167\5", "\201\98\105\199\54\221\132\119"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\30\130\44\7", "\204\217\108\227\65\98\85")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\112\194\248\224", "\160\62\163\149\133\76")]=name});
		TabBtn.MouseButton1Click:Connect(function()
			for _, tabData in ipairs(TabButtons) do
				UpdateTabButtonStyle(tabData.Btn, false);
			end
			UpdateTabButtonStyle(TabBtn, true);
			for _, pageData in ipairs(Pages) do
				pageData.Frame.Visible = pageData.Name == name;
			end
		end);
		UpdateTabButtonStyle(TabBtn, FirstTab);
		FirstTab = false;
		local Elements = {};
		Elements.Toggle = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag];
			if (default == nil) then
				default = options.Default or false;
			end
			Library.Flags[tFlag] = default;
			local delayTime = options.Delay or 0.1;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\178\12\34\198", "\163\182\192\109\79"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\35\24\212\217\53\36\5\204", "\149\84\70\96\160"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\3\21\249\26\19\25\249\55\8", "\141\88\102\109"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\233\127\8\51\80\211", "\161\211\51\170\16\122\93\53"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\135\129\60\233\161\185\45", "\72\155\206\210"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\105\84", "\83\38\26\52\110")) or LUAOBFUSACTOR_DECRYPT_STR_0("\119\49\1", "\38\56\119\71");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.AccentEnd) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\209\238\91\221\34\68\252\250\86\210\6\89\255\224\74\133", "\54\147\143\56\182\69")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\142\243\70\205", "\191\182\225\159\41")]=((val and Theme.AccentEnd) or Theme.UIStrokeColor)}):Play();
			end
			local function HandleLoop(val)
				Library.Flags[tFlag] = val;
				if Library.ActiveLoops[tFlag] then
					task.cancel(Library.ActiveLoops[tFlag]);
					Library.ActiveLoops[tFlag] = nil;
				end
				if val then
					Library.ActiveLoops[tFlag] = task.spawn(function()
						pcall(options.Callback, true);
						while Library.Flags[tFlag] do
							pcall(options.Callback, true);
							task.wait(delayTime);
						end
						pcall(options.Callback, false);
					end);
				else
					pcall(options.Callback, false);
				end
				Library:Save();
			end
			Button.MouseButton1Click:Connect(function()
				local newVal = not Library.Flags[tFlag];
				if (options.Condition and newVal) then
					local success, reason = options.Condition();
					if not success then
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\10\17\60\92\132\137\130\15\23\38\92\142\131", "\162\75\114\72\53\235\231"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\175\61\74\236\92\22\204\57\74\227\81\14\137\124\80\234\90\17\204\46\77\229\91\22\204\50\75\245\29", "\98\236\92\36\130\51"), 4);
						return;
					end
				end
				UpdateVisuals(newVal);
				HandleLoop(newVal);
			end);
			UpdateVisuals(default);
			if default then
				HandleLoop(default);
			end
			local ToggleAPI = {};
			ToggleAPI.Set = function(self, value)
				Library.Flags[tFlag] = value;
				UpdateVisuals(value);
				HandleLoop(value);
			end;
			return ToggleAPI;
		end;
		Elements.Slider = function(self, options)
			local sFlag = options.Flag;
			local min, max = options.Min, options.Max;
			local default = Library.Flags[sFlag] or options.Default or min;
			Library.Flags[sFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\11\13\183\64", "\80\196\121\108\218\37\200\213"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\118\26\107\103\15\136\5\127", "\234\96\19\98\31\43\110"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\13\83\202\169", "\235\102\127\50\167\204\18"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\136\214\44\86\32\85\179", "\78\48\193\149\67\36"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\55\179\12\83\63\21\133", "\33\80\126\224\120"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\173\27\208\112\237\170\6\200", "\60\140\200\99\164"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\161\230\5\43\167", "\194\231\148\100\70"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\226\172\228\198\67\94", "\168\38\44\161\195\150"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\238\131\123\53", "\118\224\156\226\22\80\136\214"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\119\199\122\143\80\224\92\146", "\224\34\142\57"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\142\226\207\114\245\84\11\208\179", "\110\190\199\165\189\19\145\61"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			UIGradientFill.Rotation = 90;
			table.insert(Library.ThemeObjects.Gradients, UIGradientFill);
			local function Update(input)
				local SizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1);
				local Value = math.floor(min + ((max - min) * SizeX));
				if ((max - min) < 2) then
					Value = math.floor((min + ((max - min) * SizeX)) * 100) / 100;
				end
				Library.Flags[sFlag] = Value;
				Fill.Size = UDim2.new(SizeX, 0, 1, 0);
				ValLabel.Text = tostring(Value);
				pcall(options.Callback, Value);
				Library:Save();
			end
			local percent = (default - min) / (max - min);
			Fill.Size = UDim2.new(percent, 0, 1, 0);
			pcall(options.Callback, default);
			local Dragging = false;
			SliderFrame.InputBegan:Connect(function(input)
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
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local isSearchable = options.Search or false;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\249\118\229\142", "\167\186\139\23\136\235"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\176\144\25\54\180\138\8\22", "\109\122\213\232"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\242\186\36\204\226\182\36\225\249", "\80\142\151\194"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\239\84\67\17\200\114\94", "\44\99\166\23"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\244\59\57\63\168\117\249\46\16\33\165\113\242", "\196\28\151\73\86\83"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\215\17\38\0\134\87\15\120\192\0\59\31\142\84", "\22\147\99\73\112\226\56\120");
			Scroll.Size = UDim2.new(1, 0, 0, (isSearchable and 150) or 120);
			Scroll.Position = UDim2.new(0, 0, 1, 5);
			Scroll.BackgroundColor3 = Theme.SidebarBG;
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 8;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.ScrollBarImageTransparency = 0;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\92\193\250\159\182\112\240", "\237\216\21\130\149"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\103\115\86\163\221\114\131\87\80\74\164", "\62\226\46\63\63\208\169"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\196\27\70\140\19\24\59\91\198\22\91\151\26\3\59\109\236\3\80", "\62\133\121\53\227\127\109\79")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\17\42\225\244\161\186", "\194\112\116\82\149\182\206"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\10\173\77\10\195\234\64\119\230", "\110\89\200\44\120\160\130");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\234\104\73\81\68\62\95", "\45\203\163\43\38\35\42\91"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55", "\52\178\229\188\67\231\201")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\21\68\72\16\213\73\55\53\78\94", "\67\65\33\48\100\151\60")) then
							if ((txt == "") or string.find(child.Text:lower(), txt)) then
								child.Visible = true;
							else
								child.Visible = false;
							end
						end
					end
					UpdateCanvas();
				end);
			end
			local Open = false;
			local BlockerConnection;
			local RenderStep;
			local function UpdatePosition()
				if (Open and (Scroll.Parent == ScreenGui)) then
					local btnPos = MainBtn.AbsolutePosition;
					local btnSize = MainBtn.AbsoluteSize;
					Scroll.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 5);
					Scroll.Size = UDim2.new(0, btnSize.X, 0, (isSearchable and 150) or 120);
				end
			end
			local function CloseDropdown()
				Open = false;
				Scroll.Visible = false;
				Scroll.Parent = MainBtn;
				InputBlocker.Visible = false;
				if BlockerConnection then
					BlockerConnection:Disconnect();
					BlockerConnection = nil;
				end
				if RenderStep then
					RenderStep:Disconnect();
					RenderStep = nil;
				end
			end
			MainBtn.MouseButton1Click:Connect(function()
				Open = not Open;
				if Open then
					Scroll.Parent = ScreenGui;
					Scroll.Visible = true;
					InputBlocker.Visible = true;
					UpdatePosition();
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					BlockerConnection = InputBlocker.MouseButton1Click:Connect(CloseDropdown);
					if (isSearchable and SearchBox) then
						SearchBox.Text = "";
					end
					UpdateCanvas();
				else
					CloseDropdown();
				end
			end);
			for _, item in ipairs(options.List) do
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\226\182\204\209\202\243\186\215\253", "\147\191\135\206\184"), Scroll);
				ItemBtn.Size = UDim2.new(1, -10, 0, 25);
				ItemBtn.BackgroundTransparency = 1;
				ItemBtn.Text = item;
				ItemBtn.TextColor3 = Theme.Text;
				ItemBtn.Font = Enum.Font.Gotham;
				ItemBtn.TextScaled = true;
				ItemBtn.ZIndex = 605;
				ItemBtn.AutoButtonColor = false;
				ItemBtn.MouseButton1Click:Connect(function()
					Library.Flags[dFlag] = item;
					MainBtn.Text = item;
					pcall(options.Callback, item);
					CloseDropdown();
					Library:Save();
				end);
			end
			pcall(options.Callback, default);
			UpdateCanvas();
			local DropdownAPI = {};
			DropdownAPI.Set = function(self, value)
				Library.Flags[dFlag] = value;
				MainBtn.Text = value;
				pcall(options.Callback, value);
				Library:Save();
			end;
			DropdownAPI.Update = function(self, newList)
				for _, child in ipairs(Scroll:GetChildren()) do
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\176\45\190\213\250\70\166\144\39\168", "\210\228\72\198\161\184\51")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\76\235\4\81\219\34\93\252\30", "\174\86\41\147\112\19"), Scroll);
					ItemBtn.Size = UDim2.new(1, -10, 0, 25);
					ItemBtn.BackgroundTransparency = 1;
					ItemBtn.Text = item;
					ItemBtn.TextColor3 = Theme.Text;
					ItemBtn.Font = Enum.Font.Gotham;
					ItemBtn.TextScaled = true;
					ItemBtn.ZIndex = 605;
					ItemBtn.AutoButtonColor = false;
					ItemBtn.MouseButton1Click:Connect(function()
						Library.Flags[dFlag] = item;
						MainBtn.Text = item;
						pcall(options.Callback, item);
						CloseDropdown();
						Library:Save();
					end);
				end
				UpdateCanvas();
			end;
			return DropdownAPI;
		end;
		Elements.MultiDropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or {};
			Library.Flags[dFlag] = default;
			local isSearchable = options.Search or false;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\18\140\6\32", "\203\59\96\237\107\69\111\113"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\19\180\245\29\241\213\33\26", "\183\68\118\204\129\81\144"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\168\104\240\41\151\26\185\127\234", "\226\110\205\16\132\107"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\216\198\236\220\66\255\131\201\205\68\230\208\174\151\15", "\33\139\163\128\185");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\39\209\69\86\1\204", "\190\55\56\100"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\172\46\17\31\239\250\88\168\26\12\18\238\246", "\147\54\207\92\126\115\131"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\32\36\57\105\4\90\31\62\37\121\2\105\3\2\54\111\2\114\1", "\30\109\81\85\29\109");
			Scroll.Size = UDim2.new(1, 0, 0, (isSearchable and 150) or 120);
			Scroll.Position = UDim2.new(0, 0, 1, 5);
			Scroll.BackgroundColor3 = Theme.SidebarBG;
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 8;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.ScrollBarImageTransparency = 0;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\119\185\36\208\249\237", "\156\159\17\52\214\86\190"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\198\145\181\189\251\145\189\183\224\168\168", "\220\206\143\221"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\167\127\62\24\212\217\198\131\94\34\25\204\201\220\146\78\36\13\221", "\178\230\29\77\119\184\172")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\187\18\15\85\247\237", "\152\149\222\106\123\23"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\238\35\247\81\182\213\104\184\13", "\213\189\70\150\35");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\87\7\93\91\113\26", "\104\47\53\20"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\151\73\153\8", "\111\195\44\225\124\220")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\236\67\24\103\137\190\204\82\15\125", "\203\184\38\96\19\203")) then
							if ((txt == "") or string.find(child.Text:lower(), txt)) then
								child.Visible = true;
							else
								child.Visible = false;
							end
						end
					end
					UpdateCanvas();
				end);
			end
			local Open = false;
			local BlockerConnection;
			local RenderStep;
			local function UpdateText()
				local count = 0;
				for _, state in pairs(Library.Flags[dFlag]) do
					if state then
						count = count + 1;
					end
				end
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\121\64\124\77\203\58\103\124\69", "\174\89\19\25\33"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\28\23\94\75\244\147\75\6\6\87\67\228\201\69\97", "\107\79\114\50\46\151\231");
			end
			local function UpdatePosition()
				if (Open and (Scroll.Parent == ScreenGui)) then
					local btnPos = MainBtn.AbsolutePosition;
					local btnSize = MainBtn.AbsoluteSize;
					Scroll.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 5);
					Scroll.Size = UDim2.new(0, btnSize.X, 0, (isSearchable and 150) or 120);
				end
			end
			local function CloseDropdown()
				Open = false;
				Scroll.Visible = false;
				Scroll.Parent = MainBtn;
				InputBlocker.Visible = false;
				if BlockerConnection then
					BlockerConnection:Disconnect();
					BlockerConnection = nil;
				end
				if RenderStep then
					RenderStep:Disconnect();
					RenderStep = nil;
				end
			end
			MainBtn.MouseButton1Click:Connect(function()
				Open = not Open;
				if Open then
					Scroll.Parent = ScreenGui;
					Scroll.Visible = true;
					InputBlocker.Visible = true;
					UpdatePosition();
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					BlockerConnection = InputBlocker.MouseButton1Click:Connect(CloseDropdown);
					if (isSearchable and SearchBox) then
						SearchBox.Text = "";
					end
					UpdateCanvas();
				else
					CloseDropdown();
				end
			end);
			for _, item in ipairs(options.List) do
				if (Library.Flags[dFlag][item] == nil) then
					Library.Flags[dFlag][item] = false;
				end
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\163\173\61\168\44\163\212\54\168", "\160\89\198\213\73\234\89\215"), Scroll);
				ItemBtn.Size = UDim2.new(1, -10, 0, 25);
				ItemBtn.BackgroundTransparency = 1;
				ItemBtn.Text = item;
				ItemBtn.TextColor3 = (Library.Flags[dFlag][item] and Theme.AccentStart) or Theme.Text;
				ItemBtn.Font = Enum.Font.Gotham;
				ItemBtn.TextScaled = true;
				ItemBtn.ZIndex = 605;
				ItemBtn.AutoButtonColor = false;
				ItemBtn.MouseButton1Click:Connect(function()
					Library.Flags[dFlag][item] = not Library.Flags[dFlag][item];
					ItemBtn.TextColor3 = (Library.Flags[dFlag][item] and Theme.AccentStart) or Theme.Text;
					UpdateText();
					pcall(options.Callback, Library.Flags[dFlag]);
					Library:Save();
				end);
			end
			UpdateText();
			UpdateCanvas();
			pcall(options.Callback, Library.Flags[dFlag]);
		end;
		Elements.Cycle = function(self, options)
			local cFlag = options.Flag;
			local default = Library.Flags[cFlag] or options.Default or options.List[1];
			Library.Flags[cFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\99\181\243\192", "\165\40\17\212\158"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\220\16\39\10\228\219\13\63", "\70\133\185\104\83"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\64\92\62\235\17\81\80\37\199", "\169\100\37\36\74"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\174\129\95\18\137\167\66", "\48\96\231\194"), Button).CornerRadius = UDim.new(0, 8);
			Button.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, Button);
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
			pcall(options.Callback, default);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\72\15\32\28", "\227\168\58\110\77\121\184\207"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\57\167\84\157\218\115\160\119", "\197\27\92\223\32\209\187\17"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\90\219\239\33\80\219", "\155\99\63\163"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\167\223\181\136\171\196\150\212\185\153\249\140\135\195\164\195\247\202", "\228\226\177\193\237\217");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\153\0\233\38\190\38\244", "\134\84\208\67"), Input).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Input);
			Input.FocusLost:Connect(function()
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\190\135\81\22", "\60\115\204\230"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\243\100\197\47\255\100\232\52", "\16\135\90\139"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\93\33\33\79\80\113\81\122\18", "\24\52\20\102\83\46\52"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			BtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, BtnGradient);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.BackgroundTransparency = 0.5;
			Btn.Text = options.Name;
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextScaled = true;
			Btn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\6\2\43\29\202\42\51", "\111\164\79\65\68"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\208\153\219", "\138\166\185\227\190\78")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\125\223\50", "\121\171\20\165\87\50\67")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\42\184\59\188", "\98\166\88\217\86\217"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\228\120\12\131", "\188\150\150\25\97\230"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\140\71\22\32\236\216\140\83", "\141\186\233\63\98\108"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\221\235\46\179\41", "\69\145\138\76\214");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\86\221\136\132\186", "\118\16\175\233\233\223"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\129\45\175\194\138\127\142\136", "\29\235\228\85\219\142\235"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\25\221\169\222\120\92\35", "\50\93\180\218\189\23\46\71");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\161\67\88\102\211\80", "\40\190\196\59\44\36\188"), Frame);
			Box.Size = UDim2.new(0.8, 0, 0, 30);
			Box.Position = UDim2.new(0.1, 0, 0, 35);
			Box.PlaceholderText = options.Link or "";
			Box.Text = options.Link or "";
			Box.BackgroundColor3 = Theme.ItemBG;
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextScaled = true;
			Box.ZIndex = 5;
			Box.ClearTextOnFocus = false;
			Box.TextEditable = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\108\255\187\232\115\8\46", "\109\92\37\188\212\154\29"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\234\188\215\19\79\16\251\171\205", "\58\100\143\196\163\81"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\57\77\51\186\127\101\236\0\17", "\110\122\34\67\195\95\41\133");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\64\152\120\69\196\123\180\73", "\182\21\209\59\42"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\126\226\15\32\186\190\82\203\9", "\222\215\55\165\125\65"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\15\222\214\19\247\197\172", "\42\76\177\166\122\146\161\141");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\134\133\21\215\57\90\172\132\14", "\22\197\234\101\174\25");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\14\56\172\204\116\160\214\148\41\116\144\210\119\185\214\143\33\53\167\208\115", "\230\77\84\197\188\22\207\183"), LUAOBFUSACTOR_DECRYPT_STR_0("\218\21\200\242\131\181\176\54\246\4\223\188\131\175\176\33\241\29\213\188\137\185\245\54\236\0\201\238\194", "\85\153\116\166\156\236\193\144"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\135\242\72\183\237\20\183", "\96\196\128\45\211\132"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\136\99\75", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\90\27\86\24\77\73\125\17\3\73\115\1\67\12\123\13\79", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\139\173\67\5", "\36\107\231\196")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\186\174\136\79", "\231\61\213\194")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\39\172\48\118", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\1\205\130\48\187\12\158\178\58\187\30\219\147", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\194\207\197", "\174\207\171\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\234\25\227\235\141\162\177\9\250\235\212\226\236\9\189\255\208\162\204\5\215\246\226\220\236\89\215\237", "\183\141\158\109\147\152")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\24\12\254\24", "\108\76\105\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\203\165\228\220\237\196\178\228\142\216\192\165\245\199\229\194\162", "\174\139\165\209\129"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\191\235\198\200", "\24\195\211\130\161\166\99\16")]=Enum.TextXAlignment.Center});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\2\228\41", "\118\38\99\137\76\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\35\22\23\29\96\233\41\69\54\12\38\252\51\9\6\26", "\64\157\70\101\114\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\169\171\239\18\65\171\172", "\112\32\200\199\131")]=function()
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\19\111\105\145\252\152\33\45\92\89", "\66\76\48\60\216\163\203")] = DEFAULTS.Scale;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\133\185\76\218\96\252\43\175\136\125\253\90\221\55", "\68\218\230\25\147\63\174")] = DEFAULTS.Roundness;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\146\21\102\101\137\142\37\95\67\164\252\21\123", "\214\205\74\51\44")] = DEFAULTS.Accent1_H;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\197\115\215\213\72\217\67\238\243\101\168\115\202", "\23\154\44\130\156")] = DEFAULTS.Accent2_H;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\46\153\152\135\9\49\22\153\133", "\115\113\198\205\206\86")] = DEFAULTS.Bg_H;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\187\104\202\85\131\80\242\95\175\82\231", "\58\228\55\158")] = DEFAULTS.ToggleKey;
			for _, frame in pairs(Library.ThemeObjects.Frames) do
				frame.Size = UDim2.new(DEFAULTS.Scale, 0, DEFAULTS.Scale * 1.4, 0);
			end
			for _, corner in pairs(Library.ThemeObjects.Corners) do
				corner.CornerRadius = UDim.new(0, DEFAULTS.Roundness);
			end
			Library:UpdateThemeGlobal();
			Library:Save();
			Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\128\128\196\34\57", "\85\212\233\176\78\92\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\93\156\246\67\86\143\241", "\130\42\56\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\186\42\247\69\49\254", "\95\138\213\68\131\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\45\178\70\98\106\60\174\3\82\47\46\160\86\122\62\105", "\22\74\72\193\35")});
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\2\120\233\93", "\56\76\25\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\206\172\33\195\91\129\140\19\230\30\234\174\63\143\22\196\229\33\129\30\243\162\33\199\74\226\164\40\219\76\206\167\111", "\175\62\161\203\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\209\194\20", "\85\92\189\163\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\147\4\55\46\171\60\61\2\169\41", "\88\73\204\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\134\22\71\60\214\58", "\186\78\227\112\38\73")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\204\91\252\86\86\114\243\91\249\80\65", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\165\214\6\204\172\16\167\221\15\250\183\84\137\152\56\216\181\85\194\150\88", "\48\236\184\118\185\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\188\91\60\205\53\230\182", "\84\133\221\55\80\175")]=function(val)
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\230\41\163", "\60\221\135\68\198\167")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\148\184\176\75\195\235\253\176\176\65\216\226\184\177", "\185\142\221\152\227\34"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\201\86\253", "\151\56\165\55\154\35\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\124\48\199\159\112\6\239\172\70", "\142\192\35\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\124\39", "\118\182\21\73\195\135\236\204")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\61\2", "\157\104\92\122\32\100\109")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\163\201\203\40\43\153", "\203\195\198\175\170\93\71\237")]=DEFAULTS.Scale,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\74\50\217\83\16\255\37", "\156\78\43\94\181\49\113")]=function(val)
			for _, frame in pairs(Library.ThemeObjects.Frames) do
				frame.Size = UDim2.new(val, 0, val * 1.4, 0);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\233\201\166", "\25\18\136\164\195\107\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\34\188\65\118\178\196\171\251", "\216\136\77\201\47\18\220\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\224\42\221", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\241\229\22\112\139\193\197\49\75\183\203\195\44", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\212\120", "\70\216\189\22\98\210\52\24")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\222\187", "\179\186\191\195\231")]=40,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\58\30\229\236\51\12", "\132\153\95\120")]=DEFAULTS.Roundness,[LUAOBFUSACTOR_DECRYPT_STR_0("\146\179\2\33\245\219\163\186", "\192\209\210\110\77\151\186")]=function(val)
			for _, corner in pairs(Library.ThemeObjects.Corners) do
				corner.CornerRadius = UDim.new(0, val);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\212\6\58\253", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\52\129\236\179\5\201\202\177\12\134\251\173", "\222\96\233\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\191\174\24\134", "\144\217\211\199\127\232\147")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\214\46\51\45", "\36\152\79\94\72\181\37\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\202\70\59\222\221\73\43\151\235\83\62\197\204\7\119\255\205\66\118", "\95\183\184\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\51\230\33", "\98\213\95\135\70\52\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\156\252\94\107\221\172\197\120\70\175\156\225", "\52\158\195\169\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\87\181\60", "\235\26\220\82\20\230\85\27")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\160\241", "\20\232\193\137\162")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\218\195\167\242\128\3", "\17\66\191\165\198\135\236\119")]=DEFAULTS.Accent1_H,[LUAOBFUSACTOR_DECRYPT_STR_0("\44\174\162\31\253\233\239\218", "\177\111\207\206\115\159\136\140")]=function(val)
			Library:UpdateThemeGlobal();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\43\136\29\17", "\63\101\233\112\116\180\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\41\236\22\241\51\205\47\173\55\246\50\131\115\197\7\253\127", "\86\163\91\141\114\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\7\117\116", "\90\51\107\20\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\207\176\198\2\174\255\137\224\47\223\207\173", "\93\237\144\229\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\255\254", "\38\117\150\144\121\107")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\0\186\246", "\90\77\219\142")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\1\39\56\89\11\110", "\26\134\100\65\89\44\103")]=DEFAULTS.Accent2_H,[LUAOBFUSACTOR_DECRYPT_STR_0("\210\226\60\47\166\240\224\59", "\196\145\131\80\67")]=function(val)
			Library:UpdateThemeGlobal();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\177\11\13", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\90\139\205\72\168\64\50\68\118\142\142\96\160\94\50\67\56\194\230\86\170\27", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\254\252\143", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\252\33\196\16\138\76\252\60", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\63\51", "\131\223\86\93\227\208\148")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\68\174", "\213\131\37\214\214\125")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\46\35\190\244\42\63", "\129\70\75\69\223")]=DEFAULTS.Bg_H,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\202\255\229\126\238\69\192", "\143\38\171\147\137\28")]=function(val)
			Library:UpdateThemeGlobal();
		end});
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\228\135\161\231", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\154\39\6\221\190\42\20\147\170\46\17\214\249\46\18\199\182\34\6\199\176\44\6\223\181\54\78", "\103\179\217\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\187\21\210\79", "\195\42\215\124\181\33\236")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\86\59\49\55", "\152\109\57\87\94\69")]=Theme.TextDark});
		Library:UpdateThemeGlobal();
	end;
	return WindowAPI;
end;
return Library;
