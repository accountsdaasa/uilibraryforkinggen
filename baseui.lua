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
	if not obj then
		return;
	end
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
local function Darken(color, factor)
	local h, s, v = Color3.toHSV(color);
	return Color3.fromHSV(h, s, math.clamp(v * factor, 0, 1));
end
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\143\89\206\167\54\85\27\196\162", "\161\219\54\169\192\90\48\80")]="L",[LUAOBFUSACTOR_DECRYPT_STR_0("\125\74\5\40\76\108\1\40\76", "\69\41\34\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\198\209\11\23\39\168", "\75\220\163\183\106\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\137\130\45\220", "\185\98\218\235\87")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\41\46\213\221\171\199\57", "\202\171\92\71\134\190")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\204\45\155\4\212\63\129\42\232\8", "\232\73\161\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\219\90\92\13\168\220\86\84\26\225\150\13\12\70\232\129\20\11\73\236\143\22", "\126\219\185\34\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\195\95\97\87\122\242\224\9\231\122", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\164\235\50\202\11\189\54\211\191\237\112\132\87\246\101\148\228\176\120\147\73\252\107\147\226\187\125", "\167\214\137\74\171\120\206\83")};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\185\245\54", "\199\235\144\82\61\152")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\4\184\37\0\19", "\75\103\118\217")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\81\124\24\182\9", "\126\167\52\16\116\217")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\39\45\133", "\156\168\78\64\224\212\121")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\252\160\203\9", "\174\103\142\197")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\117\49\94\54", "\152\54\72\63\88\69\62")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\200\251\89", "\60\180\164\142")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\75\23\57\43\232", "\114\56\62\101\73\71\141")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\224\213\207", "\164\216\137\187")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\238\56\166\163\177\44\192\227\40", "\107\178\134\81\210\198\158")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\11\132\199\191\52\26", "\202\88\110\226\166")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\244\6\140\243\197\212\45\165", "\170\163\111\226\151")]=Color3.fromRGB(45, 30, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\57\182\61\76\54\59\51\23", "\73\113\80\210\88\46\87")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\56\200\31\197\166", "\135\225\76\173\114")]=Color3.fromRGB(60, 45, 75),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\238\187\181\162\169\246", "\199\122\141\216\208\204\221")]=Color3.fromRGB(180, 80, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\222\19\245\118\226\255", "\150\205\189\112\144\24")]=Color3.fromRGB(100, 40, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\139\184\75\8\141\62\62", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(180, 80, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\26\31\199", "\230\180\127\103\179\214\28")]=Color3.fromRGB(245, 245, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\71\82\192\64\242\135", "\128\236\101\63\38\132\33")]=Color3.fromRGB(160, 150, 170),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\189\3\75\189\238", "\175\204\201\113\36\214\139")]=Color3.fromRGB(70, 50, 90)},[LUAOBFUSACTOR_DECRYPT_STR_0("\100\196\39\213\23\83\193\52\207", "\100\39\172\85\188")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\154\113\183\132\60\186\90\158", "\83\205\24\217\224")]=Color3.fromRGB(130, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\204\201\56\228\196\223\31\193", "\93\134\165\173")]=Color3.fromRGB(24, 60, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\230\196\207\24\233", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(160, 30, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\77\115\15\235\90\33", "\106\133\46\16")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\35\112\249\84\84\10", "\32\56\64\19\156\58")]=Color3.fromRGB(50, 205, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\199\226\81\86\247\175\116", "\224\58\168\133\54\58\146")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\9\225\157\221\221\208", "\175\187\235\113\149\217\188")]=Color3.fromRGB(200, 200, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\187\147\67\232\124", "\24\92\207\225\44\131\25")]=Color3.fromRGB(218, 165, 32)},[LUAOBFUSACTOR_DECRYPT_STR_0("\120\221\183\91", "\29\43\179\216\44\123")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\138\208\46\72\178\206\2\107", "\44\221\185\64")]=Color3.fromRGB(215, 215, 220),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\238\76\90\113\0\245\106\120", "\19\97\135\40\63")]=Color3.fromRGB(230, 230, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\72\54\54\13\22", "\81\206\60\83\91\79")]=Color3.fromRGB(200, 200, 205),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\168\211\119\33\215\28", "\196\46\203\176\18\79\163\45")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\33\125\27\42\239\189", "\143\216\66\30\126\68\155")]=Color3.fromRGB(160, 170, 190),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\199\10\204\201\166\248\207", "\129\202\168\109\171\165\195\183")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\47\204", "\134\66\56\87\184\190\116")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\52\17\175\61\234\51\62", "\85\92\81\105\219\121\139\65")]=Color3.fromRGB(110, 110, 120),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\167\66\74\119\218", "\191\157\211\48\37\28")]=Color3.fromRGB(180, 180, 190)},[LUAOBFUSACTOR_DECRYPT_STR_0("\239\22\250\23\35", "\90\191\127\148\124")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\79\142\32\19\119\144\12\48", "\119\24\231\78")]=Color3.fromRGB(60, 30, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\36\161\79\222\65\3\160\10", "\113\226\77\197\42\188\32")]=Color3.fromRGB(20, 10, 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\2\241\184\24\49", "\213\90\118\148")]=Color3.fromRGB(80, 45, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\45\183\83\67\79\127", "\45\59\78\212\54")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\85\128\142\136\58\255", "\144\112\54\227\235\230\78\205")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\39\8\251\220\94\156\6", "\59\211\72\111\156\176")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\130\251\57", "\77\46\231\131")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84\158\85\164\75", "\32\218\52\214")]=Color3.fromRGB(180, 140, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\3\35\167\250\181", "\58\46\119\81\200\145\208\37")]=Color3.fromRGB(100, 60, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\133\62\168\166\170\20\12", "\86\75\236\80\204\201\221")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\86\68\113\132\235\135\102", "\235\18\33\23\229\158")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\99\179\197\190\82\187\211\153\119", "\219\48\218\161")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\192\116\122\72\206\67\244", "\128\132\17\28\41\187\47")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\38\3\55\127\38", "\61\97\82\102\90")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\136\43\173\74\210\91\10", "\105\204\78\203\43\167\55\126")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\132\169\32\27\29\16\244\69\164\184\55", "\49\197\202\67\126\115\100\167")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\19\94\217\40\149\90\74", "\62\87\59\191\73\224\54")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\1\249\204\233\22\223\199\227", "\169\135\98\154")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\239\114\34\85\232\63\220", "\168\171\23\68\52\157\83")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\126\242\170\41\40\168\218", "\231\148\17\149\205\69\77")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\164\162\193\250\66\243\148", "\159\224\199\167\155\55")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\246\36\198", "\178\151\147\92")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\168\248\74\51\7\64\110", "\26\236\157\44\82\114\44")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\43\205\79\14\47\199\80", "\59\74\78\181")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\1\212\92\91\166\41\197", "\211\69\177\58\58")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\204\74\225\251\196\188\224\90\250\229\196\165", "\171\215\133\25\149\137")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\197\205\52\251\250\60\232", "\34\129\168\82\154\143\80\156")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\162\160\50\15\65\75\135\145\161", "\233\229\210\83\107\40\46")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\245\75\38\218\0\227\67\32\197", "\101\161\34\82\182")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\203\2\75\240\222\240\145", "\78\136\109\57\158\187\130\226")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\24\45\248\252\59\44", "\145\94\95\153")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\223\202\57\212\71\185", "\215\157\173\116\181\46")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\23\179\184\251\222\48\182\138\224", "\186\85\212\235\146")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\224\134\63\234\60\227\75", "\56\162\225\118\158\89\142")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\111\17\210\160\41\221\79", "\184\60\101\160\207\66")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\5\135\100\168\34", "\220\81\226\28")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\39\208\154\239\206\198\1\222\145", "\167\115\181\226\155\138")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\214\35\229\79", "\166\130\66\135\60\27\17")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\112\69\201\114\60\65\89", "\80\36\42\174\21")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\101\25\57\125\105\21\57", "\26\46\112\87");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\189\38\173\117\170\179\81\250\179\48\164\122", "\212\217\67\203\20\223\223\37");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\174\133\173\223\191\158\230\216\169\130\166", "\178\218\237\200");
Library.ActiveLoops = {};
Library.MainScale = nil;
Library.CurrentTab = nil;
Library.OpenDropdowns = {};
Library.CustomObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\133\186\243\222\178", "\176\214\213\134")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\160\183\211\173", "\57\148\205\214\180\200\54")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\243\60\57\90\29\242\37", "\22\114\157\85\84")]=nil};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\214\201\11\197\78\229\173\208\194\23\158\18\185\241\148\153\70\149\10\164\250\156\146\68\147\13\161", "\200\164\171\115\164\61\150");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\141\224\2\87\151\187\230\36\80\138", "\227\222\148\99\37")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\0\87\92\242\215\60\70\91\240\240\48\83\70\255\246\61", "\153\83\50\50\150"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\105\127\103\16\118", "\45\61\22\19\124\19\203")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\23\21\225", "\217\161\114\109\149\98\16")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\53\42\125\168\125\29\46", "\20\114\64\88\28\220")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\37\0\208\184\253", "\221\81\97\178\212\152\176")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\227\232\9\242\28\196\228\28\239\19\194\233", "\122\173\135\125\155"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\170\206\20\176\57\56\203\133\213\9\182\49", "\168\228\161\96\217\95\81"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\207\208\44\80\42", "\55\187\177\78\60\79"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\57\207\93\231\67", "\224\77\174\63\139\38\175"))) then
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
			if (object.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\183\73\89\42\139\86", "\78\228\33\56")) then
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
	local themeName = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\241\65\145\22\151\220\123\188\23\177\198\123\191\6", "\229\174\30\210\99")] or LUAOBFUSACTOR_DECRYPT_STR_0("\63\232\128\80\248\49\45", "\89\123\141\230\49\141\93");
	local function FixAssetID(id)
		if (not id or (id == "")) then
			return nil;
		end
		id = tostring(id);
		id = string.gsub(id, " ", "");
		if not string.find(id, LUAOBFUSACTOR_DECRYPT_STR_0("\225\115\238\13\3\89\246\101\255\8\74\5\188", "\42\147\17\150\108\112")) then
			return LUAOBFUSACTOR_DECRYPT_STR_0("\29\164\53\126\244\251\10\178\36\123\189\167\64", "\136\111\198\77\31\135") .. id;
		end
		return id;
	end
	local customMusic = FixAssetID(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\61\54\132\67\174\240\24\164\47\28\180\95\190\205\51", "\201\98\105\199\54\221\132\119")]);
	local customImage = FixAssetID(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\134\51\160\52\17\33\163\180\32\140\38\13\28\136", "\204\217\108\227\65\98\85")]);
	local targetMusicID = nil;
	if (customMusic and (customMusic ~= "")) then
		targetMusicID = customMusic;
	elseif (themeName == LUAOBFUSACTOR_DECRYPT_STR_0("\125\203\231\236\63\212\83\194\230", "\160\62\163\149\133\76")) then
		targetMusicID = DEFAULTS.XmasMusicID;
	end
	if targetMusicID then
		if not Library.CustomObjects.Sound then
			local music = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\175\24\33\199", "\163\182\192\109\79"));
			music.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\31\47\14\199\192\29\25\35\213\230\32\41\13\237\224\39\47\3", "\149\84\70\96\160");
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
	elseif (themeName == LUAOBFUSACTOR_DECRYPT_STR_0("\27\14\31\228\43\18\0\236\43", "\141\88\102\109")) then
		targetImageID = DEFAULTS.XmasImageID;
	end
	if targetImageID then
		local mainFrame = Library.ThemeObjects.Frames[1];
		if (mainFrame and not Library.CustomObjects.Image) then
			local img = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\94\203\119\31\17\84\195\182\95", "\161\211\51\170\16\122\93\53"), mainFrame);
			img.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\216\187\161\60\244\163\150\45\248\161\160\41\239\167\189\38", "\72\155\206\210");
			img.BackgroundTransparency = 1;
			img.Size = UDim2.new(0, 100, 0, 100);
			img.Position = UDim2.new(1, -105, 1, -105);
			img.ZIndex = 10;
			img.Rotation = 0;
			Library.CustomObjects.Image = img;
			Library.CustomObjects.AnimLoop = task.spawn(function()
				while img and img.Parent do
					TweenService:Create(img, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\116\117\64\15\39\79\117\90", "\83\38\26\52\110")]=10}):Play();
					task.wait(1.5);
					TweenService:Create(img, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\106\24\51\71\76\30\40\72", "\38\56\119\71")]=-10}):Play();
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
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\196\230\86\210\42\65\209\200", "\54\147\143\56\182\69")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\136\251\76\221\215\147\221\110", "\191\182\225\159\41")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\6\45\88\169\160", "\162\75\114\72\53\235\231")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\63\71\231\93\22\221", "\98\236\92\36\130\51")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\26\15\191\75\188\231", "\80\196\121\108\218\37\200\213")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\124\5\120\71\11\165\46", "\234\96\19\98\31\43\110")]=((saved.ToggleON and ToColor(saved.ToggleON)) or ToColor(saved.Accent2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\26\74\211", "\235\102\127\50\167\204\18")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\164\237\55\96\47\66\170", "\78\48\193\149\67\36")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\3\10\146\23\74\53", "\33\80\126\224\120")]=ToColor(saved.Stroke)};
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
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\211\151\32\209\78\254\173\13\208\104\228\173\14\193", "\60\140\200\99\164")] = themeName;
		end
		Library:UpdateCustomFeatures();
	end
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\35\52\163\131\253\1\40\182", "\194\231\148\100\70")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
			obj.Rotation = 0;
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\97\89\200\140\244\194\67\79\213", "\168\38\44\161\195\150")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\162\253\129\125\55\250\185\3\142\248\161\121\60\231\164\69", "\118\224\156\226\22\80\136\214")]=Theme.WindowBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.TitleBars) do
		obj.BackgroundColor3 = Darken(Theme.WindowBG, 0.7);
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\119\199\126\146\67\234\80\133\76\250", "\224\34\142\57")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\249\178\204\242\113\251\88\13\202", "\110\190\199\165\189\19\145\61")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\234\116\227\140\213\213\254\121\236\168\200\214\228\101\187", "\167\186\139\23\136\235")]=Theme.SidebarBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\61\160\129\34\24\191\141\14\14", "\109\122\213\232")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\204\246\161\59\233\229\173\37\224\243\129\63\226\248\176\99", "\80\142\151\194")]=Theme.ItemBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.Strokes) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\32\201\123\67\17", "\44\99\166\23")]=Theme.UIStrokeColor}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.Texts) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\72\242\49\34\16\171\112\248\59\101", "\196\28\151\73\86\83")]=Theme.Text}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.TextDarks) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\161\87\20\121\225\80", "\22\147\99\73\112\226\56\120")]=Theme.TextDark}, 0.3);
	end
	for _, tab in pairs(Library.ThemeObjects.Tabs) do
		local isActive = tab.Name == Library.CurrentTab;
		if isActive then
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\116\225\254\138\170\122\247\251\137\155\122\238\250\159\235", "\237\216\21\130\149")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\182\75\71\75\147\198\82\141\92\12", "\62\226\46\63\63\208\169")]=Theme.Text}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\24\86\136\24\31\32\75\235\29\97\145\30\3\60\78\228\11\80\141\28\20", "\62\133\121\53\227\127\109\79")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\21\49\254\209\188\173\5\26\54\214\217\162\173\2\71", "\194\112\116\82\149\182\206")]=Theme.AccentStart}, 0.3);
		else
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\169\79\19\199\240\1\44\166\72\59\207\238\1\43\251", "\110\89\200\44\120\160\130")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\198\83\82\96\69\55\66\185\144", "\45\203\163\43\38\35\42\91")]=Theme.TextDark}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\132\223\40\128\187\91\199\139\216\23\149\168\90\193\149\221\49\130\167\87\203", "\52\178\229\188\67\231\201")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\3\64\83\15\240\78\44\52\79\84\39\248\80\44\51\18", "\67\65\33\48\100\151\60")]=Theme.AccentStart}, 0.3);
		end
	end
	for _, toggle in pairs(Library.ThemeObjects.Toggles) do
		toggle.Update(Library.Flags[toggle.Flag]);
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\220\232\160\222\250\216\169\164\203\252\209", "\147\191\135\206\184");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\175\33\168\198\255\86\188\177\1", "\210\228\72\198\161\184\51")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\29\64\253\23\70\231", "\174\86\41\147\112\19"), LUAOBFUSACTOR_DECRYPT_STR_0("\122\12\159\14\36\11\8\235\105\21\131\5\44\1\22", "\203\59\96\237\107\69\111\113"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\21\190\228\52\254\240\49\31", "\183\68\118\204\129\81\144"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\37\164\126\227\44\135\0\152\89", "\226\110\205\16\132\107");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local ShadowHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\194\238\207\64\248\228\242\214\84\251", "\33\139\163\128\185"), ScreenGui);
	ShadowHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\100\80\5\218\88\79", "\190\55\56\100");
	ShadowHolder.BackgroundTransparency = 1;
	ShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5);
	ShadowHolder.Size = UDim2.new(0, 680, 0, 580);
	ShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0);
	ShadowHolder.GroupTransparency = 0;
	ShadowHolder.ZIndex = 0;
	local ShadowImage = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\162\61\25\22\207\242\84\170\48", "\147\54\207\92\126\115\131"), ShadowHolder);
	ShadowImage.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\31\51\45\124\30\109\8\37\60\121\87\49\66\103\101\44\88\38\84\102\109\41\94", "\30\109\81\85\29\109");
	ShadowImage.ImageColor3 = Color3.new(0, 0, 0);
	ShadowImage.ImageTransparency = 0.4;
	ShadowImage.ScaleType = Enum.ScaleType.Slice;
	ShadowImage.SliceCenter = Rect.new(49, 49, 450, 450);
	ShadowImage.Size = UDim2.new(1, 0, 1, 0);
	ShadowImage.Position = UDim2.new(0, 0, 0, 0);
	ShadowImage.BackgroundTransparency = 1;
	ShadowImage.ZIndex = 0;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\99\85\187\51", "\156\159\17\52\214\86\190"), ShadowHolder);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\131\238\180\178\136\253\188\177\171", "\220\206\143\221");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(1, -34, 1, -34);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\30\20\217\192\215", "\178\230\29\77\119\184\172"), ShadowHolder);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\202\129\45\14\126\203\246\191\6\30", "\152\149\222\106\123\23")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\15\209\81\180\217\47\243\77\161", "\213\189\70\150\35"), MainFrame);
	MainFrameGradient.Rotation = 0;
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\87\7\93\91\113\26", "\104\47\53\20"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 12);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\101\178\8\174\0\168\73", "\111\195\44\225\124\220"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 0.8;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\111\51\122\177\174\251\73\14\96\191\185\217\79\14\103", "\203\184\38\96\19\203"), ShadowHolder);
	sizeConstraint.MaxSize = Vector2.new(9999, 9999);
	sizeConstraint.MinSize = Vector2.new(300, 200);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\118\97\85\236\44\103\109\78\192", "\174\89\19\25\33"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\6\28\66\91\227\165\7\32\17\89\75\229", "\107\79\114\50\46\151\231");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\180\180\36\143", "\160\89\198\213\73\234\89\215"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\124\120\160\242\192\106\112\166", "\165\40\17\212\158");
	TitleBar.Size = UDim2.new(1, 0, 0, 50);
	TitleBar.BackgroundColor3 = Darken(Theme.WindowBG, 0.7);
	TitleBar.BackgroundTransparency = 0;
	TitleBar.ZIndex = 2;
	table.insert(Library.ThemeObjects.TitleBars, TitleBar);
	MakeDraggable(TitleBar, ShadowHolder);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\212\9\52\35\201\216\10\54\42", "\70\133\185\104\83"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 28, 0, 28);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -14);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\64\92\62\229\5\71\65\38", "\169\100\37\36\74"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\43\174\140\119\64\160\135\126", "\48\96\231\194");
	TitleLabel.Size = UDim2.new(1, -100, 1, 0);
	TitleLabel.Position = UDim2.new(0, 50, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextSize = 16;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local TitleDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\72\15\32\28", "\227\168\58\110\77\121\184\207"), TitleBar);
	TitleDivider.Size = UDim2.new(1, 0, 0, 1);
	TitleDivider.Position = UDim2.new(0, 0, 1, 0);
	TitleDivider.BackgroundColor3 = Theme.UIStrokeColor;
	TitleDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, TitleDivider);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\57\167\84\147\206\101\177\116\50", "\197\27\92\223\32\209\187\17"), TitleBar);
	MinBtn.Size = UDim2.new(0, 30, 0, 30);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -15);
	MinBtn.Text = "-";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\118\224\244\17\81\198\233", "\155\99\63\163"), MinBtn).CornerRadius = UDim.new(0, 8);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	MinBtn.MouseEnter:Connect(function()
		Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\160\208\162\134\190\150\141\196\175\137\154\139\142\222\179\222", "\228\226\177\193\237\217")]=Theme.AccentStart}, 0.2);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\11\143\22\207\11\157\10\200\29\157\10\220\17\148", "\134\84\208\67")] then
			Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\49\173\133\87\20\190\137\73\29\168\165\83\31\163\148\15", "\60\115\204\230")]=Theme.ItemBG}, 0.2);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\57\249\117\226\52\204\101\238", "\16\135\90\139"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\127\86\19\39\90\91\118\115\97\15", "\24\52\20\102\83\46\52");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\34\32\35\10\230\58\53\48\0\202", "\111\164\79\65\68"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 0, 0, 0);
	KBtn.Position = UDim2.new(0.9, -50, 0.5, 0);
	KBtn.Visible = false;
	KBtn.ZIndex = 10;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\249\230\168\225\30\197\245", "\138\166\185\227\190\78"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\244\75\240\30\109\14\48\229\93\232\30\104\6\61", "\121\171\20\165\87\50\67")] = isMinimized;
		Library:Save();
		if isMinimized then
			for _, closeFunc in pairs(Library.OpenDropdowns) do
				pcall(closeFunc);
			end
		end
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\249\7\146\9\138\11\220\61", "\98\166\88\217\86\217")] or DEFAULTS.KSize;
		if isMinimized then
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\209\228\118\20\150\232\228\247\119\18\150\221\228\243\119\2\159", "\188\150\150\25\97\230")]=1}, 0.3);
			KBtn.Visible = true;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\233\128\69\7", "\141\186\233\63\98\108")]=UDim2.new(0, kSize, 0, kSize),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\231\45\177\32\197\248\45\184\54\225\235\62\179\43\242\243", "\69\145\138\76\214")]=0}, 0.4, Enum.EasingStyle.Back);
			task.wait(0.3);
			if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\79\240\188\160\128\59\89\225\160\164\150\44\85\235", "\118\16\175\233\233\223")] then
				ShadowHolder.Visible = false;
			end
		else
			ShadowHolder.Visible = true;
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\172\150\58\174\254\191\111\138\138\38\171\239\153\120\133\135\44", "\29\235\228\85\219\142\235")]=0}, 0.3);
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\221\160\216", "\50\93\180\218\189\23\46\71")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\169\90\75\65\232\90\223\170\72\92\69\206\77\208\167\66", "\40\190\196\59\44\36\188")]=1}, 0.3, Enum.EasingStyle.Back);
			task.wait(0.2);
			if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\3\122\233\157\197\80\36\18\108\241\157\192\88\41", "\109\92\37\188\212\154\29")] then
				KBtn.Visible = false;
			end
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\59\208\145\234\14\119\45\193\141\238\24\96\33\203", "\58\100\143\196\163\81")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\37\125\8\156\12\64\255\11", "\110\122\34\67\195\95\41\133")] or DEFAULTS.KSize;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\70\184\65\79", "\182\21\209\59\42")]=UDim2.new(0, kSize, 0, kSize)}, 0.3);
		end
	end;
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\136\104\241\18\38\185\187\82\238\24\56", "\222\215\55\165\125\65")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\19\238\243\51\205\236\196\100\5\252\239\32\215\229", "\42\76\177\166\122\146\161\141")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\154\181\48\231\70\91\140\164\44\227\80\76\128\174", "\22\197\234\101\174\25")] then
		ShadowHolder.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\18\11\142\227\69\166\205\131", "\230\77\84\197\188\22\207\183")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		ShadowHolder.Visible = true;
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\6\199\241\137", "\85\153\116\166\156\236\193\144"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\151\233\73\182\230\1\182\195\66\189\240\1\173\238\72\161", "\96\196\128\45\211\132");
	SidebarContainer.Size = UDim2.new(0, 130, 1, -50);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 50);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarContainer);
	local SidebarDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\159\122\82\215", "\184\85\237\27\63\178\207\212"), SidebarContainer);
	SidebarDivider.Size = UDim2.new(0, 1, 1, 0);
	SidebarDivider.Position = UDim2.new(1, -1, 0, 0);
	SidebarDivider.BackgroundColor3 = Theme.UIStrokeColor;
	SidebarDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, SidebarDivider);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\90\27\80\4\85\0\81\15\127\27\94\5\92", "\63\104\57\105"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\174\136\77\24\147\136\69\18\136\177\80", "\36\107\231\196"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\146\134\89\177\171\137\90", "\231\61\213\194"), TabBar).PaddingTop = UDim.new(0, 10);
	TabListLayout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\40\175\46\124\5\184\41\118\42\162\51\103\12\163\41\64\0\183\56", "\19\105\205\93")):Connect(function()
		TabBar.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 20);
	end);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\26\223\140\58", "\95\201\104\190\225"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -130, 1, -50);
	PagesContainer.Position = UDim2.new(0, 130, 0, 50);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\226\241\207\171\207\200\192\168", "\174\207\171\161"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 15);
	ContentPadding.PaddingRight = UDim.new(0, 15);
	ContentPadding.PaddingTop = UDim.new(0, 15);
	ContentPadding.PaddingBottom = UDim.new(0, 15);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\251\21\231\218\194\249\234\2\253", "\183\141\158\109\147\152"), TabBar);
		TabBtn.Size = UDim2.new(1, -20, 0, 36);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 13;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\32\197\3\62\7\227\30", "\108\76\105\134"), TabBtn).CornerRadius = UDim.new(0, 6);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\215\176\236\203", "\174\139\165\209\129"), TabBtn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BackgroundTransparency = 1;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\154\193\206\212\13\117\106", "\24\195\211\130\161\166\99\16"), Indicator).CornerRadius = UDim.new(0, 4);
		local function UpdateTabButtonStyle(button, indicator, isActive)
			if isActive then
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\100\2\234\39\84\4\73\22\231\40\112\25\74\12\251\127", "\118\38\99\137\76\51")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\35\29\6\42\47\241\41\23\65", "\64\157\70\101\114\105")]=Theme.Text}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\98\169\164\232\23\82\167\178\237\20\116\186\166\237\3\80\169\181\230\30\67\177", "\112\32\200\199\131")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\81\95\179\196\185\45\57\94\88\155\204\167\45\62\3", "\66\76\48\60\216\163\203")]=Theme.AccentStart}, 0.3);
			else
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\135\122\248\88\220\43\175\136\125\208\80\194\43\168\213", "\68\218\230\25\147\63\174")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88\149\162\38\92\94\229", "\214\205\74\51\44")]=Theme.TextDark}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\216\77\225\247\112\232\67\247\242\115\206\94\227\242\100\234\77\240\249\121\249\85", "\23\154\44\130\156")]=1}, 0.3);
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\178\163", "\115\113\198\205\206\86")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\89\250\83\135\86\234\85\150", "\58\228\55\158")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=name});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\104\76\134", "\130\42\56\232")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\187\32\234\67\62\254\186\54", "\95\138\213\68\131\32")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\41\172\70", "\22\74\72\193\35")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\122\246\87\32\117\237\86\43\95\246\89\33\124", "\56\76\25\132"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\97\241\170\33\202", "\175\62\161\203\70");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\244\239\26\38\40\241\194\10\58\41\201", "\85\92\189\163\115"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\133\0\57\45\168\57\54\46", "\88\73\204\80"), Page);
		PagePadding.PaddingRight = UDim.new(0, 10);
		PagePadding.PaddingBottom = UDim.new(0, 10);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\8\145\17\75\44", "\186\78\227\112\38\73")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\210\86\240\80", "\26\156\55\157\53\51")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\202\23\212\189", "\48\236\184\118\185\216"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\148\116\63\221\58\224\175", "\84\133\221\55\80\175"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\226\60\178\235\93\191\226\40", "\60\221\135\68\198\167"), Frame);
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
			local SwitchBg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\175\249\142\71", "\185\142\221\152\227\34"), Frame);
			SwitchBg.Size = UDim2.new(0, 44, 0, 22);
			SwitchBg.Position = UDim2.new(1, -54, 0.5, -11);
			SwitchBg.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\236\116\245\81\61\242\74", "\151\56\165\55\154\35\83"), SwitchBg).CornerRadius = UDim.new(1, 0);
			local SwitchKnob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\81\4\227\165", "\142\192\35\101"), SwitchBg);
			SwitchKnob.Size = UDim2.new(0, 18, 0, 18);
			SwitchKnob.Position = UDim2.new(0, 2, 0.5, -9);
			SwitchKnob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\92\10\172\245\130\169\4", "\118\182\21\73\195\135\236\204"), SwitchKnob).CornerRadius = UDim.new(1, 0);
			local ClickArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\57\2\84\38\24\233\28\51\20", "\157\104\92\122\32\100\109"), Frame);
			ClickArea.Text = "";
			ClickArea.BackgroundTransparency = 1;
			ClickArea.Size = UDim2.new(1, 0, 1, 0);
			ClickArea.ZIndex = 10;
			local function UpdateVisuals(val)
				if val then
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\129\167\204\193\58\53\130\190\173\162\236\197\49\40\159\248", "\203\195\198\175\170\93\71\237")]=Theme.ToggleON}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\30\68\45\220\69\24\243\32", "\156\78\43\94\181\49\113")]=UDim2.new(1, -20, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\80\233\199\168\12\81\118\103\230\192\128\4\79\118\96\187", "\25\18\136\164\195\107\35")]=Color3.new(1, 1, 1)}, 0.25, Enum.EasingStyle.Back);
				else
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\202\44\170\68\117\174\206\173\230\41\138\64\126\179\211\235", "\216\136\77\201\47\18\220\161")]=Theme.WindowBG}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\29\227\56\211\28\213\141\35", "\226\77\140\75\186\104\188")]=UDim2.new(0, 2, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\207\211\52\72\171\193\197\49\75\154\193\220\48\93\234", "\47\217\174\176\95")]=Theme.TextDark}, 0.25, Enum.EasingStyle.Back);
				end
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\205\114\3\166\81", "\70\216\189\22\98\210\52\24")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\211\162\128", "\179\186\191\195\231")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\221\58\22\237\252\59", "\132\153\95\120"), reason, 3);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\160\15\32\242", "\192\209\210\110\77\151\186"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\42\1\230\237\202\229\17", "\164\128\99\66\137\159"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\140\241\170\44\136\235\187\12", "\222\96\233\137"), Frame);
			TopLabel.Size = UDim2.new(1, -40, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 8);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamMedium;
			TopLabel.TextSize = 14;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\182\191\11\164\242\242\188\191", "\144\217\211\199\127\232\147"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 8);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextSize = 14;
			ValLabel.TextColor3 = Theme.AccentStart;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.TextXAlignment = Enum.TextXAlignment.Right;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local SliderBarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\61\63\37\208", "\36\152\79\94\72\181\37\98"), Frame);
			SliderBarBG.Size = UDim2.new(1, -20, 0, 6);
			SliderBarBG.Position = UDim2.new(0, 10, 0, 38);
			SliderBarBG.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\241\100\48\197\214\66\45", "\95\183\184\39"), SliderBarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\45\230\43\81", "\98\213\95\135\70\52\224"), SliderBarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\138\234\120\70\240\166\219", "\52\158\195\169\23"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\149\21\102\135\49\114\142\116\168", "\235\26\220\82\20\230\85\27"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, UIGradientFill);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\174\179\232\207\113", "\20\232\193\137\162"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\246\230\169\245\130\18\99", "\17\66\191\165\198\135\236\119"), Knob).CornerRadius = UDim.new(1, 0);
			Frame:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\57\166\189\26\253\228\233", "\177\111\207\206\115\159\136\140")):Connect(function()
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
				Tween(Fill, {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\128\10\17", "\63\101\233\112\116\180\47")]=UDim2.new(SizeX, 0, 1, 0)}, 0.05);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\50\247\23", "\86\163\91\141\114\152")]=UDim2.new(0, 18, 0, 18)}, 0.2);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\2\110\118", "\90\51\107\20\19")]=UDim2.new(0, 14, 0, 14)}, 0.2);
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\171\226\132\226\56", "\93\237\144\229\143"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\223\211\22\25\72\16\228", "\38\117\150\144\121\107"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\190\246\46\1\186\236\63\33", "\90\77\219\142"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\1\57\45\110\18\110\242\11\47", "\26\134\100\65\89\44\103"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\202\19\44\182\255\230\34", "\196\145\131\80\67"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\153\53\28\10\231\21\181", "\136\126\208\102\104\120"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\76\143\214\87\131\83\63\84\116", "\49\24\234\174\35\207\50\93"), MainBtn);
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
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\247\229\156\93\13\240\248\132", "\17\108\146\157\232"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\209\21\224\42", "\200\43\163\116\141\79"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\155\36\50\147\180\251\244\177", "\131\223\86\93\227\208\148");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\214\108\149\185\15\187\230\87", "\213\131\37\214\214\125"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\2\22\171\243\41\32\32", "\129\70\75\69\223"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\226\192\253\110\224\77\206", "\143\38\171\147\137\28"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\129\171\252\15\239\221\222\133\159\225\2\238\209", "\180\176\226\217\147\99\131"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\144\3\14\192\173\3\6\202\182\58\19", "\103\179\217\79"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\184\8\212\85\133\172\68", "\195\42\215\124\181\33\236")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\86\59\49\55", "\152\109\57\87\94\69")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\205\197\11\173\173\194\85\186\252\217\9\186", "\200\153\183\106\195\222\178\52")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\6\230\144\41\107\79\38\247\135\51", "\58\82\131\232\93\41")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\82\200\1\127\42\151\67\223\27", "\95\227\55\176\117\61"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\113\55\74\191\17\113\45", "\203\120\30\67\43")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\210\42\65\224\203", "\185\145\69\45\143")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\190\13\24\168\207\154\30\11\163\210\137\6", "\188\234\127\121\198")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\32\18\142\61", "\227\88\82\115"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\54\153\168\16\125\70\13", "\19\35\127\218\199\98"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\40\254\18\246\48\250\8\231\16", "\130\124\155\106"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\225\206\238\187\129\227\104\171\218\197", "\223\181\171\150\207\195\150\28"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\19\192\161\27\66\63\241", "\105\44\90\131\206"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\201\129\173\26\49\244\229", "\94\159\128\210\217\104"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\252\30\171\115\126\251\127\92", "\26\48\153\102\223\63\31\153"), MainBtn);
			SelectedText.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\49\69\225\246\1\84\173\218\22\69\224\224\76\14\163", "\147\98\32\141");
			SelectedText.Size = UDim2.new(1, -30, 1, 0);
			SelectedText.Position = UDim2.new(0, 10, 0, 0);
			SelectedText.Font = Enum.Font.Gotham;
			SelectedText.TextColor3 = Theme.Text;
			SelectedText.TextSize = 14;
			SelectedText.TextXAlignment = Enum.TextXAlignment.Left;
			SelectedText.BackgroundTransparency = 1;
			SelectedText.ZIndex = 7;
			table.insert(Library.ThemeObjects.Texts, SelectedText);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\44\70\251\222\42\87\73\29\79", "\43\120\35\131\170\102\54"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\20\134\187\160", "\228\52\102\231\214\197\208"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\51\245\121\222\227\175\11\217\14\228\122\221\228", "\182\126\128\21\170\138\235\121");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\190\243\22\233\148\29\53\20", "\102\235\186\85\134\230\115\80"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\37\13\75\96\219\41\82", "\66\55\108\94\63\18\180"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\164\182\35\53\86\31\136", "\57\116\237\229\87\71"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\178\255\232\123\226\78\164\182\203\245\118\227\66", "\39\202\209\141\135\23\142"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\26\37\3\33\236\211\50\16\5\39\236", "\152\159\83\105\106\82"), Scroll);
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
				SelectedText.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\193\245\84\254\204\95\149\195\85", "\60\225\166\49\146\169"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\28\27\35\47\2\19\111\55\59\47\12\20\97\80\97", "\103\79\126\79\74\97");
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\136\112\199\114\74\19\181\113", "\122\218\31\179\19\62")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\144\217\193\206\219", "\37\211\182\173\161\169\193")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\40\76\215\59\107\184\229\63\67\218\49", "\217\151\90\45\185\72\27")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\247\121\255\6\116\214\104\243\29\88", "\54\163\28\135\114")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						if (Library.Flags[dFlag][item] == nil) then
							Library.Flags[dFlag][item] = false;
						end
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\222\69\150\108\106\60\207\82\140", "\31\72\187\61\226\46"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\241\9\87\211\83\119\43\205", "\68\163\102\35\178\39\30")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\157\127\214\200\17", "\113\222\16\186\167\99\213\227")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\28\250\248\61\30\250\228\43\0\248\239", "\150\78\110\155")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\163\215\38\236\161", "\32\229\165\71\129\196\126\223"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\160\231\142\147\219\198\155", "\181\163\233\164\225\225"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\142\38\99\124\138\60\114\92", "\23\48\235\94"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\72\223\192\73\117\38\198\104\213\214", "\178\28\186\184\61\55\83"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 32);
			Button.Position = UDim2.new(0, 10, 0, 28);
			Button.BackgroundColor3 = Theme.WindowBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamBold;
			Button.TextSize = 14;
			Button.AutoButtonColor = false;
			Button.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\228\100\51\224\0\240\214", "\149\164\173\39\92\146\110"), Button).CornerRadius = UDim.new(0, 6);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\14\35\11\8\20\248\34", "\123\147\71\112\127\122"), Button);
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
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\204\129\122\65\222\194\151\127\66\239\194\142\126\84\159", "\38\172\173\226\17")]=Theme.ItemBG}, 0.1);
				task.wait(0.1);
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\111\16\47\228\74\3\35\250\67\21\15\224\65\30\62\188", "\143\45\113\76")]=Theme.WindowBG}, 0.1);
				pcall(options.Callback, val);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\170\29\49\189", "\92\216\216\124"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\27\143\79\239\85\55\190", "\157\59\82\204\32"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\59\251\238\197\235\209\180\52", "\209\88\94\131\154\137\138\179"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local InputContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\14\179\197\113\27", "\66\72\193\164\28\126\67\81"), Frame);
			InputContainer.Size = UDim2.new(1, -20, 0, 32);
			InputContainer.Position = UDim2.new(0, 10, 0, 28);
			InputContainer.BackgroundColor3 = Theme.WindowBG;
			InputContainer.ClipsDescendants = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\5\139\87\52\120\226\62", "\22\135\76\200\56\70"), InputContainer).CornerRadius = UDim.new(0, 6);
			local InputStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\25\203\48\79\238\134\53", "\129\237\80\152\68\61"), InputContainer);
			InputStroke.Color = Theme.UIStrokeColor;
			InputStroke.Transparency = 0.8;
			table.insert(Library.ThemeObjects.Strokes, InputStroke);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\173\28\231\62\24\64", "\56\49\200\100\147\124\119"), InputContainer);
			Input.Size = UDim2.new(1, -10, 1, 0);
			Input.Position = UDim2.new(0, 5, 0, 0);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\130\112\241", "\144\172\94\223");
			Input.Text = default;
			Input.BackgroundTransparency = 1;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextSize = 14;
			Input.TextXAlignment = Enum.TextXAlignment.Left;
			Input.TextTruncate = Enum.TextTruncate.AtEnd;
			table.insert(Library.ThemeObjects.Texts, Input);
			Input.Focused:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\0\174\72\54", "\39\68\111\194")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\180\230\201\106\167\215\180\226\201\122\174", "\215\182\198\135\167\25")]=0.2}, 0.3);
			end);
			Input.FocusLost:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\174\70\230\71\159", "\40\237\41\138")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\102\251\246\89\215\117\232\253\68\196\109", "\42\167\20\154\152")]=0.8}, 0.3);
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\236\163\79\116", "\65\42\158\194\34\17"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundTransparency = 1;
			local btnName = options.Name;
			if (not btnName or (btnName == "")) then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\34\74\24\15\248\15\250\21\41", "\142\122\71\50\108\77\141\123"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = btnName;
			Btn.TextColor3 = Color3.new(1, 1, 1);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.AutoButtonColor = false;
			Btn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\139\220\23\41\27\167\237", "\91\117\194\159\120"), Btn).CornerRadius = UDim.new(0, 8);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\52\25\10\52\245\45\31\19\42", "\68\122\125\94\120\85\145"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, BtnGradient);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\53\252\74\218\214\177\18", "\218\119\124\175\62\168\185"), Btn);
			BtnStroke.Color = Theme.AccentStart;
			BtnStroke.Transparency = 0.8;
			BtnStroke.Thickness = 1;
			Btn.MouseEnter:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\241\75\207\162\226\71\209\171\244\124\214\164\254\91\212\164\226\77\202\166\233", "\164\197\144\40")]=0.1}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\183\226\171\133\206\166\130\226\175\133\222\175", "\214\227\144\202\235\189")]=0.4}, 0.2);
			end);
			Btn.MouseLeave:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\207\164\132\112\23\161\92\41\227\161\179\105\17\189\64\44\236\183\130\117\19\170", "\92\141\197\231\27\112\211\51")]=0}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\210\237\139\173\194\246\254\152\166\223\229\230", "\177\134\159\234\195")]=0.8}, 0.2);
			end);
			Btn.MouseButton1Click:Connect(function()
				PlayClickSound();
				task.spawn(function()
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\137\238\39\180\250\180\241\58", "\169\221\139\95\192")]=12}, 0.05);
					task.wait(0.05);
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\234\142\103\43\17\47\196\142", "\70\190\235\31\95\66")]=14}, 0.05);
				end);
				pcall(options.Callback);
			end);
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\240\27\235\224", "\133\218\130\122\134"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 95);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\214\192\203\206\173\61\46", "\88\92\159\131\164\188\195"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\43\167\95\251\234\223\133\34", "\189\224\78\223\43\183\139"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\13\238\143\18\200\58", "\161\78\156\234\118");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			table.insert(Library.ThemeObjects.Texts, Label);
			local BoxContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\129\165\200\209\162", "\188\199\215\169"), Frame);
			BoxContainer.Size = UDim2.new(0.9, 0, 0, 32);
			BoxContainer.Position = UDim2.new(0.05, 0, 0, 24);
			BoxContainer.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\32\124\116\250\242\12\77", "\136\156\105\63\27"), BoxContainer).CornerRadius = UDim.new(0, 8);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\137\97\32\57\131\97", "\84\123\236\25"), BoxContainer);
			Box.Size = UDim2.new(1, 0, 1, 0);
			Box.Text = options.Link or "";
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.BackgroundTransparency = 1;
			Box.TextEditable = false;
			Box.ClearTextOnFocus = false;
			table.insert(Library.ThemeObjects.Texts, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\142\178\3\142\160\228\159\165\25", "\213\144\235\202\119\204"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 28);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 62);
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\0\23\206\51", "\45\67\120\190\74\72\67");
			CopyBtn.TextColor3 = Color3.new(1, 1, 1);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextSize = 13;
			CopyBtn.AutoButtonColor = false;
			CopyBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\11\206\170\235\134\235\251", "\137\64\66\141\197\153\232\142"), CopyBtn).CornerRadius = UDim.new(0, 8);
			local CopyGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\249\5\180\137\7\217\39\168\156", "\232\99\176\66\198"), CopyBtn);
			CopyGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, CopyGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				PlayClickSound();
				if setclipboard then
					pcall(function()
						setclipboard(options.Link or "");
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\207\46\56\15\126\137\184", "\76\140\65\72\102\27\237\153");
					task.delay(2, function()
						CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\105\213\6\203", "\222\42\186\118\178\183\97");
					end);
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\120\254\86\133\79", "\234\61\140\36"), "Your executor doesn't support clipboard.", 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\207\187\127\10", "\111\65\189\218\18"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\89\26\56\14", "\207\35\43\123\85\107\60"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 26);
			Frame.BackgroundTransparency = 1;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\68\175\184\254\85\113\168\165\230", "\25\16\202\192\138"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\209\202\175\231\165", "\148\157\171\205\130\201");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextSize = 14;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\0\198\113\45\216\226\48", "\150\67\180\20\73\177"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\185\29\2\89", "\45\237\120\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\193\226\46\206\168\142\37\205\237\134\41\193", "\76\183\136\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\91\234\236\63\94", "\116\26\134\133\88\48\47")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\206\172\235\175", "\18\126\161\192\132\221")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\113\41\163\1", "\54\63\72\206\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\80\86\121\234\105\204\25\118\127\247\109\205\75", "\27\168\57\37\26\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\163\114\163", "\183\77\202\28\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\39\157\24\4\105\198\71\19\58\154\11\24\33\141\70\16\52\198\58\31\23\135\61\38\33\221\44\2", "\104\119\83\233")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\193\253\63\54", "\35\149\152\71\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\45\224\71\189\63\89\197\67\190\59\30\237\80", "\90\121\136\34\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\2\92\25\201", "\126\167\110\53")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\25\21\40\249\201\51\41", "\95\93\112\78\152\188"),LUAOBFUSACTOR_DECRYPT_STR_0("\226\253\151\28\247\170\223\192\230", "\178\161\149\229\117\132\222"),LUAOBFUSACTOR_DECRYPT_STR_0("\187\213\210\187", "\67\232\187\189\204\193\118\198"),LUAOBFUSACTOR_DECRYPT_STR_0("\187\39\187\43\34", "\143\235\78\213\64\91\98")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\73\137\236", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\230\227\220\0\178\197\215\231\220\14\163", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\128\169\116", "\19\49\236\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\8\213\162\246\168\251\57\226\131\236\191\243\50", "\218\158\87\150\215\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\23\202\246", "\173\155\126\185\130\86\66")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\193\163\188\198\157\224\241", "\140\133\198\218\167\232")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\138\17\151\104\150\167\43\186\105\176\189\43\185\120", "\228\213\78\212\29")] or LUAOBFUSACTOR_DECRYPT_STR_0("\163\73\176\4\254\139\88", "\139\231\44\214\101")),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\238\10\82\18\176\50\29", "\118\185\143\102\62\112\209\81")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\114\113\36\227", "\88\60\16\73\134\197\117\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\235\238\205\1\100\226\253\197\68\16\203\235\134\15\30", "\33\48\138\152\168"),[LUAOBFUSACTOR_DECRYPT_STR_0("\84\26\49\86", "\87\18\118\80\49\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\33\244\165\167\120\22\223\173\181\98\31\215\165", "\208\44\126\186\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\22\165\197\17\244\198\66\243\31\182", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\75\31\181\171\163", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\43\160\77\77\126\166\46", "\197\69\74\204\33\47\31")]=function()
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\78\87\130", "\231\144\47\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\217\204\112\88\30\218\43\160\221\212\97\88\9\199\60\191\221", "\89\210\184\186\21\120\93\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\82\112\217\123\59\178\88", "\90\209\51\28\181\25")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\239\68\121\235\168\228\115\82\227\186\254\122\90\235", "\223\176\27\55\142")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\19\178\192\177\43\172\236\146", "\213\68\219\174")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\233\39\226\40\196\45\93\44", "\31\107\128\67\135\74\165\95")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\252\249\64\99\150", "\209\184\136\156\45\33")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\203\118\13\182\19\153", "\216\103\168\21\104")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\174\64\161\118\185\17", "\196\24\205\35")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\132\228\1\34\142\204\40", "\102\78\235\131")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\43\44\80", "\84\154\78\84\36\39\89\215")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\228\78\76\33\252\243\93", "\101\157\129\54\56")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\189\152\164\40\124", "\25\125\201\234\203\67")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\77\253\12\15\17", "\115\25\148\120\99\116\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\53\188\41\68", "\33\108\93\217\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\68\175\185\222\69\181", "\205\187\43\193")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\205\115\19\218\250\40\69", "\191\158\18\101") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\225\198\129\182\186\201\215", "\207\165\163\231\215"),LUAOBFUSACTOR_DECRYPT_STR_0("\229\241\235\95\55\100\203\248\234", "\16\166\153\153\54\68"),LUAOBFUSACTOR_DECRYPT_STR_0("\225\189\207\81", "\153\178\211\160\38\84\65"),LUAOBFUSACTOR_DECRYPT_STR_0("\178\2\84\32\155", "\75\226\107\58")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\108\219\9\110", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\208\57\0\229\205\223\46\0\183\232\209\33\10\229\216", "\151\171\190\77\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\35\241\174\246", "\107\165\79\152\201\152\29")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\79\229\206", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\43\223\241\223\60\156\215\222\36\211\230\145\121", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\186\86\212", "\179\198\214\55")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\51\81\121\73\220\226\63\119\122\64\208\228\93", "\179\144\108\18\22\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\170\8\157", "\175\166\195\123\233")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\199\91\72\229\227\214", "\144\143\162\61\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\198\15\64\126\130", "\83\128\179\125\48\18\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\182\255\209\69\31\94\188", "\126\61\215\147\189\39")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\254\16\64", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\165\118\71\212\178\53\97\213\170\122\80\154\244", "\34\186\198\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\4\196\90", "\162\152\104\165\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\16\145\114\124\234\223\28\183\113\117\230\217\125", "\133\173\79\210\29\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\117\254\63", "\75\237\28\141")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\90\202\176\58\23\243", "\129\188\63\172\209\79\123\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\232\243\200", "\173\32\132\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\26\4\227\172\48\206\69", "\173\46\123\104\143\206\81")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\28\47\143", "\97\212\125\66\234\37\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\236\177\50\18\143\163\153\27\94\169\236\186\58\12", "\126\234\131\214\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\72\93", "\47\228\181\41\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\195\237\52\4\55\19\163\223\214\55\12\34\44\163\240\220\56\23", "\127\198\156\185\91\99\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\19\223\228", "\190\149\122\172\144\199\107\89")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\0\247\255\235\62\17", "\158\82\101\145\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\64\235\16\6\72\117", "\36\16\158\98\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\23\207\247\90\233\36\238", "\133\160\118\163\155\56\136\71")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\167\105\230", "\213\150\194\17\146\214\127")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\188\183\192\73\169\171\44\26\189\173\219\72", "\86\123\201\196\180\38\196\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\228\208\168\249", "\207\151\136\185")]=Enum.TextXAlignment.Center});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\134\130\37\135", "\17\200\227\72\226\20\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\147\84\8\195\198\252\175\211\191\70\20\151\224\213\175\183\146\78\15\195\198\252\175\205\185\70\19\195\128", "\159\208\33\123\183\169\145\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\86\57\49", "\86\146\58\88")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\224\201\213\189\253\57\247\116\208\237\207\135\205", "\154\56\191\138\160\206\137\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\182\85\244\132\121\50\142\192\130\92\231", "\172\230\57\149\231\28\90\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\168\158\211\59\200\7\190\143\214\114\148\77\228\200\156", "\187\98\202\230\178\72"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\228\162\49\95\45\245", "\42\65\129\196\80")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\33\75\81\214\21\6\1\229", "\142\98\42\61\186\119\103\98")]=function(val)
			Library:UpdateCustomFeatures();
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\190\15\13", "\104\88\223\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\103\226\241\218\13\224\4\218\247\221\11\238\4\222\198", "\141\36\151\130\174\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\118\195\10", "\109\228\26\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\97\218\222\109\243\242\81\232\208\109\243\239\93\204\217", "\134\62\133\157\24\128"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\169\27\218\42\185\217\11\161\31\203", "\182\103\197\122\185\79\209")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\133\249\118\19\91\246\147\232\115\90\7\188\201\175\57", "\40\147\231\129\23\96"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\253\138\68\174\160\200", "\188\21\152\236\37\219\204")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\99\232\59\0\66\232\52\7", "\108\32\137\87")]=function(val)
			Library:UpdateCustomFeatures();
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\158\237\24\178", "\57\202\136\96\198\79\153\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\58\185\179\136\170", "\152\203\67\202\199\237\199"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\79\169\8\17", "\134\154\35\192\111\127\21\25")]=Enum.TextXAlignment.Center});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\136\47\29\9\40\146\154\42\8\9\43", "\178\216\70\105\106\64")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\34\126\248\192\210\220\148\127\27\111\228\217\217\209", "\224\95\75\26\150\169\181\180")]=Color3.fromRGB(15, 12, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\219\202\35\4\139\100\14\195", "\22\107\186\184\72\36\204")]=Color3.fromRGB(35, 35, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\188\50\87\78\197\177\49\75", "\110\135\221\68\46")]=Color3.fromRGB(20, 22, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\51\9\251\142\129\62\231", "\91\131\86\108\139\174\211")]=Color3.fromRGB(25, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\36\170\18\78\239\107\159\5\88\254\37", "\61\155\75\216\119")]=Color3.fromRGB(12, 20, 12)};
		local bgList = {};
		for n in pairs(bgOptions) do
			table.insert(bgList, n);
		end
		table.sort(bgList);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\42\170\191\57", "\189\100\203\210\92\56\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\80\254\35\40\67\242\61\33\85\189\11\32\93\242\58", "\72\79\49\157"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\188\48\187", "\220\232\208\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\202\129\199\55\28\72\164\230\187\241\3\41\86\164\246\170", "\193\149\222\133\80\76\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\84\92\198", "\178\166\61\47")]=bgList,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\79\238\123\223\50\239", "\94\155\42\136\26\170")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\54\50\182\140\127\4\185\133\60\45", "\213\228\95\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\186\206\136\117\43\184\201", "\23\74\219\162\228")]=function(val)
			if bgOptions[val] then
				Theme.WindowBG = bgOptions[val];
				local h, s, v = Color3.toHSV(Theme.WindowBG);
				Theme.SidebarBG = Color3.fromHSV(h, s, math.min(v + 0.05, 1));
				Theme.ItemBG = Color3.fromHSV(h, s, math.min(v + 0.1, 1));
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\231\75\170", "\91\89\134\38\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\231\198\63\30\217\61\65\234\136\20\39\254\103\119\231\210\51", "\71\36\142\168\86\115\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\173\115\184", "\41\191\193\18\223\99\222\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\25\236\21\153\162\60\194", "\202\203\70\167\74"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\8\210", "\17\76\97\188\83")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\38\193", "\195\229\71\185\87\80\227\43")]=250,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\249\6\81\250\236\232", "\143\128\156\96\48")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\208\252\30\21\185\210\251", "\119\216\177\144\114")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\231\40\244\71", "\34\169\73\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\197\75\184\169\237\7\142", "\235\202\140\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\120\53\175", "\165\108\20\84\200\137\71\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\69\139\12\157\115\135\40\137\118\177", "\232\26\212\75"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\64\124", "\151\87\41\18\136")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\118\174\210", "\158\59\207\170\176")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\107\91\53\72\153\67\74", "\236\47\62\83\41")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\168\44\55\168\131\249\162", "\226\154\201\64\91\202")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\72\16\29", "\220\161\41\125\120\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\136\126\167\9\176\116\224\37\185\104", "\110\220\17\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\82\117\53\29", "\199\20\25\84\122\139\87\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\54\233\161\28\237\75\12\246\171\2", "\138\39\105\189\206\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\2\143\44\230\245\219", "\159\127\103\233\77\147\153\175")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\252\229\169\69\195\8\252\224\175\82", "\171\103\144\132\202\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\61\236\31\3\111\194\9\9\97\167\66", "\108\112\79\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\195\120\36\175\0\234\62", "\85\95\162\20\72\205\97\137")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\200\194\30\211\10\255\193\242\214\47\197", "\173\151\157\74\188\109\152")] = clean;
		end});
		if (not Library.CurrentTab and (#TabButtons > 0)) then
			Library.CurrentTab = TabButtons[1].Name;
		end
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\27\55\27\200\206\70\208\253\48\60\48\216\209\81", "\147\68\104\88\189\188\52\181")] or LUAOBFUSACTOR_DECRYPT_STR_0("\62\141\141\209\15\132\159", "\176\122\232\235"));
	end;
	return WindowAPI;
end;
return Library;
