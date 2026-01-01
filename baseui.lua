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
local BUILTIN_THEMES = {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\45\89\57\48\82\236", "\152\54\72\63\88\69\62")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\227\205\224\88\219\211\204\123", "\60\180\164\142")]=Color3.fromRGB(15, 15, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\87\1\44\37\236\0\122\121", "\114\56\62\101\73\71\141")]=Color3.fromRGB(25, 25, 35),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\253\222\201\154\206", "\164\216\137\187")]=Color3.fromRGB(35, 35, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\229\50\183\168\234\90", "\107\178\134\81\210\198\158")]=Color3.fromRGB(160, 30, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\13\129\195\164\44\92", "\202\88\110\226\166")]=Color3.fromRGB(255, 80, 220),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\0\133\240\198\198\32\172", "\170\163\111\226\151")]=Color3.fromRGB(160, 30, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\53\170\44", "\73\113\80\210\88\46\87")]=Color3.fromRGB(245, 245, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\41\213\6\195\128\62\198", "\135\225\76\173\114")]=Color3.fromRGB(140, 140, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\249\170\191\167\184", "\199\122\141\216\208\204\221")]=Color3.fromRGB(60, 50, 80)},[LUAOBFUSACTOR_DECRYPT_STR_0("\158\211\31\231", "\150\205\189\112\144\24")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\18\141\177\72\11\159\51\55", "\112\69\228\223\44\100\232\113")]=Color3.fromRGB(245, 245, 250),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\22\3\214\180\125\148\246\56", "\230\180\127\103\179\214\28")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\17\90\75\198\102", "\128\236\101\63\38\132\33")]=Color3.fromRGB(230, 230, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\170\18\65\184\255\158", "\175\204\201\113\36\214\139")]=Color3.fromRGB(50, 160, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\207\54\217\10\83\158", "\100\39\172\85\188")]=Color3.fromRGB(150, 200, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\119\190\135\63\168\87\151", "\83\205\24\217\224")]=Color3.fromRGB(50, 160, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\192\213\41", "\93\134\165\173")]=Color3.fromRGB(40, 40, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\247\217\214\30\207\160\117", "\30\222\146\161\162\90\174\210")]=Color3.fromRGB(120, 120, 130),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\90\98\5\238\75", "\106\133\46\16")]=Color3.fromRGB(210, 210, 220)},[LUAOBFUSACTOR_DECRYPT_STR_0("\104\41\125\247\67", "\32\56\64\19\156\58")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\109\193\235\82\85\229\162\125", "\224\58\168\133\54\58\146")]=Color3.fromRGB(45, 30, 40),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\95\79\248\119\135\149\41\126", "\107\57\54\43\157\21\230\231")]=Color3.fromRGB(35, 20, 30),[LUAOBFUSACTOR_DECRYPT_STR_0("\242\159\20\248\155\251", "\175\187\235\113\149\217\188")]=Color3.fromRGB(60, 40, 50),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\172\130\73\237\109\41", "\24\92\207\225\44\131\25")]=Color3.fromRGB(255, 100, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\106\208\187\73\21\105\25", "\29\43\179\216\44\123")]=Color3.fromRGB(255, 180, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\214\39\75\177\220\15\98", "\44\221\185\64")]=Color3.fromRGB(255, 100, 160),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\226\80\75", "\19\97\135\40\63")]=Color3.fromRGB(255, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\89\43\47\11\48\188\87", "\81\206\60\83\91\79")]=Color3.fromRGB(180, 140, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\191\194\125\36\198", "\196\46\203\176\18\79\163\45")]=Color3.fromRGB(90, 50, 70)}};
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\143\43\112\26\43\236\205\159", "\143\216\66\30\126\68\155")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\142\205\11\202\208\175\195", "\129\202\168\109\171\165\195\183")].WindowBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\17\81\51\221\220\21\244\0\127", "\134\66\56\87\184\190\116")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\24\52\15\186\12\231\53", "\85\92\81\105\219\121\139\65")].SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\212\167\85\72\94\248", "\191\157\211\48\37\28")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\251\26\242\29\47\211\11", "\90\191\127\148\124")].ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\89\132\45\18\118\147\29\3\121\149\58", "\119\24\231\78")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\166\40\163\75\201\76\5", "\113\226\77\197\42\188\32")].Accent1,[LUAOBFUSACTOR_DECRYPT_STR_0("\27\21\247\176\52\2\209\187\62", "\213\90\118\148")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\127\43\178\87\88\87\58", "\45\59\78\212\54")].Accent2,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\89\132\140\138\43\130\222", "\144\112\54\227\235\230\78\205")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\151\45\9\253\197\87\167", "\59\211\72\111\156\176")].ToggleON,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\130\251\57", "\77\46\231\131")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\158\81\176\65\175\88\162", "\32\218\52\214")].Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188\213\177\87\81", "\58\46\119\81\200\145\208\37")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\15\137\54\173\188\177\34", "\86\75\236\80\204\201\221")].TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\71\104\68\145\236\132\121\68\84\138\242\132\96", "\235\18\33\23\229\158")]=BUILTIN_THEMES[LUAOBFUSACTOR_DECRYPT_STR_0("\116\191\199\186\69\182\213", "\219\48\218\161")].Stroke};
Library.ThemeObjects = {[LUAOBFUSACTOR_DECRYPT_STR_0("\195\99\125\77\210\74\238\240\98", "\128\132\17\28\41\187\47")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\53\59\18\54\88\38\32\7\62\84\4\60\18\41", "\61\97\82\102\90")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\143\33\185\69\194\69\13", "\105\204\78\203\43\167\55\126")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\131\184\34\19\22\23", "\49\197\202\67\126\115\100\167")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\21\92\242\40\137\88", "\62\87\59\191\73\224\54")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\197\5\201\192\227\7\248\200\245", "\169\135\98\154")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\233\112\13\64\248\62\219", "\168\171\23\68\52\157\83")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\199\101\231\162\46\40\148", "\231\148\17\149\205\69\77")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\180\162\223\239\68", "\159\224\199\167\155\55")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\195\246\36\198\211\242\46\217\228", "\178\151\147\92")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\184\252\78\33", "\26\236\157\44\82\114\44")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\30\33\210\92\38\43\198", "\59\74\78\181")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\22\221\83\94\182\55\194", "\211\69\177\58\58")]={}};
Library.Flags = {};
Library.SavedThemes = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\156\236\119\242\206\206\185", "\171\215\133\25\149\137");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\229\205\52\251\250\60\232\12\235\219\61\244", "\34\129\168\82\154\143\80\156");
Library.ThemesFile = LUAOBFUSACTOR_DECRYPT_STR_0("\145\186\54\6\77\93\199\143\161\60\5", "\233\229\210\83\107\40\46");
Library.ActiveLoops = {};
Library.MainScale = nil;
Library.CurrentTab = nil;
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\211\64\42\215\22\210\71\38\223\1\155\13\125\143\85\147\23\99\129\87\147\26\107\129\82\145\21", "\101\161\34\82\182");
local function SmoothTween(object, goals, time)
	local info = TweenInfo.new(time or 0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out);
	TweenService:Create(object, info, goals):Play();
end
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\219\25\88\236\207\231\144\9\253\4", "\78\136\109\57\158\187\130\226")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\13\58\247\245\16\48\237\248\56\54\250\240\42\54\246\255", "\145\94\95\153"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\201\196\0\217\75", "\215\157\173\116\181\46")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\177\147\230", "\186\85\212\235\146")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\230\148\4\255\45\231\87\204", "\56\162\225\118\158\89\142")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\72\4\194\163\39", "\184\60\101\160\207\66")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\31\141\104\181\55\139\127\189\37\139\115\178", "\220\81\226\28"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\61\218\150\242\236\206\16\212\150\242\229\201", "\167\115\181\226\155\138"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\246\35\229\80\126", "\166\130\66\135\60\27\17"))) then
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\80\75\204\121\53", "\80\36\42\174\21"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\113\40\8\73\77\17\59\127", "\26\46\112\87")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\134\27\148\91\185\185\86\177\173", "\212\217\67\203\20\223\223\37")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\133\180\151\225\185\140\164\215", "\178\218\237\200")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\137\140\217\255\176\179\245\213\162", "\176\214\213\134")] = object.Position.Y.Offset;
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
			SmoothTween(object, {[LUAOBFUSACTOR_DECRYPT_STR_0("\196\162\165\221\188\95\86\250", "\57\148\205\214\180\200\54")]=UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)}, 0.05);
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
			data = {[LUAOBFUSACTOR_DECRYPT_STR_0("\37\244\59\48\121\5\223\18", "\22\114\157\85\84")]=ToColor(saved.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\247\194\23\193\95\247\186\230\236", "\200\164\171\115\164\61\150")]=ToColor(saved.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\224\6\72\161\153", "\227\222\148\99\37")]=ToColor(saved.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\81\81\243\247\39\3", "\153\83\50\50\150")]=ToColor(saved.Accent1),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\117\112\25\125\191\31", "\45\61\22\19\124\19\203")]=ToColor(saved.Accent2),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\29\10\242\14\117\150\239", "\217\161\114\109\149\98\16")]=((saved.ToggleON and ToColor(saved.ToggleON)) or ToColor(saved.Accent2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\37\32\104", "\20\114\64\88\28\220")]=ToColor(saved.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\4\202\160\220\209\175\58", "\221\81\97\178\212\152\176")]=ToColor(saved.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\243\15\244\17\200", "\122\173\135\125\155")]=ToColor(saved.Stroke)};
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
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\187\254\35\172\45\35\205\138\213\52\177\58\60\205", "\168\228\161\96\217\95\81")] = themeName;
		end
	end
	for _, gradient in pairs(Library.ThemeObjects.Gradients) do
		gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgMain) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\238\248\9\78\46\83\210\212\32\72", "\55\187\177\78\60\79")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		end
	end
	for _, obj in pairs(Library.ThemeObjects.TitleGradients) do
		obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	end
	for _, obj in pairs(Library.ThemeObjects.BgSidebar) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\24\231\120\249\71\203\137\40\192\75", "\224\77\174\63\139\38\175")) then
			obj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
		elseif obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\163\84\81\1\134\75\93\45\144", "\78\228\33\56")) then
			obj.BackgroundColor3 = Theme.SidebarBG;
		end
	end
	for _, obj in pairs(Library.ThemeObjects.BgItems) do
		if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\233\107\187\44\135\196\123\177\23", "\229\174\30\210\99")) then
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
		tab.Update(isActive);
	end
	for _, toggle in pairs(Library.ThemeObjects.Toggles) do
		toggle.Update(Library.Flags[toggle.Flag]);
	end
	for _, slider in pairs(Library.ThemeObjects.Sliders) do
		slider.Update();
	end
end;
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\24\226\136\87\228\58\119\17\254\137\95", "\89\123\141\230\49\141\93");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\216\120\248\11\55\79\253\68\223", "\42\147\17\150\108\112")) then
		CoreGui.KingGenUI:Destroy();
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\165\63\122\226\230\40\179\36", "\136\111\198\77\31\135"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\41\0\169\81\154\225\25\156\43", "\201\98\105\199\54\221\132\119");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\30\130\44\7", "\204\217\108\227\65\98\85"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\115\194\252\235\10\210\95\206\240", "\160\62\163\149\133\76");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0, 550, 0, 350);
	MainFrame.BackgroundColor3 = Theme.WindowBG;
	MainFrame.BackgroundTransparency = 0.05;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\62\44\194\218\165", "\163\182\192\109\79"), MainFrame);
	MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\11\25\39\213\252\7\37\1\204\240", "\149\84\70\96\160")] or DEFAULTS.GuiScale;
	Library.MainScale = MainScale;
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\42\255\57\2\4\232\54\18", "\141\88\102\109"), MainFrame);
	table.insert(Library.ThemeObjects.BgMain, MainFrameGradient);
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\233\127\8\51\80\211", "\161\211\51\170\16\122\93\53"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 10);
	table.insert(Library.ThemeObjects.Corners, MainCorner);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\135\129\60\233\161\185\45", "\72\155\206\210"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 0.5;
	FrameStroke.Thickness = 1;
	table.insert(Library.ThemeObjects.Strokes, FrameStroke);
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\83\103\7\41\67\89\91\0\32\82\104\85\7\61\82", "\83\38\26\52\110"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(700, 500);
	sizeConstraint.MinSize = Vector2.new(450, 300);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\18\63\82\122\2\51\82\87\25", "\38\56\119\71"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\218\225\72\195\49\116\255\224\91\221\32\68", "\54\147\143\56\182\69");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\147\254\68\218", "\191\182\225\159\41"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\31\27\60\89\142\165\195\57", "\162\75\114\72\53\235\231");
	TitleBar.Size = UDim2.new(0, 150, 1, 0);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\21\99\240\82\6\133\57\74\246", "\98\236\92\36\130\51"), TitleBar);
	table.insert(Library.ThemeObjects.BgSidebar, TitleBarGradient);
	MakeDraggable(TitleBar, MainFrame);
	local SidebarSep = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\11\13\183\64", "\80\196\121\108\218\37\200\213"), TitleBar);
	SidebarSep.Size = UDim2.new(0, 1, 1, 0);
	SidebarSep.Position = UDim2.new(1, -1, 0, 0);
	SidebarSep.BackgroundColor3 = Theme.UIStrokeColor;
	SidebarSep.BorderSizePixel = 0;
	SidebarSep.ZIndex = 3;
	table.insert(Library.ThemeObjects.Strokes, SidebarSep);
	local TitleContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\97\3\114\78", "\234\96\19\98\31\43\110"), TitleBar);
	TitleContainer.Size = UDim2.new(1, 0, 0, 50);
	TitleContainer.BackgroundTransparency = 1;
	TitleContainer.ZIndex = 3;
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\18\83\192\169\94\138\4\26\94", "\235\102\127\50\167\204\18"), TitleContainer);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 24, 0, 24);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -12);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\164\237\55\104\47\82\164\249", "\78\48\193\149\67\36"), TitleContainer);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\27\55\174\63\1\5\55", "\33\80\126\224\120");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 44, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextSize = 16;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	table.insert(Library.ThemeObjects.Texts, TitleLabel);
	local TopBarContent = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\186\2\201\89", "\60\140\200\99\164"), MainFrame);
	TopBarContent.Size = UDim2.new(1, -150, 0, 40);
	TopBarContent.Position = UDim2.new(0, 150, 0, 0);
	TopBarContent.BackgroundTransparency = 1;
	TopBarContent.ZIndex = 2;
	MakeDraggable(TopBarContent, MainFrame);
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\241\28\50\128\146\224\16\41\172", "\194\231\148\100\70"), TopBarContent);
	MinBtn.Size = UDim2.new(0, 30, 0, 30);
	MinBtn.Position = UDim2.new(1, -35, 0.5, -15);
	MinBtn.Text = "-";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 20;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.BackgroundTransparency = 1;
	MinBtn.TextColor3 = Theme.TextDark;
	MinBtn.ZIndex = 3;
	MinBtn.AutoButtonColor = false;
	table.insert(Library.ThemeObjects.TextDarks, MinBtn);
	MinBtn.MouseEnter:Connect(function()
		SmoothTween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\73\217\183\213\199\74\67\211\240", "\168\38\44\161\195\150")]=Theme.Text});
	end);
	MinBtn.MouseLeave:Connect(function()
		SmoothTween(MinBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\180\249\154\98\19\231\186\25\146\175", "\118\224\156\226\22\80\136\214")]=Theme.TextDark});
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\237\75\133\71\224\126\149\75", "\224\34\142\57"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\245\133\208\201\103\254\83\41\203\174", "\110\190\199\165\189\19\145\61");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\230\118\239\142\229\207\255\99\231\133", "\167\186\139\23\136\235"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 25, 0, 25);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\156\169\30\10\176\139\25\40\180\156\4\21\150\135\3\9\161\154\12\19\187\156", "\109\122\213\232"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\209\200\137\15\222\216\145\15\214\200\145\51\239\251\167", "\80\142\151\194")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\60\249\92\115\51\233\68\115\59\249\68\79\2\202\114", "\44\99\166\23")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\67\200\2\9\3\139\79\200\17\9\28\162\122\228\44\34", "\196\28\151\73\86\83")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\204\60\2\47\178\119\43\73\202\60\26\19\131\84\29", "\22\147\99\73\112\226\56\120")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\135\74\201\202\189\151\70\221\204\178\151\115\228\230\136\172", "\237\216\21\130\149")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\189\113\116\96\128\230\109", "\62\226\46\63\63\208\169"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\218\38\96\170\32\32\6\112\204\52\124\185\58\41", "\62\133\121\53\227\127\109\79")] = isMinimized;
		Library:Save();
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\47\43\25\202\229\167\184\21", "\194\112\116\82\149\182\206")] or DEFAULTS.KSize;
		if isMinimized then
			MainFrame.ClipsDescendants = true;
			SmoothTween(MainFrame, {[LUAOBFUSACTOR_DECRYPT_STR_0("\10\161\86\29", "\110\89\200\44\120\160\130")]=UDim2.new(0, 550, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\194\72\77\68\88\52\88\165\199\127\84\66\68\40\93\170\209\78\72\64\83", "\45\203\163\43\38\35\42\91")]=1}, 0.3);
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			SmoothTween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\251\136\221\36\130\157\70\211\139\207\51\134\187\81\220\134\197", "\52\178\229\188\67\231\201")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\72\74\1", "\67\65\33\48\100\151\60")]=UDim2.new(0, kSize, 0, kSize)});
		else
			SmoothTween(KBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\246\234\175\223\246\235\245\175\214\224\207\230\188\221\253\220\254", "\147\191\135\206\184")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\33\188\196", "\210\228\72\198\161\184\51")]=UDim2.new(0, kSize * 0.8, 0, kSize * 0.8)});
			task.wait(0.2);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.BackgroundTransparency = 0.05;
			SmoothTween(MainFrame, {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\64\233\21", "\174\86\41\147\112\19")]=UDim2.new(0, 550, 0, 350)}, 0.4);
		end
	end
	Library.UpdateKButtonSize = function(self)
		if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\100\63\184\34\26\34\56\133\114\45\164\49\0\43", "\203\59\96\237\107\69\111\113")] then
			local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\27\41\135\222\2\249\205\33", "\183\68\118\204\129\81\144")] or DEFAULTS.KSize;
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
		local bind = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\49\146\68\235\12\133\2\168\91\225\18", "\226\110\205\16\132\107")] or DEFAULTS.ToggleKey;
		if (input.KeyCode.Name == bind) then
			local currentlyMinimized = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\212\252\213\240\126\198\234\206\240\108\194\249\197\253", "\33\139\163\128\185")];
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\104\103\49\247\104\117\45\240\126\117\45\228\114\124", "\190\55\56\100")] then
		MainFrame.Visible = false;
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
		local kSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\105\144\23\33\32\234\233\83", "\147\54\207\92\126\115\131")] or DEFAULTS.KSize;
		KBtn.Size = UDim2.new(0, kSize, 0, kSize);
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		SetState(false);
	end
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\50\39\114\1\114\4\63\50\91\31\127\0\52", "\30\109\81\85\29\109"), TitleBar);
	TabBar.Position = UDim2.new(0, 0, 0, 60);
	TabBar.Size = UDim2.new(1, 0, 1, -70);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\120\191\37\202\208\254\104\91\163\34", "\156\159\17\52\214\86\190"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 6);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\198\141\189\170\235\180\178\169", "\220\206\143\221"), TabBar).PaddingTop = UDim.new(0, 5);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\160\111\44\26\221", "\178\230\29\77\119\184\172"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -150, 1, -40);
	PagesContainer.Position = UDim2.new(0, 150, 0, 40);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\151\58\26\115\252\252\176\13", "\152\149\222\106\123\23"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 15);
	ContentPadding.PaddingRight = UDim.new(0, 15);
	ContentPadding.PaddingTop = UDim.new(0, 5);
	ContentPadding.PaddingBottom = UDim.new(0, 10);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local buttonHeight = 36;
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\233\35\238\87\151\200\50\226\76\187", "\213\189\70\150\35"), TabBar);
		TabBtn.Size = UDim2.new(0.85, 0, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamMedium;
		TabBtn.TextSize = 13;
		TabBtn.TextXAlignment = Enum.TextXAlignment.Left;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\124\87\7\93\91\113\26", "\104\47\53\20"), TabBtn).CornerRadius = UDim.new(0, 6);
		local TP = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\101\177\29\184\11\170\66\134", "\111\195\44\225\124\220"), TabBtn);
		TP.PaddingLeft = UDim.new(0, 12);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\84\1\126\174", "\203\184\38\96\19\203"), TabBtn);
		Indicator.Size = UDim2.new(0, 3, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BorderSizePixel = 0;
		Indicator.Visible = false;
		Indicator.ZIndex = 4;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\90\90\78\220\55\118\107", "\174\89\19\25\33"), Indicator).CornerRadius = UDim.new(0, 2);
		local function UpdateTabStyle(isActive)
			if isActive then
				SmoothTween(TabBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\19\81\69\240\149\4\58\28\86\109\248\139\4\61\65", "\107\79\114\50\46\151\231")]=Color3.new(Theme.SidebarBG.R * 1.5, Theme.SidebarBG.G * 1.5, Theme.SidebarBG.B * 1.5),[LUAOBFUSACTOR_DECRYPT_STR_0("\13\163\173\61\169\54\187\207\43\245", "\160\89\198\213\73\234\89\215")]=Theme.Text}, 0.2);
				Indicator.BackgroundColor3 = Theme.AccentStart;
				Indicator.Visible = true;
			else
				SmoothTween(TabBtn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\106\112\183\245\194\90\126\161\240\193\107\126\184\241\215\27", "\165\40\17\212\158")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\209\220\16\39\5\234\213\7\33\117", "\70\133\185\104\83")]=Theme.TextDark}, 0.2);
				Indicator.Visible = false;
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\81\74", "\169\100\37\36\74")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\134\175\85", "\48\96\231\194")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\225\84\10", "\227\168\58\110\77\121\184\207")]=Indicator});
		table.insert(Library.ThemeObjects.Tabs, {[LUAOBFUSACTOR_DECRYPT_STR_0("\89\40\177", "\197\27\92\223\32\209\187\17")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\45\94\206\254", "\155\99\63\163")]=name,[LUAOBFUSACTOR_DECRYPT_STR_0("\183\193\165\140\173\129", "\228\226\177\193\237\217")]=UpdateTabStyle});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\179\49\233\56\188\42\232\51\150\49\231\57\181", "\134\84\208\67"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\44\156\135\91\22", "\60\115\204\230");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.Accent2;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\19\199\121\244\46\199\113\254\53\254\100", "\16\135\90\139"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 12);
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\93\54\50\74\80\113\90\115", "\24\52\20\102\83\46\52"), Page).PaddingBottom = UDim.new(0, 10);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\226\61\32\41\10", "\111\164\79\65\68")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\232\216\142\219", "\138\166\185\227\190\78")]=name});
		if FirstTab then
			Library.CurrentTab = name;
		end
		TabBtn.MouseButton1Click:Connect(function()
			Library.CurrentTab = name;
			for _, tabData in ipairs(TabButtons) do
				if (tabData.Name ~= name) then
					SmoothTween(tabData.Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\233\117\198\60\85\49\22\222\122\193\20\93\47\22\217\39", "\121\171\20\165\87\50\67")]=Theme.SidebarBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\242\61\161\34\154\13\202\55\171\101", "\98\166\88\217\86\217")]=Theme.TextDark}, 0.2);
					tabData.Ind.Visible = false;
				end
			end
			UpdateTabStyle(true);
			for _, pageData in ipairs(Pages) do
				pageData.Frame.Visible = pageData.Name == name;
			end
		end);
		UpdateTabStyle(FirstTab);
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
			local Container = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\228\120\12\131", "\188\150\150\25\97\230"), Page);
			Container.Size = UDim2.new(1, -5, 0, 44);
			Container.BackgroundColor3 = Theme.ItemBG;
			Container.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\160\124\13\30\227\223\155", "\141\186\233\63\98\108"), Container).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Container);
			local ContainerStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\195\31\162\55\254\225\41", "\69\145\138\76\214"), Container);
			ContainerStroke.Color = Theme.UIStrokeColor;
			ContainerStroke.Transparency = 0.8;
			ContainerStroke.Thickness = 1;
			table.insert(Library.ThemeObjects.Strokes, ContainerStroke);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\68\202\145\157\147\23\114\202\133", "\118\16\175\233\233\223"), Container);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -10, 1, 0);
			Label.Position = UDim2.new(0, 12, 0, 0);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local SwitchBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\129\45\175\204\158\105\159\139\59", "\29\235\228\85\219\142\235"), Container);
			SwitchBG.Size = UDim2.new(0, 44, 0, 22);
			SwitchBG.AnchorPoint = Vector2.new(1, 0.5);
			SwitchBG.Position = UDim2.new(1, -12, 0.5, 0);
			SwitchBG.Text = "";
			SwitchBG.AutoButtonColor = false;
			SwitchBG.BackgroundColor3 = Theme.UIStrokeColor;
			SwitchBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\253\153\210\101\64\34\64", "\50\93\180\218\189\23\46\71"), SwitchBG).CornerRadius = UDim.new(1, 0);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\182\90\65\65", "\40\190\196\59\44\36\188"), SwitchBG);
			Knob.Size = UDim2.new(0, 18, 0, 18);
			Knob.AnchorPoint = Vector2.new(0, 0.5);
			Knob.Position = UDim2.new(0, 2, 0.5, 0);
			Knob.BackgroundColor3 = Theme.Text;
			Knob.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\108\255\187\232\115\8\46", "\109\92\37\188\212\154\29"), Knob).CornerRadius = UDim.new(1, 0);
			local function UpdateVisuals(val)
				if val then
					SmoothTween(SwitchBG, {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\238\167\200\54\72\11\250\170\199\18\85\8\224\182\144", "\58\100\143\196\163\81")]=Theme.ToggleON}, 0.2);
					SmoothTween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\77\48\170\43\64\234\0", "\110\122\34\67\195\95\41\133")]=UDim2.new(1, -20, 0.5, 0)}, 0.2);
					SmoothTween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\87\176\88\65\209\103\190\78\68\210\86\190\87\69\196\38", "\182\21\209\59\42")]=Color3.new(1, 1, 1)}, 0.2);
				else
					SmoothTween(SwitchBG, {[LUAOBFUSACTOR_DECRYPT_STR_0("\149\86\198\22\38\172\184\66\203\25\2\177\187\88\215\78", "\222\215\55\165\125\65")]=Theme.UIStrokeColor}, 0.2);
					SmoothTween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\222\213\19\230\200\226\68", "\42\76\177\166\122\146\161\141")]=UDim2.new(0, 2, 0.5, 0)}, 0.2);
					SmoothTween(Knob, {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\139\6\197\126\100\170\159\11\202\90\121\169\133\23\157", "\22\197\234\101\174\25")]=Theme.TextDark}, 0.2);
				end
			end
			table.insert(Library.ThemeObjects.Toggles, {[LUAOBFUSACTOR_DECRYPT_STR_0("\24\36\161\221\98\170", "\230\77\84\197\188\22\207\183")]=UpdateVisuals,[LUAOBFUSACTOR_DECRYPT_STR_0("\223\24\199\251", "\85\153\116\166\156\236\193\144")]=tFlag});
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
			local function OnClick()
				local newVal = not Library.Flags[tFlag];
				if (options.Condition and newVal) then
					local success, reason = options.Condition();
					if not success then
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\133\227\89\186\235\14\228\196\72\189\237\5\160", "\96\196\128\45\211\132"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\22\140\117\81\221\187\244\221\59\140\121\83\215\239\160\208\60\158\59\77\219\168\188\204\117\131\116\72\156", "\184\85\237\27\63\178\207\212"), 4);
						return;
					end
				end
				UpdateVisuals(newVal);
				HandleLoop(newVal);
			end
			SwitchBG.MouseButton1Click:Connect(OnClick);
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
			local Container = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\75\8\82\13", "\63\104\57\105"), Page);
			Container.Size = UDim2.new(1, -5, 0, 55);
			Container.BackgroundColor3 = Theme.ItemBG;
			Container.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\62\174\135\75\25\137\161\86", "\36\107\231\196"), Container).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Container);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\176\186\147\113\180\160\130\81", "\231\61\213\194"), Container);
			TopLabel.Size = UDim2.new(1, -20, 0, 20);
			TopLabel.Position = UDim2.new(0, 12, 0, 8);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamMedium;
			TopLabel.TextSize = 13;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, TopLabel);
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\168\37\103\37\172\63\118\5", "\19\105\205\93"), Container);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 8);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextSize = 13;
			ValLabel.TextColor3 = Theme.AccentStart;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.TextXAlignment = Enum.TextXAlignment.Right;
			ValLabel.ZIndex = 5;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\26\223\140\58", "\95\201\104\190\225"), Container);
			BarBG.Size = UDim2.new(1, -24, 0, 6);
			BarBG.Position = UDim2.new(0, 12, 0, 35);
			BarBG.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\226\226\193\189\197\196\220", "\174\207\171\161"), BarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\236\12\254\253", "\183\141\158\109\147\152"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\32\197\3\62\7\227\30", "\108\76\105\134"), Fill).CornerRadius = UDim.new(1, 0);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\215\176\236\203", "\174\139\165\209\129"), Fill);
			Knob.Size = UDim2.new(0, 14, 0, 14);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(1, 0, 0.5, 0);
			Knob.BackgroundColor3 = Theme.Text;
			Knob.ZIndex = 8;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\154\193\206\212\13\117\106", "\24\195\211\130\161\166\99\16"), Knob).CornerRadius = UDim.new(1, 0);
			local function UpdateColor()
				ValLabel.TextColor3 = Theme.AccentStart;
				Fill.BackgroundColor3 = Theme.AccentStart;
			end
			table.insert(Library.ThemeObjects.Sliders, {[LUAOBFUSACTOR_DECRYPT_STR_0("\115\19\237\45\71\19", "\118\38\99\137\76\51")]=UpdateColor});
			local function Update(input)
				local SizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1);
				local Value = math.floor(min + ((max - min) * SizeX));
				if ((max - min) < 2) then
					Value = math.floor((min + ((max - min) * SizeX)) * 100) / 100;
				end
				Library.Flags[sFlag] = Value;
				SmoothTween(Fill, {[LUAOBFUSACTOR_DECRYPT_STR_0("\206\47\31\23", "\64\157\70\101\114\105")]=UDim2.new(SizeX, 0, 1, 0)}, 0.05);
				ValLabel.Text = tostring(Value);
				pcall(options.Callback, Value);
				Library:Save();
			end
			local percent = (default - min) / (max - min);
			Fill.Size = UDim2.new(percent, 0, 1, 0);
			pcall(options.Callback, default);
			local Dragging = false;
			Container.InputBegan:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					if (input.Position.Y > (BarBG.AbsolutePosition.Y - 15)) then
						Dragging = true;
						Update(input);
					end
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
			local Container = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\102\186\166\238\21", "\112\32\200\199\131"), Page);
			Container.Size = UDim2.new(1, -5, 0, 60);
			Container.BackgroundColor3 = Theme.ItemBG;
			Container.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\121\127\183\209\165\39\62", "\66\76\48\60\216\163\203"), Container).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Container);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\131\97\231\115\207\38\191\138", "\68\218\230\25\147\63\174"), Container);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Position = UDim2.new(0, 12, 0, 8);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\47\75\88\148\184\62\71\67\184", "\214\205\74\51\44"), Container);
			MainBtn.Size = UDim2.new(1, -24, 0, 26);
			MainBtn.Position = UDim2.new(0, 12, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.Text;
			MainBtn.Font = Enum.Font.Gotham;
			MainBtn.TextSize = 12;
			MainBtn.ZIndex = 6;
			MainBtn.TextXAlignment = Enum.TextXAlignment.Left;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\101\193\243\101\244\73\240", "\23\154\44\130\156"), MainBtn).CornerRadius = UDim.new(0, 6);
			MainBtn.AutoButtonColor = false;
			local MP = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\143\157\175\50\23\24\168\170", "\115\113\198\205\206\86"), MainBtn);
			MP.PaddingLeft = UDim.new(0, 8);
			local Chevron = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\90\255\93\129\123\255\88\129\91", "\58\228\55\158"), MainBtn);
			Chevron.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\166\139\200\47\47\190\48\160\128\212\116\115\226\99\228\218\132\118\109\245\102\227\219", "\85\212\233\176\78\92\205");
			Chevron.Size = UDim2.new(0, 12, 0, 12);
			Chevron.Position = UDim2.new(1, -20, 0.5, -6);
			Chevron.BackgroundTransparency = 1;
			Chevron.ImageColor3 = Theme.TextDark;
			Chevron.ZIndex = 7;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\91\154\237\70\84\129\236\77\126\154\227\71\93", "\130\42\56\232"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\206\167\43\243\68\48\253\187\23\224\82\48\230\185", "\95\138\213\68\131\32");
			Scroll.Size = UDim2.new(1, 16, 0, 0);
			Scroll.Position = UDim2.new(0, -8, 1, 5);
			Scroll.BackgroundColor3 = Theme.ItemBG;
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\1\130\76\100\36\45\179", "\22\74\72\193\35"), Scroll).CornerRadius = UDim.new(0, 6);
			local ScrollStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\80\215\76\62\118\239\93", "\56\76\25\132"), Scroll);
			ScrollStroke.Color = Theme.UIStrokeColor;
			ScrollStroke.Thickness = 1;
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\232\135\47\220\74\237\170\63\192\75\213", "\175\62\161\203\70"), Scroll);
			Layout.Padding = UDim.new(0, 2);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 10);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\29\223\208\28\57\41\201\198\48\58\50\201\198\29\33\15\212\217\22", "\85\92\189\163\115")):Connect(UpdateCanvas);
			local Open = false;
			local BlockerConnection;
			local RenderStep;
			local function UpdatePosition()
				if (Open and (Scroll.Parent == ScreenGui)) then
					local btnPos = MainBtn.AbsolutePosition;
					local btnSize = MainBtn.AbsoluteSize;
					Scroll.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + btnSize.Y + 5);
					local targetHeight = (isSearchable and 150) or 120;
					Scroll.Size = UDim2.new(0, btnSize.X, 0, targetHeight);
				end
			end
			local function CloseDropdown()
				Open = false;
				SmoothTween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\27\163\36\57\61\165\63\54", "\88\73\204\80")]=0}, 0.2);
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
					SmoothTween(Chevron, {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\140\4\71\61\211\33\141", "\186\78\227\112\38\73")]=180}, 0.2);
					UpdatePosition();
					RenderStep = RunService.RenderStepped:Connect(UpdatePosition);
					BlockerConnection = InputBlocker.MouseButton1Click:Connect(CloseDropdown);
					UpdateCanvas();
				else
					CloseDropdown();
				end
			end);
			local function AddItem(item)
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\82\229\65\113\111\232\67\242\91", "\26\156\55\157\53\51"), Scroll);
				ItemBtn.Size = UDim2.new(1, -4, 0, 28);
				ItemBtn.BackgroundTransparency = 1;
				ItemBtn.Text = item;
				ItemBtn.TextColor3 = Theme.TextDark;
				ItemBtn.Font = Enum.Font.Gotham;
				ItemBtn.TextSize = 13;
				ItemBtn.ZIndex = 605;
				ItemBtn.AutoButtonColor = false;
				ItemBtn.MouseEnter:Connect(function()
					ItemBtn.TextColor3 = Theme.Text;
					ItemBtn.BackgroundTransparency = 0.9;
					ItemBtn.BackgroundColor3 = Theme.AccentStart;
				end);
				ItemBtn.MouseLeave:Connect(function()
					ItemBtn.TextColor3 = Theme.TextDark;
					ItemBtn.BackgroundTransparency = 1;
				end);
				ItemBtn.MouseButton1Click:Connect(function()
					Library.Flags[dFlag] = item;
					MainBtn.Text = item;
					pcall(options.Callback, item);
					CloseDropdown();
					Library:Save();
				end);
			end
			for _, item in ipairs(options.List) do
				AddItem(item);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\184\221\14\205\154\69\152\204\25\215", "\48\236\184\118\185\216")) then
						child:Destroy();
					end
				end
				for _, item in ipairs(newList) do
					AddItem(item);
				end
				UpdateCanvas();
			end;
			return DropdownAPI;
		end;
		Elements.MultiDropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or {};
			Library.Flags[dFlag] = default;
			local Container = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\175\86\61\202", "\84\133\221\55\80\175"), Page);
			Container.Size = UDim2.new(1, -5, 0, 60);
			Container.BackgroundColor3 = Theme.ItemBG;
			Container.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\206\7\169\213\82\184\245", "\60\221\135\68\198\167"), Container).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Container);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\218\184\224\151\110\216\236\184\244", "\185\142\221\152\227\34"), Container);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Position = UDim2.new(0, 12, 0, 8);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\192\79\238\97\38\227\76\202\89", "\151\56\165\55\154\35\83"), Container);
			MainBtn.Size = UDim2.new(1, -24, 0, 26);
			MainBtn.Position = UDim2.new(0, 12, 0, 28);
			MainBtn.BackgroundColor3 = Theme.WindowBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\147\70\9\235\163\87\75\160\238", "\142\192\35\101");
			MainBtn.TextColor3 = Theme.Text;
			MainBtn.Font = Enum.Font.Gotham;
			MainBtn.TextSize = 12;
			MainBtn.ZIndex = 6;
			MainBtn.TextXAlignment = Enum.TextXAlignment.Left;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\92\10\172\245\130\169\4", "\118\182\21\73\195\135\236\204"), MainBtn).CornerRadius = UDim.new(0, 6);
			local MP = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\21\42\65\0\9\244\6\59", "\157\104\92\122\32\100\109"), MainBtn);
			MP.PaddingLeft = UDim.new(0, 8);
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\165\221\197\49\43\132\165\164\128\221\203\48\34", "\203\195\198\175\170\93\71\237"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\3\94\50\193\88\53\238\33\91\58\218\70\31\207\45\89\49\217\93", "\156\78\43\94\181\49\113");
			Scroll.Size = UDim2.new(1, 16, 0, 120);
			Scroll.Position = UDim2.new(0, -8, 1, 5);
			Scroll.BackgroundColor3 = Theme.ItemBG;
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 2;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\71\193\231\172\25\77\124\96", "\25\18\136\164\195\107\35"), Scroll).CornerRadius = UDim.new(0, 6);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\221\4\133\70\97\168\237\185\241\34\188\91", "\216\136\77\201\47\18\220\161"), Scroll);
			Layout.Padding = UDim.new(0, 2);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local Open = false;
			local BlockerConnection, RenderStep;
			local function UpdateText()
				local count = 0;
				for _, state in pairs(Library.Flags[dFlag]) do
					if state then
						count = count + 1;
					end
				end
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\109\223\46\214\13\223\150\40\232", "\226\77\140\75\186\104\188"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\138\203\220\58\76\173\142\249\43\74\180\221\158\113\1", "\47\217\174\176\95");
			end
			local function UpdatePosition()
				if (Open and (Scroll.Parent == ScreenGui)) then
					local btnPos = MainBtn.AbsolutePosition;
					Scroll.Position = UDim2.new(0, btnPos.X, 0, btnPos.Y + MainBtn.AbsoluteSize.Y + 5);
					Scroll.Size = UDim2.new(0, MainBtn.AbsoluteSize.X, 0, 120);
				end
			end
			local function CloseDropdown()
				Open = false;
				Scroll.Visible = false;
				Scroll.Parent = MainBtn;
				InputBlocker.Visible = false;
				if BlockerConnection then
					BlockerConnection:Disconnect();
				end
				if RenderStep then
					RenderStep:Disconnect();
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
				else
					CloseDropdown();
				end
			end);
			for _, item in ipairs(options.List) do
				if (Library.Flags[dFlag][item] == nil) then
					Library.Flags[dFlag][item] = false;
				end
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\216\110\22\144\65\108\50\183\211", "\70\216\189\22\98\210\52\24"), Scroll);
				ItemBtn.Size = UDim2.new(1, -4, 0, 28);
				ItemBtn.BackgroundTransparency = 1;
				ItemBtn.Text = item;
				ItemBtn.TextColor3 = (Library.Flags[dFlag][item] and Theme.AccentStart) or Theme.TextDark;
				ItemBtn.Font = Enum.Font.Gotham;
				ItemBtn.TextSize = 13;
				ItemBtn.ZIndex = 605;
				ItemBtn.MouseButton1Click:Connect(function()
					Library.Flags[dFlag][item] = not Library.Flags[dFlag][item];
					ItemBtn.TextColor3 = (Library.Flags[dFlag][item] and Theme.AccentStart) or Theme.TextDark;
					UpdateText();
					pcall(options.Callback, Library.Flags[dFlag]);
					Library:Save();
				end);
			end
			UpdateText();
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Container = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\205\162\138\214", "\179\186\191\195\231"), Page);
			Container.Size = UDim2.new(1, -5, 0, 60);
			Container.BackgroundColor3 = Theme.ItemBG;
			Container.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\204\22\59\235\235\49\29\246", "\132\153\95\120"), Container).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Container);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\183\22\57\219\219\162\180\190", "\192\209\210\110\77\151\186"), Container);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 20);
			Label.Position = UDim2.new(0, 12, 0, 8);
			Label.Font = Enum.Font.GothamMedium;
			Label.TextSize = 13;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\6\58\253\221\203\248", "\164\128\99\66\137\159"), Container);
			Input.Size = UDim2.new(1, -24, 0, 26);
			Input.Position = UDim2.new(0, 12, 0, 28);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\37\135\253\187\18\201\253\187\24\157\167\240\78", "\222\96\233\137");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.WindowBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextSize = 13;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\154\132\16\154\253\245\171", "\144\217\211\199\127\232\147"), Input).CornerRadius = UDim.new(0, 6);
			Input.FocusLost:Connect(function()
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Container = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\61\63\37\208", "\36\152\79\94\72\181\37\98"), Page);
			Container.Size = UDim2.new(1, -5, 0, 45);
			Container.BackgroundTransparency = 1;
			Container.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\221\95\43\245\205\83\43\216\214", "\95\183\184\39"), Container);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = options.Name;
			Btn.TextColor3 = Theme.Text;
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\22\196\41\70\142\7\167", "\98\213\95\135\70\52\224"), Btn).CornerRadius = UDim.new(0, 8);
			Btn.AutoButtonColor = false;
			table.insert(Library.ThemeObjects.BgItems, Btn);
			table.insert(Library.ThemeObjects.Texts, Btn);
			local Stroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\138\250\99\70\241\168\204", "\52\158\195\169\23"), Btn);
			Stroke.Color = Theme.UIStrokeColor;
			Stroke.Thickness = 1;
			Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			table.insert(Library.ThemeObjects.Strokes, Stroke);
			Btn.MouseEnter:Connect(function()
				SmoothTween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\88\189\49\127\129\39\116\158\116\184\17\123\138\58\105\216", "\235\26\220\82\20\230\85\27")]=Theme.AccentStart,[LUAOBFUSACTOR_DECRYPT_STR_0("\188\164\241\214\87\135\173\230\208\39", "\20\232\193\137\162")]=Color3.new(1, 1, 1)}, 0.2);
				Stroke.Transparency = 1;
			end);
			Btn.MouseLeave:Connect(function()
				SmoothTween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\0\222\198\173\224\158\24\100\44\219\230\169\235\131\5\34", "\17\66\191\165\198\135\236\119")]=Theme.ItemBG,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\170\182\7\220\231\224\222\29\252", "\177\111\207\206\115\159\136\140")]=Theme.Text}, 0.2);
				Stroke.Transparency = 0;
			end);
			Btn.MouseButton1Click:Connect(function()
				local originalSize = Btn.Size;
				SmoothTween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\128\10\17", "\63\101\233\112\116\180\47")]=UDim2.new(0.98, 0, 0.95, 0)}, 0.05);
				task.wait(0.05);
				SmoothTween(Btn, {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\50\247\23", "\86\163\91\141\114\152")]=UDim2.new(1, 0, 1, 0)}, 0.05);
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\117\25\117\126\63", "\90\51\107\20\19"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\171\226\132\226\56", "\93\237\144\229\143"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Text = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\243\232\13\39\71\23\243\252", "\38\117\150\144\121\107"), Frame);
			Text.Size = UDim2.new(1, 0, 1, 0);
			Text.Text = options.Text or LUAOBFUSACTOR_DECRYPT_STR_0("\1\186\236\63\33", "\90\77\219\142");
			Text.TextColor3 = options.Color or Theme.Text;
			Text.Font = Enum.Font.GothamBold;
			Text.TextSize = 14;
			Text.BackgroundTransparency = 1;
			Text.TextXAlignment = options.Align or Enum.TextXAlignment.Left;
			Text.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\22\32\52\73", "\26\134\100\65\89\44\103"), Page);
			Frame.Size = UDim2.new(1, -5, 0, 80);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\202\19\44\182\255\230\34", "\196\145\131\80\67"), Frame).CornerRadius = UDim.new(0, 8);
			table.insert(Library.ThemeObjects.BgItems, Frame);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\181\30\28\52\233\28\181\10", "\136\126\208\102\104\120"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\92\131\221\64\160\64\57", "\49\24\234\174\35\207\50\93");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextSize = 14;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			table.insert(Library.ThemeObjects.Texts, Label);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\247\229\156\83\25\230\233\135\127", "\17\108\146\157\232"), Frame);
			CopyBtn.Size = UDim2.new(0.6, 0, 0, 30);
			CopyBtn.Position = UDim2.new(0.2, 0, 0, 40);
			CopyBtn.BackgroundColor3 = Theme.AccentStart;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\104\204\4\244\111\132\66\205\31", "\200\43\163\116\141\79");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextSize = 12;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\31\30\140\162\250\230\173", "\131\223\86\93\227\208\148"), CopyBtn).CornerRadius = UDim.new(0, 6);
			CopyBtn.AutoButtonColor = false;
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(options.Link);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\192\74\166\191\24\177\162", "\213\131\37\214\214\125");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\5\36\53\166\161\10\34\43\180", "\129\70\75\69\223");
				end
			end);
		end;
		Elements.LinkBox = function(self, options)
			self:CreditBox(options);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\101\217\246\237\117\251\85", "\143\38\171\147\137\28"));
		CreditsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\228\135\161\231", "\180\176\226\217\147\99\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\186\61\14\195\173\111\37\202\227\111\43\218\163\42\35\214\175", "\103\179\217\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\107\187\21\210\79", "\195\42\215\124\181\33\236")]=Enum.TextXAlignment.Center,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\86\59\49\55", "\152\109\57\87\94\69")]=Theme.AccentEnd});
		CreditsTab:Spacer(5);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\214\7\166", "\200\153\183\106\195\222\178\52")]=LUAOBFUSACTOR_DECRYPT_STR_0("\22\234\155\62\70\72\54\163\187\56\91\76\55\241", "\58\82\131\232\93\41"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\94\222\30", "\95\227\55\176\117\61")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\106\55\91\184\66\49\108\79\162\11\125\44\89\175\86\121\36\4\153\16\90\45\126\154\10\42\7\94", "\203\120\30\67\43")});
		local SettingsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\194\32\89\251\208\255\34\94", "\185\145\69\45\143"));
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\190\26\1\178", "\188\234\127\121\198")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\58\22\142\61\33\83\197\120\17\28\143\55\32\0", "\227\88\82\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\19\179\160\12", "\19\35\127\218\199\98")]=Enum.TextXAlignment.Left});
		local themeList = {LUAOBFUSACTOR_DECRYPT_STR_0("\56\254\12\227\9\247\30", "\130\124\155\106"),LUAOBFUSACTOR_DECRYPT_STR_0("\230\197\249\184", "\223\181\171\150\207\195\150\28"),LUAOBFUSACTOR_DECRYPT_STR_0("\124\51\237\165\16", "\105\44\90\131\206")};
		for name, _ in pairs(Library.SavedThemes) do
			table.insert(themeList, name);
		end
		local ThemeDropdown = SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\191\188", "\94\159\128\210\217\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\252\10\186\92\107\185\78\88\252\11\186", "\26\48\153\102\223\63\31\153"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\76\236\244", "\147\98\32\141")]=LUAOBFUSACTOR_DECRYPT_STR_0("\39\124\192\223\20\68\78\22\87\215\194\3\91\78", "\43\120\35\131\170\102\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\15\148\162", "\228\52\102\231\214\197\208")]=themeList,[LUAOBFUSACTOR_DECRYPT_STR_0("\58\229\115\203\255\135\13", "\182\126\128\21\170\138\235\121")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\180\229\22\243\148\1\53\8\159\238\61\227\139\22", "\102\235\186\85\134\230\115\80")] or LUAOBFUSACTOR_DECRYPT_STR_0("\115\9\56\94\103\216\54", "\66\55\108\94\63\18\180")),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\140\137\59\37\88\23\134", "\57\116\237\229\87\71")]=function(val)
			Library:ApplyTheme(val);
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\132\176\224\226", "\39\202\209\141\135\23\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\50\31\15\114\219\234\33\27\15\60\236\191\7\1\15\63\253\191\18\26\68\124\182", "\152\159\83\105\106\82"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\202\80\245", "\60\225\166\49\146\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\33\1\47\22\51\39\27\34\47\47\6\34\27", "\103\79\126\79\74\97"),[LUAOBFUSACTOR_DECRYPT_STR_0("\138\115\210\112\91\18\181\115\215\118\76", "\122\218\31\179\19\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\222\200\204\204\225\107\178\219\200", "\37\211\182\173\161\169\193"),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\59\65\213\42\122\186\252", "\217\151\90\45\185\72\27")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\237\125\234\23", "\54\163\28\135\114")]=LUAOBFUSACTOR_DECRYPT_STR_0("\27\218\75\135\14\75\32\222\80\135", "\31\72\187\61\226\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\7\79\222\69\127\39\200", "\68\163\102\35\178\39\30")]=function()
			local name = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\129\79\244\194\20\129\139\20\179\117\244\198\14\176", "\113\222\16\186\167\99\213\227")];
			if (name and (name ~= "")) then
				Library.SavedThemes[name] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\25\7\245\242\33\25\217\209", "\150\78\110\155")]=FromColor(Theme.WindowBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\182\204\35\228\166\31\173\98\162", "\32\229\165\71\129\196\126\223")]=FromColor(Theme.SidebarBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\157\193\140\163\242", "\181\163\233\164\225\225")]=FromColor(Theme.ItemBG),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\136\61\114\94\159\111", "\23\48\235\94")]=FromColor(Theme.AccentStart),[LUAOBFUSACTOR_DECRYPT_STR_0("\93\217\219\88\89\39\128", "\178\28\186\184\61\55\83")]=FromColor(Theme.AccentEnd),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\194\64\59\254\11\218\234", "\149\164\173\39\92\146\110")]=FromColor(Theme.ToggleON),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\34\8\11", "\123\147\71\112\127\122")]=FromColor(Theme.Text),[LUAOBFUSACTOR_DECRYPT_STR_0("\248\200\154\101\98\205\223\137", "\38\172\173\226\17")]=FromColor(Theme.TextDark),[LUAOBFUSACTOR_DECRYPT_STR_0("\126\5\62\224\70\20", "\143\45\113\76")]=FromColor(Theme.UIStrokeColor)};
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\140\177\8\48\189", "\92\216\216\124")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\58\169\77\248", "\157\59\82\204\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\49\237\238\236\228\199", "\209\88\94\131\154\137\138\179")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\27\160\210\121\26\99\37\42\45\172\193\38\94", "\66\72\193\164\28\126\67\81") .. name)});
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\195\41\174\89\51\122\243", "\22\135\76\200\56\70"),LUAOBFUSACTOR_DECRYPT_STR_0("\190\62\247\51", "\129\237\80\152\68\61"),LUAOBFUSACTOR_DECRYPT_STR_0("\97\161\10\248\5", "\56\49\200\100\147\124\119")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
			end
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\226\63\178\245", "\144\172\94\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\10\174\66\48\10\226\100\49\29\176\66\42\27\226\115\44\10\175\66", "\39\68\111\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\167\235\203\123\182\213\173", "\215\182\198\135\167\25")]=function()
			local current = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\178\118\201\93\159\91\239\70\153\125\226\77\128\76", "\40\237\41\138")];
			if ((current == LUAOBFUSACTOR_DECRYPT_STR_0("\227\113\252\249\95\203\96", "\42\167\20\154\152")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\121\240\173\85", "\65\42\158\194\34\17")) or (current == LUAOBFUSACTOR_DECRYPT_STR_0("\42\46\92\7\52", "\142\122\71\50\108\77\141\123"))) then
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\33\171\235\20\62", "\91\117\194\159\120")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\15\44\23\39", "\68\122\125\94\120\85\145"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\19\193\74\205\215\174", "\218\119\124\175\62\168\185")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\241\70\202\170\228\8\192\160\252\77\208\160\176\74\209\172\252\92\137\172\254\8\208\173\245\69\193\182\190", "\164\197\144\40")});
				return;
			end
			if Library.SavedThemes[current] then
				Library.SavedThemes[current] = nil;
				Library:Save();
				Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\183\249\190\135\216", "\214\227\144\202\235\189")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\173\130\118\21", "\92\141\197\231\27\112\211\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\197\240\132\183\212\232\235", "\177\134\159\234\195")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\153\238\51\165\221\184\239\101\224", "\169\221\139\95\192") .. current)});
				Library:ApplyTheme(LUAOBFUSACTOR_DECRYPT_STR_0("\250\142\121\62\55\42\202", "\70\190\235\31\95\66"));
				local newList = {LUAOBFUSACTOR_DECRYPT_STR_0("\158\231\28\231\240\182\246", "\133\218\130\122\134"),LUAOBFUSACTOR_DECRYPT_STR_0("\15\241\236\211", "\88\92\159\131\164\188\195"),LUAOBFUSACTOR_DECRYPT_STR_0("\176\39\177\64\206", "\189\224\78\223\43\183\139")};
				for n, _ in pairs(Library.SavedThemes) do
					table.insert(newList, n);
				end
				ThemeDropdown:Update(newList);
				ThemeDropdown:Set(LUAOBFUSACTOR_DECRYPT_STR_0("\10\249\140\23\212\34\232", "\161\78\156\234\118"));
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\147\178\209\200", "\188\199\215\169")]=LUAOBFUSACTOR_DECRYPT_STR_0("\223\28\76\111\231\241\73\124\116\228\243\27\76", "\136\156\105\63\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\128\112\51\21", "\84\123\236\25")]=Enum.TextXAlignment.Left});
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
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\109\74\22\48", "\207\35\43\123\85\107\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\68\165\167\237\117\117\234\143\196\57\83\165\172\229\107", "\25\16\202\192\138"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\199\172\229", "\148\157\171\205\130\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\235\64\38\214\241\47\209\87\38\221\249\49\231\113\37\212\245\55", "\150\67\180\20\73\177"),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\17\9\89", "\45\237\120\122")]=colorNames,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\237\164\45\194\228\182", "\76\183\136\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\74\243\247\40\92\74", "\116\26\134\133\88\48\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\61\192\172\232\191\115\29\202", "\18\126\161\192\132\221")]=function(val)
			local hue = COLOR_PALETTE[val];
			if hue then
				Theme.ToggleON = Color3.fromHSV(hue, 0.75, 1);
				Library:ApplyTheme(nil);
			end
		end});
		SettingsTab:Spacer(10);
		SettingsTab:Label({[LUAOBFUSACTOR_DECRYPT_STR_0("\107\45\182\16", "\54\63\72\206\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\251\64\86\110\224\118", "\27\168\57\37\26\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\166\117\175\217", "\183\77\202\28\200")]=Enum.TextXAlignment.Left});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\57\50\132\13", "\104\119\83\233")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\253\35\55\64\240\184\5\22\109\181\203\46\56\70\181\176\10\45\65\252\244\34\107", "\35\149\152\71\66"),[LUAOBFUSACTOR_DECRYPT_STR_0("\63\228\67\183", "\90\121\136\34\208")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\49\126\33\244\7\79\27", "\126\167\110\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\16\25\32", "\95\93\112\78\152\188")]=40,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\244\157", "\178\161\149\229\117\132\222")]=100,[LUAOBFUSACTOR_DECRYPT_STR_0("\172\222\219\173\180\26\178", "\67\232\187\189\204\193\118\198")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\47\185\44\57\3\236\128", "\143\235\78\213\64\91\98")]=function(val)
			Library:UpdateKButtonSize();
		end});
		SettingsTab:Input({[LUAOBFUSACTOR_DECRYPT_STR_0("\163\73\137\236", "\214\237\40\228\137\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\177\236\232\222\15\163\197\200\234\192", "\198\229\131\143\185\99"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\128\169\116", "\19\49\236\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\8\194\184\227\189\242\50\221\178\253", "\218\158\87\150\215\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\27\223\227\35\46\217", "\173\155\126\185\130\86\66")]=DEFAULTS.ToggleKey,[LUAOBFUSACTOR_DECRYPT_STR_0("\213\170\187\196\141\228\234\170\190\194\154", "\140\133\198\218\167\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\133\60\177\110\151\245\5\177\100\202\251\96", "\228\213\78\212\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\164\77\186\9\233\134\79\189", "\139\231\44\214\101")]=function(val)
			local clean = string.upper(string.gsub(val, " ", ""));
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\230\208\50\81\23\182\61\19\242\234\31", "\118\185\143\102\62\112\209\81")] = clean;
		end});
		Library:ApplyTheme(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\99\79\10\243\183\7\25\54\72\68\33\227\168\16", "\88\60\16\73\134\197\117\124")] or LUAOBFUSACTOR_DECRYPT_STR_0("\116\239\254\201\84\92\254", "\33\48\138\152\168"));
	end;
	return WindowAPI;
end;
return Library;
