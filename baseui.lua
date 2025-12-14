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
local IsMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled;
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\116\114\44\28\99\216\100", "\35\200\29\28\72\115\20\154")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\182\213\218\143\45\38\59\152", "\84\121\223\177\191\237\76")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\66\204\173\24\119", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\65\3\32\71\86\51\49\72\80\20", "\69\41\34\96")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\192\212\15\12\63\153\205\211", "\75\220\163\183\106\98")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\191\147\35", "\185\98\218\235\87")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242\250\171\217\55", "\202\171\92\71\134\190")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\232\31\156\59\206\39\141\10\206\32\135\59", "\232\73\161\76")]=Color3.fromRGB(90, 80, 115),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\204\65\94\27\168\202", "\126\219\185\34\61")]=Color3.fromRGB(60, 210, 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\59\207\76\124\119\121\244", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(255, 200, 60)};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\157\224\36\204\63\171\61", "\167\214\137\74\171\120\206\83");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\143\245\52\92\237\171\159\190\56\78\247\169", "\199\235\144\82\61\152");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\21\20\161\42\20\5\188\63\14\18\227\100\72\79\233\121\82\71\238\121\85\78\224\124\80\70\238", "\75\103\118\217");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\244\64\113\6\173\27\213\115\101\29", "\126\167\52\16\116\217")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\251\43\46\132\154\22\232\193\40\41\131\181\13\245\199\32", "\156\168\78\64\224\212\121"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\231\177\194\2", "\174\103\142\197")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44", "\152\54\72\63\88\69\62")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\240\209\252\93\192\205\225\82", "\60\180\164\142")]=(duration or 3),[LUAOBFUSACTOR_DECRYPT_STR_0("\113\93\10\39", "\114\56\62\101\73\71\141")]=KINGHUB_DECAL_ID});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\172\232\217\200\189", "\164\216\137\187")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\249\239\63\181\230\217\14\220", "\107\178\134\81\210\198\158"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\19\7\140\193\234\31\11\140", "\202\88\110\226\166"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\215\14\128\251\207", "\170\163\111\226\151"))) then
				for flag, value in pairs(decoded) do
					self.Flags[flag] = value;
				end
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\46\8\141\11\77\54\37\20", "\73\113\80\210\88\46\87")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\190\20\242\61\225\135\63\200\6", "\135\225\76\173\114")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\37\212\135\131\175\188\171\31", "\199\122\141\216\208\204\221")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\146\228\47\223\126\240\190\216\4", "\150\205\189\112\144\24")] = object.Position.Y.Offset;
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\38\139\177\74\13\143\95\26\54\139\177", "\112\69\228\223\44\100\232\113");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\255\22\9\212\145\121\136\225\54", "\230\180\127\103\179\214\28")) then
		CoreGui.KingGenUI:Destroy();
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\6\77\67\225\79\199\153\12", "\128\236\101\63\38\132\33"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\135\160\31\67\145\238\193\153\128", "\175\204\201\113\36\214\139");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local UIScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\229\6\223\5\75\201", "\100\39\172\85\188"), ScreenGui);
	if IsMobile then
		UIScale.Scale = 1.1;
	else
		UIScale.Scale = 1;
	end
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\106\184\141\54", "\83\205\24\217\224"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\203\196\196\51\192\215\204\48\227", "\93\134\165\173");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0, 550, 0, 350);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ClipsDescendants = false;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\219\226\205\40\192\183\108", "\30\222\146\161\162\90\174\210"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 12);
	local MainStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\103\67\30\247\65\123\15", "\106\133\46\16"), MainFrame);
	MainStroke.Color = Theme.UIStrokeColor;
	MainStroke.Transparency = 0.6;
	MainStroke.Thickness = 1;
	local Shadow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\113\45\114\251\95\108\89\34\118\240", "\32\56\64\19\156\58"), MainFrame);
	Shadow.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\105\192\228\82\85\229", "\224\58\168\133\54\58\146");
	Shadow.AnchorPoint = Vector2.new(0.5, 0.5);
	Shadow.Position = UDim2.new(0.5, 0, 0.5, 0);
	Shadow.Size = UDim2.new(1, 120, 1, 120);
	Shadow.BackgroundTransparency = 1;
	Shadow.Image = LUAOBFUSACTOR_DECRYPT_STR_0("\75\84\83\252\102\149\130\31\80\82\17\178\58\208\215\90\13\4\29\172\44\223\212", "\107\57\54\43\157\21\230\231");
	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0);
	Shadow.ImageTransparency = 0.4;
	Shadow.ZIndex = -1;
	Shadow.ScaleType = Enum.ScaleType.Slice;
	Shadow.SliceCenter = Rect.new(49, 49, 450, 450);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\142\9\225\155\201\219\207\132\31", "\175\187\235\113\149\217\188"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\21\161\145\89\247\91\116\51\172\138\73\241", "\24\92\207\225\44\131\25");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 200;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\193\185\65\30", "\29\43\179\216\44\123"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\137\208\52\64\184\251\33\94", "\44\221\185\64");
	TitleBar.Size = UDim2.new(1, 0, 0, 50);
	TitleBar.BackgroundColor3 = Theme.WindowBG;
	TitleBar.BackgroundTransparency = 1;
	TitleBar.ZIndex = 2;
	local TitleDecor = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\245\73\82\118", "\19\97\135\40\63"), TitleBar);
	TitleDecor.Size = UDim2.new(1, 0, 1, 0);
	TitleDecor.BackgroundColor3 = Theme.WindowBG;
	TitleDecor.ZIndex = 1;
	local TitleCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\117\16\52\61\63\171\78", "\81\206\60\83\91\79"), TitleDecor);
	TitleCorner.CornerRadius = UDim.new(0, 12);
	local DecorFix = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\185\209\127\42", "\196\46\203\176\18\79\163\45"), TitleDecor);
	DecorFix.Size = UDim2.new(1, 0, 0.5, 0);
	DecorFix.Position = UDim2.new(0, 0, 0.5, 0);
	DecorFix.BackgroundColor3 = Theme.WindowBG;
	DecorFix.BorderSizePixel = 0;
	local Separator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\48\127\19\33", "\143\216\66\30\126\68\155"), TitleBar);
	Separator.Size = UDim2.new(1, 0, 0, 1);
	Separator.Position = UDim2.new(0, 0, 1, 0);
	Separator.BackgroundColor3 = Theme.UIStrokeColor;
	Separator.BorderSizePixel = 0;
	Separator.BackgroundTransparency = 0.5;
	MakeDraggable(TitleBar, MainFrame);
	local Logo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\197\12\204\192\143\214\227\175\196", "\129\202\168\109\171\165\195\183"), TitleBar);
	Logo.Size = UDim2.new(0, 32, 0, 32);
	Logo.Position = UDim2.new(0, 12, 0.5, -16);
	Logo.Image = KINGHUB_DECAL_ID;
	Logo.BackgroundTransparency = 1;
	Logo.ScaleType = Enum.ScaleType.Fit;
	Logo.ZIndex = 3;
	local TitleText = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\47\204\242\21\228\39\84", "\134\66\56\87\184\190\116"), TitleBar);
	TitleText.Text = 'KING <font color=\"rgb(180,60,230)\">GEN</font>';
	TitleText.RichText = true;
	TitleText.Size = UDim2.new(1, -100, 1, 0);
	TitleText.Position = UDim2.new(0, 54, 0, 0);
	TitleText.Font = Enum.Font.GothamBold;
	TitleText.TextSize = 18;
	TitleText.TextColor3 = Theme.Text;
	TitleText.BackgroundTransparency = 1;
	TitleText.TextXAlignment = Enum.TextXAlignment.Left;
	TitleText.ZIndex = 3;
	local CloseBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\52\17\175\59\254\53\33\51\63", "\85\92\81\105\219\121\139\65"), TitleBar);
	CloseBtn.Size = UDim2.new(0, 40, 0, 40);
	CloseBtn.Position = UDim2.new(1, -45, 0.5, -20);
	CloseBtn.BackgroundTransparency = 1;
	CloseBtn.Text = "×";
	CloseBtn.Font = Enum.Font.Gotham;
	CloseBtn.TextSize = 32;
	CloseBtn.TextColor3 = Theme.TextDark;
	CloseBtn.ZIndex = 3;
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\176\66\64\121\209\218\166\89", "\191\157\211\48\37\28"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\244\22\250\27\24\202\11\224\19\52\248\10\253", "\90\191\127\148\124");
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\81\138\47\16\125\165\59\3\108\136\32", "\119\24\231\78"), KGui);
	KBtn.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\182\34\162\77\208\69\51\150\35", "\113\226\77\197\42\188\32");
	KBtn.Size = UDim2.new(0, 60, 0, 60);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Visible = false;
	KBtn.Active = true;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\5\41\223\138\10\57\199\138\2\41\199\182\59\26\241", "\213\90\118\148")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\100\17\159\105\125\116\29\139\110\114\104\45\181\90\72", "\45\59\78\212\54")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\47\105\168\180\182\1\158\207\40\105\172\141\128\61\168\228", "\144\112\54\227\235\230\78\205")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\140\23\36\195\224\116\128\23\54\195\227\88\178\36\10", "\59\211\72\111\156\176")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\113\184\200\18\126\168\208\18\119\184\204\43\72\148\230\57", "\77\46\231\131")]);
	else
		KBtn.Position = UDim2.new(0.1, 0, 0.1, 0);
	end
	local KBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\125\133\84\168\91\189\69", "\32\218\52\214"), KBtn);
	KBtnStroke.Color = Theme.AccentStart;
	KBtnStroke.Thickness = 2;
	KBtnStroke.Transparency = 0;
	KBtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	local KBtnCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\62\18\167\227\190\64\72", "\58\46\119\81\200\145\208\37"), KBtn);
	KBtnCorner.CornerRadius = UDim.new(1, 0);
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\20\179\27\147\153\146\5", "\86\75\236\80\204\201\221"));
	local function IntroAnim()
		MainFrame.Size = UDim2.new(0, 0, 0, 0);
		MainFrame.Visible = true;
		TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\65\72\109\128", "\235\18\33\23\229\158")]=UDim2.new(0, 550, 0, 350)}):Play();
	end
	local function ToggleUI(bool)
		if (bool == nil) then
			bool = not MainFrame.Visible;
		end
		if bool then
			KBtn.Visible = false;
			MainFrame.Visible = true;
			TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\99\179\219\190", "\219\48\218\161")]=UDim2.new(0, 550, 0, 350),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\112\127\66\220\93\239\241\127\120\125\201\78\238\247\97\125\91\222\65\227\253", "\128\132\17\28\41\187\47")]=0}):Play();
			for _, child in pairs(MainFrame:GetDescendants()) do
				if (child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\53\55\30\46\113\0\48\3\54", "\61\97\82\102\90")) or child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\152\43\179\95\229\66\10\29\163\32", "\105\204\78\203\43\167\55\126")) or child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\140\167\34\25\22\40\198\83\160\166", "\49\197\202\67\126\115\100\167"))) then
					TweenService:Create(child, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\3\94\199\61\180\68\95\57\72\207\40\146\83\80\52\66", "\62\87\59\191\73\224\54")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\15\251\206\226\54\232\200\233\17\234\200\245\7\244\202\254", "\169\135\98\154")]=0}):Play();
				end
			end
		else
			TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\126\62\81", "\168\171\23\68\52\157\83")]=UDim2.new(0, 0, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\214\112\246\166\34\63\136\225\127\241\153\55\44\137\231\97\244\191\32\35\132\237", "\231\148\17\149\205\69\77")]=1}):Play();
			task.wait(0.2);
			MainFrame.Visible = false;
			KBtn.Visible = true;
		end
	end
	CloseBtn.MouseButton1Click:Connect(function()
		ToggleUI(false);
	end);
	local KBtnStartPos;
	KBtn.InputBegan:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			KBtnStartPos = input.Position;
		end
	end);
	KBtn.InputEnded:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			if ((input.Position - KBtnStartPos).Magnitude < 5) then
				ToggleUI(true);
			end
		end
	end);
	local Container = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\166\181\198\246\82", "\159\224\199\167\155\55"), MainFrame);
	Container.Size = UDim2.new(1, 0, 1, -50);
	Container.Position = UDim2.new(0, 0, 0, 50);
	Container.BackgroundTransparency = 1;
	local Sidebar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\240\46\221\251\255\53\220\240\213\46\211\250\246", "\178\151\147\92"), Container);
	Sidebar.Size = UDim2.new(0, 140, 1, 0);
	Sidebar.BackgroundColor3 = Theme.SidebarBG;
	Sidebar.BorderSizePixel = 0;
	Sidebar.ScrollBarThickness = 2;
	Sidebar.CanvasSize = UDim2.new(0, 0, 0, 0);
	Sidebar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	local SidebarLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\212\96\59\1\88\86\141\228\67\39\6", "\26\236\157\44\82\114\44"), Sidebar);
	SidebarLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	SidebarLayout.Padding = UDim.new(0, 6);
	local SidebarPad = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\7\229\90\46\42\220\85\45", "\59\74\78\181"), Sidebar);
	SidebarPad.PaddingTop = UDim.new(0, 10);
	SidebarPad.PaddingLeft = UDim.new(0, 10);
	SidebarPad.PaddingRight = UDim.new(0, 10);
	local Pages = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\195\91\87\182", "\211\69\177\58\58"), Container);
	Pages.Size = UDim2.new(1, -140, 1, 0);
	Pages.Position = UDim2.new(0, 140, 0, 0);
	Pages.BackgroundTransparency = 1;
	Pages.ClipsDescendants = true;
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local PageFrames = {};
	WindowAPI.Tab = function(self, name, iconId)
		local Tab = {};
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\230\107\250\229\199\190\235\126\211\251\202\186\224", "\171\215\133\25\149\137"), Pages);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\222\248\51\253\234", "\34\129\168\82\154\143\80\156");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.Visible = false;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\155\31\2\91\90\165\132\171\60\30\92", "\233\229\210\83\107\40\46"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePad = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\107\2\215\1\197\75\60\209", "\101\161\34\82\182"), Page);
		PagePad.PaddingTop = UDim.new(0, 15);
		PagePad.PaddingLeft = UDim.new(0, 15);
		PagePad.PaddingRight = UDim.new(0, 15);
		PagePad.PaddingBottom = UDim.new(0, 15);
		local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\8\65\234\249\247\150\58\231\3", "\78\136\109\57\158\187\130\226"), Sidebar);
		Btn.Size = UDim2.new(1, 0, 0, 36);
		Btn.Text = name;
		Btn.Font = Enum.Font.GothamBold;
		Btn.TextSize = 13;
		Btn.TextColor3 = Theme.TextDark;
		Btn.BackgroundColor3 = Theme.SidebarBG;
		Btn.AutoButtonColor = false;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\22\218\254\44\49\252\227", "\145\94\95\153"), Btn).CornerRadius = UDim.new(0, 8);
		local Indicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\223\21\216\75", "\215\157\173\116\181\46"), Btn);
		Indicator.Size = UDim2.new(0, 4, 0.6, 0);
		Indicator.Position = UDim2.new(0, 0, 0.2, 0);
		Indicator.BackgroundColor3 = Theme.AccentStart;
		Indicator.BackgroundTransparency = 1;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\157\168\253\200\59\177\153", "\186\85\212\235\146"), Indicator).CornerRadius = UDim.new(0, 4);
		local function Activate()
			for _, b in ipairs(TabButtons) do
				TweenService:Create(b.Btn, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\246\132\14\234\26\225\84\205\147\69", "\56\162\225\118\158\89\142")]=Theme.TextDark,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\4\195\164\37\202\83\16\206\171\22\202\93\11\211\191\35\202\89\11\195\182", "\184\60\101\160\207\66")]=1}):Play();
				TweenService:Create(b.Ind, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\19\131\127\183\54\144\115\169\63\134\72\174\48\140\111\172\48\144\121\178\50\155", "\220\81\226\28")]=1}):Play();
			end
			for _, p in ipairs(PageFrames) do
				p.Visible = false;
			end
			TweenService:Create(Btn, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\39\208\154\239\201\200\31\218\144\168", "\167\115\181\226\155\138")]=Theme.Text,[LUAOBFUSACTOR_DECRYPT_STR_0("\192\35\228\87\124\99\201\247\44\227\104\105\112\200\241\50\230\78\126\127\197\251", "\166\130\66\135\60\27\17")]=0.9}):Play();
			TweenService:Create(Indicator, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\102\75\205\126\55\86\69\219\123\52\112\88\207\123\35\84\75\220\112\62\71\83", "\80\36\42\174\21")]=0}):Play();
			Page.Visible = true;
		end
		Btn.MouseButton1Click:Connect(Activate);
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\108\4\57", "\26\46\112\87")]=Btn,[LUAOBFUSACTOR_DECRYPT_STR_0("\144\45\175", "\212\217\67\203\20\223\223\37")]=Indicator});
		table.insert(PageFrames, Page);
		if FirstTab then
			Activate();
			FirstTab = false;
		end
		Tab.Toggle = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or false;
			Library.Flags[tFlag] = default;
			local ToggleFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\136\176\198\152\152\188\198\181\131", "\178\218\237\200"), Page);
			ToggleFrame.Size = UDim2.new(1, 0, 0, 42);
			ToggleFrame.BackgroundColor3 = Theme.ItemBG;
			ToggleFrame.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\197\223\164\187\227\194", "\176\214\213\134"), ToggleFrame).CornerRadius = UDim.new(0, 8);
			ToggleFrame.Text = "";
			local Title = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\168\174\192\132\87\91\241\161", "\57\148\205\214\180\200\54"), ToggleFrame);
			Title.Text = options.Name;
			Title.Size = UDim2.new(0.7, 0, 1, 0);
			Title.Position = UDim2.new(0, 12, 0, 0);
			Title.Font = Enum.Font.GothamSemibold;
			Title.TextSize = 14;
			Title.TextColor3 = Theme.Text;
			Title.TextXAlignment = Enum.TextXAlignment.Left;
			Title.BackgroundTransparency = 1;
			local Toggler = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\239\52\57\115", "\22\114\157\85\84"), ToggleFrame);
			Toggler.Size = UDim2.new(0, 40, 0, 20);
			Toggler.AnchorPoint = Vector2.new(1, 0.5);
			Toggler.Position = UDim2.new(1, -12, 0.5, 0);
			Toggler.BackgroundColor3 = Theme.SidebarBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\48\203\79\248\173\214", "\200\164\171\115\164\61\150"), Toggler).CornerRadius = UDim.new(1, 0);
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\230\2\72\134", "\227\222\148\99\37"), Toggler);
			Knob.Size = UDim2.new(0, 16, 0, 16);
			Knob.Position = UDim2.new(0, 2, 0.5, -8);
			Knob.BackgroundColor3 = Theme.TextDark;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\123\113\249\235\61\87\64", "\153\83\50\50\150"), Knob).CornerRadius = UDim.new(1, 0);
			local function Update(val)
				Library.Flags[tFlag] = val;
				local targetColor = (val and Theme.AccentStart) or Theme.SidebarBG;
				local targetKnobColor = (val and Theme.Text) or Theme.TextDark;
				local targetPos = (val and UDim2.new(1, -18, 0.5, -8)) or UDim2.new(0, 2, 0.5, -8);
				TweenService:Create(Toggler, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\127\119\112\23\116\185\66\72\120\119\63\124\167\66\79\37", "\45\61\22\19\124\19\203")]=targetColor}):Play();
				TweenService:Create(Knob, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\241\29\30\252\22\121\182\207", "\217\161\114\109\149\98\16")]=targetPos,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\33\59\119\187\102\29\53\54\120\159\123\30\47\42\47", "\20\114\64\88\28\220")]=targetKnobColor}):Play();
				if Library.ActiveLoops[tFlag] then
					task.cancel(Library.ActiveLoops[tFlag]);
					Library.ActiveLoops[tFlag] = nil;
				end
				if val then
					Library.ActiveLoops[tFlag] = task.spawn(function()
						while Library.Flags[tFlag] do
							pcall(options.Callback, true);
							task.wait(options.Delay or 0.1);
						end
					end);
				else
					pcall(options.Callback, false);
				end
				Library:Save();
			end
			ToggleFrame.MouseButton1Click:Connect(function()
				Update(not Library.Flags[tFlag]);
			end);
			Update(default);
		end;
		Tab.Slider = function(self, options)
			local sFlag = options.Flag;
			local min, max = options.Min, options.Max;
			local default = Library.Flags[sFlag] or options.Default or min;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\19\211\185\253", "\221\81\97\178\212\152\176"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 55);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\62\244\8\195\226\15", "\122\173\135\125\155"), Frame).CornerRadius = UDim.new(0, 8);
			local Title = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\196\24\173\19\48\202\129\205", "\168\228\161\96\217\95\81"), Frame);
			Title.Text = options.Name;
			Title.Position = UDim2.new(0, 12, 0, 8);
			Title.Font = Enum.Font.GothamSemibold;
			Title.TextSize = 14;
			Title.TextColor3 = Theme.Text;
			Title.TextXAlignment = Enum.TextXAlignment.Left;
			Title.BackgroundTransparency = 1;
			local ValueLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\212\54\72\3\86\217\212\34", "\55\187\177\78\60\79"), Frame);
			ValueLabel.Text = tostring(default) .. (options.Suffix or "");
			ValueLabel.Size = UDim2.new(0, 50, 0, 20);
			ValueLabel.Position = UDim2.new(1, -62, 0, 8);
			ValueLabel.Font = Enum.Font.Gotham;
			ValueLabel.TextSize = 13;
			ValueLabel.TextColor3 = Theme.TextDark;
			ValueLabel.BackgroundTransparency = 1;
			ValueLabel.TextXAlignment = Enum.TextXAlignment.Right;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\220\94\230\67", "\224\77\174\63\139\38\175"), Frame);
			BarBG.Size = UDim2.new(1, -24, 0, 6);
			BarBG.Position = UDim2.new(0, 12, 0, 35);
			BarBG.BackgroundColor3 = Theme.SidebarBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\177\104\123\33\150\79\93\60", "\78\228\33\56"), BarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\108\179\14\128", "\229\174\30\210\99"), BarBG);
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\165\94\255\51\60\9", "\89\123\141\230\49\141\93"), Fill).CornerRadius = UDim.new(1, 0);
			local function UpdateFromInput(input)
				local sizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1);
				local val = math.floor(min + ((max - min) * sizeX));
				Library.Flags[sFlag] = val;
				ValueLabel.Text = tostring(val) .. (options.Suffix or "");
				TweenService:Create(Fill, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\192\120\236\9", "\42\147\17\150\108\112")]=UDim2.new(sizeX, 0, 1, 0)}):Play();
				pcall(options.Callback, val);
				Library:Save();
			end
			local percent = (default - min) / (max - min);
			Fill.Size = UDim2.new(percent, 0, 1, 0);
			local Dragging = false;
			Frame.InputBegan:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = true;
					UpdateFromInput(input);
				end
			end);
			UserInputService.InputChanged:Connect(function(input)
				if (Dragging and ((input.UserInputType == Enum.UserInputType.MouseMovement) or (input.UserInputType == Enum.UserInputType.Touch))) then
					UpdateFromInput(input);
				end
			end);
			UserInputService.InputEnded:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = false;
				end
			end);
		end;
		Tab.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\180\44\114\226", "\136\111\198\77\31\135"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 55);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\32\132\89\175\234\18\187", "\201\98\105\199\54\221\132\119"), Frame).CornerRadius = UDim.new(0, 8);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\9\155\53\46\52\174\188\0", "\204\217\108\227\65\98\85"), Frame);
			Label.Text = options.Name;
			Label.Position = UDim2.new(0, 12, 0, 0);
			Label.Size = UDim2.new(1, -50, 1, 0);
			Label.Font = Enum.Font.GothamSemibold;
			Label.TextColor3 = Theme.Text;
			Label.TextSize = 14;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.BackgroundTransparency = 1;
			local Icon = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\198\237\241\0\193\92\198\249", "\160\62\163\149\133\76"), Frame);
			Icon.Text = "v";
			Icon.Position = UDim2.new(1, -30, 0, 0);
			Icon.Size = UDim2.new(0, 30, 1, 0);
			Icon.Font = Enum.Font.GothamBold;
			Icon.TextColor3 = Theme.TextDark;
			Icon.BackgroundTransparency = 1;
			local Open = false;
			local DropScroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\163\31\32\207\218\169\3\40\229\196\161\0\42", "\163\182\192\109\79"));
			DropScroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\16\52\15\208\198\55\52\15\204\249", "\149\84\70\96\160");
			DropScroll.Size = UDim2.new(0, 0, 0, 0);
			DropScroll.BackgroundColor3 = Theme.ItemBG;
			DropScroll.BorderSizePixel = 0;
			DropScroll.ScrollBarThickness = 4;
			DropScroll.ZIndex = 100;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\47\46\226\42\8\8\255", "\141\88\102\109"), DropScroll).CornerRadius = UDim.new(0, 8);
			local List = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\230\121\9\41\121\192\170\92\223\100", "\161\211\51\170\16\122\93\53"), DropScroll);
			List.SortOrder = Enum.SortOrder.LayoutOrder;
			List.Padding = UDim.new(0, 4);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\135\130\41\255\170\187\38\252", "\72\155\206\210"), DropScroll).PaddingTop = UDim.new(0, 8);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\83\100\15\55\66\115\90\9", "\83\38\26\52\110"), DropScroll).PaddingLeft = UDim.new(0, 8);
			local function Refresh()
				for _, c in pairs(DropScroll:GetChildren()) do
					if c:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\108\18\63\82\122\2\51\82\87\25", "\38\56\119\71")) then
						c:Destroy();
					end
				end
				for _, item in ipairs(options.List) do
					local B = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\234\64\194\7\67\231\251\87\216", "\54\147\143\56\182\69"), DropScroll);
					B.Size = UDim2.new(1, -10, 0, 30);
					B.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\150\193", "\191\182\225\159\41") .. item;
					B.BackgroundColor3 = Theme.SidebarBG;
					B.TextColor3 = Theme.TextDark;
					B.Font = Enum.Font.Gotham;
					B.TextSize = 13;
					B.TextXAlignment = Enum.TextXAlignment.Left;
					Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\59\11\90\153\137\199\57", "\162\75\114\72\53\235\231"), B).CornerRadius = UDim.new(0, 6);
					if (item == Library.Flags[dFlag]) then
						B.TextColor3 = Theme.AccentStart;
					end
					B.MouseButton1Click:Connect(function()
						Library.Flags[dFlag] = item;
						Label.Text = options.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\214\124", "\98\236\92\36\130\51") .. item;
						pcall(options.Callback, item);
						Open = false;
						DropScroll.Visible = false;
						InputBlocker.Visible = false;
						Icon.Rotation = 0;
						Library:Save();
					end);
				end
				DropScroll.CanvasSize = UDim2.new(0, 0, 0, List.AbsoluteContentSize.Y + 16);
			end
			local function UpdatePos()
				if Open then
					DropScroll.Position = UDim2.new(0, Frame.AbsolutePosition.X, 0, Frame.AbsolutePosition.Y + Frame.AbsoluteSize.Y + 5);
					DropScroll.Size = UDim2.new(0, Frame.AbsoluteSize.X, 0, 150);
				end
			end
			local ClickBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\28\20\174\103\189\161\36\171\23", "\80\196\121\108\218\37\200\213"), Frame);
			ClickBtn.Size = UDim2.new(1, 0, 1, 0);
			ClickBtn.BackgroundTransparency = 1;
			ClickBtn.Text = "";
			ClickBtn.MouseButton1Click:Connect(function()
				Open = not Open;
				if Open then
					Refresh();
					DropScroll.Parent = ScreenGui;
					DropScroll.Visible = true;
					InputBlocker.Visible = true;
					InputBlocker.MouseButton1Click:Connect(function()
						Open = false;
						DropScroll.Visible = false;
						InputBlocker.Visible = false;
						Icon.Rotation = 0;
					end);
					TweenService:Create(Icon, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\124\22\126\95\7\133\14", "\234\96\19\98\31\43\110")]=180}):Play();
					RunService.RenderStepped:Connect(UpdatePos);
				else
					DropScroll.Visible = false;
					InputBlocker.Visible = false;
					TweenService:Create(Icon, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\52\16\70\198\184\123\132\8", "\235\102\127\50\167\204\18")]=0}):Play();
				end
			end);
			Label.Text = options.Name .. LUAOBFUSACTOR_DECRYPT_STR_0("\10\225", "\78\48\193\149\67\36") .. tostring(default);
			pcall(options.Callback, default);
		end;
		Tab.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\12\129\21\68", "\33\80\126\224\120"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 45);
			Frame.BackgroundTransparency = 1;
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\173\27\208\126\249\188\23\203\82", "\60\140\200\99\164"), Frame);
			Btn.Size = UDim2.new(1, 0, 1, 0);
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.Text = options.Name;
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextSize = 14;
			Btn.TextColor3 = Theme.Text;
			Btn.AutoButtonColor = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\39\41\176\137\241\22", "\194\231\148\100\70"), Btn).CornerRadius = UDim.new(0, 8);
			local Gradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\230\177\247\204\79\73\207\183", "\168\38\44\161\195\150"), Btn);
			Gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			Gradient.Transparency = NumberSequence.new(0.4);
			Btn.MouseButton1Click:Connect(function()
				TweenService:Create(Gradient, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\180\238\131\120\35\248\183\4\133\242\129\111", "\118\224\156\226\22\80\136\214")]=NumberSequence.new(0)}):Play();
				task.wait(0.1);
				TweenService:Create(Gradient, TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\118\252\88\142\81\254\88\146\71\224\90\153", "\224\34\142\57")]=NumberSequence.new(0.4)}):Play();
				pcall(options.Callback);
			end);
		end;
		Tab.Label = function(self, text)
			local Lab = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\162\221\201\95\240\95\11\210", "\110\190\199\165\189\19\145\61"), Page);
			Lab.Size = UDim2.new(1, 0, 0, 25);
			Lab.BackgroundTransparency = 1;
			Lab.Text = text;
			Lab.TextColor3 = Theme.TextDark;
			Lab.Font = Enum.Font.Gotham;
			Lab.TextSize = 14;
		end;
		return Tab;
	end;
	local Credits = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\249\249\114\236\130\211\201", "\167\186\139\23\136\235"));
	Credits:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\57\167\141\12\14\176\140\77\13\188\156\5\90\158\129\3\29\245\175\8\20\245\189\36", "\109\122\213\232"));
	Credits:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\246\175\53", "\80\142\151\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\41\201\126\66\67\226\126\95\0\201\101\72", "\44\99\166\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\95\246\37\58\49\165\127\252", "\196\28\151\73\86\83")]=function()
		setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\251\23\61\0\145\2\87\57\247\10\58\19\141\74\28\56\244\4\102\34\138\124\22\67\194\17\125\52\151", "\22\147\99\73\112\226\56\120"));
		Library:Notify({[LUAOBFUSACTOR_DECRYPT_STR_0("\140\124\246\249\136", "\237\216\21\130\149")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\71\76\92\191\219\90", "\62\226\46\63\63\208\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\22\91\151\26\3\59", "\62\133\121\53\227\127\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\60\29\60\254\150\141\173\0\29\55\241\150\186\173\80\55\62\252\198\172\173\17\6\54\180", "\194\112\116\82\149\182\206")});
	end});
	IntroAnim();
	return WindowAPI;
end;
return Library;
