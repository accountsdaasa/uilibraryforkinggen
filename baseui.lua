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
	local customMusic = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\204\78\213\25\3\94\252\124\219\25\3\67\240\88\210", "\42\147\17\150\108\112")];
	local customImage = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\48\153\14\106\244\252\0\171\1\112\224\231\38\130", "\136\111\198\77\31\135")];
	local targetMusicID = nil;
	if (customMusic and (customMusic ~= "")) then
		targetMusicID = customMusic;
	elseif (themeName == LUAOBFUSACTOR_DECRYPT_STR_0("\33\1\181\95\174\240\26\168\17", "\201\98\105\199\54\221\132\119")) then
		targetMusicID = DEFAULTS.XmasMusicID;
	end
	if targetMusicID then
		if not Library.CustomObjects.Sound then
			local music = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\3\150\47\6", "\204\217\108\227\65\98\85"));
			music.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\117\202\251\226\25\233\97\224\224\246\56\207\83\238\224\246\37\195", "\160\62\163\149\133\76");
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
	elseif (themeName == LUAOBFUSACTOR_DECRYPT_STR_0("\245\168\31\38\208\194\173\12\60", "\163\182\192\109\79")) then
		targetImageID = DEFAULTS.XmasImageID;
	end
	if targetImageID then
		local mainFrame = Library.ThemeObjects.Frames[1];
		if (mainFrame and not Library.CustomObjects.Image) then
			local img = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\43\1\199\240\24\39\2\197\249", "\149\84\70\96\160"), mainFrame);
			img.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\27\19\30\249\55\11\41\232\59\9\31\236\44\15\2\227", "\141\88\102\109");
			img.BackgroundTransparency = 1;
			img.Size = UDim2.new(0, 100, 0, 100);
			img.Position = UDim2.new(1, -105, 1, -105);
			img.ZIndex = 10;
			img.Rotation = 0;
			Library.CustomObjects.Image = img;
			Library.CustomObjects.AnimLoop = task.spawn(function()
				while img and img.Parent do
					TweenService:Create(img, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\129\92\222\113\14\52\90\207", "\161\211\51\170\16\122\93\53")]=10}):Play();
					task.wait(1.5);
					TweenService:Create(img, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\201\161\166\41\239\167\189\38", "\72\155\206\210")]=-10}):Play();
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
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\113\115\90\10\60\81\88\115", "\83\38\26\52\110")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\30\35\67\90\22\53\100\127", "\38\56\119\71")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\251\93\219\7\113", "\54\147\143\56\182\69")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\130\252\76\209\194\208", "\191\182\225\159\41")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\17\43\80\133\147\144", "\162\75\114\72\53\235\231")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\51\67\229\95\7\163\18", "\98\236\92\36\130\51")]=((saved.ToggleON and ToColor(saved.ToggleON)) or ToColor(saved.Accent2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\28\20\174", "\80\196\121\108\218\37\200\213")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\118\26\107\111\15\152\11", "\234\96\19\98\31\43\110")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\11\64\200\167\119", "\235\102\127\50\167\204\18")]=ToColor(saved.Stroke)};
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
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\111\158\214\54\86\60\85\175\225\23\76\43\93\164", "\78\48\193\149\67\36")] = themeName;
		end
		Library:UpdateCustomFeatures();
	end
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\5\55\167\10\64\52\23\133\22\85", "\33\80\126\224\120")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
			obj.Rotation = 0;
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\203\189\10\235\94\230\173\0\208", "\60\140\200\99\164")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\165\245\7\45\165\149\251\17\40\166\164\251\8\41\176\212", "\194\231\148\100\70")]=Theme.WindowBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.TitleBars) do
		obj.BackgroundColor3 = Darken(Theme.WindowBG, 0.7);
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\230\177\247\204\79\73\207\183", "\168\38\44\161\195\150")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\167\233\139\89\50\226\179\21\148", "\118\224\156\226\22\80\136\214")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\239\90\139\69\252\86\149\76\234\122\143\78\225\75\211", "\224\34\142\57")]=Theme.SidebarBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\249\178\204\242\113\251\88\13\202", "\110\190\199\165\189\19\145\61")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\234\116\227\140\213\213\254\121\236\168\200\214\228\101\187", "\167\186\139\23\136\235")]=Theme.ItemBG}, 0.3);
		end
	end
	for _, obj in pairs(Library.ThemeObjects.Strokes) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\57\186\132\2\8", "\109\122\213\232")]=Theme.UIStrokeColor}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.Texts) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\218\242\186\36\205\248\174\63\252\164", "\80\142\151\194")]=Theme.Text}, 0.3);
	end
	for _, obj in pairs(Library.ThemeObjects.TextDarks) do
		Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\55\195\111\88\32\201\123\67\17\149", "\44\99\166\23")]=Theme.TextDark}, 0.3);
	end
	for _, tab in pairs(Library.ThemeObjects.Tabs) do
		local isActive = tab.Name == Library.CurrentTab;
		if isActive then
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\94\246\42\61\52\182\115\226\39\50\16\171\112\248\59\101", "\196\28\151\73\86\83")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\161\87\20\121\225\80", "\22\147\99\73\112\226\56\120")]=Theme.Text}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\116\225\254\138\170\122\247\251\137\140\103\227\251\158\168\116\240\240\131\187\108", "\237\216\21\130\149")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\79\92\84\183\219\81\151\64\91\124\191\197\81\144\29", "\62\226\46\63\63\208\169")]=Theme.AccentStart}, 0.3);
		else
			Tween(tab.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\24\86\136\24\31\32\75\235\29\118\140\19\2\61\13", "\62\133\121\53\227\127\109\79")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\17\42\225\245\161\174\31\6\97", "\194\112\116\82\149\182\206")]=Theme.TextDark}, 0.3);
			Tween(tab.Indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\169\79\19\199\240\1\44\166\72\44\210\227\0\42\184\77\10\197\236\13\32", "\110\89\200\44\120\160\130")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\137\194\72\77\68\88\52\88\165\199\104\73\79\69\41\30", "\45\203\163\43\38\35\42\91")]=Theme.AccentStart}, 0.3);
		end
	end
	for _, toggle in pairs(Library.ThemeObjects.Toggles) do
		toggle.Update(Library.Flags[toggle.Flag]);
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\209\138\210\37\142\174\26\216\150\211\45", "\52\178\229\188\67\231\201");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\10\72\94\3\208\89\45\20\104", "\67\65\33\48\100\151\60")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\244\238\160\223\198\246", "\147\191\135\206\184"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\36\180\196\217\87\171\196\26\179\207\214\90\188\131", "\210\228\72\198\161\184\51"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\74\225\21\118\192\17\92\250", "\174\86\41\147\112\19"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\112\9\131\12\2\10\31\158\114", "\203\59\96\237\107\69\111\113");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	local ShadowHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\23\162\247\48\227\240\54\25\185\241", "\183\68\118\204\129\81\144"), ScreenGui);
	ShadowHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\61\165\113\224\4\149", "\226\110\205\16\132\107");
	ShadowHolder.BackgroundTransparency = 1;
	ShadowHolder.AnchorPoint = Vector2.new(0.5, 0.5);
	ShadowHolder.Size = UDim2.new(0, 680, 0, 580);
	ShadowHolder.Position = UDim2.new(0.5, 0, 0.5, 0);
	ShadowHolder.GroupTransparency = 0;
	ShadowHolder.ZIndex = 0;
	local ShadowImage = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\206\225\222\68\199\194\226\220\77", "\33\139\163\128\185"), ShadowHolder);
	ShadowImage.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\69\90\28\223\68\75\1\202\94\92\94\145\24\14\84\143\2\0\93\137\15\12\87", "\190\55\56\100");
	ShadowImage.ImageColor3 = Color3.new(0, 0, 0);
	ShadowImage.ImageTransparency = 0.4;
	ShadowImage.ScaleType = Enum.ScaleType.Slice;
	ShadowImage.SliceCenter = Rect.new(49, 49, 450, 450);
	ShadowImage.Size = UDim2.new(1, 0, 1, 0);
	ShadowImage.Position = UDim2.new(0, 0, 0, 0);
	ShadowImage.BackgroundTransparency = 1;
	ShadowImage.ZIndex = 0;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\112\189\61\19\22", "\147\54\207\92\126\115\131"), ShadowHolder);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\32\48\60\115\43\108\12\60\48", "\30\109\81\85\29\109");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(1, -34, 1, -34);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\103\181\55\210\249", "\156\159\17\52\214\86\190"), ShadowHolder);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\145\208\154\169\167\220\190\189\162\234", "\220\206\143\221")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\10\5\217\200\219\131\115\57", "\178\230\29\77\119\184\172"), MainFrame);
	MainFrameGradient.Rotation = 0;
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\151\41\20\101\246\240\172", "\152\149\222\106\123\23"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 12);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\15\197\87\167\210\45\243", "\213\189\70\150\35"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 0.8;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\71\1\85\80\87\7\65\70\96\26\78\92\122\28", "\104\47\53\20"), ShadowHolder);
	sizeConstraint.MaxSize = Vector2.new(9999, 9999);
	sizeConstraint.MinSize = Vector2.new(300, 200);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\73\153\8\158\26\183\88\142\18", "\111\195\44\225\124\220"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\241\72\16\102\191\137\212\73\3\120\174\185", "\203\184\38\96\19\203");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\97\120\76\203", "\174\89\19\25\33"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\27\27\70\66\242\165\10\61", "\107\79\114\50\46\151\231");
	TitleBar.Size = UDim2.new(1, 0, 0, 50);
	TitleBar.BackgroundColor3 = Darken(Theme.WindowBG, 0.7);
	TitleBar.BackgroundTransparency = 0;
	TitleBar.ZIndex = 2;
	table.insert(Library.ThemeObjects.TitleBars, TitleBar);
	MakeDraggable(TitleBar, ShadowHolder);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\171\180\46\143\21\182\194\60\170", "\160\89\198\213\73\234\89\215"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 28, 0, 28);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -14);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\124\116\172\234\233\73\115\177\242", "\165\40\17\212\158"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\206\240\38\20\102\194\252\38", "\70\133\185\104\83");
	TitleLabel.Size = UDim2.new(1, -100, 1, 0);
	TitleLabel.Position = UDim2.new(0, 50, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextSize = 16;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local TitleDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\87\69\39\204", "\169\100\37\36\74"), TitleBar);
	TitleDivider.Size = UDim2.new(1, 0, 0, 1);
	TitleDivider.Position = UDim2.new(0, 0, 1, 0);
	TitleDivider.BackgroundColor3 = Theme.UIStrokeColor;
	TitleDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, TitleDivider);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\130\186\68\34\146\182\68\15\137", "\48\96\231\194"), TitleBar);
	MinBtn.Size = UDim2.new(0, 30, 0, 30);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -15);
	MinBtn.Text = "-";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\45\34\11\214\170\145", "\227\168\58\110\77\121\184\207"), MinBtn).CornerRadius = UDim.new(0, 8);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	MinBtn.MouseEnter:Connect(function()
		Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\89\61\188\75\182\201\126\176\117\56\156\79\189\212\99\246", "\197\27\92\223\32\209\187\17")]=Theme.AccentStart}, 0.2);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\60\96\246\210\60\114\234\213\42\114\234\193\38\123", "\155\99\63\163")] then
			Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\160\208\162\134\190\150\141\196\175\137\154\139\142\222\179\222", "\228\226\177\193\237\217")]=Theme.ItemBG}, 0.2);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\179\49\227\49\190\4\243\61", "\134\84\208\67"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\56\142\147\72\7\163\136\123\6\165", "\60\115\204\230");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\55\234\119\226\24\254\100\243\53\229", "\16\135\90\139"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 0, 0, 0);
	KBtn.Position = UDim2.new(0.9, -50, 0.5, 0);
	KBtn.Visible = false;
	KBtn.ZIndex = 10;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\107\75\45\12\126\123\75", "\24\52\20\102\83\46\52"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\251\16\20\13\48\233\6\15\13\34\237\21\4\0", "\111\164\79\65\68")] = isMinimized;
		Library:Save();
		if isMinimized then
			for _, closeFunc in pairs(Library.OpenDropdowns) do
				pcall(closeFunc);
			end
		end
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\249\230\168\225\29\227\220\220", "\138\166\185\227\190\78")] or DEFAULTS.KSize;
		if isMinimized then
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\236\102\202\34\66\23\11\202\122\214\39\83\49\28\197\119\220", "\121\171\20\165\87\50\67")]=1}, 0.3);
			KBtn.Visible = true;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\49\163\51", "\98\166\88\217\86\217")]=UDim2.new(0, kSize, 0, kSize),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\251\120\6\131\232\228\247\119\18\150\221\228\243\119\2\159", "\188\150\150\25\97\230")]=0}, 0.4, Enum.EasingStyle.Back);
			task.wait(0.3);
			if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\229\182\106\43\51\192\243\167\118\47\37\215\255\173", "\141\186\233\63\98\108")] then
				ShadowHolder.Visible = false;
			end
		else
			ShadowHolder.Visible = true;
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\214\248\35\163\53\197\248\45\184\54\225\235\62\179\43\242\243", "\69\145\138\76\214")]=0}, 0.3);
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\67\198\147\140", "\118\16\175\233\233\223")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\137\52\188\235\191\111\138\138\38\171\239\153\120\133\135\44", "\29\235\228\85\219\142\235")]=1}, 0.3, Enum.EasingStyle.Back);
			task.wait(0.2);
			if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\2\235\143\244\72\99\14\124\20\249\147\231\82\106", "\50\93\180\218\189\23\46\71")] then
				KBtn.Visible = false;
			end
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\225\155\110\101\123\241\97\240\141\118\101\126\249\108", "\40\190\196\59\44\36\188")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\3\122\247\139\201\116\23\57", "\109\92\37\188\212\154\29")] or DEFAULTS.KSize;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\55\230\190\198", "\58\100\143\196\163\81")]=UDim2.new(0, kSize, 0, kSize)}, 0.3);
		end
	end;
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\37\125\23\172\56\78\233\11\49\71\58", "\110\122\34\67\195\95\41\133")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\74\142\110\99\233\88\152\117\99\251\92\139\126\110", "\182\21\209\59\42")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\136\104\240\52\30\147\158\121\236\48\8\132\146\115", "\222\215\55\165\125\65")] then
		ShadowHolder.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\19\238\237\37\193\200\247\79", "\42\76\177\166\122\146\161\141")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		ShadowHolder.Visible = true;
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\152\4\195\124", "\22\197\234\101\174\25"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\30\61\161\217\116\174\197\165\34\58\177\221\127\161\210\148", "\230\77\84\197\188\22\207\183");
	SidebarContainer.Size = UDim2.new(0, 130, 1, -50);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 50);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarContainer);
	local SidebarDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\6\199\241\137", "\85\153\116\166\156\236\193\144"), SidebarContainer);
	SidebarDivider.Size = UDim2.new(0, 1, 1, 0);
	SidebarDivider.Position = UDim2.new(1, -1, 0, 0);
	SidebarDivider.BackgroundColor3 = Theme.UIStrokeColor;
	SidebarDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, SidebarDivider);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\227\95\188\232\12\173\238\74\149\246\1\169\229", "\96\196\128\45\211\132"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\87\86\193\187\152\217\44\130\110\75", "\184\85\237\27\63\178\207\212"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\112\57\94\12\93\0\81\15", "\63\104\57\105"), TabBar).PaddingTop = UDim.new(0, 10);
	TabListLayout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\42\133\183\75\7\146\176\65\40\136\170\80\14\137\176\119\2\157\161", "\36\107\231\196")):Connect(function()
		TabBar.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 20);
	end);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\167\163\138\88", "\231\61\213\194"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -130, 1, -50);
	PagesContainer.Position = UDim2.new(0, 130, 0, 50);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\13\114\13\169\52\125\14", "\19\105\205\93"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 15);
	ContentPadding.PaddingRight = UDim.new(0, 15);
	ContentPadding.PaddingTop = UDim.new(0, 15);
	ContentPadding.PaddingBottom = UDim.new(0, 15);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\13\198\149\29\188\28\202\142\49", "\95\201\104\190\225"), TabBar);
		TabBtn.Size = UDim2.new(1, -20, 0, 36);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 13;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\226\226\193\189\197\196\220", "\174\207\171\161"), TabBtn).CornerRadius = UDim.new(0, 6);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\12\254\253", "\183\141\158\109\147\152"), TabBtn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BackgroundTransparency = 1;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\32\197\3\62\7\227\30", "\108\76\105\134"), Indicator).CornerRadius = UDim.new(0, 4);
		local function UpdateTabButtonStyle(button, indicator, isActive)
			if isActive then
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\201\196\178\234\201\249\202\164\239\202\200\202\189\238\220\184", "\174\139\165\209\129")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\182\250\213\229\12\124\119\177\224", "\24\195\211\130\161\166\99\16")]=Theme.Text}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\100\2\234\39\84\4\73\22\231\40\103\4\71\13\250\60\82\4\67\13\234\53", "\118\38\99\137\76\51")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\39\6\25\14\50\242\51\11\22\42\47\241\41\23\65", "\64\157\70\101\114\105")]=Theme.AccentStart}, 0.3);
			else
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\98\169\164\232\23\82\167\178\237\20\99\167\171\236\2\19", "\112\32\200\199\131")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\85\68\172\224\164\46\35\66\15", "\66\76\48\60\216\163\203")]=Theme.TextDark}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\135\122\248\88\220\43\175\136\125\199\77\207\42\169\150\120\225\90\192\39\163", "\68\218\230\25\147\63\174")]=1}, 0.3);
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\143\62\93", "\214\205\74\51\44")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\66\230\245\116\251\88\237\238", "\23\154\44\130\156")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\63\167\160\171", "\115\113\198\205\206\86")]=name});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\67\240", "\58\228\55\158")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\135\212\39\63\172\33\187\155", "\85\212\233\176\78\92\205")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\89\133\231", "\130\42\56\232")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\182\54\236\76\51\227\187\35\197\82\62\231\176", "\95\138\213\68\131\32"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\21\24\160\68\115", "\22\74\72\193\35");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\80\200\81\63\109\200\89\53\118\241\76", "\56\76\25\132"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\232\155\39\203\90\200\165\33", "\175\62\161\203\70"), Page);
		PagePadding.PaddingRight = UDim.new(0, 10);
		PagePadding.PaddingBottom = UDim.new(0, 10);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\26\207\194\30\48", "\85\92\189\163\115")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\173\61\61", "\88\73\204\80")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\145\17\75\44", "\186\78\227\112\38\73"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\126\222\90\65\116\249\69", "\26\156\55\157\53\51"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\221\14\205\148\81\142\221\26", "\48\236\184\118\185\216"), Frame);
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
			local SwitchBg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\175\86\61\202", "\84\133\221\55\80\175"), Frame);
			SwitchBg.Size = UDim2.new(0, 44, 0, 22);
			SwitchBg.Position = UDim2.new(1, -54, 0.5, -11);
			SwitchBg.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\206\7\169\213\82\184\245", "\60\221\135\68\198\167"), SwitchBg).CornerRadius = UDim.new(1, 0);
			local SwitchKnob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\175\249\142\71", "\185\142\221\152\227\34"), SwitchBg);
			SwitchKnob.Size = UDim2.new(0, 18, 0, 18);
			SwitchKnob.Position = UDim2.new(0, 2, 0.5, -9);
			SwitchKnob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\236\116\245\81\61\242\74", "\151\56\165\55\154\35\83"), SwitchKnob).CornerRadius = UDim.new(1, 0);
			local ClickArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\148\70\29\250\130\86\17\250\175\77", "\142\192\35\101"), Frame);
			ClickArea.Text = "";
			ClickArea.BackgroundTransparency = 1;
			ClickArea.Size = UDim2.new(1, 0, 1, 0);
			ClickArea.ZIndex = 10;
			local function UpdateVisuals(val)
				if val then
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\116\42\168\224\158\163\3\216\113\10\172\235\131\190\69", "\118\182\21\73\195\135\236\204")]=Theme.ToggleON}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\56\51\9\73\16\4\242\6", "\157\104\92\122\32\100\109")]=UDim2.new(1, -20, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\167\204\193\58\53\130\190\173\162\236\197\49\40\159\248", "\203\195\198\175\170\93\71\237")]=Color3.new(1, 1, 1)}, 0.25, Enum.EasingStyle.Back);
				else
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\12\74\61\222\86\3\243\59\69\58\246\94\29\243\60\24", "\156\78\43\94\181\49\113")]=Theme.WindowBG}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\66\231\215\170\31\74\118\124", "\25\18\136\164\195\107\35")]=UDim2.new(0, 2, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\44\170\68\117\174\206\173\230\41\138\64\126\179\211\235", "\216\136\77\201\47\18\220\161")]=Theme.TextDark}, 0.25, Enum.EasingStyle.Back);
				end
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\24\252\47\219\28\217", "\226\77\140\75\186\104\188")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\159\194\209\56", "\47\217\174\176\95")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\156\216\120\11\183\80", "\70\216\189\22\98\210\52\24"), reason, 3);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\205\162\138\214", "\179\186\191\195\231"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\22\59\235\235\49\29\246", "\132\153\95\120"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\183\22\57\219\219\162\180\190", "\192\209\210\110\77\151\186"), Frame);
			TopLabel.Size = UDim2.new(1, -40, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 8);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamMedium;
			TopLabel.TextSize = 14;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\6\58\253\211\197\226\6\46", "\164\128\99\66\137\159"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 8);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextSize = 14;
			ValLabel.TextColor3 = Theme.AccentStart;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.TextXAlignment = Enum.TextXAlignment.Right;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local SliderBarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\155\232\179\5", "\222\96\233\137"), Frame);
			SliderBarBG.Size = UDim2.new(1, -20, 0, 6);
			SliderBarBG.Position = UDim2.new(0, 10, 0, 38);
			SliderBarBG.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\154\132\16\154\253\245\171", "\144\217\211\199\127\232\147"), SliderBarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\61\63\37\208", "\36\152\79\94\72\181\37\98"), SliderBarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\241\100\48\197\214\66\45", "\95\183\184\39"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\22\192\52\85\132\11\176\49\243", "\98\213\95\135\70\52\224"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, UIGradientFill);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\177\200\122\81", "\52\158\195\169\23"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\149\17\123\148\59\126\153", "\235\26\220\82\20\230\85\27"), Knob).CornerRadius = UDim.new(1, 0);
			Frame:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\190\168\250\203\118\132\164", "\20\232\193\137\162")):Connect(function()
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
				Tween(Fill, {[LUAOBFUSACTOR_DECRYPT_STR_0("\17\214\223\163", "\17\66\191\165\198\135\236\119")]=UDim2.new(SizeX, 0, 1, 0)}, 0.05);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\60\166\180\22", "\177\111\207\206\115\159\136\140")]=UDim2.new(0, 18, 0, 18)}, 0.2);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\128\10\17", "\63\101\233\112\116\180\47")]=UDim2.new(0, 14, 0, 14)}, 0.2);
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\41\236\31\253", "\86\163\91\141\114\152"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\102\34\87\124\40\93\14\102", "\90\51\107\20\19"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\245\157\251\17\140\242\128\227", "\93\237\144\229\143"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\243\232\13\41\83\1\226\255\23", "\38\117\150\144\121\107"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\146\205\53\63\181\235\40", "\90\77\219\142"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\45\18\45\94\8\113\227", "\26\134\100\65\89\44\103"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\230\40\55\136\240\225\53\47", "\196\145\131\80\67"), MainBtn);
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
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\181\30\28\52\233\28\181\10", "\136\126\208\102\104\120"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\94\152\207\78\170", "\49\24\234\174\35\207\50\93"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\40\224\242\152\117\3\229\243", "\17\108\146\157\232");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\234\55\226\61\166\78\209", "\200\43\163\116\141\79"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\31\14\151\162\251\232\186", "\131\223\86\93\227\208\148"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\214\108\133\162\15\186\232\64", "\213\131\37\214\214\125"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\40\55\176\237\42\34\43\184\199\52\42\40\186", "\129\70\75\69\223"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\226\223\224\111\251\106\202\234\230\105\251", "\143\38\171\147\137\28"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\226\141\173\242\23\234\219\222", "\180\176\226\217\147\99\131")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\182\35\8\193", "\103\179\217\79")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\165\29\219\82\156\162\88\178\18\214\88", "\195\42\215\124\181\33\236")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\57\92\47\42\7\237\25\77\56\48", "\152\109\57\87\94\69")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\210\18\183\156\199\64\188\246\217", "\200\153\183\106\195\222\178\52"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\0\236\156\60\93\83\61\237", "\58\82\131\232\93\41")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\160\88\220\26\79", "\95\227\55\176\117\61")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\44\108\34\69\184\8\127\49\78\165\27\103", "\203\120\30\67\43")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\55\76\226\220", "\185\145\69\45\143"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\54\58\169\206\132\26\11", "\188\234\127\121\198"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\55\11\151\20\51\17\134\52", "\227\88\82\115"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\119\26\162\179\32\102\87\11\181\169", "\19\35\127\218\199\98"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\210\41\237\14\245\15\240", "\130\124\155\106"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\226\197\187\177\249\119\186", "\223\181\171\150\207\195\150\28"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\63\251\186\37\77\56\230\162", "\105\44\90\131\206"), MainBtn);
			SelectedText.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\204\229\190\188\11\42\191\201\166\188\5\45\177\174\252", "\94\159\128\210\217\104");
			SelectedText.Size = UDim2.new(1, -30, 1, 0);
			SelectedText.Position = UDim2.new(0, 10, 0, 0);
			SelectedText.Font = Enum.Font.Gotham;
			SelectedText.TextColor3 = Theme.Text;
			SelectedText.TextSize = 14;
			SelectedText.TextXAlignment = Enum.TextXAlignment.Left;
			SelectedText.BackgroundTransparency = 1;
			SelectedText.ZIndex = 7;
			table.insert(Library.ThemeObjects.Texts, SelectedText);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\252\30\171\115\126\251\127\92", "\26\48\153\102\223\63\31\153"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\82\236\254\7", "\147\98\32\141"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\53\86\239\222\15\114\89\23\83\231\197\17\88", "\43\120\35\131\170\102\54");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\47\164\185\183\190\129\70", "\228\52\102\231\214\197\208"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\201\70\222\248\132\18\211", "\182\126\128\21\170\138\235\121"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\190\243\6\242\148\28\59\3", "\102\235\186\85\134\230\115\80"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\15\44\80\126\216\43\89\11\24\77\115\217\39", "\66\55\108\94\63\18\180"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\164\169\62\52\77\56\140\156\56\50\77", "\57\116\237\229\87\71"), Scroll);
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
				SelectedText.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\234\130\232\235\114\237\83\175\181", "\39\202\209\141\135\23\142"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\204\54\5\15\49\236\191\26\29\15\63\235\177\125\71", "\152\159\83\105\106\82");
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\179\201\69\243\221\85\142\200", "\60\225\166\49\146\169")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\12\17\35\37\19", "\103\79\126\79\74\97")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\109\210\125\77\10\187\109\214\125\93\3", "\122\218\31\179\19\62")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\135\211\213\213\235\180\81\167\217\195", "\37\211\182\173\161\169\193")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						if (Library.Flags[dFlag][item] == nil) then
							Library.Flags[dFlag][item] = false;
						end
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\63\85\205\10\110\173\227\53\67", "\217\151\90\45\185\72\27"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\241\115\243\19\66\202\115\233", "\54\163\28\135\114")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\11\212\81\141\92", "\31\72\187\61\226\46")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\20\66\220\84\110\37\209\3\77\209\94", "\68\163\102\35\178\39\30")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\98\219\202\6", "\113\222\16\186\167\99\213\227"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\39\216\249\60\0\254\228", "\150\78\110\155"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\192\63\245\136\31\189\69\137", "\32\229\165\71\129\196\126\223"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\140\220\149\163\192\215\157\203\143", "\181\163\233\164\225\225"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 32);
			Button.Position = UDim2.new(0, 10, 0, 28);
			Button.BackgroundColor3 = Theme.WindowBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamBold;
			Button.TextSize = 14;
			Button.AutoButtonColor = false;
			Button.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\162\29\120\66\133\59\101", "\23\48\235\94"), Button).CornerRadius = UDim.new(0, 6);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\243\235\73\69\60\217\121", "\178\28\186\184\61\55\83"), Button);
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
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\204\68\55\245\28\250\209\195\67\31\253\2\250\214\158", "\149\164\173\39\92\146\110")]=Theme.ItemBG}, 0.1);
				task.wait(0.1);
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\209\38\19\20\29\9\252\50\30\27\57\20\255\40\2\76", "\123\147\71\112\127\122")]=Theme.WindowBG}, 0.1);
				pcall(options.Callback, val);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\223\131\124\67", "\38\172\173\226\17"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\56\15\224\95\31\41\253", "\143\45\113\76"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\189\4\40\148\185\30\57\180", "\92\216\216\124"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local InputContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\32\173\77\248", "\157\59\82\204\32"), Frame);
			InputContainer.Size = UDim2.new(1, -20, 0, 32);
			InputContainer.Position = UDim2.new(0, 10, 0, 28);
			InputContainer.BackgroundColor3 = Theme.WindowBG;
			InputContainer.ClipsDescendants = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\23\192\245\251\228\214\163", "\209\88\94\131\154\137\138\179"), InputContainer).CornerRadius = UDim.new(0, 6);
			local InputStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\136\247\104\12\44\58\39", "\66\72\193\164\28\126\67\81"), InputContainer);
			InputStroke.Color = Theme.UIStrokeColor;
			InputStroke.Transparency = 0.8;
			table.insert(Library.ThemeObjects.Strokes, InputStroke);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\41\176\76\4\121\255", "\22\135\76\200\56\70"), InputContainer);
			Input.Size = UDim2.new(1, -10, 1, 0);
			Input.Position = UDim2.new(0, 5, 0, 0);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\195\126\182", "\129\237\80\152\68\61");
			Input.Text = default;
			Input.BackgroundTransparency = 1;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextSize = 14;
			Input.TextXAlignment = Enum.TextXAlignment.Left;
			Input.TextTruncate = Enum.TextTruncate.AtEnd;
			table.insert(Library.ThemeObjects.Texts, Input);
			Input.Focused:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\167\8\252\14", "\56\49\200\100\147\124\119")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\44\190\254\223\46\190\226\201\48\188\233", "\144\172\94\223")]=0.2}, 0.3);
			end);
			Input.FocusLost:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\0\174\72\54", "\39\68\111\194")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\180\230\201\106\167\215\180\226\201\122\174", "\215\182\198\135\167\25")]=0.8}, 0.3);
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\171\91\235\69\136", "\40\237\41\138"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundTransparency = 1;
			local btnName = options.Name;
			if (not btnName or (btnName == "")) then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\113\226\236\104\210\96\238\247\68", "\42\167\20\154\152"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = btnName;
			Btn.TextColor3 = Color3.new(1, 1, 1);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.AutoButtonColor = false;
			Btn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\215\129\77\99\47\79\236", "\65\42\158\194\34\17"), Btn).CornerRadius = UDim.new(0, 8);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\14\117\30\44\233\18\235\20\51", "\142\122\71\50\108\77\141\123"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, BtnGradient);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\139\204\12\41\26\169\250", "\91\117\194\159\120"), Btn);
			BtnStroke.Color = Theme.AccentStart;
			BtnStroke.Transparency = 0.8;
			BtnStroke.Thickness = 1;
			Btn.MouseEnter:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\56\28\61\19\50\227\43\15\19\58\44\39\240\42\9\13\63\10\48\255\39\3", "\68\122\125\94\120\85\145")]=0.1}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\35\14\206\80\219\201\187\5\25\193\93\209", "\218\119\124\175\62\168\185")]=0.4}, 0.2);
			end);
			Btn.MouseLeave:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\241\75\207\162\226\71\209\171\244\124\214\164\254\91\212\164\226\77\202\166\233", "\164\197\144\40")]=0}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\183\226\171\133\206\166\130\226\175\133\222\175", "\214\227\144\202\235\189")]=0.8}, 0.2);
			end);
			Btn.MouseButton1Click:Connect(function()
				PlayClickSound();
				task.spawn(function()
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\160\159\111\35\186\73\57", "\92\141\197\231\27\112\211\51")]=12}, 0.05);
					task.wait(0.05);
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\210\250\146\183\226\239\229\143", "\177\134\159\234\195")]=14}, 0.05);
				end);
				pcall(options.Callback);
			end);
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\249\62\173\204", "\169\221\139\95\192"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 95);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\162\92\48\48\40\219\153", "\70\190\235\31\95\66"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\231\2\242\201\187\224\31\234", "\133\218\130\122\134"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\31\237\230\192\213\183", "\88\92\159\131\164\188\195");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			table.insert(Library.ThemeObjects.Texts, Label);
			local BoxContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\60\190\70\210", "\189\224\78\223\43\183\139"), Frame);
			BoxContainer.Size = UDim2.new(0.9, 0, 0, 32);
			BoxContainer.Position = UDim2.new(0.05, 0, 0, 24);
			BoxContainer.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\213\169\25\211\32\249\152", "\161\78\156\234\118"), BoxContainer).CornerRadius = UDim.new(0, 8);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\178\209\200\133\184\209", "\188\199\215\169"), BoxContainer);
			Box.Size = UDim2.new(1, 0, 1, 0);
			Box.Text = options.Link or "";
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.BackgroundTransparency = 1;
			Box.TextEditable = false;
			Box.ClearTextOnFocus = false;
			table.insert(Library.ThemeObjects.Texts, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\12\71\111\202\233\29\75\116\230", "\136\156\105\63\27"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 28);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 62);
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\56\131\105\45", "\84\123\236\25");
			CopyBtn.TextColor3 = Color3.new(1, 1, 1);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextSize = 13;
			CopyBtn.AutoButtonColor = false;
			CopyBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\162\137\24\190\187\245\153", "\213\144\235\202\119\204"), CopyBtn).CornerRadius = UDim.new(0, 8);
			local CopyGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\49\249\56\41\39\68\38\22\202", "\45\67\120\190\74\72\67"), CopyBtn);
			CopyGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, CopyGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				PlayClickSound();
				if setclipboard then
					pcall(function()
						setclipboard(options.Link or "");
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\3\45\253\172\252\140\175", "\137\64\66\141\197\153\232\142");
					task.delay(2, function()
						CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\32\223\50\191", "\232\99\176\66\198");
					end);
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\201\51\58\9\105", "\76\140\65\72\102\27\237\153"), "Your executor doesn't support clipboard.", 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\200\23\223\210", "\222\42\186\118\178\183\97"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\254\69\135\88", "\234\61\140\36"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 26);
			Frame.BackgroundTransparency = 1;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\216\162\102\35\32\223\191\126", "\111\65\189\218\18"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\111\74\25\48\7", "\207\35\43\123\85\107\60");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextSize = 14;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\83\184\165\238\112\100\185", "\25\16\202\192\138"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\206\181\246", "\148\157\171\205\130\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\253\52\43\200\182\15\221\110\44\245\243\53", "\150\67\180\20\73\177"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\20\19\74\131", "\45\237\120\122")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\244\231\174\35\197", "\76\183\136\194")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\231\232\61", "\116\26\134\133\88\48\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\200\179\231\178\96\26\129\147\225\175\100\27\211", "\18\126\161\192\132\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\33\160\15", "\54\63\72\206\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\77\81\106\246\33\135\22\65\115\246\120\199\75\65\52\226\124\135\107\77\94\235\78\249\75\17\94\240", "\27\168\57\37\26\133")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\25\175\100\188", "\183\77\202\28\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\59\140\5\18\115\164\9\25\50\142\13\5", "\104\119\83\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\244\46\37\77", "\35\149\152\71\66")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\61\237\68\177\47\21\252", "\90\121\136\34\208"),LUAOBFUSACTOR_DECRYPT_STR_0("\228\6\71\23\212\26\88\31\212", "\126\167\110\53"),LUAOBFUSACTOR_DECRYPT_STR_0("\14\30\33\239", "\95\93\112\78\152\188"),LUAOBFUSACTOR_DECRYPT_STR_0("\241\252\139\30\253", "\178\161\149\229\117\132\222")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\218\208\169", "\67\232\187\189\204\193\118\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\43\185\37\56\22\175\191\38\176\45\62", "\143\235\78\213\64\91\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\171\68\133\238", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\186\220\204\204\17\180\128\237\251\237\11\163\136\230", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\133\187\103", "\19\49\236\200")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\218\50\240\182\241\182\234", "\218\158\87\150\215\132")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\196\33\250\247\36\48\200\245\10\237\234\51\47\200", "\173\155\126\185\130\86\66")] or LUAOBFUSACTOR_DECRYPT_STR_0("\193\163\188\198\157\224\241", "\140\133\198\218\167\232")),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\47\184\113\134\180\45\191", "\228\213\78\212\29")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\169\77\187\0", "\139\231\44\214\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\238\16\91\80\133\57\19\212\234\70\127\3\255\127\88", "\118\185\143\102\62\112\209\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\40\225", "\88\60\16\73\134\197\117\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\213\214\205\86\100\226\253\197\68\126\235\245\205", "\33\48\138\152\168"),[LUAOBFUSACTOR_DECRYPT_STR_0("\66\26\49\82\196\63\125\26\52\84\211", "\87\18\118\80\49\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\31\215\165\254\2\80", "\208\44\126\186\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\27\168\202\22\253\202\69", "\46\151\122\196\166\116\156\169")]=function()
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\75\31", "\155\133\141\38\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\43\186\68\15\92\176\55\56\169\79\91\63\145\45\47\161\68", "\197\69\74\204\33\47\31"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\78\86\139\242\78\89\140", "\231\144\47\58")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\141\231\244\112\15\9\199\60\191\221\244\116\21\56", "\89\210\184\186\21\120\93\175")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\134\90\114\209\118\45\147\116", "\90\209\51\28\181\25")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\114\83\235\189\209\105\117\201", "\223\176\27\55\142")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\175\203\184\6\156", "\213\68\219\174")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\227\32\226\36\209\110", "\31\107\128\67\135\74\165\95")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\235\255\72\79\165\138", "\209\184\136\156\45\33")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\199\114\15\180\2\231\91", "\216\103\168\21\104")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\76\168\91\176", "\196\24\205\35")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\142\251\18\10\138\241\13", "\102\78\235\131")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\58\38\75\76\60", "\84\154\78\84\36\39\89\215")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\232\66\84\0", "\101\157\129\54\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\161\143\166\38", "\25\125\201\234\203\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\251\22\23\17\41\7", "\115\25\148\120\99\116\71")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\63\60\175\33\69\86\125", "\33\108\93\217\68") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\255\78\167\172\206\71\181", "\205\187\43\193"),LUAOBFUSACTOR_DECRYPT_STR_0("\221\122\23\214\237\102\8\222\237", "\191\158\18\101"),LUAOBFUSACTOR_DECRYPT_STR_0("\246\205\136\160", "\207\165\163\231\215"),LUAOBFUSACTOR_DECRYPT_STR_0("\246\240\247\93\61", "\16\166\153\153\54\68")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\230\182\216\82", "\153\178\211\160\38\84\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\171\5\78\46\144\13\91\40\135\75\121\36\142\4\72\56", "\75\226\107\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\210\24\125\31", "\173\56\190\113\26\113\162")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\223\32\0", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\44\251\172\246\105\75\230\32\244\166\234\61\90", "\107\165\79\152\201\152\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\66\233\204", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\23\255\251\221\39\206\199\212\36\217\247\197\121", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\191\68\199", "\179\198\214\55")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\9\116\119\80\223\228", "\179\144\108\18\22\37")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\182\9\153\195\195", "\175\166\195\123\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\195\81\69\242\238\193\86", "\144\143\162\61\41")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\210\16\85", "\83\128\179\125\48\18\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\180\240\216\73\10\29\148\252\209\72\12\29\229", "\126\61\215\147\189\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\94\243\28\66", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\153\86\77\214\169\103\113\223\170\112\65\206\244", "\34\186\198\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\1\214\73", "\162\152\104\165\61")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\42\180\124\101\233\217", "\133\173\79\210\29\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\112\248\46", "\75\237\28\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\94\192\189\45\26\228\234", "\129\188\63\172\209\79\123\135")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\229\235\200", "\173\32\132\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\122\20\15\232\162\52\141\97\53\72\204\161\61\194\92", "\173\46\123\104\143\206\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\17\35\141", "\97\212\125\66\234\37\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\181\220\130\58\25\141\239\179\22\17\134\236\164\6\27\134\230\181\33", "\126\234\131\214\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\220\90\78", "\47\228\181\41\58")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\249\223\58\22\60\11", "\127\198\156\185\91\99\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\15\222\224\171\14", "\190\149\122\172\144\199\107\89"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\4\253\242\252\51\6\250", "\158\82\101\145\158")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\68\251\26\2", "\36\16\158\98\118")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\3\208\239\87\229\46\255\193\2\202\244\86", "\133\160\118\163\155\56\136\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\174\120\245\184", "\213\150\194\17\146\214\127")]=Enum.TextXAlignment.Center});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\53\168\169\209", "\86\123\201\196\180\38\196\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\253\202\187\248\229\153\131\248\239\214\239\222\204\153\231\213\231\205\187\248\229\153\157\254\239\209\187\190", "\207\151\136\185"),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\143\41\133", "\17\200\227\72\226\20\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\143\126\56\194\218\229\224\242\156\78\28\216\224\213", "\159\208\33\123\183\169\145\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\86\57\53\247\82\55\58\246\95\42", "\86\146\58\88")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\221\242\193\189\250\51\238\81\219\176\143\225\167\120\180", "\154\56\191\138\160\206\137\86"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\92\243\134\105\54\149", "\172\230\57\149\231\28\90\225")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\33\171\138\222\42\218\1\161", "\187\98\202\230\178\72")]=function(val)
			Library:UpdateCustomFeatures();
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\15\224\169\53", "\42\65\129\196\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\33\95\78\206\24\10\66\195\23\89\84\217\87\46\38", "\142\98\42\61\186\119\103\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\179\3\15", "\104\88\223\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\200\193\219\17\249\75\250\207\219\17\228\71\222\198", "\141\36\151\130\174\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\180\118\195\14\129\114\205\1\128\127\208", "\109\228\26\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\76\231\229\121\243\245\91\241\244\124\186\169\17\171\179\54", "\134\62\133\157\24\128"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\160\28\216\58\189\194", "\182\103\197\122\185\79\209")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\208\134\237\123\2\73\240\140", "\40\147\231\129\23\96")]=function(val)
			Library:UpdateCustomFeatures();
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\65\253\148\81", "\188\21\152\236\37\219\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\240\36\24\69\228", "\108\32\137\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\228\9\161\33", "\57\202\136\96\198\79\153\43")]=Enum.TextXAlignment.Center});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\155\42\190\164\133\231\218\167\34\169\172", "\152\203\67\202\199\237\199")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\74\164\1\22\114\113\242\186\115\181\29\15\121\124", "\134\154\35\192\111\127\21\25")]=Color3.fromRGB(15, 12, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\39\27\1\96\245\170\35\16", "\178\216\70\105\106\64")]=Color3.fromRGB(35, 35, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\42\108\239\137\247\216\149\58", "\224\95\75\26\150\169\181\180")]=Color3.fromRGB(20, 22, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\223\221\56\4\158\115\15", "\22\107\186\184\72\36\204")]=Color3.fromRGB(25, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\178\54\75\29\243\253\3\92\11\226\179", "\110\135\221\68\46")]=Color3.fromRGB(12, 20, 12)};
		local bgList = {};
		for n in pairs(bgOptions) do
			table.insert(bgList, n);
		end
		table.sort(bgList);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\205\55\1\238", "\91\131\86\108\139\174\211")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\42\187\28\90\233\36\173\25\89\187\8\183\27\82\233", "\61\155\75\216\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\167\179\59", "\189\100\203\210\92\56\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\110\223\47\31\67\248\59\42\69\206\45\35\84\254\60", "\72\79\49\157"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\185\34\168", "\220\232\208\81")]=bgList,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\187\227\49\57\86\181", "\193\149\222\133\80\76\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\84\91\209\206\29\109\222\199\94\68", "\178\166\61\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\75\228\118\200\63\248\65", "\94\155\42\136\26\170")]=function(val)
			if bgOptions[val] then
				Theme.WindowBG = bgOptions[val];
				local h, s, v = Color3.toHSV(Theme.WindowBG);
				Theme.SidebarBG = Color3.fromHSV(h, s, math.min(v + 0.05, 1));
				Theme.ItemBG = Color3.fromHSV(h, s, math.min(v + 0.1, 1));
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\62\43\176", "\213\228\95\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\178\204\141\122\35\161\199\128\55\8\143\236\196\68\35\161\199", "\23\74\219\162\228"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\234\71\168", "\91\89\134\38\207")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\209\227\9\32\217\61\65", "\71\36\142\168\86\115\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\168\124", "\41\191\193\18\223\99\222\54")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\134\39\223", "\202\203\70\167\74")]=250,[LUAOBFUSACTOR_DECRYPT_STR_0("\8\4\218\50\100\32\21", "\17\76\97\188\83")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\38\213\59\50\130\72\168", "\195\229\71\185\87\80\227\43")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\253\13\85", "\143\128\156\96\48")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\248\176\33\20\185\221\245", "\119\216\177\144\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\37\248\69", "\34\169\73\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\149\211\44\158\163\223\8\138\166\233", "\235\202\140\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\125\58", "\165\108\20\84\200\137\71\151")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\87\181\51", "\232\26\212\75")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\76\116\233\226\59\93", "\151\87\41\18\136")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\120\174\198\220\252\90\172\193", "\158\59\207\170\176")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\97\95\62\76", "\236\47\62\83\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\166\39\60\166\135\186\130\37\34", "\226\154\201\64\91\202"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\69\28\31", "\220\161\41\125\120\42")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\78\148\1\187\118\172\11\151\116\185", "\110\220\17\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\80\124\50\27\254\59\229", "\199\20\25\84\122\139\87\145")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\119\5\220\173\30\226\72\5\217\171\9", "\138\39\105\189\206\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\21\140\62\224\185\228\250\6\73\199\99", "\159\127\103\233\77\147\153\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\241\232\166\66\202\4\251", "\171\103\144\132\202\32")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\47\16\221\3\23\40\229\9\59\42\240", "\108\112\79\137")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\0\253\87\61\191\19\236\59\43\246\124\45\160\4", "\85\95\162\20\72\205\97\137")] or LUAOBFUSACTOR_DECRYPT_STR_0("\211\248\44\221\24\244\217", "\173\151\157\74\188\109\152"));
	end;
	return WindowAPI;
end;
return Library;
