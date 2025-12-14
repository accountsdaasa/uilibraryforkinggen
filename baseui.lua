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
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\156\114\123\47\31\113\209\70\177", "\35\200\29\28\72\115\20\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\182\214\215\153\15\59\23\171\195\208\129", "\84\121\223\177\191\237\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\94\204\173\63\126\49\204\190", "\161\219\54\169\192\90\48\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\71\6\36\92\78\20", "\69\41\34\96"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\240\222\16\7", "\75\220\163\183\106\98")]=100};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\191\143", "\185\98\218\235\87")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\228\46\38\232\217\175", "\202\171\92\71\134\190")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\196\32\132\38\214", "\232\73\161\76")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\208\79\88", "\126\219\185\34\61")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\43\220\91\119\112", "\135\108\174\62\18\30\23\147")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\149\240\43\197", "\167\214\137\74\171\120\206\83")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\252\39\88", "\199\235\144\82\61\152")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\3\171\59\11\19", "\75\103\118\217")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\93\126\31", "\126\167\52\16\116\217")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\38\41\148\177\86\219\218\43\57", "\156\168\78\64\224\212\121")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\35\235\163\207\18\226\177", "\174\103\142\197")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\97\33\81\60\42\73\218\113", "\152\54\72\63\88\69\62")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\205\234\89\214\197\252\126\243", "\60\180\164\142")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\74\0\36\5\202", "\114\56\62\101\73\71\141")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\234\216\193\182\253\138", "\164\216\137\187")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\229\50\183\168\234\89", "\107\178\134\81\210\198\158")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\11\154\210", "\202\88\110\226\166")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\10\154\227\238\194\29\137", "\170\163\111\226\151")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\36\160\55\69\50", "\73\113\80\210\88\46\87")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\178\34\194\5", "\135\225\76\173\114")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\45\228\182\180\163\170\133\61", "\199\122\141\216\208\204\221")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\212\20\245\122\247\191\255\55", "\150\205\189\112\144\24")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\144\186\65\38\175", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(225, 225, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\28\4\214\184\104\215", "\230\180\127\103\179\214\28")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\6\92\67\234\85\178", "\128\236\101\63\38\132\33")]=Color3.fromRGB(180, 180, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\172\9\80", "\175\204\201\113\36\214\139")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\201\45\200\32\70\222\62", "\100\39\172\85\188")]=Color3.fromRGB(100, 100, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\108\171\143\56\168", "\83\205\24\217\224")]=Color3.fromRGB(200, 200, 210)},[LUAOBFUSACTOR_DECRYPT_STR_0("\214\204\195\54\255", "\93\134\165\173")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\137\251\207\198\53\217\144\89", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(50, 40, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\71\116\15\231\79\98\40\194", "\106\133\46\16")]=Color3.fromRGB(35, 25, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\52\118\241\120\103", "\32\56\64\19\156\58")]=Color3.fromRGB(70, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\203\230\83\84\230\209", "\224\58\168\133\54\58\146")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\85\72\248\123\146\213", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\9\225", "\175\187\235\113\149\217\188")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\199\120\106\55", "\24\92\207\225\44\131\25")]=Color3.fromRGB(180, 150, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\199\170\67\16\120", "\29\43\179\216\44\123")]=Color3.fromRGB(100, 60, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\208\46\72\178\206\2\107", "\44\221\185\64")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\37\226\78\94\102\13\243", "\19\97\135\40\63")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\85\55\62\45\48\188\126\20", "\81\206\60\83\91\79")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\106\174\214\115\58\207\89", "\196\46\203\176\18\79\163\45")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\145\54\123\19\6\220", "\143\216\66\30\126\68\155")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\142\205\11\202\208\175\195", "\129\202\168\109\171\165\195\183")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\3\91\52\221\208\0\213\54\89\37\204", "\134\66\56\87\184\190\116")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\24\52\15\186\12\231\53", "\85\92\81\105\219\121\139\65")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\220\176\83\64\114\203\216\189\84", "\191\157\211\48\37\28")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\251\26\242\29\47\211\11", "\90\191\127\148\124")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\76\130\54\3", "\119\24\231\78")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\166\40\163\75\201\76\5", "\113\226\77\197\42\188\32")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\19\236\161\30\23\230\190", "\213\90\118\148")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\127\43\178\87\88\87\58", "\45\59\78\212\54")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\127\176\159\148\33\166\245\51\89\143\132\148", "\144\112\54\227\235\230\78\205")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\151\45\9\253\197\87\167", "\59\211\72\111\156\176")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\105\149\226\41\71\130\237\57\93", "\77\46\231\131")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\142\93\162\76\191\115\164\65\190\93\179\78\174\71", "\32\218\52\214")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\109\24\35\166\244\162\86", "\58\46\119\81\200\145\208\37")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\13\158\49\161\172\174", "\86\75\236\80\204\201\221")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\80\70\90\132\247\133", "\235\18\33\23\229\158")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\114\189\242\178\84\191\195\186\66", "\219\48\218\161")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\198\118\85\93\222\66\243", "\128\132\17\28\41\187\47")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\50\38\20\53\86\4\33", "\61\97\82\102\90")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\152\43\179\95\212", "\105\204\78\203\43\167\55\126")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\145\175\59\10\55\5\213\90\182", "\49\197\202\67\126\115\100\167")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\28\82\209\46\167\83\80", "\62\87\59\191\73\224\54");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\227\7\252\200\242\14\238\135\237\17\245\199", "\169\135\98\154");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\223\127\33\89\248\32\134\193\100\43\90", "\168\171\23\68\52\157\83");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\230\115\237\172\54\62\130\224\120\241\247\106\98\222\164\35\160\252\114\127\213\172\40\162\250\117\122", "\231\148\17\149\205\69\77");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\179\179\198\233\67\250\146\128\210\242", "\159\224\199\167\155\55")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\196\246\50\214\217\252\40\219\241\250\63\211\227\250\51\220", "\178\151\147\92"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\184\244\88\62\23", "\26\236\157\44\82\114\44")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\30\43\205\79", "\59\74\78\181")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\196\72\91\167\44\222\84", "\211\69\177\58\58")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\163\228\123\249\236", "\171\215\133\25\149\137")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\207\199\38\243\233\57\255\67\245\193\61\244", "\34\129\168\82\154\143\80\156"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\171\189\39\2\78\71\138\132\166\58\4\70", "\233\229\210\83\107\40\46"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\213\67\48\218\0", "\101\161\34\82\182"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\252\12\91\242\222", "\78\136\109\57\158\187\130\226"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\1\7\198\194\61\62\245\244", "\145\94\95\153")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\194\245\43\250\72\177\238\200\0", "\215\157\173\116\181\46")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\10\141\180\193\217\52\184\142", "\186\85\212\235\146")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\253\184\41\209\63\232\75\199\149", "\56\162\225\118\158\89\142")] = object.Position.Y.Offset;
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
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\107\12\206\171\45\207\126\34", "\184\60\101\160\207\66")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\139\120\185\51\131\110\158\22", "\220\81\226\28")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\193\135\246\200\224", "\167\115\181\226\155\138")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\33\228\89\117\101\151", "\166\130\66\135\60\27\17")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\73\205\112\62\80\24", "\80\36\42\174\21")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\21\47\110", "\26\46\112\87")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\38\179\96\155\190\87\191", "\212\217\67\203\20\223\223\37")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\153\186\221\177\136", "\178\218\237\200")]=ToColor(saved.Stroke)};
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
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\137\138\197\197\164\167\227\222\162\129\238\213\187\176", "\176\214\213\134")] = themeName;
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
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\211\184\191\251\170\92\92\247\185", "\57\148\205\214\180\200\54")) then
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\17\242\59\50\127\21\179\63\39\121\28", "\22\114\157\85\84");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\29\195\122\243\166\241\226", "\200\164\171\115\164\61\150")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\149\253\13\66\182\151", "\227\222\148\99\37"), LUAOBFUSACTOR_DECRYPT_STR_0("\18\94\64\243\248\55\75\18\196\236\61\92\91\248\254", "\153\83\50\50\150"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\117\97\25\118\165\106\72\127", "\45\61\22\19\124\19\203"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\234\27\3\242\37\117\183\244\59", "\217\161\114\109\149\98\16");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\50\57\113\185", "\20\114\64\88\28\220"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\28\0\219\186\222\194\188\60\4", "\221\81\97\178\212\152\176");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\58\233\27\201\238\24\245\14", "\122\173\135\125\155"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\232\35\182\45\63\205\150", "\168\228\161\96\217\95\81"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\248\29\72\61\88\208\212", "\55\187\177\78\60\79"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\231\126\248\86\202\131\57\252\94\255\79\192\163\34\192\76\255\84\206\137\35\218", "\224\77\174\63\139\38\175"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\104\107\39\158\68\123\33\138\82\76\60\133\72\86\58", "\78\228\33\56"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\123\170\23\167\219\106\166\12\139", "\229\174\30\210\99"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\50\227\150\68\249\31\53\20\238\141\84\255", "\89\123\141\230\49\141\93");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\247\1\21", "\42\147\17\150\108\112"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\59\175\57\115\226\202\14\180", "\136\111\198\77\31\135");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\32\128\68\188\224\30\172\12\29", "\201\98\105\199\54\221\132\119"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, TitleBarGradient);
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\1\130\38\7\25\173\187\9\143", "\204\217\108\227\65\98\85"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241\0\193\92\198\249", "\160\62\163\149\133\76"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\253\137\35\8\131\241\133\35", "\163\182\192\109\79");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\35\24\212\215\33\50\20\207\251", "\149\84\70\96\160"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\46\226\42\8\8\255", "\141\88\102\109"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\145\82\201\123\29\47\90\212\189\87\233\127\22\50\71\146", "\161\211\51\170\16\122\93\53")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\196\145\135\1\196\131\155\6\210\131\155\18\222\138", "\72\155\206\210")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\121\70\11\54\72\93\65\7", "\83\38\26\52\110"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\115\53\50\82\76\24\41\97\77\30", "\38\56\119\71");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\226\89\209\32\116\230\251\76\217\43", "\54\147\143\56\182\69"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\168\222\90\207\211\130\235\123\222\194\136\240\106\208\216\146\235\91\222\223\143\235", "\191\182\225\159\41"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\20\45\3\106\187\168\241\20\42\23\102\136\134\206\46", "\162\75\114\72\53\235\231")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\179\3\111\221\99\45\191\3\124\221\96\1\141\48\65", "\98\236\92\36\130\51")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\155\38\39\133\117\135\134\15\156\38\35\188\67\187\176\36", "\80\196\121\108\218\37\200\213")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\63\76\41\64\123\33\185\63\74\61\76\72\15\134\5", "\234\96\19\98\31\43\110")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\57\32\121\248\156\93\184\57\38\109\232\170\116\152\3\11", "\235\102\127\50\167\204\18")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\111\158\222\28\116\1\99", "\78\48\193\149\67\36"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\15\33\181\49\126\29\55\174\49\108\25\36\165\60", "\33\80\126\224\120")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\211\151\40\251\111\229\178\6", "\60\140\200\99\164")] or DEFAULTS.KSize;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\183\251\23\47\182\142\251\10", "\194\231\148\100\70")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\67\213\162\226\193\73\66", "\168\38\44\161\195\150")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\169\241\131\113\53\220\164\23\142\239\146\119\34\237\184\21\153", "\118\224\156\226\22\80\136\214")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\113\231\67\133", "\224\34\142\57")]=UDim2.new(0, kSize, 0, kSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\247\170\196\218\118\197\79\15\208\180\213\220\97\244\83\13\199", "\110\190\199\165\189\19\145\61")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\226\109\237", "\167\186\139\23\136\235")]=UDim2.new(0, kSize * 0.8, 0, kSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\186\155\4\14\188\135\3", "\109\122\213\232")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\248\182\49\250\254\173\62", "\80\142\151\194")]=0}):Play();
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\60\249\66\101\60\235\94\98\42\235\94\118\38\226", "\44\99\166\23")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\67\200\2\9\0\173\102\242", "\196\28\151\73\86\83")] or DEFAULTS.KSize;
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
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\204\60\29\31\133\95\20\115\216\6\48", "\22\147\99\73\112\226\56\120")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\135\74\215\220\178\149\92\204\220\160\145\79\199\209", "\237\216\21\130\149")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\189\113\106\118\143\228\119\172\103\114\118\138\236\122", "\62\226\46\63\63\208\169")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\218\38\126\188\44\4\53\91", "\62\133\121\53\227\127\109\79")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\6\51\248\211", "\194\112\116\82\149\182\206"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\10\161\72\29\194\227\28\26\167\66\12\193\235\0\60\186", "\110\89\200\44\120\160\130");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\234\108\84\66\78\50\72\165\215", "\45\203\163\43\38\35\42\91"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\172\239\55\149\166\95\215", "\52\178\229\188\67\231\201"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\66\66\11\251\80\42\47\70\118\22\246\81\38", "\67\65\33\48\100\151\60"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\206\130\209\224\203\203\175\193\252\202\243", "\147\191\135\206\184"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\1\150\192\220\87\187\138\47", "\210\228\72\198\161\184\51"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\96\195\17\119\202\63\71\244", "\174\86\41\147\112\19"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\18\140\6\32", "\203\59\96\237\107\69\111\113"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\63\156\224\53\244\222\42\17", "\183\68\118\204\129\81\144"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\168\104\240\41\151\26\185\127\234", "\226\110\205\16\132\107"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\195\214\83\229\198\242", "\33\139\163\128\185"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\55\202\69\87\15\219", "\190\55\56\100"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		table.insert(Library.ThemeObjects.Strokes, TabBtnStroke);
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\98\189\61\16\0\243\242\68\170\50\29\10", "\147\54\207\92\126\115\131")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\62\57\114\31", "\30\109\81\85\29\109")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\203\99\85\184\37\206\253\237\116\90\181\47", "\156\159\17\52\214\86\190")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\224\177\179\188", "\220\206\143\221")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\164\105\35", "\178\230\29\77\119\184\172")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\219\191\7\30", "\152\149\222\106\123\23")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\50\228\76\190\216", "\213\189\70\150\35")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\124\86\102\7\67\89\125\6\72\115\102\9\66\80", "\104\47\53\20"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\156\124\128\27\185", "\111\195\44\225\124\220");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\111\44\122\184\191\244\71\25\124\190\191", "\203\184\38\96\19\203"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\90\73\64\202\61\122\119\70", "\174\89\19\25\33"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\9\0\83\67\242", "\107\79\114\50\46\151\231")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\23\167\184\44", "\160\89\198\213\73\234\89\215")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\99\181\243\192", "\165\40\17\212\158"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\220\16\39\10\228\219\13\63", "\70\133\185\104\83"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\64\92\62\235\17\81\80\37\199", "\169\100\37\36\74"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\174\129\95\18\137\167\66", "\48\96\231\194"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\61\57\11\215\164\134", "\227\168\58\110\77\121\184\207"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\84\18", "\197\27\92\223\32\209\187\17")) or LUAOBFUSACTOR_DECRYPT_STR_0("\44\121\229", "\155\99\63\163");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.AccentEnd) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\160\208\162\134\190\150\141\196\175\137\154\139\142\222\179\222", "\228\226\177\193\237\217")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\23\191\47\233\38", "\134\84\208\67")]=((val and Theme.AccentEnd) or Theme.UIStrokeColor)}):Play();
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\50\175\146\85\28\162\198\120\22\162\143\89\23", "\60\115\204\230"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\196\59\229\126\232\46\171\117\233\59\233\124\226\122\255\120\238\41\171\98\238\61\227\100\167\52\228\103\169", "\16\135\90\139"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\102\7\62\75", "\24\52\20\102\83\46\52"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\42\57\48\35\197\45\36\40", "\111\164\79\65\68"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\203\130\211\43", "\138\166\185\227\190\78"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\93\230\56\64\45\28\217", "\121\171\20\165\87\50\67"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\17\138\34\171\13\205\61", "\98\166\88\217\86\217"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\243\97\21\170\221\244\243\117", "\188\150\150\25\97\230"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\155\94\15\9", "\141\186\233\63\98\108"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\195\15\185\55\255\239\62", "\69\145\138\76\214"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\86\221\136\132\186", "\118\16\175\233\233\223"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\190\173\22\180\252\133\120\153", "\29\235\228\85\219\142\235"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\253\157\207\118\74\46\87\51\192", "\50\93\180\218\189\23\46\71"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\182\90\65\65", "\40\190\196\59\44\36\188"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\64\196\160\214\124\15\57\73", "\109\92\37\188\212\154\29"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\234\188\215\19\79\16\251\171\205", "\58\100\143\196\163\81"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\107\0\172\45\71\224\28", "\110\122\34\67\195\95\41\133"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\178\73\69\218\121\184\85\77\240\103\176\86\79", "\182\21\209\59\42"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\147\69\202\13\37\177\160\89\246\30\51\177\187\91", "\222\215\55\165\125\65");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\248\229\21\224\207\232\88", "\42\76\177\166\122\146\161\141"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\41\199\106\98\137\139\28\193\108\98", "\22\197\234\101\174\25"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\12\54\182\211\122\186\195\131\14\59\171\200\115\161\195\181\36\46\160", "\230\77\84\197\188\22\207\183")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\17\222\232\174\174\232", "\85\153\116\166\156\236\193\144"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\151\229\76\161\231\8\234\174\3", "\96\196\128\45\211\132");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\88\80\192\161\177\202", "\184\85\237\27\63\178\207\212"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\60\92\17\75", "\63\104\57\105")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\63\130\188\80\41\146\176\80\4\137", "\36\107\231\196")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\176\186\147\127\160\182\147\82\187", "\231\61\213\194"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\61\168\37\103\43\184\41\103\6\163", "\19\105\205\93")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\13\198\149\29\188\28\202\142\49", "\95\201\104\190\225"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\217\192\195\170", "\174\207\171\161"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\251\21\231\212\214\239\251\1", "\183\141\158\109\147\152"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\12\254\24\14\28\242\24\35\7", "\108\76\105\134"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\216\192\189\228\205\255\133\152\245\203\230\214\255\175\128", "\174\139\165\209\129");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\154\193\206\212\13\117\106", "\24\195\211\130\161\166\99\16"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\0\251\35\95\26\79\13\238\10\65\23\75\6", "\118\38\99\137\76\51"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\208\51\9\6\0\4\239\41\21\22\6\55\243\21\6\0\6\44\241", "\64\157\70\101\114\105");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\129\132\236\2\78\173\181", "\112\32\200\199\131"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\121\112\177\208\191\14\45\73\83\173\215", "\66\76\48\60\216\163\203"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\155\132\106\252\83\219\48\191\165\118\253\75\203\42\174\181\112\233\90", "\68\218\230\25\147\63\174")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88\148\162\50", "\214\205\74\51\44"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\201\73\227\238\116\242\2\172\178", "\23\154\44\130\156");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\143\142\161\36\29\20\180", "\115\113\198\205\206\86"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78", "\58\228\55\158")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58\30\184\33\160\134\222", "\85\212\233\176\78\92\205")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\10\107\141\238\79\91\156\231\78", "\130\42\56\232"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\217\176\40\230\67\43\170\156\48\230\77\44\164\251\106", "\95\138\213\68\131\32");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\45\185\87\84\63\60\181\76\120", "\22\74\72\193\35"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\107\229\85\41", "\56\76\25\132"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\196\179\50\227\95\195\174\42", "\175\62\161\203\70"), Frame);
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
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\216\219\7\23\41\201\215\28\59", "\85\92\189\163\115"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\133\19\55\59\162\53\42", "\88\73\204\80"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\145\17\75\44", "\186\78\227\112\38\73"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\82\229\65\127\123\254\82\241", "\26\156\55\157\53\51"), Frame);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\221\14\205\154\95\148", "\48\236\184\118\185\216"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\192\179\67\53\221\116\241\184\79\36\143\60\224\175\82\126\129\122", "\84\133\221\55\80\175");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\206\7\169\213\82\184\245", "\60\221\135\68\198\167"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\175\249\142\71", "\185\142\221\152\227\34"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238\97\38\227\76\202\89", "\151\56\165\55\154\35\83"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\106\34\252\161\71\12\235\174\87", "\142\192\35\101"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\92\10\172\245\130\169\4", "\118\182\21\73\195\135\236\204"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\59\53\0\69", "\157\104\92\122\32\100\109")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\144\175\213\207", "\203\195\198\175\170\93\71\237")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\89\63\216\84", "\156\78\43\94\181\49\113"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\84\250\197\174\14", "\25\18\136\164\195\107\35"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\40\177\91\94\189\195\189\228", "\216\136\77\201\47\18\220\161"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\1\237\41\223\4", "\226\77\140\75\186\104\188");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\220\209\50\74", "\47\217\174\176\95"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\216\110\22\158\85\122\35\180", "\70\216\189\22\98\210\52\24"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\254\214\176\132\220\200\219", "\179\186\191\195\231");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\58\0\240\219\48\0", "\132\153\95\120"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\155\45\34\229\212\165\163", "\192\209\210\110\77\151\186"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\6\58\253\221\209\244\23\45\231", "\164\128\99\66\137\159"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\35\134\249\167\64\165\224\176\11", "\222\96\233\137");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\154\132\16\154\253\245\171", "\144\217\211\199\127\232\147"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\6\25\58\212\65\11\65\246\59", "\36\152\79\94\72\181\37\98"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\244\215\87\54\210\220\6", "\95\183\184\39");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\150\48\247\63\20\172\11\187\52", "\98\213\95\135\70\52\224");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\221\175\192\103\86\241\162\219\115\20\203\173\200\97\85\247\175\200\117\88\251", "\52\158\195\169\23"), LUAOBFUSACTOR_DECRYPT_STR_0("\89\189\60\122\137\33\59\136\117\172\43\52\137\59\59\159\114\181\33\52\131\45\126\136\111\168\61\102\200", "\235\26\220\82\20\230\85\27"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\171\179\236\198\125\156\178", "\20\232\193\137\162"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\218\221\178", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\172\188\26\239\252\172\243\22\245\238\63\246\242\233\245\10\185", "\177\111\207\206\115\159\136\140"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\133\25\19\218", "\63\101\233\112\116\180\47")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\224\52\225\29\234", "\86\163\91\141\114\152")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\125\10\121\118", "\90\51\107\20\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\249\150\236\50\159\244\197\220\56\159\230\128\253", "\93\237\144\229\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\255\254\18", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\175\250\42\62\225\161\117\41\178\253\57\34\169\234\116\42\188\161\8\37\159\224\15\28\169\186\30\56", "\90\77\219\142")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\1\57\45", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\197\235\53\46\161\226\163\118\99\135\254\239\63\49\183", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\188\15\15\22", "\136\126\208\102\104\120")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\92\143\200\66\186\94\41", "\49\24\234\174\35\207\50\93"),LUAOBFUSACTOR_DECRYPT_STR_0("\63\252\242\159", "\17\108\146\157\232"),LUAOBFUSACTOR_DECRYPT_STR_0("\123\202\26\230\54", "\200\43\163\116\141\79")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\145\55\48\134", "\131\223\86\93\227\208\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\64\186\179\30\161\163\113\190\179\16\176", "\213\131\37\214\214\125"),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\39\36\184", "\129\70\75\69\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\244\208\252\110\253\67\197\231\221\116\234\75\206", "\143\38\171\147\137\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\139\170\231", "\180\176\226\217\147\99\131")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\188\41\6\198\181\59", "\103\179\217\79")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\117\136\63\192\83\158\166\68\163\40\221\68\129\166", "\195\42\215\124\181\33\236")] or LUAOBFUSACTOR_DECRYPT_STR_0("\41\92\49\63\48\244\25", "\152\109\57\87\94\69")),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\214\6\175\188\211\87\163", "\200\153\183\106\195\222\178\52")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\28\226\133\56", "\58\82\131\232\93\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\176\86\198\16\29\28\150\69\194\16\83\43\195\99\216\16\80\58\195\118\195\91\19\113", "\95\227\55\176\117\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\62\114\34\76", "\203\120\30\67\43")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\26\99\234\206\197\45\72\226\220\223\36\64\234", "\185\145\69\45\143"),[LUAOBFUSACTOR_DECRYPT_STR_0("\186\19\24\165\217\130\16\21\162\217\152", "\188\234\127\121\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\58\22\142\61\114\61\130\53\55", "\227\88\82\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\30\182\171\0\114\64\20", "\19\35\127\218\199\98")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\50\250\7\231", "\130\124\155\106")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\202\224\170\227\194\116\186\216\206", "\223\181\171\150\207\195\150\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\59\239\162\11\77\57\232", "\105\44\90\131\206")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\192\223\156\188\31\10\247\229\191\188\38\63\242\229", "\94\159\128\210\217\104")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\103\240\8\187\80\104\219\93", "\26\48\153\102\223\63\31\153")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\73\233\246\0\65\255\209\37", "\147\98\32\141")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\87\230\199\36\113", "\43\120\35\131\170\102\54")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\5\132\179\171\164\213", "\228\52\102\231\214\197\208")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\227\118\207\228\159\75", "\182\126\128\21\170\138\235\121")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\223\45\242", "\102\235\186\85\134\230\115\80")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\9\38\75\86\213\48\92", "\66\55\108\94\63\18\180")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\153\151\56\44\92", "\57\116\237\229\87\71")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\158\184\249\235\114", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\59\12\7\55", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\201\95\230\204\82\149", "\60\225\166\49\146\169")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\28\31\57\47\5\71\59\22\42\39\4\93\111", "\103\79\126\79\74\97") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\158\122\213\114\75\22\174", "\122\218\31\179\19\62"),LUAOBFUSACTOR_DECRYPT_STR_0("\128\216\194\214", "\37\211\182\173\161\169\193"),LUAOBFUSACTOR_DECRYPT_STR_0("\199\51\67\210\49", "\217\151\90\45\185\72\27")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\125\234\23", "\54\163\28\135\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\222\81\135\90\122\104\248\72\144\92\122\38\207\29\182\70\122\37\222", "\31\72\187\61\226\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\7\79\222\69\127\39\200", "\68\163\102\35\178\39\30")]=function()
			local current = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\129\79\249\210\17\167\134\31\170\68\210\194\14\176", "\113\222\16\186\167\99\213\227")];
			if ((current == LUAOBFUSACTOR_DECRYPT_STR_0("\10\11\253\247\59\2\239", "\150\78\110\155")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\182\203\40\246", "\32\229\165\71\129\196\126\223")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\243\128\202\138\152", "\181\163\233\164\225\225"))) then
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\100\130\42\123\85", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\200\202\82\69", "\178\28\186\184\61\55\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\194\73\40\247\0\225", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\208\38\30\17\21\15\179\35\21\19\31\15\246\103\18\10\19\23\231\106\25\17\90\15\251\34\29\26\9\85", "\123\147\71\112\127\122")});
				return;
			end
			if Library.SavedThemes[current] then
				Library.SavedThemes[current] = nil;
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\196\150\125\67", "\38\172\173\226\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\25\41\226\72", "\143\45\113\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\183\18\40\189\182\8", "\92\216\216\124")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\127\55\160\69\233\94\54\246\0", "\157\59\82\204\32") .. current)});
				Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\28\59\229\251\252\230\199", "\209\88\94\131\154\137\138\179"));
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\12\164\194\125\11\47\37", "\66\72\193\164\28\126\67\81"),LUAOBFUSACTOR_DECRYPT_STR_0("\212\34\167\79", "\22\135\76\200\56\70"),LUAOBFUSACTOR_DECRYPT_STR_0("\189\57\246\47\68", "\129\237\80\152\68\61")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
				ThemeDropdown:Set(LUAOBFUSACTOR_DECRYPT_STR_0("\117\173\2\242\9\27\76", "\56\49\200\100\147\124\119"));
			else
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\55\171\252\201", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\1\29\176\72\54", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\169\233\211\124\185\194", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\65\239\69\136\9\228\71\153\9\236\71\152\71\238\8\132\71\170\91\140\95\239\91\195", "\40\237\41\138")});
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\243\113\226\236", "\42\167\20\154\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\235\177\86\126\44\10\221\173\78\126\51\89", "\65\42\158\194\34\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\43\91\11\35", "\142\122\71\50\108\77\141\123")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\59\163\242\29", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\15\55\21\52\227\61\90\60\61\27\48\255\48\90\62\49\20\58\227", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\16\206\89", "\218\119\124\175\62\168\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\207\107\203\169\255\90\247\160\252\77\199\177\161", "\164\197\144\40"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\249\185\159", "\214\227\144\202\235\189")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\160\129\122\5\191\71", "\92\141\197\231\27\112\211\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\214\234\152\179\221\227", "\177\134\159\234\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\234\51\172\203\188\232\52", "\169\221\139\95\192")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentStart = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\240\138\114\58", "\70\190\235\31\95\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\231\25\233\235\190\227\8\255\165\155\225\25\227\235\174\162\57\233\233\181\240", "\133\218\130\122\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\243\226\195", "\88\92\159\131\164\188\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\191\17\156\68\219\228\207\179\43\179\78\212\255\143", "\189\224\78\223\43\183\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\245\153\2", "\161\78\156\234\118")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\178\207\221\178\187\221", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\5\74\126", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\141\117\56\25\141\122\63", "\84\123\236\25")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentEnd = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\196\142\178\3", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\1\205\62\45\46", "\45\67\120\190\74\72\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\46\228\162\247", "\137\64\66\141\197\153\232\142")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\209\47\163", "\232\99\176\66\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\32\33\10\59\143\236\56\248\46\38\70\80\205\177\31\229\59\45\79", "\76\140\65\72\102\27\237\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\214\23\213", "\222\42\186\118\178\183\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\98\211\111\181\110\229\94\143", "\234\61\140\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\212\180", "\111\65\189\218\18")]=30,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\74\3", "\207\35\43\123\85\107\60")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\84\175\166\235\108\124\190", "\25\16\202\192\138")]=DEFAULTS.KSize,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\202\161\238\171\245\254\192", "\148\157\171\205\130\201")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\213\121\44", "\150\67\180\20\73\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\23\29\74\129\29\90\102\136\1", "\45\237\120\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\228\163\43", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\69\217\209\55\87\72\24\127\205\224\33", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\196\166\229\168\126\10", "\18\126\161\192\132\221")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\36\175\7\83\87\39\162\0\83\77", "\54\63\72\206\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\75\64\105\246\59\227\92\92\52\171\53", "\27\168\57\37\26\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\171\112\164\213\44\169\119", "\183\77\202\28\200")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\40\12\189\7\16\52\133\13\60\54\144", "\104\119\83\233")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\202\199\4\55\81\231\253\41\54\119\253\253\42\39", "\35\149\152\71\66")] or LUAOBFUSACTOR_DECRYPT_STR_0("\61\237\68\177\47\21\252", "\90\121\136\34\208"));
	end;
	return WindowAPI;
end;
return Library;
