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
Library.MuteConnections = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\168\86\174\65\169\71\179\84\179\80\236\15\245\5\230\25\237\6\238\25\237\7\224\17\237\6\229\22", "\32\218\52\214");
local GIFT_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\92\21\41\169\226\163\64\78\71\19\107\231\190\227\22\15\27\67\101\253\162\229", "\58\46\119\81\200\145\208\37");
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
	if enabled then
		local function muteSound(soundObj)
			if (soundObj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\179\168\210\245\83", "\159\224\199\167\155\55")) and (soundObj ~= Library.Music) and (soundObj.Name ~= LUAOBFUSACTOR_DECRYPT_STR_0("\207\254\61\193\218\230\47\219\244", "\178\151\147\92"))) then
				if not Library.SavedVolumes[soundObj] then
					Library.SavedVolumes[soundObj] = soundObj.Volume;
				end
				soundObj.Volume = 0;
			end
		end
		local targets = {workspace,SoundService,game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\190\248\92\62\27\79\123\152\248\72\1\6\67\104\141\250\73", "\26\236\157\44\82\114\44"))};
		for _, service in pairs(targets) do
			for _, obj in pairs(service:GetDescendants()) do
				pcall(function()
					muteSound(obj);
				end);
			end
		end
		local conn = workspace.DescendantAdded:Connect(function(obj)
			if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\25\33\192\85\46", "\59\74\78\181")) then
				task.wait();
				pcall(function()
					muteSound(obj);
				end);
			end
		end);
		table.insert(Library.MuteConnections, conn);
		local conn2 = SoundService.DescendantAdded:Connect(function(obj)
			if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\22\222\79\84\183", "\211\69\177\58\58")) then
				task.wait();
				pcall(function()
					muteSound(obj);
				end);
			end
		end);
		table.insert(Library.MuteConnections, conn2);
	else
		for _, conn in pairs(Library.MuteConnections) do
			conn:Disconnect();
		end
		Library.MuteConnections = {};
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\136\221\70\198\234\202\187\224", "\171\215\133\25\149\137")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\222\240\13\213\233\54\239\71\245", "\34\129\168\82\154\143\80\156")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\186\139\12\56\75\79\133\128", "\233\229\210\83\107\40\46")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\254\123\13\249\3\199\81\55\194", "\101\161\34\82\182")] = object.Position.Y.Offset;
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
	local data = BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\204\8\95\255\206\238\150", "\78\136\109\57\158\187\130\226")];
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
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\1\0\218\228\44\45\252\255\42\11\241\244\51\58", "\145\94\95\153")] = LUAOBFUSACTOR_DECRYPT_STR_0("\217\200\18\212\91\187\233", "\215\157\173\116\181\46");
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
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\18\161\130\221\216\63\177\136\230", "\186\85\212\235\146")) then
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\193\142\24\248\48\233\22\200\146\25\240", "\56\162\225\118\158\89\142");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\119\12\206\168\5\221\82\48\233", "\184\60\101\160\207\66")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\26\139\114\187\4\171", "\220\81\226\28"), LUAOBFUSACTOR_DECRYPT_STR_0("\50\217\144\254\235\195\10\149\176\238\228\201\26\219\133", "\167\115\181\226\155\138"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\33\245\89\126\127\225\247\43", "\166\130\66\135\60\27\17"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\111\67\192\114\23\65\68\251\92", "\80\36\42\174\21");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MusicSound = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\31\34\116\74", "\26\46\112\87"), ScreenGui);
	MusicSound.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\129\46\170\103\146\170\86\189\186", "\212\217\67\203\20\223\223\37");
	MusicSound.SoundId = CHRISTMAS_MUSIC_ID;
	MusicSound.Volume = 0.5;
	MusicSound.Looped = true;
	MusicSound:Play();
	Library.Music = MusicSound;
	local SnowEmitter = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\159\169\223\191", "\178\218\237\200"), ScreenGui);
	SnowEmitter.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\133\187\233\199\147\184\239\196\162\176\244", "\176\214\213\134");
	SnowEmitter.BackgroundTransparency = 1;
	SnowEmitter.Size = UDim2.new(1, 0, 1, 0);
	SnowEmitter.ZIndex = 0;
	SnowEmitter.ClipsDescendants = true;
	task.spawn(function()
		local function CreateSnowflake()
			local flake = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\160\183\211\173\122\88\246\168\186", "\57\148\205\214\180\200\54"), SnowEmitter);
			flake.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\0\255\45\53\101\1\248\33\61\114\72\178\122\98\38\74\172\100\101\46\68\171\99", "\22\114\157\85\84");
			flake.BackgroundTransparency = 1;
			flake.Size = UDim2.new(0, math.random(10, 25), 0, math.random(10, 25));
			flake.Position = UDim2.new(math.random(), 0, -0.1, 0);
			flake.ImageColor3 = Color3.fromRGB(255, 255, 255);
			flake.ImageTransparency = math.random(0.3, 0.7);
			local duration = math.random(5, 10);
			local targetPos = UDim2.new(flake.Position.X.Scale + (math.random(-10, 10) / 100), 0, 1.1, 0);
			local tween = TweenService:Create(flake, TweenInfo.new(duration, Enum.EasingStyle.Linear), {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\196\0\205\73\255\167\202", "\200\164\171\115\164\61\150")]=targetPos,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\251\23\68\151\183\251\13", "\227\222\148\99\37")]=math.random(0, 360)});
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
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\64\83\251\252", "\153\83\50\50\150"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\112\119\122\18\85\185\76\80\115", "\45\61\22\19\124\19\203");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = false;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\59\62\246\3\124\188", "\217\161\114\109\149\98\16"), MainFrame);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\45\31\31\105\181\71\17\33\52\121", "\20\114\64\88\28\220")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\40\245\166\249\212\180\52\15\198", "\221\81\97\178\212\152\176"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\62\244\8\195\226\15", "\122\173\135\125\155"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\232\51\173\45\62\195\129", "\168\228\161\96\217\95\81"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 2;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\248\15\79\63\82\216\197\28\93\59\94\212\242\33\82\60\67\201\208\39\82\59", "\55\187\177\78\60\79"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\231\108\226\92\202\163\34\192\76\255\84\206\137\35\218", "\224\77\174\63\139\38\175"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local GiftImage = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\76\89\41\129\109\89\44\129\77", "\78\228\33\56"), MainFrame);
	GiftImage.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\246\115\179\16\162\199\120\166", "\229\174\30\210\99");
	GiftImage.Image = GIFT_DECAL_ID;
	GiftImage.BackgroundTransparency = 1;
	GiftImage.Size = UDim2.new(0, 100, 0, 100);
	GiftImage.Position = UDim2.new(1, -60, 1, -60);
	GiftImage.ZIndex = 10;
	task.spawn(function()
		while GiftImage.Parent do
			TweenService:Create(GiftImage, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\41\226\146\80\249\52\54\21", "\89\123\141\230\49\141\93")]=5}):Play();
			task.wait(1);
			TweenService:Create(GiftImage, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\193\126\226\13\4\67\252\127", "\42\147\17\150\108\112")]=-5}):Play();
			task.wait(1);
		end
	end);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\163\53\107\197\253\27\178\34\113", "\136\111\198\77\31\135"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\43\7\183\67\169\198\27\166\1\2\162\68", "\201\98\105\199\54\221\132\119");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\30\130\44\7", "\204\217\108\227\65\98\85"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\106\202\225\233\41\226\95\209", "\160\62\163\149\133\76");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	TitleBar.ClipsDescendants = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\46\32\209\216\165\31", "\163\182\192\109\79"), TitleBar).CornerRadius = UDim.new(0, 16);
	local TitleBarHider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\52\1\205\240", "\149\84\70\96\160"), TitleBar);
	TitleBarHider.Size = UDim2.new(1, 0, 0.5, 0);
	TitleBarHider.Position = UDim2.new(0, 0, 0.5, 0);
	TitleBarHider.BackgroundColor3 = Theme.SidebarBG;
	TitleBarHider.BorderSizePixel = 0;
	TitleBarHider.ZIndex = 2;
	local HiderGrad = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\42\255\57\2\4\232\54\18", "\141\88\102\109"), TitleBarHider);
	HiderGrad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	HiderGrad.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, HiderGrad);
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\237\98\27\57\92\196\189\71", "\161\211\51\170\16\122\93\53"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, TitleBarGradient);
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\163\179\47\254\130\179\42\254\162", "\72\155\206\210"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\127\76\26\31\71\120\81\2", "\83\38\26\52\110"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\115\62\9\97\24\48\2\104\24\90\103\126\117\54\20", "\38\56\119\71");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\234\64\194\7\67\231\251\87\216", "\54\147\143\56\182\69"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\168\220\70\205\216\132\237", "\191\182\225\159\41"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\9\19\43\94\140\149\205\62\28\44\118\132\139\205\57\65", "\162\75\114\72\53\235\231")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\179\3\113\203\108\47\165\18\109\207\122\56\169\24", "\98\236\92\36\130\51")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\26\30\191\64\166\146\37\173", "\80\196\121\108\218\37\200\213"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\43\81\23\107\95\1\132\39\102\11", "\234\96\19\98\31\43\110");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\18\83\192\169\80\158\18\11\93\201", "\235\102\127\50\167\204\18"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\136\212\48\84\43\83\181\199\34\80\39\95\130\250\45\87\58\66\160\252\45\80", "\78\48\193\149\67\36"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\15\33\171\39\113\31\45\191\32\126\3\29\129\20\68", "\33\80\126\224\120")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\211\151\40\251\108\195\155\60\252\99\223\171\2\200\89", "\60\140\200\99\164")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\184\203\47\25\146\168\199\59\30\157\168\242\2\53\167\147", "\194\231\148\100\70")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\121\115\234\156\198\231\117\115\248\156\197\203\71\64\196", "\168\38\44\161\195\150")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\195\169\73\0\199\133\41\185\195\173\112\54\251\179\2", "\118\224\156\226\22\80\136\214")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\125\209\114\191\114\193\106", "\224\34\142\57"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\225\152\240\244\76\220\116\32\247\138\236\231\86\213", "\110\190\199\165\189\19\145\61")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\229\212\92\215\184\206\192\238", "\167\186\139\23\136\235")] or DEFAULTS.KSize;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\186\155\4\14\188\135\3", "\109\122\213\232")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\248\182\49\250\254\173\62", "\80\142\151\194")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\203\118\75\6\242\101\77\13\213\103\77\17\195\121\79\26", "\44\99\166\23")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\79\254\51\51", "\196\28\151\73\86\83")]=UDim2.new(0, kSize, 0, kSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\218\14\40\23\135\108\10\119\253\16\57\17\144\93\22\117\234", "\22\147\99\73\112\226\56\120")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\124\248\240", "\237\216\21\130\149")]=UDim2.new(0, kSize * 0.8, 0, kSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\178\65\76\86\164\192\81\140", "\62\226\46\63\63\208\169")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\22\65\130\11\4\32\80", "\62\133\121\53\227\127\109\79")]=0}):Play();
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\47\43\7\220\233\131\139\62\61\31\220\236\139\134", "\194\112\116\82\149\182\206")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\6\151\103\39\243\235\20\60", "\110\89\200\44\120\160\130")] or DEFAULTS.KSize;
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
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\148\252\127\73\68\77\55\72\128\198\82", "\45\203\163\43\38\35\42\91")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\237\186\233\10\184\132\125\252\172\241\10\189\140\112", "\52\178\229\188\67\231\201")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\30\126\101\45\200\113\10\15\104\125\45\205\121\7", "\67\65\33\48\100\151\60")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\224\216\133\231\192\214\253\171", "\147\191\135\206\184")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\58\167\204\221", "\210\228\72\198\161\184\51"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\5\64\247\21\113\207\36\106\252\30\103\207\63\71\246\2", "\174\86\41\147\112\19");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	SidebarContainer.ClipsDescendants = true;
	local SidebarCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\41\174\4\55\1\20\185", "\203\59\96\237\107\69\111\113"), SidebarContainer);
	SidebarCorner.CornerRadius = UDim.new(0, 16);
	local SidebarHider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\4\173\236\52", "\183\68\118\204\129\81\144"), SidebarContainer);
	SidebarHider.Size = UDim2.new(1, 0, 0.1, 0);
	SidebarHider.BackgroundColor3 = Theme.SidebarBG;
	SidebarHider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarHider);
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\132\87\246\10\134\7\168\126\240", "\226\110\205\16\132\107"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\211\205\83\228\200\229", "\33\139\163\128\185"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\91\22\209\91\84\13\208\80\126\22\223\90\93", "\190\55\56\100"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\134\16\23\0\247\223\87\182\51\11\7", "\147\54\207\92\126\115\131"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\24\5\124\9\122\4\63\50", "\30\109\81\85\29\109"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\100\183\50\218\245\241\118", "\156\159\17\52\214\86\190"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\253\188\177\171", "\220\206\143\221"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	PagesContainer.ClipsDescendants = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\14\24\202\194\215\148", "\178\230\29\77\119\184\172"), PagesContainer).CornerRadius = UDim.new(0, 16);
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\151\58\26\115\252\252\176\13", "\152\149\222\106\123\23"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\233\35\238\87\151\200\50\226\76\187", "\213\189\70\150\35"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\87\7\93\91\113\26", "\104\47\53\20"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\101\178\8\174\0\168\73", "\111\195\44\225\124\220"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\236\84\1\125\184\187\217\84\5\125\168\178", "\203\184\38\96\19\203")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\124\117\78\220", "\174\89\19\25\33")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\0\83\64\228\151\10\61\23\92\77\238", "\107\79\114\50\46\151\231")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\169\185\38\152", "\160\89\198\213\73\234\89\215")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\106\101\186", "\165\40\17\212\158")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\216\5\54", "\70\133\185\104\83")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\81\86\37\194\1", "\169\100\37\36\74")]=TabBtnStroke});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\34\147\172", "\48\96\231\194")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\91\3\40", "\227\168\58\110\77\121\184\207")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\72\40\173\79\186\222", "\197\27\92\223\32\209\187\17")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\92\209\244\15\83\202\245\4\121\209\250\14\90", "\155\99\63\163"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\189\225\160\138\188", "\228\226\177\193\237\217");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\153\15\239\39\164\15\231\45\191\54\242", "\134\84\208\67"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\133\182\93\23\168\143\82\20", "\60\115\204\230"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\193\40\234\125\226", "\16\135\90\139")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\117\11\54", "\24\52\20\102\83\46\52")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\61\32\41\10", "\111\164\79\65\68"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\220\155\202\2\235\196\220\143", "\138\166\185\227\190\78"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\255\113\221\35\112\54\13\223\123\203", "\121\171\20\165\87\50\67"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\17\154\57\171\12\195\42", "\98\166\88\217\86\217"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\223\74\21\148\211\253\243", "\188\150\150\25\97\230"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\245\167", "\141\186\233\63\98\108")) or LUAOBFUSACTOR_DECRYPT_STR_0("\222\204\10", "\69\145\138\76\214");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.ToggleON) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\82\206\138\130\184\4\127\218\135\141\156\25\124\192\155\218", "\118\16\175\233\233\223")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\168\139\57\180\252", "\29\235\228\85\219\142\235")]=((val and Theme.ToggleON) or Theme.UIStrokeColor)}):Play();
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\8\196\190\220\99\75", "\50\93\180\218\189\23\46\71")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\168\90\75", "\40\190\196\59\44\36\188")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\29\70\200\189\245\115\77\24\64\210\189\255\121", "\109\92\37\188\212\154\29"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\39\238\170\205\62\78\68\234\170\194\51\86\1\175\176\203\56\73\68\253\173\196\57\78\68\225\171\212\127", "\58\100\143\196\163\81"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\80\34\174\58", "\110\122\34\67\195\95\41\133"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\65\180\67\94\250\116\179\94\70", "\182\21\209\59\42"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\69\196\16\36", "\222\215\55\165\125\65"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\248\229\21\224\207\232\88", "\42\76\177\166\122\146\161\141"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\54\218\107\121\174\143", "\22\197\234\101\174\25"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\49\189\200\90\174\213\131\33", "\230\77\84\197\188\22\207\183"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\6\199\241\137", "\85\153\116\166\156\236\193\144"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\201\110\188\246\14\161\242", "\96\196\128\45\211\132"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\159\122\82\215", "\184\85\237\27\63\178\207\212"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\112\42\80\26\87\12\77", "\63\104\57\105"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\174\131\86\10\131\173\65\5\147", "\36\107\231\196"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\167\163\138\88", "\231\61\213\194"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\168\37\103\37\172\63\118\5", "\19\105\205\93"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\13\198\149\29\188\28\202\142\49", "\95\201\104\190\225"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\226\226\193\189\197\196\220", "\174\207\171\161"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\253\31\252\244\219\228\240\10\213\234\214\224\251", "\183\141\158\109\147\152"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\8\27\233\28\40\6\241\2\31\10\244\3\32\5", "\108\76\105\134");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\236\146\238\220\229\192\163", "\174\139\165\209\129"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\154\206\200\213\23\92\121\186\188\247\213", "\24\195\211\130\161\166\99\16"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\103\1\250\35\95\3\82\6\202\35\93\2\67\13\253\31\90\12\67", "\118\38\99\137\76\51")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\35\29\6\43\47\229", "\64\157\70\101\114\105"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\115\173\166\241\19\72\230\233\173", "\112\32\200\199\131");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\121\127\183\209\165\39\62", "\66\76\48\60\216\163\203"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\142\131\97\231", "\68\218\230\25\147\63\174")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88\148\184\62\71\67\184", "\214\205\74\51\44")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\73\250\232\85\239\88\246\243\121", "\23\154\44\130\156"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\37\163\181\186\20\6\5\178\162\160", "\115\113\198\205\206\86")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78\166\66\234\78\139\89", "\58\228\55\158"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\146\155\209\35\57", "\85\212\233\176\78\92\205"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\93\144\246\102\89\138\231\70", "\130\42\56\232"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\176\60\247\98\42\254\161\43\237", "\95\138\213\68\131\32"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\25\45\173\70\117\62\104\136\87\115\39\59\239\13\56", "\22\74\72\193\35");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\80\199\87\62\119\225\74", "\56\76\25\132"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\194\185\41\195\82\200\165\33\233\76\192\166\35", "\175\62\161\203\70"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\17\200\207\7\60\24\207\204\3\49\51\202\205\32\54\46\210\207\31", "\85\92\189\163\115");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\133\19\55\59\162\53\42", "\88\73\204\80"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\170\60\79\58\206\2\130\9\73\60\206", "\186\78\227\112\38\73"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\221\85\238\90\95\111\232\82\222\90\93\110\249\89\233\102\90\96\249", "\26\156\55\157\53\51")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\221\14\205\154\95\148", "\48\236\184\118\185\216"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\214\184\86\34\204\60\171\243\25", "\84\133\221\55\80\175");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\206\7\169\213\82\184\245", "\60\221\135\68\198\167"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\218\184\224\151", "\185\142\221\152\227\34")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238\97\38\227\76\202\89", "\151\56\165\55\154\35\83")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\224\112\0\226\165\64\17\235\164", "\142\192\35\101"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\229\112\37\166\228\152\236\63\194\112\36\176\169\194\226", "\118\182\21\73\195\135\236\204");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\57\2\84\38\24\233\28\51\20", "\157\104\92\122\32\100\109"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\180\206\199\56", "\203\195\198\175\170\93\71\237"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\78\38\193\125\16\254\43\71", "\156\78\43\94\181\49\113"), Frame);
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
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\237\220\183\41\86\109\102\231\202", "\25\18\136\164\195\107\35"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\4\138\64\96\178\196\170", "\216\136\77\201\47\18\220\161"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\254\42\215\13", "\226\77\140\75\186\104\188"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\203\200\43\99\184\204\213\51", "\47\217\174\176\95"), Frame);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\216\110\22\144\91\96", "\70\216\189\22\98\210\52\24"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\255\209\183\130\193\154\203\166\159\199\154\215\166\149\214\148\145\237", "\179\186\191\195\231");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\22\59\235\235\49\29\246", "\132\153\95\120"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\160\15\32\242", "\192\209\210\110\77\151\186"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\6\58\253\221\209\244\23\45\231", "\164\128\99\66\137\159"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\160\206\172\1\141\224\187\14\157", "\222\96\233\137"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\154\132\16\154\253\245\171", "\144\217\211\199\127\232\147"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\203\38\36\45", "\36\152\79\94\72\181\37\98")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\228\209\93\58", "\95\183\184\39")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\45\230\43\81", "\98\213\95\135\70\52\224"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\177\200\122\81", "\52\158\195\169\23"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\185\42\96\170\52\121\142\118", "\235\26\220\82\20\230\85\27"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\164\160\235\199\120", "\20\232\193\137\162");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\205\196\171\226", "\17\66\191\165\198\135\236\119"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\170\182\7\211\233\238\212\3", "\177\111\207\206\115\159\136\140"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\33\128\3\23\219\93\91", "\63\101\233\112\116\180\47");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\62\245\6\218\57\219", "\86\163\91\141\114\152"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\102\34\87\124\40\93\14\102", "\90\51\107\20\19"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\245\157\251\31\152\228\145\224\51", "\93\237\144\229\143"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\54\249\224\0\75\106\28\248\251", "\38\117\150\144\121\107");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\146\205\53\63\181\235\40", "\90\77\219\142"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\45\6\43\77\3\115\227\10\53", "\26\134\100\65\89\44\103"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\210\236\32\42\161\245\162", "\196\145\131\80\67");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\61\191\22\17\88\196\23\190\13", "\136\126\208\102\104\120");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\91\134\199\83\173\93\60\67\124\202\251\77\174\68\60\88\116\139\204\79\170", "\49\24\234\174\35\207\50\93"), LUAOBFUSACTOR_DECRYPT_STR_0("\47\243\243\134\126\24\178\254\135\97\21\178\242\134\49\24\250\244\155\49\9\234\248\139\100\24\253\239\198", "\17\108\146\157\232"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\104\209\17\233\38\188\88", "\200\43\163\116\141\79"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\51\37\151", "\131\223\86\93\227\208\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\70\164\191\13\161\163\103\175\236\93\153\234\95\179\146\24\163", "\213\131\37\214\214\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\39\44\184\239", "\129\70\75\69\223")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\196\255\230\110", "\143\38\171\147\137\28")]=Theme.AccentEnd});
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\228\135\161\231", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\177\61\14\192\173\34\6\192\249\10\3\218\173\38\8\221", "\103\179\217\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\187\21\210\79", "\195\42\215\124\181\33\236")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\86\59\49\55", "\152\109\57\87\94\69")]=Theme.Accent1});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\214\7\166", "\200\153\183\106\195\222\178\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\234\155\62\70\72\54\163\187\56\91\76\55\241", "\58\82\131\232\93\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\94\222\30", "\95\227\55\176\117\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\106\55\91\184\66\49\108\79\162\11\125\44\89\175\86\121\36\4\153\16\90\45\126\154\10\42\7\94", "\203\120\30\67\43")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\32\85\251", "\185\145\69\45\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\23\11\175\207\158\18\24\181\156\175\9\28\168\200", "\188\234\127\121\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\62\26\132\54", "\227\88\82\115")]=Enum.TextXAlignment.Center});
		SettingsTab:Toggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\109\30\183\162", "\19\35\127\218\199\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\62\250\9\233\27\233\5\247\18\255\74\207\9\232\3\225\92\179\39\247\8\254\25\162\51\239\2\231\14\232\67", "\130\124\155\106"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\199\247\168", "\223\181\171\150\207\195\150\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\5\219\163\8\95\23\246\189\0\79", "\105\44\90\131\206"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\229\180\184\29\50\235", "\94\159\128\210\217\104")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\248\10\179\93\126\250\113", "\26\48\153\102\223\63\31\153")]=function(val)
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
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\69\245\231", "\147\98\32\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\75\230\199\3\69\11\94\3\192\197\10\89\89\11", "\43\120\35\131\170\102\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\10\142\177\171", "\228\52\102\231\214\197\208")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\58\229\115\203\255\135\13", "\182\126\128\21\170\138\235\121")};
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\165\219\56\227", "\102\235\186\85\134\230\115\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\100\9\50\90\113\192\98\99\4\59\82\119\148\106\123\3\61\84\119\208\107", "\66\55\108\94\63\18\180"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\129\132\48", "\57\116\237\229\87\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\142\206\242\101\252\66\164\165\217\239\114\227\66", "\39\202\209\141\135\23\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\58\26\30", "\152\159\83\105\106\82")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\195\87\243\220\80\149", "\60\225\166\49\146\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\11\27\41\43\20\11\59", "\103\79\126\79\74\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\126\223\127\92\27\185\116", "\122\218\31\179\19\62")]=function(val)
			Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\151\211\203\192\220\173\81", "\37\211\182\173\161\169\193"));
		end});
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\63\85\205", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\105\244\6\89\206\60\196\29\90\204\110\244\82\30\239\115\228\25\83\199\53", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\215\84\133\64", "\31\72\187\61\226\46")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\7\78\215", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\98\211\202\2\167\154\81\159\115\217\194\13\161\195\50\177\124\213\213", "\113\222\16\186\167\99\213\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\2\250\241", "\150\78\110\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\186\250\4\238\168\17\173\115\128\201\34\226\176\79", "\32\229\165\71\129\196\126\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\128\215\149", "\181\163\233\164\225\225")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\142\56\118\69\135\42", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\76\207\202\77\91\54", "\178\28\186\184\61\55\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\204\75\48\240\15\246\207", "\149\164\173\39\92\146\110")]=function(val)
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\221\38\29\26", "\123\147\71\112\127\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\255\200\129\126\72\200\204\144\104\6\237\206\129\116\72\216\141\161\126\74\195\223", "\38\172\173\226\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\29\45\232", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\135\63\51\180\183\14\15\189\180\25\63\172\234", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\59\191\84", "\157\59\82\204\32")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\59\229\251\252\230\199", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\173\209\121", "\66\72\193\164\28\126\67\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\45\164\84\36\119\228\39", "\22\135\76\200\56\70")]=function(val)
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\185\53\224\48", "\129\237\80\152\68\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\177\23\231\25\26", "\56\49\200\100\147\124\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\237\50\182\247\194", "\144\172\94\223")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\10\14\175\66", "\39\68\111\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\163\227\210\122\178\150\132\211\233\57\132\223\188\226", "\215\182\198\135\167\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\171\69\235\79", "\40\237\41\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\75\209\199\121\206\110\255", "\42\167\20\154\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\247\172", "\65\42\158\194\34\17")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\38\74", "\142\122\71\50\108\77\141\123")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\167\249\25\46\25\182", "\91\117\194\159\120")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\28\50\20\55\240\39\17", "\68\122\125\94\120\85\145")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\57\29\194\91", "\218\119\124\175\62\168\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\254\92\193\183\246\73\199\160\176\123\199\164\252\77", "\164\197\144\40"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\252\171\140", "\214\227\144\202\235\189")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\154\160\110\25\128\80\61\225\160", "\92\141\197\231\27\112\211\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\246\132", "\177\134\159\234\195")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\144\234\39", "\169\221\139\95\192")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\142\121\62\55\42\202", "\70\190\235\31\95\66")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\227\22\234\231\187\225\17", "\133\218\130\122\134")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\18\254\238\193", "\88\92\159\131\164\188\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\33\184\76\219\238\157\171\43\166", "\189\224\78\223\43\183\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\240\139\17", "\161\78\156\234\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\136\253\211\160\176\197\217\140\178\208", "\188\199\215\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\12\89\122\253\240\29", "\136\156\105\63\27")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\128\120\55\30\132\118\56\31\137\107", "\84\123\236\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\153\175\4\191\245\219\142\179\89\226\251", "\213\144\235\202\119\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\25\210\38\42\34\78\40", "\45\67\120\190\74\72\67")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\31\29\217\170\254\143\226\236\11\39\244", "\137\64\66\141\197\153\232\142")] = clean;
		end});
		Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\39\213\36\167\157\15\196", "\232\99\176\66\198"));
		Library:SetAudioIsolation(true);
	end;
	return WindowAPI;
end;
return Library;
