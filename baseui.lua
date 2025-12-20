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
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\156\114\123\47\31\113\209\70\177", "\35\200\29\28\72\115\20\154")]="L",[LUAOBFUSACTOR_DECRYPT_STR_0("\45\183\212\210\136\2\53\20\186", "\84\121\223\177\191\237\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\83\207\161\47\92\36", "\161\219\54\169\192\90\48\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\9\63\76", "\69\41\34\96")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\214\222\57\1\42\176\198", "\75\220\163\183\106\98")]=1};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\191\143", "\185\98\218\235\87")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\46\38\232\217\175", "\202\171\92\71\134\190")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\196\32\132\38\214", "\232\73\161\76")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\208\79\88", "\126\219\185\34\61")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\220\91\119\112", "\135\108\174\62\18\30\23\147")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\240\43\197", "\167\214\137\74\171\120\206\83")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\252\39\88", "\199\235\144\82\61\152")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\3\171\59\11\19", "\75\103\118\217")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\93\126\31", "\126\167\52\16\116\217")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\38\41\148\177\86\219\218\43\57", "\156\168\78\64\224\212\121")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\35\235\163\207\18\226\177", "\174\103\142\197")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\97\33\81\60\42\73\218\113", "\152\54\72\63\88\69\62")]=Color3.fromRGB(130, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\205\234\89\214\197\252\126\243", "\60\180\164\142")]=Color3.fromRGB(24, 60, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\74\0\36\5\202", "\114\56\62\101\73\71\141")]=Color3.fromRGB(160, 30, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\234\216\193\182\253\138", "\164\216\137\187")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\229\50\183\168\234\89", "\107\178\134\81\210\198\158")]=Color3.fromRGB(50, 205, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\1\133\193\166\61\33\172", "\202\88\110\226\166")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\10\154\227", "\170\163\111\226\151")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\53\170\44\106\54\59\26", "\73\113\80\210\88\46\87")]=Color3.fromRGB(200, 200, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\56\223\29\236\132", "\135\225\76\173\114")]=Color3.fromRGB(218, 165, 32)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\45\228\182\180\163\170\133\61", "\199\122\141\216\208\204\221")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\137\216\22\241\109\250\185", "\150\205\189\112\144\24")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\141\187\73\6\137\3\50\2", "\112\69\228\223\44\100\232\113")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\240\26\1\210\163\112\146", "\230\180\127\103\179\214\28")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\17\90\75\198\102", "\128\236\101\63\38\132\33")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\136\172\23\69\163\231\219", "\175\204\201\113\36\214\139")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\102\207\54\217\10\83\255\33\221\22\83", "\100\39\172\85\188")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\137\125\191\129\38\161\108", "\83\205\24\217\224")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\198\206\56\232\209\232\51\226", "\93\134\165\173")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\154\247\199\195\47\194\166", "\30\222\146\161\162\90\174\210")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\65\119\13\233\75\95\36", "\106\133\46\16")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\124\37\117\253\79\76\76", "\32\56\64\19\156\58")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\205\253\66", "\224\58\168\133\54\58\146")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\125\83\77\252\96\138\147", "\107\57\54\43\157\21\230\231")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\9\225\157\221\221\208", "\175\187\235\113\149\217\188")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\24\170\135\77\246\117\108", "\24\92\207\225\44\131\25")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\250\139\88\9\114\64\214\155\67\23\114\89", "\29\43\179\216\44\123")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\153\220\38\77\168\213\52", "\44\221\185\64")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\245\73\91\122\4\233\92\76", "\19\97\135\40\63")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\154\85\39\55\42\22\188\93\55\50\42\63\186\79", "\81\206\60\83\91\79")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\109\164\194\124\42\209\94", "\196\46\203\176\18\79\163\45")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\158\48\127\19\33\232", "\143\216\66\30\126\68\155")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\136\207\32\202\204\173", "\129\202\168\109\171\165\195\183")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\0\95\4\209\218\17\228\35\74", "\134\66\56\87\184\190\116")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\30\54\32\175\28\230\50", "\85\92\81\105\219\121\139\65")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\206\167\66\74\119\218\238", "\191\157\211\48\37\28")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8\41", "\90\191\127\148\124")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\76\130\54\3\92\134\60\28\107", "\119\24\231\78")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\182\44\167\89", "\113\226\77\197\42\188\32")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\14\25\243\178\54\19\231", "\213\90\118\148")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\112\39\186\81\106\94\32", "\45\59\78\212\54");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\20\83\133\138\147\34\185\190\26\69\140\133", "\144\112\54\227\235\230\78\205");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\167\32\10\241\213\72\253\34\28\243\222", "\59\211\72\111\156\176");
Library.ActiveLoops = {};
Library.MainScale = nil;
Library.CurrentTab = nil;
Library.Music = nil;
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\92\133\251\44\93\148\230\57\71\131\185\98\1\214\179\116\25\213\187\116\25\212\181\124\25\213\176\123", "\77\46\231\131");
local GIFT_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\168\86\174\65\169\71\179\84\179\80\236\15\245\7\229\21\239\0\226\21\233\1", "\32\218\52\214");
local CHRISTMAS_MUSIC_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\92\21\41\169\226\163\64\78\71\19\107\231\190\225\29\9\22\65\103\255\166\230\17", "\58\46\119\81\200\145\208\37");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\24\152\49\190\189\184\36\12\153\57", "\86\75\236\80\204\201\221")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\65\68\121\129\208\132\102\72\113\140\253\138\102\72\120\139", "\235\18\33\23\229\158"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\100\179\213\183\85", "\219\48\218\161")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\100\93", "\128\132\17\28\41\187\47")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\39\20\59\73\8\61\8", "\61\97\82\102\90")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\184\47\169\71\194", "\105\204\78\203\43\167\55\126")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\139\165\55\23\21\13\196\80\177\163\44\16", "\49\197\202\67\126\115\100\167"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\25\84\203\32\134\95\93\54\79\214\38\142", "\62\87\59\191\73\224\54"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\243\3\248\197\226", "\169\135\98\154"))) then
				for flag, value in pairs(decoded) do
					if (flag ~= LUAOBFUSACTOR_DECRYPT_STR_0("\244\72\7\65\239\33\205\197\99\16\92\248\62\205", "\168\171\23\68\52\157\83")) then
						self.Flags[flag] = value;
					end
				end
			end
		end
	end
end;
local function MakeDraggable(topbarobject, object, saveKey)
	local Dragging, DragInput, DragStart, StartPosition;
	topbarobject.InputBegan:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			Dragging = true;
			DragStart = input.Position;
			StartPosition = object.Position;
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					Dragging = false;
					if saveKey then
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\203\73\202\158\38\44\139\241", "\231\148\17\149\205\69\77")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\191\159\248\212\81\249\147\162\211", "\159\224\199\167\155\55")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\200\202\3\225\244\242\48\215", "\178\151\147\92")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\179\196\115\29\20\74\105\137\233", "\26\236\157\44\82\114\44")] = object.Position.Y.Offset;
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
local function ToColor(tbl)
	return Color3.new(tbl.R, tbl.G, tbl.B);
end
local function FromColor(col)
	return {R=col.R,G=col.G,B=col.B};
end
Library.ApplyTheme = function(self, themeName)
	local data = BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\14\43\211\90\63\34\193", "\59\74\78\181")];
	if data then
		Theme.WindowBG = data.WindowBG;
		Theme.SidebarBG = data.SidebarBG;
		Theme.ItemBG = data.ItemBG;
		Theme.AccentStart = data.Accent1;
		Theme.AccentEnd = data.Accent2;
		Theme.ToggleON = data.ToggleON;
		Theme.Text = data.Text;
		Theme.TextDark = data.TextDark;
		Theme.UIStrokeColor = data.Stroke;
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\26\238\121\79\161\55\212\84\78\135\45\212\87\95", "\211\69\177\58\58")] = LUAOBFUSACTOR_DECRYPT_STR_0("\147\224\127\244\252\199\163", "\171\215\133\25\149\137");
	end
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	end
	for _, obj in pairs(Library.ThemeObjects.TitleGradients) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\198\221\59\213\237\58\249\65\245", "\34\129\168\82\154\143\80\156")) then
			obj.BackgroundColor3 = Theme.ItemBG;
		end
	end
	for _, obj in pairs(Library.ThemeObjects.Strokes) do
		obj.Color = Theme.UIStrokeColor;
	end
	for _, obj in pairs(Library.ThemeObjects.Texts) do
		obj.TextColor3 = Theme.Text;
	end
	for _, obj in pairs(Library.ThemeObjects.TextDarks) do
		obj.TextColor3 = Theme.TextDark;
	end
	for _, tab in pairs(Library.ThemeObjects.Tabs) do
		local isActive = tab.Name == Library.CurrentTab;
		if isActive then
			tab.Btn.BackgroundColor3 = Theme.WindowBG;
			tab.Btn.TextColor3 = Theme.Text;
			tab.Stroke.Transparency = 0.3;
			tab.Stroke.Color = Theme.AccentStart;
		else
			tab.Btn.BackgroundColor3 = Theme.SidebarBG;
			tab.Btn.TextColor3 = Theme.TextDark;
			tab.Stroke.Transparency = 0.8;
			tab.Stroke.Color = Theme.UIStrokeColor;
		end
	end
	for _, toggle in pairs(Library.ThemeObjects.Toggles) do
		toggle.Update(Library.Flags[toggle.Flag]);
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\134\189\61\13\65\73\199\143\161\60\5", "\233\229\210\83\107\40\46");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\234\75\60\209\34\196\76\7\255", "\101\161\34\82\182")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\195\4\87\249\238\203", "\78\136\109\57\158\187\130\226"), LUAOBFUSACTOR_DECRYPT_STR_0("\31\51\235\244\63\59\224\177\12\42\247\255\55\49\254", "\145\94\95\153"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\206\6\208\75\185\218\216\29", "\215\157\173\116\181\46"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\30\189\133\245\253\48\186\190\219", "\186\85\212\235\146");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MusicSound = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\142\3\240\61", "\56\162\225\118\158\89\142"), ScreenGui);
	MusicSound.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\100\8\193\188\15\205\79\12\195", "\184\60\101\160\207\66");
	MusicSound.SoundId = CHRISTMAS_MUSIC_ID;
	MusicSound.Volume = 0.5;
	MusicSound.Looped = true;
	MusicSound:Play();
	Library.Music = MusicSound;
	local SnowEmitter = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\125\177\52", "\220\81\226\28"), ScreenGui);
	SnowEmitter.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\32\219\141\236\207\202\26\193\150\254\248", "\167\115\181\226\155\138");
	SnowEmitter.BackgroundTransparency = 1;
	SnowEmitter.Size = UDim2.new(1, 0, 1, 0);
	SnowEmitter.ZIndex = 0;
	SnowEmitter.ClipsDescendants = true;
	task.spawn(function()
		local function CreateSnowflake()
			local flake = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\47\230\91\126\93\199\224\39\235", "\166\130\66\135\60\27\17"), SnowEmitter);
			flake.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\86\72\214\116\35\87\79\218\124\52\30\5\129\35\96\28\27\159\36\104\18\28\152", "\80\36\42\174\21");
			flake.BackgroundTransparency = 1;
			flake.Size = UDim2.new(0, math.random(10, 25), 0, math.random(10, 25));
			flake.Position = UDim2.new(math.random(), 0, -0.1, 0);
			flake.ImageColor3 = Color3.fromRGB(255, 255, 255);
			flake.ImageTransparency = math.random(0.3, 0.7);
			local duration = math.random(5, 10);
			local targetPos = UDim2.new(flake.Position.X.Scale + (math.random(-10, 10) / 100), 0, 1.1, 0);
			local tween = TweenService:Create(flake, TweenInfo.new(duration, Enum.EasingStyle.Linear), {[LUAOBFUSACTOR_DECRYPT_STR_0("\126\31\36\115\90\25\56\116", "\26\46\112\87")]=targetPos,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\44\191\117\171\182\74\186", "\212\217\67\203\20\223\223\37")]=math.random(0, 360)});
			tween:Play();
			tween.Completed:Connect(function()
				flake:Destroy();
			end);
		end
		while ScreenGui.Parent do
			CreateSnowflake();
			task.wait(0.2);
		end
	end);
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\159\169\223\191", "\178\218\237\200"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\155\180\239\222\144\167\231\221\179", "\176\214\213\134");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = false;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\132\133\215\169\90\92", "\57\148\205\214\180\200\54"), MainFrame);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\45\194\18\33\127\33\254\52\56\115", "\22\114\157\85\84")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\52\214\92\242\161\193\197\7", "\200\164\171\115\164\61\150"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\221\32\74\145\176\241\17", "\227\222\148\99\37"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\123\97\226\235\60\89\87", "\153\83\50\50\150"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 2;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\95\82\15\99\174\78\73\68\114\8\122\164\110\82\120\96\8\97\170\68\83\98", "\45\61\22\19\124\19\203"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\59\62\252\24\117\154\206\28\30\225\16\113\176\207\6", "\217\161\114\109\149\98\16"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local GiftImage = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\45\57\123\185\88\19\34\61\112", "\20\114\64\88\28\220"), MainFrame);
	GiftImage.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\9\12\211\167\223\217\187\37", "\221\81\97\178\212\152\176");
	GiftImage.Image = GIFT_DECAL_ID;
	GiftImage.BackgroundTransparency = 1;
	GiftImage.Size = UDim2.new(0, 100, 0, 100);
	GiftImage.Position = UDim2.new(1, -60, 1, -60);
	GiftImage.ZIndex = 10;
	task.spawn(function()
		while GiftImage.Parent do
			TweenService:Create(GiftImage, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\255\232\9\250\14\196\232\19", "\122\173\135\125\155")]=5}):Play();
			task.wait(1);
			TweenService:Create(GiftImage, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\182\206\20\184\43\56\199\138", "\168\228\161\96\217\95\81")]=-5}):Play();
			task.wait(1);
		end
	end);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\212\54\72\13\66\207\197\33\82", "\55\187\177\78\60\79"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\4\192\79\254\82\237\140\34\205\84\238\84", "\224\77\174\63\139\38\175");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\83\89\35\129", "\78\228\33\56"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\250\119\166\15\128\236\127\160", "\229\174\30\210\99");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	TitleBar.ClipsDescendants = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\165\94\255\51\60\9", "\89\123\141\230\49\141\93"), TitleBar).CornerRadius = UDim.new(0, 16);
	local TitleBarHider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\247\1\21", "\42\147\17\150\108\112"), TitleBar);
	TitleBarHider.Size = UDim2.new(1, 0, 0.5, 0);
	TitleBarHider.Position = UDim2.new(0, 0, 0.5, 0);
	TitleBarHider.BackgroundColor3 = Theme.SidebarBG;
	TitleBarHider.BorderSizePixel = 0;
	TitleBarHider.ZIndex = 2;
	local HiderGrad = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\143\10\109\230\236\6\163\35\107", "\136\111\198\77\31\135"), TitleBarHider);
	HiderGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	HiderGrad.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, HiderGrad);
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\32\128\68\188\224\30\172\12\29", "\201\98\105\199\54\221\132\119"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, TitleBarGradient);
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\1\130\38\7\25\173\187\9\143", "\204\217\108\227\65\98\85"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241\0\193\92\198\249", "\160\62\163\149\133\76"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\253\137\35\8\131\241\133\35\111\142\150\152\32\14\240", "\163\182\192\109\79");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\35\24\212\215\33\50\20\207\251", "\149\84\70\96\160"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\46\226\42\8\8\255", "\141\88\102\109"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\145\82\201\123\29\47\90\212\189\87\233\127\22\50\71\146", "\161\211\51\170\16\122\93\53")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\196\145\135\1\196\131\155\6\210\131\155\18\222\138", "\72\155\206\210")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\121\70\11\54\72\93\65\7", "\83\38\26\52\110"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\115\53\50\82\76\24\41\97\77\30", "\38\56\119\71");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\226\89\209\32\116\230\251\76\217\43", "\54\147\143\56\182\69"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\168\222\90\207\211\130\235\123\222\194\136\240\106\208\216\146\235\91\222\223\143\235", "\191\182\225\159\41"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\20\45\3\106\187\168\241\20\42\23\102\136\134\206\46", "\162\75\114\72\53\235\231")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\179\3\111\221\99\45\191\3\124\221\96\1\141\48\65", "\98\236\92\36\130\51")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\155\38\39\133\117\135\134\15\156\38\35\188\67\187\176\36", "\80\196\121\108\218\37\200\213")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\63\76\41\64\123\33\185\63\74\61\76\72\15\134\5", "\234\96\19\98\31\43\110")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\57\32\121\248\156\93\184\57\38\109\232\170\116\152\3\11", "\235\102\127\50\167\204\18")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\111\158\222\28\116\1\99", "\78\48\193\149\67\36"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\15\33\181\49\126\29\55\174\49\108\25\36\165\60", "\33\80\126\224\120")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\211\151\40\251\111\229\178\6", "\60\140\200\99\164")] or DEFAULTS.KSize;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\183\251\23\47\182\142\251\10", "\194\231\148\100\70")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\67\213\162\226\193\73\66", "\168\38\44\161\195\150")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\169\241\131\113\53\220\164\23\142\239\146\119\34\237\184\21\153", "\118\224\156\226\22\80\136\214")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\113\231\67\133", "\224\34\142\57")]=UDim2.new(0, kSize, 0, kSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\247\170\196\218\118\197\79\15\208\180\213\220\97\244\83\13\199", "\110\190\199\165\189\19\145\61")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\226\109\237", "\167\186\139\23\136\235")]=UDim2.new(0, kSize * 0.8, 0, kSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\186\155\4\14\188\135\3", "\109\122\213\232")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\248\182\49\250\254\173\62", "\80\142\151\194")]=0}):Play();
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\60\249\66\101\60\235\94\98\42\235\94\118\38\226", "\44\99\166\23")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\67\200\2\9\0\173\102\242", "\196\28\151\73\86\83")] or DEFAULTS.KSize;
			KBtn.Size = UDim2.new(0, kSize, 0, kSize);
		end
	end;
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\204\60\29\31\133\95\20\115\216\6\48", "\22\147\99\73\112\226\56\120")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\135\74\215\220\178\149\92\204\220\160\145\79\199\209", "\237\216\21\130\149")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\189\113\106\118\143\228\119\172\103\114\118\138\236\122", "\62\226\46\63\63\208\169")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\218\38\126\188\44\4\53\91", "\62\133\121\53\227\127\109\79")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\6\51\248\211", "\194\112\116\82\149\182\206"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\10\161\72\29\194\227\28\26\167\66\12\193\235\0\60\186", "\110\89\200\44\120\160\130");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	SidebarContainer.ClipsDescendants = true;
	local SidebarCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\234\104\73\81\68\62\95", "\45\203\163\43\38\35\42\91"), SidebarContainer);
	SidebarCorner.CornerRadius = UDim.new(0, 16);
	local SidebarHider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\151\221\46\130", "\52\178\229\188\67\231\201"), SidebarContainer);
	SidebarHider.Size = UDim2.new(1, 0, 0.1, 0);
	SidebarHider.BackgroundColor3 = Theme.SidebarBG;
	SidebarHider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarHider);
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\20\104\119\22\246\88\42\36\79\68", "\67\65\33\48\100\151\60"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\206\157\204\225\208\236\171", "\147\191\135\206\184"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\43\180\206\212\95\187\138\47\128\211\217\94\183", "\210\228\72\198\161\184\51"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\96\223\25\96\218\26\72\234\31\102\218", "\174\86\41\147\112\19"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\41\189\10\33\11\24\165\92", "\203\59\96\237\107\69\111\113"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\63\156\224\53\244\222\42\17", "\183\68\118\204\129\81\144"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\40\191\113\233\14", "\226\110\205\16\132\107"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	PagesContainer.ClipsDescendants = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\195\214\83\229\198\242", "\33\139\163\128\185"), PagesContainer).CornerRadius = UDim.new(0, 16);
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\52\223\83\92\13\208\80", "\190\55\56\100"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\170\36\10\49\246\231\66\160\50", "\147\54\207\92\126\115\131"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\24\22\114\31\112\8\35", "\30\109\81\85\29\109"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\103\162\36\209\247\250", "\156\159\17\52\214\86\190"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\253\188\178\189\255\188\174\171\225\190\165", "\220\206\143\221")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\114\33\24\202", "\178\230\29\77\119\184\172")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\193\172\11\21\100\232\244\172\15\21\116\225", "\152\149\222\106\123\23")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\41\250\76\167", "\213\189\70\150\35")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\109\65\122", "\104\47\53\20")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\77\140\25", "\111\195\44\225\124\220")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\82\18\124\160\174", "\203\184\38\96\19\203")]=TabBtnStroke});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\103\119", "\174\89\19\25\33")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\19\95\75", "\107\79\114\50\46\151\231")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\178\167\38\129\60", "\160\89\198\213\73\234\89\215")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\114\166\241\201\68\120\186\249\227\90\112\185\251", "\165\40\17\212\158"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\218\233\9\52\35", "\70\133\185\104\83");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\108\104\35\218\16\105\69\51\198\17\81", "\169\100\37\36\74"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\174\146\81\4\131\171\94\7", "\48\96\231\194"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\72\15\32\28", "\227\168\58\110\77\121\184\207")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\85\61\178\69", "\197\27\92\223\32\209\187\17")]=name});
		if FirstTab then
			Library.CurrentTab = name;
		end
		TabBtn.MouseButton1Click:Connect(function()
			Library.CurrentTab = name;
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\77\194\246\6", "\155\99\63\163"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\182\212\185\153\149\133\128\212\173", "\228\226\177\193\237\217"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\181\59\242\22\165\55\242\59\190", "\134\84\208\67"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\133\165\83\1\162\131\78", "\60\115\204\230"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\19\216\100\245\53\224\117", "\16\135\90\139"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\123\90", "\24\52\20\102\83\46\52")) or LUAOBFUSACTOR_DECRYPT_STR_0("\235\9\7", "\111\164\79\65\68");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.ToggleON) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\228\216\128\213\41\248\201\204\141\218\13\229\202\214\145\141", "\138\166\185\227\190\78")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\232\123\201\56\64", "\121\171\20\165\87\50\67")]=((val and Theme.ToggleON) or Theme.UIStrokeColor)}):Play();
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\40\189\55\173\7", "\98\166\88\217\86\217")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\250\120\6", "\188\150\150\25\97\230")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\251\138\75\11\3\227\154\173\90\12\5\232\222", "\141\186\233\63\98\108"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\210\235\34\184\42\229\170\41\184\36\243\230\41\246\49\249\227\63\246\55\248\237\36\162\101\255\229\59\248", "\69\145\138\76\214"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\86\221\136\132\186", "\118\16\175\233\233\223"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\129\45\175\194\138\127\142\136", "\29\235\228\85\219\142\235"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\198\187\208\114", "\50\93\180\218\189\23\46\71"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\141\120\67\86\210\77\204", "\40\190\196\59\44\36\188"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\108\239\160\232\114\6\57", "\109\92\37\188\212\154\29"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\234\188\215\29\91\6\234\168", "\58\100\143\196\163\81"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\80\34\174\58", "\110\122\34\67\195\95\41\133"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\64\152\120\69\196\123\180\73", "\182\21\209\59\42"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\69\196\16\36", "\222\215\55\165\125\65"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\248\229\21\224\207\232\88", "\42\76\177\166\122\146\161\141"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\34\220\120\114\172\143\11\218", "\22\197\234\101\174\25"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\38\164\209\115", "\230\77\84\197\188\22\207\183"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\17\222\232\160\160\242\48\245", "\85\153\116\166\156\236\193\144"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\229\85\167\198\21\176\244\66\189", "\96\196\128\45\211\132"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\88\80\192\161\177\202", "\184\85\237\27\63\178\207\212"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\90\27\80\4\85\0\81\15\127\27\94\5\92", "\63\104\57\105"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\47\149\171\84\15\136\179\74\56\132\182\75\7\139", "\36\107\231\196");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\129\136\79\187\167\149", "\231\61\213\194"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\17\122\26\185\17\114\16\162\40\103", "\19\105\205\93"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\136\10\205\142\51\188\28\219\162\48\167\28\219\143\43\154\1\196\132", "\95\201\104\190\225")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\206\217\218\141\196\217", "\174\207\171\161"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\222\251\12\225\251\223\163\176\67", "\183\141\158\109\147\152");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\32\197\3\62\7\227\30", "\108\76\105\134"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\223\192\169\245", "\174\139\165\209\129")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\151\182\250\213\228\22\100\108\172\189", "\24\195\211\130\161\166\99\16")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\6\241\56\113\3\82\23\230\34", "\118\38\99\137\76\51"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\201\35\29\6\43\53\233\50\10\28", "\64\157\70\101\114\105")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\116\173\191\247\50\85\188\179\236\30", "\112\32\200\199\131"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\66\93\181\198", "\66\76\48\60\216\163\203"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\131\97\231\115\207\38\191\138", "\68\218\230\25\147\63\174"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88\148\184\62\71\67\184", "\214\205\74\51\44"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\201\73\238\249\116\238\12\203\232\114\247\95\172\178\57", "\23\154\44\130\156");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\143\142\161\36\29\20\180", "\115\113\198\205\206\86"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\84\236\85\136\91\247\84\131\113\236\91\137\82", "\58\228\55\158"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\153\156\220\58\53\137\39\187\153\212\33\43\163\6\183\155\223\34\48", "\85\212\233\176\78\92\205");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\113\171\237\88\86\141\240", "\130\42\56\232"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\156\8\234\83\43\198\180\61\236\85\43", "\95\138\213\68\131\32"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\11\42\178\76\122\63\60\164\96\121\36\60\164\77\98\25\33\187\70", "\22\74\72\193\35")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\124\252\76\14\118\252", "\56\76\25\132"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\109\196\170\52\204\86\143\229\104", "\175\62\161\203\70");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\244\224\28\39\50\216\209", "\85\92\189\163\115"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\29\169\40\44", "\88\73\204\80")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\26\134\8\82\11\207\58\151\31\72", "\186\78\227\112\38\73")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\188\100\248\89\86\121\232\82\249", "\26\156\55\157\53\51"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\191\221\26\220\187\68\204\241\2\220\181\67\194\150\88", "\48\236\184\118\185\216");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\184\79\36\237\33\241\169\88\62", "\84\133\221\55\80\175"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\245\37\171\194", "\60\221\135\68\198\167"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\184\224\151\110\216\236\184\244", "\185\142\221\152\227\34"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238\97\38\227\76\202\89", "\151\56\165\55\154\35\83"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\106\38\225\178\77\0\252", "\142\192\35\101"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\103\40\174\226", "\118\182\21\73\195\135\236\204"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\57\2\84\40\12\255\13\48", "\157\104\92\122\32\100\109"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\163\215\222\31\40\149", "\203\195\198\175\170\93\71\237"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\11\69\42\208\67\81\232\43\83\42\149\89\20\238\43\5\112\155", "\156\78\43\94\181\49\113");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\71\193\231\172\25\77\124\96", "\25\18\136\164\195\107\35"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\63\168\66\119", "\216\136\77\201\47\18\220\161"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\233\51\206\42\201\150\57\227\37", "\226\77\140\75\186\104\188"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\231\247\45\78\189\199\213\49\91", "\47\217\174\176\95"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\244\85\13\160\90\125\52", "\70\216\189\22\98\210\52\24"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\233\214\185\130", "\179\186\191\195\231")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\202\54\2\225", "\132\153\95\120")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\160\15\32\242", "\192\209\210\110\77\151\186"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\17\35\228\250", "\164\128\99\66\137\159"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\140\241\170\44\136\235\187\12", "\222\96\233\137"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\149\178\165\26\132", "\144\217\211\199\127\232\147");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\61\63\37\208", "\36\152\79\94\72\181\37\98"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\221\95\43\251\217\69\58\219", "\95\183\184\39"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\145\54\244\37\91\146\6", "\98\213\95\135\70\52\224");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\166\209\99\118\241\187", "\52\158\195\169\23"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\149\17\123\148\59\126\153", "\235\26\220\82\20\230\85\27"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\188\164\241\214\86\157\181\253\205\122", "\20\232\193\137\162"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\1\208\213\191\167\160\30\127\41", "\17\66\191\165\198\135\236\119");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\134\141\28\237\230\233\195", "\177\111\207\206\115\159\136\140"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\160\55\6\213\75\86\0\135\4", "\63\101\233\112\116\180\47"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\224\52\253\27\253\50\130", "\86\163\91\141\114\152");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\112\4\100\106\122\127\2\122\120", "\90\51\107\20\19");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\174\252\140\255\63\130\241\151\235\125\184\254\132\249\60\132\252\132\237\49\136", "\93\237\144\229\143"), LUAOBFUSACTOR_DECRYPT_STR_0("\54\247\254\23\4\82\85\245\255\9\18\6\26\248\176\13\3\79\6\182\245\1\14\69\0\226\255\11\69", "\38\117\150\144\121\107"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\14\169\235\62\36\175\253", "\90\77\219\142"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\1\57\45", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\224\34\42\180\229\163\18\58\254\177\207\57\57\161\213\230\38", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\188\15\15\22", "\136\126\208\102\104\120")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\91\133\194\76\189", "\49\24\234\174\35\207\50\93")]=Theme.AccentEnd});
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\56\247\229\156", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\203\6\228\60\188\70\194\7\173\10\172\66\215\29\226\33", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\58\52\132\190", "\131\223\86\93\227\208\148")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\74\186\185\15", "\213\131\37\214\214\125")]=Theme.Accent1});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\8\42\40\186", "\129\70\75\69\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\194\224\234\115\253\66\139\192\236\110\249\67\217", "\143\38\171\147\137\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\139\183\248", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\173\59\23\192\227\96\72\215\176\60\4\220\171\43\73\212\190\96\53\219\157\33\50\226\171\123\35\198", "\103\179\217\79")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\178\4\193", "\195\42\215\124\181\33\236")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\81\37\55\54\236\0\88\36\126\0\238\8\87\35", "\152\109\57\87\94\69"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\219\3\164\176", "\200\153\183\106\195\222\178\52")]=Enum.TextXAlignment.Center});
		SettingsTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\28\226\133\56", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\161\86\211\30\90\45\140\66\222\17\29\18\150\68\217\22", "\95\227\55\176\117\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\114\34\76", "\203\120\30\67\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\26\117\226\216\226\8\88\252\208\242", "\185\145\69\45\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\26\31\167\201\134\11", "\188\234\127\121\198")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\51\31\143\58\51\16\136", "\227\88\82\115")]=function(val)
			if Library.Music then
				if val then
					Library.Music:Resume();
				else
					Library.Music:Pause();
				end
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\119\26\162\179", "\19\35\127\218\199\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\243\15\239\25\232\74\164\92\216\5\238\19\233\25", "\130\124\155\106"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\199\255\168\173", "\223\181\171\150\207\195\150\28")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\104\63\229\175\28\64\46", "\105\44\90\131\206")};
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\191\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\252\10\186\92\107\185\78\88\252\11\186\31\55\213\117\83\242\3\187\22", "\26\48\153\102\223\63\31\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\76\236\244", "\147\98\32\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\124\192\223\20\68\78\22\87\215\194\3\91\78", "\43\120\35\131\170\102\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\15\148\162", "\228\52\102\231\214\197\208")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\58\229\115\203\255\135\13", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\223\51\231\147\31\36", "\102\235\186\85\134\230\115\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\13\50\83\112\213\33\92", "\66\55\108\94\63\18\180")]=function(val)
			Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\32\132\145\59\34", "\57\116\237\229\87\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\185\255\238\100\250\74\171\162\173\194\97\235\73\190", "\39\202\209\141\135\23\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\60\7\30\55\246\235", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\181\206\84\255\204\79\193\199\67\247\137\80\142\197\90\247\205\28\133\211\67\251\199\91\193\210\89\247\137\84\142\202\88\246\200\69\146\135", "\60\225\166\49\146\169")});
			Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\11\27\41\43\20\11\59", "\103\79\126\79\74\97"));
		end});
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\142\122\203\103", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\195\222\213\198\172\5\144\217\193\206\219\178\5\251\250\194\194\194\164\65\250", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\54\68\222\38", "\217\151\90\45\185\72\27")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\125\234\23", "\54\163\28\135\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\201\84\143\79\109\49\155\124\129\77\122\38\207\29\161\65\115\39\201", "\31\72\187\61\226\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\10\66\213", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\79\249\200\15\186\145\34\187\124\223\196\23\228", "\113\222\16\186\167\99\213\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\7\232\226", "\150\78\110\155")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\161\192\33\224\177\18\171", "\32\229\165\71\129\196\126\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\156\214\145\141\208", "\181\163\233\164\225\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\138\50\123\82\138\61\124", "\23\48\235\94")]=function(val)
			Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\72\211\204\81\82", "\178\28\186\184\61\55\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\197\85\53\225\26\248\197\222\7\25\228\11\251\208", "\149\164\173\39\92\146\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\40\30\11\31\21\231", "\123\147\71\112\127\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\142\126\84\223\141\131\99\67\140\193\141\114\77\201\201\195", "\38\172\173\226\17")});
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\99\16\33\234", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\189\31\51\182\188\29\46\161\248\61\63\187\189\18\40\248\155\19\48\183\170", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\62\173\71", "\157\59\82\204\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\1\192\245\229\229\193\130\61\50\230\249\253\184", "\209\88\94\131\154\137\138\179"),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\168\215\104", "\66\72\193\164\28\126\67\81")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\41\174\89\51\122\243", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\60\237\33", "\129\237\80\152\68\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\169\8\255\30\22\91\90", "\56\49\200\100\147\124\119")]=function(val)
			Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\55\171\252\201", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\7\176\78\55\27\175\70\55\79\135\81\33\1\182", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\169\233\211\124\185\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\174\70\230\71\159\90\170\73\159\76\170\68\130\74\225\77\137\8", "\40\237\41\138")});
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\243\113\226\236", "\42\167\20\154\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\231\177\86\116\44", "\65\42\158\194\34\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\43\91\11\35", "\142\122\71\50\108\77\141\123")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\59\163\242\29", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\24\58\13\54\244\100\56\41\16\88\6\248\62\31", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\16\206\89", "\218\119\124\175\62\168\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\207\99\251\150\249\82\193", "\164\197\144\40"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\249\164", "\214\227\144\202\235\189")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\164\159", "\92\141\197\231\27\112\211\51")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\250\140\162\196\234\235", "\177\134\159\234\195")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\158\234\51\172\203\188\232\52", "\169\221\139\95\192")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\138\114\58", "\70\190\235\31\95\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\147\236\14\227\247\188\227\25\227\165\137\225\27\234\224", "\133\218\130\122\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\243\226\195", "\88\92\159\131\164\188\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\191\17\152\94\222\216\222\129\34\186", "\189\224\78\223\43\183\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\3\245\132", "\161\78\156\234\118")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\138\182\209", "\188\199\215\169")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\12\89\122\253\240\29", "\136\156\105\63\27")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\56\141\117\56\25\141\122\63", "\84\123\236\25")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\138\167\18", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\23\23\217\45\36\38\13\8\29\199", "\45\67\120\190\74\72\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\46\236\162", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\239\22\169\143\4\220\39\141\141\26", "\232\99\176\66\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\36\46\7\110\129\237", "\76\140\65\72\102\27\237\153")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\214\23\209\210\9\177\70\222\19\192", "\222\42\186\118\178\183\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\254\65\153\78\172\111\143\68\162\10\196", "\234\61\140\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\220\182\126\13\32\222\177", "\111\65\189\218\18")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\124\116\47\58\12\91\163\70\96\30\44", "\207\35\43\123\85\107\60")] = clean;
		end});
		Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\84\175\166\235\108\124\190", "\25\16\202\192\138"));
	end;
	return WindowAPI;
end;
return Library;
