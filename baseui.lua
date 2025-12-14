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
local MarketplaceService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\125\23\48\25\251\68\6\46\19\253\85\37\39\0\232\89\21\39", "\158\48\118\66\114"));
local CoreGui = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\136\43\2\51\84\176\242", "\155\203\68\112\86\19\197"));
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\118\209\55\229\69\106\246", "\152\38\189\86\156\32\24\133"));
local VirtualUser = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\202\94\181\82\233\86\171\115\239\82\181", "\38\156\55\199"));
local RunService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\154\104\114\27\22\102\236\74\171\120", "\35\200\29\28\72\115\20\154"));
local Themes = {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\182\223\216\205\11\49\23", "\84\121\223\177\191\237\76")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\140\95\199\164\53\71\18\230", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\75\4\32\75\67\18\7\110", "\69\41\34\96")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\215\210\7\32\12", "\75\220\163\183\106\98")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\185\136\50\215\22\137\159\54\203\22", "\185\98\218\235\87")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\63\36\227\208\190\238\50\35", "\202\171\92\71\134\190")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\196\52\156", "\232\73\161\76")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\220\90\73\58\186\203\73", "\126\219\185\34\61")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\231\109\102\108\120\248\226\47\193\82\125\108", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\133\231\37\220", "\167\214\137\74\171\120\206\83")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\188\249\60\89\247\176\169\215", "\199\235\144\82\61\152")]=Color3.fromRGB(25, 25, 25),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\31\189\46\5\23\171\9\32", "\75\103\118\217")]=Color3.fromRGB(15, 15, 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\64\117\25\155\57", "\126\167\52\16\116\217")]=Color3.fromRGB(45, 45, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\45\35\133\186\13\207\220\47\50\148", "\156\168\78\64\224\212\121")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\237\166\203\9\250\128\192\3", "\174\103\142\197")]=Color3.fromRGB(20, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44", "\152\54\72\63\88\69\62")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\193\246\72\240\197\252\87", "\60\180\164\142")]=Color3.fromRGB(170, 170, 170),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\119\54\61\53\226\25\93\125\10\37\40\255", "\114\56\62\101\73\71\141")]=Color3.fromRGB(100, 100, 100)}};
local CurrentTheme = Themes[LUAOBFUSACTOR_DECRYPT_STR_0("\147\224\213\195\248\206\222\202", "\164\216\137\187")];
Library.ThemeObjects = {};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\249\239\63\181\129\251\5", "\107\178\134\81\210\198\158");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\60\11\132\199\191\52\26\204\204\185\55\0", "\202\88\110\226\166");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\209\13\154\246\217\208\10\150\254\206\153\64\205\174\154\145\90\211\160\152\145\87\219\160\157\147\88", "\170\163\111\226\151");
local function RegisterThemeUpdate(func)
	table.insert(Library.ThemeObjects, func);
	func(CurrentTheme);
end
local function UpdateAllThemes(themeName)
	if Themes[themeName] then
		CurrentTheme = Themes[themeName];
		for _, func in ipairs(Library.ThemeObjects) do
			pcall(function()
				func(CurrentTheme);
			end);
		end
	end
end
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
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\91\47\125\250\83\71\22\42\96\243\84", "\32\56\64\19\156\58");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\113\193\235\81\125\247\142\111\225", "\224\58\168\133\54\58\146")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\114\95\69\250\64\175", "\107\57\54\43\157\21\230\231"), LUAOBFUSACTOR_DECRYPT_STR_0("\250\135\3\240\184\216\214\155\185\4\251\183\213\193\220", "\175\187\235\113\149\217\188"), 5);
		return;
	end
	Library:Load();
	local savedTheme = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\3\144\181\100\198\84\93\3\156\164\96\198\90\76\25\139", "\24\92\207\225\44\131\25")] or LUAOBFUSACTOR_DECRYPT_STR_0("\96\218\182\75\91\90\78\221", "\29\43\179\216\44\123");
	if Themes[savedTheme] then
		CurrentTheme = Themes[savedTheme];
	end
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\218\50\73\184\215\7\89\180", "\44\221\185\64"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\70\88\84\4\233\125\118", "\19\97\135\40\63");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\78\50\54\42", "\81\206\60\83\91\79"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\99\170\217\124\9\209\76\169\75", "\196\46\203\176\18\79\163\45");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = CurrentTheme.SidebarBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\11\89\12\37\255\230\189\44\106", "\143\216\66\30\126\68\155"), MainFrame);
	MainFrameGradient.Rotation = 90;
	RegisterThemeUpdate(function(theme)
		MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.WindowBG),ColorSequenceKeypoint.new(1, theme.SidebarBG)});
	end);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\225\46\196\215\173\210\243", "\129\202\168\109\171\165\195\183"), MainFrame);
	RegisterThemeUpdate(function(theme)
		local r = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\29\103\2\241\225\38\201\23\118\19\241\248\45", "\134\66\56\87\184\190\116")] or 16;
		MainCorner.CornerRadius = UDim.new(0, r);
	end);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\24\58\175\11\228\42\48", "\85\92\81\105\219\121\139\65"), MainFrame);
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	RegisterThemeUpdate(function(theme)
		FrameStroke.Color = theme.UIStrokeColor;
	end);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\154\113\86\108\218\254\167\98\68\104\214\242\144\95\75\111\203\239\178\89\75\104", "\191\157\211\48\37\28"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\54\199\21\32\218\60\251\18\41\203\13\245\21\52\203", "\90\191\127\148\124"), MainFrame);
	RegisterThemeUpdate(function()
		local scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\71\184\27\62\71\180\13\54\84\162", "\119\24\231\78")] or 1;
		sizeConstraint.MaxSize = Vector2.new(480 * scale, 540 * scale);
		sizeConstraint.MinSize = Vector2.new(240 * scale, 270 * scale);
	end);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\182\40\189\94\254\85\5\150\34\171", "\113\226\77\197\42\188\32"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\19\24\228\160\46\52\248\186\57\29\241\167", "\213\90\118\148");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\60\181\91\72", "\45\59\78\212\54"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\36\95\151\135\131\12\172\226", "\144\112\54\227\235\230\78\205");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = CurrentTheme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\1\40\238\209\95\186\45\1\232", "\59\211\72\111\156\176"), TitleBar);
	TitleBarGradient.Rotation = 90;
	RegisterThemeUpdate(function(theme)
		TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.SidebarBG),ColorSequenceKeypoint.new(1, theme.WindowBG)});
	end);
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\103\138\226\42\75\171\226\47\75\139", "\77\46\231\131"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84\150\85\180\69\182", "\32\218\52\214"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\101\62\31\143\177\151\96\116", "\58\46\119\81\200\145\208\37");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	RegisterThemeUpdate(function(theme)
		TitleLabel.TextColor3 = theme.Text;
	end);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\137\40\184\139\168\34\63\131\62", "\86\75\236\80\204\201\221"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.TextColor3 = CurrentTheme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\71\104\84\138\236\133\119\83", "\235\18\33\23\229\158"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	RegisterThemeUpdate(function(theme)
		MinBtn.BackgroundColor3 = theme.ItemBG;
		MinBtn.TextColor3 = theme.Text;
	end);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\187\194\176\87\168\206\174\94\190\226\180\92\181\211\232", "\219\48\218\161")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, CurrentTheme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\219\78\73\96\228\98\201\202\88\81\96\225\106\196", "\128\132\17\28\41\187\47")] then
			AnimateButtonColor(MinBtn, CurrentTheme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\49\20\63\88\15\21\19\51", "\61\97\82\102\90"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\135\12\190\95\211\88\16\46\185\39", "\105\204\78\203\43\167\55\126");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\167\34\25\22\38\210\69\177\165\45", "\49\197\202\67\126\115\100\167"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\114\254\58\144\83\93\35\105\222\61\137\89\125\56\85\204\61\146\87\87\57\79", "\62\87\59\191\73\224\54"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\216\61\209\246\215\45\201\246\223\61\201\202\230\14\255", "\169\135\98\154")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\244\72\15\107\205\28\251\244\79\27\103\254\50\196\206", "\168\171\23\68\52\157\83")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\203\78\222\146\21\2\180\203\73\202\130\35\43\148\241\101", "\231\148\17\149\205\69\77")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\152\236\196\103\208\179\152\254\196\100\252\129\171\194", "\159\224\199\167\155\55")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\200\204\23\237\199\220\15\237\206\204\19\212\241\224\57\198", "\178\151\147\92")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\179\194\103\13\34\99\73", "\26\236\157\44\82\114\44"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\21\17\224\114\21\3\252\117\3\3\252\97\15\10", "\59\74\78\181")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\26\238\113\101\128\12\235\127", "\211\69\177\58\58")] or 80;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\234\106\252\253\194\184\235", "\171\215\133\25\149\137")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\199\38\251\251\57\243\76", "\34\129\168\82\154\143\80\156")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\172\191\50\12\77\122\155\132\188\32\27\73\92\140\139\177\42", "\233\229\210\83\107\40\46")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\75\40\211", "\101\161\34\82\182")]=UDim2.new(0, kSize + 20, 0, kSize + 20)}):Play();
			task.wait(0.1);
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\219\4\67\251", "\78\136\109\57\158\187\130\226")]=UDim2.new(0, kSize, 0, kSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\23\50\248\246\59\11\235\240\48\44\233\240\44\58\247\242\39", "\145\94\95\153")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\196\14\208", "\215\157\173\116\181\46")]=UDim2.new(0, kSize - 20, 0, kSize - 20)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\187\152\251\206\60\187\133", "\186\85\212\235\146")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\142\2\255\45\231\87\204", "\56\162\225\118\158\89\142")]=0}):Play();
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
	local initialKSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\99\58\235\144\17\241\102\32", "\184\60\101\160\207\66")] or 80;
	KBtn.Size = UDim2.new(0, initialKSize, 0, initialKSize);
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\14\189\73\149\14\175\85\146\24\175\85\134\20\166", "\220\81\226\28")] then
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
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\199\131\246\239", "\167\115\181\226\155\138"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\209\43\227\89\121\112\212\193\45\233\72\122\120\200\231\48", "\166\130\66\135\60\27\17");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = CurrentTheme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\99\233\103\49\64\67\203\123\36", "\80\36\42\174\21"), SidebarContainer);
	SidebarGradient.Rotation = 90;
	RegisterThemeUpdate(function(theme)
		SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.SidebarBG),ColorSequenceKeypoint.new(1, theme.AccentStart)});
	end);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\57\4\110\92\31\60\127", "\26\46\112\87"), SidebarContainer);
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	RegisterThemeUpdate(function(theme)
		SidebarStroke.Color = theme.UIStrokeColor;
	end);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\32\185\123\179\179\76\186\190\5\185\117\178\186", "\212\217\67\203\20\223\223\37"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	RegisterThemeUpdate(function(theme)
		TabBar.ScrollBarImageColor3 = theme.AccentEnd;
	end);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\132\219\169\153\132\211\163\130\189\198", "\178\218\237\200"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\214\209\178\177\239\222\177", "\176\214\213\134"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\132\134\213\172\82\80\250\170", "\57\148\205\214\180\200\54"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\239\52\57\115", "\22\114\157\85\84"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\35\197\89\242\161\202\204", "\200\164\171\115\164\61\150"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\241\27\81\161\171\224\23\74\141", "\227\222\148\99\37"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\123\113\249\235\61\87\64", "\153\83\50\50\150"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\95\64\8\97\164\70\88", "\45\61\22\19\124\19\203"), TabBtn);
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = CurrentTheme.WindowBG;
				button.TextColor3 = CurrentTheme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\0\12\251\17\96\184\211\23\3\246\27", "\217\161\114\109\149\98\16")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\47\52\115\174", "\20\114\64\88\28\220")]=CurrentTheme.AccentStart}):Play();
			else
				button.BackgroundColor3 = CurrentTheme.SidebarBG;
				button.TextColor3 = CurrentTheme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\19\211\186\235\192\188\35\4\220\183\225", "\221\81\97\178\212\152\176")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\232\17\244\8", "\122\173\135\125\155")]=CurrentTheme.UIStrokeColor}):Play();
			end
		end
		RegisterThemeUpdate(function(theme)
			TabBtnStroke.Color = theme.UIStrokeColor;
			local isActive = TabBtn.BackgroundColor3 == theme.WindowBG;
			if isActive then
				TabBtn.BackgroundColor3 = theme.WindowBG;
				TabBtn.TextColor3 = theme.Text;
				TabBtnStroke.Color = theme.AccentStart;
			else
				TabBtn.BackgroundColor3 = theme.SidebarBG;
				TabBtn.TextColor3 = theme.TextDark;
			end
		end);
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\213\14", "\168\228\161\96\217\95\81")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\208\35\89", "\55\187\177\78\60\79")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\205\77\228\74\195\137\35\201\121\249\71\194\133", "\224\77\174\63\139\38\175"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\187\113\89\41\129", "\78\228\33\56");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		RegisterThemeUpdate(function(theme)
			Page.ScrollBarImageColor3 = theme.AccentEnd;
		end);
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\87\158\10\150\218\82\179\26\138\219\106", "\229\174\30\210\99"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\182\80\233\57\48\21\234", "\89\123\141\230\49\141\93"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\247\1\21", "\42\147\17\150\108\112")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\167\32\122", "\136\111\198\77\31\135")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\27\166\91\184", "\201\98\105\199\54\221\132\119"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\9\155\53\46\52\174\188\0", "\204\217\108\227\65\98\85"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			RegisterThemeUpdate(function(theme)
				Label.TextColor3 = theme.Text;
			end);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241\14\213\74\215\250\235", "\160\62\163\149\133\76"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\46\32\209\216\165\31", "\163\182\192\109\79"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\15\51\212\231\59\45\5", "\149\84\70\96\160"), Button);
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\23\40", "\141\88\102\109")) or LUAOBFUSACTOR_DECRYPT_STR_0("\156\117\236", "\161\211\51\170\16\122\93\53");
				Button.TextColor3 = (val and CurrentTheme.Text) or CurrentTheme.TextDark;
				local targetColor = (val and CurrentTheme.AccentEnd) or CurrentTheme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\175\177\35\252\188\189\61\245\170\145\39\247\161\160\123", "\72\155\206\210")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\101\117\88\1\33", "\83\38\26\52\110")]=((val and CurrentTheme.AccentEnd) or CurrentTheme.UIStrokeColor)}):Play();
			end
			RegisterThemeUpdate(function(theme)
				local val = Library.Flags[tFlag];
				Button.TextColor3 = (val and theme.Text) or theme.TextDark;
				Button.BackgroundColor3 = (val and theme.AccentEnd) or theme.ItemBG;
				ToggleStroke.Color = (val and theme.AccentEnd) or theme.UIStrokeColor;
			end);
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\121\20\51\79\87\25\103\98\93\25\46\67\92", "\38\56\119\71"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\208\238\86\216\42\66\179\234\86\215\39\90\246\175\76\222\44\69\179\253\81\209\45\66\179\225\87\193\107", "\54\147\143\56\182\69"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\147\254\68\218", "\191\182\225\159\41"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\23\48\65\167\134\192\46\30", "\162\75\114\72\53\235\231"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			RegisterThemeUpdate(function(theme)
				TopLabel.TextColor3 = theme.Text;
			end);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\46\69\239\86", "\98\236\92\36\130\51"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\47\181\87\166\176\34", "\80\196\121\108\218\37\200\213"), SliderFrame).CornerRadius = UDim.new(0, 8);
			RegisterThemeUpdate(function(theme)
				SliderFrame.BackgroundColor3 = theme.ItemBG;
			end);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\90\49\107\89\1\129\5", "\234\96\19\98\31\43\110"), SliderFrame);
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			RegisterThemeUpdate(function(theme)
				SliderFrameStroke.Color = theme.UIStrokeColor;
			end);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\26\74\211\128\115\137\3\19", "\235\102\127\50\167\204\18"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			RegisterThemeUpdate(function(theme)
				ValLabel.TextColor3 = theme.Text;
			end);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\179\244\46\65", "\78\48\193\149\67\36"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\55\163\23\83\62\27\146", "\33\80\126\224\120"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\186\2\201\89", "\60\140\200\99\164"), BarBG);
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\39\41\176\137\241\22", "\194\231\148\100\70"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\230\177\247\204\79\73\207\183", "\168\38\44\161\195\150"), Fill);
			UIGradientFill.Rotation = 90;
			RegisterThemeUpdate(function(theme)
				Fill.BackgroundColor3 = theme.AccentStart;
				UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.AccentStart),ColorSequenceKeypoint.new(1, theme.AccentEnd)});
			end);
			local function Update(input)
				local SizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1);
				local Value = math.floor(min + ((max - min) * SizeX));
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\238\131\123\53", "\118\224\156\226\22\80\136\214"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\235\65\148\110\239\91\133\78", "\224\34\142\57"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			RegisterThemeUpdate(function(theme)
				Label.TextColor3 = theme.Text;
			end);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\162\221\201\81\228\73\26\209\169", "\110\190\199\165\189\19\145\61"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.Text = default;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\84\231\153\201\223\249", "\167\186\139\23\136\235"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			RegisterThemeUpdate(function(theme)
				MainBtn.BackgroundColor3 = theme.ItemBG;
				MainBtn.TextColor3 = theme.AccentStart;
			end);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\182\154\2\22\185\129\3\29\147\154\12\23\176", "\109\122\213\232"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\202\229\173\32\234\248\181\62\221\244\176\63\226\251", "\80\142\151\194");
			Scroll.Size = UDim2.new(1, 0, 0, (isSearchable and 150) or 120);
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 8;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\239\84\67\17\200\114\94", "\44\99\166\23"), Scroll).CornerRadius = UDim.new(0, 8);
			RegisterThemeUpdate(function(theme)
				Scroll.BackgroundColor3 = theme.SidebarBG;
				Scroll.ScrollBarImageColor3 = theme.AccentEnd;
			end);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\222\5\63\32\176\80\246\48\57\38\176", "\196\28\151\73\86\83"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\210\1\58\31\142\77\12\115\208\12\39\4\135\86\12\69\250\25\44", "\22\147\99\73\112\226\56\120")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\112\250\225\175\183\109", "\237\216\21\130\149"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\177\75\94\77\179\193\16\204\0", "\62\226\46\63\63\208\169");
				SearchBox.Text = "";
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\48\118\140\13\3\42\76", "\62\133\121\53\227\127\109\79"), SearchBox).CornerRadius = UDim.new(0, 6);
				RegisterThemeUpdate(function(theme)
					SearchBox.BackgroundColor3 = theme.ItemBG;
					SearchBox.TextColor3 = theme.Text;
				end);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\36\17\42\225", "\194\112\116\82\149\182\206")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\13\173\84\12\226\247\26\45\167\66", "\110\89\200\44\120\160\130")) then
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
			local function RefreshList(listToUse)
				for _, child in ipairs(Scroll:GetChildren()) do
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\159\198\83\82\97\95\47\89\164\205", "\45\203\163\43\38\35\42\91")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(listToUse) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55\165\188\64\198\138\210", "\52\178\229\188\67\231\201"), Scroll);
					ItemBtn.Size = UDim2.new(1, -10, 0, 25);
					ItemBtn.BackgroundTransparency = 1;
					ItemBtn.Text = item;
					ItemBtn.Font = Enum.Font.Gotham;
					ItemBtn.TextScaled = true;
					ItemBtn.ZIndex = 605;
					ItemBtn.AutoButtonColor = false;
					RegisterThemeUpdate(function(theme)
						ItemBtn.TextColor3 = theme.Text;
					end);
					ItemBtn.MouseButton1Click:Connect(function()
						Library.Flags[dFlag] = item;
						MainBtn.Text = item;
						pcall(options.Callback, item);
						CloseDropdown();
						Library:Save();
					end);
				end
				UpdateCanvas();
			end
			RefreshList(options.List);
			pcall(options.Callback, default);
			local DropdownAPI = {};
			DropdownAPI.Set = function(self, value)
				Library.Flags[dFlag] = value;
				MainBtn.Text = value;
				pcall(options.Callback, value);
				Library:Save();
			end;
			DropdownAPI.Update = function(self, newList)
				RefreshList(newList);
			end;
			return DropdownAPI;
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
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
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			RegisterThemeUpdate(function(theme)
				Label.TextColor3 = theme.Text;
			end);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\45\190\213\250\92\170", "\210\228\72\198\161\184\51"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\19\71\231\21\97\142\34\76\235\4\51\198\51\91\246\94\61\128", "\174\86\41\147\112\19");
			Input.Text = default;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\41\174\4\55\1\20\185", "\203\59\96\237\107\69\111\113"), Input).CornerRadius = UDim.new(0, 8);
			RegisterThemeUpdate(function(theme)
				Input.BackgroundColor3 = theme.ItemBG;
				Input.TextColor3 = theme.Text;
			end);
			Input.FocusLost:Connect(function()
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\4\173\236\52", "\183\68\118\204\129\81\144"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\168\104\240\41\151\26\185\127\234", "\226\110\205\16\132\107"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\199\203\64\239\202\229\215\85", "\33\139\163\128\185"), Btn);
			BtnGradient.Rotation = 45;
			RegisterThemeUpdate(function(theme)
				BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.AccentStart),ColorSequenceKeypoint.new(1, theme.AccentEnd)});
				Btn.BackgroundColor3 = theme.ItemBG;
			end);
			Btn.BackgroundTransparency = 0.5;
			Btn.Text = options.Name;
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextScaled = true;
			Btn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\39\209\69\86\1\204", "\190\55\56\100"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\101\166\38\27", "\147\54\207\92\126\115\131")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\56\47\120", "\30\109\81\85\29\109")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.LinkBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\99\85\187\51", "\156\159\17\52\214\86\190"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\234\165\168\140\224\165", "\220\206\143\221"), Frame);
			Box.Size = UDim2.new(1, -110, 0, 35);
			Box.Position = UDim2.new(0, 0, 0, 10);
			Box.PlaceholderText = options.Link or "";
			Box.Text = options.Link or "";
			Box.Font = Enum.Font.Gotham;
			Box.TextScaled = true;
			Box.ZIndex = 5;
			Box.ClearTextOnFocus = false;
			Box.TextEditable = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\14\24\202\194\215\148", "\178\230\29\77\119\184\172"), Box).CornerRadius = UDim.new(0, 8);
			RegisterThemeUpdate(function(theme)
				Box.BackgroundColor3 = theme.ItemBG;
				Box.TextColor3 = theme.Text;
			end);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\187\18\15\91\249\247\187\6", "\152\149\222\106\123\23"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\241\47\248\72", "\213\189\70\150\35");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, -10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			RegisterThemeUpdate(function(theme)
				Label.TextColor3 = theme.Text;
			end);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\80\108\28\109\64\96\28\64\91", "\104\47\53\20"), Frame);
			CopyBtn.Size = UDim2.new(0, 100, 0, 35);
			CopyBtn.Position = UDim2.new(1, -100, 0, 10);
			CopyBtn.BackgroundColor3 = CurrentTheme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\128\67\145\5\252\35\170\66\138", "\111\195\44\225\124\220");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\111\35\124\185\165\221\84", "\203\184\38\96\19\203"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\90\94\83\207\61\122\124\79\218", "\174\89\19\25\33"), CopyBtn);
			CopyBtnGradient.Rotation = 45;
			RegisterThemeUpdate(function(theme)
				CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.AccentStart),ColorSequenceKeypoint.new(1, theme.AccentEnd)});
				CopyBtn.BackgroundColor3 = theme.ItemBG;
			end);
			local defaultCopySize = CopyBtn.Size;
			CopyBtn.MouseEnter:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\27\72\75", "\107\79\114\50\46\151\231")]=(defaultCopySize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			CopyBtn.MouseLeave:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\10\175\175\44", "\160\89\198\213\73\234\89\215")]=defaultCopySize}):Play();
			end);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\107\126\164\247\192\76\48", "\165\40\17\212\158");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\198\214\24\42\102\201\208\6\56", "\70\133\185\104\83");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\39\73\77\58\203\11\68\86\46\137\49\75\69\60\200\13\73\69\40\197\1", "\169\100\37\36\74"), LUAOBFUSACTOR_DECRYPT_STR_0("\35\134\172\94\15\147\226\83\15\151\187\16\15\137\226\68\8\142\177\16\5\159\167\83\21\147\173\66\78", "\48\96\231\194"), 3);
				end
			end);
		end;
		Elements.Label = function(self, text, alignment)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\72\15\32\28", "\227\168\58\110\77\121\184\207"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 25);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Lab = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\57\167\84\157\218\115\160\119", "\197\27\92\223\32\209\187\17"), Frame);
			Lab.Size = UDim2.new(1, 0, 1, 0);
			Lab.BackgroundTransparency = 1;
			Lab.Text = text;
			Lab.Font = Enum.Font.GothamBold;
			Lab.TextScaled = true;
			Lab.TextXAlignment = alignment or Enum.TextXAlignment.Left;
			RegisterThemeUpdate(function(theme)
				Lab.TextColor3 = theme.Text;
			end);
			return Lab;
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\32\77\198\255\10\75\208", "\155\99\63\163"));
		local success, productInfo = pcall(function()
			return MarketplaceService:GetProductInfo(game.PlaceId);
		end);
		local gameName = (success and productInfo.Name) or LUAOBFUSACTOR_DECRYPT_STR_0("\183\223\170\131\182\147\140\145\134\140\180\129", "\228\226\177\193\237\217");
		CreditsTab:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\19\177\46\227\110\240", "\134\84\208\67") .. gameName, Enum.TextXAlignment.Center);
		CreditsTab:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\32\175\148\85\3\184\198\126\10\246\198\112\26\182\131\120\22\186", "\60\115\204\230"), Enum.TextXAlignment.Center);
		CreditsTab:LinkBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\59\230\117", "\16\135\90\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\125\21\48\65\70\124\20\71\3\33\88\81\106", "\24\52\20\102\83\46\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\38\47\47", "\111\164\79\65\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\205\151\206\61\176\137\150\135\215\61\233\201\203\135\144\41\237\137\235\139\250\32\223\247\203\215\250\59", "\138\166\185\227\190\78")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\117\200\50", "\121\171\20\165\87\50\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\48\188\59\188", "\98\166\88\217\86\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\250\120\6", "\188\150\150\25\97\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\182\107\42\41\192\255\182\108\39\32\200\249\189\122\38", "\141\186\233\63\98\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\227\63\162", "\69\145\138\76\214")]={LUAOBFUSACTOR_DECRYPT_STR_0("\91\198\135\142\255\49\117\193", "\118\16\175\233\233\223"),LUAOBFUSACTOR_DECRYPT_STR_0("\184\138\58\172", "\29\235\228\85\219\142\235")},[LUAOBFUSACTOR_DECRYPT_STR_0("\30\213\182\209\117\79\36\89", "\50\93\180\218\189\23\46\71")]=function(val)
			UpdateAllThemes(val);
			Library:Save();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\165\86\73", "\40\190\196\59\44\36\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\5\254\161\238\105\2\50\5\239\189\224\120\77\116\104\213\186\243\112\4\38\64\216\253", "\109\92\37\188\212\154\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\227\165\196", "\58\100\143\196\163\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\125\8\156\12\96\223\43", "\110\122\34\67\195\95\41\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\184\85", "\182\21\209\59\42")]=40,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\86\221", "\222\215\55\165\125\65")]=120,[LUAOBFUSACTOR_DECRYPT_STR_0("\8\212\192\27\231\205\249", "\42\76\177\166\122\146\161\141")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\134\139\9\194\123\119\166\129", "\22\197\234\101\174\25")]=function(val)
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\53\168\217", "\230\77\84\197\188\22\207\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\61\134\207\143\160\252\48\185\92\244\249\157\180\249\39\252\7\134\206\137\236\223\37\252\26\143", "\85\153\116\166\156\236\193\144"),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\76\180", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\178\78\118\237\156\151\249\25\168", "\184\85\237\27\63\178\207\212"),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\80\7", "\63\104\57\105")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\38\134\188", "\36\107\231\196")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\121\176\164\134\72\185\182", "\231\61\213\194")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\172\49\127\11\172\62\120", "\19\105\205\93")]=function(val)
			Library:Save();
			UpdateAllThemes(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\150\55\234\169\26\132\45\225\178\26\133\45\253\181\26\141", "\95\201\104\190\225")] or LUAOBFUSACTOR_DECRYPT_STR_0("\132\194\207\201\239\236\196\192", "\174\207\171\161"));
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\255\0\246", "\183\141\158\109\147\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\6\243\2\40\0\224\21\108\65\197\3\62\7\227\30\108\59\231\8\37\28\245\69", "\108\76\105\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\201\176\230", "\174\139\165\209\129")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\140\215\232\249\49\95\77\141\151\203\231\255", "\24\195\211\130\161\166\99\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\10\231", "\118\38\99\137\76\51")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\39\29", "\64\157\70\101\114\105")]=30,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\173\161\226\5\76\188", "\112\32\200\199\131")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\80\180\193\170\33\39", "\66\76\48\60\216\163\203")]=function(val)
			UpdateAllThemes(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\133\185\77\219\122\227\1\133\181\92\223\122\237\16\159\162", "\68\218\230\25\147\63\174")] or LUAOBFUSACTOR_DECRYPT_STR_0("\134\35\93\75\246\138\47\93", "\214\205\74\51\44"));
		end});
		UpdateAllThemes(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\197\115\214\212\82\215\105\221\207\82\214\105\193\200\82\222", "\23\154\44\130\156")] or LUAOBFUSACTOR_DECRYPT_STR_0("\58\175\163\169\118\52\20\168", "\115\113\198\205\206\86"));
	end;
	return WindowAPI;
end;
return Library;
