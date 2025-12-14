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
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\155\126\125\36\22", "\35\200\29\28\72\115\20\154")]=0.45,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\176\196\209\137\34\49\10\172", "\84\121\223\177\191\237\76")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\85\202\165\52\68\97\254\147", "\161\219\54\169\192\90\48\80")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\65\3\32\71\86\82\26\97", "\69\41\34\96")]=0.58,[LUAOBFUSACTOR_DECRYPT_STR_0("\158\196\232\34", "\75\220\163\183\106\98")]=0.68};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\53\179\133\51\214\21\152\172", "\185\98\218\235\87")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\53\35\227\220\171\217\30\0", "\202\171\92\71\134\190")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\213\41\133\11\230", "\232\73\161\76")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\218\65\88\16\175\234\86\92\12\175", "\126\219\185\34\61")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\205\93\119\112\99\214\233\8", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\50\223", "\167\214\137\74\171\120\206\83")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\245\42\73\220\166\153\251", "\199\235\144\82\61\152")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\63\138\63\21\25\178\46\36\25\181\36\21", "\75\103\118\217")]=Color3.fromRGB(90, 80, 115)};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\70\113\16\176\27\201\64\99", "\126\167\52\16\116\217")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\235\33\50\142\177\11\239", "\156\168\78\64\224\212\121")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\33\252\164\195\2\253", "\174\103\142\197")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\116\47\114\57\44\80", "\152\54\72\63\88\69\62")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\246\195\221\85\208\193\236\93\198", "\60\180\164\142")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\122\89\44\61\34\224\1", "\114\56\62\101\73\71\141")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\139\253\201\203\179\236\200", "\164\216\137\187")]={}};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\249\239\63\181\129\251\5", "\107\178\134\81\210\198\158");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\60\11\132\199\191\52\26\204\204\185\55\0", "\202\88\110\226\166");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\209\13\154\246\217\208\10\150\254\206\153\64\205\174\154\145\90\211\160\152\145\87\219\160\157\147\88", "\170\163\111\226\151");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\34\36\179\42\90\50\59\54\37\187", "\73\113\80\210\88\46\87")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\178\41\195\22\201\142\56\196\20\238\130\45\217\27\232\143", "\135\225\76\173\114"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\228\172\188\169", "\199\122\141\216\208\204\221")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\8\228", "\150\205\189\112\144\24")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\145\173\77\16\129\30\30", "\112\69\228\223\44\100\232\113")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\192\30\5\223\179", "\230\180\127\103\179\214\28")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\162\10\75\79\226\72\227\141\17\86\73\234", "\128\236\101\63\38\132\33"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\130\166\5\77\176\226\204\173\189\24\75\184", "\175\204\201\113\36\214\139"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\83\205\55\208\1", "\100\39\172\85\188"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\146\64\134\179\48\172\116\188", "\83\205\24\217\224")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\217\253\242\18\224\195\222\56\242", "\93\134\165\173")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\129\203\254\241\57\207\190\123", "\30\222\146\161\162\90\174\210")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\218\119\79\37\227\72\99\15\241", "\106\133\46\16")] = object.Position.Y.Offset;
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
	local h1 = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\103\31\70\213\101\99\87\44\124\238\11\127\112", "\32\56\64\19\156\58")] or DEFAULTS.Accent1_H;
	local h2 = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\101\247\208\127\101\209\143\86\199\247\4\101\218", "\224\58\168\133\54\58\146")] or DEFAULTS.Accent2_H;
	local bgH = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\102\105\126\212\74\164\128\52\113", "\107\57\54\43\157\21\230\231")] or DEFAULTS.Bg_H;
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
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\252\158\24\218\187\214\202\216\159", "\175\187\235\113\149\217\188")) then
			obj.BackgroundColor3 = Theme.ItemBG;
		end
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\63\160\143\74\234\126\54\54\188\142\66", "\24\92\207\225\44\131\25");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\218\182\75\60\120\69\230\145", "\29\43\179\216\44\123")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\150\208\46\75\136\240", "\44\221\185\64"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\235\90\90\114\5\254\8\109\102\15\233\65\81\116", "\19\97\135\40\63"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\95\33\62\42\63\137\73\58", "\81\206\60\83\91\79"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\101\162\222\117\8\198\67\145\103", "\196\46\203\176\18\79\163\45");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\48\127\19\33", "\143\216\66\30\126\68\155"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\135\201\4\197\227\177\214\236\175", "\129\202\168\109\171\165\195\183");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	local savedScale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\29\103\2\241\225\39\229\35\84\50", "\134\66\56\87\184\190\116")] or DEFAULTS.Scale;
	MainFrame.Size = UDim2.new(savedScale, 0, savedScale * 1.4, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\24\46\169\24\239\40\48\50\37", "\85\92\81\105\219\121\139\65"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\154\115\74\110\209\248\161", "\191\157\211\48\37\28"), MainFrame);
	local savedRound = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\224\32\193\53\5\237\16\225\18\62\209\26\231\15", "\90\191\127\148\124")] or DEFAULTS.Roundness;
	MainCorner.CornerRadius = UDim.new(0, savedRound);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\174\29\3\106\136\37\18", "\119\24\231\78"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\4\150\67\198\69\50\141\35\182\94\206\65\24\140\57", "\113\226\77\197\42\188\32"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(800, 900);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\14\19\236\161\24\3\224\161\53\24", "\213\90\118\148"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\114\32\164\67\89\121\34\187\85\70\94\60", "\45\59\78\212\54");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\68\130\134\131", "\144\112\54\227\235\230\78\205"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\135\33\27\240\213\121\178\58", "\59\211\72\111\156\176");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\174\196\63\79\131\234\40\64\147", "\77\46\231\131"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\89\183\71\191\120\183\66\191\88", "\32\218\52\214"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188\221\177\71\95\66", "\58\46\119\81\200\145\208\37"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\0\165\30\139\233\154\19\5", "\86\75\236\80\204\201\221");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\220\158\102\85\120\139", "\235\18\33\23\229\158"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\147\226\180\66\180\196\169", "\219\48\218\161"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\198\112\127\66\220\93\239\241\127\120\106\212\67\239\246\34", "\128\132\17\28\41\187\47")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\62\13\51\19\98\44\27\40\19\112\40\8\35\30", "\61\97\82\102\90")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\45\185\78\194\89\57\28\165", "\105\204\78\203\43\167\55\126"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\142\136\54\10\7\11\201\118\176\163", "\49\197\202\67\126\115\100\167");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\86\222\46\133\116\75\35\79\208\39", "\62\87\59\191\73\224\54"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\43\219\218\247\7\249\221\213\3\238\192\232\33\245\199\244\22\232\200\238\12\238", "\169\135\98\154"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\244\72\15\107\205\28\251\244\79\27\103\254\50\196\206", "\168\171\23\68\52\157\83")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\203\78\222\146\21\2\180\203\73\202\158\38\44\139\241", "\231\148\17\149\205\69\77")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\152\236\196\103\208\179\152\255\196\120\249\134\180\194\239", "\159\224\199\167\155\55")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\200\204\23\237\199\220\15\237\206\204\15\209\246\255\57", "\178\151\147\92")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\179\194\103\13\34\99\73\179\196\115\29\20\74\105\137\233", "\26\236\157\44\82\114\44")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\21\17\254\100\26\1\230", "\59\74\78\181"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\26\238\111\115\140\8\248\116\115\158\12\235\127\126", "\211\69\177\58\58")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\234\106\252\253\194\184\235", "\171\215\133\25\149\137")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\199\38\251\251\57\243\76", "\34\129\168\82\154\143\80\156")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\172\191\50\12\77\122\155\132\188\32\27\73\92\140\139\177\42", "\233\229\210\83\107\40\46")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\75\40\211", "\101\161\34\82\182")]=UDim2.new(0, 100, 0, 100)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\193\0\88\249\222\214\144\47\230\30\73\255\201\231\140\45\241", "\78\136\109\57\158\187\130\226")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\54\227\244", "\145\94\95\153")]=UDim2.new(0, 80, 0, 80)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\205\194\7\220\90\190\242\195", "\215\157\173\116\181\46")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\187\159\243\206\60\187\133", "\186\85\212\235\146")]=0}):Play();
		end
	end
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\253\190\35\215\6\195\113\236\168\59\215\3\203\124", "\56\162\225\118\158\89\142")] then
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
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\23\193\162\39", "\184\60\101\160\207\66"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\2\139\120\185\51\131\110\159\62\140\104\189\56\140\121\174", "\220\81\226\28");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\252\165\233\235\195\26\208\140\239", "\167\115\181\226\155\138"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\11\212\72\105\126\205\231", "\166\130\66\135\60\27\17"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\119\73\220\122\60\72\67\192\114\22\86\75\195\112", "\80\36\42\174\21"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\57\27\115\93\4\27\123\87\31\34\110", "\26\46\112\87"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\10\155\117\187\187\76\186\190", "\212\217\67\203\20\223\223\37"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\152\211\190\137\161\220\189", "\178\218\237\200"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\167\231\221\179", "\176\214\213\134"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\132\134\213\172\82\80\250\170", "\57\148\205\214\180\200\54"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\248\45\32\84\7\233\33\59\120", "\22\114\157\85\84"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\48\203\79\248\173\214", "\200\164\171\115\164\61\150"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\221\48\81\145\177\255\6", "\227\222\148\99\37"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\64\83\248\234\35\83\64\243\247\48\75", "\153\83\50\50\150")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\121\127\19\97", "\45\61\22\19\124\19\203")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\0\12\251\17\96\184\211\23\3\246\27", "\217\161\114\109\149\98\16")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\47\52\115\174", "\20\114\64\88\28\220")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\19\21\220", "\221\81\97\178\212\152\176")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\230\16\254", "\122\173\135\125\155")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\213\18\182\52\52", "\168\228\161\96\217\95\81")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\210\60\83\35\91\210\223\41\122\61\86\214\212", "\55\187\177\78\60\79"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\18\254\94\236\67", "\224\77\174\63\139\38\175");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\104\116\39\151\85\116\47\157\78\77\58", "\78\228\33\56"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\87\130\2\129\202\119\188\4", "\229\174\30\210\99"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\61\255\135\92\232", "\89\123\141\230\49\141\93")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\112\251\9", "\42\147\17\150\108\112")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\180\44\114\226", "\136\111\198\77\31\135"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\12\191\66\145\229\21\172\14", "\201\98\105\199\54\221\132\119"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\9\155\53\32\32\184\173\3\141", "\204\217\108\227\65\98\85"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\234\214\234\62\206\91\209", "\160\62\163\149\133\76"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\62\59\209\217\171\8", "\163\182\192\109\79"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\27\8", "\149\84\70\96\160")) or LUAOBFUSACTOR_DECRYPT_STR_0("\23\32\43", "\141\88\102\109");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.AccentEnd) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\145\82\201\123\29\47\90\212\189\87\233\127\22\50\71\146", "\161\211\51\170\16\122\93\53")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\216\161\190\39\233", "\72\155\206\210")]=((val and Theme.AccentEnd) or Theme.UIStrokeColor)}):Play();
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\103\121\64\7\60\72\58\112\11\61\79\127\80", "\83\38\26\52\110"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\123\22\41\72\87\3\103\67\86\22\37\74\93\87\51\78\81\4\103\84\81\16\47\82\24\25\40\81\22", "\38\56\119\71"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\253\89\219\32", "\54\147\143\56\182\69"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\132\231\93\243\215\131\250\69", "\191\182\225\159\41"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\0\41\88\142", "\162\75\114\72\53\235\231"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\21\103\237\65\12\137\46", "\98\236\92\36\130\51"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\63\174\87\167\190\53", "\80\196\121\108\218\37\200\213"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\118\26\107\103\15\136\5\127", "\234\96\19\98\31\43\110"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\13\83\202\169", "\235\102\127\50\167\204\18"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\136\214\44\86\32\85\179", "\78\48\193\149\67\36"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\12\129\21\68", "\33\80\126\224\120"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\129\32\203\78\226\173\17", "\60\140\200\99\164"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\35\52\163\131\253\1\40\182", "\194\231\148\100\70"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\96\94\192\174\243", "\168\38\44\161\195\150"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\249\154\98\28\233\180\19\140", "\118\224\156\226\22\80\136\214"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\235\65\148\96\251\77\148\77\224", "\224\34\142\57"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\142\230\210\97\255\88\28", "\110\190\199\165\189\19\145\61"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\233\232\101\231\135\203\211\229\112\206\153\198\215\238", "\167\186\139\23\136\235"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\62\167\135\29\30\186\159\3\41\182\154\2\22\185", "\109\122\213\232");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\222\129\63\252\249\167\34", "\80\142\151\194"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\239\91\69\16\210\91\77\26\201\98\88", "\44\99\166\23"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\93\245\58\57\63\177\104\242\10\57\61\176\121\249\61\5\58\190\121", "\196\28\151\73\86\83")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\160\87\0", "\22\147\99\73\112\226\56\120"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\139\112\227\231\142\176\59\172\187", "\237\216\21\130\149");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\103\124\80\162\199\91\144", "\62\226\46\63\63\208\169"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\77\151", "\62\133\121\53\227\127\109\79")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\36\17\42\225\244\187\182\4\27\60", "\194\112\116\82\149\182\206")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\173\84\12\226\247\26\45\167\66", "\110\89\200\44\120\160\130"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\159\198\83\82\97\95\47\89\164\205", "\45\203\163\43\38\35\42\91")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55\165\188\64\198\138\210", "\52\178\229\188\67\231\201"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\83\81\9\242", "\67\65\33\48\100\151\60"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\226\182\204\223\222\229\171\212", "\147\191\135\206\184"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\45\190\213\250\70\166\144\39\168", "\210\228\72\198\161\184\51"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\5\76\255\21\112\218\118\96\231\21\126\221\120\7\189", "\174\86\41\147\112\19");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\41\174\4\55\1\20\185", "\203\59\96\237\107\69\111\113"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\21\190\238\61\252\222\42\17\138\243\48\253\210", "\183\68\118\204\129\81\144"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\35\184\124\240\2\166\28\162\96\224\4\149\0\158\115\246\4\142\2", "\226\110\205\16\132\107");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\195\214\83\229\198\242", "\33\139\163\128\185"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\40\215\68\76\40\223\78\87\17\202", "\190\55\56\100"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\119\173\47\17\31\246\231\83\140\51\16\7\230\253\66\156\53\4\22", "\147\54\207\92\126\115\131")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\52\45\105\47\113\21", "\30\109\81\85\29\109"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\204\116\85\164\53\214\178\177\63", "\156\159\17\52\214\86\190");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\198\158\179\188\225\184\174", "\220\206\143\221"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\178\120\53\3", "\178\230\29\77\119\184\172")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\193\187\18\15\85\237\225\170\5\21", "\152\149\222\106\123\23")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\157\21\243\79\176\222\50\243\71", "\213\189\70\150\35"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\124\80\120\13\76\65\52\33\91\80\121\27\1\27\58", "\104\47\53\20");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\73\153\8\158\26\183\88\142\18", "\111\195\44\225\124\220"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\84\1\126\174", "\203\184\38\96\19\203"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\118\97\85\226\56\113\124\77", "\174\89\19\25\33"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\23\74\90\213\146\31\59\29\92", "\107\79\114\50\46\151\231"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\143\150\38\152\55\178\210", "\160\89\198\213\73\234\89\215"), Button).CornerRadius = UDim.new(0, 8);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\64\92\62\235\11\93", "\169\100\37\36\74"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\37\137\182\85\18\199\182\85\24\147\226\88\5\149\167\30\78\201", "\48\96\231\194");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\45\34\11\214\170\145", "\227\168\58\110\77\121\184\207"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\93\46\190\77\180", "\197\27\92\223\32\209\187\17"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\90\219\239\33\74\215\239\12\81", "\155\99\63\163"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\134\159\184\128\139\212\175\153", "\228\226\177\193\237\217"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\153\0\233\38\190\38\244", "\134\84\208\67"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\32\165\156\89", "\60\115\204\230")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\51\241\117", "\16\135\90\139")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\102\7\62\75", "\24\52\20\102\83\46\52"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\61\32\41\10", "\111\164\79\65\68"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\220\155\202\2\235\196\220\143", "\138\166\185\227\190\78"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\231\117\199\50\94", "\121\171\20\165\87\50\67");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\42\184\59\188", "\98\166\88\217\86\217"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\243\97\21\170\221\244\243\117", "\188\150\150\25\97\230"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\254\128\76\1\3\255\222", "\141\186\233\63\98\108");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\239\52\162\7\254\242", "\69\145\138\76\214"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\69\230\170\134\173\24\117\221", "\118\16\175\233\233\223"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\129\45\175\204\158\105\159\139\59", "\29\235\228\85\219\142\235"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\30\219\170\196\55\98\46\92\54", "\50\93\180\218\189\23\46\71");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\141\120\67\86\210\77\204", "\40\190\196\59\44\36\188"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\108\251\166\251\121\4\57\75\200", "\109\92\37\188\212\154\29"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\39\224\180\202\52\94\69", "\58\100\143\196\163\81");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\57\77\51\186\127\101\236\0\17", "\110\122\34\67\195\95\41\133");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\86\189\82\90\212\122\176\73\78\150\64\191\90\92\215\124\189\90\72\218\112", "\182\21\209\59\42"), LUAOBFUSACTOR_DECRYPT_STR_0("\148\86\203\19\46\170\247\84\202\13\56\254\184\89\133\9\41\183\164\23\192\5\36\189\162\67\202\15\111", "\222\215\55\165\125\65"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\15\195\195\30\251\213\254", "\42\76\177\166\122\146\161\141"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\145\143\29\218", "\22\197\234\101\174\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\55\183\213\102\187\151\164\52\110\229\240\127\181\210\162\40\34", "\230\77\84\197\188\22\207\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\24\207\251\130", "\85\153\116\166\156\236\193\144")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\239\65\188\246", "\96\196\128\45\211\132")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\140\118\90", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\80\26\92\7\75\13\31\59\92\27\73\13\75", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\142\170\79", "\36\107\231\196")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\161\182\151\78\239\237\200\89\188\177\132\82\167\166\201\90\178\237\181\85\145\172\178\108\167\246\163\72", "\231\61\213\194")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\168\37\103", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\6\202\132\45\175\9\221\132\127\154\13\202\149\54\167\15\205", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\199\200\201\161", "\174\207\171\161")]=Enum.TextXAlignment.Center});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\255\0\246", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\12\245\9\56\73\242\3\108\45\227\10\45\28\234\24\63", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\189\237\204\234\198\186", "\174\139\165\209\129")]=function()
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\156\140\215\232\249\48\115\121\175\182", "\24\195\211\130\161\166\99\16")] = DEFAULTS.Scale;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\121\60\220\5\108\36\73\22\231\40\93\19\85\16", "\118\38\99\137\76\51")] = DEFAULTS.Roundness;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\194\25\48\59\54\3\242\42\10\0\88\31\213", "\64\157\70\101\114\105")] = DEFAULTS.Accent1_H;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\127\151\146\202\47\99\167\171\236\2\18\151\143", "\112\32\200\199\131")] = DEFAULTS.Accent2_H;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\19\111\105\145\252\137\37\19\120", "\66\76\48\60\216\163\203")] = DEFAULTS.Bg_H;
			for _, frame in pairs(Library.ThemeObjects.Frames) do
				frame.Size = UDim2.new(DEFAULTS.Scale, 0, DEFAULTS.Scale * 1.4, 0);
			end
			for _, corner in pairs(Library.ThemeObjects.Corners) do
				corner.CornerRadius = UDim.new(0, DEFAULTS.Roundness);
			end
			Library:UpdateThemeGlobal();
			Library:Save();
			Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\142\143\109\255\90", "\68\218\230\25\147\63\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\158\47\71\88\191\163\45\64", "\214\205\74\51\44"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\67\236\232\114\244\88", "\23\154\44\130\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\163\190\171\34\83\5\169\237\138\51\21\16\179\161\186\119", "\115\113\198\205\206\86")});
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\86\243\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\160\144\29\53\183\48\244\193\227\45\61\161\48\253", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\84\137\229", "\130\42\56\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\138\17\202\127\12\233\180\40\230", "\95\138\213\68\131\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\33\175", "\22\74\72\193\35")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\120\252", "\56\76\25\132")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\196\173\39\218\82\213", "\175\62\161\203\70")]=DEFAULTS.Scale,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\220\207\31\55\61\222\200", "\85\92\189\163\115")]=function(val)
			for _, frame in pairs(Library.ThemeObjects.Frames) do
				frame.Size = UDim2.new(val, 0, val * 1.4, 0);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\7\173\61\61", "\88\73\204\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\140\5\72\45\212\43\144\3", "\186\78\227\112\38\73"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\91\252\82", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\179\231\35\240\135\98\131\205\24\221\182\85\159\203", "\48\236\184\118\185\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\180\89", "\84\133\221\55\80\175")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\144\230\60", "\60\221\135\68\198\167")]=40,[LUAOBFUSACTOR_DECRYPT_STR_0("\202\184\254\130\87\213\250", "\185\142\221\152\227\34")]=DEFAULTS.Roundness,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\196\91\246\65\50\244\83", "\151\56\165\55\154\35\83")]=function(val)
			for _, corner in pairs(Library.ThemeObjects.Corners) do
				corner.CornerRadius = UDim.new(0, val);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\70\29\250", "\142\192\35\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\125\44\174\226\204\143\25\218\122\59\176", "\118\182\21\73\195\135\236\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\48\19\71\10", "\157\104\92\122\32\100\109")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\167\194\207", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\89\63\209\88\20\242\58\11\13\193\80\3\232\110\3\22\192\84\88", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\84\228\197\164", "\25\18\136\164\195\107\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\18\156\102\77\159\206\180\231\63\248\112\90", "\216\136\77\201\47\18\220\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\229\37", "\226\77\140\75\186\104\188")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\148\207\200", "\47\217\174\176\95")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\216\112\3\167\88\108", "\70\216\189\22\98\210\52\24")]=DEFAULTS.Accent1_H,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\222\175\139\209\219\220\168", "\179\186\191\195\231")]=function(val)
			Library:UpdateThemeGlobal();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\62\21\225", "\132\153\95\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\160\15\41\254\223\174\165\242\43\35\243\154\232\153\167\11\100", "\192\209\210\110\77\151\186"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\15\35\238", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\182\220\151\63\170\230\178\15\155\187\129\40", "\222\96\233\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\186\169", "\144\217\211\199\127\232\147")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\46\38", "\36\152\79\94\72\181\37\98")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\221\65\62\194\212\83", "\95\183\184\39")]=DEFAULTS.Accent2_H,[LUAOBFUSACTOR_DECRYPT_STR_0("\150\62\235\42\86\129\1\190", "\98\213\95\135\70\52\224")]=function(val)
			Library:UpdateThemeGlobal();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\162\196\114", "\52\158\195\169\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\88\189\49\127\129\39\116\158\116\184\114\87\137\57\116\153\58\244\26\97\131\124", "\235\26\220\82\20\230\85\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\173\232\197", "\20\232\193\137\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\224\240\143\216\174\16\78\10", "\17\66\191\165\198\135\236\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\166\160", "\177\111\207\206\115\159\136\140")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\136\8", "\63\101\233\112\116\180\47")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\62\235\19\237\58\215", "\86\163\91\141\114\152")]=DEFAULTS.Bg_H,[LUAOBFUSACTOR_DECRYPT_STR_0("\112\10\120\127\56\82\8\127", "\90\51\107\20\19")]=function(val)
			Library:UpdateThemeGlobal();
		end});
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\185\245\157\251", "\93\237\144\229\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\93\213\248\24\5\65\16\229\176\10\10\80\16\182\241\12\31\73\24\247\228\16\8\71\25\250\233\80", "\38\117\150\144\121\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\183\231\61\35", "\90\77\219\142")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\11\45\54\94", "\26\134\100\65\89\44\103")]=Theme.TextDark});
		Library:UpdateThemeGlobal();
	end;
	return WindowAPI;
end;
return Library;
