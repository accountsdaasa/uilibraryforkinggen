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
			if (object.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\138\43\170\112\176\168", "\212\217\67\203\20\223\223\37")) then
				local currentX = StartPosition.X.Offset + Delta.X;
				local currentY = StartPosition.Y.Offset + Delta.Y;
				local parentSize = object.Parent.AbsoluteSize;
				local objectSize = object.AbsoluteSize;
				local maxOffsetX = (parentSize.X - objectSize.X) / 2;
				local maxOffsetY = (parentSize.Y - objectSize.Y) / 2;
				if (maxOffsetX > 0) then
					currentX = math.clamp(currentX, -maxOffsetX, maxOffsetX);
				end
				if (maxOffsetY > 0) then
					currentY = math.clamp(currentY, -maxOffsetY, maxOffsetY);
				end
				object.Position = UDim2.new(0.5, currentX, 0.5, currentY);
			else
				local smoothPos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y);
				object.Position = smoothPos;
			end
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
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\132\166\214\181\154\138\245", "\178\218\237\200")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\188\226\213\180\180\244\242\145", "\176\214\213\134")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\185\179\217\138\113", "\57\148\205\214\180\200\54")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\254\54\49\120\6\172", "\22\114\157\85\84")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\200\16\193\83\226\250", "\200\164\171\115\164\61\150")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\251\4\66\143\187\219\45", "\227\222\148\99\37")]=((saved.ToggleON and ToColor(saved.ToggleON)) or ToColor(saved.Accent2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\87\74\226", "\153\83\50\50\150")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\115\107\8\87\170\95\86", "\45\61\22\19\124\19\203")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\6\31\250\9\117", "\217\161\114\109\149\98\16")]=ToColor(saved.Stroke)};
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
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\45\31\27\105\174\102\23\46\44\72\180\113\31\37", "\20\114\64\88\28\220")] = themeName;
		end
	end
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\4\40\245\166\249\212\180\52\15\198", "\221\81\97\178\212\152\176")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\234\242\20\212\24\199\226\30\239", "\122\173\135\125\155")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\192\3\178\56\35\199\145\207\4\154\48\61\199\150\146", "\168\228\161\96\217\95\81")]=Theme.WindowBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\238\248\9\78\46\83\210\212\32\72", "\55\187\177\78\60\79")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\10\219\86\196\68\197\133\46\218", "\224\77\174\63\139\38\175")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\64\91\37\131\83\87\59\138\69\123\33\136\78\74\125", "\78\228\33\56")]=Theme.SidebarBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\233\107\187\44\135\196\123\177\23", "\229\174\30\210\99")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\57\236\133\90\234\47\54\14\227\130\114\226\49\54\9\190", "\89\123\141\230\49\141\93")]=Theme.ItemBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.Strokes) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\208\126\250\3\2", "\42\147\17\150\108\112")]=Theme.UIStrokeColor}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.Texts) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\59\163\53\107\196\231\3\169\63\44", "\136\111\198\77\31\135")]=Theme.Text}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.TextDarks) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\12\191\66\158\235\27\166\16\90", "\201\98\105\199\54\221\132\119")]=Theme.TextDark}, 0.3);
	end
	for _, tab in pairs(Library.ThemeObjects.Tabs) do
		local isActive = tab.Name == Library.CurrentTab;
		if isActive then
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\155\13\128\42\5\39\163\172\2\135\2\13\57\163\171\95", "\204\217\108\227\65\98\85")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241\15\207\82\204\231\182", "\160\62\163\149\133\76")]=Theme.Text}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\161\14\36\196\196\175\24\33\199\226\178\12\33\208\198\161\31\42\205\213\185", "\163\182\192\109\79")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\39\3\203\242\38\41\21\206\241\23\41\12\207\231\103", "\149\84\70\96\160")]=Theme.AccentStart}, 0.3);
		else
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\7\14\230\63\20\2\248\54\2\46\226\52\9\31\190", "\141\88\102\109")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\86\210\100\57\50\89\206\161\0", "\161\211\51\170\16\122\93\53")]=Theme.TextDark}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\175\177\35\252\188\189\61\245\170\134\58\250\160\161\56\250\188\183\38\248\183", "\72\155\206\210")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\123\87\5\52\84\117\65\0\55\101\117\88\1\33\21", "\83\38\26\52\110")]=Theme.AccentStart}, 0.3);
		end
	end
	for _, toggle in pairs(Library.ThemeObjects.Toggles) do
		toggle.Update(Library.Flags[toggle.Flag]);
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\91\24\41\64\81\16\105\76\75\24\41", "\38\56\119\71");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\216\230\86\209\2\83\253\218\113", "\54\147\143\56\182\69")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\253\136\241\78\234\255", "\191\182\225\159\41"), LUAOBFUSACTOR_DECRYPT_STR_0("\10\30\58\80\138\131\219\107\32\61\91\133\142\204\44", "\162\75\114\72\53\235\231"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\63\86\231\86\12\171\41\77", "\98\236\92\36\130\51"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\143\16\2\189\98\173\187\5\141", "\80\196\121\108\218\37\200\213");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local ShadowHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\35\114\12\105\74\29\173\18\124\23\111", "\234\96\19\98\31\43\110"), ScreenGui);
	ShadowHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\53\23\83\195\163\101", "\235\102\127\50\167\204\18");
	ShadowHolder.BackgroundTransparency = 1;
	ShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5);
	ShadowHolder.Size = UDim2.new(0, 680, 0, 580);
	ShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0);
	ShadowHolder.GroupTransparency = 0;
	ShadowHolder.ZIndex = 0;
	local ShadowImage = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\172\244\36\65\2\81\163\240\47", "\78\48\193\149\67\36"), ShadowHolder);
	ShadowImage.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\34\28\152\25\82\35\27\148\17\69\106\81\207\78\17\97\75\216\65\22\104\74\211", "\33\80\126\224\120");
	ShadowImage.ImageColor3 = Color3.new(0, 0, 0);
	ShadowImage.ImageTransparency = 0.4;
	ShadowImage.ScaleType = Enum.ScaleType.Slice;
	ShadowImage.SliceCenter = Rect.new(49, 49, 450, 450);
	ShadowImage.Size = UDim2.new(1, 0, 1, 0);
	ShadowImage.Position = UDim2.new(0, 0, 0, 0);
	ShadowImage.BackgroundTransparency = 1;
	ShadowImage.ZIndex = 0;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\186\2\201\89", "\60\140\200\99\164"), ShadowHolder);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\170\245\13\40\132\149\245\9\35", "\194\231\148\100\70");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(1, -34, 1, -34);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\242\160\247\196\67", "\168\38\44\161\195\150"), ShadowHolder);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\195\165\99\57\219\181\23\140\249", "\118\224\156\226\22\80\136\214")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	table.insert(Library.ThemeObjects.BgMain, MainFrame);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\119\199\122\143\80\224\92\146", "\224\34\142\57"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 12);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\142\246\201\97\254\86\11", "\110\190\199\165\189\19\145\61"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 0.8;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\68\225\145\194\249\228\121\251\159\213\219\226\121\252", "\167\186\139\23\136\235"), ShadowHolder);
	sizeConstraint.MaxSize = Vector2.new(9999, 9999);
	sizeConstraint.MinSize = Vector2.new(300, 200);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\176\144\25\56\160\156\25\21\187", "\109\122\213\232"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\199\249\178\37\250\213\174\63\237\252\167\34", "\80\142\151\194");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\212\118\65\6", "\44\99\166\23"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\72\254\61\58\54\134\125\229", "\196\28\151\73\86\83");
	TitleBar.Size = UDim2.new(1, 0, 0, 50);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.BackgroundTransparency = 1;
	TitleBar.ZIndex = 2;
	MakeDraggable(TitleBar, ShadowHolder);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\14\40\23\135\116\25\116\246\15", "\22\147\99\73\112\226\56\120"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 28, 0, 28);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -14);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\112\250\225\161\185\119\231\249", "\237\216\21\130\149"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\169\103\113\120\240\238\123\172", "\62\226\46\63\63\208\169");
	TitleLabel.Size = UDim2.new(1, -100, 1, 0);
	TitleLabel.Position = UDim2.new(0, 50, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextSize = 16;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local TitleDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\11\84\142\26", "\62\133\121\53\227\127\109\79"), TitleBar);
	TitleDivider.Size = UDim2.new(1, 0, 0, 1);
	TitleDivider.Position = UDim2.new(0, 0, 1, 0);
	TitleDivider.BackgroundColor3 = Theme.UIStrokeColor;
	TitleDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, TitleDivider);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\17\42\225\244\187\182\4\27\60", "\194\112\116\82\149\182\206"), TitleBar);
	MinBtn.Size = UDim2.new(0, 30, 0, 30);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -15);
	MinBtn.Text = "-";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\129\111\23\210\236\11\43", "\110\89\200\44\120\160\130"), MinBtn).CornerRadius = UDim.new(0, 8);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	MinBtn.MouseEnter:Connect(function()
		Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\194\72\77\68\88\52\88\165\199\104\73\79\69\41\30", "\45\203\163\43\38\35\42\91")]=Theme.AccentStart}, 0.2);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\237\186\233\10\184\132\125\252\172\241\10\189\140\112", "\52\178\229\188\67\231\201")] then
			Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\3\64\83\15\240\78\44\52\79\84\39\248\80\44\51\18", "\67\65\33\48\100\151\60")]=Theme.ItemBG}, 0.2);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\236\228\188\221\246\209\192\187\209", "\147\191\135\206\184"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\175\10\179\213\204\92\188\163\61\175", "\210\228\72\198\161\184\51");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\68\242\23\118\236\35\93\231\31\125", "\174\86\41\147\112\19"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 0, 0, 0);
	KBtn.Position = UDim2.new(0.9, -50, 0.5, 0);
	KBtn.Visible = false;
	KBtn.ZIndex = 10;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\100\63\166\52\21\32\34", "\203\59\96\237\107\69\111\113"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\27\41\153\200\14\221\254\10\63\129\200\11\213\243", "\183\68\118\204\129\81\144")] = isMinimized;
		Library:Save();
		if isMinimized then
			for _, closeFunc in pairs(Library.OpenDropdowns) do
				pcall(closeFunc);
			end
		end
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\49\146\91\219\56\139\20\168", "\226\110\205\16\132\107")] or DEFAULTS.KSize;
		if isMinimized then
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\204\209\239\204\81\223\209\225\215\82\251\194\242\220\79\232\218", "\33\139\163\128\185")]=1}, 0.3);
			KBtn.Visible = true;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\100\81\30\219", "\190\55\56\100")]=UDim2.new(0, kSize, 0, kSize),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\162\61\25\22\215\225\87\161\47\14\18\241\246\88\172\37", "\147\54\207\92\126\115\131")]=0}, 0.4, Enum.EasingStyle.Back);
			task.wait(0.3);
			if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\50\14\0\84\50\83\36\31\28\80\36\68\40\21", "\30\109\81\85\29\109")] then
				ShadowHolder.Visible = false;
			end
		else
			ShadowHolder.Visible = true;
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\216\99\91\163\38\234\238\254\127\71\166\55\204\249\241\114\77", "\156\159\17\52\214\86\190")]=0}, 0.3);
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\157\230\167\185", "\220\206\143\221")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\112\44\16\221\248\192\135\115\62\7\217\222\215\136\126\52", "\178\230\29\77\119\184\172")]=1}, 0.3, Enum.EasingStyle.Back);
			task.wait(0.2);
			if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\202\129\63\50\72\213\220\144\35\54\94\194\208\154", "\152\149\222\106\123\23")] then
				KBtn.Visible = false;
			end
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\226\25\195\106\138\240\15\216\106\152\244\28\211\103", "\213\189\70\150\35")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\112\106\95\55\124\92\110\13", "\104\47\53\20")] or DEFAULTS.KSize;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\144\69\155\25", "\111\195\44\225\124\220")]=UDim2.new(0, kSize, 0, kSize)}, 0.3);
		end
	end;
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\231\121\52\124\172\172\212\67\43\118\178", "\203\184\38\96\19\203")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\6\76\76\104\241\20\90\87\104\227\16\73\92\101", "\174\89\19\25\33")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\16\45\103\103\200\170\34\1\59\127\103\205\162\47", "\107\79\114\50\46\151\231")] then
		ShadowHolder.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\6\153\158\22\185\48\173\197", "\160\89\198\213\73\234\89\215")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		ShadowHolder.Visible = true;
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\99\181\243\192", "\165\40\17\212\158"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\214\208\12\54\36\228\203\43\60\40\241\216\1\61\35\247", "\70\133\185\104\83");
	SidebarContainer.Size = UDim2.new(0, 130, 1, -50);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 50);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarContainer);
	local SidebarDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\87\69\39\204", "\169\100\37\36\74"), SidebarContainer);
	SidebarDivider.Size = UDim2.new(0, 1, 1, 0);
	SidebarDivider.Position = UDim2.new(1, -1, 0, 0);
	SidebarDivider.BackgroundColor3 = Theme.UIStrokeColor;
	SidebarDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, SidebarDivider);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\132\176\95\12\139\171\94\7\161\176\81\13\130", "\48\96\231\194"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\34\36\10\204\131\130\209\85\27\57", "\227\168\58\110\77\121\184\207"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\21\143\65\181\223\120\171\124", "\197\27\92\223\32\209\187\17"), TabBar).PaddingTop = UDim.new(0, 10);
	TabListLayout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\34\93\208\244\15\74\215\254\32\80\205\239\6\81\215\200\10\69\198", "\155\99\63\163")):Connect(function()
		TabBar.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 20);
	end);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\164\195\160\128\188", "\228\226\177\193\237\217"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -130, 1, -50);
	PagesContainer.Position = UDim2.new(0, 130, 0, 50);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\153\19\231\48\180\42\232\51", "\134\84\208\67"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 15);
	ContentPadding.PaddingRight = UDim.new(0, 15);
	ContentPadding.PaddingTop = UDim.new(0, 15);
	ContentPadding.PaddingBottom = UDim.new(0, 15);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\169\158\72\49\185\146\72\28\162", "\60\115\204\230"), TabBar);
		TabBtn.Size = UDim2.new(1, -20, 0, 36);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 13;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\19\200\127\245\52\238\98", "\16\135\90\139"), TabBtn).CornerRadius = UDim.new(0, 6);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\102\7\62\75", "\24\52\20\102\83\46\52"), TabBtn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BackgroundTransparency = 1;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\6\2\43\29\202\42\51", "\111\164\79\65\68"), Indicator).CornerRadius = UDim.new(0, 4);
		local function UpdateTabButtonStyle(button, indicator, isActive)
			if isActive then
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\228\216\128\213\41\248\201\204\141\218\13\229\202\214\145\141", "\138\166\185\227\190\78")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\113\221\35\113\44\21\196\102\150", "\121\171\20\165\87\50\67")]=Theme.Text}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\228\57\186\61\190\16\201\45\183\50\141\16\199\54\170\38\184\16\195\54\186\47", "\98\166\88\217\86\217")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\247\122\10\129\206\249\227\119\5\165\211\250\249\107\82", "\188\150\150\25\97\230")]=Theme.AccentStart}, 0.3);
			else
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\136\92\9\11\255\213\156\81\6\47\226\214\134\77\81", "\141\186\233\63\98\108")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\239\52\162\6\254\230\35\164\118", "\69\145\138\76\214")]=Theme.TextDark}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\82\206\138\130\184\4\127\218\135\141\139\4\113\193\154\153\190\4\117\193\138\144", "\118\16\175\233\233\223")]=1}, 0.3);
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\169\144\59", "\29\235\228\85\219\142\235")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\218\190\212\116\79\51\93\47", "\50\93\180\218\189\23\46\71")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\165\86\73", "\40\190\196\59\44\36\188")]=name});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\30\81\210", "\109\92\37\188\212\154\29")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\45\225\160\202\50\91\16\224\182", "\58\100\143\196\163\81")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\67\46\166", "\110\122\34\67\195\95\41\133")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\178\73\69\218\121\184\85\77\240\103\176\86\79", "\182\21\209\59\42"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\136\103\196\26\36", "\222\215\55\165\125\65");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\248\234\19\225\213\193\75\53\222\211\14", "\42\76\177\166\122\146\161\141"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\53\207\125\114\172\132\2", "\22\197\234\101\174\25"), Page);
		PagePadding.PaddingRight = UDim.new(0, 10);
		PagePadding.PaddingBottom = UDim.new(0, 10);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\11\38\164\209\115", "\230\77\84\197\188\22\207\183")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\21\203\249", "\85\153\116\166\156\236\193\144")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\242\76\190\225", "\96\196\128\45\211\132"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\88\80\192\161\177\202", "\184\85\237\27\63\178\207\212"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\92\17\75\36\88\11\90\4", "\63\104\57\105"), Frame);
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
			local SwitchBg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\149\165\73\14", "\36\107\231\196"), Frame);
			SwitchBg.Size = UDim2.new(0, 44, 0, 22);
			SwitchBg.Position = UDim2.new(1, -54, 0.5, -11);
			SwitchBg.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\129\136\79\187\167\149", "\231\61\213\194"), SwitchBg).CornerRadius = UDim.new(1, 0);
			local SwitchKnob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\191\60\126\12", "\19\105\205\93"), SwitchBg);
			SwitchKnob.Size = UDim2.new(0, 18, 0, 18);
			SwitchKnob.Position = UDim2.new(0, 2, 0.5, -9);
			SwitchKnob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\33\253\142\45\167\13\204", "\95\201\104\190\225"), SwitchKnob).CornerRadius = UDim.new(1, 0);
			local ClickArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\206\217\218\141\222\213\218\160\197", "\174\207\171\161"), Frame);
			ClickArea.Text = "";
			ClickArea.BackgroundTransparency = 1;
			ClickArea.Size = UDim2.new(1, 0, 1, 0);
			ClickArea.ZIndex = 10;
			local function UpdateVisuals(val)
				if val then
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\207\255\14\248\255\197\226\235\3\247\219\216\225\241\31\160", "\183\141\158\109\147\152")]=Theme.ToggleON}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\6\245\5\56\0\233\2", "\108\76\105\134")]=UDim2.new(1, -20, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\196\178\234\201\249\202\164\239\202\200\202\189\238\220\184", "\174\139\165\209\129")]=Color3.new(1, 1, 1)}, 0.25, Enum.EasingStyle.Back);
				else
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\129\178\225\202\193\17\127\109\173\183\193\206\202\12\98\43", "\24\195\211\130\161\166\99\16")]=Theme.WindowBG}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\118\12\250\37\71\31\73\13", "\118\38\99\137\76\51")]=UDim2.new(0, 2, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\39\6\25\14\50\242\51\11\22\42\47\241\41\23\65", "\64\157\70\101\114\105")]=Theme.TextDark}, 0.25, Enum.EasingStyle.Back);
				end
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\117\184\163\226\4\69", "\112\32\200\199\131")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\92\93\191", "\66\76\48\60\216\163\203")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\158\131\119\250\90\202", "\68\218\230\25\147\63\174"), reason, 3);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\56\82\65\179", "\214\205\74\51\44"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\101\193\243\101\244\73\240", "\23\154\44\130\156"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\163\181\186\26\18\19\163\161", "\115\113\198\205\206\86"), Frame);
			TopLabel.Size = UDim2.new(1, -40, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 8);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamMedium;
			TopLabel.TextSize = 14;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78\168\86\252\95\136", "\58\228\55\158"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 8);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextSize = 14;
			ValLabel.TextColor3 = Theme.AccentStart;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.TextXAlignment = Enum.TextXAlignment.Right;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local SliderBarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\146\155\209\35\57", "\85\212\233\176\78\92\205"), Frame);
			SliderBarBG.Size = UDim2.new(1, -20, 0, 6);
			SliderBarBG.Position = UDim2.new(0, 10, 0, 38);
			SliderBarBG.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\113\171\237\88\86\141\240", "\130\42\56\232"), SliderBarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\167\37\238\69", "\95\138\213\68\131\32"), SliderBarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\1\130\76\100\36\45\179", "\22\74\72\193\35"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\80\195\74\45\125\237\93\34\109", "\56\76\25\132"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, UIGradientFill);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\211\170\43\202", "\175\62\161\203\70"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\244\224\28\39\50\216\209", "\85\92\189\163\115"), Knob).CornerRadius = UDim.new(1, 0);
			Frame:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\31\165\35\49\43\160\53", "\88\73\204\80")):Connect(function()
				if Frame.Visible then
					local percent = (Library.Flags[sFlag] - min) / (max - min);
					Fill.Size = UDim2.new(percent, 0, 1, 0);
				end
			end);
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
			local function CloseDropdown()
				Open = false;
				DropdownHolder.Visible = false;
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
					CloseDropdown();
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\202\32\42\41\193\76\13\74", "\36\152\79\94\72\181\37\98")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\215\75\48\197", "\95\183\184\39")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\129\45\230\40\71\144\3\167\58\233\37\77", "\98\213\95\135\70\52\224")]=0.8}, 0.2);
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
			local function CloseDropdown()
				Open = false;
				DropdownHolder.Visible = false;
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
					CloseDropdown();
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\184\8\212\85\133\172\68", "\195\42\215\124\181\33\236")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\86\59\49\55", "\152\109\57\87\94\69")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\205\197\11\173\173\194\85\186\252\217\9\186", "\200\153\183\106\195\222\178\52")]=0.8}, 0.2);
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
			InputContainer.ClipsDescendants = true;
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
			Input.TextXAlignment = Enum.TextXAlignment.Left;
			Input.TextTruncate = Enum.TextTruncate.AtEnd;
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
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\174\91\239\76\132\93\249", "\40\237\41\138"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\243\113\226\236", "\42\167\20\154\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\215\226\64\104\97\102\247\184\71\85\36\92", "\65\42\158\194\34\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\43\91\11\35", "\142\122\71\50\108\77\141\123")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\173\243\23\41", "\91\117\194\159\120")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\28\51\29", "\68\122\125\94\120\85\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\51\21\220\93\199\203\190\87\47\202\76\222\220\168", "\218\119\124\175\62\168\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\249\70\207", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\228\190\155\206\236\204\191\174\130\206\181\140\226\174\197\218\177\204\194\162\175\211\131\178\226\254\175\200", "\214\227\144\202\235\189")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\160\159\111", "\92\141\197\231\27\112\211\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\247\143\174\212\166\210\139\173\208\225\250\152", "\177\134\159\234\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\231\54\167\199", "\169\221\139\95\192")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\250\142\121\62\55\42\202", "\70\190\235\31\95\66"),LUAOBFUSACTOR_DECRYPT_STR_0("\137\236\21\241", "\133\218\130\122\134"),LUAOBFUSACTOR_DECRYPT_STR_0("\12\246\237\207\197", "\88\92\159\131\164\188\195")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\174\47\178\78", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\249\134\19\194\58\188\190\30\196\35\249", "\161\78\156\234\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\187\200\219", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\54\124\110\250\238\12\81\111\220\244\12\82\126", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\133\106\32", "\84\123\236\25")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\142\172\22\185\185\228", "\213\144\235\202\119\204")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\28\39\253\63\58\49\72\45\12\234\34\45\46\72", "\45\67\120\190\74\72\67")] or LUAOBFUSACTOR_DECRYPT_STR_0("\4\39\235\164\236\132\250", "\137\64\66\141\197\153\232\142")),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\209\46\170\138\2\211\41", "\232\99\176\66\198")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\32\37\3", "\76\140\65\72\102\27\237\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\219\0\215\151\53\182\79\215\19\146\246\18\240\4\148", "\222\42\186\118\178\183\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\224\69\141", "\234\61\140\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\226\148\119\24\21\213\191\127\10\15\220\183\119", "\111\65\189\218\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\71\26\54\14\84\160\79\79\30\39", "\207\35\43\123\85\107\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\94\171\173\239\55\62\228", "\25\16\202\192\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\202\161\238\171\245\254\192", "\148\157\171\205\130\201")]=function()
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\213\121\44", "\150\67\180\20\73\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\25\12\72\205\59\15\95\159\29\20\89\205\44\18\72\128\29", "\45\237\120\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\233\174\32\213\233\161\39", "\76\183\136\194")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\69\217\203\61\71\123\28\127\235\224\22\81\66\17", "\116\26\134\133\88\48\47")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\41\200\174\224\178\101\60\230", "\18\126\161\192\132\221")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\33\170\1\84\94\58\140\35", "\54\63\72\206\100")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\77\64\119\199\92", "\27\168\57\37\26\133")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\169\127\173\217\57\251", "\183\77\202\28\200")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\48\138\13\25\39\219", "\104\119\83\233")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\247\32\37\79\240\215\9", "\35\149\152\71\66")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\237\90\164", "\90\121\136\34\208")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\11\77\10\227\15\71\21", "\126\167\110\53")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\4\60\247\215\58", "\95\93\112\78\152\188")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\245\252\145\25\225", "\178\161\149\229\117\132\222")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\211\216\161\164", "\67\232\187\189\204\193\118\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\33\187\52\62\12\251", "\143\235\78\213\64\91\98")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\190\73\146\236\116\236\205", "\214\237\40\228\137\16") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\161\230\233\216\22\170\145", "\198\229\131\143\185\99"),LUAOBFUSACTOR_DECRYPT_STR_0("\98\130\167\100", "\19\49\236\200"),LUAOBFUSACTOR_DECRYPT_STR_0("\206\62\248\188\253", "\218\158\87\150\215\132")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\207\27\193\246", "\173\155\126\185\130\86\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\168\174\194\154\234\228\165\191\135\171\227\233\169\168\212", "\140\133\198\218\167\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\34\189\122\138", "\228\213\78\212\29")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\169\77\187\0", "\139\231\44\214\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\236\5\91\30\165\113\53\214\227\9\76\80\224", "\118\185\143\102\62\112\209\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\40\225", "\88\60\16\73\134\197\117\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\213\219\199\77\95\248\203\205\77\85\233\236\153", "\33\48\138\152\168"),[LUAOBFUSACTOR_DECRYPT_STR_0("\94\31\35\69", "\87\18\118\80\49\161")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\27\220\161\165\64\10", "\208\44\126\186\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\15\182\214\24\249", "\46\151\122\196\166\116\156\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\236\74\22\249\228\238\77", "\155\133\141\38\122")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\43\161\68", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\76\89\130\254\91\26\164\255\67\85\149\176\29", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\212\219\114", "\89\210\184\186\21\120\93\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\108\95\218\117\53\163\96\121\217\124\57\165\1", "\90\209\51\28\181\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\114\68\250", "\223\176\27\55\142")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\0\190\200\180\49\183\218", "\213\68\219\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\236\54\226", "\31\107\128\67\135\74\165\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\233\240\65\67\176\219\227", "\209\184\136\156\45\33")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\41\201\120\13", "\216\103\168\21\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\76\162\68\163\116\168\3\139\86\237\96\171\116\162\81", "\196\24\205\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\135\226\1", "\102\78\235\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\17\0\75\64\62\187\49\217\33\56\75\85\10\178\56\255\45\32", "\84\154\78\84\36\39\89\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\232\69\76", "\101\157\129\54\56")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\57\172\140\170\54\117\9", "\25\125\201\234\203\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\73\225\10\19\24\34", "\115\25\148\120\99\116\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\60\181\40\67\13\62\178", "\33\108\93\217\68")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\235\66\181\174\211\11\131\161\218\72\170", "\205\187\43\193")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\123\1\209\247\117\13\203\190\66\16\205\238\126\0", "\191\158\18\101")]=Color3.fromRGB(15, 12, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\194\149\188\239\226\209\130\174", "\207\165\163\231\215")]=Color3.fromRGB(35, 35, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\248\239\79\100\82\202\236\252", "\16\166\153\153\54\68")]=Color3.fromRGB(20, 22, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\182\197\86\116\19\252\214", "\153\178\211\160\38\84\65")]=Color3.fromRGB(25, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\4\72\46\145\31\26\12\144\14\95\37", "\75\226\107\58")]=Color3.fromRGB(12, 20, 12)};
		local bgList = {};
		for n in pairs(bgOptions) do
			table.insert(bgList, n);
		end
		table.sort(bgList);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\223\28\127", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\223\46\14\240\217\209\56\11\243\139\253\34\9\248\217", "\151\171\190\77\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\35\249\174", "\107\165\79\152\201\152\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\113\202\204\100\109\82\93\237\223\103\122\91\75\235\223", "\31\55\46\136\171\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\33\207\224", "\148\177\72\188")]=bgList,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\179\81\210\179\186\67", "\179\198\214\55")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\5\102\117\77\147\210\0\115\117\78", "\179\144\108\18\22\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\162\23\133\205\199\160\16", "\175\166\195\123\233")]=function(val)
			if bgOptions[val] then
				Theme.WindowBG = bgOptions[val];
				local h, s, v = Color3.toHSV(Theme.WindowBG);
				Theme.SidebarBG = Color3.fromHSV(h, s, math.min(v + 0.05, 1));
				Theme.ItemBG = Color3.fromHSV(h, s, math.min(v + 0.1, 1));
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\193\195\80\76", "\144\143\162\61\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\218\19\89\127\142\41\229\215\93\114\70\169\115\211\218\7\85", "\83\128\179\125\48\18\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\187\242\218", "\126\61\215\147\189\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\192\54\122\75\246\7\64", "\37\24\159\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\175\123", "\34\186\198\21")]=30,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\9\221", "\162\152\104\165\61")]=250,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\42\180\124\101\233\217", "\133\173\79\210\29\16")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\125\225\39\143\125\238\32", "\75\237\28\141")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\242\94\193\180", "\129\188\63\172\209\79\123\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\205\166\254\67\229\234\200", "\173\32\132\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\23\9\232", "\173\46\123\104\143\206\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\34\5\159\76\176\2\181\17\39", "\97\212\125\66\234\37\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\234\184", "\126\234\131\214\85")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\212\81", "\47\228\181\41\58")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\249\223\58\22\60\11", "\127\198\156\185\91\99\80")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\27\192\252\165\10\58\213", "\190\149\122\172\144\199\107\89")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\13\58\210\235\236\32\0\255\234\202\58\0\252\251", "\158\82\101\145\158")] or LUAOBFUSACTOR_DECRYPT_STR_0("\84\251\4\23\81\124\234", "\36\16\158\98\118"));
	end;
	return WindowAPI;
end;
return Library;
