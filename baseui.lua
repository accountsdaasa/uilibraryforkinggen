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
local MarketplaceService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\133\124\110\35\22\96\234\79\169\126\121\27\22\102\236\74\171\120", "\35\200\29\28\72\115\20\154"));
local Themes = {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\182\223\216\205\11\49\23", "\84\121\223\177\191\237\76")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\140\95\199\164\53\71\18\230", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\75\4\32\75\67\18\7\110", "\69\41\34\96")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\215\210\7\32\12", "\75\220\163\183\106\98")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\185\136\50\215\22\137\159\54\203\22", "\185\98\218\235\87")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\63\36\227\208\190\238\50\35", "\202\171\92\71\134\190")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\196\52\156", "\232\73\161\76")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\220\90\73\58\186\203\73", "\126\219\185\34\61")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\231\109\102\108\120\248\226\47\193\82\125\108", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\133\231\37\220", "\167\214\137\74\171\120\206\83")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\188\249\60\89\247\176\169\215", "\199\235\144\82\61\152")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\31\189\46\5\23\171\9\32", "\75\103\118\217")]=Color3.fromRGB(220, 220, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\64\117\25\155\57", "\126\167\52\16\116\217")]=Color3.fromRGB(200, 200, 215),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\45\35\133\186\13\207\220\47\50\148", "\156\168\78\64\224\212\121")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\237\166\203\9\250\128\192\3", "\174\103\142\197")]=Color3.fromRGB(100, 100, 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44", "\152\54\72\63\88\69\62")]=Color3.fromRGB(20, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\193\246\72\240\197\252\87", "\60\180\164\142")]=Color3.fromRGB(80, 80, 80),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\119\54\61\53\226\25\93\125\10\37\40\255", "\114\56\62\101\73\71\141")]=Color3.fromRGB(180, 180, 190)}};
local CurrentTheme = Themes[LUAOBFUSACTOR_DECRYPT_STR_0("\147\224\213\195\248\206\222\202", "\164\216\137\187")];
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\249\239\63\181\129\251\5", "\107\178\134\81\210\198\158");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\60\11\132\199\191\52\26\204\204\185\55\0", "\202\88\110\226\166");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\209\13\154\246\217\208\10\150\254\206\153\64\205\174\154\145\90\211\160\152\145\87\219\160\157\147\88", "\170\163\111\226\151");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\34\36\179\42\90\50\59\54\37\187", "\73\113\80\210\88\46\87")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\178\41\195\22\201\142\56\196\20\238\130\45\217\27\232\143", "\135\225\76\173\114"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\228\172\188\169", "\199\122\141\216\208\204\221")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\8\228", "\150\205\189\112\144\24")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\145\173\77\16\129\30\30", "\112\69\228\223\44\100\232\113")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\192\30\5\223\179", "\230\180\127\103\179\214\28")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\162\10\75\79\226\72\227\141\17\86\73\234", "\128\236\101\63\38\132\33"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\130\166\5\77\176\226\204\173\189\24\75\184", "\175\204\201\113\36\214\139"), tostring(options), 3);
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
	end
end;
Library.Load = function(self)
	if (readfile and isfile and isfolder(self.FolderName)) then
		local path = self.FolderName .. "/" .. self.CurrentConfig;
		if isfile(path) then
			local success, decoded = pcall(function()
				return HttpService:JSONDecode(readfile(path));
			end);
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\83\205\55\208\1", "\100\39\172\85\188"))) then
				for flag, value in pairs(decoded) do
					self.Flags[flag] = value;
				end
			end
		end
	end
end;
local function MakeDraggable(topbarobject, object, saveKey)
	local Dragging = nil;
	local DragInput = nil;
	local DragStart = nil;
	local StartPosition = nil;
	topbarobject.InputBegan:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			Dragging = true;
			DragStart = input.Position;
			StartPosition = object.Position;
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					Dragging = false;
					if saveKey then
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\146\64\134\179\48\172\116\188", "\83\205\24\217\224")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\217\253\242\18\224\195\222\56\242", "\93\134\165\173")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\129\203\254\241\57\207\190\123", "\30\222\146\161\162\90\174\210")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\218\119\79\37\227\72\99\15\241", "\106\133\46\16")] = object.Position.Y.Offset;
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
Library.Window = function(self, options)
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\91\47\125\250\83\71\22\42\96\243\84", "\32\56\64\19\156\58");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\113\193\235\81\125\247\142\111\225", "\224\58\168\133\54\58\146")) then
		CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\114\95\69\250\82\131\137\62\112", "\107\57\54\43\157\21\230\231")):Destroy();
	end
	Library:Load();
	if (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\232\142\5\225\176\210\200\200\180\37\253\188\209\202", "\175\187\235\113\149\217\188")] and Themes[Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\15\170\149\88\234\119\127\47\144\181\68\230\116\125", "\24\92\207\225\44\131\25")]]) then
		CurrentTheme = Themes[Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\120\214\172\88\18\115\76\192\135\120\19\120\70\214", "\29\43\179\216\44\123")]];
	end
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\218\50\73\184\215\7\89\180", "\44\221\185\64"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\70\88\84\4\233\125\118", "\19\97\135\40\63");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\78\50\54\42", "\81\206\60\83\91\79"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\99\170\217\124\9\209\76\169\75", "\196\46\203\176\18\79\163\45");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = CurrentTheme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\11\77\29\37\247\234", "\143\216\66\30\126\68\155"), MainFrame);
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\153\205\25\223\204\173\208\242\149\251\14\202\201\166", "\129\202\168\109\171\165\195\183")] then
		MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\17\93\35\204\215\26\225\49\103\4\219\223\24\227", "\134\66\56\87\184\190\116")];
	else
		MainScale.Scale = 1;
	end
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\24\46\169\24\239\40\48\50\37", "\85\92\81\105\219\121\139\65"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.WindowBG),ColorSequenceKeypoint.new(1, CurrentTheme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\154\115\74\110\209\248\161", "\191\157\211\48\37\28"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 24);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\54\199\8\40\208\20\241", "\90\191\127\148\124"), MainFrame);
	FrameStroke.Color = CurrentTheme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\174\15\4\104\130\45\3\74\134\58\30\119\164\33\25\107\147\60\22\113\137\58", "\119\24\231\78"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\4\150\67\198\69\50\141\35\182\94\206\65\24\140\57", "\113\226\77\197\42\188\32"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(600, 700);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\14\19\236\161\24\3\224\161\53\24", "\213\90\118\148"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\114\32\164\67\89\121\34\187\85\70\94\60", "\45\59\78\212\54");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\68\130\134\131", "\144\112\54\227\235\230\78\205"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\135\33\27\240\213\121\178\58", "\59\211\72\111\156\176");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = CurrentTheme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\174\196\63\79\131\234\40\64\147", "\77\46\231\131"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.SidebarBG),ColorSequenceKeypoint.new(1, CurrentTheme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\89\183\71\191\120\183\66\191\88", "\32\218\52\214"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\18\41\188\221\177\71\95\66", "\58\46\119\81\200\145\208\37"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\0\165\30\139\233\154\19\5", "\86\75\236\80\204\201\221");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 52, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = CurrentTheme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\220\158\102\85\120\139", "\235\18\33\23\229\158"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -44, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = CurrentTheme.ItemBG;
	MinBtn.TextColor3 = CurrentTheme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\147\226\180\66\180\196\169", "\219\48\218\161"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\198\112\127\66\220\93\239\241\127\120\106\212\67\239\246\34", "\128\132\17\28\41\187\47")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, CurrentTheme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\62\13\51\19\98\44\27\40\19\112\40\8\35\30", "\61\97\82\102\90")] then
			AnimateButtonColor(MinBtn, CurrentTheme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\45\185\78\194\89\57\28\165", "\105\204\78\203\43\167\55\126"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\142\136\54\10\7\11\201\118\176\163", "\49\197\202\67\126\115\100\167");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\86\222\46\133\116\75\35\79\208\39", "\62\87\59\191\73\224\54"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	local SavedKSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\212\7\238\221\238\12\253\218\216\41\201\192\253\7", "\169\135\98\154")] or 100;
	KBtn.Size = UDim2.new(0, SavedKSize, 0, SavedKSize);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\94\5\71\237\54\203\223\69\37\64\244\60\235\196\121\55\64\239\50\193\197\99", "\168\171\23\68\52\157\83"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\203\78\222\146\21\2\180\203\73\202\158\38\44\139\241", "\231\148\17\149\205\69\77")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\191\152\236\196\103\208\179\152\255\196\100\252\129\171\194", "\159\224\199\167\155\55")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\200\204\23\237\199\220\15\237\207\204\19\212\241\224\57\198", "\178\151\147\92")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\179\194\103\13\34\99\73\179\196\115\1\17\77\118\137", "\26\236\157\44\82\114\44")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\21\17\254\100\26\1\230\100\19\17\250\93\44\61\208\79", "\59\74\78\181")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\26\238\113\101\131\10\226", "\211\69\177\58\58"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\136\218\76\220\214\230\158\203\80\216\192\241\146\193", "\171\215\133\25\149\137")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local TargetKSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\210\205\38\238\230\62\251\81\222\227\1\243\245\53", "\34\129\168\82\154\143\80\156")] or 100;
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\181\189\32\2\92\71\134\139", "\233\229\210\83\107\40\46")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\77\38\215\17\200\77\60", "\101\161\34\82\182")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\193\0\88\249\222\214\144\47\230\30\73\255\201\231\140\45\241", "\78\136\109\57\158\187\130\226")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\54\227\244", "\145\94\95\153")]=UDim2.new(0, TargetKSize, 0, TargetKSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\212\192\21\210\75\131\239\204\26\198\94\182\239\200\26\214\87", "\215\157\173\116\181\46")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\6\189\145\247", "\186\85\212\235\146")]=UDim2.new(0, TargetKSize * 0.8, 0, TargetKSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\242\142\5\247\45\231\87\204", "\56\162\225\118\158\89\142")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\110\10\212\174\54\209\83\11", "\184\60\101\160\207\66")]=0}):Play();
		end
	end
	MinBtn.MouseButton1Click:Connect(function()
		SetState(true);
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\14\189\73\149\14\175\85\146\24\175\85\134\20\166", "\220\81\226\28")] then
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
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\199\131\246\239", "\167\115\181\226\155\138"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\209\43\227\89\121\112\212\193\45\233\72\122\120\200\231\48", "\166\130\66\135\60\27\17");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = CurrentTheme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\99\233\103\49\64\67\203\123\36", "\80\36\42\174\21"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.SidebarBG),ColorSequenceKeypoint.new(1, CurrentTheme.AccentStart)});
	SidebarGradient.Rotation = 90;
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\57\4\110\92\31\60\127", "\26\46\112\87"), SidebarContainer);
	SidebarStroke.Color = CurrentTheme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\32\185\123\179\179\76\186\190\5\185\117\178\186", "\212\217\67\203\20\223\223\37"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\132\219\169\153\132\211\163\130\189\198", "\178\218\237\200"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\214\209\178\177\239\222\177", "\176\214\213\134"), TabBar).PaddingTop = UDim.new(0, 15);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\132\134\213\172\82\80\250\170", "\57\148\205\214\180\200\54"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\239\52\57\115", "\22\114\157\85\84"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\35\197\89\242\161\202\204", "\200\164\171\115\164\61\150"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\241\27\81\161\171\224\23\74\141", "\227\222\148\99\37"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\123\113\249\235\61\87\64", "\153\83\50\50\150"), TabBtn).CornerRadius = UDim.new(0, 12);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\95\64\8\97\164\70\88", "\45\61\22\19\124\19\203"), TabBtn);
		TabBtnStroke.Color = CurrentTheme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = CurrentTheme.WindowBG;
				button.TextColor3 = CurrentTheme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\0\12\251\17\96\184\211\23\3\246\27", "\217\161\114\109\149\98\16")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\47\52\115\174", "\20\114\64\88\28\220")]=CurrentTheme.AccentStart}):Play();
			else
				button.BackgroundColor3 = CurrentTheme.SidebarBG;
				button.TextColor3 = CurrentTheme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\19\211\186\235\192\188\35\4\220\183\225", "\221\81\97\178\212\152\176")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\238\232\17\244\8", "\122\173\135\125\155")]=CurrentTheme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\166\213\14", "\168\228\161\96\217\95\81")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\208\35\89", "\55\187\177\78\60\79")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\205\77\228\74\195\137\35\201\121\249\71\194\133", "\224\77\174\63\139\38\175"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\187\113\89\41\129", "\78\228\33\56");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\87\158\10\150\218\82\179\26\138\219\106", "\229\174\30\210\99"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\182\80\233\57\48\21\234", "\89\123\141\230\49\141\93"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\213\99\247\1\21", "\42\147\17\150\108\112")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\33\167\32\122", "\136\111\198\77\31\135")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\27\166\91\184", "\201\98\105\199\54\221\132\119"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\9\155\53\46\52\174\188\0", "\204\217\108\227\65\98\85"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241\14\213\74\215\250\235", "\160\62\163\149\133\76"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\137\46\32\209\216\165\31", "\163\182\192\109\79"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\15\51\212\231\59\45\5", "\149\84\70\96\160"), Button);
			ToggleStroke.Color = CurrentTheme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\23\40", "\141\88\102\109")) or LUAOBFUSACTOR_DECRYPT_STR_0("\156\117\236", "\161\211\51\170\16\122\93\53");
				Button.TextColor3 = (val and CurrentTheme.Text) or CurrentTheme.TextDark;
				local targetColor = (val and CurrentTheme.AccentEnd) or CurrentTheme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\217\175\177\35\252\188\189\61\245\170\145\39\247\161\160\123", "\72\155\206\210")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\101\117\88\1\33", "\83\38\26\52\110")]=((val and CurrentTheme.AccentEnd) or CurrentTheme.UIStrokeColor)}):Play();
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\121\20\51\79\87\25\103\98\93\25\46\67\92", "\38\56\119\71"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\208\238\86\216\42\66\179\234\86\215\39\90\246\175\76\222\44\69\179\253\81\209\45\66\179\225\87\193\107", "\54\147\143\56\182\69"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\147\254\68\218", "\191\182\225\159\41"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\23\48\65\167\134\192\46\30", "\162\75\114\72\53\235\231"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = CurrentTheme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\170\46\69\239\86", "\98\236\92\36\130\51"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = CurrentTheme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\47\181\87\166\176\34", "\80\196\121\108\218\37\200\213"), SliderFrame).CornerRadius = UDim.new(0, 12);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\90\49\107\89\1\129\5", "\234\96\19\98\31\43\110"), SliderFrame);
			SliderFrameStroke.Color = CurrentTheme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\26\74\211\128\115\137\3\19", "\235\102\127\50\167\204\18"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = CurrentTheme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\179\244\46\65", "\78\48\193\149\67\36"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\55\163\23\83\62\27\146", "\33\80\126\224\120"), BarBG).CornerRadius = UDim.new(0, 12);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\202\186\2\201\89", "\60\140\200\99\164"), BarBG);
			Fill.BackgroundColor3 = CurrentTheme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\39\41\176\137\241\22", "\194\231\148\100\70"), Fill).CornerRadius = UDim.new(0, 12);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\230\177\247\204\79\73\207\183", "\168\38\44\161\195\150"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			UIGradientFill.Rotation = 90;
			local function Update(input)
				local SizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1);
				local Value = math.floor(min + ((max - min) * SizeX));
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\238\131\123\53", "\118\224\156\226\22\80\136\214"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\235\65\148\110\239\91\133\78", "\224\34\142\57"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\162\221\201\81\228\73\26\209\169", "\110\190\199\165\189\19\145\61"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = CurrentTheme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = CurrentTheme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\84\231\153\201\223\249", "\167\186\139\23\136\235"), MainBtn).CornerRadius = UDim.new(0, 12);
			MainBtn.AutoButtonColor = false;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\182\154\2\22\185\129\3\29\147\154\12\23\176", "\109\122\213\232"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\202\229\173\32\234\248\181\62\221\244\176\63\226\251", "\80\142\151\194");
			Scroll.Size = UDim2.new(1, 0, 0, (isSearchable and 150) or 120);
			Scroll.Position = UDim2.new(0, 0, 1, 5);
			Scroll.BackgroundColor3 = CurrentTheme.SidebarBG;
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 8;
			Scroll.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
			Scroll.ScrollBarImageTransparency = 0;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\239\84\67\17\200\114\94", "\44\99\166\23"), Scroll).CornerRadius = UDim.new(0, 12);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\222\5\63\32\176\80\246\48\57\38\176", "\196\28\151\73\86\83"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\210\1\58\31\142\77\12\115\208\12\39\4\135\86\12\69\250\25\44", "\22\147\99\73\112\226\56\120")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\112\250\225\175\183\109", "\237\216\21\130\149"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\177\75\94\77\179\193\16\204\0", "\62\226\46\63\63\208\169");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = CurrentTheme.ItemBG;
				SearchBox.TextColor3 = CurrentTheme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\48\118\140\13\3\42\76", "\62\133\121\53\227\127\109\79"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\36\17\42\225", "\194\112\116\82\149\182\206")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\13\173\84\12\226\247\26\45\167\66", "\110\89\200\44\120\160\130")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\198\83\82\97\95\47\89\164\205", "\45\203\163\43\38\35\42\91"), Scroll);
				ItemBtn.Size = UDim2.new(1, -10, 0, 25);
				ItemBtn.BackgroundTransparency = 1;
				ItemBtn.Text = item;
				ItemBtn.TextColor3 = CurrentTheme.Text;
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55\165\188\64\198\138\210", "\52\178\229\188\67\231\201")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\68\72\16\213\73\55\53\78\94", "\67\65\33\48\100\151\60"), Scroll);
					ItemBtn.Size = UDim2.new(1, -10, 0, 25);
					ItemBtn.BackgroundTransparency = 1;
					ItemBtn.Text = item;
					ItemBtn.TextColor3 = CurrentTheme.Text;
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\249\245\175\213\246", "\147\191\135\206\184"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\45\190\213\244\82\176\129\36", "\210\228\72\198\161\184\51"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\76\235\4\81\219\34\93\252\30", "\174\86\41\147\112\19"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = CurrentTheme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\104\5\129\14\38\27\81\130\79\5\128\24\107\65\95", "\203\59\96\237\107\69\111\113");
			MainBtn.TextColor3 = CurrentTheme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\63\143\238\35\254\210\54", "\183\68\118\204\129\81\144"), MainBtn).CornerRadius = UDim.new(0, 12);
			MainBtn.AutoButtonColor = false;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\174\98\235\7\142\7\163\119\194\25\131\3\168", "\226\110\205\16\132\107"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\198\214\236\205\72\207\209\239\201\69\228\212\238\234\66\249\204\236\213", "\33\139\163\128\185");
			Scroll.Size = UDim2.new(1, 0, 0, (isSearchable and 150) or 120);
			Scroll.Position = UDim2.new(0, 0, 1, 5);
			Scroll.BackgroundColor3 = CurrentTheme.SidebarBG;
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 8;
			Scroll.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
			Scroll.ScrollBarImageTransparency = 0;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\113\39\209\69\86\1\204", "\190\55\56\100"), Scroll).CornerRadius = UDim.new(0, 12);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\134\16\23\0\247\223\87\182\51\11\7", "\147\54\207\92\126\115\131"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\44\51\38\114\1\107\25\52\22\114\3\106\8\63\33\78\4\100\8", "\30\109\81\85\29\109")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\203\116\76\162\20\209\228", "\156\159\17\52\214\86\190"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\157\234\188\174\173\231\243\242\224", "\220\206\143\221");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = CurrentTheme.ItemBG;
				SearchBox.TextColor3 = CurrentTheme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\14\24\202\194\215\148", "\178\230\29\77\119\184\172"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\193\187\18\15", "\152\149\222\106\123\23")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\233\35\238\87\151\200\50\226\76\187", "\213\189\70\150\35")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\15\102\113\4\74\86\96\13\75", "\104\47\53\20"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\144\73\141\25\191\27\227\101\149\25\177\28\237\2\207", "\111\195\44\225\124\220");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\236\67\24\103\137\190\204\82\15\125", "\203\184\38\96\19\203"), Scroll);
				ItemBtn.Size = UDim2.new(1, -10, 0, 25);
				ItemBtn.BackgroundTransparency = 1;
				ItemBtn.Text = item;
				ItemBtn.TextColor3 = (Library.Flags[dFlag][item] and CurrentTheme.AccentStart) or CurrentTheme.Text;
				ItemBtn.Font = Enum.Font.Gotham;
				ItemBtn.TextScaled = true;
				ItemBtn.ZIndex = 605;
				ItemBtn.AutoButtonColor = false;
				ItemBtn.MouseButton1Click:Connect(function()
					Library.Flags[dFlag][item] = not Library.Flags[dFlag][item];
					ItemBtn.TextColor3 = (Library.Flags[dFlag][item] and CurrentTheme.AccentStart) or CurrentTheme.Text;
					UpdateText();
					pcall(options.Callback, Library.Flags[dFlag]);
					Library:Save();
				end);
			end
			UpdateText();
			UpdateCanvas();
			pcall(options.Callback, Library.Flags[dFlag]);
		end;
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\97\120\76\203", "\174\89\19\25\33"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\23\74\90\219\134\9\42\30", "\107\79\114\50\46\151\231"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\163\173\61\168\54\175", "\160\89\198\213\73\234\89\215"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\109\127\160\251\215\8\101\177\230\209\8\121\177\236\192\6\63\250", "\165\40\17\212\158");
			Input.Text = default;
			Input.BackgroundColor3 = CurrentTheme.ItemBG;
			Input.TextColor3 = CurrentTheme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\240\43\60\52\235\220\26", "\70\133\185\104\83"), Input).CornerRadius = UDim.new(0, 12);
			Input.FocusLost:Connect(function()
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\87\69\39\204", "\169\100\37\36\74"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\130\186\68\34\146\182\68\15\137", "\48\96\231\194"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\41\63\24\220\166\134\198\78", "\227\168\58\110\77\121\184\207"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			BtnGradient.Rotation = 45;
			Btn.BackgroundColor3 = CurrentTheme.ItemBG;
			Btn.BackgroundTransparency = 0.5;
			Btn.Text = options.Name;
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextScaled = true;
			Btn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\21\156\79\163\213\116\183", "\197\27\92\223\32\209\187\17"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\86\217\254", "\155\99\63\163")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\177\216\187\136", "\228\226\177\193\237\217")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\162\34\235\49", "\134\84\208\67"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, text)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\190\135\81\22", "\60\115\204\230"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Lab = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\63\243\100\203\59\233\117\235", "\16\135\90\139"), Frame);
			Lab.Size = UDim2.new(1, 0, 1, 0);
			Lab.Text = text;
			Lab.Font = Enum.Font.GothamBold;
			Lab.TextScaled = true;
			Lab.TextColor3 = CurrentTheme.Text;
			Lab.BackgroundTransparency = 1;
			Lab.ZIndex = 5;
		end;
		Elements.LinkBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\102\7\62\75", "\24\52\20\102\83\46\52"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\42\57\48\45\203\55", "\111\164\79\65\68"), Frame);
			Box.Size = UDim2.new(1, -110, 0, 35);
			Box.Position = UDim2.new(0, 0, 0, 10);
			Box.PlaceholderText = options.Link or "";
			Box.Text = options.Link or "";
			Box.BackgroundColor3 = CurrentTheme.ItemBG;
			Box.TextColor3 = CurrentTheme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextScaled = true;
			Box.ZIndex = 5;
			Box.ClearTextOnFocus = false;
			Box.TextEditable = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\243\240\160\209\60\228\195\203", "\138\166\185\227\190\78"), Box).CornerRadius = UDim.new(0, 12);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\255\113\221\35\126\34\27\206\120", "\121\171\20\165\87\50\67"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\234\49\183\61", "\98\166\88\217\86\217");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, -10);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\243\97\21\164\201\226\226\118\15", "\188\150\150\25\97\230"), Frame);
			CopyBtn.Size = UDim2.new(0, 100, 0, 35);
			CopyBtn.Position = UDim2.new(1, -100, 0, 10);
			CopyBtn.BackgroundColor3 = CurrentTheme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\249\134\79\27\76\193\211\135\84", "\141\186\233\63\98\108");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\195\15\185\55\255\239\62", "\69\145\138\76\214"), CopyBtn).CornerRadius = UDim.new(0, 12);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\69\230\174\155\190\18\121\202\135\157", "\118\16\175\233\233\223"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			local defaultCopySize = CopyBtn.Size;
			CopyBtn.MouseEnter:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\184\141\47\190", "\29\235\228\85\219\142\235")]=(defaultCopySize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			CopyBtn.MouseLeave:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\14\221\160\216", "\50\93\180\218\189\23\46\71")]=defaultCopySize}):Play();
			end);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\253\171\75\69\65\216\9", "\40\190\196\59\44\36\188");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\31\74\204\173\186\81\4\50\78", "\109\92\37\188\212\154\29");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\39\227\173\211\51\85\5\253\160\131\4\84\5\249\165\202\61\91\6\227\161", "\58\100\143\196\163\81"), LUAOBFUSACTOR_DECRYPT_STR_0("\57\67\45\173\48\93\165\13\21\82\58\227\48\71\165\26\18\75\48\227\58\81\224\13\15\86\44\177\113", "\110\122\34\67\195\95\41\133"), 3);
				end
			end);
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\83\163\90\71\211", "\182\21\209\59\42"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 80);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\82\221\9\13\191\181\82\201", "\222\215\55\165\125\65"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\8\216\213\25\253\211\233\10\31\212\212\12\247\211", "\42\76\177\166\122\146\161\141");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\143\29\218\91\121\189", "\22\197\234\101\174\25"), Frame);
			Box.Size = UDim2.new(0.8, 0, 0, 30);
			Box.Position = UDim2.new(0.1, 0, 0, 22);
			Box.PlaceholderText = options.Link or "";
			Box.Text = options.Link or "";
			Box.BackgroundColor3 = CurrentTheme.ItemBG;
			Box.TextColor3 = CurrentTheme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextScaled = true;
			Box.ZIndex = 5;
			Box.ClearTextOnFocus = false;
			Box.TextEditable = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\29\134\211\100\161\210\148", "\230\77\84\197\188\22\207\183"), Box).CornerRadius = UDim.new(0, 12);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\17\222\232\174\180\228\33\246\26", "\85\153\116\166\156\236\193\144"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 25);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 55);
			CopyBtn.BackgroundColor3 = CurrentTheme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\135\239\93\170\164\44\173\238\70", "\96\196\128\45\211\132");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\88\80\192\161\177\202", "\184\85\237\27\63\178\207\212"), CopyBtn).CornerRadius = UDim.new(0, 12);
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\112\46\77\9\93\0\90\6\77", "\63\104\57\105"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\40\136\180\77\14\131\229", "\36\107\231\196");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\126\186\178\158\29\153\171\137\86", "\231\61\213\194");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\42\161\52\99\11\162\60\97\13\237\8\125\8\187\60\122\5\172\63\127\12", "\19\105\205\93"), LUAOBFUSACTOR_DECRYPT_STR_0("\138\9\208\143\48\189\72\221\142\47\176\70", "\95\201\104\190\225"), 3);
				end
			end);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\140\217\196\202\166\223\210", "\174\207\171\161"));
		CreditsTab:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\206\246\12\225\255\210\224\251\3\231\184\211\248\190\3\252\245\151\233\235\77\249\253\194\163\176\67", "\183\141\158\109\147\152"));
		task.spawn(function()
			task.wait(0.1);
			local gameName = LUAOBFUSACTOR_DECRYPT_STR_0("\25\7\237\2\35\30\232\76\11\8\235\9", "\108\76\105\134");
			pcall(function()
				gameName = MarketplaceService:GetProductInfo(game.PlaceId).Name;
			end);
		end);
		CreditsTab:Spacer(5);
		CreditsTab:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\204\196\188\228\148\171", "\174\139\165\209\129") .. game.Name);
		CreditsTab:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\144\176\240\200\214\23\48\90\186\233\162\237\207\25\117\92\166\165", "\24\195\211\130\161\166\99\16"));
		CreditsTab:Spacer(10);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\2\228\41", "\118\38\99\137\76\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\47\22\17\6\50\249\102\54\23\27\54\248\52", "\64\157\70\101\114\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\161\169\232", "\112\32\200\199\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\36\68\72\168\208\241\109\99\84\85\171\192\164\48\40\30\91\191\140\153\42\8\94\105\137\209\255\6\57", "\66\76\48\60\216\163\203")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\147\136\109\246\77\200\37\185\131\57\192\90\218\48\179\136\126\224", "\68\218\230\25\147\63\174"));
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\131\43\94\73", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\68\231\241\114", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\170\172\169", "\115\113\198\205\206\86")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\82\234\78\141\89\249\73\187\99\246\95\137\82", "\58\228\55\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\128\195\58", "\85\212\233\176\78\92\205")]={LUAOBFUSACTOR_DECRYPT_STR_0("\97\81\134\229\10\127\141\236", "\130\42\56\232"),LUAOBFUSACTOR_DECRYPT_STR_0("\217\187\43\244", "\95\138\213\68\131\32")},[LUAOBFUSACTOR_DECRYPT_STR_0("\14\45\167\66\99\38\60", "\22\74\72\193\35")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\31\124\240\76\37\119\227\75\19\77\236\93\33\124", "\56\76\25\132")] or LUAOBFUSACTOR_DECRYPT_STR_0("\117\200\165\33\143\121\196\165", "\175\62\161\203\70")),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\220\207\31\55\61\222\200", "\85\92\189\163\115")]=function(val)
			SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\29\164\53\53\44\236\19\48\40\162\55\61\45", "\88\73\204\80"), LUAOBFUSACTOR_DECRYPT_STR_0("\28\134\3\82\40\200\58\195\3\69\59\211\62\151\80\82\38\154\47\147\0\74\48\154\40\150\28\74\105\206\38\134\29\67\103", "\186\78\227\112\38\73"), 3);
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\210\86\240\80", "\26\156\55\157\53\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\241\86\234\187\81\128\221", "\48\236\184\118\185\216"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\177\86\55", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\142\226\48\178\206\82\186\244\27\149\196\93\177\226", "\60\221\135\68\198\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\180\246", "\185\142\221\152\227\34")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\117\196\79", "\151\56\165\55\154\35\83")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\132\70\3\239\181\79\17", "\142\192\35\101")]=((Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\229\112\61\183\238\130\171\5\233\70\42\162\235\137", "\118\182\21\73\195\135\236\204")] or 1) * 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\61\22\76\6\12\254\3", "\157\104\92\122\32\100\109")]=function(val)
			local scale = val / 100;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\144\163\219\222\52\41\138\184\156\149\204\203\49\34", "\203\195\198\175\170\93\71\237")] = scale;
			if MainFrame:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\27\98\13\214\80\29\249", "\156\78\43\94\181\49\113")) then
				MainFrame.UIScale.Scale = scale;
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\92\233\201\166", "\25\18\136\164\195\107\35")]=LUAOBFUSACTOR_DECRYPT_STR_0("\195\109\139\90\102\168\206\182\168\30\160\85\119", "\216\136\77\201\47\18\220\161"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\224\42\221", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\203\196\43\70\183\201\195\0\100\138\199\202\58", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\212\120", "\70\216\189\22\98\210\52\24")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\222\187", "\179\186\191\195\231")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\58\30\229\236\51\12", "\132\153\95\120")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\130\183\26\57\254\212\167\162\141\37\30\254\192\165", "\192\209\210\110\77\151\186")] or 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\2\46\229\253\197\227\8", "\164\128\99\66\137\159")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\46\136\228\187", "\222\96\233\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\138\178\177\26\200\181\176\154\191\168\12\141", "\144\217\211\199\127\232\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\46\50\36\215\68\1\79", "\36\152\79\94\72\181\37\98")]=function()
			Library:Save();
			MainFrame.Visible = false;
			if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\252\250\82\43\195\215\73\24\194\209", "\95\183\184\39")) then
				CoreGui.KButtonGui.Enabled = false;
			end
		end});
	end;
	return WindowAPI;
end;
return Library;
