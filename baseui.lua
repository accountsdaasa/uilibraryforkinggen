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
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\116\114\44\28\99\216\100", "\35\200\29\28\72\115\20\154")]=Color3.fromRGB(35, 35, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\182\213\218\143\45\38\59\152", "\84\121\223\177\191\237\76")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\66\204\173\24\119", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(55, 50, 75),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\65\3\32\71\86\51\49\72\80\20", "\69\41\34\96")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\192\212\15\12\63\153\205\211", "\75\220\163\183\106\98")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\191\147\35", "\185\98\218\235\87")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242\250\171\217\55", "\202\171\92\71\134\190")]=Color3.fromRGB(170, 170, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\28\232\31\156\59\206\39\141\10\206\32\135\59", "\232\73\161\76")]=Color3.fromRGB(80, 70, 100)};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\144\208\76\90\57\190\215", "\126\219\185\34\61");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\8\203\88\115\107\123\231\169\6\221\81\124", "\135\108\174\62\18\30\23\147");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\164\235\50\202\11\189\54\211\191\237\112\132\87\247\99\149\227\184\125\153\74\246\106\144\225\185\125", "\167\214\137\74\171\120\206\83");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\184\228\51\79\236\162\153\215\39\84", "\199\235\144\82\61\152")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\52\19\183\47\41\25\173\34\1\31\186\42\19\31\182\37", "\75\103\118\217"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\93\100\24\188", "\126\167\52\16\116\217")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\43\56\148", "\156\168\78\64\224\212\121")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\35\251\183\207\19\231\170\192", "\174\103\142\197")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\66\41\93\52\32", "\152\54\72\63\88\69\62")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\250\203\250\85\210\205\237\93\192\205\225\82", "\60\180\164\142"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\118\81\17\32\33\228\17\89\74\12\38\41", "\114\56\62\101\73\71\141"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\172\232\217\200\189", "\164\216\137\187"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\237\222\14\129\165\255\7\215", "\107\178\134\81\210\198\158")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\7\54\189\233\172\62\29\135\210", "\202\88\110\226\166")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\252\54\189\196\201\194\3\135", "\170\163\111\226\151")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\46\9\141\23\72\49\58\20\36", "\73\113\80\210\88\46\87")] = object.Position.Y.Offset;
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\130\35\195\20\238\134\98\199\1\232\143", "\135\225\76\173\114");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\49\228\182\183\139\184\169\47\196", "\199\122\141\216\208\204\221")) then
		CoreGui.KingGenUI:Destroy();
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\222\2\245\125\248\138\200\25", "\150\205\189\112\144\24"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\14\141\177\75\35\141\31\37\12", "\112\69\228\223\44\100\232\113");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\13\6\222\179", "\230\180\127\103\179\214\28"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\161\4\86\72\194\83\225\129\0", "\128\236\101\63\38\132\33");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\128\54\86\183\239\198\169\167\5", "\175\204\201\113\36\214\139"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\229\22\211\22\73\201\39", "\100\39\172\85\188"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\81\138\148\33\162\115\188", "\83\205\24\217\224"), MainFrame);
	FrameStroke.Color = Theme.UIStrokeColor;
	FrameStroke.Transparency = 0.5;
	FrameStroke.Thickness = 1.5;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\236\254\52\252\192\238\50\232\214\217\47\231\204\195\41", "\93\134\165\173"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(550, 400);
	sizeConstraint.MinSize = Vector2.new(350, 250);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\247\217\214\24\219\166\106\177\252", "\30\222\146\161\162\90\174\210"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\204\64\96\31\241\108\124\5\230\69\117\24", "\106\133\46\16");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\50\114\241\95", "\32\56\64\19\156\58"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\110\193\241\90\95\208\129\72", "\224\58\168\133\54\58\146");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\127\108\239\116\130\142\14\87\66", "\107\57\54\43\157\21\230\231"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\134\16\242\188\240\206\217\142\29", "\175\187\235\113\149\217\188"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\207\120\122\57\163", "\24\92\207\225\44\131\25"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\96\250\150\107\91\90\110\253", "\29\43\179\216\44\123");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\56\88\159\204\52\88\178\215", "\44\221\185\64"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\107\80\97\15\226\90", "\19\97\135\40\63"), MinBtn).CornerRadius = UDim.new(0, 10);
	MinBtn.AutoButtonColor = false;
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\140\93\48\48\40\35\161\73\61\63\12\62\162\83\33\104", "\81\206\60\83\91\79")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\113\148\229\91\16\238\100\138\103\134\249\72\10\231", "\196\46\203\176\18\79\163\45")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\139\33\108\27\33\245\200\173\43", "\143\216\66\30\126\68\155"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\129\234\24\223\209\172\217\198\191\193", "\129\202\168\109\171\165\195\183");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\85\54\223\219\54\243\54\76\56\214", "\134\66\56\87\184\190\116"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 80, 0, 80);
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\3\14\34\132\41\196\18\10\4\14\58\184\24\231\36", "\85\92\81\105\219\121\139\65")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\194\140\123\122\76\240\206\140\104\122\79\220\252\191\85", "\191\157\211\48\37\28")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\224\32\223\35\10\240\44\203\36\5\240\25\242\15\63\203", "\90\191\127\148\124")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\71\184\5\40\72\168\29\40\65\184\29\20\121\139\43", "\119\24\231\78")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\189\18\142\117\236\111\34\189\20\154\101\218\70\2\135\57", "\113\226\77\197\42\188\32")]);
	else
		KBtn.Position = UDim2.new(0.9, -90, 0.15, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\5\41\223\138\10\57\199", "\213\90\118\148"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\100\17\129\127\114\118\7\154\127\96\114\20\145\114", "\45\59\78\212\54")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\32\89\144\130\146\39\162\254", "\144\112\54\227\235\230\78\205")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\39\27\253\196\82\188\38", "\59\211\72\111\156\176")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\103\138\226\42\75\179\241\44\64\148\243\44\92\130\237\46\87", "\77\46\231\131")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\137\93\172\69", "\32\218\52\214")]=UDim2.new(0, 80, 0, 80)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\103\26\48\175\244\132\87\91\64\4\33\169\227\181\75\89\87", "\58\46\119\81\200\145\208\37")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\133\42\169", "\86\75\236\80\204\201\221")]=UDim2.new(0, 60, 0, 60)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\66\78\100\140\234\130\125\79", "\235\18\33\23\229\158")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\181\213\186\68\179\206\181", "\219\48\218\161")]=0}):Play();
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\219\78\73\96\228\98\201\202\88\81\96\225\106\196", "\128\132\17\28\41\187\47")] then
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
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\32\7\55\88", "\61\97\82\102\90"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\159\39\175\78\197\86\12\42\163\32\191\74\206\89\27\27", "\105\204\78\203\43\167\55\126");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\131\4\12\18\0\206\84\171\190", "\49\197\202\67\126\115\100\167"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	SidebarGradient.Rotation = 0;
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\114\236\61\146\89\85\50", "\62\87\59\191\73\224\54"), SidebarContainer);
	SidebarStroke.Color = Theme.UIStrokeColor;
	SidebarStroke.Transparency = 0.8;
	SidebarStroke.Thickness = 1;
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\1\232\198\235\14\243\199\224\36\232\200\234\7", "\169\135\98\154"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 3;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\94\8\93\238\39\228\202\110\43\65\233", "\168\171\23\68\52\157\83"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\88\197\172\33\41\142\250\118", "\231\148\17\149\205\69\77"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\142\247\250\83\251\137\169\192", "\159\224\199\167\155\55"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\225\61\223\242", "\178\151\147\92"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\212\124\51\22\72\115\130\250", "\26\236\157\44\82\114\44"), PagesContainer);
	ContentPadding.PaddingLeft = UDim.new(0, 10);
	ContentPadding.PaddingRight = UDim.new(0, 10);
	ContentPadding.PaddingTop = UDim.new(0, 10);
	ContentPadding.PaddingBottom = UDim.new(0, 10);
	local WindowAPI = {};
	local FirstTab = true;
	local TabButtons = {};
	local Pages = {};
	WindowAPI.Tab = function(self, name)
		local buttonHeight = 38;
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\43\205\79\8\59\193\79\37\32", "\59\74\78\181"), TabBar);
		TabBtn.Size = UDim2.new(0.9, 0, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\248\121\85\161\43\212\72", "\211\69\177\58\58"), TabBtn).CornerRadius = UDim.new(0, 8);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\204\74\225\251\196\188\224", "\171\215\133\25\149\137"), TabBtn);
		TabBtnStroke.Color = Theme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\213\218\51\244\252\32\253\80\228\198\49\227", "\34\129\168\82\154\143\80\156")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\189\63\4\90", "\233\229\210\83\107\40\46")]=Theme.AccentStart}):Play();
			else
				button.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
				button.TextColor3 = Theme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\245\80\51\216\22\209\67\32\211\11\194\91", "\101\161\34\82\182")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\2\85\241\201", "\78\136\109\57\158\187\130\226")]=Theme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\43\247", "\145\94\95\153")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\211\204\25\208", "\215\157\173\116\181\46")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\183\153\253\214\57\189\133\245\252\39\181\134\247", "\186\85\212\235\146"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\253\177\23\249\60", "\56\162\225\118\158\89\142");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\44\236\166\49\204\112\4\217\160\55\204", "\184\60\101\160\207\66"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\171\76\189\53\134\117\178\54", "\220\81\226\28"), Page);
		PagePadding.PaddingRight = UDim.new(0, 5);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\53\199\131\246\239", "\167\115\181\226\155\138")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\204\35\234\89", "\166\130\66\135\60\27\17")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\88\207\120\53", "\80\36\42\174\21"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.BackgroundTransparency = 0.6;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\57\20\117\92\30\50\104", "\26\46\112\87"), Frame).CornerRadius = UDim.new(0, 8);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\38\179\96\147\190\71\177\181", "\212\217\67\203\20\223\223\37"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -10, 1, 0);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\136\176\198\152\152\188\198\181\131", "\178\218\237\200"), Frame);
			Button.Size = UDim2.new(0, 40, 0, 20);
			Button.AnchorPoint = Vector2.new(1, 0.5);
			Button.Position = UDim2.new(1, -10, 0.5, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.Text = "";
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\197\223\164\187\227\194", "\176\214\213\134"), Button).CornerRadius = UDim.new(1, 0);
			Button.AutoButtonColor = false;
			local Circle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\191\183\217\173", "\57\148\205\214\180\200\54"), Button);
			Circle.Size = UDim2.new(0, 16, 0, 16);
			Circle.Position = UDim2.new(0, 2, 0.5, -8);
			Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\212\22\59\100\28\248\39", "\22\114\157\85\84"), Circle).CornerRadius = UDim.new(1, 0);
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\226\32\208\79\249\163\193", "\200\164\171\115\164\61\150"), Button);
			ToggleStroke.Color = Theme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1.5;
			local function UpdateVisuals(val)
				local targetColor = (val and Theme.AccentEnd) or Color3.fromRGB(50, 50, 50);
				local circlePos = (val and UDim2.new(1, -18, 0.5, -8)) or UDim2.new(0, 2, 0.5, -8);
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\156\245\0\78\132\172\251\22\75\135\157\251\15\74\145\237", "\227\222\148\99\37")]=targetColor}):Play();
				TweenService:Create(Circle, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\3\93\65\255\237\58\93\92", "\153\83\50\50\150")]=circlePos}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\126\121\127\19\97", "\45\61\22\19\124\19\203")]=((val and Theme.AccentEnd) or Theme.UIStrokeColor)}):Play();
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\224\17\25\252\13\126\249\229\23\3\252\7\116", "\217\161\114\109\149\98\16"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\49\33\54\114\179\96\82\37\54\125\190\120\23\96\44\116\181\103\82\50\49\123\180\96\82\46\55\107\242", "\20\114\64\88\28\220"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\19\211\185\253", "\221\81\97\178\212\152\176"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 55);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.BackgroundTransparency = 0.6;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\62\244\8\195\226\15", "\122\173\135\125\155"), Frame).CornerRadius = UDim.new(0, 8);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\196\24\173\19\48\202\129\205", "\168\228\161\96\217\95\81"), Frame);
			TopLabel.Size = UDim2.new(1, -20, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 5);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\212\54\72\3\86\217\212\34", "\55\187\177\78\60\79"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 5);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.AccentEnd;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			local SliderContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\220\94\230\67", "\224\77\174\63\139\38\175"), Frame);
			SliderContainer.Size = UDim2.new(1, -20, 0, 20);
			SliderContainer.Position = UDim2.new(0, 10, 0, 30);
			SliderContainer.BackgroundTransparency = 1;
			SliderContainer.ZIndex = 5;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\162\83\89\35\129", "\78\228\33\56"), SliderContainer);
			BarBG.Size = UDim2.new(1, 0, 0, 4);
			BarBG.Position = UDim2.new(0, 0, 0.5, -2);
			BarBG.BackgroundColor3 = Color3.fromRGB(40, 40, 50);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\251\87\145\12\151\192\123\160", "\229\174\30\210\99"), BarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\61\255\135\92\232", "\89\123\141\230\49\141\93"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\88\213\3\2\68\246\99", "\42\147\17\150\108\112"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\143\10\109\230\236\6\163\35\107", "\136\111\198\77\31\135"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			UIGradientFill.Rotation = 90;
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\27\166\91\184", "\201\98\105\199\54\221\132\119"), BarBG);
			Knob.Size = UDim2.new(0, 18, 0, 18);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(0, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Knob.ZIndex = 8;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\37\160\46\16\59\169\171", "\204\217\108\227\65\98\85"), Knob).CornerRadius = UDim.new(1, 0);
			local KnobStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\234\198\241\62\207\85\198", "\160\62\163\149\133\76"), Knob);
			KnobStroke.Color = Theme.AccentEnd;
			KnobStroke.Thickness = 2;
			KnobStroke.Transparency = 0;
			local function Update(input)
				local SizeX = math.clamp((input.Position.X - BarBG.AbsolutePosition.X) / BarBG.AbsoluteSize.X, 0, 1);
				local Value = math.floor(min + ((max - min) * SizeX));
				Library.Flags[sFlag] = Value;
				Fill.Size = UDim2.new(SizeX, 0, 1, 0);
				Knob.Position = UDim2.new(SizeX, 0, 0.5, 0);
				ValLabel.Text = tostring(Value);
				pcall(options.Callback, Value);
				Library:Save();
			end
			local percent = (default - min) / (max - min);
			Fill.Size = UDim2.new(percent, 0, 1, 0);
			Knob.Position = UDim2.new(percent, 0, 0.5, 0);
			pcall(options.Callback, default);
			local Dragging = false;
			SliderContainer.InputBegan:Connect(function(input)
				if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
					Dragging = true;
					Update(input);
					TweenService:Create(Knob, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\229\169\23\42", "\163\182\192\109\79")]=UDim2.new(0, 22, 0, 22)}):Play();
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
					TweenService:Create(Knob, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\47\26\197", "\149\84\70\96\160")]=UDim2.new(0, 18, 0, 18)}):Play();
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local isSearchable = options.Search or false;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\20\12\224\61", "\141\88\102\109"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\135\86\210\100\54\60\87\196\191", "\161\211\51\170\16\122\93\53"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\171\170\60\217\187\166\60\244\160", "\72\155\206\210"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\83\119\1\33\72\127\70", "\83\38\26\52\110"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			local Arrow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\18\63\82\116\22\37\67\84", "\38\56\119\71"), MainBtn);
			Arrow.Text = "v";
			Arrow.Size = UDim2.new(0, 30, 1, 0);
			Arrow.Position = UDim2.new(1, -30, 0, 0);
			Arrow.BackgroundTransparency = 1;
			Arrow.TextColor3 = Theme.TextDark;
			Arrow.Font = Enum.Font.GothamBold;
			Arrow.TextSize = 14;
			Arrow.ZIndex = 7;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\236\74\217\41\90\250\225\95\240\55\87\254\234", "\54\147\143\56\182\69"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\242\147\240\89\219\217\150\241\122\220\196\142\243\69", "\191\182\225\159\41");
			Scroll.Size = UDim2.new(1, 0, 0, (isSearchable and 150) or 120);
			Scroll.Position = UDim2.new(0, 0, 1, 5);
			Scroll.BackgroundColor3 = Theme.SidebarBG;
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 4;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.ScrollBarImageTransparency = 0;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\59\11\90\153\137\199\57", "\162\75\114\72\53\235\231"), Scroll).CornerRadius = UDim.new(0, 8);
			local ScrollStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\21\119\246\65\13\135\57", "\98\236\92\36\130\51"), Scroll);
			ScrollStroke.Color = Theme.UIStrokeColor;
			ScrollStroke.Thickness = 1;
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\48\32\179\86\188\153\49\189\22\25\174", "\80\196\121\108\218\37\200\213"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\33\113\17\112\71\27\158\5\80\13\113\95\11\132\20\64\11\101\78", "\234\96\19\98\31\43\110")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\26\74\211\142\125\147", "\235\102\127\50\167\204\18"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 30);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\99\164\244\49\71\38\30\239\187", "\78\48\193\149\67\36");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\55\163\23\83\62\27\146", "\33\80\126\224\120"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\216\173\27\208", "\60\140\200\99\164")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\179\241\28\50\128\146\224\16\41\172", "\194\231\148\100\70")) then
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
				Arrow.Rotation = 0;
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
					Arrow.Rotation = 180;
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\73\217\183\212\221\82\88\206\173", "\168\38\44\161\195\150"), Scroll);
				ItemBtn.Size = UDim2.new(1, -10, 0, 30);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\180\249\154\98\18\253\162\2\143\242", "\118\224\156\226\22\80\136\214")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\235\65\148\96\251\77\148\77\224", "\224\34\142\57"), Scroll);
					ItemBtn.Size = UDim2.new(1, -10, 0, 30);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\181\196\208\118", "\110\190\199\165\189\19\145\61"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\238\111\252\167\198\216\238\123", "\167\186\139\23\136\235"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\176\144\25\56\160\156\25\21\187", "\109\122\213\232"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\221\242\174\53\237\227\226\25\250\242\175\35\160\185\236", "\80\142\151\194");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\239\84\67\17\200\114\94", "\44\99\166\23"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			local Arrow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\72\242\49\34\31\165\126\242\37", "\196\28\151\73\86\83"), MainBtn);
			Arrow.Text = "v";
			Arrow.Size = UDim2.new(0, 30, 1, 0);
			Arrow.Position = UDim2.new(1, -30, 0, 0);
			Arrow.BackgroundTransparency = 1;
			Arrow.TextColor3 = Theme.TextDark;
			Arrow.Font = Enum.Font.GothamBold;
			Arrow.TextSize = 14;
			Arrow.ZIndex = 7;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\0\59\31\142\84\17\120\244\37\59\17\143\93", "\22\147\99\73\112\226\56\120"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\149\96\238\225\132\156\103\237\229\137\183\98\236\198\142\170\122\238\249", "\237\216\21\130\149");
			Scroll.Size = UDim2.new(1, 0, 0, (isSearchable and 150) or 120);
			Scroll.Position = UDim2.new(0, 0, 1, 5);
			Scroll.BackgroundColor3 = Theme.SidebarBG;
			Scroll.Visible = false;
			Scroll.ZIndex = 600;
			Scroll.ScrollBarThickness = 4;
			Scroll.ScrollBarImageColor3 = Theme.AccentEnd;
			Scroll.ScrollBarImageTransparency = 0;
			Scroll.ScrollingDirection = Enum.ScrollingDirection.Y;
			Scroll.Active = true;
			Scroll.ClipsDescendants = true;
			Scroll.AutomaticCanvasSize = Enum.AutomaticSize.None;
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0);
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\103\124\80\162\199\91\144", "\62\226\46\63\63\208\169"), Scroll).CornerRadius = UDim.new(0, 8);
			local ScrollStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\48\102\151\13\2\36\91", "\62\133\121\53\227\127\109\79"), Scroll);
			ScrollStroke.Color = Theme.UIStrokeColor;
			ScrollStroke.Thickness = 1;
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\61\30\252\197\186\142\17\13\61\224\194", "\194\112\116\82\149\182\206"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\24\170\95\23\204\247\26\60\139\67\22\212\231\0\45\155\69\2\197", "\110\89\200\44\120\160\130")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\198\83\82\97\69\35", "\45\203\163\43\38\35\42\91"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 30);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\225\128\221\49\132\161\26\156\203", "\52\178\229\188\67\231\201");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\20\104\115\11\229\82\38\51", "\67\65\33\48\100\151\60"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\235\226\182\204", "\147\191\135\206\184")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\176\45\190\213\250\70\166\144\39\168", "\210\228\72\198\161\184\51")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\118\122\246\28\118\205\34\76\247", "\174\86\41\147\112\19"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\104\5\129\14\38\27\81\130\79\5\128\24\107\65\95", "\203\59\96\237\107\69\111\113");
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
				Arrow.Rotation = 0;
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
					Arrow.Rotation = 180;
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\19\180\245\19\229\195\48\25\162", "\183\68\118\204\129\81\144"), Scroll);
				ItemBtn.Size = UDim2.new(1, -10, 0, 30);
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
		Elements.Input = function(self, options)
			local tFlag = options.Flag;
			local default = Library.Flags[tFlag] or options.Default or "";
			Library.Flags[tFlag] = default;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\40\191\113\233\14", "\226\110\205\16\132\107"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\198\248\205\109\234\193\229\213", "\33\139\163\128\185"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\93\28\202\117\87\28", "\190\55\56\100"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\115\161\40\27\1\163\231\83\183\40\94\27\230\225\83\225\114\80", "\147\54\207\92\126\115\131");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\24\22\114\31\112\8\35", "\30\109\81\85\29\109"), Input).CornerRadius = UDim.new(0, 8);
			Input.FocusLost:Connect(function()
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\99\85\187\51", "\156\159\17\52\214\86\190"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\234\165\168\140\250\169\168\161\225", "\220\206\143\221"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\10\5\217\200\219\131\115\57", "\178\230\29\77\119\184\172"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			BtnGradient.Rotation = 45;
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.BackgroundTransparency = 0.5;
			Btn.Text = options.Name;
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextScaled = true;
			Btn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\151\41\20\101\246\240\172", "\152\149\222\106\123\23"), Btn).CornerRadius = UDim.new(0, 12);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\47\236\70", "\213\189\70\150\35")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\124\92\110\13", "\104\47\53\20")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\133\94\128\17\185", "\111\195\44\225\124\220"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.LinkBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\84\1\126\174", "\203\184\38\96\19\203"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\118\97\85\236\54\107", "\174\89\19\25\33"), Frame);
			Box.Size = UDim2.new(1, -110, 0, 35);
			Box.Position = UDim2.new(0, 0, 0, 20);
			Box.PlaceholderText = options.Link or "";
			Box.Text = options.Link or "";
			Box.BackgroundColor3 = Theme.ItemBG;
			Box.TextColor3 = Theme.Text;
			Box.Font = Enum.Font.Gotham;
			Box.TextScaled = true;
			Box.ZIndex = 5;
			Box.ClearTextOnFocus = false;
			Box.TextEditable = false;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\59\113\65\229\137\14\61", "\107\79\114\50\46\151\231"), Box).CornerRadius = UDim.new(0, 8);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\163\173\61\166\56\181\197\53", "\160\89\198\213\73\234\89\215"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\100\120\186\245", "\165\40\17\212\158");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\220\16\39\4\240\205\28\60\40", "\70\133\185\104\83"), Frame);
			CopyBtn.Size = UDim2.new(0, 100, 0, 35);
			CopyBtn.Position = UDim2.new(1, -100, 0, 20);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\39\74\84\51\137\40\76\74\33", "\169\100\37\36\74");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\53\174\129\95\18\137\167\66", "\48\96\231\194"), CopyBtn).CornerRadius = UDim.new(0, 12);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\115\41\63\24\220\166\134\198\78", "\227\168\58\110\77\121\184\207"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			local defaultCopySize = CopyBtn.Size;
			CopyBtn.MouseEnter:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\72\53\165\69", "\197\27\92\223\32\209\187\17")]=(defaultCopySize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			CopyBtn.MouseLeave:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\86\217\254", "\155\99\63\163")]=defaultCopySize}):Play();
			end);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\161\222\177\132\188\128\195", "\228\226\177\193\237\217");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\23\191\51\255\116\156\42\232\63", "\134\84\208\67");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\48\160\143\76\17\163\135\78\23\236\179\82\18\186\135\85\31\173\132\80\22", "\60\115\204\230"), LUAOBFUSACTOR_DECRYPT_STR_0("\196\59\229\126\232\46\171\115\232\42\242\48\232\52\171\100\239\51\248\48\226\34\238\115\242\46\228\98\169", "\16\135\90\139"), 3);
				end
			end);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\119\102\3\55\71\64\107", "\24\52\20\102\83\46\52"));
		CreditsTab:LinkBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\46\44\33", "\111\164\79\65\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\226\208\144\221\33\248\194\153\176\219\60\252\195\203", "\138\166\185\227\190\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\231\125\203\60", "\121\171\20\165\87\50\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\44\173\38\170\88\137\119\189\63\170\1\201\42\189\120\190\5\137\10\177\18\183\55\247\42\237\18\172", "\98\166\88\217\86\217")});
	end;
	return WindowAPI;
end;
return Library;
