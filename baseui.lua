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
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\143\89\206\167\54\85\27\196\162", "\161\219\54\169\192\90\48\80")]="L",[LUAOBFUSACTOR_DECRYPT_STR_0("\125\74\5\40\76\108\1\40\76", "\69\41\34\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\198\209\11\23\39\168", "\75\220\163\183\106\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\137\130\45\220", "\185\98\218\235\87")]=90,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\41\46\213\221\171\199\57", "\202\171\92\71\134\190")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\204\45\155\4\212\63\129\42\232\8", "\232\73\161\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\219\90\92\13\168\220\86\84\26\225\150\13\12\70\232\129\20\11\73\236\143\22", "\126\219\185\34\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\195\95\97\87\122\242\224\9\231\122", "\135\108\174\62\18\30\23\147")]=LUAOBFUSACTOR_DECRYPT_STR_0("\164\235\50\202\11\189\54\211\191\237\112\132\87\246\101\148\228\176\120\147\73\252\107\147\226\187\125", "\167\214\137\74\171\120\206\83")};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\185\245\54", "\199\235\144\82\61\152")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\4\184\37\0\19", "\75\103\118\217")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\81\124\24\182\9", "\126\167\52\16\116\217")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\39\45\133", "\156\168\78\64\224\212\121")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\252\160\203\9", "\174\103\142\197")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\117\49\94\54", "\152\54\72\63\88\69\62")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\246\200\251\89", "\60\180\164\142")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\75\23\57\43\232", "\114\56\62\101\73\71\141")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\224\213\207", "\164\216\137\187")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\238\56\166\163\177\44\192\227\40", "\107\178\134\81\210\198\158")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\11\132\199\191\52\26", "\202\88\110\226\166")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\244\6\140\243\197\212\45\165", "\170\163\111\226\151")]=Color3.fromRGB(12, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\57\182\61\76\54\59\51\23", "\73\113\80\210\88\46\87")]=Color3.fromRGB(18, 15, 22),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\56\200\31\197\166", "\135\225\76\173\114")]=Color3.fromRGB(30, 25, 35),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\238\187\181\162\169\246", "\199\122\141\216\208\204\221")]=Color3.fromRGB(170, 80, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\222\19\245\118\226\255", "\150\205\189\112\144\24")]=Color3.fromRGB(100, 40, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\139\184\75\8\141\62\62", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(170, 80, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\26\31\199", "\230\180\127\103\179\214\28")]=Color3.fromRGB(245, 245, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\71\82\192\64\242\135", "\128\236\101\63\38\132\33")]=Color3.fromRGB(140, 130, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\189\3\75\189\238", "\175\204\201\113\36\214\139")]=Color3.fromRGB(50, 40, 60)},[LUAOBFUSACTOR_DECRYPT_STR_0("\100\196\39\213\23\83\193\52\207", "\100\39\172\85\188")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\154\113\183\132\60\186\90\158", "\83\205\24\217\224")]=Color3.fromRGB(130, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\204\201\56\228\196\223\31\193", "\93\134\165\173")]=Color3.fromRGB(24, 60, 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\230\196\207\24\233", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(160, 30, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\196\77\115\15\235\90\33", "\106\133\46\16")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\35\112\249\84\84\10", "\32\56\64\19\156\58")]=Color3.fromRGB(50, 205, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\199\226\81\86\247\175\116", "\224\58\168\133\54\58\146")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\9\225\157\221\221\208", "\175\187\235\113\149\217\188")]=Color3.fromRGB(200, 200, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\187\147\67\232\124", "\24\92\207\225\44\131\25")]=Color3.fromRGB(218, 165, 32)},[LUAOBFUSACTOR_DECRYPT_STR_0("\120\221\183\91", "\29\43\179\216\44\123")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\138\208\46\72\178\206\2\107", "\44\221\185\64")]=Color3.fromRGB(215, 215, 220),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\238\76\90\113\0\245\106\120", "\19\97\135\40\63")]=Color3.fromRGB(230, 230, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\72\54\54\13\22", "\81\206\60\83\91\79")]=Color3.fromRGB(200, 200, 205),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\168\211\119\33\215\28", "\196\46\203\176\18\79\163\45")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\33\125\27\42\239\189", "\143\216\66\30\126\68\155")]=Color3.fromRGB(160, 170, 190),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\199\10\204\201\166\248\207", "\129\202\168\109\171\165\195\183")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\47\204", "\134\66\56\87\184\190\116")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\52\17\175\61\234\51\62", "\85\92\81\105\219\121\139\65")]=Color3.fromRGB(110, 110, 120),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\167\66\74\119\218", "\191\157\211\48\37\28")]=Color3.fromRGB(180, 180, 190)},[LUAOBFUSACTOR_DECRYPT_STR_0("\239\22\250\23\35", "\90\191\127\148\124")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\79\142\32\19\119\144\12\48", "\119\24\231\78")]=Color3.fromRGB(40, 30, 35),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\36\161\79\222\65\3\160\10", "\113\226\77\197\42\188\32")]=Color3.fromRGB(30, 20, 25),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\2\241\184\24\49", "\213\90\118\148")]=Color3.fromRGB(50, 40, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\45\183\83\67\79\127", "\45\59\78\212\54")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\85\128\142\136\58\255", "\144\112\54\227\235\230\78\205")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\39\8\251\220\94\156\6", "\59\211\72\111\156\176")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\130\251\57", "\77\46\231\131")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84\158\85\164\75", "\32\218\52\214")]=Color3.fromRGB(180, 140, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\3\35\167\250\181", "\58\46\119\81\200\145\208\37")]=Color3.fromRGB(80, 50, 60)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\133\62\168\166\170\20\12", "\86\75\236\80\204\201\221")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\86\68\113\132\235\135\102", "\235\18\33\23\229\158")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\99\179\197\190\82\187\211\153\119", "\219\48\218\161")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\192\116\122\72\206\67\244", "\128\132\17\28\41\187\47")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\38\3\55\127\38", "\61\97\82\102\90")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\136\43\173\74\210\91\10", "\105\204\78\203\43\167\55\126")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\132\169\32\27\29\16\244\69\164\184\55", "\49\197\202\67\126\115\100\167")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\19\94\217\40\149\90\74", "\62\87\59\191\73\224\54")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\1\249\204\233\22\223\199\227", "\169\135\98\154")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\239\114\34\85\232\63\220", "\168\171\23\68\52\157\83")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\126\242\170\41\40\168\218", "\231\148\17\149\205\69\77")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\164\162\193\250\66\243\148", "\159\224\199\167\155\55")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\246\36\198", "\178\151\147\92")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\168\248\74\51\7\64\110", "\26\236\157\44\82\114\44")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\43\205\79\14\47\199\80", "\59\74\78\181")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\1\212\92\91\166\41\197", "\211\69\177\58\58")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\204\74\225\251\196\188\224\90\250\229\196\165", "\171\215\133\25\149\137")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\197\205\52\251\250\60\232", "\34\129\168\82\154\143\80\156")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\162\160\50\15\65\75\135\145\161", "\233\229\210\83\107\40\46")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\245\75\38\218\0\230\80\51\210\12\196\76\38\197", "\101\161\34\82\182")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\203\2\75\240\222\240\145", "\78\136\109\57\158\187\130\226")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\24\45\248\252\59\44", "\145\94\95\153")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\223\202\57\212\71\185", "\215\157\173\116\181\46")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\23\179\184\251\222\48\182\138\224", "\186\85\212\235\146")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\224\134\63\234\60\227\75", "\56\162\225\118\158\89\142")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\111\17\210\160\41\221\79", "\184\60\101\160\207\66")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\5\135\100\168\34", "\220\81\226\28")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\39\208\154\239\206\198\1\222\145", "\167\115\181\226\155\138")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\214\35\229\79", "\166\130\66\135\60\27\17")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\112\69\201\114\60\65\89", "\80\36\42\174\21")]={}};
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
			img.Position = UDim2.new(1, -70, 1, -70);
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
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\203\189\10\235\94\230\173\0\208", "\60\140\200\99\164")) then
			Tween(obj, {[LUAOBFUSACTOR_DECRYPT_STR_0("\165\245\7\45\165\149\251\17\40\166\164\251\8\41\176\212", "\194\231\148\100\70")]=Theme.WindowBG}, 0.3);
		end
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
	table.insert(Library.ThemeObjects.BgMain, MainFrame);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\14\24\202\194\215\148", "\178\230\29\77\119\184\172"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 12);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\151\57\15\101\247\254\187", "\152\149\222\106\123\23"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 0.8;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\15\197\74\175\216\5\249\77\166\201\52\247\74\187\201", "\213\189\70\150\35"), ShadowHolder);
	sizeConstraint.MaxSize = Vector2.new(9999, 9999);
	sizeConstraint.MinSize = Vector2.new(300, 200);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\80\108\28\109\64\96\28\64\91", "\104\47\53\20"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\138\66\145\9\168\45\175\67\130\23\185\29", "\111\195\44\225\124\220");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\84\1\126\174", "\203\184\38\96\19\203"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\13\122\109\77\203\27\114\107", "\174\89\19\25\33");
	TitleBar.Size = UDim2.new(1, 0, 0, 50);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.BackgroundTransparency = 1;
	TitleBar.ZIndex = 2;
	MakeDraggable(TitleBar, ShadowHolder);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\31\83\73\242\171\10\45\23\94", "\107\79\114\50\46\151\231"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 28, 0, 28);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -14);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\163\173\61\166\56\181\197\53", "\160\89\198\213\73\234\89\215"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\99\88\154\217\133\111\84\154", "\165\40\17\212\158");
	TitleLabel.Size = UDim2.new(1, -100, 1, 0);
	TitleLabel.Position = UDim2.new(0, 50, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextSize = 16;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local TitleDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\203\9\62\35", "\70\133\185\104\83"), TitleBar);
	TitleDivider.Size = UDim2.new(1, 0, 0, 1);
	TitleDivider.Position = UDim2.new(0, 0, 1, 0);
	TitleDivider.BackgroundColor3 = Theme.UIStrokeColor;
	TitleDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, TitleDivider);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\64\92\62\235\17\81\80\37\199", "\169\100\37\36\74"), TitleBar);
	MinBtn.Size = UDim2.new(0, 30, 0, 30);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -15);
	MinBtn.Text = "-";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\174\129\95\18\137\167\66", "\48\96\231\194"), MinBtn).CornerRadius = UDim.new(0, 8);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	MinBtn.MouseEnter:Connect(function()
		Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\234\91\13\38\30\202\160\150\198\94\45\34\21\215\189\208", "\227\168\58\110\77\121\184\207")]=Theme.AccentStart}, 0.2);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\68\3\138\105\142\246\88\139\82\17\150\122\148\255", "\197\27\92\223\32\209\187\17")] then
			Tween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\33\94\192\240\4\77\204\238\13\91\224\244\15\80\209\168", "\155\99\63\163")]=Theme.ItemBG}, 0.2);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\210\179\136\188\138\165\196\168", "\228\226\177\193\237\217"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\31\146\54\242\32\191\45\193\33\185", "\134\84\208\67");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\161\135\91\22\142\147\72\7\163\136", "\60\115\204\230"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 0, 0, 0);
	KBtn.Position = UDim2.new(0.9, -50, 0.5, 0);
	KBtn.Visible = false;
	KBtn.ZIndex = 10;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\216\5\192\79\215\21\216", "\16\135\90\139"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\107\75\51\26\113\121\81\122\93\43\26\116\113\92", "\24\52\20\102\83\46\52")] = isMinimized;
		Library:Save();
		if isMinimized then
			for _, closeFunc in pairs(Library.OpenDropdowns) do
				pcall(closeFunc);
			end
		end
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\251\16\10\27\60\205\53\36", "\111\164\79\65\68")] or DEFAULTS.KSize;
		if isMinimized then
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\225\203\140\203\62\222\212\216\141\205\62\235\212\220\141\221\55", "\138\166\185\227\190\78")]=1}, 0.3);
			KBtn.Visible = true;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\125\223\50", "\121\171\20\165\87\50\67")]=UDim2.new(0, kSize, 0, kSize),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\53\184\49\188\54\212\57\183\37\169\3\212\61\183\53\160", "\98\166\88\217\86\217")]=0}, 0.4, Enum.EasingStyle.Back);
			task.wait(0.3);
			if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\201\201\76\40\185\241\223\216\80\44\175\230\211\210", "\188\150\150\25\97\230")] then
				ShadowHolder.Visible = false;
			end
		else
			ShadowHolder.Visible = true;
			Tween(ShadowHolder, {[LUAOBFUSACTOR_DECRYPT_STR_0("\253\155\80\23\28\217\200\136\81\17\28\236\200\140\81\1\21", "\141\186\233\63\98\108")]=0}, 0.3);
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\194\227\54\179", "\69\145\138\76\214")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\194\136\142\186\34\98\206\135\154\175\23\98\202\135\138\166", "\118\16\175\233\233\223")]=1}, 0.3, Enum.EasingStyle.Back);
			task.wait(0.2);
			if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\180\187\0\146\209\166\84\165\173\24\146\212\174\89", "\29\235\228\85\219\142\235")] then
				KBtn.Visible = false;
			end
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\2\235\143\244\72\99\14\124\20\249\147\231\82\106", "\50\93\180\218\189\23\46\71")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\225\155\112\115\119\213\82\219", "\40\190\196\59\44\36\188")] or DEFAULTS.KSize;
			Tween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\15\76\198\177", "\109\92\37\188\212\154\29")]=UDim2.new(0, kSize, 0, kSize)}, 0.3);
		end
	end;
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\59\208\144\204\54\93\8\234\143\198\40", "\58\100\143\196\163\81")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\37\125\22\138\0\100\204\32\51\111\10\153\26\109", "\110\122\34\67\195\95\41\133")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\74\142\110\99\233\88\152\117\99\251\92\139\126\110", "\182\21\209\59\42")] then
		ShadowHolder.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\136\104\238\34\18\183\173\82", "\222\215\55\165\125\65")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		ShadowHolder.Visible = true;
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\195\199\23\247", "\42\76\177\166\122\146\161\141"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\150\131\1\203\123\119\183\169\10\192\109\119\172\132\0\220", "\22\197\234\101\174\25");
	SidebarContainer.Size = UDim2.new(0, 130, 1, -50);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 50);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarContainer);
	local SidebarDivider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\38\164\209\115", "\230\77\84\197\188\22\207\183"), SidebarContainer);
	SidebarDivider.Size = UDim2.new(0, 1, 1, 0);
	SidebarDivider.Position = UDim2.new(1, -1, 0, 0);
	SidebarDivider.BackgroundColor3 = Theme.UIStrokeColor;
	SidebarDivider.BorderSizePixel = 0;
	table.insert(Library.ThemeObjects.Strokes, SidebarDivider);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\23\212\243\128\173\249\59\254\50\212\253\129\164", "\85\153\116\166\156\236\193\144"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\201\97\186\247\20\136\225\84\188\241\20", "\96\196\128\45\211\132"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\75\94\214\171\189\214\50", "\184\85\237\27\63\178\207\212"), TabBar).PaddingTop = UDim.new(0, 10);
	TabListLayout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\41\91\26\80\4\76\29\90\43\86\7\75\13\87\29\108\1\67\12", "\63\104\57\105")):Connect(function()
		TabBar.CanvasSize = UDim2.new(0, 0, 0, TabListLayout.AbsoluteContentSize.Y + 20);
	end);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\149\165\73\14", "\36\107\231\196"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -130, 1, -50);
	PagesContainer.Position = UDim2.new(0, 130, 0, 50);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\146\134\89\177\171\137\90", "\231\61\213\194"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 15);
	ContentPadding.PaddingRight = UDim.new(0, 15);
	ContentPadding.PaddingTop = UDim.new(0, 15);
	ContentPadding.PaddingBottom = UDim.new(0, 15);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\168\37\103\43\184\41\103\6\163", "\19\105\205\93"), TabBar);
		TabBtn.Size = UDim2.new(1, -20, 0, 36);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 13;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\33\253\142\45\167\13\204", "\95\201\104\190\225"), TabBtn).CornerRadius = UDim.new(0, 6);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\217\192\195\170", "\174\207\171\161"), TabBtn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BackgroundTransparency = 1;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\215\46\252\234\217\232\236", "\183\141\158\109\147\152"), Indicator).CornerRadius = UDim.new(0, 4);
		local function UpdateTabButtonStyle(button, indicator, isActive)
			if isActive then
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\8\229\7\43\27\233\25\34\13\197\3\32\6\244\95", "\108\76\105\134")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\192\169\245\237\228\201\190\243\157", "\174\139\165\209\129")]=Theme.Text}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\129\178\225\202\193\17\127\109\173\183\214\211\199\13\99\104\162\161\231\207\197\26", "\24\195\211\130\161\166\99\16")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\2\234\39\84\4\73\22\231\40\112\25\74\12\251\127", "\118\38\99\137\76\51")]=Theme.AccentStart}, 0.3);
			else
				Tween(button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\223\39\6\25\14\50\242\51\11\22\42\47\241\41\23\65", "\64\157\70\101\114\105")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\173\191\247\51\79\164\168\241\67", "\112\32\200\199\131")]=Theme.TextDark}, 0.3);
				Tween(indicator, {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\81\95\179\196\185\45\57\94\88\140\209\170\44\63\64\93\170\198\165\33\53", "\66\76\48\60\216\163\203")]=1}, 0.3);
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\146\119", "\68\218\230\25\147\63\174")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\132\36\87\69\181\172\62\92\94", "\214\205\74\51\44")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\77\239\249", "\23\154\44\130\156")]=name});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\178\163", "\115\113\198\205\206\86")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\89\250\83\135\86\234\85\150", "\58\228\55\158")]=Indicator,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\136\221\43", "\85\212\233\176\78\92\205")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\91\154\237\70\84\129\236\77\126\154\227\71\93", "\130\42\56\232"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\213\133\37\228\69", "\95\138\213\68\131\32");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\1\141\74\101\62\4\160\90\121\63\60", "\22\74\72\193\35"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\80\212\89\40\125\237\86\43", "\56\76\25\132"), Page);
		PagePadding.PaddingRight = UDim.new(0, 10);
		PagePadding.PaddingBottom = UDim.new(0, 10);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\211\170\43\202", "\175\62\161\203\70")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\220\206\22", "\85\92\189\163\115")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\190\49\53\44", "\88\73\204\80"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\170\51\73\59\212\43\145", "\186\78\227\112\38\73"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\82\229\65\127\123\254\82\241", "\26\156\55\157\53\51"), Frame);
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
			local SwitchBg = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\202\23\212\189", "\48\236\184\118\185\216"), Frame);
			SwitchBg.Size = UDim2.new(0, 44, 0, 22);
			SwitchBg.Position = UDim2.new(1, -54, 0.5, -11);
			SwitchBg.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\148\116\63\221\58\224\175", "\84\133\221\55\80\175"), SwitchBg).CornerRadius = UDim.new(1, 0);
			local SwitchKnob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\245\37\171\194", "\60\221\135\68\198\167"), SwitchBg);
			SwitchKnob.Size = UDim2.new(0, 18, 0, 18);
			SwitchKnob.Position = UDim2.new(0, 2, 0.5, -9);
			SwitchKnob.BackgroundColor3 = Theme.Text;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\148\219\140\80\215\235\175", "\185\142\221\152\227\34"), SwitchKnob).CornerRadius = UDim.new(1, 0);
			local ClickArea = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238\97\38\227\76\202\89", "\151\56\165\55\154\35\83"), Frame);
			ClickArea.Text = "";
			ClickArea.BackgroundTransparency = 1;
			ClickArea.Size = UDim2.new(1, 0, 1, 0);
			ClickArea.ZIndex = 10;
			local function UpdateVisuals(val)
				if val then
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\130\66\6\229\167\81\10\251\174\71\38\225\172\76\23\189", "\142\192\35\101")]=Theme.ToggleON}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\122\58\170\243\133\163\24", "\118\182\21\73\195\135\236\204")]=UDim2.new(1, -20, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\61\25\75\3\31\242\29\50\30\99\11\1\242\26\111", "\157\104\92\122\32\100\109")]=Color3.new(1, 1, 1)}, 0.25, Enum.EasingStyle.Back);
				else
					Tween(SwitchBg, {[LUAOBFUSACTOR_DECRYPT_STR_0("\129\167\204\193\58\53\130\190\173\162\236\197\49\40\159\248", "\203\195\198\175\170\93\71\237")]=Theme.WindowBG}, 0.25);
					Tween(SwitchKnob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\30\68\45\220\69\24\243\32", "\156\78\43\94\181\49\113")]=UDim2.new(0, 2, 0.5, -9),[LUAOBFUSACTOR_DECRYPT_STR_0("\80\233\199\168\12\81\118\103\230\192\128\4\79\118\96\187", "\25\18\136\164\195\107\35")]=Theme.TextDark}, 0.25, Enum.EasingStyle.Back);
				end
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\221\61\173\78\102\185", "\216\136\77\201\47\18\220\161")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\224\42\221", "\226\77\140\75\186\104\188")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\157\203\222\54\74\189", "\47\217\174\176\95"), reason, 3);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\207\119\15\183", "\70\216\189\22\98\210\52\24"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\246\128\136\193\212\218\177", "\179\186\191\195\231"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\58\0\240\213\62\26\225\245", "\132\153\95\120"), Frame);
			TopLabel.Size = UDim2.new(1, -40, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 8);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamMedium;
			TopLabel.TextSize = 14;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\183\22\57\219\219\162\180\190", "\192\209\210\110\77\151\186"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 8);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextSize = 14;
			ValLabel.TextColor3 = Theme.AccentStart;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.TextXAlignment = Enum.TextXAlignment.Right;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local SliderBarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\17\35\228\250", "\164\128\99\66\137\159"), Frame);
			SliderBarBG.Size = UDim2.new(1, -20, 0, 6);
			SliderBarBG.Position = UDim2.new(0, 10, 0, 38);
			SliderBarBG.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\160\202\177\18\135\236\172", "\222\96\233\137"), SliderBarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\161\166\18\141", "\144\217\211\199\127\232\147"), SliderBarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\6\29\39\199\75\7\86", "\36\152\79\94\72\181\37\98"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\241\96\45\214\220\78\58\217\204", "\95\183\184\39"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, UIGradientFill);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\45\230\43\81", "\98\213\95\135\70\52\224"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\138\234\120\70\240\166\219", "\52\158\195\169\23"), Knob).CornerRadius = UDim.new(1, 0);
			Frame:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\76\181\33\125\132\57\126", "\235\26\220\82\20\230\85\27")):Connect(function()
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
				Tween(Fill, {[LUAOBFUSACTOR_DECRYPT_STR_0("\187\168\243\199", "\20\232\193\137\162")]=UDim2.new(SizeX, 0, 1, 0)}, 0.05);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\17\214\223\163", "\17\66\191\165\198\135\236\119")]=UDim2.new(0, 18, 0, 18)}, 0.2);
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
					Tween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\60\166\180\22", "\177\111\207\206\115\159\136\140")]=UDim2.new(0, 14, 0, 14)}, 0.2);
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\35\155\17\25\209", "\63\101\233\112\116\180\47"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\18\206\29\234\56\198\41", "\86\163\91\141\114\152"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\103\14\108\103\22\82\9\113\127", "\90\51\107\20\19"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\245\157\251\31\152\228\145\224\51", "\93\237\144\229\143"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\223\211\22\25\72\16\228", "\38\117\150\144\121\107"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\146\221\46\63\180\229\63", "\90\77\219\142"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\1\57\45\96\6\120\227\8", "\26\134\100\65\89\44\103"), MainBtn);
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
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\230\40\55\136\240\225\53\47", "\196\145\131\80\67"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\162\7\5\29", "\136\126\208\102\104\120"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\92\152\193\83\171\93\42\95", "\49\24\234\174\35\207\50\93");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\219\222\135\99\2\247\239", "\17\108\146\157\232"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\234\39\249\61\167\64\198", "\200\43\163\116\141\79"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\31\14\151\162\251\232\186", "\131\223\86\93\227\208\148"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\70\164\185\17\185\234\75\177\144\15\180\238\64", "\213\131\37\214\214\125"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\2\9\182\242\50\7\36\166\238\51\63", "\129\70\75\69\223"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\116\196\231\232\104\230\73\197", "\143\38\171\147\137\28")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\141\181\252\17", "\180\176\226\217\147\99\131")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\171\46\9\192\169\46\21\214\183\44\30", "\103\179\217\79")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\126\178\4\193\99\153\183\94\184\18", "\195\42\215\124\181\33\236")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\92\47\42\7\237\25\77\56\48", "\152\109\57\87\94\69"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\203\216\30\162\170\219\91\166", "\200\153\183\106\195\222\178\52")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\17\236\132\50\91", "\58\82\131\232\93\41")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\69\209\27\78\47\130\69\213\27\94\38", "\95\227\55\176\117\61")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\108\34\70\174", "\203\120\30\67\43"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\12\110\224\203\255\32\95", "\185\145\69\45\143"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\190\26\1\178\240\139\29\28\170", "\188\234\127\121\198"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\55\11\151\26\39\7\151\55\60", "\227\88\82\115"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 32);
			MainBtn.Position = UDim2.new(0, 10, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = "";
			MainBtn.AutoButtonColor = false;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\54\153\168\16\125\70\13", "\19\35\127\218\199\98"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\210\57\246\14\244\1\231", "\130\124\155\106"), MainBtn);
			MainStroke.Color = Theme.UIStrokeColor;
			MainStroke.Transparency = 0.8;
			MainStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, MainStroke);
			local SelectedText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\225\206\238\187\143\247\126\186\217", "\223\181\171\150\207\195\150\28"), MainBtn);
			SelectedText.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\127\63\239\171\10\88\122\202\186\12\65\41\173\224\71", "\105\44\90\131\206");
			SelectedText.Size = UDim2.new(1, -30, 1, 0);
			SelectedText.Position = UDim2.new(0, 10, 0, 0);
			SelectedText.Font = Enum.Font.Gotham;
			SelectedText.TextColor3 = Theme.Text;
			SelectedText.TextSize = 14;
			SelectedText.TextXAlignment = Enum.TextXAlignment.Left;
			SelectedText.BackgroundTransparency = 1;
			SelectedText.ZIndex = 7;
			table.insert(Library.ThemeObjects.Texts, SelectedText);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\229\170\173\36\63\253\229\190", "\94\159\128\210\217\104"), MainBtn);
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
			local DropdownHolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\235\7\178\90", "\26\48\153\102\223\63\31\153"), ScreenGui);
			DropdownHolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\47\85\225\231\11\100\255\252\18\68\226\228\12", "\147\98\32\141");
			DropdownHolder.BackgroundColor3 = Theme.ItemBG;
			DropdownHolder.BackgroundTransparency = 0.05;
			DropdownHolder.Size = UDim2.new(0, 0, 0, 0);
			DropdownHolder.Visible = false;
			DropdownHolder.ZIndex = 600;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\45\106\192\197\20\88\78\10", "\43\120\35\131\170\102\54"), DropdownHolder).CornerRadius = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\47\180\162\183\191\143\81", "\228\52\102\231\214\197\208"), DropdownHolder).Color = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\201\70\222\248\132\18\211", "\182\126\128\21\170\138\235\121"), DropdownHolder).Thickness = 1;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\217\39\233\138\31\57\8\140\252\39\231\139\22", "\102\235\186\85\134\230\115\80"), DropdownHolder);
			Scroll.Size = UDim2.new(1, -4, 1, -4);
			Scroll.Position = UDim2.new(0, 2, 0, 2);
			Scroll.BackgroundTransparency = 1;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\37\18\86\97\192\14\86\21\49\74\102", "\66\55\108\94\63\18\180"), Scroll);
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
				SelectedText.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\84\190\128\59\34\90\0\136\129", "\57\116\237\229\87\71"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\153\180\225\226\116\250\7\131\165\232\234\100\160\9\228", "\39\202\209\141\135\23\142");
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\205\60\29\11\38\241\240\61", "\152\159\83\105\106\82")]=-90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\162\201\93\253\219", "\60\225\166\49\146\169")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\12\46\36\18\23\46\12\42\36\2\30", "\103\79\126\79\74\97")]=0.5}, 0.2);
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\142\122\203\103\124\15\174\107\220\125", "\122\218\31\179\19\62")) then
							child:Destroy();
						end
					end
					for _, item in ipairs(options.List) do
						if (Library.Flags[dFlag][item] == nil) then
							Library.Flags[dFlag][item] = false;
						end
						local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\135\211\213\213\235\180\81\167\217\195", "\37\211\182\173\161\169\193"), Scroll);
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
					Tween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\53\89\216\60\114\182\249", "\217\151\90\45\185\72\27")]=90}, 0.2);
					Tween(MainStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\115\235\29\68", "\54\163\28\135\114")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\28\201\92\140\93\111\41\201\88\140\77\102", "\31\72\187\61\226\46")]=0.8}, 0.2);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\20\66\223\66", "\68\163\102\35\178\39\30"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\89\249\200\17\187\134\3", "\113\222\16\186\167\99\213\227"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\11\227\226\2\15\249\243\34", "\150\78\110\155"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\192\63\245\134\11\171\84\138\203", "\32\229\165\71\129\196\126\223"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 32);
			Button.Position = UDim2.new(0, 10, 0, 28);
			Button.BackgroundColor3 = Theme.WindowBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamBold;
			Button.TextSize = 14;
			Button.AutoButtonColor = false;
			Button.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\160\231\142\147\219\198\155", "\181\163\233\164\225\225"), Button).CornerRadius = UDim.new(0, 6);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\162\13\99\66\132\53\114", "\23\48\235\94"), Button);
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
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\94\219\219\86\80\33\221\105\212\220\126\88\63\221\110\137", "\178\28\186\184\61\55\83")]=Theme.ItemBG}, 0.1);
				task.wait(0.1);
				Tween(Button, {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\204\68\55\245\28\250\209\195\67\31\253\2\250\214\158", "\149\164\173\39\92\146\110")]=Theme.WindowBG}, 0.1);
				pcall(options.Callback, val);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\53\17\18\31", "\123\147\71\112\127\122"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 65);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\228\161\126\84\194\200\144", "\38\172\173\226\17"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\20\52\251\97\16\46\234\65", "\143\45\113\76"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 10, 0, 5);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			table.insert(Library.ThemeObjects.Texts, Label);
			local InputContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\170\29\49\189", "\92\216\216\124"), Frame);
			InputContainer.Size = UDim2.new(1, -20, 0, 32);
			InputContainer.Position = UDim2.new(0, 10, 0, 28);
			InputContainer.BackgroundColor3 = Theme.WindowBG;
			InputContainer.ClipsDescendants = true;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\27\143\79\239\85\55\190", "\157\59\82\204\32"), InputContainer).CornerRadius = UDim.new(0, 6);
			local InputStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\23\208\238\251\229\216\180", "\209\88\94\131\154\137\138\179"), InputContainer);
			InputStroke.Color = Theme.UIStrokeColor;
			InputStroke.Transparency = 0.8;
			table.insert(Library.ThemeObjects.Strokes, InputStroke);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\164\220\104\60\44\41", "\66\72\193\164\28\126\67\81"), InputContainer);
			Input.Size = UDim2.new(1, -10, 1, 0);
			Input.Position = UDim2.new(0, 5, 0, 0);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\169\98\230", "\22\135\76\200\56\70");
			Input.Text = default;
			Input.BackgroundTransparency = 1;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextSize = 14;
			Input.TextXAlignment = Enum.TextXAlignment.Left;
			Input.TextTruncate = Enum.TextTruncate.AtEnd;
			table.insert(Library.ThemeObjects.Texts, Input);
			Input.Focused:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\174\63\244\43\79", "\129\237\80\152\68\61")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\186\5\253\15\7\89\67\173\10\240\5", "\56\49\200\100\147\124\119")]=0.2}, 0.3);
			end);
			Input.FocusLost:Connect(function()
				Tween(InputStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\239\49\179\255\222", "\144\172\94\223")]=Theme.UIStrokeColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\29\163\73\55\31\163\85\33\1\161\94", "\39\68\111\194")]=0.8}, 0.3);
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\180\230\202\124", "\215\182\198\135\167\25"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundTransparency = 1;
			local btnName = options.Name;
			if (not btnName or (btnName == "")) then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\76\242\92\175\92\254\92\130\71", "\40\237\41\138"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = btnName;
			Btn.TextColor3 = Color3.new(1, 1, 1);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.AutoButtonColor = false;
			Btn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\93\217\247\88\201\113\232", "\42\167\20\154\152"), Btn).CornerRadius = UDim.new(0, 8);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\215\133\80\112\37\67\251\172\86", "\65\42\158\194\34\17"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, BtnGradient);
			local BtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\14\97\24\63\226\16\235", "\142\122\71\50\108\77\141\123"), Btn);
			BtnStroke.Color = Theme.AccentStart;
			BtnStroke.Transparency = 0.8;
			BtnStroke.Thickness = 1;
			Btn.MouseEnter:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\55\163\252\19\60\7\173\234\22\63\33\176\254\22\40\5\163\237\29\53\22\187", "\91\117\194\159\120")]=0.1}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\15\63\22\38\225\37\8\24\48\27\44", "\68\122\125\94\120\85\145")]=0.4}, 0.2);
			end);
			Btn.MouseLeave:Connect(function()
				Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\53\29\204\85\207\203\181\2\18\203\106\218\216\180\4\12\206\76\205\215\185\14", "\218\119\124\175\62\168\185")]=0}, 0.2);
				Tween(BtnStroke, {[LUAOBFUSACTOR_DECRYPT_STR_0("\145\226\73\202\182\224\73\214\160\254\75\221", "\164\197\144\40")]=0.8}, 0.2);
			end);
			Btn.MouseButton1Click:Connect(function()
				PlayClickSound();
				task.spawn(function()
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\183\245\178\159\238\191\153\245", "\214\227\144\202\235\189")]=12}, 0.05);
					task.wait(0.05);
					Tween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\160\159\111\35\186\73\57", "\92\141\197\231\27\112\211\51")]=14}, 0.05);
				end);
				pcall(options.Callback);
			end);
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\237\139\174\212", "\177\134\159\234\195"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 95);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\194\28\175\219\179\238\45", "\169\221\139\95\192"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\142\103\43\14\39\220\142\115", "\70\190\235\31\95\66"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\153\240\31\226\236\174", "\133\218\130\122\134");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			table.insert(Library.ThemeObjects.Texts, Label);
			local BoxContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\237\226\201\217", "\88\92\159\131\164\188\195"), Frame);
			BoxContainer.Size = UDim2.new(0.9, 0, 0, 32);
			BoxContainer.Position = UDim2.new(0.05, 0, 0, 24);
			BoxContainer.BackgroundColor3 = Theme.WindowBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\7\156\68\197\229\216\146", "\189\224\78\223\43\183\139"), BoxContainer).CornerRadius = UDim.new(0, 8);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\249\146\2\227\33\228", "\161\78\156\234\118"), BoxContainer);
			Box.Size = UDim2.new(1, 0, 1, 0);
			Box.Text = options.Link or "";
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextSize = 13;
			Box.BackgroundTransparency = 1;
			Box.TextEditable = false;
			Box.ClearTextOnFocus = false;
			table.insert(Library.ThemeObjects.Texts, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\178\209\200\133\162\221\200\168\185", "\188\199\215\169"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 28);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 62);
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\223\6\79\98", "\136\156\105\63\27");
			CopyBtn.TextColor3 = Color3.new(1, 1, 1);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextSize = 13;
			CopyBtn.AutoButtonColor = false;
			CopyBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\165\90\59\9\130\124\38", "\84\123\236\25"), CopyBtn).CornerRadius = UDim.new(0, 8);
			local CopyGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\162\141\5\173\177\249\142\164\3", "\213\144\235\202\119\204"), CopyBtn);
			CopyGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			table.insert(Library.ThemeObjects.Gradients, CopyGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				PlayClickSound();
				if setclipboard then
					pcall(function()
						setclipboard(options.Link or "");
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\0\23\206\35\45\39\12", "\45\67\120\190\74\72\67");
					task.delay(2, function()
						CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\3\45\253\188", "\137\64\66\141\197\153\232\142");
					end);
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\38\194\48\169\154", "\232\99\176\66\198"), "Your executor doesn't support clipboard.", 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\51\41\11\126", "\76\140\65\72\102\27\237\153"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\200\23\223\210", "\222\42\186\118\178\183\97"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 26);
			Frame.BackgroundTransparency = 1;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\233\92\158\113\237\70\143\81", "\234\61\140\36"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\13\220\184\119\3", "\111\65\189\218\18");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextSize = 14;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\96\89\30\49\2\72\188", "\207\35\43\123\85\107\60"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\68\175\184\254", "\25\16\202\192\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\226\237\224\176\180\209\194\183\231\141\241\235", "\148\157\171\205\130\201"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\216\125\46\223", "\150\67\180\20\73\177")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\174\23\22\66\159", "\45\237\120\122")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\233\175\41", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\94\239\246\59\95\93\16\58\213\224\42\70\74\6", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\200\174\239", "\18\126\161\192\132\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\87\60\186\20\69\5\103\225\0\95\76\43\161\22\82\17\47\169\75\100\87\12\160\49\103\77\124\138\17", "\54\63\72\206\100")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\92\93\110", "\27\168\57\37\26\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\162\121\165\210\109\135\125\166\214\42\175\110", "\183\77\202\28\200"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\63\128\15\25", "\104\119\83\233")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\209\253\33\35\86\249\236", "\35\149\152\71\66"),LUAOBFUSACTOR_DECRYPT_STR_0("\58\224\80\185\41\13\229\67\163", "\90\121\136\34\208"),LUAOBFUSACTOR_DECRYPT_STR_0("\244\0\90\9", "\126\167\110\53"),LUAOBFUSACTOR_DECRYPT_STR_0("\13\25\32\243\197", "\95\93\112\78\152\188")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\239\244\136\16", "\178\161\149\229\117\132\222")]=LUAOBFUSACTOR_DECRYPT_STR_0("\187\222\209\169\162\2\230\23\128\222\208\169", "\67\232\187\189\204\193\118\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\34\180\39", "\143\235\78\213\64\91\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\119\167\252\98\164\136\70\144\221\120\179\128\77", "\214\237\40\228\137\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\234\252\205", "\198\229\131\143\185\99")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\117\137\174\114\68\128\188", "\19\49\236\200")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\193\8\213\162\246\168\251\57\226\131\236\191\243\50", "\218\158\87\150\215\132")] or LUAOBFUSACTOR_DECRYPT_STR_0("\223\27\223\227\35\46\217", "\173\155\126\185\130\86\66")),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\167\182\203\138\237\230\173", "\140\133\198\218\167\232")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\47\185\120", "\228\213\78\212\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\77\160\0\171\179\68\179\8\238\199\109\165\75\165\201", "\139\231\44\214\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\227\7\89", "\118\185\143\102\62\112\209\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\79\7\227\178\33\20\61\81\117\7\231\168\16", "\88\60\16\73\134\197\117\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\230\249\203\68\88\229\244\204\68\66", "\33\48\138\152\168")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\23\61\84\143\121\60", "\87\18\118\80\49\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\31\214\172\178\77\29\209", "\208\44\126\186\192")]=function()
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\217\27\169\195", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\236\80\31\187\198\248\84\8\254\235\249\6\46\243\224\224\67", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\43\160\77\77\126\166\46", "\197\69\74\204\33\47\31")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\207\112\116\130\231\123\82\130\253\74\116\134\253\74", "\231\144\47\58")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\133\209\212\113\23\42\237\30", "\89\210\184\186\21\120\93\175")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\90\120\208\123\59\163\113\91", "\90\209\51\28\181\25")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\111\82\227\157\247", "\223\176\27\55\142")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\184\205\176\42\175\159", "\213\68\219\174")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\227\32\226\36\209\109", "\31\107\128\67\135\74\165\95")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\231\251\74\77\180\247\198", "\209\184\136\156\45\33")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\205\109\28", "\216\103\168\21\104")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\76\168\91\176\92\172\81\175", "\196\24\205\35")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\159\241\9\37\142", "\102\78\235\131")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\39\32\72\66", "\84\154\78\84\36\39\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\233\83\85\0", "\101\157\129\54\56"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\166\132\191\38\119\9", "\25\125\201\234\203\67")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\74\245\14\6\16\125\83", "\115\25\148\120\99\116\71") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\40\56\191\37\84\0\41", "\33\108\93\217\68"),LUAOBFUSACTOR_DECRYPT_STR_0("\248\67\179\164\200\95\172\172\200", "\205\187\43\193"),LUAOBFUSACTOR_DECRYPT_STR_0("\205\124\10\200", "\191\158\18\101"),LUAOBFUSACTOR_DECRYPT_STR_0("\245\202\137\188\182", "\207\165\163\231\215")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\242\252\225\66", "\16\166\153\153\54\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\189\212\67\38\39\248\209\182\128\101\59\45\246\192\160", "\153\178\211\160\38\84\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\7\83\44\140", "\75\226\107\58")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\118\223\28\127", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\221\46\0\249\223\158\14\10\251\196\204\109\84", "\151\171\190\77\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\35\249\174", "\107\165\79\152\201\152\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\113\203\196\88\112\69\125\237\199\81\124\67\31", "\31\55\46\136\171\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\33\207\224", "\148\177\72\188")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\179\81\210\179\186\67", "\179\198\214\55")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\25\96\102\73\214", "\179\144\108\18\22\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\162\23\133\205\199\160\16", "\175\166\195\123\233")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentStart = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\193\195\80\76", "\144\143\162\61\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\208\30\85\124\147\115\195\220\17\95\96\199\97", "\83\128\179\125\48\18\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\187\242\218", "\126\61\215\147\189\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\192\62\74\116\240\15\118\125\243\24\70\108\173", "\37\24\159\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\175\102\86", "\34\186\198\21")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\13\195\92\215\244\28", "\162\152\104\165\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\35\167\120", "\133\173\79\210\29\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\125\225\39\143\125\238\32", "\75\237\28\141")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.AccentEnd = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\242\94\193\180", "\129\188\63\172\209\79\123\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\235\225\202\76\225\166\226\110\164\197\194\76\235\244", "\173\32\132\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\23\9\232", "\173\46\123\104\143\206\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\34\22\133\66\132\13\177\62\45\134\74\145\50\177\17\39\137\81", "\97\212\125\66\234\37\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\234\165\33", "\126\234\131\214\85")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\160\208\79\91\90\136\193", "\47\228\181\41\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\233\203\43\15\53", "\127\198\156\185\91\99\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\27\192\252\165\10\58\213", "\190\149\122\172\144\199\107\89")]=function(val)
			if COLOR_PALETTE[val] then
				Theme.ToggleON = Color3.fromHSV(COLOR_PALETTE[val], 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\0\233\234", "\158\82\101\145\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\235\17\2\75\125\247\24\23\80\121\241\12", "\36\16\158\98\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\26\202\252\86", "\133\160\118\163\155\56\136\71")]=Enum.TextXAlignment.Center});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\216\163\124\247", "\213\150\194\17\146\214\127")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\188\183\192\73\169\226\26\20\174\171\148\111\128\226\126\57\166\176\192\73\169\226\4\18\174\172\192\15", "\86\123\201\196\180\38\196\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\228\216\168", "\207\151\136\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\151\188\11\151\103\108\126\165\175\39\133\123\81\85", "\17\200\227\72\226\20\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\77\26\212\204\249\224\243\180\68\9", "\159\208\33\123\183\169\145\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\88\32\55\225\73\61\34\251\94\98\121\189\20\118\120\178\18\29\59\226\78\33\118\175\26\22\57\252\95\113", "\86\146\58\88"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\218\236\193\187\229\34", "\154\56\191\138\160\206\137\86")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\165\88\249\139\126\59\130\199", "\172\230\57\149\231\28\90\225")]=function(val)
			Library:UpdateCustomFeatures();
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\171\139\215", "\187\98\202\230\178\72")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\244\183\36\69\44\161\137\37\89\40\226\228\25\110", "\42\65\129\196\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\70\92\221", "\142\98\42\61\186\119\103\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\128\33\29\43\171\13\5\21\170\17\1\59\150\38", "\104\88\223\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\251\227\205\7\229\75\251\230\203\16", "\141\36\151\130\174\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\120\218\12\151\105\199\25\141\126\152\66\203\52\140\67\196\50\231\0\148\110\219\77\217\58\236\2\138\127\139", "\109\228\26\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\224\251\121\245\234\74", "\134\62\133\157\24\128")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\36\164\22\213\45\176\213\12", "\182\103\197\122\185\79\209")]=function(val)
			Library:UpdateCustomFeatures();
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\199\130\249\99", "\40\147\231\129\23\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\70\225\159\81\190\161", "\188\21\152\236\37\219\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\97\229\62\11\78", "\108\32\137\87")]=Enum.TextXAlignment.Center});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\225\20\165\39\185\105\85\171\235\11", "\57\202\136\96\198\79\153\43")]=Color3.fromRGB(10, 10, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\42\174\169\132\160\240\191\99\154\178\159\183\244\174", "\152\203\67\202\199\237\199")]=Color3.fromRGB(15, 12, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\66\178\4\95\82\107\227\227", "\134\154\35\192\111\127\21\25")]=Color3.fromRGB(35, 35, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\39\31\19\96\240\180\51\12", "\178\216\70\105\106\64")]=Color3.fromRGB(20, 22, 28),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\46\127\230\137\231\209\132", "\224\95\75\26\150\169\181\180")]=Color3.fromRGB(25, 12, 12),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\213\202\45\87\184\54\44\200\221\45\74", "\22\107\186\184\72\36\204")]=Color3.fromRGB(12, 20, 12)};
		local bgList = {};
		for n in pairs(bgOptions) do
			table.insert(bgList, n);
		end
		table.sort(bgList);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\188\41\75", "\110\135\221\68\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\55\15\224\201\161\52\246\56\8\171\237\188\55\236\36", "\91\131\86\108\139\174\211"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\39\185\16", "\61\155\75\216\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\59\148\144\59\104\27\216\23\174\166\15\93\5\216\7\191", "\189\100\203\210\92\56\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\3\88\238\60", "\72\79\49\157")]=bgList,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\181\55\189\157\188\37", "\220\232\208\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\183\241\51\36\26\131\249\191\230\59", "\193\149\222\133\80\76\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\92\67\222\196\92\76\217", "\178\166\61\47")]=function(val)
			if bgOptions[val] then
				Theme.WindowBG = bgOptions[val];
				local h, s, v = Color3.toHSV(Theme.WindowBG);
				Theme.SidebarBG = Color3.fromHSV(h, s, math.min(v + 0.05, 1));
				Theme.ItemBG = Color3.fromHSV(h, s, math.min(v + 0.1, 1));
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\213\75\229\127", "\94\155\42\136\26\170")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\54\40\188\137\54\60\176\128\127\4\129\170\127\21\188\158\58", "\213\228\95\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\183\195\131", "\23\74\219\162\228")]=LUAOBFUSACTOR_DECRYPT_STR_0("\6\217\109\144\8\48\252\67", "\91\89\134\38\207"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\231\198", "\71\36\142\168\86\115\176")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\160\106", "\41\191\193\18\223\99\222\54")]=250,[LUAOBFUSACTOR_DECRYPT_STR_0("\143\35\193\43\191\167\50", "\202\203\70\167\74")]=90,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\0\208\63\115\45\2\215", "\17\76\97\188\83")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\38\212\50", "\195\229\71\185\87\80\227\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\213\64\99\236\225\240\5", "\143\128\156\96\48"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\221\241\21", "\119\216\177\144\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\246\22\222\87\192\26\250\67\197\44", "\34\169\73\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\135\229\5", "\235\202\140\107")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\117\44", "\165\108\20\84\200\137\71\151")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\94\177\45\137\111\184\63", "\232\26\212\75")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\72\126\228\245\54\74\121", "\151\87\41\18\136")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\117\174\199\213", "\158\59\207\170\176")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\81\52\78\128\74\30\24\76\149", "\236\47\62\83\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\165\33\60", "\226\154\201\64\91\202")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\118\41\23\77\187\205\76\54\29\83", "\220\161\41\125\120\42"),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\116\166\15\169\125\180", "\110\220\17\192")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\68\117\53\25\238\63\254\171\112\124\38", "\199\20\25\84\122\139\87\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\119\27\216\189\8\170\108\12\196\224\85\164", "\138\39\105\189\206\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\60\6\133\33\241\248\204\244", "\159\127\103\233\77\147\153\175")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\56\207\208\165\71\204\11\245\207\175\89", "\171\103\144\132\202\32")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\47\16\202\25\2\61\236\2\4\27\225\9\29\42", "\108\112\79\137")] or LUAOBFUSACTOR_DECRYPT_STR_0("\27\199\114\41\184\13\253", "\85\95\162\20\72\205\97\137"));
	end;
	return WindowAPI;
end;
return Library;
