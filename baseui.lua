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
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\156\114\123\47\31\113\209\70\177", "\35\200\29\28\72\115\20\154")]="L",[LUAOBFUSACTOR_DECRYPT_STR_0("\45\183\212\210\136\2\53\20\186", "\84\121\223\177\191\237\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\83\207\161\47\92\36", "\161\219\54\169\192\90\48\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\9\63\76", "\69\41\34\96")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\155\214\222\57\1\42\176\198", "\75\220\163\183\106\98")]=1};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\191\143", "\185\98\218\235\87")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\46\38\232\217\175", "\202\171\92\71\134\190")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\196\32\132\38\214", "\232\73\161\76")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\208\79\88", "\126\219\185\34\61")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\220\91\119\112", "\135\108\174\62\18\30\23\147")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\240\43\197", "\167\214\137\74\171\120\206\83")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\252\39\88", "\199\235\144\82\61\152")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\3\171\59\11\19", "\75\103\118\217")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\93\126\31", "\126\167\52\16\116\217")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\38\41\148\177\86\219\218\43\57", "\156\168\78\64\224\212\121")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\35\235\163\207\18\226\177", "\174\103\142\197")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\97\33\81\60\42\73\218\113", "\152\54\72\63\88\69\62")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\205\234\89\214\197\252\126\243", "\60\180\164\142")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\74\0\36\5\202", "\114\56\62\101\73\71\141")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\234\216\193\182\253\138", "\164\216\137\187")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\229\50\183\168\234\89", "\107\178\134\81\210\198\158")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\1\133\193\166\61\33\172", "\202\88\110\226\166")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\10\154\227", "\170\163\111\226\151")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\53\170\44\106\54\59\26", "\73\113\80\210\88\46\87")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\56\223\29\236\132", "\135\225\76\173\114")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\41\227\183\167", "\199\122\141\216\208\204\221")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\154\212\30\244\119\225\143\250", "\150\205\189\112\144\24")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\141\187\73\6\137\3\50\2", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\11\2\222\148\91", "\230\180\127\103\179\214\28")]=Color3.fromRGB(225, 225, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\6\92\67\234\85\177", "\128\236\101\63\38\132\33")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\170\18\65\184\255\157", "\175\204\201\113\36\214\139")]=Color3.fromRGB(180, 180, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\195\50\219\8\66\227\27", "\100\39\172\85\188")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\125\161\148", "\83\205\24\217\224")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\192\213\41\194\196\223\54", "\93\134\165\173")]=Color3.fromRGB(100, 100, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\230\211\205\49\203", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(200, 200, 210)},[LUAOBFUSACTOR_DECRYPT_STR_0("\213\71\126\1\252", "\106\133\46\16")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\111\41\125\248\85\87\122\7", "\32\56\64\19\156\58")]=Color3.fromRGB(50, 40, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\193\225\83\88\243\146\120\239", "\224\58\168\133\54\58\146")]=Color3.fromRGB(35, 25, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\66\78\240\87\161", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(70, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\136\18\240\183\200\158", "\175\187\235\113\149\217\188")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\172\130\73\237\109\42", "\24\92\207\225\44\131\25")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\220\191\75\23\120\100\253", "\29\43\179\216\44\123")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\56\88", "\44\221\185\64")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\226\80\75\87\0\245\67", "\19\97\135\40\63")]=Color3.fromRGB(180, 150, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\72\33\52\36\52", "\81\206\60\83\91\79")]=Color3.fromRGB(100, 60, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\121\162\222\118\32\212\111\131", "\196\46\203\176\18\79\163\45")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\156\39\120\31\49\247\251", "\143\216\66\30\126\68\155")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\193\9\206\199\162\197\195\141", "\129\202\168\109\171\165\195\183")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\6\93\49\217\203\24\242", "\134\66\56\87\184\190\116")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\37\12\182\59\204", "\85\92\81\105\219\121\139\65")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\217\182\86\68\105\211\233", "\191\157\211\48\37\28")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\28\247\25\52\203\44\224\29\40\203", "\90\191\127\148\124")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\92\130\40\22\109\139\58", "\119\24\231\78")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\163\46\166\79\210\84\52\140\41", "\113\226\77\197\42\188\32")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\30\19\242\180\47\26\224", "\213\90\118\148")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\33\179\81\65\94\1\154", "\45\59\78\212\54")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\52\83\133\138\147\34\185", "\144\112\54\227\235\230\78\205")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\45\23\232", "\59\211\72\111\156\176")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\106\130\229\44\91\139\247", "\77\46\231\131")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84\158\85\164\75", "\32\218\52\214")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\106\18\55\169\228\188\81", "\58\46\119\81\200\145\208\37")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\165\3\184\187\178\61\46\175\63\160\166\175", "\86\75\236\80\204\201\221")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\86\68\113\132\235\135\102", "\235\18\33\23\229\158")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\119\168\192\191\89\191\207\175\67", "\219\48\218\161")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\208\120\104\69\222\104\242\229\117\117\76\213\91\243", "\128\132\17\28\41\187\47")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\34\61\20\52\88\19\33", "\61\97\82\102\90")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\138\60\170\70\194\68", "\105\204\78\203\43\167\55\126")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\135\173\14\31\26\10", "\49\197\202\67\126\115\100\167")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\21\92\236\32\132\83\92\54\73", "\62\87\59\191\73\224\54")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\197\5\211\221\226\15\233", "\169\135\98\154")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\248\99\54\91\246\54\219", "\168\171\23\68\52\157\83")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\192\116\237\185\54", "\231\148\17\149\205\69\77")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\180\162\223\239\115\254\146\172\212", "\159\224\199\167\155\55")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\195\242\62\193", "\178\151\147\92")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\184\242\75\53\30\73\105", "\26\236\157\44\82\114\44")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\1\39\219\92\13\43\219", "\59\74\78\181");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\33\212\92\91\166\41\197\20\80\160\42\223", "\211\69\177\58\58");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\163\237\124\248\236\216\249\239\106\250\231", "\171\215\133\25\149\137");
Library.ActiveLoops = {};
Library.MainScale = nil;
Library.CurrentTab = nil;
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\243\202\42\251\252\35\249\86\232\204\104\181\160\105\172\16\180\153\101\168\189\104\165\21\182\152\101", "\34\129\168\82\154\143\80\156");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\182\166\50\25\92\75\155\162\167\58", "\233\229\210\83\107\40\46")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\242\71\60\210\43\206\86\59\208\12\194\67\38\223\10\207", "\101\161\34\82\182"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\220\4\77\242\222", "\78\136\109\57\158\187\130\226")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\58\225\229", "\145\94\95\153")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\216\6\212\90\190\242\195", "\215\157\173\116\181\46")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\33\181\137\254\223", "\186\85\212\235\146")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\236\142\2\247\63\231\91\195\149\31\241\55", "\56\162\225\118\158\89\142"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\114\10\212\166\36\209\95\4\212\166\45\214", "\184\60\101\160\207\66"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\37\131\126\176\52", "\220\81\226\28"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\7\212\128\247\239", "\167\115\181\226\155\138"))) then
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
					if saveKey then
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\221\26\216\111\120\112\202\231", "\166\130\66\135\60\27\17")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\123\114\241\90\54\66\89\203\97", "\80\36\42\174\21")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\113\41\8\73\77\17\59\127", "\26\46\112\87")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\134\26\148\91\185\185\86\177\173", "\212\217\67\203\20\223\223\37")] = object.Position.Y.Offset;
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
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	end
	for _, obj in pairs(Library.ThemeObjects.TitleGradients) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\22\20\219\155\250\218\184\50\21", "\221\81\97\178\212\152\176")) then
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\206\232\19\253\19\202\169\23\232\21\195", "\122\173\135\125\155");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\175\200\14\190\24\52\198\177\232", "\168\228\161\96\217\95\81")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\240\216\32\91\26\126", "\55\187\177\78\60\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\12\194\77\238\71\203\153\109\252\74\229\72\198\142\42", "\224\77\174\63\139\38\175"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\66\74\43\129\79\127\59\141", "\78\228\33\56"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\229\119\188\4\162\203\112\135\42", "\229\174\30\210\99");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\255\135\92\232", "\89\123\141\230\49\141\93"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\222\112\255\2\54\88\242\124\243", "\42\147\17\150\108\112");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\143\30\124\230\228\10", "\136\111\198\77\31\135"), MainFrame);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\61\54\128\67\180\215\20\168\14\12", "\201\98\105\199\54\221\132\119")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\37\164\51\3\49\165\188\2\151", "\204\217\108\227\65\98\85"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\234\214\234\62\206\91\209", "\160\62\163\149\133\76"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\62\59\209\217\171\8", "\163\182\192\109\79"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\15\33\211\229\49\37\20\242\244\32\47\15\227\250\58\53\20\210\244\61\40\20", "\149\84\70\96\160"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\62\228\34\3\46\226\54\21\25\255\57\15\3\249", "\141\88\102\109"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\135\86\210\100\56\40\65\213\188\93", "\161\211\51\170\16\122\93\53"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\210\160\162\61\239\140\190\39\248\165\183\58", "\72\155\206\210");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\96\104\85\3\54", "\83\38\26\52\110"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\108\30\51\74\93\53\38\84", "\38\56\119\71");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\198\127\196\36\82\250\234\86\194", "\54\147\143\56\182\69"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, TitleBarGradient);
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\255\140\254\78\218\250\128\253\76\211", "\191\182\225\159\41"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\23\48\65\167\134\192\46\30", "\162\75\114\72\53\235\231"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\167\21\106\197\19\37\169\18", "\98\236\92\36\130\51");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\28\20\174\103\189\161\36\171\23", "\80\196\121\108\218\37\200\213"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\90\33\112\89\0\143\18", "\234\96\19\98\31\43\110"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\36\30\81\204\171\96\132\19\17\86\228\163\126\132\20\76", "\235\102\127\50\167\204\18")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\111\158\192\10\123\3\121\143\220\14\109\20\117\133", "\78\48\193\149\67\36")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\29\146\29\68\62\57\149\17", "\33\80\126\224\120"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\199\138\22\208\72\227\166\36\209\85", "\60\140\200\99\164");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\174\249\5\33\167\165\225\16\50\173\137", "\194\231\148\100\70"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\224\176\230\205\69\88\243\162\226\193\73\111\206\173\229\220\84\77\200\173\226", "\168\38\44\161\195\150"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\195\169\73\0\199\133\41\184\195\177\117\49\228\179", "\118\224\156\226\22\80\136\214")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\125\209\114\191\114\193\106\191\122\209\106\131\67\226\92", "\224\34\142\57")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\225\152\238\226\67\222\110\49\230\152\234\219\117\226\88\26", "\110\190\199\165\189\19\145\61")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\229\212\92\215\187\232\233\212\78\215\184\196\219\231\114", "\167\186\139\23\136\235")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\37\138\163\50\42\154\187\50\35\138\167\11\28\166\141\25", "\109\122\213\232")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\209\200\137\15\222\216\145", "\80\142\151\194"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\60\249\66\101\60\235\94\98\42\235\94\118\38\226", "\44\99\166\23")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\67\200\2\9\0\173\102\242", "\196\28\151\73\86\83")] or DEFAULTS.KSize;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\195\12\58\25\150\81\23\120", "\22\147\99\73\112\226\56\120")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\122\246\244\153\177\122\236", "\237\216\21\130\149")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\171\67\94\88\181\253\76\131\64\76\79\177\219\91\140\77\70", "\62\226\46\63\63\208\169")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\214\16\79\134", "\62\133\121\53\227\127\109\79")]=UDim2.new(0, kSize, 0, kSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\57\25\51\242\211\154\176\17\26\33\229\215\188\167\30\23\43", "\194\112\116\82\149\182\206")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\161\86\29", "\110\89\200\44\120\160\130")]=UDim2.new(0, kSize * 0.8, 0, kSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\155\204\88\79\87\67\52\67", "\45\203\163\43\38\35\42\91")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\138\200\34\147\160\91\220", "\52\178\229\188\67\231\201")]=0}):Play();
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\30\126\101\45\200\113\10\15\104\125\45\205\121\7", "\67\65\33\48\100\151\60")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\224\216\133\231\192\214\253\171", "\147\191\135\206\184")] or DEFAULTS.KSize;
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
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\187\23\146\206\223\84\190\129\3\163\216", "\210\228\72\198\161\184\51")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\9\118\198\57\76\227\31\103\218\61\90\244\19\109", "\174\86\41\147\112\19")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\100\63\184\34\26\34\56\133\114\45\164\49\0\43", "\203\59\96\237\107\69\111\113")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\27\41\135\222\2\249\205\33", "\183\68\118\204\129\81\144")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\40\191\113\233\14", "\226\110\205\16\132\107"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\216\202\228\220\67\234\209\195\214\79\255\194\233\215\68\249", "\33\139\163\128\185");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\35\204\86\92\13\219\89\76", "\190\55\56\100"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\134\15\10\1\236\248\83", "\147\54\207\92\126\115\131"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\50\39\114\1\114\4\63\50\91\31\127\0\52", "\30\109\81\85\29\109"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\120\191\37\202\208\254\104\91\163\34", "\156\159\17\52\214\86\190"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\198\141\189\170\235\180\178\169", "\220\206\143\221"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\29\22\220\200\219\136\122", "\178\230\29\77\119\184\172"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\172\11\22\114", "\152\149\222\106\123\23"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\15\198\66\177\217\47\248\68", "\213\189\70\150\35"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\80\108\28\109\64\96\28\64\91", "\104\47\53\20"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\101\162\19\174\1\166\94", "\111\195\44\225\124\220"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\111\51\103\185\164\211\67", "\203\184\38\96\19\203"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\97\120\79\221\41\114\107\68\192\58\106", "\174\89\19\25\33")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\29\94\65\229", "\107\79\114\50\46\151\231")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\180\180\39\153\41\182\210\60\168\182\48", "\160\89\198\213\73\234\89\215")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\107\126\184\241\215", "\165\40\17\212\158")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\205\6", "\70\133\185\104\83")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\68\73\47", "\169\100\37\36\74")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\147\176\95\11\130", "\48\96\231\194")]=TabBtnStroke});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\234\78\0", "\227\168\58\110\77\121\184\207")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\85\61\178\69", "\197\27\92\223\32\209\187\17")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\75\209\244\8\90", "\155\99\63\163")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\210\179\130\181\136\139\223\166\171\171\133\143\212", "\228\226\177\193\237\217"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\11\128\34\225\49", "\134\84\208\67");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\133\170\85\0\184\170\93\10\163\147\72", "\60\115\204\230"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\19\219\113\227\62\226\126\224", "\16\135\90\139"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\102\7\62\75", "\24\52\20\102\83\46\52")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\234\46\44\33", "\111\164\79\65\68")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\203\130\211\43", "\138\166\185\227\190\78"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\255\113\221\35\126\34\27\206\120", "\121\171\20\165\87\50\67"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\61\161\34\155\23\210\44\182\56", "\98\166\88\217\86\217"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\223\90\14\148\210\243\228", "\188\150\150\25\97\230"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\160\108\22\30\226\209\140", "\141\186\233\63\98\108"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\222\196", "\69\145\138\76\214")) or LUAOBFUSACTOR_DECRYPT_STR_0("\95\233\175", "\118\16\175\233\233\223");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.ToggleON) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\169\133\54\176\233\153\114\158\138\49\152\225\135\114\153\215", "\29\235\228\85\219\142\235")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\30\219\182\210\101", "\50\93\180\218\189\23\46\71")]=((val and Theme.ToggleON) or Theme.UIStrokeColor)}):Play();
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\235\180\95\77\80\217", "\40\190\196\59\44\36\188")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\73\221\179", "\109\92\37\188\212\154\29")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\37\236\176\202\62\84\68\203\161\205\56\95\0", "\58\100\143\196\163\81"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\57\67\45\173\48\93\165\11\20\67\33\175\58\9\241\6\19\81\99\177\54\78\237\26\90\76\44\180\113", "\110\122\34\67\195\95\41\133"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\83\163\90\71\211", "\182\21\209\59\42"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\221\9\13\191\181\82\201", "\222\215\55\165\125\65"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\195\199\23\247", "\42\76\177\166\122\146\161\141"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\38\193\107\120\160\152", "\22\197\234\101\174\25"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\29\150\200\100\160\220\131", "\230\77\84\197\188\22\207\183"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\17\222\232\160\160\242\48\245", "\85\153\116\166\156\236\193\144"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\242\76\190\225", "\96\196\128\45\211\132"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\88\80\192\161\177\202", "\184\85\237\27\63\178\207\212"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\75\8\82\13", "\63\104\57\105"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\174\135\75\25\137\161\86", "\36\107\231\196"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\133\149\92\177\171\130\83\161", "\231\61\213\194"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\191\60\126\12", "\19\105\205\93"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\13\198\149\19\168\10\219\141", "\95\201\104\190\225"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\206\217\218\141\222\213\218\160\197", "\174\207\171\161"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\215\46\252\234\217\232\236", "\183\141\158\109\147\152"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\10\244\3\32\5\239\2\43\47\244\13\33\12", "\108\76\105\134"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\207\215\190\241\202\228\210\191\210\205\249\202\189\237", "\174\139\165\209\129");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\154\193\206\212\13\117\106", "\24\195\211\130\161\166\99\16"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\42\197\37\64\2\106\2\240\35\70\2", "\118\38\99\137\76\51"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\220\36\22\29\5\53\233\35\38\29\7\52\248\40\17\33\0\58\248", "\64\157\70\101\114\105")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\116\173\191\247\50\79\176", "\112\32\200\199\131"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\31\85\93\170\192\163\108\98\30", "\66\76\48\60\216\163\203");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\175\90\252\77\192\33\168", "\68\218\230\25\147\63\174"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88", "\214\205\74\51\44")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\206\73\250\232\85\239\88\246\243\121", "\23\154\44\130\156")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\163\181\186\20\6\5\178\162\160", "\115\113\198\205\206\86"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78\166\66\234\78\139\89", "\58\228\55\158")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58\30\184\33\160\134\222", "\85\212\233\176\78\92\205"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\74\137\239\79", "\130\42\56\232"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\176\60\247\108\62\232\176\40", "\95\138\213\68\131\32"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\45\185\87\84\63\60\181\76\120", "\22\74\72\193\35"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\31\124\232\93\47\109\164\113\56\124\233\75\98\55\170", "\56\76\25\132");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\232\136\41\221\80\196\185", "\175\62\161\203\70"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\222\209\28\57\48\212\205\20\19\46\220\206\22", "\85\92\189\163\115"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\4\185\60\44\32\136\34\55\57\168\63\47\39\159\51\42\38\160\60", "\88\73\204\80");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\170\51\73\59\212\43\145", "\186\78\227\112\38\73"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\126\209\92\64\110\208\86\228\90\70\110", "\26\156\55\157\53\51"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\173\218\5\214\180\69\152\221\53\214\182\68\137\214\2\234\177\74\137", "\48\236\184\118\185\216")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\184\79\36\237\59\253", "\84\133\221\55\80\175"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\142\226\37\180\196\84\243\169\106", "\60\221\135\68\198\167");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\148\219\140\80\215\235\175", "\185\142\221\152\227\34"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238", "\151\56\165\55\154\35\83")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\148\70\29\250\130\86\17\250\175\77", "\142\192\35\101")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\150\70\44\175\226\143\184\19\210", "\118\182\21\73\195\135\236\204"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\59\57\22\69\7\25\189\33\40\31\77\23\67\179\70", "\157\104\92\122\32\100\109");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\163\215\222\31\50\153\191\172\168", "\203\195\198\175\170\93\71\237"), Scroll);
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
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\40\177\91\80\169\213\172\231\35", "\216\136\77\201\47\18\220\161"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\197\8\213\26\210\135\63", "\226\77\140\75\186\104\188"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\220\209\50\74", "\47\217\174\176\95"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\216\110\22\158\85\122\35\180", "\70\216\189\22\98\210\52\24"), Frame);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\218\187\147\241\213\199", "\179\186\191\195\231"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\220\49\12\225\235\127\12\225\225\43\88\236\252\45\29\170\183\113", "\132\153\95\120");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\155\45\34\229\212\165\163", "\192\209\210\110\77\151\186"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\17\35\228\250", "\164\128\99\66\137\159"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\140\241\170\34\156\253\170\15\135", "\222\96\233\137"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\154\128\13\137\247\249\188\189\179", "\144\217\211\199\127\232\147"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\6\29\39\199\75\7\86", "\36\152\79\94\72\181\37\98"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\228\209\93\58", "\95\183\184\39")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\134\54\253\35", "\98\213\95\135\70\52\224")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\177\200\122\81", "\52\158\195\169\23"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\92\174\51\121\131", "\235\26\220\82\20\230\85\27"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\188\164\241\214\88\137\163\236\206", "\20\232\193\137\162"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\14\222\199\163\235", "\17\66\191\165\198\135\236\119");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\189\175\30\250", "\177\111\207\206\115\159\136\140"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\140\8\0\248\78\93\0\133", "\63\101\233\112\116\180\47"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\231\50\254\17\247\36\199", "\86\163\91\141\114\152");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\103\14\108\103\24\92\19", "\90\51\107\20\19"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\217\166\224\47\131\245\151", "\93\237\144\229\143"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\243\232\13\41\83\1\226\255\23", "\38\117\150\144\121\107"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\14\180\254\35\109\151\231\52\38", "\90\77\219\142");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\45\2\54\94\9\127\244", "\26\134\100\65\89\44\103"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\202\23\49\165\245\234\53\45\176", "\196\145\131\80\67"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\61\191\22\1\29\236\95", "\136\126\208\102\104\120");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\91\133\222\90\239\126\52\95\115", "\49\24\234\174\35\207\50\93");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\47\254\244\152\115\3\243\239\140\49\57\252\252\158\112\5\254\252\138\125\9", "\17\108\146\157\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\104\194\26\227\32\188\11\192\27\253\54\232\68\205\84\249\39\161\88\131\17\245\42\171\94\215\27\255\97", "\200\43\163\116\141\79"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\156\36\56\135\185\224\240", "\131\223\86\93\227\208\148"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\64\174\162", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\40\55\182\241\50\107\7\166\187\102\7\44\165\228\2\46\51", "\129\70\75\69\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\199\250\238\114", "\143\38\171\147\137\28")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\141\181\252\17", "\180\176\226\217\147\99\131")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\253\184\34\2", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\110\190\15\214\78\158\167\10\132\25\199\87\137\177", "\195\42\215\124\181\33\236"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\80\57\53", "\152\109\57\87\94\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\241\195\30\179\173\136\27\231\253\222\25\160\177\192\80\230\254\208\69\145\182\246\90\157\200\197\94\135\171", "\200\153\183\106\195\222\178\52")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\230\144\41", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\95\213\24\88\44\195\17\144\54\82\51\140\69\195", "\95\227\55\176\117\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\114\42\76\165", "\203\120\30\67\43")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\213\32\75\238\204\253\49", "\185\145\69\45\143"),LUAOBFUSACTOR_DECRYPT_STR_0("\185\17\22\177", "\188\234\127\121\198"),LUAOBFUSACTOR_DECRYPT_STR_0("\8\59\29\136\33", "\227\88\82\115")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\109\30\183\162", "\19\35\127\218\199\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\47\254\6\231\31\239\74\214\20\254\7\231", "\130\124\155\106"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\199\247\168", "\223\181\171\150\207\195\150\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\5\192\187\27\94\63\237\186\61\68\63\238\171", "\105\44\90\131\206"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\233\161\173", "\94\159\128\210\217\104")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\252\0\190\74\115\237", "\26\48\153\102\223\63\31\153")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\61\127\206\230\16\82\232\253\22\116\229\246\15\69", "\147\98\32\141")] or LUAOBFUSACTOR_DECRYPT_STR_0("\60\70\229\203\19\90\95", "\43\120\35\131\170\102\54")),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\7\139\186\167\177\135\95", "\228\52\102\231\214\197\208")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\225\120\207", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\219\35\227\198\48\37\20\153\223\59\242\198\39\56\3\134\223\117\199\149\93\126\72", "\102\235\186\85\134\230\115\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\0\63\88", "\66\55\108\94\63\18\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\178\171\50\48\109\28\136\136\50\9\88\25\136", "\57\116\237\229\87\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\189\236\228\114\230\72\166\181\232\245", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\59\12\7\55\184\209\50\4\15", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\199\93\254\203\93\130\205", "\60\225\166\49\146\169")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\31\34\47", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\126\197\118\30\46\178\122\222\118", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\215\193\205\203\160\70\184", "\37\211\182\173\161\169\193")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\99\220\63\79\177\242\55\72\247\41\118\188", "\217\151\90\45\185\72\27")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\117\233\22\89\212\94\192", "\54\163\28\135\114")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\210\89\135\76\126\58\249\122", "\31\72\187\61\226\46")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\18\70\223\101\89", "\68\163\102\35\178\39\30")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\115\217\194\13\161\210", "\113\222\16\186\167\99\213\227")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\13\248\243\32\26\169", "\150\78\110\155")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\202\32\230\168\27\144\110", "\32\229\165\71\129\196\126\223")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\140\220\149", "\181\163\233\164\225\225")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\142\38\99\116\138\44\124", "\23\48\235\94")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\79\206\202\82\92\54", "\178\28\186\184\61\55\83")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\196\83\48\247", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\47\21\18\31", "\123\147\71\112\127\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\140\101\67\194\217", "\38\172\173\226\17")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\126\16\58\234\73\81\56\231\72\28\41\181\13", "\143\45\113\76") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\156\189\26\61\173\180\8", "\92\216\216\124"),LUAOBFUSACTOR_DECRYPT_STR_0("\104\60\163\87", "\157\59\82\204\32"),LUAOBFUSACTOR_DECRYPT_STR_0("\8\55\237\241\240", "\209\88\94\131\154\137\138\179")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\6\160\201\121", "\66\72\193\164\28\126\67\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\41\164\93\50\115\167\15\189\74\52\115\233\56\232\108\46\115\234\41", "\22\135\76\200\56\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\49\244\40\95\224\142\59", "\129\237\80\152\68\61")]=function()
			local current = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\110\151\39\230\14\5\93\95\188\48\251\25\26\93", "\56\49\200\100\147\124\119")];
			if ((current == LUAOBFUSACTOR_DECRYPT_STR_0("\232\59\185\241\217\50\171", "\144\172\94\223")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\23\1\173\80", "\39\68\111\194")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\230\175\233\204\96", "\215\182\198\135\167\25"))) then
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\185\64\254\68\136", "\40\237\41\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\102\232\247\88", "\42\167\20\154\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\241\172\86\116\47\94", "\65\42\158\194\34\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\38\92\2\34\249\91\234\31\43\87\24\40\173\25\251\19\43\70\65\36\227\91\250\18\34\95\9\62\163", "\142\122\71\50\108\77\141\123")});
				return;
			end
			if Library.SavedThemes[current] then
				Library.SavedThemes[current] = nil;
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\171\235\20\62", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\21\59\21\48", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\19\193\74\205\215\174", "\218\119\124\175\62\168\185")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\129\245\68\193\177\245\76\158\229", "\164\197\144\40") .. current)});
				Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\167\245\172\138\200\186\151", "\214\227\144\202\235\189"));
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\201\160\129\122\5\191\71", "\92\141\197\231\27\112\211\51"),LUAOBFUSACTOR_DECRYPT_STR_0("\213\241\133\180", "\177\134\159\234\195"),LUAOBFUSACTOR_DECRYPT_STR_0("\141\226\49\171\208", "\169\221\139\95\192")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
				ThemeDropdown:Set(LUAOBFUSACTOR_DECRYPT_STR_0("\250\142\121\62\55\42\202", "\70\190\235\31\95\66"));
			else
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\142\235\14\234\224", "\133\218\130\122\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\237\241\203\206", "\88\92\159\131\164\188\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\163\33\177\95\210\229\201", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\244\143\27\196\110\242\133\2\129\40\243\159\24\197\110\245\132\86\210\47\234\143\5\143", "\161\78\156\234\118")});
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\178\209\200", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\28\76\111\231\241\73\124\116\228\243\27\76", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\128\112\51\21", "\84\123\236\25")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\222\138\167\18", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\19\10\215\39\41\49\84\99\57\221\41\45\45\89\99\59\209\38\39\49", "\45\67\120\190\74\72\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\46\236\162", "\137\64\66\141\197\153\232\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\239\1\169\132\12\194\17\163\132\6\211\54\247", "\232\99\176\66\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\40\59\18", "\76\140\65\72\102\27\237\153")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\223\16\211\194\13\170", "\222\42\186\118\178\183\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\249\86\154\81\233", "\234\61\140\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\220\182\126\13\32\222\177", "\111\65\189\218\18")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentStart = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\109\74\22\48", "\207\35\43\123\85\107\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\67\175\163\229\119\116\171\178\243\57\81\169\163\239\119\100\234\131\229\117\127\184", "\25\16\202\192\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\199\172\229", "\148\157\171\205\130\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\235\87\38\221\249\49\231\113\37\212\245\55\134", "\150\67\180\20\73\177"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\17\9\89", "\45\237\120\122")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\237\164\45\194\228\182", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\88\234\240\61", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\192\172\232\191\115\29\202", "\18\126\161\192\132\221")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentEnd = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\113\41\163\1", "\54\63\72\206\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\86\66\125\233\126\136\118\107\58\198\116\196\86\87", "\27\168\57\37\26\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\166\125\175", "\183\77\202\28\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\12\189\7\16\52\133\13\52\60\133\7\5\0\140\4\18\48\157", "\104\119\83\233"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\241\52\54", "\35\149\152\71\66")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\237\68\177\47\21\252", "\90\121\136\34\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\2\64\27", "\126\167\110\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\17\34\244\222\62\62\27", "\95\93\112\78\152\188")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.ToggleON = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\239\244\147\12\164\246\246\196\243\132\0\232\170\155", "\178\161\149\229\117\132\222")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\165\218\212\162", "\67\232\187\189\204\193\118\198")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\39\177\37", "\143\235\78\213\64\91\98")]=Color3.fromRGB(28, 26, 38)},[LUAOBFUSACTOR_DECRYPT_STR_0("\189\65\144\234\120\246\175\68\133\234\123", "\214\237\40\228\137\16")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\168\226\230\215", "\198\229\131\143\185\99")]=Color3.fromRGB(15, 15, 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\133\172\118", "\19\49\236\200")]=Color3.fromRGB(5, 5, 5)},[LUAOBFUSACTOR_DECRYPT_STR_0("\218\54\228\188\164\157\236\50\239", "\218\158\87\150\215\132")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\214\31\208\236", "\173\155\126\185\130\86\66")]=Color3.fromRGB(45, 45, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\175\190\194", "\140\133\198\218\167\232")]=Color3.fromRGB(30, 30, 30)},[LUAOBFUSACTOR_DECRYPT_STR_0("\153\39\179\117\144\245\3\187\121\129", "\228\213\78\212\29")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\170\77\191\11", "\139\231\44\214\101")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\230\2\91", "\118\185\143\102\62\112\209\81")]=Color3.fromRGB(255, 255, 255)},[LUAOBFUSACTOR_DECRYPT_STR_0("\120\117\44\246\229\39\25\60", "\88\60\16\73\134\197\117\124")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\125\235\241\198", "\33\48\138\152\168")]=Color3.fromRGB(40, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\65\31\52\84", "\87\18\118\80\49\161")]=Color3.fromRGB(25, 10, 10)},[LUAOBFUSACTOR_DECRYPT_STR_0("\104\27\223\176\240\107\12\223\165\190", "\208\44\126\186\192")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\218\27\173\200", "\46\151\122\196\166\116\156\169")]=Color3.fromRGB(20, 40, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\228\66\31", "\155\133\141\38\122")]=Color3.fromRGB(10, 25, 10)}};
		local bgNames = {};
		for n, _ in pairs(bgOptions) do
			table.insert(bgNames, n);
		end
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\43\161\68", "\197\69\74\204\33\47\31")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\78\89\140\247\93\85\146\254\75\26\164\255\67\85\149", "\231\144\47\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\212\219\114", "\89\210\184\186\21\120\93\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\108\94\210\74\63\189\86\127\193", "\90\209\51\28\181\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\114\68\250", "\223\176\27\55\142")]=bgNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\0\190\200\180\49\183\218", "\213\68\219\174")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\225\53\254\106\141\27\122\13\225\54\235\62\140", "\31\107\128\67\135\74\165\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\233\240\65\67\176\219\227", "\209\184\136\156\45\33")]=function(val)
			local choice = bgOptions[val];
			if choice then
				Theme.WindowBG = choice.Main;
				Theme.SidebarBG = choice.Side;
				local h, s, v = Color3.toHSV(choice.Main);
				if (v > 0.5) then
					Theme.ItemBG = Color3.fromHSV(h, s, v - 0.15);
				else
					Theme.ItemBG = Color3.fromHSV(h, s, v + 0.15);
				end
				Library:ApplyTheme(nil);
			end
		end});
		local textOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\192\124\28\189\71\128\81\13\190\6\221\121\28\241", "\216\103\168\21\104")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\72\184\81\161\56\154\75\173\108\168", "\196\24\205\35")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\135\226\5\37", "\102\78\235\131")]=Color3.fromRGB(20, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\43\56\72\72\46", "\84\154\78\84\36\39\89\215")]=Color3.fromRGB(255, 230, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\248\87\86", "\101\157\129\54\56")]=Color3.fromRGB(0, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\172\142", "\25\125\201\234\203\67")]=Color3.fromRGB(255, 80, 80)};
		local txtNames = {};
		for n, _ in pairs(textOptions) do
			table.insert(txtNames, n);
		end
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\87\245\21\6", "\115\25\148\120\99\116\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\56\161\48\1\47\50\181\43\83", "\33\108\93\217\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\71\160\170", "\205\187\43\193")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\77\49\199\234\65\0\211\251\113\17", "\191\158\18\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\202\148\163", "\207\165\163\231\215")]=txtNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\252\255\87\49\124\210", "\16\166\153\153\54\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\187\201\82\49\97\177\246\182\198\71\33\45\237\155", "\153\178\211\160\38\84\65"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\10\86\39\128\10\89\32", "\75\226\107\58")]=function(val)
			local col = textOptions[val];
			if col then
				Theme.Text = col;
				local h, s, v = Color3.toHSV(col);
				Theme.TextDark = Color3.fromHSV(h, s, v * 0.7);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\108\219\9\110", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\199\62\17\242\198", "\151\171\190\77\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\35\241\174\246", "\107\165\79\152\201\152\29")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\121\79\229\206", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\45\216\225\210\45\156\214\229\6\156\199\216\50\217", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\186\86\212", "\179\198\214\55")]=LUAOBFUSACTOR_DECRYPT_STR_0("\207\51\89\73\118\218\234\9", "\179\144\108\18\22\37"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\170\21", "\175\166\195\123\233")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\195\69", "\144\143\162\61\41")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\214\27\81\103\139\39", "\83\128\179\125\48\18\231")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\182\255\209\69\31\94\188", "\126\61\215\147\189\39")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\86\254\16\64", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\243\168\97\71\200\160\116\65\223\230\70\65\219\170\112", "\34\186\198\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\4\196\90", "\162\152\104\165\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\242\16\149\104\121\214\206\46\190\120", "\133\173\79\210\29\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\117\227", "\75\237\28\141")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\94\212", "\129\188\63\172\209\79\123\135")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\225\224\204\85\232\242", "\173\32\132\134")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\26\4\227\172\48\206\69", "\173\46\123\104\143\206\81")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\154\28\47\143", "\97\212\125\66\234\37\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\236\177\50\18\143\163\157\48\7", "\126\234\131\214\85"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\217\72\93", "\47\228\181\41\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\153\195\237\52\4\55\19\163\215\220\34", "\127\198\156\185\91\99\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\31\202\241\178\7\45", "\190\149\122\172\144\199\107\89")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\9\240\253\251\58\10\253\250\251\32", "\158\82\101\145\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\64\236\7\5\87\48\213\7\15\10\62\176", "\36\16\158\98\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\23\207\247\90\233\36\238", "\133\160\118\163\155\56\136\71")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\201\157\69\253\177\24\185\243\137\116\235", "\213\150\194\17\146\214\127")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\36\150\135\193\84\182\167\56\15\157\172\209\75\161", "\86\123\201\196\180\38\196\194")] or LUAOBFUSACTOR_DECRYPT_STR_0("\211\237\223\174\226\228\205", "\207\151\136\185"));
	end;
	return WindowAPI;
end;
return Library;
