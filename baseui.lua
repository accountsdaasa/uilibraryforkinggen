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
local function Tween(obj, props, time, style, dir)
	TweenService:Create(obj, TweenInfo.new(time or 0.3, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out), props):Play();
end
local CLICK_SOUND_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\186\127\100\41\0\103\255\87\161\121\38\103\92\35\175\23\253\46\45\127\69\44\171", "\35\200\29\28\72\115\20\154");
local function PlayClickSound()
	local sound = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\176\196\209\137", "\84\121\223\177\191\237\76"));
	sound.SoundId = CLICK_SOUND_ID;
	sound.Volume = 1;
	sound.Parent = CoreGui;
	sound:Play();
	sound.Ended:Connect(function()
		sound:Destroy();
	end);
end
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\143\89\206\167\54\85\27\196\162", "\161\219\54\169\192\90\48\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\75\7\45\93\97\15\43\93\80\15\41", "\69\41\34\96"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\203\210\7\7\5\189\206\210", "\75\220\163\183\106\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\191\141\54\204\14\174", "\185\98\218\235\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\15\46\252\219", "\202\171\92\71\134\190")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\212\37\187\42\192\32\141", "\232\73\161\76")]=1};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\70", "\126\219\185\34\61")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\35\220\95\124\121\114", "\135\108\174\62\18\30\23\147")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\143\236\38\199\23\185", "\167\214\137\74\171\120\206\83")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\249\63\88", "\199\235\144\82\61\152")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\4\188\46\9", "\75\103\118\217")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\77\113\26", "\126\167\52\16\116\217")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\234\34\53\133", "\156\168\78\64\224\212\121")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\251\183\222\11\235", "\174\103\142\197")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\102\33\81\51", "\152\54\72\63\88\69\62")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\227\204\231\72\209\139\201\78\209\221", "\60\180\164\142")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\124\91\3\40\50\225\6", "\114\56\62\101\73\71\141")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\143\224\213\192\183\254\249\227", "\164\216\137\187")]=Color3.fromRGB(12, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\239\53\183\164\255\25\240\193", "\107\178\134\81\210\198\158")]=Color3.fromRGB(18, 15, 22),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\26\135\203\136\31", "\202\88\110\226\166")]=Color3.fromRGB(30, 25, 35),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\12\129\242\196\215\94", "\170\163\111\226\151")]=Color3.fromRGB(170, 80, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\48\51\177\61\64\35\123", "\73\113\80\210\88\46\87")]=Color3.fromRGB(100, 40, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\35\202\21\235\132\3\227", "\135\225\76\173\114")]=Color3.fromRGB(170, 80, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\232\160\164", "\199\122\141\216\208\204\221")]=Color3.fromRGB(245, 245, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\8\228\92\247\191\214", "\150\205\189\112\144\24")]=Color3.fromRGB(140, 130, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\144\173\67\15\141", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(50, 40, 60)},[LUAOBFUSACTOR_DECRYPT_STR_0("\231\17\8\196", "\230\180\127\103\179\214\28")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\187\12\81\66\235\86\194\171", "\128\236\101\63\38\132\33")]=Color3.fromRGB(215, 215, 220),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\160\21\65\180\234\221\142\142", "\175\204\201\113\36\214\139")]=Color3.fromRGB(230, 230, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\216\48\209\38\96", "\100\39\172\85\188")]=Color3.fromRGB(200, 200, 205),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\123\186\133\61\185\41", "\83\205\24\217\224")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\198\206\56\232\209\159", "\93\134\165\173")]=Color3.fromRGB(160, 170, 190),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\253\198\197\54\203\157\80", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\75\104\30", "\106\133\46\16")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\37\107\232\126\65\74\43", "\32\56\64\19\156\58")]=Color3.fromRGB(110, 110, 120),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\220\247\89\81\247", "\224\58\168\133\54\58\146")]=Color3.fromRGB(180, 180, 190)},[LUAOBFUSACTOR_DECRYPT_STR_0("\105\95\69\246\108", "\107\57\54\43\157\21\230\231")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\236\130\31\241\182\203\237\252", "\175\187\235\113\149\217\188")]=Color3.fromRGB(40, 30, 35),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\166\133\73\225\120\106\30\136", "\24\92\207\225\44\131\25")]=Color3.fromRGB(30, 20, 25),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\199\189\65\57\90", "\29\43\179\216\44\123")]=Color3.fromRGB(50, 40, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\218\35\73\179\205\113", "\44\221\185\64")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\228\75\90\125\21\181", "\19\97\135\40\63")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\83\52\60\35\52\129\114", "\81\206\60\83\91\79")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\174\200\102", "\196\46\203\176\18\79\163\45")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\39\102\10\0\250\253\179", "\143\216\66\30\126\68\155")]=Color3.fromRGB(180, 140, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\220\31\196\206\166", "\129\202\168\109\171\165\195\183")]=Color3.fromRGB(80, 50, 60)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\21\81\57\220\209\3\196\5", "\134\66\56\87\184\190\116")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\24\52\15\186\12\231\53", "\85\92\81\105\219\121\139\65")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\186\84\64\126\222\239\145\119", "\191\157\211\48\37\28")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\251\26\242\29\47\211\11", "\90\191\127\148\124")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\81\147\43\26\90\160", "\119\24\231\78")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\166\40\163\75\201\76\5", "\113\226\77\197\42\188\32")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\21\247\176\52\2\199\161\59\4\224", "\213\90\118\148")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\127\43\178\87\88\87\58", "\45\59\78\212\54")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\85\128\142\136\58\136\254\20", "\144\112\54\227\235\230\78\205")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\151\45\9\253\197\87\167", "\59\211\72\111\156\176")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\136\228\42\66\130\204\3", "\77\46\231\131")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\158\81\176\65\175\88\162", "\32\218\52\214")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188", "\58\46\119\81\200\145\208\37")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\15\137\54\173\188\177\34", "\86\75\236\80\204\201\221")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\218\138\96\74", "\235\18\33\23\229\158")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\116\191\199\186\69\182\213", "\219\48\218\161")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\79\93\201\64\235\225\82\115\69\212\93", "\128\132\17\28\41\187\47")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\37\55\0\59\72\13\38", "\61\97\82\102\90")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\139\60\170\79\206\82\16\29\191", "\105\204\78\203\43\167\55\126")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\145\163\55\18\22\35\213\80\161\163\38\16\7\23", "\49\197\202\67\126\115\100\167")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\20\84\205\39\133\68\77", "\62\87\59\191\73\224\54")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\193\16\251\196\226\17", "\169\135\98\154")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\233\112\9\85\244\61", "\168\171\23\68\52\157\83")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\214\118\198\164\33\40\133\245\99", "\231\148\17\149\205\69\77")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\162\160\238\239\82\242\147", "\159\224\199\167\155\55")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\196\231\46\221\252\246\47", "\178\151\147\92")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\184\248\84\38\1", "\26\236\157\44\82\114\44")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\30\43\205\79\14\47\199\80\57", "\59\74\78\181")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\17\208\88\73", "\211\69\177\58\58")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\131\234\126\242\229\206\164", "\171\215\133\25\149\137")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\202\193\60\253\200\53\242", "\34\129\168\82\154\143\80\156");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\129\183\53\10\93\66\157\203\184\32\4\70", "\233\229\210\83\107\40\46");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\213\74\55\219\0\210\12\56\197\10\207", "\101\161\34\82\182");
Library.ActiveLoops = {};
Library.MainScale = nil;
Library.CurrentTab = nil;
Library.OpenDropdowns = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\250\15\65\255\200\241\135\58\225\9\3\177\148\187\210\124\189\92\14\172\137\186\219\121\191\93\14", "\78\136\109\57\158\187\130\226");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\13\43\248\227\42\58\235\214\43\54", "\145\94\95\153")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\206\200\26\209\96\184\233\196\18\220\77\182\233\196\27\219", "\215\157\173\116\181\46"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\1\189\159\254\223", "\186\85\212\235\146")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\132\14\234", "\56\162\225\118\158\89\142")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\120\16\210\174\54\209\83\11", "\184\60\101\160\207\66")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\37\131\126\176\52", "\220\81\226\28")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\61\218\150\242\236\206\16\212\150\242\229\201", "\167\115\181\226\155\138"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\204\45\243\85\125\120\197\227\54\238\83\117", "\166\130\66\135\60\27\17"), tostring(options), 3);
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
		local ok2, themeJson = pcall(function()
			return HttpService:JSONEncode(self.SavedThemes);
		end);
		if (ok2 and themeJson) then
			writefile(self.FolderName .. "/" .. self.ThemesFile, themeJson);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\80\75\204\121\53", "\80\36\42\174\21"))) then
				for flag, value in pairs(decoded) do
					self.Flags[flag] = value;
				end
			end
		end
		local themePath = self.FolderName .. "/" .. self.ThemesFile;
		if isfile(themePath) then
			local success, decoded = pcall(function()
				return HttpService:JSONDecode(readfile(themePath));
			end);
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\90\17\53\118\75", "\26\46\112\87"))) then
				self.SavedThemes = decoded;
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
			local smoothPos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y);
			object.Position = smoothPos;
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
	if themeName then
		local data = BUILTIN_THEMES[themeName];
		if (not data and Library.SavedThemes[themeName]) then
			local saved = Library.SavedThemes[themeName];
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\42\165\112\176\168\103\147", "\212\217\67\203\20\223\223\37")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\132\172\215\184\140\186\240\157", "\178\218\237\200")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\161\227\221\148\146", "\176\214\213\134")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\174\181\209\166\66\8", "\57\148\205\214\180\200\54")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\254\54\49\120\6\175", "\22\114\157\85\84")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\196\20\195\81\243\135\234", "\200\164\171\115\164\61\150")]=((saved.ToggleON and ToColor(saved.ToggleON)) or ToColor(saved.Accent2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\241\27\81", "\227\222\148\99\37")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\87\74\226\221\50\64\89", "\153\83\50\50\150")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\98\97\19\120\174", "\45\61\22\19\124\19\203")]=ToColor(saved.Stroke)};
		end
		if data then
			Theme.WindowBG = data.WindowBG;
			Theme.SidebarBG = data.SidebarBG;
			Theme.ItemBG = data.ItemBG;
			Theme.AccentStart = data.Accent1;
			Theme.AccentEnd = data.Accent2;
			Theme.ToggleON = data.ToggleON or data.Accent2;
			Theme.Text = data.Text;
			Theme.TextDark = data.TextDark;
			Theme.UIStrokeColor = data.Stroke;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\254\45\46\224\16\98\188\207\6\57\253\7\125\188", "\217\161\114\109\149\98\16")] = themeName;
		end
	end
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\39\9\31\110\189\112\27\37\54\104", "\20\114\64\88\28\220")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\22\20\219\155\250\218\184\50\21", "\221\81\97\178\212\152\176")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\239\230\30\240\29\223\232\8\245\30\238\232\17\244\8\158", "\122\173\135\125\155")]=Theme.WindowBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\177\232\39\171\62\53\193\129\207\20", "\168\228\161\96\217\95\81")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\252\196\39\115\45\93\222\210\58", "\55\187\177\78\60\79")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\15\207\92\224\65\221\143\56\192\91\200\73\195\143\63\157", "\224\77\174\63\139\38\175")]=Theme.SidebarBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\163\84\81\1\134\75\93\45\144", "\78\228\33\56")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\236\127\177\8\130\220\113\167\13\129\237\113\190\12\151\157", "\229\174\30\210\99")]=Theme.ItemBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.Strokes) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\56\226\138\94\255", "\89\123\141\230\49\141\93")]=Theme.UIStrokeColor}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.Texts) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\116\238\24\51\69\255\126\228\95", "\42\147\17\150\108\112")]=Theme.Text}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.TextDarks) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\59\163\53\107\196\231\3\169\63\44", "\136\111\198\77\31\135")]=Theme.TextDark}, 0.3);
	end
	for _, tab in pairs(Library.ThemeObjects.Tabs) do
		local isActive = tab.Name == Library.CurrentTab;
		if isActive then
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\32\8\164\93\186\246\24\188\12\13\132\89\177\235\5\250", "\201\98\105\199\54\221\132\119")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\9\155\53\33\58\160\182\30\208", "\204\217\108\227\65\98\85")]=Theme.Text}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\124\194\246\238\43\210\81\214\251\225\24\210\95\205\230\245\45\210\91\205\246\252", "\160\62\163\149\133\76")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\244\161\14\36\196\196\175\24\33\199\245\175\1\32\209\133", "\163\182\192\109\79")]=Theme.AccentStart}, 0.3);
		else
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\22\39\3\203\242\38\41\21\206\241\23\41\12\207\231\103", "\149\84\70\96\160")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\3\21\249\27\9\1\226\42\85", "\141\88\102\109")]=Theme.TextDark}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\145\82\201\123\29\47\90\212\189\87\254\98\27\51\70\209\178\65\207\126\25\36", "\161\211\51\170\16\122\93\53")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\175\177\35\252\188\189\61\245\170\145\39\247\161\160\123", "\72\155\206\210")]=Theme.AccentStart}, 0.3);
		end
	end
	for _, toggle in pairs(Library.ThemeObjects.Toggles) do
		toggle.Update(Library.Flags[toggle.Flag]);
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\69\117\90\8\58\65\52\94\29\60\72", "\83\38\26\52\110");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\115\30\41\65\127\18\41\115\113", "\38\56\119\71")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\216\230\86\209\16\127", "\54\147\143\56\182\69"), LUAOBFUSACTOR_DECRYPT_STR_0("\247\141\237\76\222\210\152\191\123\202\216\143\246\71\216", "\191\182\225\159\41"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\17\58\80\142\137\229\62\27", "\162\75\114\72\53\235\231"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\167\53\74\229\116\7\130\9\109", "\98\236\92\36\130\51");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local ShadowHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\11\13\183\64", "\80\196\121\108\218\37\200\213"), ScreenGui);
	ShadowHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\51\123\3\123\68\25", "\234\96\19\98\31\43\110");
	ShadowHolder.BackgroundTransparency = 1;
	ShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5);
	ShadowHolder.Size = UDim2.new(0, 650, 0, 550);
	ShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0);
	ShadowHolder.ZIndex = 0;
	local ShadowImage = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\18\83\192\169\94\138\4\26\94", "\235\102\127\50\167\204\18"), ShadowHolder);
	ShadowImage.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\66\163\237\34\87\61\85\181\252\39\30\97\31\247\165\114\17\118\9\246\173\119\23", "\78\48\193\149\67\36");
	ShadowImage.ImageColor3 = Color3.new(0, 0, 0);
	ShadowImage.ImageTransparency = 0.4;
	ShadowImage.ScaleType = Enum.ScaleType.Slice;
	ShadowImage.SliceCenter = Rect.new(49, 49, 450, 450);
	ShadowImage.Size = UDim2.new(1, 15, 1, 15);
	ShadowImage.Position = UDim2.new(0, -7, 0, -7);
	ShadowImage.BackgroundTransparency = 1;
	ShadowImage.ZIndex = 0;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\12\129\21\68", "\33\80\126\224\120"), ShadowHolder);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\193\169\10\202\122\254\169\14\193", "\60\140\200\99\164");
	MainFrame.Size = UDim2.new(1, -20, 1, -20);
	MainFrame.Position = UDim2.new(0, 10, 0, 10);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\55\37\163\139\241", "\194\231\148\100\70"), ShadowHolder);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\121\115\230\182\255\251\69\77\205\166", "\168\38\44\161\195\150")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	table.insert(Library.ThemeObjects.BgMain, MainFrame);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\213\161\121\34\230\179\4", "\118\224\156\226\22\80\136\214"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 12);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\119\199\106\148\80\225\82\133", "\224\34\142\57"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 0.8;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\142\246\212\105\244\126\1\208\180\209\207\114\248\83\26", "\110\190\199\165\189\19\145\61"), ShadowHolder);
	sizeConstraint.MaxSize = Vector2.new(9999, 9999);
	sizeConstraint.MinSize = Vector2.new(300, 200);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\238\111\252\169\210\206\255\120\230", "\167\186\139\23\136\235"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\51\187\152\24\14\151\132\2\25\190\141\31", "\109\122\213\232");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\229\163\61\235", "\80\142\151\194"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\55\207\99\64\6\228\118\94", "\44\99\166\23");
	TitleBar.Size = UDim2.new(1, 0, 0, 50);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.BackgroundTransparency = 1;
	TitleBar.ZIndex = 2;
	MakeDraggable(TitleBar, ShadowHolder);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\85\250\40\49\54\136\125\245\44\58", "\196\28\151\73\86\83"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 28, 0, 28);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -14);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\174\89\26\115\255", "\22\147\99\73\112\226\56\120"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\147\92\204\210\205\159\80\204", "\237\216\21\130\149");
	TitleLabel.Size = UDim2.new(1, -100, 1, 0);
	TitleLabel.Position = UDim2.new(0, 50, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextSize = 16;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local TitleDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\164\92\94\82\181", "\62\226\46\63\63\208\169"), TitleBar);
	TitleDivider.Size = UDim2.new(1, 0, 0, 1);
	TitleDivider.Position = UDim2.new(0, 0, 1, 0);
	TitleDivider.BackgroundColor3 = Theme.UIStrokeColor;
	TitleDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, TitleDivider);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\77\151\61\24\59\74\234\23", "\62\133\121\53\227\127\109\79"), TitleBar);
	MinBtn.Size = UDim2.new(0, 30, 0, 30);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -15);
	MinBtn.Text = "-";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\61\17\250\196\160\167\2", "\194\112\116\82\149\182\206"), MinBtn).CornerRadius = UDim.new(0, 8);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	MinBtn.MouseEnter:Connect(function()
		Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\169\79\19\199\240\1\44\166\72\59\207\238\1\43\251", "\110\89\200\44\120\160\130")]=Theme.AccentStart}, 0.2);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\148\252\126\111\124\103\18\99\130\238\98\124\102\110", "\45\203\163\43\38\35\42\91")] then
			Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\132\223\40\128\187\91\199\139\216\0\136\165\91\192\214", "\52\178\229\188\67\231\201")]=Theme.ItemBG}, 0.2);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\66\66\1\242\82\4\52\72", "\67\65\33\48\100\151\60"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\244\197\187\204\231\208\233\137\205\250", "\147\191\135\206\184");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\37\167\198\221\113\167\144\60\169\207", "\210\228\72\198\161\184\51"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 0, 0, 0);
	KBtn.Position = UDim2.new(0.9, -50, 0.5, 0);
	KBtn.Visible = false;
	KBtn.ZIndex = 10;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\9\118\216\47\67\225\5", "\174\86\41\147\112\19"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\100\63\184\34\26\34\56\133\114\45\164\49\0\43", "\203\59\96\237\107\69\111\113")] = isMinimized;
		Library:Save();
		if isMinimized then
			for _, closeFunc in pairs(Library.OpenDropdowns) do
				pcall(closeFunc);
			end
		end
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\27\41\135\222\2\249\205\33", "\183\68\118\204\129\81\144")] or DEFAULTS.KSize;
		if isMinimized then
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\162\99\237\31\139\1\163", "\226\110\205\16\132\107")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\204\244\216\85\226\204\238", "\33\139\163\128\185")]=10}, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In);
			task.wait(0.4);
			ShadowHolder.Visible = false;
			KBtn.Visible = true;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\100\81\30\219", "\190\55\56\100")]=UDim2.new(0, kSize, 0, kSize),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\162\61\25\22\215\225\87\161\47\14\18\241\246\88\172\37", "\147\54\207\92\126\115\131")]=0}, 0.4, Enum.EasingStyle.Back);
		else
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\56\47\120", "\30\109\81\85\29\109")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\124\85\177\51\234\238\254\127\71\166\55\204\249\241\114\77", "\156\159\17\52\214\86\190")]=1}, 0.3, Enum.EasingStyle.Back);
			task.wait(0.2);
			KBtn.Visible = false;
			ShadowHolder.Visible = true;
			ShadowHolder.Rotation = -10;
			ShadowHolder.Position = UDim2.new(0.5, 0, 1.5, 0);
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\158\224\174\181\186\230\178\178", "\220\206\143\221")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\180\114\57\22\204\197\221\136", "\178\230\29\77\119\184\172")]=0}, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out);
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\202\129\63\50\72\213\220\144\35\54\94\194\208\154", "\152\149\222\106\123\23")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\226\25\221\124\134\212\60\243", "\213\189\70\150\35")] or DEFAULTS.KSize;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\124\92\110\13", "\104\47\53\20")]=UDim2.new(0, kSize, 0, kSize)}, 0.3);
		end
	end;
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\156\115\181\19\187\8\175\73\170\25\165", "\111\195\44\225\124\220")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\231\121\53\90\148\134\241\104\41\94\130\145\253\98", "\203\184\38\96\19\203")];
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
			if ((input.Position - KBtnStartPos).Magnitude < 5) then
				SetState(false);
			end
		end
	end);
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\6\76\76\104\241\20\90\87\104\227\16\73\92\101", "\174\89\19\25\33")] then
		ShadowHolder.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\16\45\121\113\196\142\17\42", "\107\79\114\50\46\151\231")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		ShadowHolder.Visible = true;
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\180\180\36\143", "\160\89\198\213\73\234\89\215"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\123\120\176\251\199\73\99\151\241\203\92\112\189\240\192\90", "\165\40\17\212\158");
	SidebarContainer.Size = UDim2.new(0, 130, 1, -50);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 50);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarContainer);
	local SidebarDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\203\9\62\35", "\70\133\185\104\83"), SidebarContainer);
	SidebarDivider.Size = UDim2.new(0, 1, 1, 0);
	SidebarDivider.Position = UDim2.new(1, -1, 0, 0);
	SidebarDivider.BackgroundColor3 = Theme.UIStrokeColor;
	SidebarDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, SidebarDivider);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\70\86\37\197\8\76\74\45\239\22\68\73\47", "\169\100\37\36\74"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\174\142\89\19\147\142\81\25\136\183\68", "\48\96\231\194"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\62\44\29\220\166\141\207", "\227\168\58\110\77\121\184\207"), TabBar).PaddingTop = UDim.new(0, 10);
	TabListLayout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\90\62\172\79\189\206\101\160\88\51\177\84\180\213\101\150\114\38\186", "\197\27\92\223\32\209\187\17")):Connect(function()
		TabBar.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 20);
	end);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\77\194\246\6", "\155\99\63\163"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -130, 1, -50);
	PagesContainer.Position = UDim2.new(0, 130, 0, 50);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\145\140\189\128\139\223\166", "\228\226\177\193\237\217"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 15);
	ContentPadding.PaddingRight = UDim.new(0, 15);
	ContentPadding.PaddingTop = UDim.new(0, 15);
	ContentPadding.PaddingBottom = UDim.new(0, 15);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\181\59\242\22\165\55\242\59\190", "\134\84\208\67"), TabBar);
		TabBtn.Size = UDim2.new(1, -20, 0, 36);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 13;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\133\165\83\1\162\131\78", "\60\115\204\230"), TabBtn).CornerRadius = UDim.new(0, 6);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\40\234\125\226", "\16\135\90\139"), TabBtn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BackgroundTransparency = 1;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\93\37\60\92\90\125\70", "\24\52\20\102\83\46\52"), Indicator).CornerRadius = UDim.new(0, 4);
		local function UpdateTabButtonStyle(button, indicator, isActive)
			if isActive then
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\46\34\47\8\214\32\52\42\11\231\32\45\43\29\151", "\111\164\79\65\68")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\220\155\202\13\229\202\214\145\141", "\138\166\185\227\190\78")]=Theme.Text}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\233\117\198\60\85\49\22\222\122\193\3\64\34\23\216\100\196\37\87\45\26\210", "\121\171\20\165\87\50\67")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\57\186\61\190\16\201\45\183\50\154\13\202\55\171\101", "\98\166\88\217\86\217")]=Theme.AccentStart}, 0.3);
			else
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\247\122\10\129\206\249\227\119\5\165\211\250\249\107\82", "\188\150\150\25\97\230")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\140\71\22\47\226\214\134\77\81", "\141\186\233\63\98\108")]=Theme.TextDark}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\211\235\47\189\34\227\229\57\184\33\197\248\45\184\54\225\235\62\179\43\242\243", "\69\145\138\76\214")]=1}, 0.3);
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\82\219\135", "\118\16\175\233\233\223")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\162\138\49\178\237\138\105\132\150", "\29\235\228\85\219\142\235")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\213\183\216", "\50\93\180\218\189\23\46\71")]=name});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\252\176\85", "\40\190\196\59\44\36\188")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\75\216\189\249\124\25\51\87", "\109\92\37\188\212\154\29")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\169\198", "\58\100\143\196\163\81")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\65\49\172\51\69\236\0\29\100\49\162\50\76", "\110\122\34\67\195\95\41\133"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\74\129\90\77\211", "\182\21\209\59\42");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\126\233\20\50\170\155\86\220\18\52\170", "\222\215\55\165\125\65"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\248\246\27\246\197\228\68\43", "\42\76\177\166\122\146\161\141"), Page);
		PagePadding.PaddingRight = UDim.new(0, 10);
		PagePadding.PaddingBottom = UDim.new(0, 10);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\131\152\4\195\124", "\22\197\234\101\174\25")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\3\53\168\217", "\230\77\84\197\188\22\207\183")]=name});
		if FirstTab then
			Library.CurrentTab = name;
		end
		TabBtn.MouseButton1Click:Connect(function()
			Library.CurrentTab = name;
			for _, tabData in ipairs(TabButtons) do
				UpdateTabButtonStyle(tabData.Btn, tabData.Indicator, false);
			end
			UpdateTabButtonStyle(TabBtn, Indicator, true);
			for _, pageData in ipairs(Pages) do
				pageData.Frame.Visible = pageData.Name == name;
			end
			PlayClickSound();
		end);
		UpdateTabButtonStyle(TabBtn, Indicator, FirstTab);
		FirstTab = false;
		local Elements = {};
		Elements.Toggle = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or false;
			Library.Flags[tFlag] = default;
			local delayTime = options.Delay or 0.1;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\6\199\241\137", "\85\153\116\166\156\236\193\144"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\201\110\188\246\14\161\242", "\96\196\128\45\211\132"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\136\99\75\254\174\182\221\57", "\184\85\237\27\63\178\207\212"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, 0, 1, 0);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local SwitchBg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\75\8\82\13", "\63\104\57\105"), Frame);
			SwitchBg.Size = UDim2.new(0, 44, 0, 22);
			SwitchBg.Position = UDim2.new(1, -54, 0.5, -11);
			SwitchBg.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\174\135\75\25\137\161\86", "\36\107\231\196"), SwitchBg).CornerRadius = UDim.new(1, 0);
			local SwitchKnob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\167\163\138\88", "\231\61\213\194"), SwitchBg);
			SwitchKnob.Size = UDim2.new(0, 18, 0, 18);
			SwitchKnob.Position = UDim2.new(0, 2, 0.5, -9);
			SwitchKnob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\30\124\27\163\56\97", "\19\105\205\93"), SwitchKnob).CornerRadius = UDim.new(1, 0);
			local ClickArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\13\198\149\29\188\28\202\142\49", "\95\201\104\190\225"), Frame);
			ClickArea.Text = "";
			ClickArea.BackgroundTransparency = 1;
			ClickArea.Size = UDim2.new(1, 0, 1, 0);
			ClickArea.ZIndex = 10;
			local function UpdateVisuals(val)
				if val then
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\202\194\197\168\217\206\219\161\207\226\193\163\196\211\157", "\174\207\171\161")]=Theme.ToggleON}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\221\241\30\250\236\222\226\240", "\183\141\158\109\147\152")]=UDim2.new(1, -20, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\8\229\7\43\27\233\25\34\13\197\3\32\6\244\95", "\108\76\105\134")]=Color3.new(1, 1, 1)}, 0.25, Enum.EasingStyle.Back);
				else
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\201\196\178\234\201\249\202\164\239\202\200\202\189\238\220\184", "\174\139\165\209\129")]=Theme.WindowBG}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\147\188\241\200\210\10\127\118", "\24\195\211\130\161\166\99\16")]=UDim2.new(0, 2, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\2\234\39\84\4\73\22\231\40\112\25\74\12\251\127", "\118\38\99\137\76\51")]=Theme.TextDark}, 0.25, Enum.EasingStyle.Back);
				end
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\200\54\1\19\29\37", "\64\157\70\101\114\105")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\102\164\166\228", "\112\32\200\199\131")]=tFlag});
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
			ClickArea.MouseButton1Click:Connect(function()
				PlayClickSound();
				local newVal = not Library.Flags[tFlag];
				if (options.Condition and newVal) then
					local success, reason = options.Condition();
					if not success then
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\8\85\82\177\198\175", "\66\76\48\60\216\163\203"), reason, 3);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\148\120\254\90", "\68\218\230\25\147\63\174"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\3\112\67\164\163\47\65", "\214\205\74\51\44"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\73\250\232\91\251\78\231\240", "\23\154\44\130\156"), Frame);
			TopLabel.Size = UDim2.new(1, -40, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 8);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamMedium;
			TopLabel.TextSize = 14;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\163\181\186\26\18\19\163\161", "\115\113\198\205\206\86"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 8);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextSize = 14;
			ValLabel.TextColor3 = Theme.AccentStart;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.TextXAlignment = Enum.TextXAlignment.Right;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local SliderBarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\69\255\87\129", "\58\228\55\158"), Frame);
			SliderBarBG.Size = UDim2.new(1, -20, 0, 6);
			SliderBarBG.Position = UDim2.new(0, 10, 0, 38);
			SliderBarBG.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\129\160\243\33\46\163\48\166", "\85\212\233\176\78\92\205"), SliderBarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\74\137\239\79", "\130\42\56\232"), SliderBarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\156\7\236\82\49\239\167", "\95\138\213\68\131\32"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\1\134\81\119\46\33\164\77\98", "\22\74\72\193\35"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, UIGradientFill);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\107\229\85\41", "\56\76\25\132"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\232\136\41\221\80\196\185", "\175\62\161\203\70"), Knob).CornerRadius = UDim.new(1, 0);
			local function Update(input)
				local SizeX = math.clamp((input.Position.X - SliderBarBG.AbsolutePosition.X) / SliderBarBG.AbsoluteSize.X, 0, 1);
				local Value = math.floor(min + ((max - min) * SizeX));
				if ((max - min) < 2) then
					Value = math.floor((min + ((max - min) * SizeX)) * 100) / 100;
				end
				Library.Flags[sFlag] = Value;
				Tween(Fill, {[LUAOBFUSACTOR_DECRYPT_STR_0("\15\212\217\22", "\85\92\189\163\115")]=UDim2.new(SizeX, 0, 1, 0)}, 0.05);
				ValLabel.Text = tostring(Value);
				ValLabel.TextColor3 = Theme.AccentStart;
				pcall(options.Callback, Value);
				Library:Save();
			end
			local percent = (default - min) / (max - min);
			Fill.Size = UDim2.new(percent, 0, 1, 0);
			pcall(options.Callback, default);
			local Dragging = false;
			SliderBarBG.InputBegan:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = true;
					Update(input);
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\165\42\61", "\88\73\204\80")]=UDim2.new(0, 18, 0, 18)}, 0.2);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\29\138\10\67", "\186\78\227\112\38\73")]=UDim2.new(0, 14, 0, 14)}, 0.2);
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\69\252\88\86", "\26\156\55\157\53\51"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\241\53\214\170\94\137\202", "\48\236\184\118\185\216"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\184\79\36\227\53\231\184\91", "\84\133\221\55\80\175"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\226\60\178\229\73\169\243\43\168", "\60\221\135\68\198\167"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\148\219\140\80\215\235\175", "\185\142\221\152\227\34"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\236\100\238\81\60\252\93", "\151\56\165\55\154\35\83"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\148\70\29\250\140\66\7\235\172", "\142\192\35\101"), MainBtn);
			SelectedText.Text = default;
			SelectedText.Size = UDim2.new(1, -30, 1, 0);
			SelectedText.Position = UDim2.new(0, 10, 0, 0);
			SelectedText.Font = Enum.Font.Gotham;
			SelectedText.TextColor3 = Theme.Text;
			SelectedText.TextSize = 14;
			SelectedText.TextXAlignment = Enum.TextXAlignment.Left;
			SelectedText.BackgroundTransparency = 1;
			SelectedText.ZIndex = 7;
			table.insert(Library.ThemeObjects.Texts, SelectedText);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\112\49\183\203\141\174\19\218", "\118\182\21\73\195\135\236\204"), MainBtn);
			Chevron.Text = ">";
			Chevron.Size = UDim2.new(0, 30, 1, 0);
			Chevron.Position = UDim2.new(1, -30, 0, 0);
			Chevron.Font = Enum.Font.GothamBold;
			Chevron.TextColor3 = Theme.TextDark;
			Chevron.TextSize = 14;
			Chevron.BackgroundTransparency = 1;
			Chevron.Rotation = 90;
			Chevron.ZIndex = 7;
			table.insert(Library.ThemeObjects.TextDarks, Chevron);
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\46\27\77\1", "\157\104\92\122\32\100\109"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\135\180\192\218\57\40\154\165", "\203\195\198\175\170\93\71\237");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\98\29\218\67\31\249\60", "\156\78\43\94\181\49\113"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\71\193\247\183\25\76\114\119", "\25\18\136\164\195\107\35"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\4\154\91\96\179\202\189", "\216\136\77\201\47\18\220\161"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\239\57\213\4\208\139\35\235\13\200\9\209\135", "\226\77\140\75\186\104\188"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\231\252\54\92\173\226\209\38\64\172\218", "\47\217\174\176\95"), Scroll);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local Open = false;
			local RenderStep;
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
				for i, v in ipairs(Library.OpenDropdowns) do
					if (v == CloseDropdown) then
						table.remove(Library.OpenDropdowns, i);
						break;
					end
				end
			end
			local function UpdatePosition()
				if (Open and DropdownHolder.Parent and MainFrame.Visible) then
					local btnPos = MainBtn.AbsolutePosition;
					local btnSize = MainBtn.AbsoluteSize;
					DropdownHolder.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 4);
					DropdownHolder.Size = UDim2.new(0, btnSize.X, 0, math.min(Layout.AbsoluteContentSize.Y + 10, 160));
				elseif Open then
					CloseDropdown();
				end
			end
			local function ToggleMenu()
				Open = not Open;
				PlayClickSound();
				if Open then
					table.insert(Library.OpenDropdowns, CloseDropdown);
					DropdownHolder.Parent = ScreenGui;
					DropdownHolder.Visible = true;
					InputBlocker.Visible = true;
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\210\98\3\166\93\119\40", "\70\216\189\22\98\210\52\24")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\249\208\175\136\193", "\179\186\191\195\231")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\205\45\25\234\234\47\25\246\252\49\27\253", "\132\153\95\120")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\133\183\22\57\213\207\180\165\189\0", "\192\209\210\110\77\151\186")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\6\58\253\221\209\244\23\45\231", "\164\128\99\66\137\159"), Scroll);
						ItemBtn.Size = UDim2.new(1, 0, 0, 28);
						ItemBtn.BackgroundTransparency = 1;
						ItemBtn.Text = item;
						ItemBtn.TextColor3 = ((item == Library.Flags[dFlag]) and Theme.AccentStart) or Theme.TextDark;
						ItemBtn.Font = Enum.Font.GothamMedium;
						ItemBtn.TextSize = 13;
						ItemBtn.MouseButton1Click:Connect(function()
							PlayClickSound();
							Library.Flags[dFlag] = item;
							SelectedText.Text = item;
							pcall(options.Callback, item);
							ToggleMenu();
							Library:Save();
						end);
					end
					UpdatePosition();
				else
					CloseDropdown();
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\134\253\191\20\128\230\176", "\222\96\233\137")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\188\171\16\154", "\144\217\211\199\127\232\147")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\204\61\63\38\198\85\3\86\253\33\61\49", "\36\152\79\94\72\181\37\98")]=0.8}, 0.2);
				end
			end
			InputBlocker.MouseButton1Click:Connect(function()
				if Open then
					ToggleMenu();
				end
			end);
			MainBtn.MouseButton1Click:Connect(ToggleMenu);
			pcall(options.Callback, default);
			local DropdownAPI = {};
			DropdownAPI.Set = function(self, value)
				Library.Flags[dFlag] = value;
				SelectedText.Text = value;
				pcall(options.Callback, value);
				Library:Save();
			end;
			DropdownAPI.Update = function(self, newList)
				options.List = newList;
				if Open then
					ToggleMenu();
					ToggleMenu();
				end
			end;
			return DropdownAPI;
		end;
		Elements.MultiDropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or {};
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\202\70\50\210", "\95\183\184\39"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\22\196\41\70\142\7\167", "\98\213\95\135\70\52\224"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\166\209\99\120\255\161\204\123", "\52\158\195\169\23"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\185\42\96\164\32\111\159\117\178", "\235\26\220\82\20\230\85\27"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\189\136\202\205\102\134\164\251", "\20\232\193\137\162"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\246\246\178\245\131\28\116", "\17\66\191\165\198\135\236\119"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\170\182\7\211\233\238\212\3", "\177\111\207\206\115\159\136\140"), MainBtn);
			SelectedText.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\54\140\28\17\215\91\31\44\157\21\25\199\1\17\75", "\63\101\233\112\116\180\47");
			SelectedText.Size = UDim2.new(1, -30, 1, 0);
			SelectedText.Position = UDim2.new(0, 10, 0, 0);
			SelectedText.Font = Enum.Font.Gotham;
			SelectedText.TextColor3 = Theme.Text;
			SelectedText.TextSize = 14;
			SelectedText.TextXAlignment = Enum.TextXAlignment.Left;
			SelectedText.BackgroundTransparency = 1;
			SelectedText.ZIndex = 7;
			table.insert(Library.ThemeObjects.Texts, SelectedText);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\62\245\6\212\55\193\62\225", "\86\163\91\141\114\152"), MainBtn);
			Chevron.Text = ">";
			Chevron.Size = UDim2.new(0, 30, 1, 0);
			Chevron.Position = UDim2.new(1, -30, 0, 0);
			Chevron.Font = Enum.Font.GothamBold;
			Chevron.TextColor3 = Theme.TextDark;
			Chevron.TextSize = 14;
			Chevron.BackgroundTransparency = 1;
			Chevron.Rotation = 90;
			Chevron.ZIndex = 7;
			table.insert(Library.ThemeObjects.TextDarks, Chevron);
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\25\117\126\63", "\90\51\107\20\19"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\160\229\137\251\52\169\226\138\255\57\130\231\139", "\93\237\144\229\143");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\223\211\22\25\72\16\228", "\38\117\150\144\121\107"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\146\221\46\63\180\229\63", "\90\77\219\142"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\45\18\45\94\8\113\227", "\26\134\100\65\89\44\103"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\224\34\44\168\253\234\62\36\130\227\226\61\38", "\196\145\131\80\67"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\153\42\1\11\252\50\177\31\7\13\252", "\136\126\208\102\104\120"), Scroll);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local Open = false;
			local RenderStep;
			local function UpdateText()
				local count = 0;
				for _, v in pairs(Library.Flags[dFlag]) do
					if v then
						count = count + 1;
					end
				end
				SelectedText.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\56\185\203\79\170\81\41\84\124", "\49\24\234\174\35\207\50\93"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\63\247\241\141\114\24\178\212\156\116\1\225\179\198\63", "\17\108\146\157\232");
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
				for i, v in ipairs(Library.OpenDropdowns) do
					if (v == CloseDropdown) then
						table.remove(Library.OpenDropdowns, i);
						break;
					end
				end
			end
			local function UpdatePosition()
				if (Open and DropdownHolder.Parent and MainFrame.Visible) then
					local btnPos = MainBtn.AbsolutePosition;
					local btnSize = MainBtn.AbsoluteSize;
					DropdownHolder.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 4);
					DropdownHolder.Size = UDim2.new(0, btnSize.X, 0, math.min(Layout.AbsoluteContentSize.Y + 10, 160));
				elseif Open then
					CloseDropdown();
				end
			end
			local function ToggleMenu()
				Open = not Open;
				PlayClickSound();
				if Open then
					table.insert(Library.OpenDropdowns, CloseDropdown);
					DropdownHolder.Parent = ScreenGui;
					DropdownHolder.Visible = true;
					InputBlocker.Visible = true;
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\121\204\0\236\59\161\68\205", "\200\43\163\116\141\79")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\156\57\49\140\162", "\131\223\86\93\227\208\148")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\87\183\184\14\165\226\87\179\184\30\172", "\213\131\37\214\214\125")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\18\46\61\171\195\51\63\49\176\239", "\129\70\75\69\223")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						if (Library.Flags[dFlag][item] == nil) then
							Library.Flags[dFlag][item] = false;
						end
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\206\235\253\94\250\82\223\252\231", "\143\38\171\147\137\28"), Scroll);
						ItemBtn.Size = UDim2.new(1, 0, 0, 28);
						ItemBtn.BackgroundTransparency = 1;
						ItemBtn.Text = item;
						ItemBtn.TextColor3 = (Library.Flags[dFlag][item] and Theme.AccentStart) or Theme.TextDark;
						ItemBtn.Font = Enum.Font.GothamMedium;
						ItemBtn.TextSize = 13;
						ItemBtn.MouseButton1Click:Connect(function()
							PlayClickSound();
							Library.Flags[dFlag][item] = not Library.Flags[dFlag][item];
							ItemBtn.TextColor3 = (Library.Flags[dFlag][item] and Theme.AccentStart) or Theme.TextDark;
							UpdateText();
							pcall(options.Callback, Library.Flags[dFlag]);
							Library:Save();
						end);
					end
					UpdatePosition();
				else
					CloseDropdown();
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\226\141\173\242\23\234\219\222", "\180\176\226\217\147\99\131")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\182\35\8\193", "\103\179\217\79")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\165\29\219\82\156\162\88\178\18\214\88", "\195\42\215\124\181\33\236")]=0.8}, 0.2);
				end
			end
			InputBlocker.MouseButton1Click:Connect(function()
				if Open then
					ToggleMenu();
				end
			end);
			MainBtn.MouseButton1Click:Connect(ToggleMenu);
			UpdateText();
			pcall(options.Callback, Library.Flags[dFlag]);
		end;
		Elements.Cycle = function(self, options)
			local cFlag = options.Flag;
			local default = Library.Flags[cFlag] or options.Default or options.List[1];
			Library.Flags[cFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\75\54\51\32", "\152\109\57\87\94\69"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\254\41\172\172\220\81\186", "\200\153\183\106\195\222\178\52"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\230\144\41\101\91\48\230\132", "\58\82\131\232\93\41"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\82\200\1\127\42\151\67\223\27", "\95\227\55\176\117\61"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 32);
			Button.Position = UDim2.new(0, 10, 0, 28);
			Button.BackgroundColor3 = Theme.WindowBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamBold;
			Button.TextSize = 14;
			Button.AutoButtonColor = false;
			Button.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\87\0\68\185\22\123\49", "\203\120\30\67\43"), Button).CornerRadius = UDim.new(0, 6);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\12\126\251\203\254\46\72", "\185\145\69\45\143"), Button);
			BtnStroke.Color = Theme.UIStrokeColor;
			BtnStroke.Transparency = 0.8;
			BtnStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, BtnStroke);
			local idx = table.find(options.List, default) or 1;
			Button.MouseButton1Click:Connect(function()
				PlayClickSound();
				idx = idx + 1;
				if (idx > #options.List) then
					idx = 1;
				end
				local val = options.List[idx];
				Library.Flags[cFlag] = val;
				Button.Text = val;
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\168\30\26\173\219\152\16\12\168\216\169\16\21\169\206\217", "\188\234\127\121\198")]=Theme.ItemBG}, 0.1);
				task.wait(0.1);
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\51\16\136\63\32\28\150\54\54\48\140\52\61\1\208", "\227\88\82\115")]=Theme.WindowBG}, 0.1);
				pcall(options.Callback, val);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\13\187\170\7", "\19\35\127\218\199\98"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\210\41\237\14\245\15\240", "\130\124\155\106"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\225\206\238\187\143\247\126\186\217", "\223\181\171\150\207\195\150\28"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local InputContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\40\226\163\12", "\105\44\90\131\206"), Frame);
			InputContainer.Size = UDim2.new(1, -20, 0, 32);
			InputContainer.Position = UDim2.new(0, 10, 0, 28);
			InputContainer.BackgroundColor3 = Theme.WindowBG;
			InputContainer.ClipsDescendants = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\201\145\182\26\48\250\242", "\94\159\128\210\217\104"), InputContainer).CornerRadius = UDim.new(0, 6);
			local InputStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\208\53\171\77\112\242\127", "\26\48\153\102\223\63\31\153"), InputContainer);
			InputStroke.Color = Theme.UIStrokeColor;
			InputStroke.Transparency = 0.8;
			table.insert(Library.ThemeObjects.Strokes, InputStroke);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\69\245\231\32\79\245", "\147\98\32\141"), InputContainer);
			Input.Size = UDim2.new(1, -10, 1, 0);
			Input.Position = UDim2.new(0, 5, 0, 0);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\86\13\173", "\43\120\35\131\170\102\54");
			Input.Text = default;
			Input.BackgroundTransparency = 1;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextSize = 14;
			Input.TextXAlignment = Enum.TextXAlignment.Left;
			Input.TextTruncate = Enum.TextTruncate.AtEnd;
			table.insert(Library.ThemeObjects.Texts, Input);
			Input.Focused:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\119\9\139\185\183", "\228\52\102\231\214\197\208")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\242\116\196\249\155\24\196\27\238\118\211", "\182\126\128\21\170\138\235\121")]=0.2}, 0.3);
			end);
			Input.FocusLost:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\168\213\57\233\148", "\102\235\186\85\134\230\115\80")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\99\30\63\81\97\196\35\69\9\48\92\107", "\66\55\108\94\63\18\180")]=0.8}, 0.3);
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\159\132\58\34", "\57\116\237\229\87\71"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundTransparency = 1;
			local btnName = options.Name;
			if (not btnName or (btnName == "")) then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\180\245\243\85\251\83\190\190\227", "\39\202\209\141\135\23\142"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = btnName;
			Btn.TextColor3 = Color3.new(1, 1, 1);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.AutoButtonColor = false;
			Btn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\26\42\5\32\246\250\33", "\152\159\83\105\106\82"), Btn).CornerRadius = UDim.new(0, 8);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\239\118\224\200\88\136\195\95\230", "\60\225\166\49\146\169"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, BtnGradient);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\55\28\62\19\8\36\27", "\103\79\126\79\74\97"), Btn);
			BtnStroke.Color = Theme.AccentStart;
			BtnStroke.Transparency = 0.8;
			BtnStroke.Thickness = 1;
			Btn.MouseEnter:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\126\208\120\89\8\181\106\221\119\106\8\187\113\192\99\95\8\191\113\208\106", "\122\218\31\179\19\62")]=0.1}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\196\204\207\218\177\68\161\211\195\194\208", "\37\211\182\173\161\169\193")]=0.4}, 0.2);
			end);
			Btn.MouseLeave:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\213\59\78\210\47\105\182\226\52\73\237\58\122\183\228\42\76\203\45\117\186\238", "\217\151\90\45\185\72\27")]=0}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\247\110\230\28\69\211\125\245\23\88\192\101", "\54\163\28\135\114")]=0.8}, 0.2);
			end);
			Btn.MouseButton1Click:Connect(function()
				PlayClickSound();
				task.spawn(function()
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\222\69\150\125\118\50\222", "\31\72\187\61\226\46")]=12}, 0.05);
					task.wait(0.05);
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\247\3\91\198\116\119\62\198", "\68\163\102\35\178\39\30")]=14}, 0.05);
				end);
				pcall(options.Callback);
			end);
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\98\219\202\6", "\113\222\16\186\167\99\213\227"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 95);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\39\216\249\60\0\254\228", "\150\78\110\155"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\192\63\245\136\31\189\69\137", "\32\229\165\71\129\196\126\223"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\224\155\193\133\136\193", "\181\163\233\164\225\225");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			table.insert(Library.ThemeObjects.Texts, Label);
			local BoxContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\153\63\122\85", "\23\48\235\94"), Frame);
			BoxContainer.Size = UDim2.new(0.9, 0, 0, 32);
			BoxContainer.Position = UDim2.new(0.05, 0, 0, 24);
			BoxContainer.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\243\251\82\69\61\215\110", "\178\28\186\184\61\55\83"), BoxContainer).CornerRadius = UDim.new(0, 8);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\200\95\40\208\1\237", "\149\164\173\39\92\146\110"), BoxContainer);
			Box.Size = UDim2.new(1, 0, 1, 0);
			Box.Text = options.Link or "";
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.BackgroundTransparency = 1;
			Box.TextEditable = false;
			Box.ClearTextOnFocus = false;
			table.insert(Library.ThemeObjects.Texts, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\34\8\11\56\14\231\51\31\17", "\123\147\71\112\127\122"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 28);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 62);
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\146\104", "\38\172\173\226\17");
			CopyBtn.TextColor3 = Color3.new(1, 1, 1);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextSize = 13;
			CopyBtn.AutoButtonColor = false;
			CopyBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\56\15\224\95\31\41\253", "\143\45\113\76"), CopyBtn).CornerRadius = UDim.new(0, 8);
			local CopyGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\145\59\46\185\188\21\57\182\172", "\92\216\216\124"), CopyBtn);
			CopyGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, CopyGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				PlayClickSound();
				if setclipboard then
					pcall(function()
						setclipboard(options.Link or "");
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\120\61\188\73\248\95\115", "\157\59\82\204\32");
					task.delay(2, function()
						CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\27\49\243\227", "\209\88\94\131\154\137\138\179");
					end);
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\13\179\214\115\12", "\66\72\193\164\28\126\67\81"), "Your executor doesn't support clipboard.", 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\62\169\85\35", "\22\135\76\200\56\70"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\171\34\249\41\88", "\129\237\80\152\68\61"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 26);
			Frame.BackgroundTransparency = 1;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\173\28\231\48\22\90\84\164", "\56\49\200\100\147\124\119"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\224\63\189\245\192", "\144\172\94\223");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextSize = 14;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\7\29\167\67\45\27\177", "\39\68\111\194"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\163\255\211", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\96\170\74\148\9\198\65\151\76\206\77\155", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\120\243\255\68", "\42\167\20\154\152")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\105\241\174\77\99", "\65\42\158\194\34\17")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\38\95\9", "\142\122\71\50\108\77\141\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\49\171\236\27\52\7\166\191\43\62\7\180\250\10", "\91\117\194\159\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\20\48\19", "\68\122\125\94\120\85\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\8\219\78\219\131\245\88\24\198\77\203\214\168\19\82\200\89\135\235\178\51\18\250\111\218\141\158\2", "\218\119\124\175\62\168\185")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\145\245\80\208", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\175\134\216\246\174\241\164\138\218\179\145", "\214\227\144\202\235\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\169\142\124\30", "\92\141\197\231\27\112\211\51")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\194\250\140\162\196\234\235", "\177\134\159\234\195"),LUAOBFUSACTOR_DECRYPT_STR_0("\142\229\48\183", "\169\221\139\95\192"),LUAOBFUSACTOR_DECRYPT_STR_0("\238\130\113\52\59", "\70\190\235\31\95\66")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\227\23\227", "\133\218\130\122\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\250\239\193\223\183\120\8\247\230\201\217", "\88\92\159\131\164\188\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\34\190\76", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\195\169\3\211\60\249\132\2\245\38\249\135\19", "\161\78\156\234\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\190\218\200", "\188\199\215\169")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\12\89\122\253\240\29", "\136\156\105\63\27")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\36\179\90\33\9\158\124\58\15\184\113\49\22\137", "\84\123\236\25")] or LUAOBFUSACTOR_DECRYPT_STR_0("\212\142\172\22\185\185\228", "\213\144\235\202\119\204")),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\25\210\38\42\34\78\40", "\45\67\120\190\74\72\67")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\14\35\224\160", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\209\52\163\200\55\216\39\171\141\67\241\49\232\198\77", "\232\99\176\66\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\45\41\1", "\76\140\65\72\102\27\237\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\229\56\215\192\53\182\79\215\19\252\214\12\187", "\222\42\186\118\178\183\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\224\69\137\88\228\75\134\89\233\86", "\234\61\140\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\220\183\119\65\111\147", "\111\65\189\218\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\74\23\57\9\93\172\72", "\207\35\43\123\85\107\60")]=function()
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\94\171\173\239", "\25\16\202\192\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\202\187\231\233\215\232\217\191\231\167\224\189\255\165\231\164\241", "\148\157\171\205\130\201"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\213\120\37\211\247\32\223", "\150\67\180\20\73\177")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\178\39\52\72\154\44\18\72\128\29\52\76\128\29", "\45\237\120\122")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\225\172\40\216\255\128\11", "\76\183\136\194")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\73\239\225\61\82\78\6\88\193", "\116\26\134\133\88\48\47")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\213\165\233\159\85", "\18\126\161\192\132\221")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\43\173\1\88\75\121", "\54\63\72\206\100")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\90\70\127\235\111\154", "\27\168\57\37\26\133")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\165\123\175\219\40\133\82", "\183\77\202\28\200")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\54\145\28", "\104\119\83\233")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\253\63\54\103\244\234\44", "\35\149\152\71\66")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\252\80\191\49\28", "\90\121\136\34\208")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\243\7\65\18\194", "\126\167\110\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\24\43\245\217", "\95\93\112\78\152\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\250\139\1\225\176\198", "\178\161\149\229\117\132\222")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\187\218\203\169\165\76\230", "\67\232\187\189\204\193\118\198") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\175\43\179\33\46\14\251", "\143\235\78\213\64\91\98"),LUAOBFUSACTOR_DECRYPT_STR_0("\190\70\139\254", "\214\237\40\228\137\16"),LUAOBFUSACTOR_DECRYPT_STR_0("\181\234\225\210\26", "\198\229\131\143\185\99")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\101\137\176\103", "\19\49\236\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\215\57\226\178\246\188\255\52\243\247\199\181\242\56\228\164", "\218\158\87\150\215\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\18\208\229\56", "\173\155\126\185\130\86\66")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\167\183\194", "\140\133\198\218\167\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\45\183\120\138\161\110\151\114\136\186\60\244\44", "\228\213\78\212\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\64\183\2", "\139\231\44\214\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\208\37\81\28\190\35\37\220\227\3\93\4\224", "\118\185\143\102\62\112\209\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\121\58\242", "\88\60\16\73\134\197\117\124")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\239\254\201\84\92\254", "\33\48\138\152\168")]=LUAOBFUSACTOR_DECRYPT_STR_0("\66\3\34\65\205\50", "\87\18\118\80\49\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\31\214\172\178\77\29\209", "\208\44\126\186\192")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\27\169\195", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\238\69\31\245\241\173\101\21\247\234\255\6\72", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\3\38\173\70", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\112\121\136\252\64\72\180\245\67\95\132\228\29", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\209\201\97", "\89\210\184\186\21\120\93\175")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\86\122\212\108\54\165", "\90\209\51\28\181\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\119\66\235", "\223\176\27\55\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\186\194\185\38\186\205\190", "\213\68\219\174")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\37\225\46\226", "\31\107\128\67\135\74\165\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\231\251\74\77\180\152\199\210\13\98\190\212\231\238", "\209\184\136\156\45\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\196\116\15", "\216\103\168\21\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\146\119\171\127\170\79\161\91\162\79\171\106\158\70\168\125\174\87", "\196\24\205\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\130\240\18", "\102\78\235\131")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\43\50\69\82\53\163", "\84\154\78\84\36\39\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\244\68\72\9\248", "\101\157\129\54\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\168\134\167\33\120\30\162", "\25\125\201\234\203\67")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\73\253\12\0\28\103\49\117\245\27\8", "\115\25\148\120\99\116\71")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\52\189\42\72\11\53\173\100\113\25\47\169\40\68", "\33\108\93\217\68")]=Color3.fromRGB(15, 12, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\74\179\166\155\108\179\168\194", "\205\187\43\193")]=Color3.fromRGB(35, 35, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\115\19\198\190\80\9\202\251", "\191\158\18\101")]=Color3.fromRGB(20, 22, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\198\130\167\239\247\198\131", "\207\165\163\231\215")]=Color3.fromRGB(25, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\246\235\83\55\100\134\222\235\83\33\126", "\16\166\153\153\54\68")]=Color3.fromRGB(12, 20, 12)};
		local bgList = {};
		for n in pairs(bgOptions) do
			table.insert(bgList, n);
		end
		table.sort(bgList);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\178\205\67", "\153\178\211\160\38\84\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\10\89\32\133\25\85\62\140\15\26\8\141\7\85\57", "\75\226\107\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\210\16\125", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\244\225\15\2\199\217\219\62\0\227\248\219\33\0\244\223", "\151\171\190\77\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\38\235\189", "\107\165\79\152\201\152\29")]=bgList,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\75\238\202\65\115\67", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\33\200\247\217\104\254\248\208\43\215", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\183\91\223\164\183\84\216", "\179\198\214\55")]=function(val)
			if bgOptions[val] then
				Theme.WindowBG = bgOptions[val];
				local h, s, v = Color3.toHSV(Theme.WindowBG);
				Theme.SidebarBG = Color3.fromHSV(h, s, math.min(v + 0.05, 1));
				Theme.ItemBG = Color3.fromHSV(h, s, math.min(v + 0.1, 1));
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\13\127\115", "\179\144\108\18\22\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\138\91\186\204\199\175\30", "\175\166\195\123\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\206\92\78", "\144\143\162\61\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\236\58\69\123\180\48\225\223\24", "\83\128\179\125\48\18\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\190\253", "\126\61\215\147\189\39")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\85\254\5", "\37\24\159\125")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\163\115\67\207\170\97", "\34\186\198\21")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\219\9\201\81\192\249\11\206", "\162\152\104\165\61")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\242\16\145\104\98\247\200\33\166\73\120\224\192\42", "\133\173\79\210\29\16")] or LUAOBFUSACTOR_DECRYPT_STR_0("\169\121\235\42\152\112\249", "\75\237\28\141"));
	end;
	return WindowAPI;
end;
return Library;
