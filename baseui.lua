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
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\45\89\57\48\82\236", "\152\54\72\63\88\69\62")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\227\205\224\88\219\211\204\123", "\60\180\164\142")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\87\1\44\37\236\0\122\121", "\114\56\62\101\73\71\141")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\253\222\201\154\206", "\164\216\137\187")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\229\50\183\168\234\90", "\107\178\134\81\210\198\158")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\13\129\195\164\44\92", "\202\88\110\226\166")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\0\133\240\198\198\32\172", "\170\163\111\226\151")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\53\170\44", "\73\113\80\210\88\46\87")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\41\213\6\195\128\62\198", "\135\225\76\173\114")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\249\170\191\167\184", "\199\122\141\216\208\204\221")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\158\211\31\231", "\150\205\189\112\144\24")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\18\141\177\72\11\159\51\55", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\22\3\214\180\125\148\246\56", "\230\180\127\103\179\214\28")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\17\90\75\198\102", "\128\236\101\63\38\132\33")]=Color3.fromRGB(225, 225, 235),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\170\18\65\184\255\158", "\175\204\201\113\36\214\139")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\207\54\217\10\83\158", "\100\39\172\85\188")]=Color3.fromRGB(180, 180, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\119\190\135\63\168\87\151", "\83\205\24\217\224")]=Color3.fromRGB(100, 180, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\192\213\41", "\93\134\165\173")]=Color3.fromRGB(50, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\247\217\214\30\207\160\117", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(100, 100, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\90\98\5\238\75", "\106\133\46\16")]=Color3.fromRGB(200, 200, 210)},[LUAOBFUSACTOR_DECRYPT_STR_0("\104\41\125\247\67", "\32\56\64\19\156\58")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\109\193\235\82\85\229\162\125", "\224\58\168\133\54\58\146")]=Color3.fromRGB(50, 40, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\95\79\248\119\135\149\41\126", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(35, 25, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\159\20\248\155\251", "\175\187\235\113\149\217\188")]=Color3.fromRGB(70, 50, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\172\130\73\237\109\41", "\24\92\207\225\44\131\25")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\208\187\73\21\105\25", "\29\43\179\216\44\123")]=Color3.fromRGB(255, 182, 193),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\214\39\75\177\220\15\98", "\44\221\185\64")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\226\80\75", "\19\97\135\40\63")]=Color3.fromRGB(255, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\89\43\47\11\48\188\87", "\81\206\60\83\91\79")]=Color3.fromRGB(180, 150, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\191\194\125\36\198", "\196\46\203\176\18\79\163\45")]=Color3.fromRGB(100, 60, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\143\43\112\26\43\236\205\159", "\143\216\66\30\126\68\155")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\142\205\11\202\208\175\195", "\129\202\168\109\171\165\195\183")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\81\51\221\220\21\244\0\127", "\134\66\56\87\184\190\116")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\24\52\15\186\12\231\53", "\85\92\81\105\219\121\139\65")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\167\85\72\94\248", "\191\157\211\48\37\28")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\251\26\242\29\47\211\11", "\90\191\127\148\124")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\132\45\18\118\147\29\3\121\149\58", "\119\24\231\78")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\166\40\163\75\201\76\5", "\113\226\77\197\42\188\32")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\21\247\176\52\2\209\187\62", "\213\90\118\148")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\127\43\178\87\88\87\58", "\45\59\78\212\54")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\89\132\140\138\43\130\222", "\144\112\54\227\235\230\78\205")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\151\45\9\253\197\87\167", "\59\211\72\111\156\176")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\130\251\57", "\77\46\231\131")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\158\81\176\65\175\88\162", "\32\218\52\214")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188\213\177\87\81", "\58\46\119\81\200\145\208\37")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\15\137\54\173\188\177\34", "\86\75\236\80\204\201\221")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\71\104\68\145\236\132\121\68\84\138\242\132\96", "\235\18\33\23\229\158")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\116\191\199\186\69\182\213", "\219\48\218\161")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\195\99\125\77\210\74\238\240\98", "\128\132\17\28\41\187\47")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\53\59\18\54\88\38\32\7\62\84\4\60\18\41", "\61\97\82\102\90")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\143\33\185\69\194\69\13", "\105\204\78\203\43\167\55\126")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\131\184\34\19\22\23", "\49\197\202\67\126\115\100\167")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\21\92\242\40\137\88", "\62\87\59\191\73\224\54")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\197\5\201\192\227\7\248\200\245", "\169\135\98\154")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\233\112\13\64\248\62\219", "\168\171\23\68\52\157\83")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\199\101\231\162\46\40\148", "\231\148\17\149\205\69\77")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\180\162\223\239\68", "\159\224\199\167\155\55")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\195\246\36\198\211\242\46\217\228", "\178\151\147\92")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\184\252\78\33", "\26\236\157\44\82\114\44")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\30\33\210\92\38\43\198", "\59\74\78\181")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\22\197\79\105\186\40\196\86\91\167\42\195", "\211\69\177\58\58");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\164\241\108\230\224\198\162\233\120\225\230\217\249\239\106\250\231", "\171\215\133\25\149\137");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\245\192\55\247\234\35\178\72\242\199\60", "\34\129\168\82\154\143\80\156");
Library.ActiveLoops = {};
Library.MainScale = nil;
Library.CurrentTab = nil;
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\151\176\43\10\91\93\140\145\187\55\81\7\1\208\213\224\102\90\31\28\219\221\235\100\92\24\25", "\233\229\210\83\107\40\46");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\242\86\51\196\17\196\80\21\195\12", "\101\161\34\82\182")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\219\8\87\250\245\237\150\39\238\4\90\255\207\235\141\32", "\78\136\109\57\158\187\130\226"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\10\54\237\253\59", "\145\94\95\153")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\201\200\12\193", "\215\157\173\116\181\46")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\161\153\243\206\60\187\133", "\186\85\212\235\146")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\214\128\20\242\60", "\56\162\225\118\158\89\142")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\114\10\212\166\36\209\95\4\212\166\45\214", "\184\60\101\160\207\66"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\31\141\104\181\55\139\127\189\37\139\115\178", "\220\81\226\28"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\7\212\128\247\239", "\167\115\181\226\155\138"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\246\35\229\80\126", "\166\130\66\135\60\27\17"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\123\114\241\70\51\69\70\203", "\80\36\42\174\21")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\113\40\8\85\72\22\36\127\90", "\26\46\112\87")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\134\26\148\71\188\190\73\177", "\212\217\67\203\20\223\223\37")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\133\180\151\253\188\139\187\215\174", "\178\218\237\200")] = object.Position.Y.Offset;
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
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\129\188\232\212\185\162\196\247", "\176\214\213\134")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\164\178\209\170\87\75\214\138", "\57\148\205\214\180\200\54")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\233\48\57\84\53", "\22\114\157\85\84")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\200\16\193\83\226\249", "\200\164\171\115\164\61\150")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\247\0\64\141\170\166", "\227\222\148\99\37")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\93\85\241\245\54\125\124", "\153\83\50\50\150")]=((saved.ToggleON and ToColor(saved.ToggleON)) or ToColor(saved.Accent2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\115\107\8", "\45\61\22\19\124\19\203")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\23\21\225\38\113\171\202", "\217\161\114\109\149\98\16")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\52\42\115\183\113", "\20\114\64\88\28\220")]=ToColor(saved.Stroke)};
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
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\14\62\241\161\234\194\184\63\21\230\188\253\221\184", "\221\81\97\178\212\152\176")] = themeName;
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
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\234\242\20\212\24\199\226\30\239", "\122\173\135\125\155")) then
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\151\213\21\170\54\60\221\136\192\20\182\45\127\194\151\206\14", "\168\228\161\96\217\95\81");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\240\216\32\91\8\82\213\228\7", "\55\187\177\78\60\79")) then
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\6\199\81\236\115\230", "\224\77\174\63\139\38\175"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\77\74\43\133\69\65\110\182\84\86\32\141\79\95", "\78\228\33\56"), 5);
		return;
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\125\160\6\128\192\89\167\10", "\229\174\30\210\99"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\48\228\136\86\202\56\55\46\196", "\89\123\141\230\49\141\93");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\247\1\21", "\42\147\17\150\108\112"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\34\167\36\113\193\250\14\171\40", "\136\111\198\77\31\135");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\32\148\85\188\232\18", "\201\98\105\199\54\221\132\119"), MainFrame);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\134\51\164\52\11\6\175\184\0\134", "\204\217\108\227\65\98\85")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	table.insert(Library.ThemeObjects.Frames, MainFrame);
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\234\210\247\45\196\87\198\251\241", "\160\62\163\149\133\76"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\46\32\209\216\165\31", "\163\182\192\109\79"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\15\51\212\231\59\45\5", "\149\84\70\96\160"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\44\254\40\3\14\249\10\7\25\228\55\37\2\227\43\18\31\236\49\8\25", "\141\88\102\109"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\249\121\0\56\118\206\189\64\222\98\27\52\91\213", "\161\211\51\170\16\122\93\53"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(480, 540);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\171\170\60\217\187\166\60\244\160", "\72\155\206\210"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\111\116\68\27\39\100\118\91\13\56\67\104", "\83\38\26\52\110");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\5\38\75\93", "\38\56\119\71"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\199\230\76\218\32\116\242\253", "\54\147\143\56\182\69");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\168\216\91\222\210\136\250\71\203", "\191\182\225\159\41"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.TitleGradients, TitleBarGradient);
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\31\41\82\142\171\195\41\23\36", "\162\75\114\72\53\235\231"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\57\92\246\127\3\142\57\72", "\98\236\92\36\130\51"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\151\45\57\250\118\129\152\5\136\56\56\149\119", "\80\196\121\108\218\37\200\213");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\118\26\107\105\27\158\20\124\12", "\234\96\19\98\31\43\110"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\54\113\200\190\124\142\20", "\235\102\127\50\167\204\18"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.BgItems, MinBtn);
	table.insert(Library.ThemeObjects.Texts, MinBtn);
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\160\246\40\67\60\95\180\251\39\103\33\92\174\231\112", "\78\48\193\149\67\36")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\15\33\181\49\126\29\55\174\49\108\25\36\165\60", "\33\80\126\224\120")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\171\17\193\89\226\143\22\205", "\60\140\200\99\164"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\172\214\17\50\182\136\250\35\51\171", "\194\231\148\100\70");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\65\192\164\243\234\83\88\213\172\248", "\168\38\44\161\195\150"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	local initialKSize = (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\195\169\73\3\225\172\19", "\118\224\156\226\22\80\136\214")] or DEFAULTS.KSize) * (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\125\209\126\149\75\221\90\129\78\235", "\224\34\142\57")] or 1);
	KBtn.Size = UDim2.new(0, initialKSize, 0, initialKSize);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\142\228\206\99\244\94\26\236\166\209\212\124\210\82\0\205\179\215\220\122\255\73", "\110\190\199\165\189\19\145\61"), KBtn);
	KRatio.AspectRatio = 1;
	KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\229\212\92\215\187\232\233", "\167\186\139\23\136\235"));
	Library.UpdateKButtonSize = function(self)
		local baseSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\37\138\163\50\41\188\146\8", "\109\122\213\232")] or DEFAULTS.KSize;
		local guiScale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\209\200\133\37\231\196\161\49\226\242", "\80\142\151\194")] or 1;
		local finalSize = baseSize * guiScale;
		KBtn.Size = UDim2.new(0, finalSize, 0, finalSize);
	end;
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\60\249\66\101\60\235\94\98\42\235\94\118\38\226", "\44\99\166\23")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kSize = (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\67\200\2\9\0\173\102\242", "\196\28\151\73\86\83")] or DEFAULTS.KSize) * (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\204\60\14\5\139\107\27\119\255\6", "\22\147\99\73\112\226\56\120")] or 1);
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\136\122\241\252\153\177\122\236", "\237\216\21\130\149")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\65\75\94\164\192\81\140", "\62\226\46\63\63\208\169")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			KBtn.Position = UDim2.new(0.9, -80, 0.15, 0);
			KBtn.Size = UDim2.new(0, kSize, 0, kSize);
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\204\20\84\132\26\57\61\95\235\10\69\130\13\8\33\93\252", "\62\133\121\53\227\127\109\79")]=0}):Play();
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
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
	end);
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return;
		end
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\30\126\100\11\240\91\47\36\106\85\29", "\67\65\33\48\100\151\60")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\224\216\155\241\204\242\206\128\241\222\246\221\139\252", "\147\191\135\206\184")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\187\23\147\232\231\126\155\170\1\139\232\226\118\150", "\210\228\72\198\161\184\51")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		Library:UpdateKButtonSize();
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		MainFrame.Rotation = -10;
		SetState(false);
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\91\242\29\118", "\174\86\41\147\112\19"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\104\9\137\14\39\14\3\136\84\14\153\10\44\1\20\185", "\203\59\96\237\107\69\111\113");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\63\139\243\48\244\222\33\24\184", "\183\68\118\204\129\81\144"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.AccentStart)});
	SidebarGradient.Rotation = 90;
	table.insert(Library.ThemeObjects.BgSidebar, SidebarGradient);
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\132\67\240\25\141\5\168", "\226\110\205\16\132\107"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, SidebarStroke);
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\192\242\214\77\231\202\238\222\103\249\194\237\220", "\33\139\163\128\185"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 6;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\40\215\68\76\40\223\78\87\17\202", "\190\55\56\100"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\134\12\31\23\231\250\88\168", "\147\54\207\92\126\115\131"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\24\5\124\9\122\4\63\50", "\30\109\81\85\29\109"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\99\85\187\51", "\156\159\17\52\214\86\190"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\198\141\189\170\235\180\178\169", "\220\206\143\221"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\120\53\3\250\217\198\146\114\35", "\178\230\29\77\119\184\172"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\151\41\20\101\246\240\172", "\152\149\222\106\123\23"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\15\197\87\167\210\45\243", "\213\189\70\150\35"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\123\71\117\6\92\69\117\26\74\91\119\17", "\104\47\53\20")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\67\141\19\174", "\111\195\44\225\124\220")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Theme.SidebarBG;
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\236\84\1\125\184\187\217\84\5\125\168\178", "\203\184\38\96\19\203")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\124\117\78\220", "\174\89\19\25\33")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\6\92", "\107\79\114\50\46\151\231")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\23\167\184\44", "\160\89\198\213\73\234\89\215")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\101\166\241\206\77", "\165\40\17\212\158")]=TabBtnStroke});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\205\6", "\70\133\185\104\83")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\42\68\73\47", "\169\100\37\36\74")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\147\176\95\11\130", "\48\96\231\194")]=TabBtnStroke});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\89\28\34\21\212\166\141\207\124\28\44\20\221", "\227\168\58\110\77\121\184\207"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\68\12\190\71\180", "\197\27\92\223\32\209\187\17");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 8;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\118\239\242\16\75\239\250\26\80\214\239", "\155\99\63\163"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\145\140\189\128\139\223\166", "\228\226\177\193\237\217"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\18\162\34\235\49", "\134\84\208\67")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\173\139\89", "\60\115\204\230")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\40\234\125\226", "\16\135\90\139"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\96\113\30\39\98\85\122\81\120", "\24\52\20\102\83\46\52"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\42\57\48\45\209\59\53\43\1", "\111\164\79\65\68"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\240\160\209\60\228\195\203", "\138\166\185\227\190\78"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\93\246\35\64\44\18\206", "\121\171\20\165\87\50\67"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ToggleStroke);
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\233\22", "\98\166\88\217\86\217")) or LUAOBFUSACTOR_DECRYPT_STR_0("\217\208\95", "\188\150\150\25\97\230");
				Button.TextColor3 = (val and Theme.Text) or Theme.TextDark;
				local targetColor = (val and Theme.ToggleON) or Theme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\136\92\9\11\255\213\156\81\6\47\226\214\134\77\81", "\141\186\233\63\98\108")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\210\229\32\185\55", "\69\145\138\76\214")]=((val and Theme.ToggleON) or Theme.UIStrokeColor)}):Play();
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\69\223\141\136\171\19", "\118\16\175\233\233\223")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\136\52\188", "\29\235\228\85\219\142\235")]=tFlag});
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\28\215\174\212\120\64\103\118\56\218\179\216\115", "\50\93\180\218\189\23\46\71"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\253\165\85\66\75\200\8\219\170\90\78\72\217\8\202\172\82\95\4\206\65\217\172\79\12\74\211\95\144", "\40\190\196\59\44\36\188"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\87\221\185\255", "\109\92\37\188\212\154\29"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\234\188\215\29\91\6\234\168", "\58\100\143\196\163\81"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\80\34\174\58", "\110\122\34\67\195\95\41\133"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = Theme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\64\152\120\69\196\123\180\73", "\182\21\209\59\42"), SliderFrame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, SliderFrame);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\126\246\9\51\177\188\82", "\222\215\55\165\125\65"), SliderFrame);
			SliderFrameStroke.Color = Theme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, SliderFrameStroke);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\212\222\14\222\192\239\79\32", "\42\76\177\166\122\146\161\141"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			table.insert(Library.ThemeObjects.Texts, ValLabel);
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\152\4\195\124", "\22\197\234\101\174\25"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\29\134\211\100\161\210\148", "\230\77\84\197\188\22\207\183"), BarBG).CornerRadius = UDim.new(0, 8);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\6\199\241\137", "\85\153\116\166\156\236\193\144"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\201\110\188\246\14\161\242", "\96\196\128\45\211\132"), Fill).CornerRadius = UDim.new(0, 8);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\92\77\211\171\189\221\59\153", "\184\85\237\27\63\178\207\212"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\75\8\82\13", "\63\104\57\105"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\63\130\188\80\39\134\166\65\7", "\36\107\231\196"), Frame);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\176\186\147\127\160\182\147\82\187", "\231\61\213\194"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\132\30\124\27\163\56\97", "\19\105\205\93"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\11\204\142\51\165\1\208\134\25\187\9\211\132", "\95\201\104\190\225"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\139\217\206\222\171\196\214\192\156\200\211\193\163\199", "\174\207\171\161");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\131\97\231\125\219\48\174\137\119", "\68\218\230\25\147\63\174"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88\148\184\62\71\67\184", "\214\205\74\51\44")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\73\250\232\85\239\88\246\243\121", "\23\154\44\130\156"), Scroll);
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
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\140\200\58\30\184\33\160\134\222", "\85\212\233\176\78\92\205"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\121\93\132\231\73\76\200\203\94\93\133\241\4\22\198", "\130\42\56\232");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\156\7\236\82\49\239\167", "\95\138\213\68\131\32"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, MainBtn);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\43\179\76\122\38\33\175\68\80\56\41\172\70", "\22\74\72\193\35"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\1\108\232\76\37\93\246\87\60\125\235\79\34\74\231\74\35\117\232", "\56\76\25\132");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\232\136\41\221\80\196\185", "\175\62\161\203\70"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\244\239\26\38\40\241\194\10\58\41\201", "\85\92\189\163\115"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\8\174\35\55\37\185\36\61\10\163\62\44\44\162\36\11\32\182\53", "\88\73\204\80")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\134\8\82\11\213\54", "\186\78\227\112\38\73"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\207\82\252\71\80\114\178\25\179", "\26\156\55\157\53\51");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\241\53\214\170\94\137\202", "\48\236\184\118\185\216"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\209\184\79\36", "\84\133\221\55\80\175")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\137\226\60\178\229\73\169\243\43\168", "\60\221\135\68\198\167")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\174\142\253\143\71\218\250\184\252", "\185\142\221\152\227\34"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\107\192\91\255\64\39\183\113\209\82\247\80\125\185\22", "\151\56\165\55\154\35\83");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\148\70\29\250\130\86\17\250\175\77", "\142\192\35\101"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\103\40\174\226", "\118\182\21\73\195\135\236\204"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\57\2\84\40\12\255\13\48", "\157\104\92\122\32\100\109"), Frame);
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
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\163\215\222\31\50\153\191\172\168", "\203\195\198\175\170\93\71\237"), Frame);
			Button.Size = UDim2.new(1, -20, 0, 35);
			Button.Position = UDim2.new(0, 10, 0, 30);
			Button.BackgroundColor3 = Theme.ItemBG;
			Button.Text = default;
			Button.TextColor3 = Theme.AccentStart;
			Button.Font = Enum.Font.GothamSemibold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\98\29\218\67\31\249\60", "\156\78\43\94\181\49\113"), Button).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\84\250\197\174\14", "\25\18\136\164\195\107\35"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\40\177\91\94\189\195\189\228", "\216\136\77\201\47\18\220\161"), Frame);
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
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\233\51\206\42\211\154", "\226\77\140\75\186\104\188"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\156\192\196\58\93\249\218\213\39\91\249\198\213\45\74\247\128\158", "\47\217\174\176\95");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\244\85\13\160\90\125\52", "\70\216\189\22\98\210\52\24"), Input).CornerRadius = UDim.new(0, 8);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\205\162\138\214", "\179\186\191\195\231"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\58\0\240\219\42\12\240\246\49", "\132\153\95\120"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\155\41\63\246\222\169\180\188\26", "\192\209\210\110\77\151\186"), Btn);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\213\42\1\230\237\202\229\17", "\164\128\99\66\137\159"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\128\243\187", "\222\96\233\137")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\138\186\189\26", "\144\217\211\199\127\232\147")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\61\63\37\208", "\36\152\79\94\72\181\37\98"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\202\70\50\210", "\95\183\184\39"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\129\58\255\50\120\129\0\176\51", "\98\213\95\135\70\52\224"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\210\162\203\114\88", "\52\158\195\169\23");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextScaled = true;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\92\174\51\121\131", "\235\26\220\82\20\230\85\27"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 100);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\188\164\241\214\88\137\163\236\206", "\20\232\193\137\162"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\6\214\214\165\232\158\19", "\17\66\191\165\198\135\236\119");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\59\170\182\7\221\231\244", "\177\111\207\206\115\159\136\140"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\160\51\27\198\65\90\23", "\63\101\233\112\116\180\47"), Box).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Box);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\62\245\6\218\35\215\47\226\28", "\86\163\91\141\114\152"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 70);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\112\4\100\106\122\127\2\122\120", "\90\51\107\20\19");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\217\166\224\47\131\245\151", "\93\237\144\229\143"), CopyBtn).CornerRadius = UDim.new(0, 14);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\32\223\215\11\10\66\28\243\254\13", "\38\117\150\144\121\107"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			table.insert(Library.ThemeObjects.Gradients, CopyBtnGradient);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\14\180\254\51\40\191\175", "\90\77\219\142");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\197\11\49\32\12\43\115\232\15", "\26\134\100\65\89\44\103");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\210\239\57\51\166\254\226\34\39\228\196\237\49\53\165\248\239\49\33\168\244", "\196\145\131\80\67"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\177\8\6\23\252\94\179\9\24\1\168\17\190\70\28\16\225\13\240\3\16\29\235\11\164\9\26\86", "\136\126\208\102\104\120"), 3);
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local MainTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\85\139\199\77", "\49\24\234\174\35\207\50\93"));
		local SettingsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\63\247\233\156\120\2\245\238", "\17\108\146\157\232"));
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\127\198\12\249", "\200\43\163\116\141\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\62\56\142\181\231\163\249\118\30\140\188\251\241\172", "\131\223\86\93\227\208\148"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\73\191\177\19", "\213\131\37\214\214\125")]=Enum.TextXAlignment.Center});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\2\46\35\190\244\42\63", "\129\70\75\69\223"),LUAOBFUSACTOR_DECRYPT_STR_0("\117\197\252\254", "\143\38\171\147\137\28"),LUAOBFUSACTOR_DECRYPT_STR_0("\224\139\183\248\26", "\180\176\226\217\147\99\131")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\253\184\34\2", "\103\179\217\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\178\16\208\66\152\227\126\191\25\216\68", "\195\42\215\124\181\33\236"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\85\54\57", "\152\109\57\87\94\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\232\41\182\172\192\81\166\237\227\2\166\179\215", "\200\153\183\106\195\222\178\52"),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\234\155\41", "\58\82\131\232\93\41")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\82\214\20\72\51\151", "\95\227\55\176\117\61")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\39\65\0\94\185\10\123\45\95\159\16\123\46\78", "\203\120\30\67\43")] or LUAOBFUSACTOR_DECRYPT_STR_0("\213\32\75\238\204\253\49", "\185\145\69\45\143")),[LUAOBFUSACTOR_DECRYPT_STR_0("\169\30\21\170\222\139\28\18", "\188\234\127\121\198")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\51\30\134", "\227\88\82\115")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\30\172\162\66\80\86\13\168\162\12\103\3\43\178\162\15\118\3\62\169\233\76\61", "\19\35\127\218\199\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\247\11\229", "\130\124\155\106")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\244\216\170\180\194\116\186\216\206\216\174\174\243", "\223\181\171\150\207\195\150\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\54\226\173\12\68\53\239\170\12\94", "\105\44\90\131\206")]=LUAOBFUSACTOR_DECRYPT_STR_0("\203\232\183\180\13\126\209\225\191\188", "\94\159\128\210\217\104"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\248\10\179\93\126\250\113", "\26\48\153\102\223\63\31\153")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\44\65\224\246", "\147\98\32\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\43\66\245\207\70\98\67\29\78\230", "\43\120\35\131\170\102\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\7\139\186\167\177\135\95", "\228\52\102\231\214\197\208")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\33\223\91\207\253\191\17\211\19\229\91\203\231\142", "\182\126\128\21\170\138\235\121")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\188\211\59\226\137\4\18\33", "\102\235\186\85\134\230\115\80")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\5\58\90\112\213\48\117\43", "\66\55\108\94\63\18\180")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\153\128\58\5\126", "\57\116\237\229\87\71")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\178\238\226\121\250\22", "\39\202\209\141\135\23\142")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\48\10\15\60\236\173", "\152\159\83\105\106\82")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\201\86\245\197\89\174\232", "\60\225\166\49\146\169")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\27\55\62", "\103\79\126\79\74\97")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\122\203\103\122\27\168\116", "\122\218\31\179\19\62")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\194\223\206\194\164", "\37\211\182\173\161\169\193")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\195\51\89\213\45", "\217\151\90\45\185\72\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\116\226\31\83", "\54\163\28\135\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\212\83\150\75\113\60", "\31\72\187\61\226\46")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\240\7\85\215\67\62\48\203\3\78\215\29\62", "\68\163\102\35\178\39\30") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\154\117\220\198\22\185\151", "\113\222\16\186\167\99\213\227"),LUAOBFUSACTOR_DECRYPT_STR_0("\29\0\244\225", "\150\78\110\155"),LUAOBFUSACTOR_DECRYPT_STR_0("\181\204\41\234\189", "\32\229\165\71\129\196\126\223")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\136\201\132", "\181\163\233\164\225\225")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\142\50\114\68\142\126\84\69\153\44\114\94\159\126\67\88\142\51\114", "\23\48\235\94"),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\219\212\81\85\50\209\119", "\178\28\186\184\61\55\83")]=function()
			local current = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\251\242\100\41\224\28\240\202\217\115\52\247\3\240", "\149\164\173\39\92\146\110")];
			if ((current == LUAOBFUSACTOR_DECRYPT_STR_0("\215\34\22\30\15\23\231", "\123\147\71\112\127\122")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\255\195\141\102", "\38\172\173\226\17")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\125\24\34\228\84", "\143\45\113\76"))) then
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\140\177\8\48\189", "\92\216\216\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\126\32\190\79\239", "\157\59\82\204\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\49\237\238\236\228\199", "\209\88\94\131\154\137\138\179")]=LUAOBFUSACTOR_DECRYPT_STR_0("\11\160\202\114\17\55\113\38\45\173\193\104\27\99\51\55\33\173\208\49\23\45\113\54\32\164\201\121\13\109", "\66\72\193\164\28\126\67\81")});
				return;
			end
			if Library.SavedThemes[current] then
				Library.SavedThemes[current] = nil;
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\211\37\188\84\35", "\22\135\76\200\56\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\56\253\41\88", "\129\237\80\152\68\61"),[LUAOBFUSACTOR_DECRYPT_STR_0("\114\167\10\231\25\25\76", "\56\49\200\100\147\124\119")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\232\59\179\245\216\59\187\170\140", "\144\172\94\223") .. current)});
				Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\0\10\164\70\49\3\182", "\39\68\111\194"));
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\242\163\225\198\108\187\194", "\215\182\198\135\167\25"),LUAOBFUSACTOR_DECRYPT_STR_0("\190\71\229\95", "\40\237\41\138"),LUAOBFUSACTOR_DECRYPT_STR_0("\247\125\244\243\83", "\42\167\20\154\152")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
				ThemeDropdown:Set(LUAOBFUSACTOR_DECRYPT_STR_0("\110\251\164\67\100\45\94", "\65\42\158\194\34\17"));
			else
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\46\70\0\40", "\142\122\71\50\108\77\141\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\48\176\237\23\41", "\91\117\194\159\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\18\48\12\48\255\48", "\68\122\125\94\120\85\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\20\202\83\205\153\180\24\8\143\88\199\204\180\19\92\198\80\136\202\187\1\25\220\16", "\218\119\124\175\62\168\185")});
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\145\245\80\208", "\164\197\144\40")]=LUAOBFUSACTOR_DECRYPT_STR_0("\160\229\185\159\210\187\195\211\165\135\210\164\144", "\214\227\144\202\235\189"),[LUAOBFUSACTOR_DECRYPT_STR_0("\204\169\142\124\30", "\92\141\197\231\27\112\211\51")]=Enum.TextXAlignment.Center});
		local colorNames = {};
		for n, _ in pairs(COLOR_PALETTE) do
			table.insert(colorNames, n);
		end
		table.sort(colorNames);
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\200\254\135\166", "\177\134\159\234\195")]=LUAOBFUSACTOR_DECRYPT_STR_0("\141\249\54\173\200\175\242\127\129\202\190\238\49\180\137\158\228\51\175\219", "\169\221\139\95\192"),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\135\126\56", "\70\190\235\31\95\66")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\221\57\233\233\181\240\41\227\233\191\225\14\183", "\133\218\130\122\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\246\240\208", "\88\92\159\131\164\188\195")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\164\43\185\74\194\231\201", "\189\224\78\223\43\183\139")]=LUAOBFUSACTOR_DECRYPT_STR_0("\30\233\152\6\205\43", "\161\78\156\234\118"),[LUAOBFUSACTOR_DECRYPT_STR_0("\132\182\197\208\165\182\202\215", "\188\199\215\169")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentStart = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\8\82\126", "\136\156\105\63\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\137\122\59\21\136\120\38\2\204\88\55\24\137\119\32\91\175\118\56\20\158", "\84\123\236\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\135\171\16", "\213\144\235\202\119\204")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\39\253\37\36\44\95\16\29\210\47\43\55\31", "\45\67\120\190\74\72\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\43\254\177", "\137\64\66\141\197\153\232\142")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\39\213\36\167\157\15\196", "\232\99\176\66\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\45\61\3", "\76\140\65\72\102\27\237\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\219\26\222\213\0\189\65", "\222\42\186\118\178\183\97")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.AccentEnd = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\115\237\73\143", "\234\61\140\36")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\210\189\117\3\36\157\149\92\79\2\210\182\125\29", "\111\65\189\218\18"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\71\26\50", "\207\35\43\123\85\107\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\79\149\148\229\126\119\166\165\201\118\124\165\178\217\124\124\175\163\254", "\25\16\202\192\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\194\190\246", "\148\157\171\205\130\201")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\209\114\40\196\250\55", "\150\67\180\20\73\177")]=LUAOBFUSACTOR_DECRYPT_STR_0("\175\20\15\72", "\45\237\120\122"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\233\174\32\213\233\161\39", "\76\183\136\194")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.ToggleON = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		local bgOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\84\231\243\33\16\7\48\127\224\228\45\92\91\93", "\116\26\134\133\88\48\47")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\51\192\169\234", "\18\126\161\192\132\221")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\33\170\1", "\54\63\72\206\100")]=Color3.fromRGB(28, 26, 38)},[LUAOBFUSACTOR_DECRYPT_STR_0("\248\80\81\121\237\59\234\85\68\121\238", "\27\168\57\37\26\133")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\0\171\117\166", "\183\77\202\28\200")]=Color3.fromRGB(15, 15, 15),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\58\141\13", "\104\119\83\233")]=Color3.fromRGB(5, 5, 5)},[LUAOBFUSACTOR_DECRYPT_STR_0("\209\249\53\41\3\210\234\34\59", "\35\149\152\71\66")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\52\233\75\190", "\90\121\136\34\208")]=Color3.fromRGB(45, 45, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\7\81\27", "\126\167\110\53")]=Color3.fromRGB(30, 30, 30)},[LUAOBFUSACTOR_DECRYPT_STR_0("\17\25\41\240\200\127\16\31\42\253", "\95\93\112\78\152\188")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\236\244\140\27", "\178\161\149\229\117\132\222")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\187\210\217\169", "\67\232\187\189\204\193\118\198")]=Color3.fromRGB(255, 255, 255)},[LUAOBFUSACTOR_DECRYPT_STR_0("\175\43\176\48\123\48\234\143", "\143\235\78\213\64\91\98")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\160\73\141\231", "\214\237\40\228\137\16")]=Color3.fromRGB(40, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\182\234\235\220", "\198\229\131\143\185\99")]=Color3.fromRGB(25, 10, 10)},[LUAOBFUSACTOR_DECRYPT_STR_0("\117\137\173\99\17\171\186\118\84\130", "\19\49\236\200")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\211\54\255\185", "\218\158\87\150\215\132")]=Color3.fromRGB(20, 40, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\23\221\231", "\173\155\126\185\130\86\66")]=Color3.fromRGB(10, 25, 10)}};
		local bgNames = {};
		for n, _ in pairs(bgOptions) do
			table.insert(bgNames, n);
		end
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\167\183\194", "\140\133\198\218\167\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\151\47\183\118\131\167\33\161\115\128\245\13\187\113\139\167", "\228\213\78\212\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\64\183\2", "\139\231\44\214\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\230\208\36\89\35\180\61\19\218\251", "\118\185\143\102\62\112\209\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\121\58\242", "\88\60\16\73\134\197\117\124")]=bgNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\239\254\201\84\92\254", "\33\48\138\152\168")]=LUAOBFUSACTOR_DECRYPT_STR_0("\92\23\38\72\129\127\86\19\54\80\212\59\102\95", "\87\18\118\80\49\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\31\214\172\178\77\29\209", "\208\44\126\186\192")]=function(val)
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
		local textOptions = {[LUAOBFUSACTOR_DECRYPT_STR_0("\192\18\173\210\17\188\129\106\242\28\165\211\24\232\128", "\46\151\122\196\166\116\156\169")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\248\84\31\187\210\229\79\14\254", "\155\133\141\38\122")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\38\173\66\68", "\197\69\74\204\33\47\31")]=Color3.fromRGB(20, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\74\86\139\255\88", "\231\144\47\58")]=Color3.fromRGB(255, 230, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\193\219\123", "\89\210\184\186\21\120\93\175")]=Color3.fromRGB(0, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\131\86\120", "\90\209\51\28\181\25")]=Color3.fromRGB(255, 80, 80)};
		local txtNames = {};
		for n, _ in pairs(textOptions) do
			table.insert(txtNames, n);
		end
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\254\122\90\235", "\223\176\27\55\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\190\214\161\100\152\193\185\43\169", "\213\68\219\174"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\236\34\224", "\31\107\128\67\135\74\165\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\215\200\85\85\130\221\228\249\78\85", "\209\184\136\156\45\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\193\102\28", "\216\103\168\21\104")]=txtNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\92\168\69\165\109\161\87", "\196\24\205\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\131\234\18\43\203\171\34\43\141\226\19\34\159\170", "\102\78\235\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\47\56\72\69\56\180\63", "\84\154\78\84\36\39\89\215")]=function(val)
			local col = textOptions[val];
			if col then
				Theme.Text = col;
				local h, s, v = Color3.toHSV(col);
				Theme.TextDark = Color3.fromHSV(h, s, v * 0.7);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\201\228\78\76", "\101\157\129\54\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\176\153\191\38\116", "\25\125\201\234\203\67"),[LUAOBFUSACTOR_DECRYPT_STR_0("\88\248\17\4\26", "\115\25\148\120\99\116\71")]=Enum.TextXAlignment.Center});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\60\180\33", "\33\108\93\217\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\78\165\184\216\78\225\143\239\101\225\158\210\81\164", "\205\187\43\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\216\126\4\216", "\191\158\18\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\250\252\172\136\156\204\217\130", "\207\165\163\231\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\240\247", "\16\166\153\153\54\68")]=70,[LUAOBFUSACTOR_DECRYPT_STR_0("\255\178\216", "\153\178\211\160\38\84\65")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\14\92\42\151\7\78", "\75\226\107\58")]=DEFAULTS.KSize,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\223\29\118\19\195\206\83", "\173\56\190\113\26\113\162")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\229\223\32\0", "\151\171\190\77\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\236\33\236\172\234\123\10\198\42\184\154\251\124\7\192", "\107\165\79\152\201\152\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\66\233\204", "\31\55\46\136\171\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\238\23\251\225\216\27\223\245\221\45", "\148\177\72\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\139\191\89", "\179\198\214\55")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\13\106", "\179\144\108\18\22\37")]=1.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\166\29\136\218\202\183", "\175\166\195\123\233")]=DEFAULTS.GuiScale,[LUAOBFUSACTOR_DECRYPT_STR_0("\204\195\81\69\242\238\193\86", "\144\143\162\61\41")]=function(val)
			if Library.MainScale then
				Library.MainScale.Scale = val;
			end
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\206\210\16\85", "\83\128\179\125\48\18\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\184\244\218\75\27\29\156\246\196", "\126\61\215\147\189\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\94\243\28\66", "\37\24\159\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\153\65\77\221\161\121\71\241\163\108", "\34\186\198\21"),[LUAOBFUSACTOR_DECRYPT_STR_0("\220\13\195\92\215\244\28", "\162\152\104\165\61")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\35\179\126\117\237\194\35\182\120\98", "\133\173\79\210\29\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\189\110\232\56\158\60\198\46\148\50\163\101", "\75\237\28\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\94\192\189\45\26\228\234", "\129\188\63\172\209\79\123\135")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\127\219\210\194\71\227\234\200\107\225\255", "\173\32\132\134")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\113\36\43\250\188\35\200\64\15\60\231\171\60\200", "\173\46\123\104\143\206\81")] or LUAOBFUSACTOR_DECRYPT_STR_0("\144\24\36\139\80\143\21", "\97\212\125\66\234\37\227"));
	end;
	return WindowAPI;
end;
return Library;
