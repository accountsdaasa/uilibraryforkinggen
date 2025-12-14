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
local DEFAULTS = {[LUAOBFUSACTOR_DECRYPT_STR_0("\156\114\123\47\31\113\209\70\177", "\35\200\29\28\72\115\20\154")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\182\214\215\153\15\59\23\171\195\208\129", "\84\121\223\177\191\237\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\94\204\173\63\126\49\204\190", "\161\219\54\169\192\90\48\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\71\6\36\92\78\20", "\69\41\34\96")};
local COLOR_PALETTE = {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\198\211", "\75\220\163\183\106\98")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\45\168\138\57\222\7", "\185\98\218\235\87")]=0.08,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\57\43\234\209\189", "\202\171\92\71\134\190")]=0.16,[LUAOBFUSACTOR_DECRYPT_STR_0("\5\200\33\141", "\232\73\161\76")]=0.25,[LUAOBFUSACTOR_DECRYPT_STR_0("\156\203\71\88\16", "\126\219\185\34\61")]=0.33,[LUAOBFUSACTOR_DECRYPT_STR_0("\47\215\95\124", "\135\108\174\62\18\30\23\147")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\148\229\63\206", "\167\214\137\74\171\120\206\83")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\229\32\77\244\162", "\199\235\144\82\61\152")]=0.77,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\31\183\32", "\75\103\118\217")]=0.83,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\92\121\0\188\81\224\70\117\13", "\126\167\52\16\116\217")]=0};
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\236\43\38\129\161\21\232", "\156\168\78\64\224\212\121")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\48\231\171\202\8\249\135\233", "\174\103\142\197")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\33\91\61\39\95\234\116\15", "\152\54\72\63\88\69\62")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\208\235\81\246\227", "\60\180\164\142")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\93\6\44\41\249\67", "\114\56\62\101\73\71\141")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\234\216\193\182\253\137", "\164\216\137\187")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\227\41\166", "\107\178\134\81\210\198\158")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\11\154\210\142\57\28\137", "\202\88\110\226\166")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\27\144\248\193\198", "\170\163\111\226\151")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\34\62\189\47", "\73\113\80\210\88\46\87")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\182\37\195\22\232\150\14\234", "\135\225\76\173\114")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\228\188\181\174\188\181\56\202", "\199\122\141\216\208\204\221")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\201\21\253\90\209", "\150\205\189\112\144\24")]=Color3.fromRGB(225, 225, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\135\188\73\10\156\64", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\28\4\214\184\104\212", "\230\180\127\103\179\214\28")]=Color3.fromRGB(180, 180, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\71\82", "\128\236\101\63\38\132\33")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\172\9\80\146\234\221\167", "\175\204\201\113\36\214\139")]=Color3.fromRGB(100, 100, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\216\39\211\15\66", "\100\39\172\85\188")]=Color3.fromRGB(200, 200, 210)},[LUAOBFUSACTOR_DECRYPT_STR_0("\157\113\183\139\42", "\83\205\24\217\224")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\209\204\195\57\233\210\239\26", "\93\134\165\173")]=Color3.fromRGB(50, 40, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\251\197\199\56\207\160\92\153", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(35, 25, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\90\117\7\199\105", "\106\133\46\16")]=Color3.fromRGB(70, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\35\112\249\84\84\9", "\32\56\64\19\156\58")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\203\230\83\84\230\210", "\224\58\168\133\54\58\146")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\9\225\157\221\221\208", "\175\187\235\113\149\217\188")]=Color3.fromRGB(180, 150, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\187\147\67\232\124", "\24\92\207\225\44\131\25")]=Color3.fromRGB(100, 60, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\124\218\182\72\20\106\105\244", "\29\43\179\216\44\123")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\153\220\38\77\168\213\52", "\44\221\185\64")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\50\238\76\90\113\0\245\106\120", "\19\97\135\40\63")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\138\89\53\58\58\61\186", "\81\206\60\83\91\79")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\103\191\213\127\13\228", "\196\46\203\176\18\79\163\45")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\156\39\120\31\49\247\251", "\143\216\66\30\126\68\155")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\203\14\206\203\183\228\245\171\218\25", "\129\202\168\109\171\165\195\183")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\6\93\49\217\203\24\242", "\134\66\56\87\184\190\116")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\29\50\10\190\23\255\4\59\56", "\85\92\81\105\219\121\139\65")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\217\182\86\68\105\211\233", "\191\157\211\48\37\28")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8", "\90\191\127\148\124")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\92\130\40\22\109\139\58", "\119\24\231\78")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\182\40\189\94\248\65\3\137", "\113\226\77\197\42\188\32")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\30\19\242\180\47\26\224", "\213\90\118\148")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\7\135\66\95\84\37\177\117\66\87\33\166", "\45\59\78\212\54")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\52\83\133\138\147\34\185", "\144\112\54\227\235\230\78\205")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\148\58\14\248\217\94\189\60\28", "\59\211\72\111\156\176")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\109\136\241\35\75\149\240", "\77\46\231\131")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\156\70\183\77\191\71", "\32\218\52\214")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\108\16\28\169\248\190", "\58\46\119\81\200\145\208\37")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\9\139\3\165\173\184\52\42\158", "\86\75\236\80\204\201\221")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\80\70\94\145\251\134\97", "\235\18\33\23\229\158")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\99\174\211\180\91\191\210", "\219\48\218\161")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\100\93\200", "\128\132\17\28\41\187\47")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\53\55\30\46\121\0\32\13\41", "\61\97\82\102\90")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\135\39\165\76\224\82\16", "\105\204\78\203\43\167\55\126");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\161\175\37\31\6\8\211\31\175\185\44\16", "\49\197\202\67\126\115\100\167");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\35\83\218\36\133\69\16\61\72\208\39", "\62\87\59\191\73\224\54");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\245\0\226\200\244\17\255\221\238\6\160\134\168\91\170\155\178\83\173\155\181\90\163\158\176\82\173", "\169\135\98\154");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\248\99\37\70\233\54\218\236\98\45", "\168\171\23\68\52\157\83")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\199\116\251\169\11\34\147\253\119\252\174\36\57\142\251\127", "\231\148\17\149\205\69\77"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\180\174\211\247\82", "\159\224\199\167\155\55")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\195\246\36\198", "\178\151\147\92")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\232\94\51\6\69\117\130", "\26\236\157\44\82\114\44")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\62\47\215\87\47", "\59\74\78\181")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\11\222\78\83\181\44\210\91\78\186\42\223", "\211\69\177\58\58"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\153\234\109\252\239\194\180\228\109\252\230\197", "\171\215\133\25\149\137"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\245\201\48\246\234", "\34\129\168\82\154\143\80\156"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\145\179\49\7\77", "\233\229\210\83\107\40\46"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\254\122\13\229\6\192\78\55", "\101\161\34\82\182")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\215\53\102\209\221\228\145\43\252", "\78\136\109\57\158\187\130\226")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\1\6\198\194\61\62\245\244", "\145\94\95\153")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\194\244\43\250\72\177\238\200\0", "\215\157\173\116\181\46")] = object.Position.Y.Offset;
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
	local data = BUILTIN_THEMES[themeName];
	if (not data and Library.SavedThemes[themeName]) then
		local saved = Library.SavedThemes[themeName];
		data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\2\189\133\246\213\34\150\172", "\186\85\212\235\146")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\136\18\251\59\239\74\224\166", "\56\162\225\118\158\89\142")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\17\197\162\0\255", "\184\60\101\160\207\66")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\129\127\185\63\150\45", "\220\81\226\28")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\214\129\254\228\211\65", "\167\115\181\226\155\138")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\39\255\72", "\166\130\66\135\60\27\17")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\79\214\97\20\69\88\197", "\80\36\42\174\21")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\4\37\117\69\21", "\26\46\112\87")]=ToColor(saved.Stroke)};
	end
	if not data then
		return;
	end
	Theme.WindowBG = data.WindowBG;
	Theme.SidebarBG = data.SidebarBG;
	Theme.ItemBG = data.ItemBG;
	Theme.AccentStart = data.Accent1;
	Theme.AccentEnd = data.Accent2;
	Theme.Text = data.Text;
	Theme.TextDark = data.TextDark;
	Theme.UIStrokeColor = data.Stroke;
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\158\54\162\91\189\181\64\183\173", "\212\217\67\203\20\223\223\37")) then
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
	Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\133\178\139\199\168\159\173\220\174\185\160\215\183\136", "\178\218\237\200")] = themeName;
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\181\186\232\214\191\178\168\218\165\186\232", "\176\214\213\134");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\223\164\184\211\143\83\87\193\132", "\57\148\205\214\180\200\54")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\57\244\59\51\67\59", "\22\114\157\85\84"), LUAOBFUSACTOR_DECRYPT_STR_0("\229\199\1\193\92\242\177\132\249\6\202\83\255\166\195", "\200\164\171\115\164\61\150"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\247\17\64\134\176\211\22\76", "\227\222\148\99\37"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\24\91\92\241\222\54\92\103\223", "\153\83\50\50\150");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\100\114\17\118", "\45\61\22\19\124\19\203"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\236\19\4\251\36\98\184\204\23", "\217\161\114\109\149\98\16");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\9\31\110\189\112\27\37\54\104", "\20\114\64\88\28\220"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\40\241\187\234\222\184\35", "\221\81\97\178\212\152\176"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\46\239\8\194\236\24", "\122\173\135\125\155"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\232\33\170\47\52\203\144\243\1\173\54\62\235\139\207\19\173\45\48\193\138\213", "\168\228\161\96\217\95\81"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\248\29\85\53\82\248\222\32\79\59\69\218\216\32\72", "\55\187\177\78\60\79"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\203\71\255\100\218\148\57\193\81", "\224\77\174\63\139\38\175"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\173\79\72\59\144\99\84\33\135\74\93\60", "\78\228\33\56");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\108\179\14\128", "\229\174\30\210\99"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\47\228\146\93\232\31\56\9", "\89\123\141\230\49\141\93");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\88\209\30\17\78\250\116\248\24", "\42\147\17\150\108\112"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\171\44\120\226\196\14\164\40\115", "\136\111\198\77\31\135"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\12\191\66\145\229\21\172\14", "\201\98\105\199\54\221\132\119"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\146\37\173\6\66\18\137\151", "\204\217\108\227\65\98\85");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241\14\213\74\215\250\235", "\160\62\163\149\133\76"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\46\32\209\216\165\31", "\163\182\192\109\79"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\22\39\3\203\242\38\41\21\206\241\23\41\12\207\231\103", "\149\84\70\96\160")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\7\57\56\196\7\43\36\195\17\43\36\215\29\34", "\141\88\102\109")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\80\216\117\31\51\114\212\186", "\161\211\51\170\16\122\93\53"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\208\140\167\60\239\161\188\15\238\167", "\72\155\206\210");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\119\85\9\54\100\111\64\26\60\72", "\83\38\26\52\110"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\62\6\85\72\18\36\82\106\22\51\79\87\52\40\72\75\3\53\71\81\25\51", "\38\56\119\71"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\204\208\115\233\21\121\192\208\96\233\22\85\242\227\93", "\54\147\143\56\182\69")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\233\190\212\118\239\249\178\192\113\224\229\130\254\69\218", "\191\182\225\159\41")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\20\45\3\106\187\168\241\20\42\23\122\141\129\209\46\6", "\162\75\114\72\53\235\231")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\179\3\111\221\99\45\191\3\125\221\96\1\141\48\65", "\98\236\92\36\130\51")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\155\38\39\133\117\135\134\15\157\38\35\188\67\187\176\36", "\80\196\121\108\218\37\200\213")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\63\76\41\64\123\33\185", "\234\96\19\98\31\43\110"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\57\32\103\238\147\95\162\40\54\127\238\150\87\175", "\235\102\127\50\167\204\18")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\174\230\42\80\39\95\175", "\78\48\193\149\67\36")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\17\148\25\85\57\17\142", "\33\80\126\224\120")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\197\165\2\195\89\216\186\2\202\79\252\169\17\193\82\239\177", "\60\140\200\99\164")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\180\253\30\35", "\194\231\148\100\70")]=UDim2.new(0, 100, 0, 100)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\111\65\192\164\243\252\84\77\207\176\230\201\84\73\207\160\239", "\168\38\44\161\195\150")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\179\245\152\115", "\118\224\156\226\22\80\136\214")]=UDim2.new(0, 80, 0, 80)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\225\74\137\86\231\86\142", "\224\34\142\57")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\168\209\220\103\248\82\0", "\110\190\199\165\189\19\145\61")]=0}):Play();
		end
	end
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\229\212\67\231\140\192\214\238\92\237\146", "\167\186\139\23\136\235")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\37\138\189\36\37\152\161\35\51\152\161\55\63\145", "\109\122\213\232")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\209\200\151\25\209\218\139\30\199\218\139\10\203\211", "\80\142\151\194")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\212\118\65\6", "\44\99\166\23"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\79\254\45\51\49\165\110\212\38\56\39\165\117\249\44\36", "\196\28\151\73\86\83");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\42\14\2\131\92\17\115\253\23", "\22\147\99\73\112\226\56\120"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\92\209\225\159\183\126\231", "\237\216\21\130\149"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\77\77\80\188\197\87\140\73\121\77\177\196\91", "\62\226\46\63\63\208\169"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\48\121\138\12\25\3\95\252\22\64\151", "\62\133\121\53\227\127\109\79"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\61\2\244\210\170\171\30\19", "\194\112\116\82\149\182\206"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\129\124\25\196\230\7\55\175", "\110\89\200\44\120\160\130"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\209\74\75\70", "\45\203\163\43\38\35\42\91"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\172\236\34\131\173\93\220\130", "\52\178\229\188\67\231\201"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\68\72\16\213\73\55\53\78\94", "\67\65\33\48\100\151\60"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\206\141\215\225\209\226\188", "\147\191\135\206\184"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\1\149\213\202\92\185\129", "\210\228\72\198\161\184\51"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		table.insert(Library.ThemeObjects.Strokes, TabBtnStroke);
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\2\91\242\30\96\222\55\91\246\30\112\215", "\174\86\41\147\112\19")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\120\15\129\4\55", "\203\59\96\237\107\69\111\113")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\16\4\173\239\34\224\214\54\19\162\226\40", "\183\68\118\204\129\81\144")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\45\162\124\235\25", "\226\110\205\16\132\107")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\201\215\238", "\33\139\163\128\185")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\121\89\9\219", "\190\55\56\100")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\101\187\46\17\24\230", "\147\54\207\92\126\115\131")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\50\39\114\1\114\4\63\50\91\31\127\0\52", "\30\109\81\85\29\109"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\192\65\85\177\51", "\156\159\17\52\214\86\190");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\198\145\181\189\251\145\189\183\224\168\168", "\220\206\143\221"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\29\22\220\200\219\136\122", "\178\230\29\77\119\184\172"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\211\172\11\22\114", "\152\149\222\106\123\23")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\39\251\70", "\213\189\70\150\35")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\71\117\5\74", "\104\47\53\20"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\73\153\8\144\14\161\73\141", "\111\195\44\225\124\220"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\236\67\24\103\137\190\204\82\15\125", "\203\184\38\96\19\203"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\90\90\78\220\55\118\107", "\174\89\19\25\33"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\59\97\90\229\136\0\42", "\107\79\114\50\46\151\231"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\22\136", "\160\89\198\213\73\234\89\215")) or LUAOBFUSACTOR_DECRYPT_STR_0("\103\87\146", "\165\40\17\212\158");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.AccentEnd) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\216\11\56\33\247\214\29\61\34\198\214\4\60\52\182", "\70\133\185\104\83")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\39\74\72\37\219", "\169\100\37\36\74")]=((val and Theme.AccentEnd) or Theme.UIStrokeColor)}):Play();
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\33\132\182\89\15\137\226\116\5\137\171\85\4", "\48\96\231\194"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\235\91\0\35\22\204\239\134\198\91\12\33\28\152\187\139\193\73\78\63\16\223\167\151\136\84\1\58\87", "\227\168\58\110\77\121\184\207"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\93\46\190\77\180", "\197\27\92\223\32\209\187\17"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\90\219\239\47\94\193\254\15", "\155\99\63\163"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\164\195\160\128\188", "\228\226\177\193\237\217"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\153\0\233\38\190\38\244", "\134\84\208\67"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\133\181\72\1\163\141\89", "\60\115\204\230"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\243\100\203\59\233\117\235", "\16\135\90\139"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\102\7\62\75", "\24\52\20\102\83\46\52"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\6\2\43\29\202\42\51", "\111\164\79\65\68"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\203\130\211\43", "\138\166\185\227\190\78"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\93\230\56\64\45\28\217", "\121\171\20\165\87\50\67"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\17\158\36\184\6\207\61\183\34", "\98\166\88\217\86\217"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\228\120\12\131", "\188\150\150\25\97\230"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\140\71\22\32\236\216\140\83", "\141\186\233\63\98\108"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\197\239\52\162\7\228\254\56\185\43", "\69\145\138\76\214"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\69\230\170\134\173\24\117\221", "\118\16\175\233\233\223"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\135\39\180\226\135\116\133\131\19\169\239\134\120", "\29\235\228\85\219\142\235"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\25\198\181\205\115\65\48\92\14\215\168\210\123\66", "\50\93\180\218\189\23\46\71");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\141\120\67\86\210\77\204", "\40\190\196\59\44\36\188"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\108\240\189\233\105\33\61\92\211\161\238", "\109\92\37\188\212\154\29"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\37\237\183\204\61\79\16\234\135\204\63\78\1\225\176\240\56\64\1", "\58\100\143\196\163\81")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\71\59\183\29\70\253", "\110\122\34\67\195\95\41\133"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\70\180\90\88\213\125\255\21\4", "\182\21\209\59\42");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\126\230\18\51\176\178\69", "\222\215\55\165\125\65"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\24\212\222\14", "\42\76\177\166\122\146\161\141")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\145\143\29\218\91\99\177\158\10\192", "\22\197\234\101\174\25")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\49\189\200\84\186\195\146\34\58", "\230\77\84\197\188\22\207\183"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\205\17\222\232\174\180\228\33\246\26", "\85\153\116\166\156\236\193\144")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\229\85\167\198\21\176\244\66\189", "\96\196\128\45\211\132"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\159\122\82\215", "\184\85\237\27\63\178\207\212"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\92\17\75\36\88\11\90\4", "\63\104\57\105"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\130\188\80\41\146\176\80\4\137", "\36\107\231\196"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\110\176\174\130\94\161\226\174\73\176\175\148\19\251\236", "\231\61\213\194");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\30\124\27\163\56\97", "\19\105\205\93"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\11\204\142\51\165\1\208\134\25\187\9\211\132", "\95\201\104\190\225"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\130\222\205\218\166\239\211\193\191\207\206\217\161\248\194\220\160\199\205", "\174\207\171\161");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\215\46\252\234\217\232\236", "\183\141\158\109\147\152"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\32\202\5\63\29\202\13\53\6\243\24", "\108\76\105\134"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\202\199\162\238\194\254\209\180\194\193\229\209\180\239\218\216\204\171\228", "\174\139\165\209\129")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\182\250\213\228\12\104", "\24\195\211\130\161\166\99\16"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\117\6\232\62\80\30\8\77\167", "\118\38\99\137\76\51");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\15\38\29\27\46\248\52", "\64\157\70\101\114\105"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\116\173\191\247", "\112\32\200\199\131")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\24\85\68\172\225\190\54\56\95\82", "\66\76\48\60\216\163\203")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\250\181\124\255\90\205\48\191\130", "\68\218\230\25\147\63\174"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\158\47\95\73\181\185\106\122\88\179\160\57\29\2\248", "\214\205\74\51\44");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\73\250\232\85\239\88\246\243\121", "\23\154\44\130\156"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\180\172\163\51", "\115\113\198\205\206\86"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\82\230\78\168\86\252\95\136", "\58\228\55\158"), Frame);
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
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58\30\184\33\160\134\222", "\85\212\233\176\78\92\205"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\113\171\237\88\86\141\240", "\130\42\56\232"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\167\37\238\69", "\95\138\213\68\131\32"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\45\185\87\90\43\42\164\79", "\22\74\72\193\35"), Frame);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\124\252\76\14\118\252", "\56\76\25\132"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\123\207\191\35\221\30\213\174\62\219\30\201\174\52\202\16\143\229", "\175\62\161\203\70");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\244\224\28\39\50\216\209", "\85\92\189\163\115"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\15\190\49\53\44", "\88\73\204\80"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\134\8\82\11\207\58\151\31\72", "\186\78\227\112\38\73"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\126\218\71\82\126\245\82\243\65", "\26\156\55\157\53\51"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\241\53\214\170\94\137\202", "\48\236\184\118\185\216"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\214\180\77\53", "\84\133\221\55\80\175")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\238\62\163", "\60\221\135\68\198\167")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\175\249\142\71", "\185\142\221\152\227\34"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\215\86\247\70", "\151\56\165\55\154\35\83"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\148\70\29\250\140\66\7\235\172", "\142\192\35\101"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\250\116\43\166\235", "\118\182\21\73\195\135\236\204");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\46\27\77\1", "\157\104\92\122\32\100\109"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\163\215\222\17\38\143\174\175", "\203\195\198\175\170\93\71\237"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\10\66\45\214\94\3\248", "\156\78\43\94\181\49\113");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\237\220\183\41\76\97", "\25\18\136\164\195\107\35"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\4\138\64\96\178\196\170", "\216\136\77\201\47\18\220\161"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\233\51\206\42\201\150\57\227\37", "\226\77\140\75\186\104\188"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\154\193\192\38\15\149\199\222\52", "\47\217\174\176\95");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\244\85\13\160\90\125\52", "\70\216\189\22\98\210\52\24"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\246\132\149\210\222\214\166\137\199", "\179\186\191\195\231"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\218\48\8\237\252\59\89", "\132\153\95\120");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\146\189\30\52\183\246\169\191\185", "\192\209\210\110\77\151\186");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\195\15\43\249\253\203\225\17\38\169\202\202\225\21\35\224\243\197\226\15\39", "\164\128\99\66\137\159"), LUAOBFUSACTOR_DECRYPT_STR_0("\35\136\231\176\15\157\169\189\15\153\240\254\15\135\169\170\8\128\250\254\5\145\236\189\21\157\230\172\78", "\222\96\233\137"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\154\161\162\27\129\231\227", "\144\217\211\199\127\232\147"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\204\42\38\60", "\36\152\79\94\72\181\37\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\219\85\54\199\204\7\29\206\130\7\19\222\194\66\27\210\206", "\95\183\184\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\51\238\33\90", "\98\213\95\135\70\52\224")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\172\197\120\70", "\52\158\195\169\23")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\84\189\63\113", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\172\168\250\193\123\154\165\169\241\113\154\183\236\208", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\214\203\173", "\17\66\191\165\198\135\236\119")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\187\186\3\236\178\163\158\11\166\189\16\240\250\232\159\8\168\225\33\247\204\226\228\62\189\250\55\234", "\177\111\207\206\115\159\136\140")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\49\140\8\0", "\63\101\233\112\116\180\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\51\232\31\253\37\131\125\173\49\247\58\204\41\254", "\86\163\91\141\114\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\7\125\116\52", "\90\51\107\20\19")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\169\245\131\238\40\129\228", "\93\237\144\229\143"),LUAOBFUSACTOR_DECRYPT_STR_0("\38\248\255\14", "\38\117\150\144\121\107"),LUAOBFUSACTOR_DECRYPT_STR_0("\29\178\224\49\52", "\90\77\219\142")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\44\60", "\26\134\100\65\89\44\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\230\60\38\167\229\163\4\43\161\252\230", "\196\145\131\80\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\56\188\7\15", "\136\126\208\102\104\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\71\181\237\86\189\64\56\95\108\190\198\70\162\87", "\49\24\234\174\35\207\50\93"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\251\238\156", "\17\108\146\157\232")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\111\198\18\236\58\164\95", "\200\43\163\116\141\79")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\128\9\30\150\162\230\230\177\34\9\139\181\249\230", "\131\223\86\93\227\208\148")] or LUAOBFUSACTOR_DECRYPT_STR_0("\199\64\176\183\8\185\247", "\213\131\37\214\214\125")),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\42\41\179\227\39\40\46", "\129\70\75\69\223")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\202\254\236", "\143\38\171\147\137\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\131\175\246\67\192\193\194\144\188\253\23\163\224\216\135\180\246\67\194\199\158\204\247", "\180\176\226\217\147\99\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\181\46\0", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\117\136\50\208\86\184\171\79\186\25\251\64\129\166", "\195\42\215\124\181\33\236"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\85\54\61\32\240\2\85\51\59\55", "\152\109\57\87\94\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\205\223\15\174\187\146\122\169\244\210", "\200\153\183\106\195\222\178\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\17\226\132\49\75\91\49\232", "\58\82\131\232\93\41")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\173\86\221\16", "\95\227\55\176\117\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\127\53\78\235\44\118\38\70\174", "\203\120\30\67\43"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\36\65\227\219\240\38\70", "\185\145\69\45\143")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\181\32\55\163\203\190\23\28\171\217\164\30\20\163", "\188\234\127\121\198")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\15\59\29\135\55\37\49\164", "\227\88\82\115")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\22\190\162\0\114\81\61\157", "\19\35\127\218\199\98")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\239\15\239\62\220", "\130\124\155\106")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\200\245\170\173\226\45", "\223\181\171\150\207\195\150\28")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\57\224\171\7\88\104", "\105\44\90\131\206")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\229\170\173", "\94\159\128\210\217\104")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\252\30\171\123\126\235\113", "\26\48\153\102\223\63\31\153")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\49\84\255\252\9\69", "\147\98\32\141")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\74\247\198\3", "\43\120\35\131\170\102\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\96\14\130\187\160", "\228\52\102\231\214\197\208"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\239\123\222\239\133\13", "\182\126\128\21\170\138\235\121")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\184\219\35\227\130\83\36\14\142\215\48\188\198", "\102\235\186\85\134\230\115\80") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\115\9\56\94\103\216\54", "\66\55\108\94\63\18\180"),LUAOBFUSACTOR_DECRYPT_STR_0("\39\131\138\32", "\57\116\237\229\87\71"),LUAOBFUSACTOR_DECRYPT_STR_0("\154\184\227\236\110", "\39\202\209\141\135\23\142")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\54\17\30", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\162\211\66\230\198\81\193\229\94\254\198\78\146", "\60\225\166\49\146\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\18\38\45\15", "\103\79\126\79\74\97")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\148\126\222\118", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\131\196\196\204\200\179\92\243\247\206\194\204\175\81\243\245\194\205\198\179", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\54\76\222", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\67\196\29\90\204\110\212\23\90\198\127\243\67", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\210\78\150", "\31\72\187\61\226\46")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\3\69\211\82\114\48", "\68\163\102\35\178\39\30")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\101\200\215\15\176", "\113\222\16\186\167\99\213\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\15\247\250\44\15\248\253", "\150\78\110\155")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentStart = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\186\250\4\244\182\12\186\78\145\241\47\228\169\27", "\32\229\165\71\129\196\126\223")] or LUAOBFUSACTOR_DECRYPT_STR_0("\224\156\215\149\142\216", "\181\163\233\164\225\225"));
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\126\138\51\114", "\23\48\235\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\79\223\219\82\89\55\211\110\195\152\124\84\48\215\114\206\152\126\88\63\221\110", "\178\28\186\184\61\55\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\193\70\59", "\149\164\173\39\92\146\110")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\24\51\16\22\20\225\20\21\19\31\24\231\117", "\123\147\71\112\127\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\196\145\101", "\38\172\173\226\17")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\105\20\42\238\88\29\56", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\180\9\57", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\51\160\76\255\90\49\167", "\157\59\82\204\32")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentEnd = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\7\1\192\239\251\248\214\191\44\10\235\255\228\239", "\209\88\94\131\154\137\138\179")] or LUAOBFUSACTOR_DECRYPT_STR_0("\11\180\215\104\17\46", "\66\72\193\164\28\126\67\81"));
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\41\176\76", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\190\41\235\48\88\236", "\129\237\80\152\68\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\164\13\244\18", "\56\49\200\100\147\124\119")]=Enum.TextXAlignment.Center});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\63\178\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\0\165\64\40\10\226\108\33\22", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\170\230\192", "\215\182\198\135\167\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\178\118\222\71\138\78\230\77\166\76\243", "\40\237\41\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\227\113\252\249\95\203\96", "\42\167\20\154\152")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\242\163\65\116\41\69\242\166\71\99", "\65\42\158\194\34\17")]=LUAOBFUSACTOR_DECRYPT_STR_0("\42\53\87\31\62\173\48\235\3\105\28\66", "\142\122\71\50\108\77\141\123"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\163\243\20\57\20\161\244", "\91\117\194\159\120")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\37\34\10\23\50\246\40\31\54\59\1", "\68\122\125\94\120\85\145")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\40\35\236\75\218\203\191\25\8\251\86\205\212\191", "\218\119\124\175\62\168\185")] or LUAOBFUSACTOR_DECRYPT_STR_0("\129\245\78\197\176\252\92", "\164\197\144\40"));
	end;
	return WindowAPI;
end;
return Library;
