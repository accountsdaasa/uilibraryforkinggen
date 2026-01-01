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
	local DefaultScale = 1;
	if UserInputService.TouchEnabled then
		local BaseWidth = 750;
		local BaseHeight = 600;
		local RatioX = ScreenSize.X / BaseWidth;
		local RatioY = ScreenSize.Y / BaseHeight;
		DefaultScale = math.min(RatioX, RatioY) * 0.85;
		DefaultScale = math.clamp(DefaultScale, 0.45, 1.1);
	else
		DefaultScale = 1;
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
			local TouchArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\140\8\0\246\90\75\17\134\30", "\63\101\233\112\116\180\47"), Frame);
			TouchArea.BackgroundTransparency = 1;
			TouchArea.Text = "";
			TouchArea.Size = UDim2.new(1, 0, 1, 0);
			TouchArea.ZIndex = 10;
			Frame:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\245\50\254\27\250\58\198", "\86\163\91\141\114\152")):Connect(function()
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
				Tween(Fill, {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\2\110\118", "\90\51\107\20\19")]=UDim2.new(SizeX, 0, 1, 0)}, 0.05);
				ValLabel.Text = tostring(Value);
				ValLabel.TextColor3 = Theme.AccentStart;
				pcall(options.Callback, Value);
				Library:Save();
			end
			local percent = (default - min) / (max - min);
			Fill.Size = UDim2.new(percent, 0, 1, 0);
			pcall(options.Callback, default);
			local Dragging = false;
			TouchArea.InputBegan:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = true;
					Update(input);
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\190\249\159\234", "\93\237\144\229\143")]=UDim2.new(0, 18, 0, 18)}, 0.2);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\255\234\28", "\38\117\150\144\121\107")]=UDim2.new(0, 14, 0, 14)}, 0.2);
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\169\239\55\40", "\90\77\219\142"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\45\2\54\94\9\127\244", "\26\134\100\65\89\44\103"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\230\40\55\136\240\225\53\47", "\196\145\131\80\67"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\181\30\28\58\253\10\164\9\6", "\136\126\208\102\104\120"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\163\237\76\189\92\56\67", "\49\24\234\174\35\207\50\93"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\219\206\156\99\3\249\248", "\17\108\146\157\232"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\198\12\249\3\169\73\198\24", "\200\43\163\116\141\79"), MainBtn);
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
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\51\37\151\156\245\225\186\58", "\131\223\86\93\227\208\148"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\87\183\187\24", "\213\131\37\214\214\125"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\2\57\42\175\229\41\60\43", "\129\70\75\69\223");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\226\208\230\110\225\67\217", "\143\38\171\147\137\28"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\171\138\231\17\236\223\213", "\180\176\226\217\147\99\131"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\144\28\19\193\182\36\2", "\103\179\217\79"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\180\14\218\77\128\170\68\176\58\199\64\129\166", "\195\42\215\124\181\33\236"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\112\27\55\54\236\33\88\46\49\48\236", "\152\109\57\87\94\69"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\203\216\30\162\170\219\91\166", "\200\153\183\106\195\222\178\52")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\17\236\132\50\91", "\58\82\131\232\93\41")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\69\209\27\78\47\130\69\213\27\94\38", "\95\227\55\176\117\61")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\44\123\59\95\137\13\106\55\68\165", "\203\120\30\67\43")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\32\85\251\251\228\49\89\224\215", "\185\145\69\45\143"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\184\16\13\167\200\131\16\23", "\188\234\127\121\198")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\61\31\140\42", "\227\88\82\115")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\119\13\187\169\17\99\66\13\191\169\1\106", "\19\35\127\218\199\98")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\233\11\239\25", "\130\124\155\106"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\226\213\160\177\248\121\173", "\223\181\171\150\207\195\150\28"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\63\251\186\37\77\56\230\162", "\105\44\90\131\206"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\229\170\173\42\43\235\244\189\183", "\94\159\128\210\217\104"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\208\37\176\77\113\252\104", "\26\48\153\102\223\63\31\153"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\105\222\231\16\79\230\246", "\147\98\32\141"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\44\70\251\222\42\87\73\29\79", "\43\120\35\131\170\102\54"), MainBtn);
			SelectedText.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\103\3\139\179\166\164\196\125\18\130\187\182\254\202\26", "\228\52\102\231\214\197\208");
			SelectedText.Size = UDim2.new(1, -30, 1, 0);
			SelectedText.Position = UDim2.new(0, 10, 0, 0);
			SelectedText.Font = Enum.Font.Gotham;
			SelectedText.TextColor3 = Theme.Text;
			SelectedText.TextSize = 14;
			SelectedText.TextXAlignment = Enum.TextXAlignment.Left;
			SelectedText.BackgroundTransparency = 1;
			SelectedText.ZIndex = 7;
			table.insert(Library.ThemeObjects.Texts, SelectedText);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\229\109\222\198\138\27\211\18", "\182\126\128\21\170\138\235\121"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\200\52\235\131", "\102\235\186\85\134\230\115\80"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\122\25\50\75\123\240\48\88\28\58\80\101\218", "\66\55\108\94\63\18\180");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\164\166\56\53\87\17\159", "\57\116\237\229\87\71"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\152\222\243\101\225\76\175", "\39\202\209\141\135\23\142"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\26\58\30\32\247\244\54", "\152\159\83\105\106\82"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\197\67\253\197\80\136\200\86\212\219\93\140\195", "\60\225\166\49\146\169"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\55\3\35\18\19\3\31\54\37\20\19", "\103\79\126\79\74\97"), Scroll);
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
				SelectedText.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\250\76\214\127\91\25\174\122\215", "\122\218\31\179\19\62"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\128\211\193\196\202\181\5\154\194\200\204\218\239\11\253", "\37\211\182\173\161\169\193");
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\53\89\216\60\114\182\249", "\217\151\90\45\185\72\27")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\115\235\29\68", "\54\163\28\135\114")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\201\92\140\93\111\41\201\88\140\77\102", "\31\72\187\61\226\46")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\247\3\91\198\101\107\48\215\9\77", "\68\163\102\35\178\39\30")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						if (Library.Flags[dFlag][item] == nil) then
							Library.Flags[dFlag][item] = false;
						end
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\117\194\211\33\160\151\5\177\126", "\113\222\16\186\167\99\213\227"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\1\239\247\58\7\244\248", "\150\78\110\155")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\202\43\238\182", "\32\229\165\71\129\196\126\223")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\155\197\143\146\197\194\155\193\143\130\204", "\181\163\233\164\225\225")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\153\63\122\85", "\23\48\235\94"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\243\251\82\69\61\215\110", "\178\28\186\184\61\55\83"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\200\95\40\222\15\247\193\193", "\149\164\173\39\92\146\110"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\34\8\11\56\14\231\51\31\17", "\123\147\71\112\127\122"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 32);
			Button.Position = UDim2.new(0, 10, 0, 28);
			Button.BackgroundColor3 = Theme.WindowBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamBold;
			Button.TextSize = 14;
			Button.AutoButtonColor = false;
			Button.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\228\161\126\84\194\200\144", "\38\172\173\226\17"), Button).CornerRadius = UDim.new(0, 6);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\56\31\251\95\30\39\234", "\143\45\113\76"), Button);
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
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\185\31\55\191\170\19\41\182\188\63\51\180\183\14\111", "\92\216\216\124")]=Theme.ItemBG}, 0.1);
				task.wait(0.1);
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\121\51\175\75\250\73\61\185\78\249\120\61\160\79\239\8", "\157\59\82\204\32")]=Theme.WindowBG}, 0.1);
				pcall(options.Callback, val);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\44\226\247\236", "\209\88\94\131\154\137\138\179"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\136\231\115\12\45\52\48", "\66\72\193\164\28\126\67\81"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\41\176\76\10\119\229\41\164", "\22\135\76\200\56\70"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local InputContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\171\34\249\41\88", "\129\237\80\152\68\61"), Frame);
			InputContainer.Size = UDim2.new(1, -20, 0, 32);
			InputContainer.Position = UDim2.new(0, 10, 0, 28);
			InputContainer.BackgroundColor3 = Theme.WindowBG;
			InputContainer.ClipsDescendants = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\129\39\252\14\25\93\67", "\56\49\200\100\147\124\119"), InputContainer).CornerRadius = UDim.new(0, 6);
			local InputStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\23\140\228\222\49\180\245", "\144\172\94\223"), InputContainer);
			InputStroke.Color = Theme.UIStrokeColor;
			InputStroke.Transparency = 0.8;
			table.insert(Library.ThemeObjects.Strokes, InputStroke);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\10\186\83\6\0\186", "\39\68\111\194"), InputContainer);
			Input.Size = UDim2.new(1, -10, 1, 0);
			Input.Position = UDim2.new(0, 5, 0, 0);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\152\232\169", "\215\182\198\135\167\25");
			Input.Text = default;
			Input.BackgroundTransparency = 1;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextSize = 14;
			Input.TextXAlignment = Enum.TextXAlignment.Left;
			Input.TextTruncate = Enum.TextTruncate.AtEnd;
			table.insert(Library.ThemeObjects.Texts, Input);
			Input.Focused:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\174\70\230\71\159", "\40\237\41\138")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\102\251\246\89\215\117\232\253\68\196\109", "\42\167\20\154\152")]=0.2}, 0.3);
			end);
			Input.FocusLost:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\105\241\174\77\99", "\65\42\158\194\34\17")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\53\83\2\62\253\26\252\31\41\81\21", "\142\122\71\50\108\77\141\123")]=0.8}, 0.3);
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\176\254\21\62", "\91\117\194\159\120"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundTransparency = 1;
			local btnName = options.Name;
			if (not btnName or (btnName == "")) then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\24\38\12\23\228\48\14\18\48", "\68\122\125\94\120\85\145"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = btnName;
			Btn.TextColor3 = Color3.new(1, 1, 1);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.AutoButtonColor = false;
			Btn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\53\236\81\218\215\191\5", "\218\119\124\175\62\168\185"), Btn).CornerRadius = UDim.new(0, 8);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\217\111\214\164\244\65\193\171\228", "\164\197\144\40"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, BtnGradient);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\182\217\153\159\207\185\136\245", "\214\227\144\202\235\189"), Btn);
			BtnStroke.Color = Theme.AccentStart;
			BtnStroke.Transparency = 0.8;
			BtnStroke.Thickness = 1;
			Btn.MouseEnter:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\207\164\132\112\23\161\92\41\227\161\179\105\17\189\64\44\236\183\130\117\19\170", "\92\141\197\231\27\112\211\51")]=0.1}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\210\237\139\173\194\246\254\152\166\223\229\230", "\177\134\159\234\195")]=0.4}, 0.2);
			end);
			Btn.MouseLeave:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\234\60\171\206\175\228\42\174\205\137\249\62\174\218\173\234\45\165\199\190\242", "\169\221\139\95\192")]=0}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\234\153\126\49\49\54\223\153\122\49\33\63", "\70\190\235\31\95\66")]=0.8}, 0.2);
			end);
			Btn.MouseButton1Click:Connect(function()
				PlayClickSound();
				task.spawn(function()
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\231\2\242\214\179\248\31", "\133\218\130\122\134")]=12}, 0.05);
					task.wait(0.05);
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\8\250\251\208\239\170\34\57", "\88\92\159\131\164\188\195")]=14}, 0.05);
				end);
				pcall(options.Callback);
			end);
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\60\190\70\210", "\189\224\78\223\43\183\139"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 95);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\213\169\25\211\32\249\152", "\161\78\156\234\118"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\178\209\200\139\182\203\217\171", "\188\199\215\169"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\223\27\90\127\225\232", "\136\156\105\63\27");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			table.insert(Library.ThemeObjects.Texts, Label);
			local BoxContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\158\120\57\30", "\84\123\236\25"), Frame);
			BoxContainer.Size = UDim2.new(0.9, 0, 0, 32);
			BoxContainer.Position = UDim2.new(0.05, 0, 0, 24);
			BoxContainer.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\162\137\24\190\187\245\153", "\213\144\235\202\119\204"), BoxContainer).CornerRadius = UDim.new(0, 8);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\29\198\62\10\44\85", "\45\67\120\190\74\72\67"), BoxContainer);
			Box.Size = UDim2.new(1, 0, 1, 0);
			Box.Text = options.Link or "";
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.BackgroundTransparency = 1;
			Box.TextEditable = false;
			Box.ClearTextOnFocus = false;
			table.insert(Library.ThemeObjects.Texts, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\20\39\245\177\219\157\250\253\47\44", "\137\64\66\141\197\153\232\142"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 28);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 62);
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\32\223\50\191", "\232\99\176\66\198");
			CopyBtn.TextColor3 = Color3.new(1, 1, 1);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextSize = 13;
			CopyBtn.AutoButtonColor = false;
			CopyBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\8\11\9\105\131\252\62", "\76\140\65\72\102\27\237\153"), CopyBtn).CornerRadius = UDim.new(0, 8);
			local CopyGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\243\49\192\214\5\183\79\212\2", "\222\42\186\118\178\183\97"), CopyBtn);
			CopyGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, CopyGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				PlayClickSound();
				if setclipboard then
					pcall(function()
						setclipboard(options.Link or "");
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\126\227\84\131\88\232\5", "\234\61\140\36");
					task.delay(2, function()
						CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\2\210\170\107", "\111\65\189\218\18");
					end);
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\102\89\9\58\25", "\207\35\43\123\85\107\60"), "Your executor doesn't support clipboard.", 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\86\184\161\231\124", "\25\16\202\192\138"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\217\172\239\172", "\148\157\171\205\130\201"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 26);
			Frame.BackgroundTransparency = 1;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\209\108\61\253\247\33\209\120", "\150\67\180\20\73\177"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\161\25\24\72\129", "\45\237\120\122");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextSize = 14;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\244\250\167\40\222\252\177", "\76\183\136\194"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\78\227\253\44", "\116\26\134\133\88\48\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\232\224\230\164\50\50\200\186\225\153\119\8", "\18\126\161\192\132\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\36\167\3\88", "\54\63\72\206\100")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\86\73\117\247", "\27\168\57\37\26\133")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\171\113\173", "\183\77\202\28\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\51\58\154\11\24\33\141\72\36\54\155\30\18\33", "\104\119\83\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\241\41\41", "\35\149\152\71\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\17\252\86\160\41\67\167\13\180\51\10\235\77\162\62\87\239\69\255\8\17\204\76\133\11\11\188\102\165", "\90\121\136\34\208")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\243\11\77\10", "\126\167\110\53")]=LUAOBFUSACTOR_DECRYPT_STR_0("\9\24\43\245\217\127\16\17\32\249\219\58\47", "\95\93\112\78\152\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\249\140\18\234", "\178\161\149\229\117\132\222")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\172\222\219\173\180\26\178", "\67\232\187\189\204\193\118\198"),LUAOBFUSACTOR_DECRYPT_STR_0("\168\38\167\41\40\22\226\138\61", "\143\235\78\213\64\91\98"),LUAOBFUSACTOR_DECRYPT_STR_0("\190\70\139\254", "\214\237\40\228\137\16"),LUAOBFUSACTOR_DECRYPT_STR_0("\181\234\225\210\26", "\198\229\131\143\185\99")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\127\141\165\118", "\19\49\236\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\50\250\178\231\174\190\3\254\178\233\191", "\218\158\87\150\215\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\18\216\229", "\173\155\126\185\130\86\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\153\153\210\154\254\224\168\174\243\128\233\232\163", "\140\133\198\218\167\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\39\167\105", "\228\213\78\212\29")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\163\73\176\4\254\139\88", "\139\231\44\214\101")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\230\208\37\75\2\163\52\24\205\219\14\91\29\180", "\118\185\143\102\62\112\209\81")] or LUAOBFUSACTOR_DECRYPT_STR_0("\120\117\47\231\176\25\8", "\88\60\16\73\134\197\117\124")),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\235\244\196\67\81\233\243", "\33\48\138\152\168")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\23\61\84", "\87\18\118\80\49\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\31\204\165\240\120\22\223\173\181\12\63\201\238\254\2", "\208\44\126\186\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\22\165\193", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\210\104\31\236\209\229\67\23\254\203\236\75\31", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\38\173\66\74\119\170\41\46\169\83", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\78\87\130\190\1\20", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\217\214\121\26\60\204\50", "\89\210\184\186\21\120\93\175")]=function()
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\159\82\113\208", "\90\209\51\28\181\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\122\65\235\255\243\110\69\252\186\222\111\23\218\183\213\118\82", "\223\176\27\55\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\186\194\185\38\186\205\190", "\213\68\219\174")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\52\223\13\226\61\241\55\122\6\229\13\230\39\192", "\31\107\128\67\135\74\165\95")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\239\225\242\73\78\166\250\207", "\209\184\136\156\45\33")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\193\113\13\186\6\218\87\47", "\216\103\168\21\104")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\185\70\169\90\138", "\196\24\205\35")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\136\224\3\32\159\178", "\102\78\235\131")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\45\55\65\73\45\229", "\84\154\78\84\36\39\89\215")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\238\81\95\9\248\206\120", "\101\157\129\54\56")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\172\146\191", "\25\125\201\234\203\67")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\77\241\0\23\48\38\1\114", "\115\25\148\120\99\116\71")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\41\171\43\74\9", "\33\108\93\217\68")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\66\181\161\222", "\205\187\43\193")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\122\0\210\251", "\191\158\18\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\204\137\163\170\203\215", "\207\165\163\231\215")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\245\248\239\83\32\42\134", "\16\166\153\153\54\68") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\246\182\198\71\33\45\237", "\153\178\211\160\38\84\65"),LUAOBFUSACTOR_DECRYPT_STR_0("\161\3\72\34\145\31\87\42\145", "\75\226\107\58"),LUAOBFUSACTOR_DECRYPT_STR_0("\107\208\30\109", "\173\56\190\113\26\113\162"),LUAOBFUSACTOR_DECRYPT_STR_0("\251\215\35\14\238", "\151\171\190\77\101")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\241\42\224\189", "\107\165\79\152\201\152\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\64\252\206\70\121\86\77\237\139\119\112\91\65\250\216", "\31\55\46\136\171\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\36\213\243\223", "\148\177\72\188")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\136\183\90\214", "\179\198\214\55")]=LUAOBFUSACTOR_DECRYPT_STR_0("\209\15\113\115\75\199\176\47\125\122\74\193\176\93", "\179\144\108\18\22\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\175\26\142", "\175\166\195\123\233")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\253\126\70\252\224\208\110\76\252\234\193\73\24", "\144\143\162\61\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\218\14\68", "\83\128\179\125\48\18\231")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\121\178\245\220\82\18\73", "\126\61\215\147\189\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\72\234\15\85\116\250", "\37\24\159\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\167\121\78\216\167\118\73", "\34\186\198\21")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\214\9\200\88", "\162\152\104\165\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\44\177\120\126\241\141\12\189\113\127\247\141\125", "\133\173\79\210\29\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\171\112\236\44", "\75\237\28\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\96\239\190\35\20\245\210\217\83\201\178\59\73", "\129\188\63\172\209\79\123\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\237\245\217", "\173\32\132\134")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\106\30\14\238\187\61\217", "\173\46\123\104\143\206\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\17\55\143", "\97\212\125\66\234\37\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\226\186\57\28\139\224\189", "\126\234\131\214\85")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\212\68\95", "\47\228\181\41\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\146\243\222\60\15\53\95\137\210\153\24\12\60\16\180", "\127\198\156\185\91\99\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\22\205\247", "\190\149\122\172\144\199\107\89")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\58\197\241\249\53\9\244\221\241\62\10\227\205\251\62\0\242\234", "\158\82\101\145\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\92\247\17\2", "\36\16\158\98\118")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\19\197\250\77\228\51", "\133\160\118\163\155\56\136\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\183\99\226\186\26", "\213\150\194\17\146\214\127"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\168\168\216\68\165\161\61", "\86\123\201\196\180\38\196\194")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\225\205\172\255\168\251\163\246\235\210", "\207\151\136\185")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\138\44\140\125\127\121\188\195\24\151\102\104\125\173", "\17\200\227\72\226\20\24")]=Color3.fromRGB(15, 12, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\64\9\220\137\214\253\250\169", "\159\208\33\123\183\169\145\143")]=Color3.fromRGB(35, 35, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\91\46\47\178\120\52\35\247", "\86\146\58\88")]=Color3.fromRGB(20, 22, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\218\239\208\238\219\51\254", "\154\56\191\138\160\206\137\86")]=Color3.fromRGB(25, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\86\231\130\111\46\193\235\148\92\240\137", "\172\230\57\149\231\28\90\225")]=Color3.fromRGB(12, 20, 12)};
		local bgList = {};
		for n in pairs(bgOptions) do
			table.insert(bgList, n);
		end
		table.sort(bgList);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\171\139\215", "\187\98\202\230\178\72")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\224\167\59\77\51\238\177\62\78\97\194\171\60\69\51", "\42\65\129\196\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\70\92\221", "\142\98\42\61\186\119\103\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\128\32\15\8\173\7\27\61\171\49\13\52\186\1\28", "\104\88\223\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\254\241\218", "\141\36\151\130\174\98")]=bgList,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\127\196\12\145\118\214", "\109\228\26\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\236\233\123\232\166\124\233\252\123\235", "\134\62\133\157\24\128"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\164\22\213\45\176\213\12", "\182\103\197\122\185\79\209")]=function(val)
			if bgOptions[val] then
				Theme.WindowBG = bgOptions[val];
				local h, s, v = Color3.toHSV(Theme.WindowBG);
				Theme.SidebarBG = Color3.fromHSV(h, s, math.min(v + 0.05, 1));
				Theme.ItemBG = Color3.fromHSV(h, s, math.min(v + 0.1, 1));
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\199\130\249\99", "\40\147\231\129\23\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\70\225\159\81\190\161", "\188\21\152\236\37\219\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\97\229\62\11\78", "\108\32\137\87")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\233\13\163", "\57\202\136\96\198\79\153\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\42\164\174\128\174\226\174\39\234\133\185\137\184\152\42\176\162", "\152\203\67\202\199\237\199"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\79\161\8", "\134\154\35\192\111\127\21\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\25\34\53\19\219\162\35", "\178\216\70\105\106\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\34\116", "\224\95\75\26\150\169\181\180")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\38\219\192", "\22\107\186\184\72\36\204")]=250,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\184\34\79\27\235\169", "\110\135\221\68\46")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\55\0\231\204\178\56\232", "\91\131\86\108\139\174\211")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\42\181\18", "\61\155\75\216\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\49\130\242\15\91\8\209\1", "\189\100\203\210\92\56\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\93\252\47", "\72\79\49\157")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\143\22\169\129\131\50\189\132\181", "\220\232\208\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\183\235", "\193\149\222\133\80\76\58")]=0.4,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\92\87", "\178\166\61\47")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\79\238\123\223\50\239", "\94\155\42\136\26\170")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\62\42\185\134\62\37\190", "\213\228\95\70")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\4\186\207\129", "\23\74\219\162\228")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\233\65\168\55\60\166\109\170\34", "\91\89\134\38\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\226\201\49", "\71\36\142\168\86\115\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\158\70\176\4\185\90\76\244\164\107", "\41\191\193\18\223\99\222\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\35\193\43\191\167\50", "\202\203\70\167\74")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\13\221\48\116\36\14\208\55\116\62", "\17\76\97\188\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\181\53\220\36\35\195\96\166\156\105\151\121", "\195\229\71\185\87\80\227\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\253\12\92\237\225\255\11", "\143\128\156\96\48")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\135\238\196\29\16\191\221\245\57\18\161", "\119\216\177\144\114")] = clean;
		end});
		if (not Library.CurrentTab and (#TabButtons > 0)) then
			Library.CurrentTab = TabButtons[1].Name;
		end
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\246\22\218\87\219\59\252\76\221\29\241\71\196\44", "\34\169\73\153")] or LUAOBFUSACTOR_DECRYPT_STR_0("\142\233\13\138\191\224\31", "\235\202\140\107"));
	end;
	return WindowAPI;
end;
return Library;
