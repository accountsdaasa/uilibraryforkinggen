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
	MinBtn.Text = "";
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\61\17\250\196\160\167\2", "\194\112\116\82\149\182\206"), MinBtn).CornerRadius = UDim.new(0, 8);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	local MinIcon = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\165\77\31\197\206\15\59\173\64", "\110\89\200\44\120\160\130"), MinBtn);
	MinIcon.Size = UDim2.new(0, 14, 0, 14);
	MinIcon.Position = UDim2.new(0.5, -7, 0.5, -7);
	MinIcon.BackgroundTransparency = 1;
	MinIcon.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\185\193\83\71\80\89\62\89\162\199\17\9\12\28\107\30\250\147\18\18\21\29\99", "\45\203\163\43\38\35\42\91");
	MinIcon.ImageColor3 = Theme.Text;
	table.insert(Library.ThemeObjects.Texts, MinIcon);
	MinBtn.MouseEnter:Connect(function()
		Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\132\223\40\128\187\91\199\139\216\0\136\165\91\192\214", "\52\178\229\188\67\231\201")]=Theme.AccentStart}, 0.2);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\30\126\101\45\200\113\10\15\104\125\45\205\121\7", "\67\65\33\48\100\151\60")] then
			Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\253\230\173\211\244\205\232\187\214\247\252\232\162\215\225\140", "\147\191\135\206\184")]=Theme.ItemBG}, 0.2);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\43\180\196\221\93\149\145\33", "\210\228\72\198\161\184\51"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\29\107\230\4\103\193\56\110\230\25", "\174\86\41\147\112\19");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\13\140\12\32\45\4\191\79\15\131", "\203\59\96\237\107\69\111\113"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 0, 0, 0);
	KBtn.Position = UDim2.new(0.9, -50, 0.5, 0);
	KBtn.Visible = false;
	KBtn.ZIndex = 10;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\27\41\135\222\1\223\228", "\183\68\118\204\129\81\144"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\49\146\69\205\52\175\39\131\89\201\34\184\43\137", "\226\110\205\16\132\107")] = isMinimized;
		Library:Save();
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\212\252\203\230\114\226\217\229", "\33\139\163\128\185")] or DEFAULTS.KSize;
		if isMinimized then
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\103\87\23\215\67\81\11\208", "\190\55\56\100")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\160\40\31\7\234\252\88", "\147\54\207\92\126\115\131")]=10}, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In);
			task.wait(0.4);
			ShadowHolder.Visible = false;
			KBtn.Visible = true;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\56\47\120", "\30\109\81\85\29\109")]=UDim2.new(0, kSize, 0, kSize),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\124\85\177\51\234\238\254\127\71\166\55\204\249\241\114\77", "\156\159\17\52\214\86\190")]=0}, 0.4, Enum.EasingStyle.Back);
		else
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\157\230\167\185", "\220\206\143\221")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\112\44\16\221\248\192\135\115\62\7\217\222\215\136\126\52", "\178\230\29\77\119\184\172")]=1}, 0.3, Enum.EasingStyle.Back);
			task.wait(0.2);
			KBtn.Visible = false;
			ShadowHolder.Visible = true;
			ShadowHolder.Rotation = -10;
			ShadowHolder.Position = UDim2.new(0.5, 0, 1.5, 0);
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\177\25\18\99\241\250\176", "\152\149\222\106\123\23")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\41\226\66\161\212\41\248", "\213\189\70\150\35")]=0}, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out);
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\112\106\65\33\112\120\93\38\102\120\93\50\106\113", "\104\47\53\20")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\156\115\170\35\143\6\185\73", "\111\195\44\225\124\220")] or DEFAULTS.KSize;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\235\79\26\118", "\203\184\38\96\19\203")]=UDim2.new(0, kSize, 0, kSize)}, 0.3);
		end
	end;
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\6\76\77\78\201\62\127\124\106\203\32", "\174\89\19\25\33")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\16\45\103\103\200\170\34\1\59\127\103\205\162\47", "\107\79\114\50\46\151\231")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\6\153\128\0\181\20\158\238\16\139\156\19\175\29", "\160\89\198\213\73\234\89\215")] then
		ShadowHolder.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\119\78\159\193\246\65\107\177", "\165\40\17\212\158")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		ShadowHolder.Visible = true;
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\203\9\62\35", "\70\133\185\104\83"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\55\76\64\47\203\5\87\103\37\199\16\68\77\36\204\22", "\169\100\37\36\74");
	SidebarContainer.Size = UDim2.new(0, 130, 1, -50);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 50);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarContainer);
	local SidebarDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\149\163\93\5", "\48\96\231\194"), SidebarContainer);
	SidebarDivider.Size = UDim2.new(0, 1, 1, 0);
	SidebarDivider.Position = UDim2.new(1, -1, 0, 0);
	SidebarDivider.BackgroundColor3 = Theme.UIStrokeColor;
	SidebarDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, SidebarDivider);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\89\28\34\21\212\166\141\207\124\28\44\20\221", "\227\168\58\110\77\121\184\207"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\21\147\73\162\207\93\164\98\51\170\84", "\197\27\92\223\32\209\187\17"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\118\243\250\7\91\202\245\4", "\155\99\63\163"), TabBar).PaddingTop = UDim.new(0, 10);
	TabListLayout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\163\211\178\130\181\145\150\212\130\130\183\144\135\223\181\190\176\158\135", "\228\226\177\193\237\217")):Connect(function()
		TabBar.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 20);
	end);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\162\34\235\49", "\134\84\208\67"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -130, 1, -50);
	PagesContainer.Position = UDim2.new(0, 130, 0, 50);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\133\182\93\23\168\143\82\20", "\60\115\204\230"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 15);
	ContentPadding.PaddingRight = UDim.new(0, 15);
	ContentPadding.PaddingTop = UDim.new(0, 15);
	ContentPadding.PaddingBottom = UDim.new(0, 15);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\243\100\197\47\255\100\232\52", "\16\135\90\139"), TabBar);
		TabBtn.Size = UDim2.new(1, -20, 0, 36);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 13;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\93\37\60\92\90\125\70", "\24\52\20\102\83\46\52"), TabBtn).CornerRadius = UDim.new(0, 6);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\61\32\41\10", "\111\164\79\65\68"), TabBtn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BackgroundTransparency = 1;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\240\160\209\60\228\195\203", "\138\166\185\227\190\78"), Indicator).CornerRadius = UDim.new(0, 4);
		local function UpdateTabButtonStyle(button, indicator, isActive)
			if isActive then
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\233\117\198\60\85\49\22\222\122\193\20\93\47\22\217\39", "\121\171\20\165\87\50\67")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\61\161\34\154\13\202\55\171\101", "\98\166\88\217\86\217")]=Theme.Text}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\247\122\10\129\206\249\227\119\5\178\206\247\248\106\17\135\206\243\248\122\24", "\188\150\150\25\97\230")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\136\92\9\11\255\213\156\81\6\47\226\214\134\77\81", "\141\186\233\63\98\108")]=Theme.AccentStart}, 0.3);
			else
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\211\235\47\189\34\227\229\57\184\33\210\229\32\185\55\162", "\69\145\138\76\214")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\68\202\145\157\156\25\124\192\155\218", "\118\16\175\233\233\223")]=Theme.TextDark}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\169\133\54\176\233\153\114\158\138\49\143\252\138\115\152\148\52\169\235\133\126\146", "\29\235\228\85\219\142\235")]=1}, 0.3);
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\31\192\180", "\50\93\180\218\189\23\46\71")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\170\95\69\71\221\92\209\182", "\40\190\196\59\44\36\188")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\68\209\177", "\109\92\37\188\212\154\29")]=name});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\251\170", "\58\100\143\196\163\81")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\76\39\170\60\72\241\1\8", "\110\122\34\67\195\95\41\133")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\91\176\86\79", "\182\21\209\59\42")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\84\215\18\45\178\190\89\194\59\51\191\186\82", "\222\215\55\165\125\65"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\19\225\199\29\247", "\42\76\177\166\122\146\161\141");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\41\199\106\98\137\139\28\193\108\98", "\22\197\234\101\174\25"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\29\149\221\114\171\222\136\42", "\230\77\84\197\188\22\207\183"), Page);
		PagePadding.PaddingRight = UDim.new(0, 10);
		PagePadding.PaddingBottom = UDim.new(0, 10);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\223\6\199\241\137", "\85\153\116\166\156\236\193\144")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\138\225\64\182", "\96\196\128\45\211\132")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\159\122\82\215", "\184\85\237\27\63\178\207\212"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\112\42\80\26\87\12\77", "\63\104\57\105"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\130\188\80\39\134\166\65\7", "\36\107\231\196"), Frame);
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
			local SwitchBg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\167\163\138\88", "\231\61\213\194"), Frame);
			SwitchBg.Size = UDim2.new(0, 44, 0, 22);
			SwitchBg.Position = UDim2.new(1, -54, 0.5, -11);
			SwitchBg.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\30\124\27\163\56\97", "\19\105\205\93"), SwitchBg).CornerRadius = UDim.new(1, 0);
			local SwitchKnob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\26\223\140\58", "\95\201\104\190\225"), SwitchBg);
			SwitchKnob.Size = UDim2.new(0, 18, 0, 18);
			SwitchKnob.Position = UDim2.new(0, 2, 0.5, -9);
			SwitchKnob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\226\226\193\189\197\196\220", "\174\207\171\161"), SwitchKnob).CornerRadius = UDim.new(1, 0);
			local ClickArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\251\21\231\218\194\249\234\2\253", "\183\141\158\109\147\152"), Frame);
			ClickArea.Text = "";
			ClickArea.BackgroundTransparency = 1;
			ClickArea.Size = UDim2.new(1, 0, 1, 0);
			ClickArea.ZIndex = 10;
			local function UpdateVisuals(val)
				if val then
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\8\229\7\43\27\233\25\34\13\197\3\32\6\244\95", "\108\76\105\134")]=Theme.ToggleON}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\219\202\162\232\218\226\202\191", "\174\139\165\209\129")]=UDim2.new(1, -20, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\178\225\202\193\17\127\109\173\183\193\206\202\12\98\43", "\24\195\211\130\161\166\99\16")]=Color3.new(1, 1, 1)}, 0.25, Enum.EasingStyle.Back);
				else
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\100\2\234\39\84\4\73\22\231\40\112\25\74\12\251\127", "\118\38\99\137\76\51")]=Theme.WindowBG}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\205\41\22\27\29\41\242\40", "\64\157\70\101\114\105")]=UDim2.new(0, 2, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\169\164\232\23\82\167\178\237\20\99\167\171\236\2\19", "\112\32\200\199\131")]=Theme.TextDark}, 0.25, Enum.EasingStyle.Back);
				end
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\25\64\88\185\215\174", "\66\76\48\60\216\163\203")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\138\120\244", "\68\218\230\25\147\63\174")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\137\47\93\69\179\169", "\214\205\74\51\44"), reason, 3);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\94\227\241\114", "\23\154\44\130\156"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\143\142\161\36\29\20\180", "\115\113\198\205\206\86"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78\168\86\252\95\136", "\58\228\55\158"), Frame);
			TopLabel.Size = UDim2.new(1, -40, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 8);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamMedium;
			TopLabel.TextSize = 14;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58\16\172\55\177\133", "\85\212\233\176\78\92\205"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 8);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextSize = 14;
			ValLabel.TextColor3 = Theme.AccentStart;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.TextXAlignment = Enum.TextXAlignment.Right;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local SliderBarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\74\137\239\79", "\130\42\56\232"), Frame);
			SliderBarBG.Size = UDim2.new(1, -20, 0, 6);
			SliderBarBG.Position = UDim2.new(0, 10, 0, 38);
			SliderBarBG.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\156\7\236\82\49\239\167", "\95\138\213\68\131\32"), SliderBarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\58\160\78\115", "\22\74\72\193\35"), SliderBarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\80\199\87\62\119\225\74", "\56\76\25\132"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\232\140\52\206\90\200\174\40\219", "\175\62\161\203\70"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, UIGradientFill);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\207\194\30\48", "\85\92\189\163\115"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\133\19\55\59\162\53\42", "\88\73\204\80"), Knob).CornerRadius = UDim.new(1, 0);
			local function Update(input)
				local SizeX = math.clamp((input.Position.X - SliderBarBG.AbsolutePosition.X) / SliderBarBG.AbsoluteSize.X, 0, 1);
				local Value = math.floor(min + ((max - min) * SizeX));
				if ((max - min) < 2) then
					Value = math.floor((min + ((max - min) * SizeX)) * 100) / 100;
				end
				Library.Flags[sFlag] = Value;
				Tween(Fill, {[LUAOBFUSACTOR_DECRYPT_STR_0("\29\138\10\67", "\186\78\227\112\38\73")]=UDim2.new(SizeX, 0, 1, 0)}, 0.05);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\207\94\231\80", "\26\156\55\157\53\51")]=UDim2.new(0, 18, 0, 18)}, 0.2);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\191\209\12\220", "\48\236\184\118\185\216")]=UDim2.new(0, 14, 0, 14)}, 0.2);
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\175\86\61\202", "\84\133\221\55\80\175"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\206\7\169\213\82\184\245", "\60\221\135\68\198\167"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\184\224\151\110\216\236\184\244", "\185\142\221\152\227\34"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238\97\38\227\76\202\89", "\151\56\165\55\154\35\83"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\106\38\225\178\77\0\252", "\142\192\35\101"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\92\26\183\245\131\167\19", "\118\182\21\73\195\135\236\204"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\57\2\84\40\12\255\13\48", "\157\104\92\122\32\100\109"), MainBtn);
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
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\163\215\222\17\38\143\174\175", "\203\195\198\175\170\93\71\237"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\89\63\216\84", "\156\78\43\94\181\49\113"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\86\250\203\179\15\76\110\124", "\25\18\136\164\195\107\35");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\4\138\64\96\178\196\170", "\216\136\77\201\47\18\220\161"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\197\24\206\26\211\137\40", "\226\77\140\75\186\104\188"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\231\227\43\93\182\197\213", "\47\217\174\176\95"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\222\100\13\190\88\113\40\191\251\100\3\191\81", "\70\216\189\22\98\210\52\24"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\246\143\142\192\206\243\162\158\220\207\203", "\179\186\191\195\231"), Scroll);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local Open = false;
			local RenderStep;
			local function UpdatePosition()
				if (Open and DropdownHolder.Parent) then
					local btnPos = MainBtn.AbsolutePosition;
					local btnSize = MainBtn.AbsoluteSize;
					DropdownHolder.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 4);
					DropdownHolder.Size = UDim2.new(0, btnSize.X, 0, math.min(Layout.AbsoluteContentSize.Y + 10, 160));
				end
			end
			local function ToggleMenu()
				Open = not Open;
				PlayClickSound();
				if Open then
					DropdownHolder.Parent = ScreenGui;
					DropdownHolder.Visible = true;
					InputBlocker.Visible = true;
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\203\48\12\229\237\54\23\234", "\132\153\95\120")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\146\189\2\34\229", "\192\209\210\110\77\151\186")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\17\35\231\236\212\225\17\39\231\252\221", "\164\128\99\66\137\159")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\52\140\241\170\34\156\253\170\15\135", "\222\96\233\137")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\182\191\11\170\230\228\173\188\169", "\144\217\211\199\127\232\147"), Scroll);
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
					DropdownHolder.Visible = false;
					DropdownHolder.Parent = nil;
					InputBlocker.Visible = false;
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\202\32\42\41\193\76\13\74", "\36\152\79\94\72\181\37\98")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\215\75\48\197", "\95\183\184\39")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\129\45\230\40\71\144\3\167\58\233\37\77", "\98\213\95\135\70\52\224")]=0.8}, 0.2);
					if RenderStep then
						RenderStep:Disconnect();
					end
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\177\200\122\81", "\52\158\195\169\23"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\149\17\123\148\59\126\153", "\235\26\220\82\20\230\85\27"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\188\164\241\214\88\137\163\236\206", "\20\232\193\137\162"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\218\221\178\197\153\3\101\45\209", "\17\66\191\165\198\135\236\119"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\134\141\28\237\230\233\195", "\177\111\207\206\115\159\136\140"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\160\35\0\198\64\84\0", "\63\101\233\112\116\180\47"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\62\245\6\212\55\193\62\225", "\86\163\91\141\114\152"), MainBtn);
			SelectedText.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\96\14\120\118\57\71\75\93\103\63\94\24\58\61\116", "\90\51\107\20\19");
			SelectedText.Size = UDim2.new(1, -30, 1, 0);
			SelectedText.Position = UDim2.new(0, 10, 0, 0);
			SelectedText.Font = Enum.Font.Gotham;
			SelectedText.TextColor3 = Theme.Text;
			SelectedText.TextSize = 14;
			SelectedText.TextXAlignment = Enum.TextXAlignment.Left;
			SelectedText.BackgroundTransparency = 1;
			SelectedText.ZIndex = 7;
			table.insert(Library.ThemeObjects.Texts, SelectedText);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\245\157\251\17\140\242\128\227", "\93\237\144\229\143"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\228\241\20\14", "\38\117\150\144\121\107"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\0\174\226\46\36\159\252\53\61\191\225\45\35", "\90\77\219\142");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\45\2\54\94\9\127\244", "\26\134\100\65\89\44\103"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\202\3\55\182\254\232\53", "\196\145\131\80\67"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\153\53\28\10\231\21\181", "\136\126\208\102\104\120"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\75\137\220\76\163\94\52\95\127\172\220\66\162\87", "\49\24\234\174\35\207\50\93"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\219\209\129\98\24\222\252\145\126\25\230", "\17\108\146\157\232"), Scroll);
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
				SelectedText.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\11\240\17\225\42\171\95\198\16", "\200\43\163\116\141\79"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\140\51\49\134\179\224\163\150\34\56\142\163\186\173\241", "\131\223\86\93\227\208\148");
			end
			local function UpdatePosition()
				if (Open and DropdownHolder.Parent) then
					local btnPos = MainBtn.AbsolutePosition;
					local btnSize = MainBtn.AbsoluteSize;
					DropdownHolder.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 4);
					DropdownHolder.Size = UDim2.new(0, btnSize.X, 0, math.min(Layout.AbsoluteContentSize.Y + 10, 160));
				end
			end
			local function ToggleMenu()
				Open = not Open;
				PlayClickSound();
				if Open then
					DropdownHolder.Parent = ScreenGui;
					DropdownHolder.Visible = true;
					InputBlocker.Visible = true;
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\209\74\162\183\9\188\236\75", "\213\131\37\214\214\125")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\36\41\176\243", "\129\70\75\69\223")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\114\217\242\231\111\255\71\217\246\231\127\246", "\143\38\171\147\137\28")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\228\135\161\231\33\246\192\196\141\183", "\180\176\226\217\147\99\131")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						if (Library.Flags[dFlag][item] == nil) then
							Library.Flags[dFlag][item] = false;
						end
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\188\55\19\241\172\59\19\220\183", "\103\179\217\79"), Scroll);
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
					DropdownHolder.Visible = false;
					DropdownHolder.Parent = nil;
					InputBlocker.Visible = false;
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\184\8\212\85\133\172\68", "\195\42\215\124\181\33\236")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\86\59\49\55", "\152\109\57\87\94\69")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\205\197\11\173\173\194\85\186\252\217\9\186", "\200\153\183\106\195\222\178\52")]=0.8}, 0.2);
					if RenderStep then
						RenderStep:Disconnect();
					end
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\20\241\137\48\76", "\58\82\131\232\93\41"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\182\126\243\26\79\49\134\69", "\95\227\55\176\117\61"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\44\123\59\95\135\25\124\38\71", "\203\120\30\67\43"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\32\85\251\251\228\49\89\224\215", "\185\145\69\45\143"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 32);
			Button.Position = UDim2.new(0, 10, 0, 28);
			Button.BackgroundColor3 = Theme.WindowBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamBold;
			Button.TextSize = 14;
			Button.AutoButtonColor = false;
			Button.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\54\58\169\206\132\26\11", "\188\234\127\121\198"), Button).CornerRadius = UDim.new(0, 6);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\27\32\151\42\61\24\134", "\227\88\82\115"), Button);
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
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\97\30\185\172\5\97\76\10\180\163\33\124\79\16\168\244", "\19\35\127\218\199\98")]=Theme.ItemBG}, 0.1);
				task.wait(0.1);
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\250\9\233\27\233\5\247\18\255\41\237\16\244\24\177", "\130\124\155\106")]=Theme.WindowBG}, 0.1);
				pcall(options.Callback, val);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\217\247\162\166", "\223\181\171\150\207\195\150\28"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\19\192\161\27\66\63\241", "\105\44\90\131\206"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\229\170\173\36\63\253\229\190", "\94\159\128\210\217\104"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local InputContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\235\7\178\90", "\26\48\153\102\223\63\31\153"), Frame);
			InputContainer.Size = UDim2.new(1, -20, 0, 32);
			InputContainer.Position = UDim2.new(0, 10, 0, 28);
			InputContainer.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\105\206\252\16\78\232\225", "\147\98\32\141"), InputContainer).CornerRadius = UDim.new(0, 6);
			local InputStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\106\208\222\20\89\64\29", "\43\120\35\131\170\102\54"), InputContainer);
			InputStroke.Color = Theme.UIStrokeColor;
			InputStroke.Transparency = 0.8;
			table.insert(Library.ThemeObjects.Strokes, InputStroke);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\96\3\159\162\135\191\156", "\228\52\102\231\214\197\208"), InputContainer);
			Input.Size = UDim2.new(1, -10, 1, 0);
			Input.Position = UDim2.new(0, 5, 0, 0);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\80\174\59", "\182\126\128\21\170\138\235\121");
			Input.Text = default;
			Input.BackgroundTransparency = 1;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextSize = 14;
			table.insert(Library.ThemeObjects.Texts, Input);
			Input.Focused:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\168\213\57\233\148", "\102\235\186\85\134\230\115\80")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\99\30\63\81\97\196\35\69\9\48\92\107", "\66\55\108\94\63\18\180")]=0.2}, 0.3);
			end);
			Input.FocusLost:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\55\130\137\56\53", "\57\116\237\229\87\71")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\158\163\236\233\100\254\70\184\180\227\228\110", "\39\202\209\141\135\23\142")]=0.8}, 0.3);
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\33\8\7\55", "\152\159\83\105\106\82"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundTransparency = 1;
			local btnName = options.Name;
			if (not btnName or (btnName == "")) then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\195\73\230\235\73\149\210\94\252", "\60\225\166\49\146\169"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = btnName;
			Btn.TextColor3 = Color3.new(1, 1, 1);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.AutoButtonColor = false;
			Btn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\55\12\37\19\9\42\12", "\103\79\126\79\74\97"), Btn).CornerRadius = UDim.new(0, 8);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\86\244\97\95\30\179\122\221\103", "\122\218\31\179\19\62"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, BtnGradient);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\255\254\213\219\174\78\182", "\37\211\182\173\161\169\193"), Btn);
			BtnStroke.Color = Theme.AccentStart;
			BtnStroke.Transparency = 0.8;
			BtnStroke.Thickness = 1;
			Btn.MouseEnter:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\213\59\78\210\47\105\182\226\52\73\237\58\122\183\228\42\76\203\45\117\186\238", "\217\151\90\45\185\72\27")]=0.1}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\247\110\230\28\69\211\125\245\23\88\192\101", "\54\163\28\135\114")]=0.4}, 0.2);
			end);
			Btn.MouseLeave:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\10\218\94\137\73\109\39\206\83\134\122\109\41\213\78\146\79\109\45\213\94\155", "\31\72\187\61\226\46")]=0}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\247\20\66\220\84\110\37\209\3\77\209\94", "\68\163\102\35\178\39\30")]=0.8}, 0.2);
			end);
			Btn.MouseButton1Click:Connect(function()
				PlayClickSound();
				task.spawn(function()
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\117\194\211\48\188\153\20", "\113\222\16\186\167\99\213\227")]=12}, 0.05);
					task.wait(0.05);
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\11\227\226\29\7\225\243", "\150\78\110\155")]=14}, 0.05);
				end);
				pcall(options.Callback);
			end);
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\163\215\38\236\161", "\32\229\165\71\129\196\126\223"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 95);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\160\231\142\147\219\198\155", "\181\163\233\164\225\225"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\142\38\99\124\138\60\114\92", "\23\48\235\94"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\95\200\221\89\94\39", "\178\28\186\184\61\55\83");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			table.insert(Library.ThemeObjects.Texts, Label);
			local BoxContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\223\70\49\247", "\149\164\173\39\92\146\110"), Frame);
			BoxContainer.Size = UDim2.new(0.9, 0, 0, 32);
			BoxContainer.Position = UDim2.new(0.05, 0, 0, 24);
			BoxContainer.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\14\51\16\8\21\246\53", "\123\147\71\112\127\122"), BoxContainer).CornerRadius = UDim.new(0, 8);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\200\154\101\100\195\213", "\38\172\173\226\17"), BoxContainer);
			Box.Size = UDim2.new(1, 0, 1, 0);
			Box.Text = options.Link or "";
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.BackgroundTransparency = 1;
			Box.TextEditable = false;
			Box.ClearTextOnFocus = false;
			table.insert(Library.ThemeObjects.Texts, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\20\52\251\111\4\56\251\66\31", "\143\45\113\76"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 28);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 62);
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\155\183\12\37", "\92\216\216\124");
			CopyBtn.TextColor3 = Color3.new(1, 1, 1);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextSize = 13;
			CopyBtn.AutoButtonColor = false;
			CopyBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\27\143\79\239\85\55\190", "\157\59\82\204\32"), CopyBtn).CornerRadius = UDim.new(0, 8);
			local CopyGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\23\196\232\232\238\218\180\54\42", "\209\88\94\131\154\137\138\179"), CopyBtn);
			CopyGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, CopyGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				PlayClickSound();
				if setclipboard then
					pcall(function()
						setclipboard(options.Link or "");
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\11\174\212\117\27\39\112", "\66\72\193\164\28\126\67\81");
					task.delay(2, function()
						CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\196\35\184\65", "\22\135\76\200\56\70");
					end);
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\168\34\234\43\79", "\129\237\80\152\68\61"), "Your executor doesn't support clipboard.", 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\119\186\5\254\25", "\56\49\200\100\147\124\119"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\44\190\253\201", "\144\172\94\223"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 26);
			Frame.BackgroundTransparency = 1;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\10\186\83\8\14\160\66\40", "\39\68\111\194"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\250\167\229\194\117", "\215\182\198\135\167\25");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextSize = 14;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\185\76\242\92", "\40\237\41\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\124\255\245\79\135\89\251\246\75\192\113\232", "\42\167\20\154\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\242\171\69\127", "\65\42\158\194\34\17")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\62\34\84\13\56\225\15", "\142\122\71\50\108\77\141\123"),LUAOBFUSACTOR_DECRYPT_STR_0("\38\172\240\15", "\91\117\194\159\120"),LUAOBFUSACTOR_DECRYPT_STR_0("\42\20\48\19\44", "\68\122\125\94\120\85\145")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\57\29\194\91", "\218\119\124\175\62\168\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\245\68\193\166\228\8\240\173\245\69\193", "\164\197\144\40"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\252\171\140", "\214\227\144\202\235\189")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\154\164\110\2\161\86\50\249\145\143\126\29\182", "\92\141\197\231\27\112\211\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\246\153\183", "\177\134\159\234\195")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\238\57\161\220\177\255", "\169\221\139\95\192")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\225\180\92\42\48\52\219\133\107\11\42\35\211\142", "\70\190\235\31\95\66")] or LUAOBFUSACTOR_DECRYPT_STR_0("\158\231\28\231\240\182\246", "\133\218\130\122\134")),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\254\239\200\222\162\59\55", "\88\92\159\131\164\188\195")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\174\47\178\78", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\253\156\19\129\26\244\143\27\196\110\221\153\88\143\96", "\161\78\156\234\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\187\200\219", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\54\113\126\255\200\1\90\118\237\210\8\82\126", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\128\120\55\30\132\118\56\31\137\107", "\84\123\236\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\138\167\18\226\251\190", "\213\144\235\202\119\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\25\210\38\42\34\78\40", "\45\67\120\190\74\72\67")]=function()
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\14\35\224\160", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\209\52\163\200\32\197\48\180\141\13\196\98\146\128\6\221\39", "\232\99\176\66\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\32\36\10\121\140\250\39", "\76\140\65\72\102\27\237\153")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\117\229\56\215\192\53\182\79\215\19\252\214\12\187", "\222\42\186\118\178\183\97")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\106\229\74\142\82\251\102\173", "\234\61\140\36")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\212\190\119\13\32\207\152\85", "\111\65\189\218\18")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\95\30\56\41\123", "\207\35\43\123\85\107\60")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\169\163\239\119\100\251", "\25\16\202\192\138")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\200\174\231\167\224\175", "\148\157\171\205\130\201")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\219\115\46\221\243\12\250", "\150\67\180\20\73\177")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\185\29\2\89", "\45\237\120\122")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\237\186\56\243\233\176\39", "\76\183\136\194")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\73\242\247\55\91\74", "\116\26\134\133\88\48\47")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\200\180\232\184", "\18\126\161\192\132\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\107\32\171\9\83", "\54\63\72\206\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\86\75\110\224\117\220", "\27\168\57\37\26\133")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\30\171\106\173\211\119\234", "\183\77\202\28\200") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\51\54\143\9\2\63\157", "\104\119\83\233"),LUAOBFUSACTOR_DECRYPT_STR_0("\198\246\40\53", "\35\149\152\71\66"),LUAOBFUSACTOR_DECRYPT_STR_0("\41\225\76\187\35", "\90\121\136\34\208")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\243\11\77\10", "\126\167\110\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\30\58\253\206\57\60\19\43\184\255\48\49\31\60\235", "\95\93\112\78\152\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\249\140\18\234", "\178\161\149\229\117\132\222")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\218\208\169", "\67\232\187\189\204\193\118\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\45\182\37\53\22\175\168\33\185\47\41\66\190", "\143\235\78\213\64\91\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\171\68\133\238", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\186\220\204\214\15\169\151\208\234\213\6\165\145\178", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\133\187\103", "\19\49\236\200")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\218\50\240\182\241\182\234", "\218\158\87\150\215\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\11\203\242\58\39", "\173\155\126\185\130\86\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\167\182\203\138\237\230\173", "\140\133\198\218\167\232")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\47\185\120", "\228\213\78\212\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\79\181\0\229\147\12\149\10\231\136\94\246\87", "\139\231\44\214\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\227\7\89", "\118\185\143\102\62\112\209\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\79\10\233\169\26\14\11\89\124\44\229\177\71", "\88\60\16\73\134\197\117\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\227\235\220", "\33\48\138\152\168")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\86\19\54\80\212\59\102", "\87\18\118\80\49\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\18\207\165", "\208\44\126\186\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\27\168\202\22\253\202\69", "\46\151\122\196\166\116\156\169")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\75\31", "\155\133\141\38\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\37\171\70\67\122\229\10\4\236\98\64\115\170\55", "\197\69\74\204\33\47\31"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\67\91\128", "\231\144\47\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\231\238\122\31\58\195\60\145\215\214\122\10\14\202\53\183\219\206", "\89\210\184\186\21\120\93\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\90\111\193", "\90\209\51\28\181\25")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\244\126\81\239\170\220\111", "\223\176\27\55\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\174\220\165\40\190", "\213\68\219\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\225\47\235\40\196\60\116", "\31\107\128\67\135\74\165\95")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\232\225\232\78\73\241\250\228\253\78\74", "\209\184\136\156\45\33")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\193\113\6\177\0\192\97\72\136\18\218\101\4\189", "\216\103\168\21\104")]=Color3.fromRGB(15, 12, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\172\81\175\56\138\81\161\97", "\196\24\205\35")]=Color3.fromRGB(35, 35, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\138\245\31\110\169\239\19\43", "\102\78\235\131")]=Color3.fromRGB(20, 22, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\43\49\84\7\11\178\48", "\84\154\78\84\36\39\89\215")]=Color3.fromRGB(25, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\238\68\93\22\233\161\113\74\0\248\239", "\101\157\129\54\56")]=Color3.fromRGB(12, 20, 12)};
		local bgList = {};
		for n in pairs(bgOptions) do
			table.insert(bgList, n);
		end
		table.sort(bgList);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\51\168\135\174", "\25\125\201\234\203\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\245\27\8\19\53\28\108\250\28\67\55\40\31\118\230", "\115\25\148\120\99\116\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\49\184\35", "\33\108\93\217\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\116\131\170\235\89\164\190\222\95\146\168\215\78\162\185", "\205\187\43\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\123\22\203", "\191\158\18\101")]=bgList,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\198\129\182\186\201\215", "\207\165\163\231\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\240\237\85\44\48\228\245\248\85\47", "\16\166\153\153\54\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\178\204\74\54\32\250\217", "\153\178\211\160\38\84\65")]=function(val)
			if bgOptions[val] then
				Theme.WindowBG = bgOptions[val];
				local h, s, v = Color3.toHSV(Theme.WindowBG);
				Theme.SidebarBG = Color3.fromHSV(h, s, math.min(v + 0.05, 1));
				Theme.ItemBG = Color3.fromHSV(h, s, math.min(v + 0.1, 1));
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\172\10\87\46", "\75\226\107\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\247\81\73\18\195\193\93", "\173\56\190\113\26\113\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\237\210\44\2", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\16\223\188\241\78\8\196\35\253", "\107\165\79\152\201\152\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\71\230", "\31\55\46\136\171\52")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\41\196", "\148\177\72\188")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\179\81\210\179\186\67", "\179\198\214\55")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\13\126\122\71\210\243\7", "\179\144\108\18\22\37")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\239\173\29\134\220", "\175\166\195\123\233"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\219\199\69\93", "\144\143\162\61\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\220\25\85\96\137\115\213\250\93\82\107\199\31\233\201\24\116\119\145", "\83\128\179\125\48\18\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\187\250\218\73", "\126\61\215\147\189\39")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\91\240\17\74\106", "\37\24\159\125")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\167\120\71", "\34\186\198\21")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\1\214\94\205\234\12\133\110\199\234\30\192\79", "\162\152\104\165\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\38\188\118", "\133\173\79\210\29\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\104\249\59\158\38\162\100\137\117\254\40\130\110\233\101\138\123\162\25\133\88\227\30\188\110\185\15\152", "\75\237\28\141")});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\227\96\239\164\61\9\226\239\200\107\196\180\34\30", "\129\188\63\172\209\79\123\135")] or LUAOBFUSACTOR_DECRYPT_STR_0("\100\225\224\204\85\232\242", "\173\32\132\134"));
	end;
	return WindowAPI;
end;
return Library;
