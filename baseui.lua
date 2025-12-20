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
local SoundService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\155\114\105\38\23\71\255\81\190\116\127\45", "\35\200\29\28\72\115\20\154"));
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\45\176\214\216\129\41\31\28\166", "\84\121\223\177\191\237\76")]="L",[LUAOBFUSACTOR_DECRYPT_STR_0("\143\94\204\173\63\126\49\204\190", "\161\219\54\169\192\90\48\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\71\6\36\92\78\20", "\69\41\34\96"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\240\222\16\7", "\75\220\163\183\106\98")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\175\130\4\218\3\182\142", "\185\98\218\235\87")]=1};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\249\57\35", "\202\171\92\71\134\190")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\211\45\134\46\196", "\232\73\161\76")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\220\78\81\17\172", "\126\219\185\34\61")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\199\83\119", "\135\108\174\62\18\30\23\147")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\251\47\206\22", "\167\214\137\74\171\120\206\83")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\233\51\83", "\199\235\144\82\61\152")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\26\172\46", "\75\103\118\217")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\65\98\4\181\27", "\126\167\52\16\116\217")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\39\46\139", "\156\168\78\64\224\212\121")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\230\172\218\2\161\130\220\2\247", "\174\103\142\197")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\45\89\57\48\82\236", "\152\54\72\63\88\69\62")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\227\205\224\88\219\211\204\123", "\60\180\164\142")]=Color3.fromRGB(130, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\87\1\44\37\236\0\122\121", "\114\56\62\101\73\71\141")]=Color3.fromRGB(24, 60, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\253\222\201\154\206", "\164\216\137\187")]=Color3.fromRGB(160, 30, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\229\50\183\168\234\90", "\107\178\134\81\210\198\158")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\13\129\195\164\44\92", "\202\88\110\226\166")]=Color3.fromRGB(50, 205, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\0\133\240\198\198\32\172", "\170\163\111\226\151")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\53\170\44", "\73\113\80\210\88\46\87")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\41\213\6\195\128\62\198", "\135\225\76\173\114")]=Color3.fromRGB(200, 200, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\249\170\191\167\184", "\199\122\141\216\208\204\221")]=Color3.fromRGB(218, 165, 32)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\212\30\244\119\225\143\250", "\150\205\189\112\144\24")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\1\129\185\77\17\132\5", "\112\69\228\223\44\100\232\113")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\22\3\214\180\125\148\246\56", "\230\180\127\103\179\214\28")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\168\0\89\71\241\77\244", "\128\236\101\63\38\132\33")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\189\20\73\148\204", "\175\204\201\113\36\214\139")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\99\201\51\221\17\75\216", "\100\39\172\85\188")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\123\186\133\61\185\75\173\129\33\185", "\83\205\24\217\224")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\194\192\203\60\243\201\217", "\93\134\165\173")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\241\194\199\52\218\151\112\186", "\30\222\146\161\162\90\174\210")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\193\75\118\11\240\66\100", "\106\133\46\16")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\108\47\116\251\86\69\119\14", "\32\56\64\19\156\58")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\126\205\227\87\79\254\148", "\224\58\168\133\54\58\146")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233", "\107\57\54\43\157\21\230\231")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\255\142\23\244\172\208\219", "\175\187\235\113\149\217\188")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\199\120\106\55", "\24\92\207\225\44\131\25")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\111\214\190\77\14\113\95", "\29\43\179\216\44\123")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\240\19\88\175\214\43\73\158\214\44\67\175", "\44\221\185\64")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\37\226\78\94\102\13\243", "\19\97\135\40\63")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\78\50\63\38\52\160\72\32", "\81\206\60\83\91\79")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\122\162\196\126\42\228\95\165\74\162\213\124\59\208", "\196\46\203\176\18\79\163\45")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\155\45\108\16\33\233\252", "\143\216\66\30\126\68\155")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\140\218\12\198\192\176", "\129\202\168\109\171\165\195\183")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\0\95\26\217\215\26", "\134\66\56\87\184\190\116")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\30\54\58\178\29\238\35\52\46", "\85\92\81\105\219\121\139\65")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\223\180\121\81\121\210\238", "\191\157\211\48\37\28")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\236\11\230\19\49\218\12", "\90\191\127\148\124")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\76\130\54\3\107", "\119\24\231\78")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\182\40\189\94\248\65\3\137\62", "\113\226\77\197\42\188\32")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\14\23\246\166", "\213\90\118\148")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\111\33\179\81\65\94\61", "\45\59\78\212\54")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\59\95\141\140\161\43\163", "\144\112\54\227\235\230\78\205");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\183\45\9\253\197\87\167\102\5\239\223\85", "\59\211\72\111\156\176");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\90\143\230\32\75\148\173\39\93\136\237", "\77\46\231\131");
Library.ActiveLoops = {};
Library.MainScale = nil;
Library.CurrentTab = nil;
Library.Music = nil;
Library.SavedVolumes = {};
Library.AudioConnections = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\168\86\174\65\169\71\179\84\179\80\236\15\245\12\239\19\233\12\230\24\232\7\230\17\237\6\238", "\32\218\52\214");
local GIFT_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\92\21\41\169\226\163\64\78\71\19\107\231\190\232\19\9\28\78\99\240\160\226\29\14\26\69\102", "\58\46\119\81\200\145\208\37");
local CHRISTMAS_MUSIC_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\57\142\40\173\186\174\51\63\133\52\246\230\242\103\115\223\104\250\255\234\97\125\216", "\86\75\236\80\204\201\221");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\65\85\118\151\234\142\96\102\98\140", "\235\18\33\23\229\158")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\99\191\207\191\126\181\213\178\86\179\194\186\68\179\206\181", "\219\48\218\161"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\208\120\104\69\222", "\128\132\17\28\41\187\47")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\53\55\30\46", "\61\97\82\102\90")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\59\185\74\211\94\17\7", "\105\204\78\203\43\167\55\126")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\177\171\33\18\22", "\49\197\202\67\126\115\100\167")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\25\84\203\32\134\95\93\54\79\214\38\142", "\62\87\59\191\73\224\54"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\201\13\238\192\225\11\249\200\243\11\245\199", "\169\135\98\154"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\223\118\38\88\248", "\168\171\23\68\52\157\83"))) then
				for flag, value in pairs(decoded) do
					if (flag ~= LUAOBFUSACTOR_DECRYPT_STR_0("\203\78\214\184\55\63\130\250\101\193\165\32\32\130", "\231\148\17\149\205\69\77")) then
						self.Flags[flag] = value;
					end
				end
			end
		end
	end
end;
Library.SetAudioIsolation = function(self, enabled)
	if Library.AudioConnections then
		for _, conn in pairs(Library.AudioConnections) do
			if conn then
				conn:Disconnect();
			end
		end
		Library.AudioConnections = {};
	end
	if enabled then
		local function checkAndMute(obj)
			if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\179\168\210\245\83", "\159\224\199\167\155\55")) and (obj.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\207\254\61\193\218\230\47\219\244", "\178\151\147\92")) and (obj.Volume > 0)) then
				Library.SavedVolumes[obj] = obj.Volume;
				obj.Volume = 0;
			end
		end
		for _, v in pairs(SoundService:GetDescendants()) do
			checkAndMute(v);
		end
		for _, v in pairs(workspace:GetDescendants()) do
			checkAndMute(v);
		end
		local conn1 = workspace.DescendantAdded:Connect(checkAndMute);
		local conn2 = SoundService.DescendantAdded:Connect(checkAndMute);
		table.insert(Library.AudioConnections, conn1);
		table.insert(Library.AudioConnections, conn2);
	else
		if Library.AudioConnections then
			for _, conn in pairs(Library.AudioConnections) do
				if conn then
					conn:Disconnect();
				end
			end
			Library.AudioConnections = {};
		end
		for soundObj, originalVol in pairs(Library.SavedVolumes) do
			if (soundObj and soundObj.Parent) then
				soundObj.Volume = originalVol;
			end
		end
		Library.SavedVolumes = {};
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\179\197\115\1\17\77\118\137", "\26\236\157\44\82\114\44")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\21\22\234\116\44\40\198\94\62", "\59\74\78\181")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\26\232\101\105\176\36\221\95", "\211\69\177\58\58")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\136\220\70\218\239\205\164\224\109", "\171\215\133\25\149\137")] = object.Position.Y.Offset;
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
Library.ApplyTheme = function(self, themeName)
	local data = BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\197\205\52\251\250\60\232", "\34\129\168\82\154\143\80\156")];
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
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\186\141\16\30\90\92\140\139\166\7\3\77\67\140", "\233\229\210\83\107\40\46")] = LUAOBFUSACTOR_DECRYPT_STR_0("\229\71\52\215\16\205\86", "\101\161\34\82\182");
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
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\207\24\80\209\217\232\135\45\252", "\78\136\109\57\158\187\130\226")) then
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\61\48\247\247\55\56\183\251\45\48\247", "\145\94\95\153");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\214\196\26\210\105\178\243\248\61", "\215\157\173\116\181\46")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\30\189\133\245\239\28", "\186\85\212\235\146"), LUAOBFUSACTOR_DECRYPT_STR_0("\227\141\4\251\56\234\65\130\179\3\240\55\231\86\197", "\56\162\225\118\158\89\142"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\6\210\170\39\214\123\16\201", "\184\60\101\160\207\66"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\26\139\114\187\22\135\114\137\24", "\220\81\226\28");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MusicSound = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\218\151\245\238", "\167\115\181\226\155\138"), ScreenGui);
	MusicSound.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\218\47\230\79\86\100\213\235\33", "\166\130\66\135\60\27\17");
	MusicSound.SoundId = CHRISTMAS_MUSIC_ID;
	MusicSound.Volume = 0.5;
	MusicSound.Looped = true;
	MusicSound:Play();
	Library.Music = MusicSound;
	local SnowEmitter = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\88\207\120\53", "\80\36\42\174\21"), ScreenGui);
	SnowEmitter.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\125\30\56\109\107\29\62\110\90\21\37", "\26\46\112\87");
	SnowEmitter.BackgroundTransparency = 1;
	SnowEmitter.Size = UDim2.new(1, 0, 1, 0);
	SnowEmitter.ZIndex = 0;
	SnowEmitter.ClipsDescendants = true;
	task.spawn(function()
		local function CreateSnowflake()
			if not ScreenGui.Parent then
				return;
			end
			local flake = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\46\170\115\186\147\68\182\188\47", "\212\217\67\203\20\223\223\37"), SnowEmitter);
			flake.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\168\143\176\211\169\158\173\198\179\137\242\157\245\219\248\138\235\220\249\138\236\219\254", "\178\218\237\200");
			flake.BackgroundTransparency = 1;
			flake.Size = UDim2.new(0, math.random(8, 20), 0, math.random(8, 20));
			flake.Position = UDim2.new(math.random(), 0, -0.1, 0);
			flake.ImageColor3 = Color3.fromRGB(255, 255, 255);
			flake.ImageTransparency = math.random(0.4, 0.8);
			local duration = math.random(6, 12);
			local targetPos = UDim2.new(flake.Position.X.Scale + (math.random(-10, 10) / 100), 0, 1.1, 0);
			local tween = TweenService:Create(flake, TweenInfo.new(duration, Enum.EasingStyle.Linear), {[LUAOBFUSACTOR_DECRYPT_STR_0("\134\186\245\217\162\188\233\222", "\176\214\213\134")]=targetPos,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\162\162\213\188\95\86\250", "\57\148\205\214\180\200\54")]=math.random(0, 360)});
			tween:Play();
			tween.Completed:Connect(function()
				flake:Destroy();
			end);
		end
		while ScreenGui.Parent do
			CreateSnowflake();
			task.wait(0.4);
		end
	end);
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\239\52\57\115", "\22\114\157\85\84"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\233\202\26\202\123\228\169\201\206", "\200\164\171\115\164\61\150");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = false;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\221\48\70\130\178\241", "\227\222\148\99\37"), MainFrame);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\12\109\117\227\240\0\81\83\250\252", "\153\83\50\50\150")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\95\84\14\114\175\68\88\120\103", "\45\61\22\19\124\19\203"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\59\46\250\16\126\188\211", "\217\161\114\109\149\98\16"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\9\11\104\174\123\25\37", "\20\114\64\88\28\220"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 2;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\40\243\167\232\213\190\37\51\211\160\241\223\158\62\15\193\160\234\209\180\63\21", "\221\81\97\178\212\152\176"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\46\242\0\200\196\18\245\9\217\245\28\242\20\217", "\122\173\135\125\155"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local GiftImage = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\204\1\190\58\29\201\134\196\12", "\168\228\161\96\217\95\81"), MainFrame);
	GiftImage.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\227\220\47\79\8\94\221\197", "\55\187\177\78\60\79");
	GiftImage.Image = GIFT_DECAL_ID;
	GiftImage.BackgroundTransparency = 1;
	GiftImage.Size = UDim2.new(0, 100, 0, 100);
	GiftImage.Position = UDim2.new(1, -60, 1, -60);
	GiftImage.ZIndex = 10;
	task.spawn(function()
		while GiftImage.Parent do
			TweenService:Create(GiftImage, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\31\193\75\234\82\198\143\35", "\224\77\174\63\139\38\175")]=5}):Play();
			task.wait(1.5);
			TweenService:Create(GiftImage, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\182\78\76\47\144\72\87\32", "\78\228\33\56")]=-5}):Play();
			task.wait(1.5);
		end
	end);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\123\170\23\167\219\106\166\12\139", "\229\174\30\210\99"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\50\227\150\68\249\31\53\20\238\141\84\255", "\89\123\141\230\49\141\93");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\247\1\21", "\42\147\17\150\108\112"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\59\175\57\115\226\202\14\180", "\136\111\198\77\31\135");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	TitleBar.ClipsDescendants = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\32\132\89\175\234\18\187", "\201\98\105\199\54\221\132\119"), TitleBar).CornerRadius = UDim.new(0, 16);
	local TitleBarHider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\30\130\44\7", "\204\217\108\227\65\98\85"), TitleBar);
	TitleBarHider.Size = UDim2.new(1, 0, 0.5, 0);
	TitleBarHider.Position = UDim2.new(0, 0, 0.5, 0);
	TitleBarHider.BackgroundColor3 = Theme.SidebarBG;
	TitleBarHider.BorderSizePixel = 0;
	TitleBarHider.ZIndex = 2;
	local HiderGrad = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\234\210\247\45\196\87\198\251\241", "\160\62\163\149\133\76"), TitleBarHider);
	HiderGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	HiderGrad.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, HiderGrad);
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\42\61\194\210\169\8\33\215", "\163\182\192\109\79"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, TitleBarGradient);
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\43\1\199\240\24\39\2\197\249", "\149\84\70\96\160"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\3\21\249\20\7\15\232\52", "\141\88\102\109"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\152\122\228\87\90\26\112\239\243\30\138\72\55\28\102", "\161\211\51\170\16\122\93\53");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\171\170\60\217\187\166\60\244\160", "\72\155\206\210"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\83\119\1\33\72\127\70", "\83\38\26\52\110"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\122\22\36\77\95\5\40\83\86\19\4\73\84\24\53\21", "\38\56\119\71")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\204\208\109\255\26\123\218\193\113\251\12\108\214\203", "\54\147\143\56\182\69")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\130\237\76\218\216\166\234\64", "\191\182\225\159\41"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\0\48\61\65\159\136\204\12\7\33", "\162\75\114\72\53\235\231");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\165\49\69\229\86\32\153\40\80\237\93", "\98\236\92\36\130\51"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\45\169\85\173\182\36\150\24\24\179\74\139\186\62\183\13\30\187\76\166\161", "\80\196\121\108\218\37\200\213"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\63\76\41\64\123\33\185\63\75\61\76\72\15\134\5", "\234\96\19\98\31\43\110")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\57\32\121\248\156\93\184\57\39\109\244\175\115\135\3", "\235\102\127\50\167\204\18")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\111\158\222\28\116\1\99\158\205\28\107\40\86\178\240\55", "\78\48\193\149\67\36")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\15\33\171\39\113\31\45\191\33\126\3\29\129\20\68", "\33\80\126\224\120")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\211\151\40\251\108\195\155\60\253\99\195\174\5\215\89\248", "\60\140\200\99\164")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\184\203\47\25\146\168\199", "\194\231\148\100\70"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\121\115\244\138\201\229\111\98\232\142\223\242\99\104", "\168\38\44\161\195\150")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\195\169\73\3\225\172\19", "\118\224\156\226\22\80\136\214")] or DEFAULTS.KSize;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\225\74\137\86\231\86\142", "\224\34\142\57")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\168\209\220\103\248\82\0", "\110\190\199\165\189\19\145\61")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\230\118\239\142\243\200\234\121\251\155\198\200\238\121\235\146", "\167\186\139\23\136\235")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\188\146\8", "\109\122\213\232")]=UDim2.new(0, kSize, 0, kSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\250\163\55\235\195\176\49\224\228\178\49\252\242\172\51\247", "\80\142\151\194")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\207\109\73", "\44\99\166\23")]=UDim2.new(0, kSize * 0.8, 0, kSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\76\248\58\63\39\173\115\249", "\196\28\151\73\86\83")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\12\61\17\150\81\23\120", "\22\147\99\73\112\226\56\120")]=0}):Play();
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\135\74\215\220\178\149\92\204\220\160\145\79\199\209", "\237\216\21\130\149")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\189\113\116\96\131\192\68\135", "\62\226\46\63\63\208\169")] or DEFAULTS.KSize;
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
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\218\38\97\140\24\10\35\91\206\28\76", "\62\133\121\53\227\127\109\79")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\47\43\7\220\233\131\139\62\61\31\220\236\139\134", "\194\112\116\82\149\182\206")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\6\151\121\49\255\207\39\23\129\97\49\250\199\42", "\110\89\200\44\120\160\130")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\148\252\96\121\112\67\33\72", "\45\203\163\43\38\35\42\91")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\151\221\46\130", "\52\178\229\188\67\231\201"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\18\72\84\1\245\93\49\2\78\94\16\246\85\45\36\83", "\67\65\33\48\100\151\60");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	SidebarContainer.ClipsDescendants = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\206\141\215\225\209\226\188", "\147\191\135\206\184"), SidebarContainer).CornerRadius = UDim.new(0, 16);
	local SidebarHider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\58\167\204\221", "\210\228\72\198\161\184\51"), SidebarContainer);
	SidebarHider.Size = UDim2.new(1, 0, 0.1, 0);
	SidebarHider.BackgroundColor3 = Theme.SidebarBG;
	SidebarHider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarHider);
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\96\212\2\114\202\63\76\253\4", "\174\86\41\147\112\19"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\41\190\31\55\0\26\174", "\203\59\96\237\107\69\111\113"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\21\190\238\61\252\222\42\17\138\243\48\253\210", "\183\68\118\204\129\81\144"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\132\92\237\24\150\34\172\105\235\30\150", "\226\110\205\16\132\107"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\208\216\69\239\202\238\222", "\33\139\163\128\185"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\52\223\83\92\13\208\80", "\190\55\56\100"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\112\189\61\19\22", "\147\54\207\92\126\115\131"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	PagesContainer.ClipsDescendants = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\24\22\114\31\112\8\35", "\30\109\81\85\29\109"), PagesContainer).CornerRadius = UDim.new(0, 16);
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\100\183\50\218\245\241\118", "\156\159\17\52\214\86\190"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\234\165\168\140\250\169\168\161\225", "\220\206\143\221"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\14\24\202\194\215\148", "\178\230\29\77\119\184\172"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\151\57\15\101\247\254\187", "\152\149\222\106\123\23"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\233\52\247\77\166\205\39\228\70\187\222\63", "\213\189\70\150\35")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\108\90\120\7\93", "\104\47\53\20")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\151\94\128\18\175\31\162\94\132\18\191\22", "\111\195\44\225\124\220")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\251\73\12\124\185", "\203\184\38\96\19\203")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\103\119", "\174\89\19\25\33")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\19\95\75", "\107\79\114\50\46\151\231")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\178\167\38\129\60", "\160\89\198\213\73\234\89\215")]=TabBtnStroke});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\106\101\186", "\165\40\17\212\158")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\216\5\54", "\70\133\185\104\83")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\81\86\37\194\1", "\169\100\37\36\74")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\132\176\95\12\139\171\94\7\161\176\81\13\130", "\48\96\231\194"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\247\106\15\42\28", "\227\168\58\110\77\121\184\207");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\21\147\73\162\207\93\164\98\51\170\84", "\197\27\92\223\32\209\187\17"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\118\243\250\7\91\202\245\4", "\155\99\63\163"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\164\195\160\128\188", "\228\226\177\193\237\217")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\177\46\227", "\134\84\208\67")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\190\135\81\22", "\60\115\204\230"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\243\100\203\59\233\117\235", "\16\135\90\139"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\96\113\30\39\108\65\108\64\123\8", "\24\52\20\102\83\46\52"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\6\2\43\29\202\42\51", "\111\164\79\65\68"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\240\176\202\60\229\205\220", "\138\166\185\227\190\78"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\228\90", "\121\171\20\165\87\50\67")) or LUAOBFUSACTOR_DECRYPT_STR_0("\233\30\159", "\98\166\88\217\86\217");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.ToggleON) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\247\122\10\129\206\249\227\119\5\165\211\250\249\107\82", "\188\150\150\25\97\230")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\249\134\83\13\30", "\141\186\233\63\98\108")]=((val and Theme.ToggleON) or Theme.UIStrokeColor)}):Play();
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\196\250\40\183\49\244", "\69\145\138\76\214")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\195\136\142", "\118\16\175\233\233\223")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\170\135\33\178\225\133\61\175\129\59\178\235\143", "\29\235\228\85\219\142\235"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\30\213\180\211\120\90\103\87\51\213\184\209\114\14\51\90\52\199\250\207\126\73\47\70\125\218\181\202\57", "\50\93\180\218\189\23\46\71"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\182\90\65\65", "\40\190\196\59\44\36\188"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\64\196\160\214\124\15\57\73", "\109\92\37\188\212\154\29"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\253\165\206\52", "\58\100\143\196\163\81"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\107\0\172\45\71\224\28", "\110\122\34\67\195\95\41\133"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\64\152\104\94\196\122\186\94", "\182\21\209\59\42"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\221\9\13\191\181\82\201", "\222\215\55\165\125\65"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\195\199\23\247", "\42\76\177\166\122\146\161\141"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\38\193\107\120\160\152", "\22\197\234\101\174\25"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\38\164\209\115", "\230\77\84\197\188\22\207\183"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\61\229\243\158\175\245\39", "\85\153\116\166\156\236\193\144"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\201\106\161\229\4\173\229\67\167", "\96\196\128\45\211\132"), Fill);
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
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\130\188\80\41\146\176\80\4\137", "\36\107\231\196"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\129\136\79\187\167\149", "\231\61\213\194"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\174\47\124\5\161\52\125\14\139\47\114\4\168", "\19\105\205\93"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\141\26\209\145\59\166\31\208\178\60\187\7\210\141", "\95\201\104\190\225");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\226\226\193\189\197\196\220", "\174\207\171\161"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\215\33\250\235\195\193\255\20\252\237\195", "\183\141\158\109\147\152"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\13\11\245\3\32\28\242\9\15\6\232\24\41\7\242\63\37\19\227", "\108\76\105\134")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\192\169\245\236\228\221", "\174\139\165\209\129"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\144\182\227\211\197\11\62\54\237", "\24\195\211\130\161\166\99\16");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\42\202\35\65\24\67\17", "\118\38\99\137\76\51"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\201\35\29\6", "\64\157\70\101\114\105")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\116\173\191\247\50\85\188\179\236\30", "\112\32\200\199\131")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\85\68\172\225\190\54\56\95\82", "\66\76\48\60\216\163\203"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\142\131\97\231\125\219\48\174\137\119", "\68\218\230\25\147\63\174")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88\148\184\62\71\67\184", "\214\205\74\51\44"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\94\227\241\114", "\23\154\44\130\156"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\163\181\186\26\18\19\163\161", "\115\113\198\205\206\86"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78\166\66\234\78\139\89", "\58\228\55\158"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\135\140\220\43\63\185\117\157\157\213\35\47\227\123\250", "\85\212\233\176\78\92\205");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\113\171\237\88\86\141\240", "\130\42\56\232"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\182\54\236\76\51\227\187\35\197\82\62\231\176", "\95\138\213\68\131\32"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\7\61\173\87\127\14\58\174\83\114\37\63\175\112\117\56\39\173\79", "\22\74\72\193\35");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\80\199\87\62\119\225\74", "\56\76\25\132"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\232\135\47\220\74\237\170\63\192\75\213", "\175\62\161\203\70"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\29\223\208\28\57\41\201\198\48\58\50\201\198\29\33\15\212\217\22", "\85\92\189\163\115")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\169\40\44\11\163\40", "\88\73\204\80"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\29\134\17\84\42\210\96\205\94", "\186\78\227\112\38\73");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\126\222\90\65\116\249\69", "\26\156\55\157\53\51"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\184\221\14\205", "\48\236\184\118\185\216")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\209\184\79\36\237\33\241\169\88\62", "\84\133\221\55\80\175")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\253\212\33\170\194\95\169\226\32", "\60\221\135\68\198\167"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\221\184\244\134\65\205\174\148\236\134\79\202\160\243\182", "\185\142\221\152\227\34");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238\97\38\227\76\202\89", "\151\56\165\55\154\35\83"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\81\4\227\165", "\142\192\35\101"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\112\49\183\203\141\174\19\218", "\118\182\21\73\195\135\236\204"), Frame);
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
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\57\2\84\38\24\233\28\51\20", "\157\104\92\122\32\100\109"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\143\236\197\47\41\136\185", "\203\195\198\175\170\93\71\237"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\89\63\216\84", "\156\78\43\94\181\49\113"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\237\220\183\39\66\123\119\228", "\25\18\136\164\195\107\35"), Frame);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\40\177\91\80\179\217", "\216\136\77\201\47\18\220\161"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\8\226\63\223\26\156\150\40\244\63\154\0\217\144\40\162\101\148", "\226\77\140\75\186\104\188");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\231\243\48\93\183\203\194", "\47\217\174\176\95"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\207\119\15\183", "\70\216\189\22\98\210\52\24"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\218\187\147\241\207\203\183\136\221", "\179\186\191\195\231"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\22\63\246\248\59\17\225\247\43", "\132\153\95\120"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\155\45\34\229\212\165\163", "\192\209\210\110\77\151\186"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\211\10\56\236", "\164\128\99\66\137\159")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\128\243\187", "\222\96\233\137")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\161\166\18\141", "\144\217\211\199\127\232\147"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\61\63\37\208", "\36\152\79\94\72\181\37\98"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\221\95\43\251\217\69\58\219", "\95\183\184\39"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\153\62\229\35\88", "\98\213\95\135\70\52\224");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\177\200\122\81", "\52\158\195\169\23"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\185\42\96\170\52\121\142\118", "\235\26\220\82\20\230\85\27"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\172\168\250\193\123\154\165", "\20\232\193\137\162");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\218\221\178\197\131\15", "\17\66\191\165\198\135\236\119"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\134\141\28\237\230\233\195", "\177\111\207\206\115\159\136\140"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\140\8\0\246\90\75\17\134\30", "\63\101\233\112\116\180\47"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\224\52\253\11\184\26\202\53\230", "\86\163\91\141\114\152");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\102\34\87\124\40\93\14\102", "\90\51\107\20\19"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\217\162\253\60\137\249\128\225\41", "\93\237\144\229\143"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\54\249\224\16\14\66\84", "\38\117\150\144\121\107");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\14\180\254\35\109\151\231\52\38", "\90\77\219\142");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\197\8\40\41\78\8\123\244\0\97\12\66\6\108\231\13\45\56\78\11\127", "\26\134\100\65\89\44\103"), LUAOBFUSACTOR_DECRYPT_STR_0("\210\226\62\45\171\229\163\51\44\180\232\163\63\45\228\229\235\57\48\228\244\251\53\32\177\229\236\34\109", "\196\145\131\80\67"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\61\162\3\12\17\252\13", "\136\126\208\102\104\120"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\76\143\214\87", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\241\239\129\97\24\178\223\145\43\76\222\244\146\116\40\247\235", "\17\108\146\157\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\207\29\234\33", "\200\43\163\116\141\79")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\57\49\140\162", "\131\223\86\93\227\208\148")]=Theme.AccentEnd});
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\64\174\162", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\35\55\182\242\50\38\36\172\161\3\47\44\171\232\41\37", "\129\70\75\69\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\199\250\238\114", "\143\38\171\147\137\28")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\141\181\252\17", "\180\176\226\217\147\99\131")]=Theme.Accent1});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\253\184\34\2", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\190\15\214\78\158\167\10\132\25\199\87\137\177", "\195\42\215\124\181\33\236"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\80\57\53", "\152\109\57\87\94\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\195\30\179\173\136\27\231\253\222\25\160\177\192\80\230\254\208\69\145\182\246\90\157\200\197\94\135\171", "\200\153\183\106\195\222\178\52")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\230\144\41", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\95\194\28\78\43\142\86\195\85\120\41\134\89\196", "\95\227\55\176\117\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\114\42\76\165", "\203\120\30\67\43")]=Enum.TextXAlignment.Center});
		SettingsTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\36\64\234", "\185\145\69\45\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\168\30\26\173\219\152\16\12\168\216\202\50\12\181\213\137\95\81\139\201\158\26\10\230\243\158\23\28\180\207\195", "\188\234\127\121\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\62\18\132", "\227\88\82\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\32\130\170\3\96\110\10\169\174\1", "\19\35\127\218\199\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\254\12\227\9\247\30", "\130\124\155\106")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\202\250\163\161\247\127\180", "\223\181\171\150\207\195\150\28")]=function(val)
			if Library.Music then
				if val then
					Library.Music:Resume();
				else
					Library.Music:Pause();
				end
			end
			Library:SetAudioIsolation(val);
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\120\63\251\186", "\105\44\90\131\206")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\232\183\180\13\45\191\166\242\154\7\50\240\242\161", "\94\159\128\210\217\104"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\245\15\184\81", "\26\48\153\102\223\63\31\153")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\38\69\235\242\23\76\249", "\147\98\32\141")};
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\66\238\207", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\3\139\179\166\164\196\96\14\130\187\160\240\204\120\9\132\189\160\180\205", "\228\52\102\231\214\197\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\236\116\205", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\229\22\243\148\1\53\8\159\238\61\227\139\22", "\102\235\186\85\134\230\115\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\5\45\75", "\66\55\108\94\63\18\180")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\136\131\54\50\85\0", "\57\116\237\229\87\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\180\235\230\98\226\83", "\39\202\209\141\135\23\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\50\5\6\48\249\252\56", "\152\159\83\105\106\82")]=function(val)
			Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\165\195\87\243\220\80\149", "\60\225\166\49\146\169"));
		end});
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\27\55\62", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\106\192\103\81\23\250\92\220\127\81\8\169\63\155\95\81\25\177\122\215\58", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\218\196\198\199", "\37\211\182\173\161\169\193")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\59\64\220", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\116\238\1\22\197\121\230\6\67\209\121\167\27\69\131\126\235\29\85\200\121\227\82\82\214\110\238\28\81\131\95\239\0\95\208\104\234\19\69", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\215\92\133", "\31\72\187\61\226\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\57\96\221\75\113\54\240\3\79\215\68\106\117", "\68\163\102\35\178\39\30"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\121\201\211", "\113\222\16\186\167\99\213\227")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\11\253\247\59\2\239", "\150\78\110\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\181\208\53\241\168\27", "\32\229\165\71\129\196\126\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\136\200\141\131\212\192\130", "\181\163\233\164\225\225")]=function(val)
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\138\51\114", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\210\209\78\23\53\215\125\206\205\79\82\115\219\111\154\218\81\88\48\217\121\222\152\89\66\33\219\114\221\152\126\95\33\219\111\206\213\92\68", "\178\28\186\184\61\55\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\193\70\59", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\24\51\16\22\20\225\20\21\19\31\24\231\117", "\123\147\71\112\127\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\196\145\101", "\38\172\173\226\17")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\105\20\42\238\88\29\56", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\180\9\57", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\51\160\76\255\90\49\167", "\157\59\82\204\32")]=function(val)
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\12\59\251\238", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\184\215\104\27\46", "\66\72\193\164\28\126\67\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\32\161\95\40", "\22\135\76\200\56\70")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\49\245\33", "\129\237\80\152\68\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\173\0\230\31\18\24\115\156\42\179\47\30\66\84", "\56\49\200\100\147\124\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\50\190\247", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\48\137\120\23\6\184\66", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\175\233", "\215\182\198\135\167\25")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\72\242", "\40\237\41\138")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\113\252\249\95\203\96", "\42\167\20\154\152")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\105\255\174\78\115\32\73\245", "\65\42\158\194\34\17")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\38\95\9", "\142\122\71\50\108\77\141\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\172\235\29\41\19\163\252\29\123\38\161\254\20\62", "\91\117\194\159\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\60\17\63\31", "\68\122\125\94\120\85\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\35\232\75\193\234\185\22\16\202", "\218\119\124\175\62\168\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\249\70", "\164\197\144\40")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\241\178", "\214\227\144\202\235\189")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\160\129\122\5\191\71", "\92\141\197\231\27\112\211\51")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\254\134\175\211\231\252\129", "\177\134\159\234\195")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\234\50\165", "\169\221\139\95\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\132\120\56\46\35\158\160\122\38", "\70\190\235\31\95\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\238\27\225", "\133\218\130\122\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\192\215\203\219\164\52\57\212\230\221", "\88\92\159\131\164\188\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\43\185\74\194\231\201", "\189\224\78\223\43\183\139")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\240\139\21\196\38\243\134\18\196\60", "\161\78\156\234\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\151\165\204\207\180\247\226\217\190\249\135\146", "\188\199\215\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\8\83\119\234\253\10\84", "\136\156\105\63\27")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\36\179\77\59\28\139\117\49\48\137\96", "\84\123\236\25")] = clean;
		end});
		Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\212\142\172\22\185\185\228", "\213\144\235\202\119\204"));
		Library:SetAudioIsolation(true);
	end;
	return WindowAPI;
end;
return Library;
