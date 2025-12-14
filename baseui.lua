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
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\156\114\123\47\31\113\209\70\177", "\35\200\29\28\72\115\20\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\182\214\215\153\15\59\23\171\195\208\129", "\84\121\223\177\191\237\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\94\204\173\63\126\49\204\190", "\161\219\54\169\192\90\48\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\71\6\36\92\78\20", "\69\41\34\96"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\240\222\16\7", "\75\220\163\183\106\98")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\175\130\4\218\3\182\142", "\185\98\218\235\87")]=1};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\249\57\35", "\202\171\92\71\134\190")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\211\45\134\46\196", "\232\73\161\76")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\220\78\81\17\172", "\126\219\185\34\61")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\199\83\119", "\135\108\174\62\18\30\23\147")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\251\47\206\22", "\167\214\137\74\171\120\206\83")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\233\51\83", "\199\235\144\82\61\152")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\26\172\46", "\75\103\118\217")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\65\98\4\181\27", "\126\167\52\16\116\217")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\248\39\46\139", "\156\168\78\64\224\212\121")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\230\172\218\2\161\130\220\2\247", "\174\103\142\197")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\45\89\57\48\82\236", "\152\54\72\63\88\69\62")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\227\205\224\88\219\211\204\123", "\60\180\164\142")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\87\1\44\37\236\0\122\121", "\114\56\62\101\73\71\141")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\253\222\201\154\206", "\164\216\137\187")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\229\50\183\168\234\90", "\107\178\134\81\210\198\158")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\13\129\195\164\44\92", "\202\88\110\226\166")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\10\154\227", "\170\163\111\226\151")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\53\170\44\106\54\59\26", "\73\113\80\210\88\46\87")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\56\223\29\236\132", "\135\225\76\173\114")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\41\227\183\167", "\199\122\141\216\208\204\221")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\154\212\30\244\119\225\143\250", "\150\205\189\112\144\24")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\141\187\73\6\137\3\50\2", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\11\2\222\148\91", "\230\180\127\103\179\214\28")]=Color3.fromRGB(225, 225, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\6\92\67\234\85\177", "\128\236\101\63\38\132\33")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\170\18\65\184\255\157", "\175\204\201\113\36\214\139")]=Color3.fromRGB(180, 180, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\201\45\200", "\100\39\172\85\188")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\125\161\148\23\172\106\178", "\83\205\24\217\224")]=Color3.fromRGB(100, 100, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\209\223\50\237\192", "\93\134\165\173")]=Color3.fromRGB(200, 200, 210)},[LUAOBFUSACTOR_DECRYPT_STR_0("\142\251\207\201\35", "\30\222\146\161\162\90\174\210")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\210\71\126\14\234\89\82\45", "\106\133\46\16")]=Color3.fromRGB(50, 40, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\41\119\249\88\65\74\2\84", "\32\56\64\19\156\58")]=Color3.fromRGB(35, 25, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\220\224\91\120\213", "\224\58\168\133\54\58\146")]=Color3.fromRGB(70, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\85\72\248\123\146\214", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\136\18\240\183\200\157", "\175\187\235\113\149\217\188")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88", "\24\92\207\225\44\131\25")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\214\160\88\63\124\89\216", "\29\43\179\216\44\123")]=Color3.fromRGB(180, 150, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\205\50\67\182\220", "\44\221\185\64")]=Color3.fromRGB(100, 60, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\238\70\91\124\22\197\111", "\19\97\135\40\63")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\138\89\53\58\58\61\186", "\81\206\60\83\91\79")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\162\212\119\45\194\95\134\105", "\196\46\203\176\18\79\163\45")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\156\39\120\31\49\247\251", "\143\216\66\30\126\68\155")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\220\8\198\231\132", "\129\202\168\109\171\165\195\183")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\6\93\49\217\203\24\242", "\134\66\56\87\184\190\116")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\29\50\10\190\23\255\18\33\61\35\29", "\85\92\81\105\219\121\139\65")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\217\182\86\68\105\211\233", "\191\157\211\48\37\28")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\28\247\25\52\203\58\250\24", "\90\191\127\148\124")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\92\130\40\22\109\139\58", "\119\24\231\78")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\182\40\189\94", "\113\226\77\197\42\188\32")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\30\19\242\180\47\26\224", "\213\90\118\148")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\43\172\66\105\90\60\191", "\45\59\78\212\54")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\52\83\133\138\147\34\185", "\144\112\54\227\235\230\78\205")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\134\1\60\232\194\84\184\45\44\243\220\84\161", "\59\211\72\111\156\176")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\106\130\229\44\91\139\247", "\77\46\231\131")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\157\70\183\68\179\81\184\84\169", "\32\218\52\214")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\122\30\37\164\244\151\87\91\74\30\52\166\229\163", "\58\46\119\81\200\145\208\37")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\8\131\34\162\172\175\37", "\86\75\236\80\204\201\221")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\84\83\118\136\251\152", "\235\18\33\23\229\158")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\114\189\236\186\89\180", "\219\48\218\161")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\198\118\79\64\223\74\226\229\99", "\128\132\17\28\41\187\47")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\35\53\47\46\88\12\33", "\61\97\82\102\90")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\159\58\185\68\204\82\13", "\105\204\78\203\43\167\55\126")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\145\175\59\10\0", "\49\197\202\67\126\115\100\167")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\3\94\199\61\164\87\76\60\72", "\62\87\59\191\73\224\54")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\204\11\244\206\192\7\244", "\169\135\98\154");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\207\114\34\85\232\63\220\133\125\55\91\243", "\168\171\23\68\52\157\83");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\224\121\240\160\32\62\201\254\98\250\163", "\231\148\17\149\205\69\77");
Library.ActiveLoops = {};
Library.MainScale = nil;
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\146\165\223\250\68\236\133\179\206\255\13\176\207\254\151\169\2\174\215\245\149\163\14\168\215\247\144", "\159\224\199\167\155\55");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\196\231\61\192\227\246\46\245\226\250", "\178\151\147\92")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\191\248\66\54\60\67\110\133\251\69\49\19\88\115\131\243", "\26\236\157\44\82\114\44"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\30\39\193\87\47", "\59\74\78\181")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\212\66\78", "\211\69\177\58\58")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\147\240\107\244\253\194\184\235", "\171\215\133\25\149\137")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\245\201\48\246\234", "\34\129\168\82\154\143\80\156")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\171\189\39\2\78\71\138\132\166\58\4\70", "\233\229\210\83\107\40\46"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\239\77\38\223\3\200\65\51\194\12\206\76", "\101\161\34\82\182"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\252\12\91\242\222", "\78\136\109\57\158\187\130\226"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\42\62\251\253\59", "\145\94\95\153"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\194\245\43\230\77\182\241\200", "\215\157\173\116\181\46")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\10\140\180\221\220\51\167\142\230", "\186\85\212\235\146")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\253\184\41\205\58\239\84\199", "\56\162\225\118\158\89\142")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\99\60\255\128\36\222\79\0\212", "\184\60\101\160\207\66")] = object.Position.Y.Offset;
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
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\6\139\114\184\62\149\94\155", "\220\81\226\28")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\220\134\254\232\198\1\247\165", "\167\115\181\226\155\138")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\54\226\81\89\86", "\166\130\66\135\60\27\17")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\73\205\112\62\80\27", "\80\36\42\174\21")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\19\52\127\64\4\101", "\26\46\112\87")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\38\179\96", "\212\217\67\203\20\223\223\37")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\136\176\198\158\140\186\217", "\178\218\237\200")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\161\244\223\189\176", "\176\214\213\134")]=ToColor(saved.Stroke)};
		end
		if data then
			Theme.WindowBG = data.WindowBG;
			Theme.SidebarBG = data.SidebarBG;
			Theme.ItemBG = data.ItemBG;
			Theme.AccentStart = data.Accent1;
			Theme.AccentEnd = data.Accent2;
			Theme.Text = data.Text;
			Theme.TextDark = data.TextDark;
			Theme.UIStrokeColor = data.Stroke;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\203\146\149\193\186\68\92\250\185\130\220\173\91\92", "\57\148\205\214\180\200\54")] = themeName;
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
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\53\232\60\27\116\24\248\54\32", "\22\114\157\85\84")) then
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
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\199\196\29\194\84\241\230\206\216\28\202", "\200\164\171\115\164\61\150");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\149\253\13\66\164\187\250\54\108", "\227\222\148\99\37")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\24\91\92\241\204\26", "\153\83\50\50\150"), LUAOBFUSACTOR_DECRYPT_STR_0("\124\122\97\25\114\175\84\29\68\102\18\125\162\67\90", "\45\61\22\19\124\19\203"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\17\31\240\7\126\158\212\27", "\217\161\114\109\149\98\16"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\57\41\54\123\155\113\28\21\17", "\20\114\64\88\28\220");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\19\211\185\253", "\221\81\97\178\212\152\176"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\224\230\20\245\60\223\230\16\254", "\122\173\135\125\155");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\232\51\186\62\61\205", "\168\228\161\96\217\95\81"), MainFrame);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\228\238\9\73\38\100\216\208\34\89", "\55\187\177\78\60\79")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\231\120\249\71\203\137\40\192\75", "\224\77\174\63\139\38\175"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\104\123\33\150\79\93\60", "\78\228\33\56"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\87\129\23\151\193\117\183", "\229\174\30\210\99"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\167\66\253\56\58\15\223\135\69\228\50\26\20\227\149\69\255\60\48\21\249", "\89\123\141\230\49\141\93"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\88\197\5\10\79\208\126\248\31\4\88\242\120\248\24", "\42\147\17\150\108\112"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
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
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\42\61\194\210\169\8\33\215", "\163\182\192\109\79"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, TitleBarGradient);
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\43\1\199\240\24\39\2\197\249", "\149\84\70\96\160"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\3\21\249\20\7\15\232\52", "\141\88\102\109"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\152\122\228\87\90\26\112\239", "\161\211\51\170\16\122\93\53");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\171\170\60\217\187\166\60\244\160", "\72\155\206\210"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\83\119\1\33\72\127\70", "\83\38\26\52\110"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\122\22\36\77\95\5\40\83\86\19\4\73\84\24\53\21", "\38\56\119\71")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\204\208\109\255\26\123\218\193\113\251\12\108\214\203", "\54\147\143\56\182\69")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\130\237\76\218\216\166\234\64", "\191\182\225\159\41"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\0\48\61\65\159\136\204\12\7\33", "\162\75\114\72\53\235\231");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\165\49\69\229\86\32\153\40\80\237\93", "\98\236\92\36\130\51"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\45\169\85\173\182\36\150\24\24\179\74\139\186\62\183\13\30\187\76\166\161", "\80\196\121\108\218\37\200\213"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\63\76\41\64\123\33\185\63\75\61\76\72\15\134\5", "\234\96\19\98\31\43\110")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\57\32\121\248\156\93\184\57\39\109\244\175\115\135\3", "\235\102\127\50\167\204\18")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\111\158\222\28\116\1\99\158\205\28\107\40\86\178\240\55", "\78\48\193\149\67\36")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\15\33\171\39\113\31\45\191\33\126\3\29\129\20\68", "\33\80\126\224\120")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\211\151\40\251\108\195\155\60\253\99\195\174\5\215\89\248", "\60\140\200\99\164")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\184\203\47\25\146\168\199", "\194\231\148\100\70"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\121\115\244\138\201\229\111\98\232\142\223\242\99\104", "\168\38\44\161\195\150")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\195\169\73\3\225\172\19", "\118\224\156\226\22\80\136\214")] or DEFAULTS.KSize;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\225\74\137\86\231\86\142", "\224\34\142\57")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\168\209\220\103\248\82\0", "\110\190\199\165\189\19\145\61")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\230\118\239\142\243\200\234\121\251\155\198\200\238\121\235\146", "\167\186\139\23\136\235")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\41\188\146\8", "\109\122\213\232")]=UDim2.new(0, kSize, 0, kSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\250\163\55\235\195\176\49\224\228\178\49\252\242\172\51\247", "\80\142\151\194")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\207\109\73", "\44\99\166\23")]=UDim2.new(0, kSize * 0.8, 0, kSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\76\248\58\63\39\173\115\249", "\196\28\151\73\86\83")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\12\61\17\150\81\23\120", "\22\147\99\73\112\226\56\120")]=0}):Play();
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\135\74\215\220\178\149\92\204\220\160\145\79\199\209", "\237\216\21\130\149")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\189\113\116\96\131\192\68\135", "\62\226\46\63\63\208\169")] or DEFAULTS.KSize;
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
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\218\38\97\140\24\10\35\91\206\28\76", "\62\133\121\53\227\127\109\79")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\47\43\7\220\233\131\139\62\61\31\220\236\139\134", "\194\112\116\82\149\182\206")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\6\151\121\49\255\207\39\23\129\97\49\250\199\42", "\110\89\200\44\120\160\130")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\148\252\96\121\112\67\33\72", "\45\203\163\43\38\35\42\91")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\151\221\46\130", "\52\178\229\188\67\231\201"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\18\72\84\1\245\93\49\2\78\94\16\246\85\45\36\83", "\67\65\33\48\100\151\60");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\206\137\202\242\219\238\171\214\231", "\147\191\135\206\184"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\1\149\213\202\92\185\129", "\210\228\72\198\161\184\51"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\74\225\31\127\194\63\71\244\54\97\207\59\76", "\174\86\41\147\112\19"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\41\161\2\54\27\61\170\66\15\152\31", "\203\59\96\237\107\69\111\113"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\63\156\224\53\244\222\42\17", "\183\68\118\204\129\81\144"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\132\64\229\15\134\7\163\119", "\226\110\205\16\132\107"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\209\225\212\68", "\33\139\163\128\185"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\52\223\83\92\13\208\80", "\190\55\56\100"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\170\36\10\49\246\231\66\160\50", "\147\54\207\92\126\115\131"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\24\22\114\31\112\8\35", "\30\109\81\85\29\109"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\103\162\36\209\247\250", "\156\159\17\52\214\86\190"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		table.insert(Library.ThemeObjects.Strokes, TabBtnStroke);
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\154\253\188\178\189\255\188\174\171\225\190\165", "\220\206\143\221")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\114\33\24\202", "\178\230\29\77\119\184\172")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\193\172\11\21\100\232\244\172\15\21\116\225", "\152\149\222\106\123\23")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\41\250\76\167", "\213\189\70\150\35")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\109\65\122", "\104\47\53\20")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\77\140\25", "\111\195\44\225\124\220")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\82\18\124\160\174", "\203\184\38\96\19\203")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\112\107\78\194\53\122\119\70\232\43\114\116\68", "\174\89\19\25\33"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\16\34\83\73\242", "\107\79\114\50\46\151\231");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\143\153\32\153\45\155\193\32\169\160\61", "\160\89\198\213\73\234\89\215"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\88\132\255\193\76\120\186\249", "\165\40\17\212\158"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\195\203\9\62\35", "\70\133\185\104\83")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\68\73\47", "\169\100\37\36\74")]=name});
		TabBtn.MouseButton1Click:Connect(function()
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\149\163\93\5", "\48\96\231\194"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\95\22\57\53\217\173\134\196", "\227\168\58\110\77\121\184\207"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\79\57\167\84\147\206\101\177\116\50", "\197\27\92\223\32\209\187\17"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\118\224\244\17\81\198\233", "\155\99\63\163"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\146\153\171\139\137\212", "\228\226\177\193\237\217"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\27\158", "\134\84\208\67")) or LUAOBFUSACTOR_DECRYPT_STR_0("\60\138\160", "\60\115\204\230");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.AccentEnd) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\59\232\123\224\40\228\101\233\62\200\127\235\53\249\35", "\16\135\90\139")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\119\123\10\60\92", "\24\52\20\102\83\46\52")]=((val and Theme.AccentEnd) or Theme.UIStrokeColor)}):Play();
			end
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\229\44\53\45\0\202\111\5\33\1\205\42\37", "\111\164\79\65\68"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\229\216\141\208\33\254\134\220\141\223\44\230\195\153\151\214\39\249\134\203\138\217\38\254\134\215\140\201\96", "\138\166\185\227\190\78"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\102\196\58\87", "\121\171\20\165\87\50\67"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\61\161\34\149\3\196\61\181", "\98\166\88\217\86\217"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\228\120\12\131", "\188\150\150\25\97\230"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\160\124\13\30\227\223\155", "\141\186\233\63\98\108"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\195\31\162\55\254\225\41", "\69\145\138\76\214"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\68\202\145\157\147\23\114\202\133", "\118\16\175\233\233\223"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\150\52\182\235", "\29\235\228\85\219\142\235"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\253\153\210\101\64\34\64", "\50\93\180\218\189\23\46\71"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\182\90\65\65", "\40\190\196\59\44\36\188"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\108\255\187\232\115\8\46", "\109\92\37\188\212\154\29"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\198\131\209\48\94\13\234\170\215", "\58\100\143\196\163\81"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\80\34\174\58", "\110\122\34\67\195\95\41\133"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\65\180\67\94\250\116\179\94\70", "\182\21\209\59\42"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\221\9\3\171\163\67\202\19", "\222\215\55\165\125\65"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\248\229\21\224\207\232\88", "\42\76\177\166\122\146\161\141"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\137\23\193\117\122\172\132\2\232\107\119\168\143", "\22\197\234\101\174\25"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\9\38\170\204\114\160\192\136\30\55\183\211\122\163", "\230\77\84\197\188\22\207\183");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\61\229\243\158\175\245\39", "\85\153\116\166\156\236\193\144"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\201\97\186\247\20\136\225\84\188\241\20", "\96\196\128\45\211\132"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\20\143\104\80\222\186\160\221\22\130\117\75\215\161\160\235\60\151\126", "\184\85\237\27\63\178\207\212")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\92\17\75\42\86\17", "\63\104\57\105"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\56\130\165\86\8\143\234\10\69", "\36\107\231\196");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\156\129\136\79\187\167\149", "\231\61\213\194"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\61\168\37\103", "\19\105\205\93")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\157\13\198\149\29\188\28\202\142\49", "\95\201\104\190\225")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\206\217\218\141\222\213\218\160\197", "\174\207\171\161"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\217\251\21\231\218\194\249\234\2\253", "\183\141\158\109\147\152")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\12\254\24\14\28\242\24\35\7", "\108\76\105\134"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\215\176\236\203", "\174\139\165\209\129"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\182\250\213\234\2\114\125\175", "\24\195\211\130\161\166\99\16"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\6\241\56\113\3\82\23\230\34", "\118\38\99\137\76\51"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\206\35\9\23\10\52\189\15\17\23\4\51\179\104\75", "\64\157\70\101\114\105");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\129\132\236\2\78\173\181", "\112\32\200\199\131"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\83\78\183\207\167\43\34\87\122\170\194\166\39", "\66\76\48\60\216\163\203"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\151\147\117\231\86\234\54\181\150\125\252\72\192\23\185\148\118\255\83", "\68\218\230\25\147\63\174");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\3\112\67\164\163\47\65", "\214\205\74\51\44"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\101\206\245\100\238\96\227\229\120\239\88", "\23\154\44\130\156"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\48\164\190\161\58\6\5\163\142\161\56\7\20\168\185\157\63\9\20", "\115\113\198\205\206\86")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78\166\88\230", "\58\228\55\158"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\135\140\209\60\63\165\123\250\199", "\85\212\233\176\78\92\205");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\113\171\237\88\86\141\240", "\130\42\56\232"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\222\176\60\247", "\95\138\213\68\131\32")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\30\45\185\87\84\63\60\181\76\120", "\22\74\72\193\35")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\108\74\225\84\41\122\240\93\40", "\56\76\25\132"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\109\196\167\35\204\74\129\130\50\202\83\210\229\104\129", "\175\62\161\203\70");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\216\219\7\23\41\201\215\28\59", "\85\92\189\163\115"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\190\49\53\44", "\88\73\204\80"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\134\8\82\5\219\44\134\28", "\186\78\227\112\38\73"), Frame);
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
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\82\229\65\113\111\232\67\242\91", "\26\156\55\157\53\51"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\241\53\214\170\94\137\202", "\48\236\184\118\185\216"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\175\86\61\202", "\84\133\221\55\80\175"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\226\60\178\235\93\191\226\40", "\60\221\135\68\198\167"), Frame);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\184\224\151\96\214\246", "\185\142\221\152\227\34"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\125\203\67\255\81\115\227\93\221\67\186\75\54\229\93\139\25\180", "\151\56\165\55\154\35\83");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\106\38\225\178\77\0\252", "\142\192\35\101"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\103\40\174\226", "\118\182\21\73\195\135\236\204"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\57\2\84\38\24\233\28\51\20", "\157\104\92\122\32\100\109"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\143\232\216\60\35\132\174\173\178", "\203\195\198\175\170\93\71\237"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\98\29\218\67\31\249\60", "\156\78\43\94\181\49\113"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\65\225\222\166", "\25\18\136\164\195\107\35")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\219\36\179\74", "\216\136\77\201\47\18\220\161")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\254\42\215\13", "\226\77\140\75\186\104\188"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\220\209\50\74", "\47\217\174\176\95"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\216\110\22\158\85\122\35\180", "\70\216\189\22\98\210\52\24"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\246\222\161\130\223", "\179\186\191\195\231");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\45\25\233\252", "\132\153\95\120"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\183\22\57\219\219\162\180\190", "\192\209\210\110\77\151\186"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\196\10\49\234\240\214\228", "\164\128\99\66\137\159");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\140\241\170\34\134\241", "\222\96\233\137"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\154\132\16\154\253\245\171", "\144\217\211\199\127\232\147"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\42\38\60\247\80\22\80\247\33", "\36\152\79\94\72\181\37\98"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\244\215\87\38\151\244\78\49\220", "\95\183\184\39");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\22\196\41\70\142\7\167", "\98\213\95\135\70\52\224"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\138\238\101\85\250\170\204\121\64", "\52\158\195\169\23"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\89\179\34\125\131\49\58", "\235\26\220\82\20\230\85\27");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\171\174\249\219\52\164\168\231\201", "\20\232\193\137\162");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\1\211\204\182\229\131\22\99\38\159\240\168\230\154\22\120\46\222\199\170\226", "\17\66\191\165\198\135\236\119"), LUAOBFUSACTOR_DECRYPT_STR_0("\44\174\160\29\240\252\172\210\0\191\183\83\240\230\172\197\7\166\189\83\250\240\233\210\26\187\161\1\177", "\177\111\207\206\115\159\136\140"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\38\155\21\16\221\91\76", "\63\101\233\112\116\180\47"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\247\62\245\6", "\86\163\91\141\114\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\96\8\102\122\42\71\75\86\106\96\19\39\125\105\63\119\14\98", "\90\51\107\20\19"),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\252\140\232\51", "\93\237\144\229\143")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\54\249\252\22\25", "\38\117\150\144\121\107")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\3\186\227\63", "\90\77\219\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\13\50\58\67\21\126\166\55\36\43\90\2\104", "\26\134\100\65\89\44\103"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\234\62\40", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\164\18\24\11\178\81\255\2\1\11\235\17\162\2\70\31\239\81\130\14\44\22\221\47\162\82\44\13", "\136\126\208\102\104\120")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\76\143\214\87", "\49\24\234\174\35\207\50\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\250\248\133\116\31\178\187\200\82\3\254\242\154\98", "\17\108\146\157\232"),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\207\29\234\33", "\200\43\163\116\141\79")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\155\51\59\130\165\248\247", "\131\223\86\93\227\208\148"),LUAOBFUSACTOR_DECRYPT_STR_0("\208\75\185\161", "\213\131\37\214\214\125"),LUAOBFUSACTOR_DECRYPT_STR_0("\22\34\43\180\248", "\129\70\75\69\223")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\202\254\236", "\143\38\171\147\137\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\135\181\246\0\247\148\228\138\188\254\6", "\180\176\226\217\147\99\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\181\46\0", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\136\63\192\83\158\166\68\163\40\221\68\129\166", "\195\42\215\124\181\33\236"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\80\36\42", "\152\109\57\87\94\69")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\210\12\162\171\222\64", "\200\153\183\106\195\222\178\52")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\13\220\171\40\91\72\55\237\156\9\65\95\63\230", "\58\82\131\232\93\41")] or LUAOBFUSACTOR_DECRYPT_STR_0("\167\82\214\20\72\51\151", "\95\227\55\176\117\61")),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\127\47\71\169\25\125\40", "\203\120\30\67\43")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\36\64\234", "\185\145\69\45\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\30\15\163\156\169\10\11\180\217\132\11\89\146\212\143\18\28\230\253\153\81\87\232", "\188\234\127\121\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\62\18\132", "\227\88\82\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\32\148\162\21\71\75\26\183\162\44\114\78\26", "\19\35\127\218\199\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\247\11\225\25\243\5\238\24\254\24", "\130\124\155\106")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\195\243\162\166\182\82\190\216\206", "\223\181\171\150\207\195\150\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\59\239\162\11\77\57\232", "\105\44\90\131\206")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\191\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\248\16\186\31\75\241\127\93\252", "\26\48\153\102\223\63\31\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\65\225\255\0\65\238\248", "\147\98\32\141")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\39\124\205\207\17\98\67\29\78\230\228\7\91\78", "\43\120\35\131\170\102\54")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\99\15\137\178\170\167\166\115", "\228\52\102\231\214\197\208")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\233\113\207\232\138\11\244\57", "\182\126\128\21\170\138\235\121")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\206\48\235\164\52", "\102\235\186\85\134\230\115\80")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\118\15\61\90\124\192\115", "\66\55\108\94\63\18\180")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\142\134\50\41\77\70", "\57\116\237\229\87\71")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\180\245\243", "\39\202\209\141\135\23\142")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\54\17\30\22\249\237\56", "\152\159\83\105\106\82")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\210\67\253\194\89", "\60\225\166\49\146\169")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\23\59\38\4", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\119\214\126\91", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\217\195\213\204\175\81", "\37\211\182\173\161\169\193")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\196\59\91\220\44\59\173\255\63\64\220\114\59", "\217\151\90\45\185\72\27") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\231\121\225\19\67\207\104", "\54\163\28\135\114"),LUAOBFUSACTOR_DECRYPT_STR_0("\27\213\82\149", "\31\72\187\61\226\46"),LUAOBFUSACTOR_DECRYPT_STR_0("\243\15\77\217\94", "\68\163\102\35\178\39\30")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\113\215\194", "\113\222\16\186\167\99\213\227")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\11\247\243\58\11\187\213\59\28\233\243\32\26\187\194\38\11\246\243", "\150\78\110\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\196\43\237\166\31\188\75", "\32\229\165\71\129\196\126\223")]=function()
			local current = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\252\182\231\148\147\199\198\135\208\181\137\208\206\140", "\181\163\233\164\225\225")];
			if ((current == LUAOBFUSACTOR_DECRYPT_STR_0("\116\142\56\118\69\135\42", "\23\48\235\94")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\79\212\215\74", "\178\28\186\184\61\55\83")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\244\196\73\55\235", "\149\164\173\39\92\146\110"))) then
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\199\46\4\19\31", "\123\147\71\112\127\122")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\223\144\126\84", "\38\172\173\226\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\30\34\251\72\31\56", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\185\18\50\183\172\92\56\189\180\25\40\189\248\30\41\177\180\8\113\177\182\92\40\176\189\17\57\171\246", "\92\216\216\124")});
				return;
			end
			if Library.SavedThemes[current] then
				Library.SavedThemes[current] = nil;
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\111\59\184\76\248", "\157\59\82\204\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\54\230\247\236", "\209\88\94\131\154\137\138\179"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\174\202\104\27\45\37", "\66\72\193\164\28\126\67\81")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\195\41\164\93\50\115\227\118\232", "\22\135\76\200\56\70") .. current)});
				Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\169\53\254\37\72\237\153", "\129\237\80\152\68\61"));
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\117\173\2\242\9\27\76", "\56\49\200\100\147\124\119"),LUAOBFUSACTOR_DECRYPT_STR_0("\255\48\176\231", "\144\172\94\223"),LUAOBFUSACTOR_DECRYPT_STR_0("\20\6\172\76\61", "\39\68\111\194")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
				ThemeDropdown:Set(LUAOBFUSACTOR_DECRYPT_STR_0("\242\163\225\198\108\187\194", "\215\182\198\135\167\25"));
			else
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\185\64\254\68\136", "\40\237\41\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\102\232\247\88", "\42\167\20\154\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\241\172\86\116\47\94", "\65\42\158\194\34\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\47\87\1\40\173\21\225\14\103\84\3\56\227\31\174\19\41\18\31\44\251\30\253\84", "\142\122\71\50\108\77\141\123")});
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\167\231\12", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\8\45\12\58\252\100\57\18\50\23\39\226", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\16\198\89\198", "\218\119\124\175\62\168\185")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\241\69\193", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\179\226\163\134\220\164\154\176\139\136\222\179\141\228\234\168\210\186\140\226", "\214\227\144\202\235\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\169\134\124", "\92\141\197\231\27\112\211\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\192\169\172\221\233\237\185\166\221\227\252\158\242", "\177\134\159\234\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\226\44\180", "\169\221\139\95\192")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\142\121\62\55\42\202", "\70\190\235\31\95\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\247\8\246\233\191", "\133\218\130\122\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\254\239\200\222\162\59\55", "\88\92\159\131\164\188\195")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentStart = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\174\47\178\78", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\249\137\25\207\42\253\152\15\129\15\255\137\19\207\58\188\169\25\205\33\238", "\161\78\156\234\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\187\200\219", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\54\124\116\228\243\27\108\126\228\249\10\75\41", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\133\106\32", "\84\123\236\25")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\142\172\22\185\185\228", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\20\203\47", "\45\67\120\190\74\72\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\3\35\225\169\251\137\237\226", "\137\64\66\141\197\153\232\142")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentEnd = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\45\209\52\191\200\75\244\39\160\137\22\220\54\239", "\232\99\176\66\198")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\193\32\33\8", "\76\140\65\72\102\27\237\153")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\211\18\215", "\222\42\186\118\178\183\97")]=Color3.fromRGB(28, 26, 38)},[LUAOBFUSACTOR_DECRYPT_STR_0("\109\229\80\137\85\172\102\134\92\239\79", "\234\61\140\36")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\12\220\179\124", "\111\65\189\218\18")]=Color3.fromRGB(15, 15, 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\66\31\48", "\207\35\43\123\85\107\60")]=Color3.fromRGB(5, 5, 5)},[LUAOBFUSACTOR_DECRYPT_STR_0("\84\171\178\225\57\87\184\165\243", "\25\16\202\192\138")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\208\202\164\236", "\148\157\171\205\130\201")]=Color3.fromRGB(45, 45, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\221\112\44", "\150\67\180\20\73\177")]=Color3.fromRGB(30, 30, 30)},[LUAOBFUSACTOR_DECRYPT_STR_0("\161\17\29\69\153\88\55\66\137\29", "\45\237\120\122")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\250\233\171\34", "\76\183\136\194")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\73\239\225\61", "\116\26\134\133\88\48\47")]=Color3.fromRGB(255, 255, 255)},[LUAOBFUSACTOR_DECRYPT_STR_0("\58\196\165\244\253\64\27\197", "\18\126\161\192\132\221")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\114\41\167\10", "\54\63\72\206\100")]=Color3.fromRGB(40, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\80\65\127", "\27\168\57\37\26\133")]=Color3.fromRGB(25, 10, 10)},[LUAOBFUSACTOR_DECRYPT_STR_0("\9\175\121\184\151\10\184\121\173\217", "\183\77\202\28\200")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\58\50\128\6", "\104\119\83\233")]=Color3.fromRGB(20, 40, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\241\35\39", "\35\149\152\71\66")]=Color3.fromRGB(10, 25, 10)}};
		local bgNames = {};
		for n, _ in pairs(bgOptions) do
			table.insert(bgNames, n);
		end
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\55\233\79\181", "\90\121\136\34\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\15\86\21\192\28\90\11\201\10\21\61\200\2\90\12", "\126\167\110\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\28\47\255", "\95\93\112\78\152\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\202\167\18\215\187\222\196\246\145", "\178\161\149\229\117\132\222"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\210\206\184", "\67\232\187\189\204\193\118\198")]=bgNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\175\43\179\33\46\14\251", "\143\235\78\213\64\91\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\73\146\240\48\254\169\77\130\232\101\186\153\1", "\214\237\40\228\137\16"),[LUAOBFUSACTOR_DECRYPT_STR_0("\166\226\227\213\1\167\134\232", "\198\229\131\143\185\99")]=function(val)
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
		local textOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\102\132\161\103\84\204\224\87\84\138\169\102\93\152\225", "\19\49\236\200")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\34\228\178\164\141\246\62\226\178", "\218\158\87\150\215\132")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\18\216\225\61", "\173\155\126\185\130\86\66")]=Color3.fromRGB(20, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\163\182\203\135\251", "\140\133\198\218\167\232")]=Color3.fromRGB(255, 230, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\55\181\115", "\228\213\78\212\29")]=Color3.fromRGB(0, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\73\178", "\139\231\44\214\101")]=Color3.fromRGB(255, 80, 80)};
		local txtNames = {};
		for n, _ in pairs(textOptions) do
			table.insert(txtNames, n);
		end
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\247\238\11\91", "\118\185\143\102\62\112\209\81")]=LUAOBFUSACTOR_DECRYPT_STR_0("\104\117\49\242\229\54\19\52\83\98", "\88\60\16\73\134\197\117\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\118\230\249\207", "\33\48\138\152\168")]=LUAOBFUSACTOR_DECRYPT_STR_0("\77\41\4\73\213\4\119\26\53\82\213", "\87\18\118\80\49\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\23\201\180", "\208\44\126\186\192")]=txtNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\31\162\199\1\240\221", "\46\151\122\196\166\116\156\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\229\79\14\254\165\165\98\31\253\228\248\74\14\178", "\155\133\141\38\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\43\160\77\77\126\166\46", "\197\69\74\204\33\47\31")]=function(val)
			local col = textOptions[val];
			if col then
				Theme.Text = col;
				local h, s, v = Color3.toHSV(col);
				Theme.TextDark = Color3.fromHSV(h, s, v * 0.7);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\196\74\66\147", "\231\144\47\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\193\201\97\29\48", "\89\210\184\186\21\120\93\175"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\95\117\210\119", "\90\209\51\28\181\25")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\122\90\235", "\223\176\27\55\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\190\202\160\39\190\142\151\16\149\142\134\45\161\203", "\213\68\219\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\236\34\224", "\31\107\128\67\135\74\165\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\215\215\114\114\184\194\237", "\209\184\136\156\45\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\193\123", "\216\103\168\21\104")]=30,[LUAOBFUSACTOR_DECRYPT_STR_0("\85\172\91", "\196\24\205\35")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\142\229\7\59\135\247", "\102\78\235\131")]=DEFAULTS.KSize,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\47\56\72\69\56\180\63", "\84\154\78\84\36\39\89\215")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\224\91\93", "\101\157\129\54\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\156\163\235\16\112\7\172", "\25\125\201\234\203\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\248\25\4", "\115\25\148\120\99\116\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\51\2\158\49\72\63\62\184\40\68", "\33\108\93\217\68"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\66\175", "\205\187\43\193")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\115\29", "\191\158\18\101")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\198\129\182\186\201\215", "\207\165\163\231\215")]=DEFAULTS.GuiScale,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\248\245\90\38\113\197\242", "\16\166\153\153\54\68")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\252\178\205\67", "\153\178\211\160\38\84\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\182\4\93\44\142\14\26\0\135\18", "\75\226\107\58"),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\210\16\125", "\173\56\190\113\26\113\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\244\225\25\10\240\204\210\40\46\242\210", "\151\171\190\77\101"),[LUAOBFUSACTOR_DECRYPT_STR_0("\225\42\254\168\237\113\31", "\107\165\79\152\201\152\29")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\103\66\233\200\81\119\88\66\236\206\70", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\225\58\217\231\194\104\247\241\200\102\146\186", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\133\183\91\223\164\183\84\216", "\179\198\214\55")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\207\51\70\121\66\212\252\9\89\115\92", "\179\144\108\18\22\37")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\249\156\56\156\221\212\166\21\157\251\206\166\22\140", "\175\166\195\123\233")] or LUAOBFUSACTOR_DECRYPT_STR_0("\203\199\91\72\229\227\214", "\144\143\162\61\41"));
	end;
	return WindowAPI;
end;
return Library;
