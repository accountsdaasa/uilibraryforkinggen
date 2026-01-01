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
local Workspace = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\159\114\110\35\0\100\251\64\173", "\35\200\29\28\72\115\20\154"));
local function Tween(obj, props, time, style, dir)
	if not obj then
		return;
	end
	TweenService:Create(obj, TweenInfo.new(time or 0.3, style or Enum.EasingStyle.Quint, dir or Enum.EasingDirection.Out), props):Play();
end
local CLICK_SOUND_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\11\189\201\222\158\63\49\13\182\213\133\194\99\99\76\235\132\140\220\123\98\65\238", "\84\121\223\177\191\237\76");
local function PlayClickSound()
	local sound = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\89\220\174\62", "\161\219\54\169\192\90\48\80"));
	sound.SoundId = CLICK_SOUND_ID;
	sound.Volume = 1;
	sound.Parent = CoreGui;
	sound:Play();
	sound.Ended:Connect(function()
		sound:Destroy();
	end);
end
local function Darken(color, factor)
	local h, s, v = Color3.toHSV(color);
	return Color3.fromHSV(h, s, math.clamp(v * factor, 0, 1));
end
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\125\77\7\34\69\71\43\32\80", "\69\41\34\96")]="L",[LUAOBFUSACTOR_DECRYPT_STR_0("\136\203\210\7\7\5\189\206\210", "\75\220\163\183\106\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\191\141\54\204\14\174", "\185\98\218\235\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\15\46\252\219", "\202\171\92\71\134\190")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\212\37\187\42\192\32\141", "\232\73\161\76")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\212\67\78\51\174\202\75\94\55\159", "\126\219\185\34\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\204\70\115\109\100\246\243\5\202\4\61\49\38\171\180\84\152\8\37\41\33\167", "\135\108\174\62\18\30\23\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\228\43\216\49\163\50\192\179\192\14", "\167\214\137\74\171\120\206\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\242\42\92\235\180\142\228\59\89\162\232\196\168\100\14\170\254\217\168\99\15\160\243\223\162\101", "\199\235\144\82\61\152")};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\53\19\189", "\75\103\118\217")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\70\113\26\190\27", "\126\167\52\16\116\217")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\43\44\140\187\14", "\156\168\78\64\224\212\121")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\231\168\203", "\174\103\142\197")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\113\58\90\61\43", "\152\54\72\63\88\69\62")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\221\239\82", "\60\180\164\142")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\82\16\44", "\114\56\62\101\73\71\141")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\252\201\212\180\236", "\164\216\137\187")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\239\63\185", "\107\178\134\81\210\198\158")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\6\139\210\175\119\41\144\195\179", "\202\88\110\226\166")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\231\10\132\246\223\207\27", "\170\163\111\226\151")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\38\57\188\60\65\32\11\54", "\73\113\80\210\88\46\87")]=Color3.fromRGB(45, 30, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\37\201\23\229\128\62\239\53", "\135\225\76\173\114")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\249\189\189\142\154", "\199\122\141\216\208\204\221")]=Color3.fromRGB(60, 45, 75),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\222\19\245\118\226\252", "\150\205\189\112\144\24")]=Color3.fromRGB(180, 80, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\135\188\73\10\156\67", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(100, 40, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\16\0\212\186\121\169\250", "\230\180\127\103\179\214\28")]=Color3.fromRGB(180, 80, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\71\82", "\128\236\101\63\38\132\33")]=Color3.fromRGB(245, 245, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\172\9\80\146\234\221\167", "\175\204\201\113\36\214\139")]=Color3.fromRGB(160, 150, 170),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\216\39\211\15\66", "\100\39\172\85\188")]=Color3.fromRGB(70, 50, 90)},[LUAOBFUSACTOR_DECRYPT_STR_0("\142\112\171\137\32\185\117\184\147", "\83\205\24\217\224")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\209\204\195\57\233\210\239\26", "\93\134\165\173")]=Color3.fromRGB(130, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\251\197\199\56\207\160\92\153", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(24, 60, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\90\117\7\199\105", "\106\133\46\16")]=Color3.fromRGB(160, 30, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\35\112\249\84\84\9", "\32\56\64\19\156\58")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\203\230\83\84\230\210", "\224\58\168\133\54\58\146")]=Color3.fromRGB(50, 205, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\89\76\250\121\131\168\37", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\9\225", "\175\187\235\113\149\217\188")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\199\120\106\55", "\24\92\207\225\44\131\25")]=Color3.fromRGB(200, 200, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\199\170\67\16\120", "\29\43\179\216\44\123")]=Color3.fromRGB(218, 165, 32)},[LUAOBFUSACTOR_DECRYPT_STR_0("\142\215\47\91", "\44\221\185\64")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\54\238\70\91\124\22\197\111", "\19\97\135\40\63")]=Color3.fromRGB(215, 215, 220),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\85\55\62\45\48\188\126\20", "\81\206\60\83\91\79")]=Color3.fromRGB(230, 230, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\191\213\127\13\228", "\196\46\203\176\18\79\163\45")]=Color3.fromRGB(200, 200, 205),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\33\125\27\42\239\190", "\143\216\66\30\126\68\155")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\203\14\206\203\183\133", "\129\202\168\109\171\165\195\183")]=Color3.fromRGB(160, 170, 190),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\87\48\223\210\17\201\12", "\134\66\56\87\184\190\116")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\52\17\175", "\85\92\81\105\219\121\139\65")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\182\72\81\88\222\239\184", "\191\157\211\48\37\28")]=Color3.fromRGB(110, 110, 120),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\11\230\19\49\218", "\90\191\127\148\124")]=Color3.fromRGB(180, 180, 190)},[LUAOBFUSACTOR_DECRYPT_STR_0("\72\142\32\28\97", "\119\24\231\78")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\181\36\171\78\211\87\51\165", "\113\226\77\197\42\188\32")]=Color3.fromRGB(60, 30, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\31\240\176\56\23\230\151\29", "\213\90\118\148")]=Color3.fromRGB(20, 10, 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\58\177\91\111\124", "\45\59\78\212\54")]=Color3.fromRGB(80, 45, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\85\128\142\136\58\252", "\144\112\54\227\235\230\78\205")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\43\12\249\222\79\225", "\59\211\72\111\156\176")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\136\228\42\66\130\204\3", "\77\46\231\131")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84", "\32\218\52\214")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188\213\177\87\81", "\58\46\119\81\200\145\208\37")]=Color3.fromRGB(180, 140, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\152\34\163\162\184", "\86\75\236\80\204\201\221")]=Color3.fromRGB(100, 60, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\69\72\121\129\241\156\80\102", "\235\18\33\23\229\158")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\116\191\199\186\69\182\213", "\219\48\218\161")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\120\120\76\217\78\242\198\86", "\128\132\17\28\41\187\47")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\37\55\0\59\72\13\38", "\61\97\82\102\90")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\58\174\70\229\112", "\105\204\78\203\43\167\55\126")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\129\175\37\31\6\8\211", "\49\197\202\67\126\115\100\167")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\88\220\44\142\66\109\35\90\205\61", "\62\87\59\191\73\224\54")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\195\7\252\200\242\14\238", "\169\135\98\154")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\234\116\39\81\243\39\237\197\115", "\168\171\23\68\52\157\83")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\243\172\48\33\147", "\231\148\17\149\205\69\77")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\180\168\192\252\91\250\175\137", "\159\224\199\167\155\55")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\211\246\58\211\226\255\40", "\178\151\147\92")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\184\248\84\38", "\26\236\157\44\82\114\44")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\14\43\211\90\63\34\193", "\59\74\78\181")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\212\66\78\151\36\195\81", "\211\69\177\58\58")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\147\224\127\244\252\199\163", "\171\215\133\25\149\137")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\225\1\238\253\63\247\71\194\199\62\245\253", "\34\129\168\82\154\143\80\156")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\161\183\53\10\93\66\157", "\233\229\210\83\107\40\46")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\80\51\210\12\196\76\38\197", "\101\161\34\82\182")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\220\4\77\242\222\192\131\60\251", "\78\136\109\57\158\187\130\226")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\29\48\235\255\59\45\234", "\145\94\95\153")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\219\223\21\216\75\164", "\215\157\173\116\181\46")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\23\179\166\243\211\59", "\186\85\212\235\146")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\224\134\37\247\61\235\90\195\147", "\56\162\225\118\158\89\142")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\126\2\233\187\39\213\79", "\184\60\101\160\207\66")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\2\150\110\179\58\135\111", "\220\81\226\28")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\39\208\154\239\249", "\167\115\181\226\155\138")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\214\39\255\72\95\112\212\233\49", "\166\130\66\135\60\27\17")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\112\75\204\102", "\80\36\42\174\21")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\122\31\48\125\66\21\36", "\26\46\112\87")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\146\42\165\115\152\186\75", "\212\217\67\203\20\223\223\37");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\190\136\174\211\175\129\188\156\176\158\167\220", "\178\218\237\200");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\162\189\227\221\179\166\168\218\165\186\232", "\176\214\213\134");
Library.ActiveLoops = {};
Library.MainScale = nil;
Library.CurrentTab = nil;
Library.OpenDropdowns = {};
Library.CustomObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\162\163\218\172", "\57\148\205\214\180\200\54")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\240\52\51\115", "\22\114\157\85\84")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\197\26\201\113\249\167\212", "\200\164\171\115\164\61\150")]=nil};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\172\246\27\68\144\173\241\23\76\135\228\187\76\28\211\236\161\82\18\209\236\172\90\18\212\238\163", "\227\222\148\99\37");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\0\70\83\228\237\54\64\117\227\240", "\153\83\50\50\150")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\110\115\125\24\93\164\89\84\112\122\31\114\191\68\82\120", "\45\61\22\19\124\19\203"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\27\25\249\7", "\217\161\114\109\149\98\16")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\38\37\32\104", "\20\114\64\88\28\220")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\20\192\181\236\217\178\63", "\221\81\97\178\212\152\176")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\217\230\31\247\31", "\122\173\135\125\155")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\170\206\20\176\57\56\203\133\213\9\182\49", "\168\228\161\96\217\95\81"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\245\222\58\85\41\94\216\208\58\85\32\89", "\55\187\177\78\60\79"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\57\207\93\231\67", "\224\77\174\63\139\38\175"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\144\64\90\34\129", "\78\228\33\56"))) then
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
			if (object.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\253\118\179\7\138\217", "\229\174\30\210\99")) then
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
Library.UpdateCustomFeatures = function(self)
	local themeName = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\36\210\165\68\255\47\60\21\249\178\89\232\48\60", "\89\123\141\230\49\141\93")] or LUAOBFUSACTOR_DECRYPT_STR_0("\215\116\240\13\5\70\231", "\42\147\17\150\108\112");
	local function FixAssetID(id)
		if (not id or (id == "")) then
			return nil;
		end
		id = tostring(id);
		id = string.gsub(id, " ", "");
		if not string.find(id, LUAOBFUSACTOR_DECRYPT_STR_0("\29\164\53\126\244\251\10\178\36\123\189\167\64", "\136\111\198\77\31\135")) then
			return LUAOBFUSACTOR_DECRYPT_STR_0("\16\11\191\87\174\247\18\189\11\13\253\25\242", "\201\98\105\199\54\221\132\119") .. id;
		end
		return id;
	end
	local customMusic = FixAssetID(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\134\51\160\52\17\33\163\180\33\150\50\11\54\133\157", "\204\217\108\227\65\98\85")]);
	local customImage = FixAssetID(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\97\252\214\240\63\212\81\206\217\234\43\207\119\231", "\160\62\163\149\133\76")]);
	local targetMusicID = nil;
	if (customMusic and (customMusic ~= "")) then
		targetMusicID = customMusic;
	elseif (themeName == LUAOBFUSACTOR_DECRYPT_STR_0("\245\168\31\38\208\194\173\12\60", "\163\182\192\109\79")) then
		targetMusicID = DEFAULTS.XmasMusicID;
	end
	if targetMusicID then
		if not Library.CustomObjects.Sound then
			local music = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\41\21\206\241", "\149\84\70\96\160"));
			music.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\19\15\3\234\13\47\50\206\45\21\25\226\53\43\24\254\49\5", "\141\88\102\109");
			music.Volume = 0.5;
			music.Looped = true;
			music.Parent = CoreGui;
			Library.CustomObjects.Sound = music;
		end
		if (Library.CustomObjects.Sound.SoundId ~= targetMusicID) then
			Library.CustomObjects.Sound.SoundId = targetMusicID;
		end
		if not Library.CustomObjects.Sound.Playing then
			Library.CustomObjects.Sound:Play();
		end
	elseif Library.CustomObjects.Sound then
		Library.CustomObjects.Sound:Stop();
		Library.CustomObjects.Sound:Destroy();
		Library.CustomObjects.Sound = nil;
	end
	local targetImageID = nil;
	if (customImage and (customImage ~= "")) then
		targetImageID = customImage;
	elseif (themeName == LUAOBFUSACTOR_DECRYPT_STR_0("\144\91\216\121\9\41\88\192\160", "\161\211\51\170\16\122\93\53")) then
		targetImageID = DEFAULTS.XmasImageID;
	end
	if targetImageID then
		local mainFrame = Library.ThemeObjects.Frames[1];
		if (mainFrame and not Library.CustomObjects.Image) then
			local img = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\163\179\47\254\130\179\42\254\162", "\72\155\206\210"), mainFrame);
			img.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\101\111\71\26\60\75\94\81\13\60\84\123\64\7\60\72", "\83\38\26\52\110");
			img.BackgroundTransparency = 1;
			img.Size = UDim2.new(0, 100, 0, 100);
			img.Position = UDim2.new(1, -105, 1, -105);
			img.ZIndex = 10;
			img.Rotation = 0;
			Library.CustomObjects.Image = img;
			Library.CustomObjects.AnimLoop = task.spawn(function()
				while img and img.Parent do
					TweenService:Create(img, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\106\24\51\71\76\30\40\72", "\38\56\119\71")]=10}):Play();
					task.wait(1.5);
					TweenService:Create(img, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\193\224\76\215\49\95\252\225", "\54\147\143\56\182\69")]=-10}):Play();
					task.wait(1.5);
				end
			end);
		end
		if Library.CustomObjects.Image then
			if (Library.CustomObjects.Image.Image ~= targetImageID) then
				Library.CustomObjects.Image.Image = targetImageID;
			end
		end
	elseif Library.CustomObjects.Image then
		if Library.CustomObjects.AnimLoop then
			task.cancel(Library.CustomObjects.AnimLoop);
		end
		Library.CustomObjects.Image:Destroy();
		Library.CustomObjects.Image = nil;
	end
end;
Library.ApplyTheme = function(self, themeName)
	if themeName then
		local data = BUILTIN_THEMES[themeName];
		if (not data and Library.SavedThemes[themeName]) then
			local saved = Library.SavedThemes[themeName];
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\225\136\241\77\208\193\163\216", "\191\182\225\159\41")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\27\44\80\137\134\208\9\53", "\162\75\114\72\53\235\231")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\40\65\239\113\37", "\98\236\92\36\130\51")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\26\15\191\75\188\228", "\80\196\121\108\218\37\200\213")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\112\1\122\69\26\216", "\234\96\19\98\31\43\110")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\16\85\192\160\119\164\40", "\235\102\127\50\167\204\18")]=((saved.ToggleON and ToColor(saved.ToggleON)) or ToColor(saved.Accent2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\164\237\55", "\78\48\193\149\67\36")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\27\152\12\101\49\12\139", "\33\80\126\224\120")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\188\17\203\87\233", "\60\140\200\99\164")]=ToColor(saved.Stroke)};
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
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\184\203\39\51\176\149\241\10\50\150\143\241\9\35", "\194\231\148\100\70")] = themeName;
		end
		Library:UpdateCustomFeatures();
	end
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\230\177\247\204\79\73\207\183", "\168\38\44\161\195\150")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
			obj.Rotation = 0;
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\167\233\139\89\50\226\179\21\148", "\118\224\156\226\22\80\136\214")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\239\90\139\69\252\86\149\76\234\122\143\78\225\75\211", "\224\34\142\57")]=Theme.WindowBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.TitleBars) do
		obj.BackgroundColor3 = Darken(Theme.WindowBG, 0.7);
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\235\142\226\207\114\245\84\11\208\179", "\110\190\199\165\189\19\145\61")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\253\254\126\199\137\205\223\232\99", "\167\186\139\23\136\235")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\56\180\139\6\29\167\135\24\20\177\171\2\22\186\154\94", "\109\122\213\232")]=Theme.SidebarBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\201\226\171\31\236\253\167\51\250", "\80\142\151\194")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\33\199\116\71\4\212\120\89\13\194\84\67\15\201\101\31", "\44\99\166\23")]=Theme.ItemBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.Strokes) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\95\248\37\57\33", "\196\28\151\73\86\83")]=Theme.UIStrokeColor}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.Texts) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\161\87\20\121\225\80", "\22\147\99\73\112\226\56\120")]=Theme.Text}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.TextDarks) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\140\112\250\225\174\183\121\237\231\222", "\237\216\21\130\149")]=Theme.TextDark}, 0.3);
	end
	for _, tab in pairs(Library.ThemeObjects.Tabs) do
		local isActive = tab.Name == Library.CurrentTab;
		if isActive then
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\160\79\92\84\183\219\81\151\64\91\124\191\197\81\144\29", "\62\226\46\63\63\208\169")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\77\151\60\2\35\81\247\74", "\62\133\121\53\227\127\109\79")]=Theme.Text}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\21\49\254\209\188\173\5\26\54\193\196\175\172\3\4\51\231\211\160\161\9", "\194\112\116\82\149\182\206")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\169\79\19\199\240\1\44\166\72\59\207\238\1\43\251", "\110\89\200\44\120\160\130")]=Theme.AccentStart}, 0.3);
		else
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\194\72\77\68\88\52\88\165\199\104\73\79\69\41\30", "\45\203\163\43\38\35\42\91")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55\164\166\88\221\151\143", "\52\178\229\188\67\231\201")]=Theme.TextDark}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\3\64\83\15\240\78\44\52\79\84\48\229\93\45\50\81\81\22\242\82\32\56", "\67\65\33\48\100\151\60")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\230\173\211\244\205\232\187\214\247\252\232\162\215\225\140", "\147\191\135\206\184")]=Theme.AccentStart}, 0.3);
		end
	end
	for _, toggle in pairs(Library.ThemeObjects.Toggles) do
		toggle.Update(Library.Flags[toggle.Flag]);
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\135\39\168\199\209\84\252\142\59\169\207", "\210\228\72\198\161\184\51");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\29\64\253\23\84\203\56\124\218", "\174\86\41\147\112\19")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\112\9\131\12\16\38", "\203\59\96\237\107\69\111\113"), LUAOBFUSACTOR_DECRYPT_STR_0("\5\26\190\228\48\244\206\100\36\185\239\63\249\217\35", "\183\68\118\204\129\81\144"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\174\98\225\14\140\41\184\121", "\226\110\205\16\132\107"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\192\202\238\222\102\238\205\213\240", "\33\139\163\128\185");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local ShadowHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\116\89\10\200\86\75\35\204\88\77\20", "\190\55\56\100"), ScreenGui);
	ShadowHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\101\167\61\26\28\244", "\147\54\207\92\126\115\131");
	ShadowHolder.BackgroundTransparency = 1;
	ShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5);
	ShadowHolder.Size = UDim2.new(0, 680, 0, 580);
	ShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0);
	ShadowHolder.GroupTransparency = 0;
	ShadowHolder.ZIndex = 0;
	local ShadowImage = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\60\52\122\8\82\12\51\48\113", "\30\109\81\85\29\109"), ShadowHolder);
	ShadowImage.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\237\115\76\183\37\205\249\235\120\80\236\121\145\170\175\32\1\238\111\137\164\171\34", "\156\159\17\52\214\86\190");
	ShadowImage.ImageColor3 = Color3.new(0, 0, 0);
	ShadowImage.ImageTransparency = 0.4;
	ShadowImage.ScaleType = Enum.ScaleType.Slice;
	ShadowImage.SliceCenter = Rect.new(49, 49, 450, 450);
	ShadowImage.Size = UDim2.new(1, 0, 1, 0);
	ShadowImage.Position = UDim2.new(0, 0, 0, 0);
	ShadowImage.BackgroundTransparency = 1;
	ShadowImage.ZIndex = 0;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\253\188\177\171", "\220\206\143\221"), ShadowHolder);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\171\124\36\25\254\222\211\139\120", "\178\230\29\77\119\184\172");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(1, -34, 1, -34);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\151\57\24\118\244\240", "\152\149\222\106\123\23"), ShadowHolder);
	local Camera = Workspace.CurrentCamera;
	local ScreenSize = Camera.ViewportSize;
	local DefaultScale = DEFAULTS.GuiScale;
	if ((ScreenSize.Y < 700) or UserInputService.TouchEnabled) then
		DefaultScale = 0.6;
	end
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\226\25\209\86\188\238\37\247\79\176", "\213\189\70\150\35")] or DefaultScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\83\26\78\81\125\13\65\65", "\104\47\53\20"), MainFrame);
	MainFrameGradient.Rotation = 0;
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\101\162\19\174\1\166\94", "\111\195\44\225\124\220"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 12);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\111\51\103\185\164\211\67", "\203\184\38\96\19\203"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 0.8;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\90\74\72\212\60\80\118\79\221\45\97\120\72\192\45", "\174\89\19\25\33"), ShadowHolder);
	sizeConstraint.MaxSize = Vector2.new(9999, 9999);
	sizeConstraint.MinSize = Vector2.new(300, 200);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\23\74\90\213\146\31\59\29\92", "\107\79\114\50\46\151\231"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\16\168\165\60\158\27\187\207\58\173\176\59", "\160\89\198\213\73\234\89\215");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\99\181\243\192", "\165\40\17\212\158"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\209\208\28\63\35\199\216\26", "\70\133\185\104\83");
	TitleBar.Size = UDim2.new(1, 0, 0, 50);
	TitleBar.BackgroundColor3 = Darken(Theme.WindowBG, 0.7);
	TitleBar.BackgroundTransparency = 0;
	TitleBar.ZIndex = 2;
	table.insert(Library.ThemeObjects.TitleBars, TitleBar);
	MakeDraggable(TitleBar, ShadowHolder);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\72\69\45\204\40\68\70\47\197", "\169\100\37\36\74"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 28, 0, 28);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -14);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\130\186\68\44\134\160\85\12", "\48\96\231\194"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\227\115\32\10\89\255\138\173", "\227\168\58\110\77\121\184\207");
	TitleLabel.Size = UDim2.new(1, -100, 1, 0);
	TitleLabel.Position = UDim2.new(0, 50, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextSize = 16;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local TitleDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\93\46\190\77\180", "\197\27\92\223\32\209\187\17"), TitleBar);
	TitleDivider.Size = UDim2.new(1, 0, 0, 1);
	TitleDivider.Position = UDim2.new(0, 0, 1, 0);
	TitleDivider.BackgroundColor3 = Theme.UIStrokeColor;
	TitleDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, TitleDivider);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\90\219\239\33\74\215\239\12\81", "\155\99\63\163"), TitleBar);
	MinBtn.Size = UDim2.new(0, 30, 0, 30);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -15);
	MinBtn.Text = "-";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\130\130\171\138\135\195", "\228\226\177\193\237\217"), MinBtn).CornerRadius = UDim.new(0, 8);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	MinBtn.MouseEnter:Connect(function()
		Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\22\177\32\237\51\162\44\243\58\180\0\233\56\191\49\181", "\134\84\208\67")]=Theme.AccentStart}, 0.2);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\44\147\179\117\44\129\175\114\58\129\175\102\54\136", "\60\115\204\230")] then
			Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\59\232\123\224\40\228\101\233\62\200\127\235\53\249\35", "\16\135\90\139")]=Theme.ItemBG}, 0.2);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\103\119\20\54\75\90\95\65\125", "\24\52\20\102\83\46\52"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\239\13\52\48\27\203\33\6\49\6", "\111\164\79\65\68");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\212\130\217\43\200\211\205\151\209\32", "\138\166\185\227\190\78"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 0, 0, 0);
	KBtn.Position = UDim2.new(0.9, -50, 0.5, 0);
	KBtn.Visible = false;
	KBtn.ZIndex = 10;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\244\75\238\8\98\12\42", "\121\171\20\165\87\50\67"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\249\7\140\31\134\47\239\22\144\27\144\56\227\28", "\98\166\88\217\86\217")] = isMinimized;
		Library:Save();
		if isMinimized then
			for _, closeFunc in pairs(Library.OpenDropdowns) do
				pcall(closeFunc);
			end
		end
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\201\201\82\62\181\213\236\243", "\188\150\150\25\97\230")] or DEFAULTS.KSize;
		if isMinimized then
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\253\155\80\23\28\217\200\136\81\17\28\236\200\140\81\1\21", "\141\186\233\63\98\108")]=1}, 0.3);
			KBtn.Visible = true;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\194\227\54\179", "\69\145\138\76\214")]=UDim2.new(0, kSize, 0, kSize),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\194\136\142\186\34\98\206\135\154\175\23\98\202\135\138\166", "\118\16\175\233\233\223")]=0}, 0.4, Enum.EasingStyle.Back);
			task.wait(0.3);
			if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\180\187\0\146\209\166\84\165\173\24\146\212\174\89", "\29\235\228\85\219\142\235")] then
				ShadowHolder.Visible = false;
			end
		else
			ShadowHolder.Visible = true;
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\198\181\200\103\122\53\83\51\199\170\220\101\75\41\81\36", "\50\93\180\218\189\23\46\71")]=0}, 0.3);
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\237\173\65\73", "\40\190\196\59\44\36\188")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\72\221\179\255\73\31\61\75\207\164\251\111\8\50\70\197", "\109\92\37\188\212\154\29")]=1}, 0.3, Enum.EasingStyle.Back);
			task.wait(0.2);
			if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\59\208\145\234\14\119\45\193\141\238\24\96\33\203", "\58\100\143\196\163\81")] then
				KBtn.Visible = false;
			end
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\37\125\22\138\0\100\204\32\51\111\10\153\26\109", "\110\122\34\67\195\95\41\133")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\74\142\112\117\229\124\171\94", "\182\21\209\59\42")] or DEFAULTS.KSize;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\132\94\223\24", "\222\215\55\165\125\65")]=UDim2.new(0, kSize, 0, kSize)}, 0.3);
		end
	end;
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\19\238\242\21\245\198\225\79\7\212\223", "\42\76\177\166\122\146\161\141")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\154\181\48\231\70\91\140\164\44\227\80\76\128\174", "\22\197\234\101\174\25")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\18\11\144\245\73\130\254\168\4\25\140\230\83\139", "\230\77\84\197\188\22\207\183")] then
		ShadowHolder.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\198\43\237\195\191\168\234\48", "\85\153\116\166\156\236\193\144")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		ShadowHolder.Visible = true;
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\242\76\190\225", "\96\196\128\45\211\132"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\6\132\127\90\208\174\166\251\58\131\111\94\219\161\177\202", "\184\85\237\27\63\178\207\212");
	SidebarContainer.Size = UDim2.new(0, 130, 1, -50);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 50);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarContainer);
	local SidebarDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\75\8\82\13", "\63\104\57\105"), SidebarContainer);
	SidebarDivider.Size = UDim2.new(0, 1, 1, 0);
	SidebarDivider.Position = UDim2.new(1, -1, 0, 0);
	SidebarDivider.BackgroundColor3 = Theme.UIStrokeColor;
	SidebarDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, SidebarDivider);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\132\182\75\7\139\173\74\12\161\182\69\6\130", "\36\107\231\196"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\142\142\78\161\142\134\68\186\183\147", "\231\61\213\194"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\13\114\13\169\52\125\14", "\19\105\205\93"), TabBar).PaddingTop = UDim.new(0, 10);
	TabListLayout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\136\10\205\142\51\188\28\219\162\48\167\28\219\143\43\154\1\196\132", "\95\201\104\190\225")):Connect(function()
		TabBar.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 20);
	end);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\217\192\195\170", "\174\207\171\161"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -130, 1, -50);
	PagesContainer.Position = UDim2.new(0, 130, 0, 50);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\215\61\242\252\211\228\240\10", "\183\141\158\109\147\152"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 15);
	ContentPadding.PaddingRight = UDim.new(0, 15);
	ContentPadding.PaddingTop = UDim.new(0, 15);
	ContentPadding.PaddingBottom = UDim.new(0, 15);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\12\254\24\14\28\242\24\35\7", "\108\76\105\134"), TabBar);
		TabBtn.Size = UDim2.new(1, -20, 0, 36);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 13;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\236\146\238\220\229\192\163", "\174\139\165\209\129"), TabBtn).CornerRadius = UDim.new(0, 6);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\161\227\204\195", "\24\195\211\130\161\166\99\16"), TabBtn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BackgroundTransparency = 1;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\42\202\35\65\24\67\17", "\118\38\99\137\76\51"), Indicator).CornerRadius = UDim.new(0, 4);
		local function UpdateTabButtonStyle(button, indicator, isActive)
			if isActive then
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\223\39\6\25\14\50\242\51\11\22\42\47\241\41\23\65", "\64\157\70\101\114\105")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\173\191\247\51\79\164\168\241\67", "\112\32\200\199\131")]=Theme.Text}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\81\95\179\196\185\45\57\94\88\140\209\170\44\63\64\93\170\198\165\33\53", "\66\76\48\60\216\163\203")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\135\122\248\88\220\43\175\136\125\208\80\194\43\168\213", "\68\218\230\25\147\63\174")]=Theme.AccentStart}, 0.3);
			else
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\143\43\80\71\177\191\37\70\66\178\142\37\95\67\164\254", "\214\205\74\51\44")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\73\250\232\84\245\64\237\238\36", "\23\154\44\130\156")]=Theme.TextDark}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\167\174\165\49\1\30\179\163\170\2\1\16\168\190\190\55\1\20\168\174\183", "\115\113\198\205\206\86")]=1}, 0.3);
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\67\240", "\58\228\55\158")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\135\212\39\63\172\33\187\155", "\85\212\233\176\78\92\205")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\89\133\231", "\130\42\56\232")]=name});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\200\161\42", "\95\138\213\68\131\32")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\3\38\165\74\117\43\60\174\81", "\22\74\72\193\35")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\120\233\93", "\56\76\25\132")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\194\185\41\195\82\200\165\33\233\76\192\166\35", "\175\62\161\203\70"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\3\237\194\20\48", "\85\92\189\163\115");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\133\28\49\58\184\28\57\48\163\37\44", "\88\73\204\80"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\170\32\71\45\222\39\141\23", "\186\78\227\112\38\73"), Page);
		PagePadding.PaddingRight = UDim.new(0, 10);
		PagePadding.PaddingBottom = UDim.new(0, 10);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\218\69\252\88\86", "\26\156\55\157\53\51")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\27\220", "\48\236\184\118\185\216")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\175\86\61\202", "\84\133\221\55\80\175"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\206\7\169\213\82\184\245", "\60\221\135\68\198\167"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\184\224\151\110\216\236\184\244", "\185\142\221\152\227\34"), Frame);
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
			local SwitchBg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\215\86\247\70", "\151\56\165\55\154\35\83"), Frame);
			SwitchBg.Size = UDim2.new(0, 44, 0, 22);
			SwitchBg.Position = UDim2.new(1, -54, 0.5, -11);
			SwitchBg.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\106\38\225\178\77\0\252", "\142\192\35\101"), SwitchBg).CornerRadius = UDim.new(1, 0);
			local SwitchKnob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\103\40\174\226", "\118\182\21\73\195\135\236\204"), SwitchBg);
			SwitchKnob.Size = UDim2.new(0, 18, 0, 18);
			SwitchKnob.Position = UDim2.new(0, 2, 0.5, -9);
			SwitchKnob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\21\57\79\22\3\248\26", "\157\104\92\122\32\100\109"), SwitchKnob).CornerRadius = UDim.new(1, 0);
			local ClickArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\163\215\222\31\50\153\191\172\168", "\203\195\198\175\170\93\71\237"), Frame);
			ClickArea.Text = "";
			ClickArea.BackgroundTransparency = 1;
			ClickArea.Size = UDim2.new(1, 0, 1, 0);
			ClickArea.ZIndex = 10;
			local function UpdateVisuals(val)
				if val then
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\12\74\61\222\86\3\243\59\69\58\246\94\29\243\60\24", "\156\78\43\94\181\49\113")]=Theme.ToggleON}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\66\231\215\170\31\74\118\124", "\25\18\136\164\195\107\35")]=UDim2.new(1, -20, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\44\170\68\117\174\206\173\230\41\138\64\126\179\211\235", "\216\136\77\201\47\18\220\161")]=Color3.new(1, 1, 1)}, 0.25, Enum.EasingStyle.Back);
				else
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\15\237\40\209\15\206\141\56\226\47\249\7\208\141\63\191", "\226\77\140\75\186\104\188")]=Theme.WindowBG}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\193\195\54\91\176\193\222", "\47\217\174\176\95")]=UDim2.new(0, 2, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\220\117\9\181\70\119\51\182\217\85\13\190\91\106\117", "\70\216\189\22\98\210\52\24")]=Theme.TextDark}, 0.25, Enum.EasingStyle.Back);
				end
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\239\207\167\134\199\223", "\179\186\191\195\231")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\51\25\227", "\132\153\95\120")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\149\183\0\36\242\222", "\192\209\210\110\77\151\186"), reason, 3);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\17\35\228\250", "\164\128\99\66\137\159"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\160\202\177\18\135\236\172", "\222\96\233\137"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\182\191\11\164\242\242\188\191", "\144\217\211\199\127\232\147"), Frame);
			TopLabel.Size = UDim2.new(1, -40, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 8);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamMedium;
			TopLabel.TextSize = 14;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\42\38\60\249\68\0\65\244", "\36\152\79\94\72\181\37\98"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 8);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextSize = 14;
			ValLabel.TextColor3 = Theme.AccentStart;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.TextXAlignment = Enum.TextXAlignment.Right;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local SliderBarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\202\70\50\210", "\95\183\184\39"), Frame);
			SliderBarBG.Size = UDim2.new(1, -20, 0, 6);
			SliderBarBG.Position = UDim2.new(0, 10, 0, 38);
			SliderBarBG.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\22\196\41\70\142\7\167", "\98\213\95\135\70\52\224"), SliderBarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\177\200\122\81", "\52\158\195\169\23"), SliderBarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\149\17\123\148\59\126\153", "\235\26\220\82\20\230\85\27"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\189\136\206\208\117\140\168\236\204\96", "\20\232\193\137\162"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, UIGradientFill);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\205\196\171\226", "\17\66\191\165\198\135\236\119"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\134\141\28\237\230\233\195", "\177\111\207\206\115\159\136\140"), Knob).CornerRadius = UDim.new(1, 0);
			Frame:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\51\128\3\29\214\67\90", "\63\101\233\112\116\180\47")):Connect(function()
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
				Tween(Fill, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\50\247\23", "\86\163\91\141\114\152")]=UDim2.new(SizeX, 0, 1, 0)}, 0.05);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\2\110\118", "\90\51\107\20\19")]=UDim2.new(0, 18, 0, 18)}, 0.2);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\190\249\159\234", "\93\237\144\229\143")]=UDim2.new(0, 14, 0, 14)}, 0.2);
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\228\241\20\14", "\38\117\150\144\121\107"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\146\205\53\63\181\235\40", "\90\77\219\142"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\1\57\45\96\6\120\227\8", "\26\134\100\65\89\44\103"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\230\40\55\134\228\247\36\44\170", "\196\145\131\80\67"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\153\37\7\10\230\27\162", "\136\126\208\102\104\120"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\163\253\87\189\93\54\84", "\49\24\234\174\35\207\50\93"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\247\229\156\93\13\240\248\132", "\17\108\146\157\232"), MainBtn);
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
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\198\12\249\3\169\73\198\24", "\200\43\163\116\141\79"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\36\60\142\181", "\131\223\86\93\227\208\148"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\199\87\185\166\25\186\244\75", "\213\131\37\214\214\125");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\2\6\176\243\40\46\55", "\129\70\75\69\223"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\226\192\253\110\224\77\206", "\143\38\171\147\137\28"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\171\138\231\17\236\223\213", "\180\176\226\217\147\99\131"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\186\61\8\223\181\38\9\212\159\61\6\222\188", "\103\179\217\79"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\158\48\220\82\152\143\75\174\19\192\85", "\195\42\215\124\181\33\236"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\63\86\35\63\49\241\2\87", "\152\109\57\87\94\69")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\218\216\6\172\172", "\200\153\183\106\195\222\178\52")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\241\137\51\90\74\51\241\141\51\74\67", "\58\82\131\232\93\41")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\183\82\200\1\127\42\151\67\223\27", "\95\227\55\176\117\61")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\44\123\59\95\137\13\106\55\68\165", "\203\120\30\67\43"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\195\42\89\238\205\248\42\67", "\185\145\69\45\143")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\169\16\21\169\206", "\188\234\127\121\198")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\32\18\141\43\34\18\145\61\60\16\154", "\227\88\82\115")]=0.8}, 0.2);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\63\251\186\43\89\46\247\161\7", "\105\44\90\131\206"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\201\145\182\26\48\250\242", "\94\159\128\210\217\104"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\208\53\171\77\112\242\127", "\26\48\153\102\223\63\31\153"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\69\245\231\46\65\239\246\14", "\147\98\32\141"), MainBtn);
			SelectedText.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\43\70\239\207\5\66\11\49\87\230\199\21\24\5\86", "\43\120\35\131\170\102\54");
			SelectedText.Size = UDim2.new(1, -30, 1, 0);
			SelectedText.Position = UDim2.new(0, 10, 0, 0);
			SelectedText.Font = Enum.Font.Gotham;
			SelectedText.TextColor3 = Theme.Text;
			SelectedText.TextSize = 14;
			SelectedText.TextXAlignment = Enum.TextXAlignment.Left;
			SelectedText.BackgroundTransparency = 1;
			SelectedText.ZIndex = 7;
			table.insert(Library.ThemeObjects.Texts, SelectedText);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\96\3\159\162\137\177\134\81\10", "\228\52\102\231\214\197\208"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\242\116\199\239", "\182\126\128\21\170\138\235\121"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\166\207\57\242\143\55\34\9\155\222\58\241\136", "\102\235\186\85\134\230\115\80");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\37\29\80\96\218\39\69", "\66\55\108\94\63\18\180"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\164\182\35\53\86\31\136", "\57\116\237\229\87\71"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\152\222\243\101\225\76\175", "\39\202\209\141\135\23\142"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\48\27\5\62\244\246\61\14\44\32\249\242\54", "\152\159\83\105\106\82"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\239\125\251\218\72\173\199\72\253\220\72", "\60\225\166\49\146\169"), Scroll);
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
				SelectedText.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\111\45\42\38\4\4\59\27\43", "\103\79\126\79\74\97"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\137\122\223\118\93\14\250\86\199\118\83\9\244\49\157", "\122\218\31\179\19\62");
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\129\217\217\192\221\168\74\189", "\37\211\182\173\161\169\193")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\53\65\214\58", "\217\151\90\45\185\72\27")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\110\230\28\69\211\125\245\23\88\192\101", "\54\163\28\135\114")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\28\222\69\150\108\106\60\207\82\140", "\31\72\187\61\226\46")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						if (Library.Flags[dFlag][item] == nil) then
							Library.Flags[dFlag][item] = false;
						end
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\3\91\198\101\107\48\215\9\77", "\68\163\102\35\178\39\30"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\140\127\206\198\23\188\140\31", "\113\222\16\186\167\99\213\227")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\1\247\249\60", "\150\78\110\155")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\177\215\38\239\183\14\190\82\128\203\36\248", "\32\229\165\71\129\196\126\223")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\155\197\140\132", "\181\163\233\164\225\225"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\162\29\120\66\133\59\101", "\23\48\235\94"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\72\223\192\73\123\50\208\121\214", "\178\28\186\184\61\55\83"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\200\95\40\208\27\225\208\194\73", "\149\164\173\39\92\146\110"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 32);
			Button.Position = UDim2.new(0, 10, 0, 28);
			Button.BackgroundColor3 = Theme.WindowBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamBold;
			Button.TextSize = 14;
			Button.AutoButtonColor = false;
			Button.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\14\51\16\8\21\246\53", "\123\147\71\112\127\122"), Button).CornerRadius = UDim.new(0, 6);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\228\177\101\84\195\198\135", "\38\172\173\226\17"), Button);
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
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\111\16\47\228\74\3\35\250\67\21\15\224\65\30\62\188", "\143\45\113\76")]=Theme.ItemBG}, 0.1);
				task.wait(0.1);
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\185\31\55\191\170\19\41\182\188\63\51\180\183\14\111", "\92\216\216\124")]=Theme.WindowBG}, 0.1);
				pcall(options.Callback, val);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\32\173\77\248", "\157\59\82\204\32"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\23\192\245\251\228\214\163", "\209\88\94\131\154\137\138\179"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\164\220\104\50\34\51\39\36", "\66\72\193\164\28\126\67\81"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local InputContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\62\169\85\35", "\22\135\76\200\56\70"), Frame);
			InputContainer.Size = UDim2.new(1, -20, 0, 32);
			InputContainer.Position = UDim2.new(0, 10, 0, 28);
			InputContainer.BackgroundColor3 = Theme.WindowBG;
			InputContainer.ClipsDescendants = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\25\219\43\79\239\136\34", "\129\237\80\152\68\61"), InputContainer).CornerRadius = UDim.new(0, 6);
			local InputStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\129\55\231\14\24\83\84", "\56\49\200\100\147\124\119"), InputContainer);
			InputStroke.Color = Theme.UIStrokeColor;
			InputStroke.Transparency = 0.8;
			table.insert(Library.ThemeObjects.Strokes, InputStroke);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\59\167\228\238\49\167", "\144\172\94\223"), InputContainer);
			Input.Size = UDim2.new(1, -10, 1, 0);
			Input.Position = UDim2.new(0, 5, 0, 0);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\106\65\236", "\39\68\111\194");
			Input.Text = default;
			Input.BackgroundTransparency = 1;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextSize = 14;
			Input.TextXAlignment = Enum.TextXAlignment.Left;
			Input.TextTruncate = Enum.TextTruncate.AtEnd;
			table.insert(Library.ThemeObjects.Texts, Input);
			Input.Focused:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\169\235\200\107", "\215\182\198\135\167\25")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\185\91\235\70\158\89\235\90\136\71\233\81", "\40\237\41\138")]=0.2}, 0.3);
			end);
			Input.FocusLost:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\228\123\246\247\88", "\42\167\20\154\152")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\236\163\76\98\49\75\236\167\76\114\56", "\65\42\158\194\34\17")]=0.8}, 0.3);
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\53\83\1\40", "\142\122\71\50\108\77\141\123"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundTransparency = 1;
			local btnName = options.Name;
			if (not btnName or (btnName == "")) then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\167\231\12\25\0\182\235\23\53", "\91\117\194\159\120"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = btnName;
			Btn.TextColor3 = Color3.new(1, 1, 1);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.AutoButtonColor = false;
			Btn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\52\29\23\39\255\33\8", "\68\122\125\94\120\85\145"), Btn).CornerRadius = UDim.new(0, 8);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\53\232\76\201\221\179\18\18\219", "\218\119\124\175\62\168\185"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, BtnGradient);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\217\123\208\183\255\67\193", "\164\197\144\40"), Btn);
			BtnStroke.Color = Theme.AccentStart;
			BtnStroke.Transparency = 0.8;
			BtnStroke.Thickness = 1;
			Btn.MouseEnter:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\161\241\169\128\218\164\140\229\164\143\233\164\130\254\185\155\220\164\134\254\169\146", "\214\227\144\202\235\189")]=0.1}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\183\134\117\3\163\82\46\232\171\132\98", "\92\141\197\231\27\112\211\51")]=0.4}, 0.2);
			end);
			Btn.MouseLeave:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\196\254\137\168\214\244\240\159\173\213\210\237\139\173\194\246\254\152\166\223\229\230", "\177\134\159\234\195")]=0}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\249\62\174\218\173\234\45\165\199\190\242", "\169\221\139\95\192")]=0.8}, 0.2);
			end);
			Btn.MouseButton1Click:Connect(function()
				PlayClickSound();
				task.spawn(function()
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\234\142\103\43\17\47\196\142", "\70\190\235\31\95\66")]=12}, 0.05);
					task.wait(0.05);
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\231\2\242\214\179\248\31", "\133\218\130\122\134")]=14}, 0.05);
				end);
				pcall(options.Callback);
			end);
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\237\226\201\217", "\88\92\159\131\164\188\195"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 95);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\7\156\68\197\229\216\146", "\189\224\78\223\43\183\139"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\249\146\2\237\47\254\143\26", "\161\78\156\234\118"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\132\165\204\216\174\163", "\188\199\215\169");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			table.insert(Library.ThemeObjects.Texts, Label);
			local BoxContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\27\94\118\237", "\136\156\105\63\27"), Frame);
			BoxContainer.Size = UDim2.new(0.9, 0, 0, 32);
			BoxContainer.Position = UDim2.new(0.05, 0, 0, 24);
			BoxContainer.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\165\90\59\9\130\124\38", "\84\123\236\25"), BoxContainer).CornerRadius = UDim.new(0, 8);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\142\178\3\142\186\232", "\213\144\235\202\119\204"), BoxContainer);
			Box.Size = UDim2.new(1, 0, 1, 0);
			Box.Text = options.Link or "";
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.BackgroundTransparency = 1;
			Box.TextEditable = false;
			Box.ClearTextOnFocus = false;
			table.insert(Library.ThemeObjects.Texts, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\29\198\62\10\54\89\55\23\208", "\45\67\120\190\74\72\67"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 28);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 62);
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\3\45\253\188", "\137\64\66\141\197\153\232\142");
			CopyBtn.TextColor3 = Color3.new(1, 1, 1);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextSize = 13;
			CopyBtn.AutoButtonColor = false;
			CopyBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\249\1\169\154\13\213\48", "\232\99\176\66\198"), CopyBtn).CornerRadius = UDim.new(0, 8);
			local CopyGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\8\15\20\122\137\240\41\226\53", "\76\140\65\72\102\27\237\153"), CopyBtn);
			CopyGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, CopyGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				PlayClickSound();
				if setclipboard then
					pcall(function()
						setclipboard(options.Link or "");
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\105\213\6\219\210\5\255", "\222\42\186\118\178\183\97");
					task.delay(2, function()
						CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\126\227\84\147", "\234\61\140\36");
					end);
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\4\207\168\125\29", "\111\65\189\218\18"), "Your executor doesn't support clipboard.", 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\89\26\56\14", "\207\35\43\123\85\107\60"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\86\184\161\231\124", "\25\16\202\192\138"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 26);
			Frame.BackgroundTransparency = 1;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\206\181\246\133\245\255\206\161", "\148\157\171\205\130\201"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\15\213\118\44\221", "\150\67\180\20\73\177");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextSize = 14;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\174\10\31\73\132\12\9", "\45\237\120\122"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\227\237\186\56", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\79\207\165\58\73\15\56\115\252\224\28\85\89", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\205\169\227\179", "\18\126\161\192\132\221")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\124\39\162\11\68", "\54\63\72\206\100")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\88\72\127", "\27\168\57\37\26\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\163\111\171\216\63\174\60\155\210\63\188\121\186", "\183\77\202\28\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\58\135\3", "\104\119\83\233")]=LUAOBFUSACTOR_DECRYPT_STR_0("\253\236\51\50\80\175\183\104\38\74\230\251\40\48\71\187\255\32\109\113\253\220\41\23\114\231\172\3\55", "\35\149\152\71\66")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\237\90\164", "\90\121\136\34\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\6\80\19\194\78\120\31\201\15\82\27\213", "\126\167\110\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\28\39\255\210", "\95\93\112\78\152\188")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\229\240\131\20\241\178\198", "\178\161\149\229\117\132\222"),LUAOBFUSACTOR_DECRYPT_STR_0("\171\211\207\165\178\2\171\34\155", "\67\232\187\189\204\193\118\198"),LUAOBFUSACTOR_DECRYPT_STR_0("\184\32\186\55", "\143\235\78\213\64\91\98"),LUAOBFUSACTOR_DECRYPT_STR_0("\189\65\138\226\105", "\214\237\40\228\137\16")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\226\226\220", "\198\229\131\143\185\99")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\137\164\118\82\152\232\71\89\137\165\118", "\19\49\236\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\59\247\176", "\218\158\87\150\215\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\33\250\247\36\48\200\245\10\237\234\51\47\200", "\173\155\126\185\130\86\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\175\169\211", "\140\133\198\218\167\232")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\43\178\124\145\185\58", "\228\213\78\212\29")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\184\115\149\16\249\149\73\184\17\223\143\73\187\0", "\139\231\44\214\101")] or LUAOBFUSACTOR_DECRYPT_STR_0("\253\234\0\95\5\189\37", "\118\185\143\102\62\112\209\81")),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\113\37\234\167\20\31\51", "\88\60\16\73\134\197\117\124")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\235\245\205", "\33\48\138\152\168")]=LUAOBFUSACTOR_DECRYPT_STR_0("\65\23\38\84\129\3\122\19\61\84\129\22\97\88\126\31", "\87\18\118\80\49\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\18\219\167", "\208\44\126\186\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\37\138\195\3\200\193\75\250\31\138\199\25\249", "\46\151\122\196\166\116\156\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\225\71\25\254\237\226\74\30\254\247", "\155\133\141\38\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\11\43\161\68\1\49\235", "\197\69\74\204\33\47\31"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\78\86\139\242\78\89\140", "\231\144\47\58")]=function()
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\156\217\215\112", "\89\210\184\186\21\120\93\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\82\106\208\57\25\164\65\110\208\119\46\241\103\116\208\116\63", "\90\209\51\28\181\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\122\91\226\189\209\120\92", "\223\176\27\55\142")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\27\132\224\176\51\143\198\176\41\190\224\180\41\190", "\213\68\219\174")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\60\233\45\227\37\210\29\88", "\31\107\128\67\135\74\165\95")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\225\248\72\67\176\202\202\219", "\209\184\136\156\45\33")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\220\112\5\154\32", "\216\103\168\21\104")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\174\64\161\118\185\18", "\196\24\205\35")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\136\224\3\32\159\177", "\102\78\235\131")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\33\51\67\75\60\152\26", "\84\154\78\84\36\39\89\215")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\228\78\76", "\101\157\129\54\56")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\172\146\191\7\120\15\162", "\25\125\201\234\203\67")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\74\224\10\12\31\34", "\115\25\148\120\99\116\71")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\56\52\173\40\68", "\33\108\93\217\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\67\164\160\222", "\205\187\43\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\125\11\203\251\124\17", "\191\158\18\101")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\246\194\145\178\171\159\131", "\207\165\163\231\215") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\226\252\255\87\49\124\210", "\16\166\153\153\54\68"),LUAOBFUSACTOR_DECRYPT_STR_0("\241\187\210\79\39\53\244\211\160", "\153\178\211\160\38\84\65"),LUAOBFUSACTOR_DECRYPT_STR_0("\177\5\85\60", "\75\226\107\58"),LUAOBFUSACTOR_DECRYPT_STR_0("\104\215\31\113\8", "\173\56\190\113\26\113\162")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\255\219\53\17", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\33\236\172\234\123\10\198\42\184\138\247\113\4\215\60", "\107\165\79\152\201\152\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\118\66\225\204\90", "\31\55\46\136\171\52")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\255\41\209\241", "\148\177\72\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\181\84\214\168\162\23\240\169\186\88\193\230\231", "\179\198\214\55"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\0\115\113", "\179\144\108\18\22\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\156\56\134\195\201\177\40\140\195\195\160\15\216", "\175\166\195\123\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\203\78\93", "\144\143\162\61\41")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\214\27\81\103\139\39", "\83\128\179\125\48\18\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\162\225\205\75\27", "\126\61\215\147\189\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\91\254\17\73\122\254\30\78", "\37\24\159\125")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\167\120\71", "\34\186\198\21")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\11\198\88\204\236\72\230\82\206\247\26\133\15", "\162\152\104\165\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\35\179\122", "\133\173\79\210\29\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\67\206\36\129\115\255\24\136\112\232\40\153\46", "\75\237\28\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\86\223\165", "\129\188\63\172\209\79\123\135")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\225\224\204\85\232\242", "\173\32\132\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\23\29\234", "\173\46\123\104\143\206\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\28\46\134\71\130\2\191", "\97\212\125\66\234\37\227")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\164\226\187\48", "\126\234\131\214\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\218\78\93\67\129\149\102\116\15\167\218\69\85\93", "\47\228\181\41\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\240\216\60", "\127\198\156\185\91\99\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\37\248\255\160\12\53\219\214\21\192\255\181\56\60\210\240\25\216", "\190\149\122\172\144\199\107\89"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\12\226\234", "\158\82\101\145\158")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\84\251\4\23\81\124\234", "\36\16\158\98\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\3\209\235\84\237", "\133\160\118\163\155\56\136\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\163\125\254\180\30\182\253", "\213\150\194\17\146\214\127")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\47\172\188\192", "\86\123\201\196\180\38\196\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\241\202\187\242\229", "\207\151\136\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\143\33\133\122", "\17\200\227\72\226\20\24")]=Enum.TextXAlignment.Center});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\128\72\15\212\193\177\205\243\177\66\16", "\159\208\33\123\183\169\145\143")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\83\60\56\251\93\48\34\178\106\45\36\226\86\61", "\86\146\58\88")]=Color3.fromRGB(15, 12, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\222\248\203\238\206\36\255\65", "\154\56\191\138\160\206\137\86")]=Color3.fromRGB(35, 35, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\88\227\158\60\24\141\217\131", "\172\230\57\149\231\28\90\225")]=Color3.fromRGB(20, 22, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\175\131\194\104\233\7\174", "\187\98\202\230\178\72")]=Color3.fromRGB(25, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\238\182\53\89\53\161\131\34\79\36\239", "\42\65\129\196\80")]=Color3.fromRGB(12, 20, 12)};
		local bgList = {};
		for n in pairs(bgOptions) do
			table.insert(bgList, n);
		end
		table.sort(bgList);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\75\80\223", "\142\98\42\61\186\119\103\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\190\1\3\63\173\13\29\54\187\66\43\55\179\13\26", "\104\88\223\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\251\227\201", "\141\36\151\130\174\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\69\224\10\180\104\199\30\129\110\241\8\136\127\193\25", "\109\228\26\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\236\238\108", "\134\62\133\157\24\128")]=bgList,[LUAOBFUSACTOR_DECRYPT_STR_0("\35\160\28\216\58\189\194", "\182\103\197\122\185\79\209")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\142\245\116\8\8\209\139\224\116\11", "\40\147\231\129\23\96"),[LUAOBFUSACTOR_DECRYPT_STR_0("\86\249\128\73\185\173\223\126", "\188\21\152\236\37\219\204")]=function(val)
			if bgOptions[val] then
				Theme.WindowBG = bgOptions[val];
				local h, s, v = Color3.toHSV(Theme.WindowBG);
				Theme.SidebarBG = Color3.fromHSV(h, s, math.min(v + 0.05, 1));
				Theme.ItemBG = Color3.fromHSV(h, s, math.min(v + 0.1, 1));
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\232\58\9", "\108\32\137\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\225\14\175\34\240\81\92\174\168\34\146\1\185\120\80\176\237", "\57\202\136\96\198\79\153\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\47\171\160", "\152\203\67\202\199\237\199")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\124\139\48\44\124\99\227", "\134\154\35\192\111\127\21\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\47\7", "\178\216\70\105\106\64")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\42\98", "\224\95\75\26\150\169\181\180")]=250,[LUAOBFUSACTOR_DECRYPT_STR_0("\47\223\222\41\81\160\98", "\22\107\186\184\72\36\204")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\188\40\66\12\230\190\47", "\110\135\221\68\46")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\205\55\1\238", "\91\131\86\108\139\174\211")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\2\248\36\94\250\39\189", "\61\155\75\216\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\167\179\59", "\189\100\203\210\92\56\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\110\218\61\38\98\254\41\35\84", "\72\79\49\157"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\185\63", "\220\232\208\81")]=0.4,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\191\253", "\193\149\222\133\80\76\58")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\88\73\211\211\81\91", "\178\166\61\47")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\75\228\118\200\63\248\65", "\94\155\42\136\26\170")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\62\43\176", "\213\228\95\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\180\197\131\123\47\251\233\129\110", "\23\74\219\162\228"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\234\71\168", "\91\89\134\38\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\209\252\57\20\215\43\65\197\205\47", "\71\36\142\168\86\115\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\164\116\190\22\178\66", "\41\191\193\18\223\99\222\54")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\42\198\41\175\163\41\203\46\175\185", "\202\203\70\167\74")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\19\217\32\98\108\42\217\42\63\98\79", "\17\76\97\188\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\38\213\59\50\130\72\168", "\195\229\71\185\87\80\227\43")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\223\195\52\95\232\231\240\5\123\234\249", "\143\128\156\96\48")] = clean;
		end});
		if (not Library.CurrentTab and (#TabButtons > 0)) then
			Library.CurrentTab = TabButtons[1].Name;
		end
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\135\238\211\7\5\170\212\254\6\35\176\212\253\23", "\119\216\177\144\114")] or LUAOBFUSACTOR_DECRYPT_STR_0("\237\44\255\67\220\37\237", "\34\169\73\153"));
	end;
	return WindowAPI;
end;
return Library;
