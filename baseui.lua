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
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\152\198\209\11\23\39\168", "\75\220\163\183\106\98")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\53\179\133\51\214\21\152\172", "\185\98\218\235\87")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\53\35\227\220\171\217\30\0", "\202\171\92\71\134\190")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\213\41\133\11\230", "\232\73\161\76")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\218\65\88\16\175\136", "\126\219\185\34\61")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\205\93\119\112\99\161", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\50\223", "\167\214\137\74\171\120\206\83")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\245\42\73\220\166\153\251", "\199\235\144\82\61\152")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\2\171\36\12\19", "\75\103\118\217")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\244\90\127\3", "\126\167\52\16\116\217")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\255\39\46\132\187\14\222\239", "\156\168\78\64\224\212\121")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\231\161\203\5\239\183\236\32", "\174\103\142\197")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\60\90\53\7\121", "\152\54\72\63\88\69\62")]=Color3.fromRGB(225, 225, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\199\237\89\218\208\191", "\60\180\164\142")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\93\6\44\41\249\64", "\114\56\62\101\73\71\141")]=Color3.fromRGB(180, 180, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\236\195\208", "\164\216\137\187")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\227\41\166\130\255\25\217", "\107\178\134\81\210\198\158")]=Color3.fromRGB(100, 100, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\26\144\201\161\61", "\202\88\110\226\166")]=Color3.fromRGB(200, 200, 210)},[LUAOBFUSACTOR_DECRYPT_STR_0("\243\6\140\252\211", "\170\163\111\226\151")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\38\57\188\60\65\32\11\54", "\73\113\80\210\88\46\87")]=Color3.fromRGB(50, 40, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\37\201\23\229\128\62\239\53", "\135\225\76\173\114")]=Color3.fromRGB(35, 25, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\249\189\189\142\154", "\199\122\141\216\208\204\221")]=Color3.fromRGB(70, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\140\222\19\245\118\226\252", "\150\205\189\112\144\24")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\135\188\73\10\156\67", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\26\31\199", "\230\180\127\103\179\214\28")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\71\82\192\64\242\135", "\128\236\101\63\38\132\33")]=Color3.fromRGB(180, 150, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\189\3\75\189\238", "\175\204\201\113\36\214\139")]=Color3.fromRGB(100, 60, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\112\197\59\216\11\80\238\18", "\100\39\172\85\188")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\137\125\191\129\38\161\108", "\83\205\24\217\224")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\204\201\56\228\196\223\31\193", "\93\134\165\173")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\154\247\199\195\47\194\166", "\30\222\146\161\162\90\174\210")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\204\90\117\7\199\105", "\106\133\46\16")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\124\37\117\253\79\76\76", "\32\56\64\19\156\58")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\203\230\83\84\230\179\78\201\247\66", "\224\58\168\133\54\58\146")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\125\83\77\252\96\138\147", "\107\57\54\43\157\21\230\231")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\136\18\240\183\200\234\213\143", "\175\187\235\113\149\217\188")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\24\170\135\77\246\117\108", "\24\92\207\225\44\131\25")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\127\214\160\88", "\29\43\179\216\44\123")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\153\220\38\77\168\213\52", "\44\221\185\64")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\53\226\80\75\87\0\245\67", "\19\97\135\40\63")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\138\89\53\58\58\61\186", "\81\206\60\83\91\79")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\130\227\102\61\204\70\161\109\164\220\125\61", "\196\46\203\176\18\79\163\45")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\156\39\120\31\49\247\251", "\143\216\66\30\126\68\155")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\218\12\207\204\166\217\245\185", "\129\202\168\109\171\165\195\183")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\1\87\37\214\219\6\245", "\134\66\56\87\184\190\116")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\26\35\8\182\28\248", "\85\92\81\105\219\121\139\65")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\223\180\125\68\117\209", "\191\157\211\48\37\28")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\253\24\199\21\62\218\29\245\14", "\90\191\127\148\124")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\90\128\7\3\125\138\61", "\119\24\231\78")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\177\57\183\69\215\69\2", "\113\226\77\197\42\188\32")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\14\19\236\161\41", "\213\90\118\148")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\111\43\172\66\105\90\60\191\69", "\45\59\78\212\54")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\59\95\141\140\161\43\163", "\144\112\54\227\235\230\78\205");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\183\45\9\253\197\87\167\102\5\239\223\85", "\59\211\72\111\156\176");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\90\143\230\32\75\148\173\39\93\136\237", "\77\46\231\131");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\168\86\174\65\169\71\179\84\179\80\236\15\245\13\230\18\239\5\225\18\232\12\239\23\237\4\225", "\32\218\52\214");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\125\3\48\186\229\181\87\125\91\30", "\58\46\119\81\200\145\208\37")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\24\137\62\168\135\178\34\34\138\57\175\168\169\63\36\130", "\86\75\236\80\204\201\221"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\70\72\99\137\251", "\235\18\33\23\229\158")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\191\217\175", "\219\48\218\161")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\100\110\72\207\70\239\234", "\128\132\17\28\41\187\47")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\21\51\4\54\88", "\61\97\82\102\90")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\130\33\191\66\193\94\29\8\184\39\164\69", "\105\204\78\203\43\167\55\126"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\139\165\55\23\21\13\196\80\177\163\44\16", "\49\197\202\67\126\115\100\167"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\35\90\221\37\133", "\62\87\59\191\73\224\54"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\243\3\248\197\226", "\169\135\98\154"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\244\79\27\103\254\50\196\206", "\168\171\23\68\52\157\83")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\203\73\202\130\35\43\148\241\101", "\231\148\17\149\205\69\77")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\191\158\248\200\84\254\140\162", "\159\224\199\167\155\55")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\200\202\3\253\241\245\47\215\227", "\178\151\147\92")] = object.Position.Y.Offset;
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
Library.RefreshObjects = function(self)
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
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\171\232\69\29\16\70\127\143\233", "\26\236\157\44\82\114\44")) then
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
Library.ApplyTheme = function(self, themeName)
	local data = BUILTIN_THEMES[themeName];
	if (not data and Library.SavedThemes[themeName]) then
		local saved = Library.SavedThemes[themeName];
		data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\29\39\219\95\37\57\247\124", "\59\74\78\181")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\216\94\95\177\36\195\120\125", "\211\69\177\58\58")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\241\124\248\203\236", "\171\215\133\25\149\137")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\192\203\49\255\225\36\173", "\34\129\168\82\154\143\80\156")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\177\48\14\70\90\219", "\233\229\210\83\107\40\46")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\71\42\194", "\101\161\34\82\182")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\8\65\234\255\227\144\37", "\78\136\109\57\158\187\130\226")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\43\235\254\53\58", "\145\94\95\153")]=ToColor(saved.Stroke)};
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
	Library:RefreshObjects();
	Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\194\242\55\192\92\165\248\195\0\225\70\178\240\200", "\215\157\173\116\181\46")] = themeName;
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\54\187\133\244\211\50\250\129\225\213\59", "\186\85\212\235\146");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\233\136\24\249\30\235\86\247\168", "\56\162\225\118\158\89\142")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\119\12\206\168\23\241", "\184\60\101\160\207\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\16\142\110\185\48\134\101\252\3\151\114\178\56\140\123", "\220\81\226\28"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\214\144\254\239\201\52\192\139", "\167\115\181\226\155\138"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\201\43\233\91\92\116\200\215\11", "\166\130\66\135\60\27\17");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\88\207\120\53", "\80\36\42\174\21"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\99\17\62\116\104\2\54\119\75", "\26\46\112\87");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\10\140\102\190\187\76\177\183\55", "\212\217\67\203\20\223\223\37"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\139\221\168\131\173\192", "\178\218\237\200"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\213\196\164\186\237\213", "\176\214\213\134"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\132\151\199\184\83\90\224\159\183\192\161\89\122\251\163\165\192\186\87\80\250\185", "\57\148\205\214\180\200\54"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\212\6\61\108\23\222\58\58\101\6\239\52\61\120\6", "\22\114\157\85\84"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\206\11\208\127\227\188\208\196\29", "\200\164\171\115\164\61\150"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\151\250\19\80\151\156\248\12\70\136\187\230", "\227\222\148\99\37");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\64\83\251\252", "\153\83\50\50\150"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\105\127\103\16\118\137\76\79", "\45\61\22\19\124\19\203");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\59\42\231\3\116\176\196\28\25", "\217\161\114\109\149\98\16"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\45\57\123\185\88\19\34\61\112", "\20\114\64\88\28\220"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\4\202\160\212\209\191\52\13", "\221\81\97\178\212\152\176"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\230\206\51\220\90\234\194\51", "\122\173\135\125\155");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\196\24\173\29\36\220\144\206\14", "\168\228\161\96\217\95\81"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\248\13\83\61\89\222\195", "\55\187\177\78\60\79"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\15\207\92\224\65\221\143\56\192\91\200\73\195\143\63\157", "\224\77\174\63\139\38\175")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\187\126\109\7\187\108\113\0\173\108\113\20\161\101", "\78\228\33\56")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\125\160\6\128\192\89\167\10", "\229\174\30\210\99"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\48\207\147\69\249\50\55\60\248\143", "\89\123\141\230\49\141\93");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\124\247\11\21\104\230\101\226\3\30", "\42\147\17\150\108\112"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 100, 0, 100);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\143\12\108\247\237\12\178\31\126\243\225\0\133\34\113\244\252\29\167\36\113\243", "\136\111\198\77\31\135"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\61\54\140\105\141\203\36\150\58\54\148\85\188\232\18", "\201\98\105\199\54\221\132\119")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\134\51\168\30\50\26\159\134\52\188\18\1\52\160\188", "\204\217\108\227\65\98\85")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\97\252\222\218\28\239\109\252\205\218\3\198\88\208\240\241", "\160\62\163\149\133\76")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\233\159\38\16\243\249\147\50\22\252\229\163\12\35\198", "\163\182\192\109\79")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\11\25\43\255\197\27\21\63\249\202\27\32\6\211\240\32", "\149\84\70\96\160")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\7\57\38\210\8\41\62", "\141\88\102\109"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\140\108\255\89\37\16\124\239\154\126\227\74\63\25", "\161\211\51\170\16\122\93\53")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\196\145\153\23\200\135\136\13", "\72\155\206\210")] or 100;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\118\117\71\7\39\79\117\90", "\83\38\26\52\110")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\24\51\71\76\30\40\72", "\38\56\119\71")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\218\226\89\209\32\98\225\238\86\197\53\87\225\234\86\213\60", "\54\147\143\56\182\69")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\229\136\229\76", "\191\182\225\159\41")]=UDim2.new(0, kSize, 0, kSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\2\31\41\82\142\179\208\42\28\59\69\138\149\199\37\17\49", "\162\75\114\72\53\235\231")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\191\53\94\231", "\98\236\92\36\130\51")]=UDim2.new(0, kSize * 0.8, 0, kSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\148\22\31\179\81\161\186\62", "\80\196\121\108\218\37\200\213")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\124\22\126\95\7\133\14", "\234\96\19\98\31\43\110")]=0}):Play();
		end
	end
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\57\32\102\200\171\117\135\3\52\87\222", "\235\102\127\50\167\204\18")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\111\158\192\10\123\3\121\143\220\14\109\20\117\133", "\78\48\193\149\67\36")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\15\33\181\49\126\29\55\174\49\108\25\36\165\60", "\33\80\126\224\120")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local startSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\211\151\40\251\111\197\146\38", "\60\140\200\99\164")] or 100;
		KBtn.Size = UDim2.new(0, startSize, 0, startSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\161\230\5\43\167", "\194\231\148\100\70"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\117\69\197\166\244\201\84\111\206\173\226\201\79\66\196\177", "\168\38\44\161\195\150");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\213\165\100\49\236\191\19\142\232", "\118\224\156\226\22\80\136\214"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\119\199\106\148\80\225\82\133", "\224\34\142\57"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\164\215\210\127\253\84\0\217\129\215\220\126\244", "\110\190\199\165\189\19\145\61"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\91\225\152\211\246\234\110\231\158\211", "\167\186\139\23\136\235"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\156\184\12\30\177\129\3\29", "\109\122\213\232"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\222\146\49\234\243\171\62\233", "\80\142\151\194"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\212\118\65\6", "\44\99\166\23"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\222\25\55\55\160\117\249\46", "\196\28\151\73\86\83"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\160\77\12\98\252\13", "\22\147\99\73\112\226\56\120"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\92\193\250\159\182\112\240", "\237\216\21\130\149"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\103\108\75\162\198\85\135", "\62\226\46\63\63\208\169"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		table.insert(Library.ThemeObjects.Strokes, TabBtnStroke);
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\209\11\84\141\12\29\46\76\224\23\86\154", "\62\133\121\53\227\127\109\79")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\27\62\250\196", "\194\112\116\82\149\182\206")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\186\77\22\211\242\15\43\173\66\27\217", "\110\89\200\44\120\160\130")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\136\204\71\73\81", "\45\203\163\43\38\35\42\91")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\145\210", "\52\178\229\188\67\231\201")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\64\93\1", "\67\65\33\48\100\151\60")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\243\188\215\248\218", "\147\191\135\206\184")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\43\180\206\212\95\187\138\47\128\211\217\94\183", "\210\228\72\198\161\184\51"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\9\121\242\23\118", "\174\86\41\147\112\19");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\41\161\2\54\27\61\170\66\15\152\31", "\203\59\96\237\107\69\111\113"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\63\156\224\53\244\222\42\17", "\183\68\118\204\129\81\144"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\40\191\113\233\14", "\226\110\205\16\132\107")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\194\237\220", "\33\139\163\128\185")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\74\5\211\82", "\190\55\56\100"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\170\36\10\63\226\241\83\163", "\147\54\207\92\126\115\131"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\52\45\105\47\107\25\37\58\115", "\30\109\81\85\29\109"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\119\185\36\208\249\237", "\156\159\17\52\214\86\190"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\198\142\168\188\224\182\185", "\220\206\143\221"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\169\83", "\178\230\29\77\119\184\172")) or LUAOBFUSACTOR_DECRYPT_STR_0("\218\152\44", "\152\149\222\106\123\23");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.AccentEnd) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\255\39\245\72\178\207\41\227\77\177\254\41\250\76\167\142", "\213\189\70\150\35")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\108\90\120\7\93", "\104\47\53\20")]=((val and Theme.AccentEnd) or Theme.UIStrokeColor)}):Play();
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\130\79\149\21\179\1\227\104\132\18\181\10\167", "\111\195\44\225\124\220"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\251\71\14\125\164\191\152\67\14\114\169\167\221\6\20\123\162\184\152\84\9\116\163\191\152\72\15\100\229", "\203\184\38\96\19\203"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\97\120\76\203", "\174\89\19\25\33"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\23\74\90\219\134\9\42\30", "\107\79\114\50\46\151\231"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\180\180\36\143", "\160\89\198\213\73\234\89\215"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\88\151\241\215\70\116\166", "\165\40\17\212\158"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\240\59\39\52\234\210\13", "\70\133\185\104\83"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\64\92\62\229\5\71\65\38", "\169\100\37\36\74"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\149\163\93\5", "\48\96\231\194"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\45\34\11\214\170\145", "\227\168\58\110\77\121\184\207"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\93\46\190\77\180", "\197\27\92\223\32\209\187\17"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\118\224\244\17\81\198\233", "\155\99\63\163"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\134\159\184\128\139\212\175\153", "\228\226\177\193\237\217"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\162\34\235\49", "\134\84\208\67"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\169\158\72\63\173\132\89\31", "\60\115\204\230"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\243\100\197\47\255\100\232\52", "\16\135\90\139"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\93\37\60\92\90\125\70", "\24\52\20\102\83\46\52"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\44\51\43\3\200\38\47\35\41\214\46\44\33", "\111\164\79\65\68"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\226\203\140\206\42\229\209\215\176\221\60\229\202\213", "\138\166\185\227\190\78");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\93\230\56\64\45\28\217", "\121\171\20\165\87\50\67"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\17\149\63\170\22\234\57\160\57\172\22", "\98\166\88\217\86\217"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\215\244\106\14\138\201\226\243\90\14\136\200\243\248\109\50\143\198\243", "\188\150\150\25\97\230")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\140\71\22\46\226\194", "\141\186\233\63\98\108"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\194\239\45\164\38\249\164\98\248", "\69\145\138\76\214");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\69\230\170\134\173\24\117\221", "\118\16\175\233\233\223"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\191\129\45\175", "\29\235\228\85\219\142\235")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\9\209\162\201\85\91\51\70\50\218", "\50\93\180\218\189\23\46\71")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\161\67\88\102\201\92\202\171\85", "\40\190\196\59\44\36\188"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\8\64\196\160\216\104\25\40\74\210", "\109\92\37\188\212\154\29")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\234\188\215\19\79\16\251\171\205", "\58\100\143\196\163\81"), Scroll);
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
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\31\212\202\31\241\213\173\99\56\212\203\9\188\143\163", "\42\76\177\166\122\146\161\141");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\38\193\107\120\160\152", "\22\197\234\101\174\25"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\55\183\211\122\163\222\136\42\18\183\221\123\170", "\230\77\84\197\188\22\207\183"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\212\1\202\232\133\133\226\58\233\16\201\235\130\146\243\39\246\24\202", "\85\153\116\166\156\236\193\144");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\201\110\188\246\14\161\242", "\96\196\128\45\211\132"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\87\86\193\187\152\217\44\130\110\75", "\184\85\237\27\63\178\207\212"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\41\91\26\80\4\76\29\90\43\86\7\75\13\87\29\108\1\67\12", "\63\104\57\105")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\130\188\80\41\136\188", "\36\107\231\196"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\110\176\163\149\94\189\236\201\19", "\231\61\213\194");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\30\124\27\163\56\97", "\19\105\205\93"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\157\13\198\149", "\95\201\104\190\225")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\155\206\217\218\141\222\213\218\160\197", "\174\207\171\161")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\173\205\8\255\253\212\249\251\9", "\183\141\158\109\147\152"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\31\12\234\9\47\29\166\37\56\12\235\31\98\71\168", "\108\76\105\134");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\192\169\245\236\254\209\165\238\192", "\174\139\165\209\129"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\161\227\204\195", "\24\195\211\130\161\166\99\16"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\6\241\56\127\23\68\6\229", "\118\38\99\137\76\51"), Frame);
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
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\35\29\6\43\53\233\50\10\28", "\64\157\70\101\114\105"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\129\132\236\2\78\173\181", "\112\32\200\199\131"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\10\66\93\181\198", "\66\76\48\60\216\163\203"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\131\97\231\115\207\38\191\138", "\68\218\230\25\147\63\174"), Frame);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88\148\162\50", "\214\205\74\51\44"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\223\66\246\249\101\186\88\231\228\99\186\68\231\238\114\180\2\172", "\23\154\44\130\156");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\143\142\161\36\29\20\180", "\115\113\198\205\206\86"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\69\255\87\129", "\58\228\55\158"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58\30\184\33\160\134\222", "\85\212\233\176\78\92\205"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\113\175\240\75\92\129\231\68\76", "\130\42\56\232"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\156\7\236\82\49\239\167", "\95\138\213\68\131\32"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\25\33\187\70", "\22\74\72\193\35")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\31\112\254\93", "\56\76\25\132")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\120\211\170\43\202", "\175\62\161\203\70"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\207\194\30\48", "\85\92\189\163\115"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\29\169\40\44\5\173\50\61\37", "\88\73\204\80"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\2\130\18\67\37", "\186\78\227\112\38\73");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\69\252\88\86", "\26\156\55\157\53\51"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\221\14\205\148\81\142\221\26", "\48\236\184\118\185\216"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\193\180\68\51\192\38\225", "\84\133\221\55\80\175");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\226\60\178\229\83\165", "\60\221\135\68\198\167"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\148\219\140\80\215\235\175", "\185\142\221\152\227\34"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238\97\38\227\76\202\89", "\151\56\165\55\154\35\83"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\131\76\21\247\224\111\12\224\171", "\142\192\35\101");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\92\10\172\245\130\169\4", "\118\182\21\73\195\135\236\204"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\21\61\82\5\9\244\13\50\14", "\157\104\92\122\32\100\109"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\128\169\223\195\56\35\204", "\203\195\198\175\170\93\71\237");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\13\68\46\204\17\61\245\32\64", "\156\78\43\94\181\49\113");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\81\228\205\179\9\76\120\96\236\132\150\5\66\111\115\225\200\162\9\79\124", "\25\18\136\164\195\107\35"), LUAOBFUSACTOR_DECRYPT_STR_0("\203\44\167\65\125\168\129\187\231\61\176\15\125\178\129\172\224\36\186\15\119\164\196\187\253\57\166\93\60", "\216\136\77\201\47\18\220\161"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\14\254\46\222\1\200\145", "\226\77\140\75\186\104\188"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\203\200\43", "\47\217\174\176\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\222\100\11\162\64\56\4\161\135\54\46\187\78\125\2\189\203", "\70\216\189\22\98\210\52\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\211\170\128\221", "\179\186\191\195\231")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\218\48\20\235\235", "\132\153\95\120")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\159\179\3\40", "\192\209\210\110\77\151\186")]=LUAOBFUSACTOR_DECRYPT_STR_0("\196\10\49\234\240\214\228\67\17\236\237\210\229\17", "\164\128\99\66\137\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\128\231\181", "\222\96\233\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\177\167\179\15\155\169\191\246\183\174\12\139\252\226\189\253\160\24\199\193\248\157\189\146\46\154\167\212\172", "\144\217\211\199\127\232\147")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\204\42\38\60", "\36\152\79\94\72\181\37\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\152\101\42\195\204\72\49\151\235\66\43\195\209\73\56\196", "\95\183\184\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\148\51\238\33\90", "\98\213\95\135\70\52\224")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\208\162\196\114", "\52\158\195\169\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\81\252\16\97\146\33\116\133\58\143\59\110\131", "\235\26\220\82\20\230\85\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\174\173\232\197", "\20\232\193\137\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\29\224\238\153\212\165\45\84", "\17\66\191\165\198\135\236\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\166\160", "\177\111\207\206\115\159\136\140")]=40,[LUAOBFUSACTOR_DECRYPT_STR_0("\40\136\8", "\63\101\233\112\116\180\47")]=200,[LUAOBFUSACTOR_DECRYPT_STR_0("\231\62\235\19\237\58\215", "\86\163\91\141\114\152")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\112\10\120\127\56\82\8\127", "\90\51\107\20\19")]=function(val)
			if (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\178\207\176\198\2\160\217\171\198\16\164\202\160\203", "\93\237\144\229\143")] and KBtn.Visible) then
				KBtn.Size = UDim2.new(0, val, 0, val);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\243\232\13", "\38\117\150\144\121\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\11\174\226\54\109\152\251\41\57\180\227\122\14\180\226\53\63\168\174\114\31\247\174\29\97\251\204\115", "\90\77\219\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\8\40\62\66", "\26\134\100\65\89\44\103")]=Enum.TextXAlignment.Center});
		local function UpdateColorFromInput(rgbString, themeKey)
			local r, g, b = rgbString:match(LUAOBFUSACTOR_DECRYPT_STR_0("\185\166\52\104\237\189\166\35\105\236\180\231\123\106\232\180\240\122\107\225\245\168\121", "\196\145\131\80\67"));
			if (r and g and b) then
				Theme[themeKey] = Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b));
				Library:RefreshObjects();
			end
		end
		local function CreateColorInput(name, themeKey)
			local col = Theme[themeKey];
			local defaultStr = math.floor(col.R * 255) .. LUAOBFUSACTOR_DECRYPT_STR_0("\82\240", "\136\126\208\102\104\120") .. math.floor(col.G * 255) .. LUAOBFUSACTOR_DECRYPT_STR_0("\52\202", "\49\24\234\174\35\207\50\93") .. math.floor(col.B * 255);
			SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\243\240\141", "\17\108\146\157\232")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\109\207\21\234", "\200\43\163\116\141\79")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\128\9\30\140\188\203", "\131\223\86\93\227\208\148") .. themeKey),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\64\176\183\8\185\247", "\213\131\37\214\214\125")]=defaultStr,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\39\36\188\228\46\36\41\187\228\52", "\129\70\75\69\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\67\211\169\169\46\186\19\135\179\185\48\175\22", "\143\38\171\147\137\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\131\181\255\1\226\215\219", "\180\176\226\217\147\99\131")]=function(val)
				UpdateColorFromInput(val, themeKey);
			end});
		end
		CreateColorInput(LUAOBFUSACTOR_DECRYPT_STR_0("\254\184\38\9\147\155\46\4\216\190\61\8\198\183\43", "\103\179\217\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\125\190\18\209\78\155\129\109", "\195\42\215\124\181\33\236"));
		CreateColorInput(LUAOBFUSACTOR_DECRYPT_STR_0("\62\80\51\59\39\249\31\25\21\63\38\243\10\75\56\43\43\252", "\152\109\57\87\94\69"), LUAOBFUSACTOR_DECRYPT_STR_0("\202\222\14\166\188\211\70\138\222", "\200\153\183\106\195\222\178\52"));
		CreateColorInput(LUAOBFUSACTOR_DECRYPT_STR_0("\27\247\141\48\9\120\51\224\131\58\91\85\39\237\140", "\58\82\131\232\93\41"), LUAOBFUSACTOR_DECRYPT_STR_0("\170\67\213\24\127\24", "\95\227\55\176\117\61"));
		CreateColorInput(LUAOBFUSACTOR_DECRYPT_STR_0("\44\123\59\95\235\59\113\47\68\185", "\203\120\30\67\43"), LUAOBFUSACTOR_DECRYPT_STR_0("\197\32\85\251", "\185\145\69\45\143"));
		CreateColorInput(LUAOBFUSACTOR_DECRYPT_STR_0("\185\26\26\169\210\142\30\11\191\156\190\26\1\178", "\188\234\127\121\198"), LUAOBFUSACTOR_DECRYPT_STR_0("\12\55\11\151\28\51\1\136", "\227\88\82\115"));
		CreateColorInput(LUAOBFUSACTOR_DECRYPT_STR_0("\115\13\179\170\3\97\90\95\155\164\1\118\77\11", "\19\35\127\218\199\98"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\248\9\231\18\239\57\246\29\233\30", "\130\124\155\106"));
		CreateColorInput(LUAOBFUSACTOR_DECRYPT_STR_0("\230\206\245\160\173\242\125\173\204\139\215\172\160\243\114\171", "\223\181\171\150\207\195\150\28"), LUAOBFUSACTOR_DECRYPT_STR_0("\109\57\224\171\7\88\31\237\170", "\105\44\90\131\206"));
		CreateColorInput(LUAOBFUSACTOR_DECRYPT_STR_0("\204\244\160\182\3\59\191\175\242\150\29\42\243\233\188\188", "\94\159\128\210\217\104"), LUAOBFUSACTOR_DECRYPT_STR_0("\101\208\53\171\77\112\242\127\115\246\10\176\77", "\26\48\153\102\223\63\31\153"));
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\54\69\245\231", "\147\98\32\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\44\75\230\199\3\22\102\25\77\226\205\3\68", "\43\120\35\131\170\102\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\117\10\142\177\171", "\228\52\102\231\214\197\208")]=Enum.TextXAlignment.Center});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\48\225\120\207", "\182\126\128\21\170\138\235\121")]=LUAOBFUSACTOR_DECRYPT_STR_0("\184\219\35\227\198\48\37\20\153\223\59\242\198\48\63\10\132\200\38\166\167\0\126\72\197", "\102\235\186\85\134\230\115\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\0\63\88", "\66\55\108\94\63\18\180")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\178\171\50\48\109\28\136\136\50\9\88\25\136", "\57\116\237\229\87\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\189\236\228\114\230\72\166\181\232\245", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\59\12\7\55\184\209\50\4\15", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\162\199\93\254\203\93\130\205", "\60\225\166\49\146\169")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\1\31\34\47", "\103\79\126\79\74\97")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\126\197\118\30\46\178\122\222\118", "\122\218\31\179\19\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\215\193\205\203\160\70\184", "\37\211\182\173\161\169\193")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\200\5\99\220\63\79\177\242\55\72\247\41\118\188", "\217\151\90\45\185\72\27")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\244\117\233\22\89\212\94\192", "\54\163\28\135\114")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\210\89\135\76\126\58\249\122", "\31\72\187\61\226\46")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\18\70\223\101\89", "\68\163\102\35\178\39\30")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\115\217\194\13\161\210", "\113\222\16\186\167\99\213\227")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\13\248\243\32\26\169", "\150\78\110\155")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\192\63\245", "\32\229\165\71\129\196\126\223")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\140\220\149\165\212\209\130", "\181\163\233\164\225\225")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\159\44\120\91\142", "\23\48\235\94")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\72\211\204\81\82", "\178\28\186\184\61\55\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\240\197\66\49\247\78\198\197\219\66\56", "\149\164\173\39\92\146\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\40\30\11\31\21\231", "\123\147\71\112\127\122")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\255\204\148\116\66\140\204\145\43\6", "\38\172\173\226\17") .. name)});
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\99\16\33\234", "\143\45\113\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\140\183\27\59\180\189\92\23\189\161\92\116\154\177\18\56\241", "\92\216\216\124"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\62\173\71", "\157\59\82\204\32")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\1\215\245\238\237\223\180\19\59\250", "\209\88\94\131\154\137\138\179"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\164\194\125\11\47\37", "\66\72\193\164\28\126\67\81")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\32\169\91\35\126\232\32\172\93\52", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\189\34\253\55\78\161\166\53\225\106\19\175", "\129\237\80\152\68\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\169\8\255\30\22\91\90", "\56\49\200\100\147\124\119")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\243\1\139\255\203\57\179\245\231\59\166", "\144\172\94\223")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\27\48\129\82\54\29\167\73\48\59\170\66\41\10", "\39\68\111\194")] or LUAOBFUSACTOR_DECRYPT_STR_0("\242\163\225\198\108\187\194", "\215\182\198\135\167\25"));
	end;
	return WindowAPI;
end;
return Library;
