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
local MarketplaceService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\133\124\110\35\22\96\234\79\169\126\121\27\22\102\236\74\171\120", "\35\200\29\28\72\115\20\154"));
local Themes = {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\182\223\216\205\11\49\23", "\84\121\223\177\191\237\76")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\140\95\199\164\53\71\18\230", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\75\4\32\75\67\18\7\110", "\69\41\34\96")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\215\210\7\32\12", "\75\220\163\183\106\98")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\185\136\50\215\22\137\159\54\203\22", "\185\98\218\235\87")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\63\36\227\208\190\238\50\35", "\202\171\92\71\134\190")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\196\52\156", "\232\73\161\76")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\220\90\73\58\186\203\73", "\126\219\185\34\61")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\231\109\102\108\120\248\226\47\193\82\125\108", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\133\231\37\220", "\167\214\137\74\171\120\206\83")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\188\249\60\89\247\176\169\215", "\199\235\144\82\61\152")]=Color3.fromRGB(245, 245, 250),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\31\189\46\5\23\171\9\32", "\75\103\118\217")]=Color3.fromRGB(225, 225, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\64\117\25\155\57", "\126\167\52\16\116\217")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\45\35\133\186\13\207\220\47\50\148", "\156\168\78\64\224\212\121")]=Color3.fromRGB(100, 150, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\237\166\203\9\250\128\192\3", "\174\103\142\197")]=Color3.fromRGB(200, 200, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44", "\152\54\72\63\88\69\62")]=Color3.fromRGB(40, 40, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\193\246\72\240\197\252\87", "\60\180\164\142")]=Color3.fromRGB(100, 100, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\119\54\61\53\226\25\93\125\10\37\40\255", "\114\56\62\101\73\71\141")]=Color3.fromRGB(200, 200, 210)}};
local CurrentTheme = Themes[LUAOBFUSACTOR_DECRYPT_STR_0("\147\224\213\195\248\206\222\202", "\164\216\137\187")];
local ThemeRegistry = {[LUAOBFUSACTOR_DECRYPT_STR_0("\229\239\63\182\169\233\41\245", "\107\178\134\81\210\198\158")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\11\7\134\195\168\57\28\160\225", "\202\88\110\226\166")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\234\27\135\250\232\228", "\170\163\111\226\151")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\37\53\170\44", "\73\113\80\210\88\46\87")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\181\41\213\6\195\128\62\198", "\135\225\76\173\114")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\41\249\170\191\167\184\180", "\199\122\141\216\208\204\221")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\140\222\19\245\118\226\190", "\150\205\189\112\144\24")]={}};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\14\141\177\75\35\141\31", "\112\69\228\223\44\100\232\113");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\208\26\1\210\163\112\146\154\21\20\220\184", "\230\180\127\103\179\214\28");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\158\7\71\71\247\82\229\152\12\91\28\171\14\185\220\87\10\23\179\19\178\212\92\8\17\180\22", "\128\236\101\63\38\132\33");
local function RegisterThemeObj(obj, type)
	if not ThemeRegistry[type] then
		ThemeRegistry[type] = {};
	end
	table.insert(ThemeRegistry[type], obj);
	if (type == LUAOBFUSACTOR_DECRYPT_STR_0("\155\160\31\64\185\252\237\139", "\175\204\201\113\36\214\139")) then
		obj.BackgroundColor3 = CurrentTheme.WindowBG;
	elseif (type == LUAOBFUSACTOR_DECRYPT_STR_0("\116\197\49\217\6\70\222\23\251", "\100\39\172\85\188")) then
		obj.BackgroundColor3 = CurrentTheme.SidebarBG;
	elseif (type == LUAOBFUSACTOR_DECRYPT_STR_0("\132\108\188\141\17\138", "\83\205\24\217\224")) then
		obj.BackgroundColor3 = CurrentTheme.ItemBG;
	elseif (type == LUAOBFUSACTOR_DECRYPT_STR_0("\210\192\213\41", "\93\134\165\173")) then
		obj.TextColor3 = CurrentTheme.Text;
	elseif (type == LUAOBFUSACTOR_DECRYPT_STR_0("\138\247\217\214\30\207\160\117", "\30\222\146\161\162\90\174\210")) then
		obj.TextColor3 = CurrentTheme.TextDark;
	elseif (type == LUAOBFUSACTOR_DECRYPT_STR_0("\214\90\98\5\238\75\99", "\106\133\46\16")) then
		obj.Color = CurrentTheme.UIStrokeColor;
	end
end
Library.SetTheme = function(self, themeName)
	if Themes[themeName] then
		CurrentTheme = Themes[themeName];
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\103\31\71\212\127\109\125", "\32\56\64\19\156\58")] = themeName;
		for _, obj in pairs(ThemeRegistry.WindowBG) do
			TweenService:Create(obj, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\201\230\93\93\224\143\79\198\225\117\85\254\143\72\155", "\224\58\168\133\54\58\146")]=CurrentTheme.WindowBG}):Play();
		end
		for _, obj in pairs(ThemeRegistry.SidebarBG) do
			TweenService:Create(obj, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\123\87\72\246\114\148\136\30\87\82\104\242\121\137\149\88", "\107\57\54\43\157\21\230\231")]=CurrentTheme.SidebarBG}):Play();
		end
		for _, obj in pairs(ThemeRegistry.ItemBG) do
			TweenService:Create(obj, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\249\138\18\254\190\206\192\206\133\21\214\182\208\192\201\216", "\175\187\235\113\149\217\188")]=CurrentTheme.ItemBG}):Play();
		end
		for _, obj in pairs(ThemeRegistry.Text) do
			TweenService:Create(obj, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\192\118\116\51\189\210", "\24\92\207\225\44\131\25")]=CurrentTheme.Text}):Play();
		end
		for _, obj in pairs(ThemeRegistry.TextDark) do
			TweenService:Create(obj, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\127\214\160\88\56\114\71\220\170\31", "\29\43\179\216\44\123")]=CurrentTheme.TextDark}):Play();
		end
		for _, obj in pairs(ThemeRegistry.Strokes) do
			TweenService:Create(obj, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\158\214\44\67\175", "\44\221\185\64")]=CurrentTheme.UIStrokeColor}):Play();
		end
		Library:Save();
	end
end;
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\50\243\73\77\103\4\245\111\74\122", "\19\97\135\40\63")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\157\89\61\63\1\62\186\85\53\50\44\48\186\85\60\53", "\81\206\60\83\91\79"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\122\162\196\126\42", "\196\46\203\176\18\79\163\45")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\39\102\10", "\143\216\66\30\126\68\155")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\221\31\202\209\170\216\239", "\129\202\168\109\171\165\195\183")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\54\89\53\212\219", "\134\66\56\87\184\190\116")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\18\62\29\178\31\226\34\52\40\56\6\181", "\85\92\81\105\219\121\139\65"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\211\188\68\76\122\214\254\178\68\76\115\209", "\191\157\211\48\37\28"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\203\30\246\16\63", "\90\191\127\148\124"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\71\191\17\36\123\134\34\18", "\119\24\231\78")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\189\21\154\101\218\70\2\135\57", "\113\226\77\197\42\188\32")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\5\47\203\134\57\23\248\176", "\213\90\118\148")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\100\23\139\121\75\93\61\177\66", "\45\59\78\212\54")] = object.Position.Y.Offset;
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\19\89\141\141\143\41\227\250\3\89\141", "\144\112\54\227\235\230\78\205");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\152\33\1\251\247\94\189\29\38", "\59\211\72\111\156\176")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\101\142\237\42\123\174", "\77\46\231\131"), LUAOBFUSACTOR_DECRYPT_STR_0("\155\88\164\69\187\80\175\0\136\65\184\78\179\90\177", "\32\218\52\214"), 5);
		return;
	end
	Library:Load();
	if (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\113\40\5\128\212\157\96", "\58\46\119\81\200\145\208\37")] and Themes[Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\20\179\4\132\140\144\19", "\86\75\236\80\204\201\221")]]) then
		CurrentTheme = Themes[Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\77\126\67\173\219\166\87", "\235\18\33\23\229\158")]];
	end
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\185\211\190\85\180\230\174\89", "\219\48\218\161"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\207\120\114\78\252\74\238\209\88", "\128\132\17\28\41\187\47");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\32\7\55\88", "\61\97\82\102\90"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\129\47\162\69\225\69\31\4\169", "\105\204\78\203\43\167\55\126");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	local currentScale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\154\149\22\55\44\55\228\112\137\143", "\49\197\202\67\126\115\100\167")] or 1;
	MainFrame.Size = UDim2.new(0.45 * currentScale, 0, 0.65 * currentScale, 0);
	RegisterThemeObj(MainFrame, LUAOBFUSACTOR_DECRYPT_STR_0("\4\82\219\44\130\87\76\21\124", "\62\87\59\191\73\224\54"));
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\43\221\219\230\6\243\204\233\22", "\169\135\98\154"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.WindowBG),ColorSequenceKeypoint.new(1, CurrentTheme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\94\7\91\239\61\205\217", "\168\171\23\68\52\157\83"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\203\78\192\132\26\31\168\193\95\209", "\231\148\17\149\205\69\77")] or 16);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\142\244\239\69\240\139\162", "\159\224\199\167\155\55"), MainFrame);
	RegisterThemeObj(FrameStroke, LUAOBFUSACTOR_DECRYPT_STR_0("\196\231\46\221\252\246\47", "\178\151\147\92"));
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\212\109\33\2\73\121\152\207\77\38\27\67\89\131\243\95\38\0\77\115\130\233", "\26\236\157\44\82\114\44"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\7\230\82\48\43\246\84\36\61\193\73\43\39\219\79", "\59\74\78\181"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480 * 2, 540 * 2);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\212\66\78\145\48\197\78\85\189", "\211\69\177\58\58"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\158\235\105\224\253\233\187\234\122\254\236\217", "\171\215\133\25\149\137");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\218\51\247\234", "\34\129\168\82\154\143\80\156"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\177\187\39\7\77\108\136\151", "\233\229\210\83\107\40\46");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	RegisterThemeObj(TitleBar, LUAOBFUSACTOR_DECRYPT_STR_0("\242\75\54\211\7\192\80\16\241", "\101\161\34\82\182"));
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\36\126\236\218\230\139\43\230\25", "\78\136\109\57\158\187\130\226"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.SidebarBG),ColorSequenceKeypoint.new(1, CurrentTheme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleBarCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\22\218\254\44\49\252\227", "\145\94\95\153"), TitleBar);
	TitleBarCorner.CornerRadius = UDim.new(0, Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\194\242\33\252\113\133\210\248\58\241", "\215\157\173\116\181\46")] or 16);
	local TitleFix = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\166\138\255\223", "\186\85\212\235\146"), TitleBar);
	TitleFix.Size = UDim2.new(1, 0, 0, 10);
	TitleFix.Position = UDim2.new(0, 0, 1, -10);
	TitleFix.BackgroundTransparency = 1;
	TitleFix.BorderSizePixel = 0;
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\140\23\249\60\194\89\192\132\26", "\56\162\225\118\158\89\142"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\0\216\187\14\217\94\0\204", "\184\60\101\160\207\66"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\26\171\82\155\113\165\89\146", "\220\81\226\28");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	RegisterThemeObj(TitleLabel, LUAOBFUSACTOR_DECRYPT_STR_0("\39\208\154\239", "\167\115\181\226\155\138"));
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\214\39\255\72\89\100\210\246\45\233", "\166\130\66\135\60\27\17"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	RegisterThemeObj(MinBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\109\94\203\120\18\99", "\80\36\42\174\21"));
	RegisterThemeObj(MinBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\122\21\47\110", "\26\46\112\87"));
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\10\136\123\173\177\64\166", "\212\217\67\203\20\223\223\37"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\140\171\217\189\159\167\199\180\137\139\221\182\130\186\129", "\178\218\237\200")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, CurrentTheme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\137\138\211\249\137\152\207\254\159\152\207\234\147\145", "\176\214\213\134")] then
			AnimateButtonColor(MinBtn, CurrentTheme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\174\164\209\173\88\126\225\164", "\57\148\205\214\180\200\54"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\57\223\32\32\98\29\243\18\33\127", "\22\114\157\85\84");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\198\18\195\88\212\189\208\223\28\202", "\200\164\171\115\164\61\150"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\129\203\40\122\176\151\206\38", "\227\222\148\99\37")] or 100;
	KBtn.Size = UDim2.new(0, kSize * 0.8, 0, kSize * 0.8);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\123\115\229\233\54\81\70\196\248\39\91\93\213\246\61\65\70\228\248\58\92\70", "\153\83\50\50\150"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\98\73\88\35\67\132\126\98\78\76\47\112\170\65\88", "\45\61\22\19\124\19\203")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\254\45\38\202\50\95\138\254\42\50\198\1\113\181\196", "\217\161\114\109\149\98\16")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\45\31\19\67\140\91\33\31\0\67\147\114\20\51\61\104", "\20\114\64\88\28\220")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\14\62\249\139\200\255\142\14\56\237\135\251\209\177\52", "\221\81\97\178\212\152\176")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\242\216\54\196\42\226\212\34\194\37\226\225\27\232\31\217", "\122\173\135\125\155")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\187\254\43\134\15\30\251", "\168\228\161\96\217\95\81"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\228\238\27\117\16\122\242\255\7\113\6\109\254\245", "\55\187\177\78\60\79")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local targetKSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\18\241\116\212\117\230\186\8", "\224\77\174\63\139\38\175")] or 100;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\180\78\75\39\144\72\87\32", "\78\228\33\56")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\113\166\2\145\199\113\188", "\229\174\30\210\99")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\224\135\86\232\9\43\26\227\149\65\236\47\60\21\238\159", "\89\123\141\230\49\141\93")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\120\236\9", "\42\147\17\150\108\112")]=UDim2.new(0, targetKSize, 0, targetKSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\171\44\120\226\220\29\167\35\108\247\233\29\163\35\124\254", "\136\111\198\77\31\135")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\0\189\83", "\201\98\105\199\54\221\132\119")]=UDim2.new(0, targetKSize * 0.8, 0, targetKSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\3\144\40\22\60\163\183", "\204\217\108\227\65\98\85")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\204\225\228\56\201\81\205", "\160\62\163\149\133\76")]=0}):Play();
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\233\159\56\6\252\251\137\35\6\238\255\154\40\11", "\163\182\192\109\79")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local targetKSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\11\25\43\255\198\29\28\37", "\149\84\70\96\160")] or 100;
		KBtn.Size = UDim2.new(0, targetKSize, 0, targetKSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\20\12\224\61", "\141\88\102\109"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\128\90\206\117\24\60\71\226\188\93\222\113\19\51\80\211", "\161\211\51\170\16\122\93\53");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	RegisterThemeObj(SidebarContainer, LUAOBFUSACTOR_DECRYPT_STR_0("\200\167\182\45\249\175\160\10\220", "\72\155\206\210"));
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\83\103\26\33\73\113\81", "\83\38\26\52\110"), SidebarContainer);
	RegisterThemeObj(SidebarStroke, LUAOBFUSACTOR_DECRYPT_STR_0("\107\3\53\73\83\18\52", "\38\56\119\71"));
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	local SidebarCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\198\123\217\55\88\246\253", "\54\147\143\56\182\69"), SidebarContainer);
	SidebarCorner.CornerRadius = UDim.new(0, Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\233\190\202\96\224\228\174\202\103\251", "\191\182\225\159\41")] or 16);
	local SidebarFix = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\0\41\88\142", "\162\75\114\72\53\235\231"), SidebarContainer);
	SidebarFix.Size = UDim2.new(1, 0, 0, 10);
	SidebarFix.BackgroundTransparency = 1;
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\63\86\237\95\14\133\50\67\196\65\3\129\57", "\98\236\92\36\130\51"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\32\179\86\188\153\49\189\22\25\174", "\80\196\121\108\218\37\200\213"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\90\50\126\79\10\131\14\116", "\234\96\19\98\31\43\110"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\54\98\198\168\118\130\8\24", "\235\102\127\50\167\204\18"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\179\244\46\65", "\78\48\193\149\67\36"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\55\176\25\69\52\23\142\31", "\33\80\126\224\120"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\173\27\208\126\249\188\23\203\82", "\60\140\200\99\164"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\39\41\176\137\241\22", "\194\231\148\100\70"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\242\183\228\199\77\73", "\168\38\44\161\195\150"), TabBtn);
		RegisterThemeObj(TabBtnStroke, LUAOBFUSACTOR_DECRYPT_STR_0("\179\232\144\121\59\237\165", "\118\224\156\226\22\80\136\214"));
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = CurrentTheme.WindowBG;
				button.TextColor3 = CurrentTheme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\118\252\88\142\81\254\88\146\71\224\90\153", "\224\34\142\57")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\168\201\210\97", "\110\190\199\165\189\19\145\61")]=CurrentTheme.AccentStart}):Play();
			else
				button.BackgroundColor3 = CurrentTheme.SidebarBG;
				button.TextColor3 = CurrentTheme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\249\118\230\152\215\219\249\114\230\136\222", "\167\186\139\23\136\235")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\186\132\2\8", "\109\122\213\232")]=CurrentTheme.UIStrokeColor}):Play();
			end
		end
		RegisterThemeObj(TabBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\221\254\166\53\236\246\176\18\201", "\80\142\151\194"));
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\33\210\121", "\44\99\166\23")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\82\246\36\51", "\196\28\151\73\86\83")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\23\59\31\137\93", "\22\147\99\73\112\226\56\120")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\118\240\250\129\180\124\236\242\171\170\116\239\240", "\237\216\21\130\149"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\189\126\94\88\181", "\62\226\46\63\63\208\169");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\48\121\138\12\25\3\95\252\22\64\151", "\62\133\121\53\227\127\109\79"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\61\2\244\210\170\171\30\19", "\194\112\116\82\149\182\206"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\31\186\77\21\197", "\110\89\200\44\120\160\130")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\194\70\67", "\45\203\163\43\38\35\42\91")]=name});
		TabBtn.MouseButton1Click:Connect(function()
			for _, tabData in ipairs(TabButtons) do
				tabData.Btn.BackgroundColor3 = CurrentTheme.SidebarBG;
				tabData.Btn.TextColor3 = CurrentTheme.TextDark;
				TweenService:Create(tabData.Stroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\151\221\45\148\185\85\192\128\210\32\158", "\52\178\229\188\67\231\201")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\78\92\11\229", "\67\65\33\48\100\151\60")]=CurrentTheme.UIStrokeColor}):Play();
			end
			TabBtn.BackgroundColor3 = CurrentTheme.WindowBG;
			TabBtn.TextColor3 = CurrentTheme.Text;
			TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\235\245\175\214\224\207\230\188\221\253\220\254", "\147\191\135\206\184")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\39\170\206\202", "\210\228\72\198\161\184\51")]=CurrentTheme.AccentStart}):Play();
			for _, pageData in ipairs(Pages) do
				pageData.Frame.Visible = pageData.Name == name;
			end
		end);
		if FirstTab then
			TabBtn.BackgroundColor3 = CurrentTheme.WindowBG;
			TabBtn.TextColor3 = CurrentTheme.Text;
		else
			TabBtn.BackgroundColor3 = CurrentTheme.SidebarBG;
			TabBtn.TextColor3 = CurrentTheme.TextDark;
		end
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\91\242\29\118", "\174\86\41\147\112\19"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\5\149\31\9\14\19\174\87", "\203\59\96\237\107\69\111\113"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			RegisterThemeObj(Label, LUAOBFUSACTOR_DECRYPT_STR_0("\16\19\180\245", "\183\68\118\204\129\81\144"));
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\168\104\240\41\151\26\185\127\234", "\226\110\205\16\132\107"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\195\214\83\229\198\242", "\33\139\163\128\185"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\55\202\69\87\15\219", "\190\55\56\100"), Button);
			RegisterThemeObj(ToggleStroke, LUAOBFUSACTOR_DECRYPT_STR_0("\101\187\46\17\24\230\224", "\147\54\207\92\126\115\131"));
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\34\31", "\30\109\81\85\29\109")) or LUAOBFUSACTOR_DECRYPT_STR_0("\208\87\114", "\156\159\17\52\214\86\190");
				Button.TextColor3 = (val and CurrentTheme.Text) or CurrentTheme.TextDark;
				local targetColor = (val and CurrentTheme.AccentEnd) or CurrentTheme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\140\238\190\183\169\253\178\169\160\235\158\179\162\224\175\239", "\220\206\143\221")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\165\114\33\24\202", "\178\230\29\77\119\184\172")]=((val and CurrentTheme.AccentEnd) or CurrentTheme.UIStrokeColor)}):Play();
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\212\189\30\18\120\246\181\154\15\21\126\253\241", "\152\149\222\106\123\23"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\254\39\248\77\186\201\102\243\77\180\223\42\243\3\161\213\47\229\3\167\212\33\254\87\245\211\41\225\13", "\213\189\70\150\35"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\71\117\5\74", "\104\47\53\20"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\73\153\8\144\14\161\73\141", "\111\195\44\225\124\220"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			RegisterThemeObj(TopLabel, LUAOBFUSACTOR_DECRYPT_STR_0("\236\67\24\103", "\203\184\38\96\19\203"));
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\97\120\76\203", "\174\89\19\25\33"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			RegisterThemeObj(SliderFrame, LUAOBFUSACTOR_DECRYPT_STR_0("\6\6\87\67\213\160", "\107\79\114\50\46\151\231"));
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\143\150\38\152\55\178\210", "\160\89\198\213\73\234\89\215"), SliderFrame).CornerRadius = UDim.new(0, 8);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\88\135\234\215\71\122\177", "\165\40\17\212\158"), SliderFrame);
			RegisterThemeObj(SliderFrameStroke, LUAOBFUSACTOR_DECRYPT_STR_0("\214\205\26\60\45\224\202", "\70\133\185\104\83"));
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\64\92\62\229\5\71\65\38", "\169\100\37\36\74"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			RegisterThemeObj(ValLabel, LUAOBFUSACTOR_DECRYPT_STR_0("\52\130\186\68", "\48\96\231\194"));
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\72\15\32\28", "\227\168\58\110\77\121\184\207"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\21\156\79\163\213\116\183", "\197\27\92\223\32\209\187\17"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\77\194\246\6", "\155\99\63\163"), BarBG);
			Fill.BackgroundColor3 = CurrentTheme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\130\130\171\138\135\195", "\228\226\177\193\237\217"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\153\4\244\53\180\42\227\58\164", "\134\84\208\67"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			UIGradientFill.Rotation = 90;
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\190\135\81\22", "\60\115\204\230"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\243\100\203\59\233\117\235", "\16\135\90\139"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			RegisterThemeObj(Label, LUAOBFUSACTOR_DECRYPT_STR_0("\96\113\30\39", "\24\52\20\102\83\46\52"));
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\42\57\48\45\209\59\53\43\1", "\111\164\79\65\68"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			RegisterThemeObj(MainBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\239\205\134\211\12\205", "\138\166\185\227\190\78"));
			MainBtn.Text = default;
			MainBtn.TextColor3 = CurrentTheme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\93\230\56\64\45\28\217", "\121\171\20\165\87\50\67"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\245\59\171\57\181\14\207\54\190\16\171\3\203\61", "\98\166\88\217\86\217"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\210\228\118\17\130\211\225\248\74\2\148\211\250\250", "\188\150\150\25\97\230");
			Scroll.Size = UDim2.new(1, 0, 0, (isSearchable and 150) or 120);
			Scroll.Position = UDim2.new(0, 0, 1, 5);
			RegisterThemeObj(Scroll, LUAOBFUSACTOR_DECRYPT_STR_0("\233\128\91\7\14\236\200\171\120", "\141\186\233\63\98\108"));
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 8;
			Scroll.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
			Scroll.ScrollBarImageTransparency = 0;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\195\15\185\55\255\239\62", "\69\145\138\76\214"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\69\230\165\128\172\2\92\206\144\134\170\2", "\118\16\175\233\233\223"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\170\134\38\180\226\158\105\142\167\58\181\250\142\115\159\183\60\161\235", "\29\235\228\85\219\142\235")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\209\162\201\85\65\63", "\50\93\180\218\189\23\46\71"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\237\161\90\94\71\212\6\144\234", "\40\190\196\59\44\36\188");
				SearchBox.Text = "";
				RegisterThemeObj(SearchBox, LUAOBFUSACTOR_DECRYPT_STR_0("\21\81\217\185\216\90", "\109\92\37\188\212\154\29"));
				RegisterThemeObj(SearchBox, LUAOBFUSACTOR_DECRYPT_STR_0("\48\234\188\215", "\58\100\143\196\163\81"));
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\107\0\172\45\71\224\28", "\110\122\34\67\195\95\41\133"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\65\180\67\94", "\182\21\209\59\42")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\221\9\3\171\163\67\202\19", "\222\215\55\165\125\65")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\212\222\14\208\212\249\94\35\223", "\42\76\177\166\122\146\161\141"), Scroll);
				ItemBtn.Size = UDim2.new(1, -10, 0, 25);
				ItemBtn.BackgroundTransparency = 1;
				ItemBtn.Text = item;
				RegisterThemeObj(ItemBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\145\143\29\218", "\22\197\234\101\174\25"));
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\25\49\189\200\84\186\195\146\34\58", "\230\77\84\197\188\22\207\183")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\17\222\232\174\180\228\33\246\26", "\85\153\116\166\156\236\193\144"), Scroll);
					ItemBtn.Size = UDim2.new(1, -10, 0, 25);
					ItemBtn.BackgroundTransparency = 1;
					ItemBtn.Text = item;
					RegisterThemeObj(ItemBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\144\229\85\167", "\96\196\128\45\211\132"));
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
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\159\122\82\215", "\184\85\237\27\63\178\207\212"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\92\17\75\36\88\11\90\4", "\63\104\57\105"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			RegisterThemeObj(Label, LUAOBFUSACTOR_DECRYPT_STR_0("\63\130\188\80", "\36\107\231\196"));
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\176\186\147\127\186\186", "\231\61\213\194"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\44\163\41\118\27\237\41\118\17\185\125\123\12\191\56\61\71\227", "\19\105\205\93");
			Input.Text = default;
			RegisterThemeObj(Input, LUAOBFUSACTOR_DECRYPT_STR_0("\128\28\219\140\29\142", "\95\201\104\190\225"));
			RegisterThemeObj(Input, LUAOBFUSACTOR_DECRYPT_STR_0("\155\206\217\218", "\174\207\171\161"));
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\215\46\252\234\217\232\236", "\183\141\158\109\147\152"), Input).CornerRadius = UDim.new(0, 8);
			Input.FocusLost:Connect(function()
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\27\231\1\41", "\108\76\105\134"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\192\169\245\236\254\209\165\238\192", "\174\139\165\209\129"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\154\197\211\199\7\121\125\173\167", "\24\195\211\130\161\166\99\16"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			BtnGradient.Rotation = 45;
			RegisterThemeObj(Btn, LUAOBFUSACTOR_DECRYPT_STR_0("\111\23\236\33\113\49", "\118\38\99\137\76\51"));
			Btn.BackgroundTransparency = 0.5;
			Btn.Text = options.Name;
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextScaled = true;
			Btn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\15\38\29\27\46\248\52", "\64\157\70\101\114\105"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\115\161\189\230", "\112\32\200\199\131")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\31\89\70\189", "\66\76\48\60\216\163\203")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\148\120\254\90", "\68\218\230\25\147\63\174"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.LabelCenter = function(self, text)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\56\82\65\179", "\214\205\74\51\44"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Lab = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\73\250\232\91\251\78\231\240", "\23\154\44\130\156"), Frame);
			Lab.Size = UDim2.new(1, 0, 1, 0);
			Lab.BackgroundTransparency = 1;
			Lab.Text = text;
			Lab.Font = Enum.Font.GothamBold;
			Lab.TextScaled = true;
			RegisterThemeObj(Lab, LUAOBFUSACTOR_DECRYPT_STR_0("\37\163\181\186", "\115\113\198\205\206\86"));
			Lab.ZIndex = 5;
		end;
		Elements.LinkBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\69\255\87\129", "\58\228\55\158"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58\30\162\45", "\85\212\233\176\78\92\205"), Frame);
			Box.Size = UDim2.new(1, -110, 0, 35);
			Box.Position = UDim2.new(0, 0, 0, 10);
			Box.PlaceholderText = options.Link or "";
			Box.Text = options.Link or "";
			RegisterThemeObj(Box, LUAOBFUSACTOR_DECRYPT_STR_0("\99\76\141\239\104\127", "\130\42\56\232"));
			RegisterThemeObj(Box, LUAOBFUSACTOR_DECRYPT_STR_0("\222\176\60\247", "\95\138\213\68\131\32"));
			Box.Font = Enum.Font.Gotham;
			Box.TextScaled = true;
			Box.ZIndex = 5;
			Box.ClearTextOnFocus = false;
			Box.TextEditable = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\1\130\76\100\36\45\179", "\22\74\72\193\35"), Box).CornerRadius = UDim.new(0, 8);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\124\252\76\0\120\230\93\32", "\56\76\25\132"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\114\200\165\45", "\175\62\161\203\70");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, -10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			RegisterThemeObj(Label, LUAOBFUSACTOR_DECRYPT_STR_0("\8\216\219\7", "\85\92\189\163\115"));
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\169\40\44\11\185\36\44\38\162", "\88\73\204\80"), Frame);
			CopyBtn.Size = UDim2.new(0, 100, 0, 35);
			CopyBtn.Position = UDim2.new(1, -100, 0, 10);
			RegisterThemeObj(CopyBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\7\151\21\75\11\253", "\186\78\227\112\38\73"));
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\223\88\237\76\19\86\245\89\246", "\26\156\55\157\53\51");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\241\53\214\170\94\137\202", "\48\236\184\118\185\216"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\148\112\34\206\48\236\184\89\36", "\84\133\221\55\80\175"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			local defaultCopySize = CopyBtn.Size;
			CopyBtn.MouseEnter:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\238\62\163", "\60\221\135\68\198\167")]=(defaultCopySize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			CopyBtn.MouseLeave:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\221\180\226\134", "\185\142\221\152\227\34")]=defaultCopySize}):Play();
			end);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\123\202\71\243\70\55\182", "\151\56\165\55\154\35\83");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\131\76\21\247\224\111\12\224\171", "\142\192\35\101");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\245\121\32\179\229\131\173\4\210\53\28\173\230\154\173\31\218\116\43\175\226", "\118\182\21\73\195\135\236\204"), LUAOBFUSACTOR_DECRYPT_STR_0("\43\61\20\78\11\25\189\11\51\10\89\68\2\243\72\40\18\73\23\77\248\16\57\25\85\16\2\239\70", "\157\104\92\122\32\100\109"), 3);
				end
			end);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\128\180\202\206\52\51\158", "\203\195\198\175\170\93\71\237"));
		local gameName = LUAOBFUSACTOR_DECRYPT_STR_0("\27\69\53\219\94\6\242\110\123\50\212\82\20", "\156\78\43\94\181\49\113");
		pcall(function()
			gameName = MarketplaceService:GetProductInfo(game.PlaceId).Name;
		end);
		CreditsTab:LabelCenter(LUAOBFUSACTOR_DECRYPT_STR_0("\85\233\201\166\81\3", "\25\18\136\164\195\107\35") .. gameName);
		CreditsTab:LabelCenter(LUAOBFUSACTOR_DECRYPT_STR_0("\219\46\187\70\98\168\129\154\241\119\233\99\123\166\196\156\237\59", "\216\136\77\201\47\18\220\161"));
		CreditsTab:Spacer(10);
		CreditsTab:LabelCenter(LUAOBFUSACTOR_DECRYPT_STR_0("\9\229\56\217\7\206\134\109\223\46\200\30\217\144", "\226\77\140\75\186\104\188"));
		CreditsTab:LinkBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\207\221\58", "\47\217\174\176\95")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\148\212\120\9", "\70\216\189\22\98\210\52\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\203\183\151\192\128\144\236\131\218\201\220\172\149\215\148\216\164\200\225\210\251\173\178\226\200\139\135\146", "\179\186\191\195\231")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\62\21\225", "\132\153\95\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\155\78\25\255\223\173\180", "\192\209\210\110\77\151\186"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\15\35\238", "\164\128\99\66\137\159")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\182\221\150\37\164\204", "\222\96\233\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\186\180\11", "\144\217\211\199\127\232\147")]={LUAOBFUSACTOR_DECRYPT_STR_0("\211\38\48\47\149\98\7\74", "\36\152\79\94\72\181\37\98"),LUAOBFUSACTOR_DECRYPT_STR_0("\228\214\72\40", "\95\183\184\39")},[LUAOBFUSACTOR_DECRYPT_STR_0("\145\58\225\39\65\140\22", "\98\213\95\135\70\52\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\170\199\112\20\217\166\199", "\52\158\195\169\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\189\62\120\132\52\120\128", "\235\26\220\82\20\230\85\27")]=function(val)
			Library:SetTheme(val);
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\160\228\199", "\20\232\193\137\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\246\133\149\228\141\27\116\98\151\232\167\238\130\94", "\17\66\191\165\198\135\236\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\163\175\20", "\177\111\207\206\115\159\136\140")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\182\37\61\235\124\124\36\165\53", "\63\101\233\112\116\180\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\50\227", "\86\163\91\141\114\152")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\10\108", "\90\51\107\20\19")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\131\238\40\129\228", "\93\237\144\229\143")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\247\252\21\9\71\22\253", "\38\117\150\144\121\107")]=function(val)
			MainFrame.Size = UDim2.new(0.45 * val, 0, 0.65 * val, 0);
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\18\132\219\19\18\136\205\27\1\158", "\90\77\219\142")] = val;
			Library:Save();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\44\60", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\163\18\54\176\229\236\62\99\151\248\249\53", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\188\7\15", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\181\229\124\156\123\7\116", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\251\243", "\17\108\146\157\232")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\102\194\12", "\200\43\163\116\141\79")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\51\59\130\165\248\247", "\131\223\86\93\227\208\148")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\68\186\186\31\180\224\78", "\213\131\37\214\214\125")]=function(val)
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\25\20\14\128\210\15\17\0", "\129\70\75\69\223")] = val;
			if KBtn.Visible then
				KBtn.Size = UDim2.new(0, val, 0, val);
			end
			Library:Save();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\202\254\236", "\143\38\171\147\137\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\141\172\253\7\234\210\201\194\241\193\2\231\221\197\145\240", "\180\176\226\217\147\99\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\181\46\0", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\136\41\252\126\190\140\127\153\56", "\195\42\215\124\181\33\236"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\80\57", "\152\109\57\87\94\69")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\214\18", "\200\153\183\106\195\222\178\52")]=30,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\230\142\60\92\86\38", "\58\82\131\232\93\41")]=16,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\86\220\25\95\62\128\92", "\95\227\55\176\117\61")]=function(val)
			MainCorner.CornerRadius = UDim.new(0, val);
			TitleBarCorner.CornerRadius = UDim.new(0, val);
			SidebarCorner.CornerRadius = UDim.new(0, val);
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\39\65\22\98\148\42\81\22\101\143", "\203\120\30\67\43")] = val;
			Library:Save();
		end});
	end;
	return WindowAPI;
end;
return Library;
