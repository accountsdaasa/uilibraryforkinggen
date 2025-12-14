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
local Theme = {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\116\114\44\28\99\216\100", "\35\200\29\28\72\115\20\154")]=Color3.fromRGB(35, 35, 45),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\182\213\218\143\45\38\59\152", "\84\121\223\177\191\237\76")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\66\204\173\24\119", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(50, 45, 65),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\65\3\32\71\86\51\49\72\80\20", "\69\41\34\96")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\192\212\15\12\63\153\205\211", "\75\220\163\183\106\98")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\191\147\35", "\185\98\218\235\87")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\255\57\63\242\250\171\217\55", "\202\171\92\71\134\190")]=Color3.fromRGB(170, 170, 180)};
Library.Flags = {};
Library.FolderName = LUAOBFUSACTOR_DECRYPT_STR_0("\2\200\34\143\14\196\34", "\232\73\161\76");
Library.CurrentConfig = LUAOBFUSACTOR_DECRYPT_STR_0("\191\220\68\92\11\183\205\12\87\13\180\215", "\126\219\185\34\61");
Library.ActiveLoops = {};
local KINGHUB_DECAL_ID = LUAOBFUSACTOR_DECRYPT_STR_0("\30\204\70\115\109\100\246\243\5\202\4\61\49\46\163\181\89\159\9\32\44\47\170\176\91\158\9", "\135\108\174\62\18\30\23\147");
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
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\133\253\43\217\12\171\33\224\163\224", "\167\214\137\74\171\120\206\83")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\184\245\60\89\214\168\159\249\52\84\251\166\159\249\61\83", "\199\235\144\82\61\152"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\51\31\173\39\2", "\75\103\118\217")]=title,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\81\104\0", "\126\167\52\16\116\217")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\236\59\50\129\160\16\243\198", "\156\168\78\64\224\212\121")]=(duration or 3)});
	end);
end
Library.Notify = function(self, options)
	if (type(options) == LUAOBFUSACTOR_DECRYPT_STR_0("\19\239\167\194\2", "\174\103\142\197")) then
		SendNotification(options.Title or LUAOBFUSACTOR_DECRYPT_STR_0("\120\39\75\49\35\87\251\87\60\86\55\43", "\152\54\72\63\88\69\62"), options.Content or options.Text or "", options.Duration or 3);
	else
		SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\250\203\250\85\210\205\237\93\192\205\225\82", "\60\180\164\142"), tostring(options), 3);
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\76\95\7\37\34", "\114\56\62\101\73\71\141"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\135\209\228\247\187\232\215\193", "\164\216\137\187")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\237\222\14\157\160\248\24\215\242", "\107\178\134\81\210\198\158")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\7\55\189\245\169\57\2\135", "\202\88\110\226\166")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\252\54\189\216\204\197\28\135\227", "\170\163\111\226\151")] = object.Position.Y.Offset;
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\18\63\188\62\71\48\103\27\35\189\54", "\73\113\80\210\88\46\87");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\170\37\195\21\192\132\34\248\59", "\135\225\76\173\114")) then
		CoreGui.KingGenUI:Destroy();
	end
	Library:Load();
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\41\238\170\181\169\179\128\15\228", "\199\122\141\216\208\204\221"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\134\212\30\247\95\243\163\232\57", "\150\205\189\112\144\24");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\150\190\65\1", "\112\69\228\223\44\100\232\113"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\249\30\14\221\144\110\135\217\26", "\230\180\127\103\179\214\28");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = Theme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	MainFrame.ClipsDescendants = true;
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\44\120\84\229\69\233\137\11\75", "\128\236\101\63\38\132\33"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.WindowBG),ColorSequenceKeypoint.new(1, Theme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\128\50\75\164\229\202\190", "\175\204\201\113\36\214\139"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 16);
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\229\6\213\30\66\239\58\210\23\83\222\52\213\10\83", "\100\39\172\85\188"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(550, 400);
	sizeConstraint.MinSize = Vector2.new(350, 250);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\125\161\148\17\184\108\173\143\61", "\83\205\24\217\224"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\207\203\221\40\242\231\193\50\229\206\200\47", "\93\134\165\173");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\224\192\207\63", "\30\222\146\161\162\90\174\210"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\209\71\100\6\224\108\113\24", "\106\133\46\16");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = Theme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\9\84\238\91\68\81\37\125\232", "\32\56\64\19\156\58"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\197\228\81\95\222\129\88\205\233", "\224\58\168\133\54\58\146"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 8, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\83\83\233\89\135\133\14\85", "\107\57\54\43\157\21\230\231"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\240\162\63\210\249\251\234\245", "\175\187\235\113\149\217\188");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 48, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = Theme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88\193\108\108\40\160\143", "\24\92\207\225\44\131\25"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -40, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = Theme.ItemBG;
	MinBtn.TextColor3 = Theme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\250\155\67\9\115\78\193", "\29\43\179\216\44\123"), MinBtn).CornerRadius = UDim.new(0, 10);
	MinBtn.AutoButtonColor = false;
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\159\216\35\71\186\203\47\89\179\221\3\67\177\214\50\31", "\44\221\185\64")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, Theme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\62\216\125\118\76\44\206\102\118\94\40\221\109\123", "\19\97\135\40\63")] then
			AnimateButtonColor(MinBtn, Theme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\157\95\33\62\42\63\137\73\58", "\81\206\60\83\91\79"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\101\137\197\102\59\204\67\131\91\162", "\196\46\203\176\18\79\163\45");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\47\127\25\33\217\250\172\54\113\16", "\143\216\66\30\126\68\155"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Size = UDim2.new(0, 80, 0, 80);
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\149\247\38\244\245\140\228\222\146\247\62\200\196\175\210", "\129\202\168\109\171\165\195\183")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\29\103\28\231\238\59\213\29\96\8\235\221\21\234\39", "\134\66\56\87\184\190\116")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\3\14\34\132\41\196\18\10\4\14\38\189\31\248\36\33", "\85\92\81\105\219\121\139\65")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\194\140\123\122\76\240\206\140\105\122\79\220\252\191\85", "\191\157\211\48\37\28")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\224\32\223\35\10\240\44\203\37\5\240\25\242\15\63\203", "\90\191\127\148\124")]);
	else
		KBtn.Position = UDim2.new(0.9, -90, 0.15, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	KBtn.ZIndex = 3;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\71\184\5\40\72\168\29", "\119\24\231\78"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\189\18\144\99\227\109\56\172\4\136\99\230\101\53", "\113\226\77\197\42\188\32")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		if isMinimized then
			MainFrame.ZIndex = 1;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\10\25\231\188\46\31\251\187", "\213\90\118\148")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\33\160\87\89\82\33\186", "\45\59\78\212\54")]=-10}):Play();
			task.wait(0.3);
			MainFrame.Visible = false;
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\57\91\130\140\131\26\191\241\30\69\147\138\148\43\163\243\9", "\144\112\54\227\235\230\78\205")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\128\33\21\249", "\59\211\72\111\156\176")]=UDim2.new(0, 80, 0, 80)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\103\138\226\42\75\179\241\44\64\148\243\44\92\130\237\46\87", "\77\46\231\131")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\137\93\172\69", "\32\218\52\214")]=UDim2.new(0, 60, 0, 60)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\126\24\34\161\229\185\74\84", "\58\46\119\81\200\145\208\37")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\131\36\173\189\180\57\37", "\86\75\236\80\204\201\221")]=0}):Play();
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\77\126\66\172\193\166\91\111\94\168\215\177\87\101", "\235\18\33\23\229\158")] then
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
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\168\192\182\85", "\219\48\218\161"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\215\120\120\76\217\78\242\199\126\114\93\218\70\238\225\99", "\128\132\17\28\41\187\47");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = Theme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\27\33\40\92\5\59\3\52\73", "\61\97\82\102\90"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.SidebarBG),ColorSequenceKeypoint.new(1, Theme.WindowBG)});
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\45\185\68\203\91\23\7\171\8\185\74\202\82", "\105\204\78\203\43\167\55\126"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 3;
	TabBar.ScrollBarImageColor3 = Theme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\131\15\23\0\16\235\80\188\165\54\10", "\49\197\202\67\126\115\100\167"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\114\239\40\132\82\87\57\92", "\62\87\59\191\73\224\54"), TabBar).PaddingTop = UDim.new(0, 10);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\43\202\200\227\6\243\199\224", "\169\135\98\154"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\101\37\89\248", "\168\171\23\68\52\157\83"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\88\197\172\33\41\142\250\118", "\231\148\17\149\205\69\77"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\162\223\239\117\234\148\179\200\245", "\159\224\199\167\155\55"), TabBar);
		TabBtn.Size = UDim2.new(0.9, 0, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\194\218\31\221\229\253\57\192", "\178\151\147\92"), TabBtn).CornerRadius = UDim.new(0, 8);
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = Theme.WindowBG;
				button.TextColor3 = Theme.Text;
			else
				button.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
				button.TextColor3 = Theme.TextDark;
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\174\233\66", "\26\236\157\44\82\114\44")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\4\47\216\94", "\59\74\78\181")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\210\72\85\191\41\216\84\93\149\55\208\87\95", "\211\69\177\58\58"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\136\213\120\242\236", "\171\215\133\25\149\137");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = Theme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\225\30\243\252\36\208\67\248\199\39\238", "\34\129\168\82\154\143\80\156"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 8);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\155\3\10\76\74\128\139\181", "\233\229\210\83\107\40\46"), Page);
		PagePadding.PaddingRight = UDim.new(0, 5);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\231\80\51\219\0", "\101\161\34\82\182")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\12\84\251", "\78\136\109\57\158\187\130\226")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\45\248\252\59", "\145\94\95\153"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 42);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.BackgroundTransparency = 0.6;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\228\55\218\92\185\248\223", "\215\157\173\116\181\46"), Frame).CornerRadius = UDim.new(0, 8);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\1\177\147\230\246\52\182\142\254", "\186\85\212\235\146"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -10, 1, 0);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\132\14\234\27\251\76\214\142\24", "\56\162\225\118\158\89\142"), Frame);
			Button.Size = UDim2.new(0, 44, 0, 22);
			Button.AnchorPoint = Vector2.new(1, 0.5);
			Button.Position = UDim2.new(1, -10, 0.5, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.Text = "";
			Button.ZIndex = 5;
			Button.BackgroundColor3 = Theme.ItemBG;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\44\227\160\48\214\89\23", "\184\60\101\160\207\66"), Button).CornerRadius = UDim.new(1, 0);
			Button.AutoButtonColor = false;
			local Circle = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\144\125\177\52", "\220\81\226\28"), Button);
			Circle.Size = UDim2.new(0, 18, 0, 18);
			Circle.Position = UDim2.new(0, 2, 0.5, -9);
			Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Circle.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\252\161\244\248\201\22\199", "\167\115\181\226\155\138"), Circle).CornerRadius = UDim.new(1, 0);
			local function UpdateVisuals(val)
				local targetColor = (val and Theme.AccentEnd) or Color3.fromRGB(60, 60, 70);
				local circlePos = (val and UDim2.new(1, -20, 0.5, -9)) or UDim2.new(0, 2, 0.5, -9);
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\192\35\228\87\124\99\201\247\44\227\127\116\125\201\240\113", "\166\130\66\135\60\27\17")]=targetColor}):Play();
				TweenService:Create(Circle, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\116\69\221\124\36\77\69\192", "\80\36\42\174\21")]=circlePos}):Play();
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
						SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\111\19\35\115\65\30\119\94\75\30\62\127\74", "\26\46\112\87"), reason or LUAOBFUSACTOR_DECRYPT_STR_0("\154\34\165\122\176\171\5\177\183\34\169\120\186\255\81\188\176\48\235\102\182\184\77\160\249\45\164\99\241", "\212\217\67\203\20\223\223\37"), 4);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\159\169\223\191", "\178\218\237\200"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 55);
			Frame.BackgroundColor3 = Theme.ItemBG;
			Frame.BackgroundTransparency = 0.6;
			Frame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\197\223\164\187\227\194", "\176\214\213\134"), Frame).CornerRadius = UDim.new(0, 8);
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\168\174\192\132\87\91\241\161", "\57\148\205\214\180\200\54"), Frame);
			TopLabel.Size = UDim2.new(1, -20, 0, 20);
			TopLabel.Position = UDim2.new(0, 10, 0, 5);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = Theme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\248\45\32\90\19\255\48\56", "\22\114\157\85\84"), Frame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 0, 20);
			ValLabel.Position = UDim2.new(1, -50, 0, 5);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = Theme.AccentEnd;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			local SliderContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\217\18\201\88", "\200\164\171\115\164\61\150"), Frame);
			SliderContainer.Size = UDim2.new(1, -20, 0, 20);
			SliderContainer.Position = UDim2.new(0, 10, 0, 30);
			SliderContainer.BackgroundTransparency = 1;
			SliderContainer.ZIndex = 5;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\230\2\72\134", "\227\222\148\99\37"), SliderContainer);
			BarBG.Size = UDim2.new(1, 0, 0, 4);
			BarBG.Position = UDim2.new(0, 0, 0.5, -2);
			BarBG.BackgroundColor3 = Color3.fromRGB(40, 40, 50);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\6\123\113\249\235\61\87\64", "\153\83\50\50\150"), BarBG).CornerRadius = UDim.new(1, 0);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\100\114\17\118", "\45\61\22\19\124\19\203"), BarBG);
			Fill.BackgroundColor3 = Theme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\59\46\250\16\126\188\211", "\217\161\114\109\149\98\16"), Fill).CornerRadius = UDim.new(1, 0);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\39\9\31\110\189\112\27\37\54\104", "\20\114\64\88\28\220"), Fill);
			UIGradientFill.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			UIGradientFill.Rotation = 90;
			local Knob = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\19\211\185\253", "\221\81\97\178\212\152\176"), BarBG);
			Knob.Size = UDim2.new(0, 18, 0, 18);
			Knob.AnchorPoint = Vector2.new(0.5, 0.5);
			Knob.Position = UDim2.new(0, 0, 0.5, 0);
			Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			Knob.ZIndex = 8;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\62\244\8\195\226\15", "\122\173\135\125\155"), Knob).CornerRadius = UDim.new(1, 0);
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
					TweenService:Create(Knob, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\183\200\26\188", "\168\228\161\96\217\95\81")]=UDim2.new(0, 22, 0, 22)}):Play();
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
					TweenService:Create(Knob, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\232\216\52\89", "\55\187\177\78\60\79")]=UDim2.new(0, 18, 0, 18)}):Play();
				end
			end);
		end;
		Elements.Dropdown = function(self, options)
			local dFlag = options.Flag;
			local default = Library.Flags[dFlag] or options.Default or options.List[1];
			Library.Flags[dFlag] = default;
			local isSearchable = options.Search or false;
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\220\94\230\67", "\224\77\174\63\139\38\175"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\68\64\58\168\64\90\43\136", "\78\228\33\56"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\123\170\23\167\219\106\166\12\139", "\229\174\30\210\99"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\165\94\255\51\60\9", "\89\123\141\230\49\141\93"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			local Arrow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\116\238\24\60\75\241\116\250", "\42\147\17\150\108\112"), MainBtn);
			Arrow.Text = "v";
			Arrow.Size = UDim2.new(0, 30, 1, 0);
			Arrow.Position = UDim2.new(1, -30, 0, 0);
			Arrow.BackgroundTransparency = 1;
			Arrow.TextColor3 = Theme.TextDark;
			Arrow.Font = Enum.Font.GothamBold;
			Arrow.TextSize = 14;
			Arrow.ZIndex = 7;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\165\63\112\235\228\6\168\42\89\245\233\2\163", "\136\111\198\77\31\135"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\38\27\168\70\185\235\0\167\49\10\181\89\177\232", "\201\98\105\199\54\221\132\119");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\140\37\160\46\16\59\169\171", "\204\217\108\227\65\98\85"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\234\217\236\63\212\114\194\236\234\57\212", "\160\62\163\149\133\76"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\247\162\30\32\207\195\180\8\12\204\216\180\8\33\215\229\169\23\42", "\163\182\192\109\79")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\35\24\212\215\59\62", "\149\84\70\96\160"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 30);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\11\3\12\255\59\14\67\163\118", "\141\88\102\109");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\233\127\8\51\80\211", "\161\211\51\170\16\122\93\53"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\207\171\170\60", "\72\155\206\210")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\114\127\76\26\17\83\110\64\1\61", "\83\38\26\52\110")) then
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\18\63\82\122\2\51\82\87\25", "\38\56\119\71"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\199\234\64\194\7\67\231\251\87\216", "\54\147\143\56\182\69")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\226\132\231\93\253\195\149\235\70\209", "\191\182\225\159\41"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\0\41\88\142", "\162\75\114\72\53\235\231"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\184\57\92\246\127\3\142\57\72", "\98\236\92\36\130\51"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\144\28\20\174\103\189\161\36\171\23", "\80\196\121\108\218\37\200\213"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = Theme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\51\118\14\122\72\26\202\41\103\7\114\88\64\196\78", "\234\96\19\98\31\43\110");
			MainBtn.TextColor3 = Theme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\54\113\200\190\124\142\20", "\235\102\127\50\167\204\18"), MainBtn).CornerRadius = UDim.new(0, 8);
			MainBtn.AutoButtonColor = false;
			local Arrow = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\100\164\237\55\104\47\82\164\249", "\78\48\193\149\67\36"), MainBtn);
			Arrow.Text = "v";
			Arrow.Size = UDim2.new(0, 30, 1, 0);
			Arrow.Position = UDim2.new(1, -30, 0, 0);
			Arrow.BackgroundTransparency = 1;
			Arrow.TextColor3 = Theme.TextDark;
			Arrow.Font = Enum.Font.GothamBold;
			Arrow.TextSize = 14;
			Arrow.ZIndex = 7;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\29\146\23\77\60\23\142\31\103\34\31\141\29", "\33\80\126\224\120"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\193\189\15\208\85\200\186\12\212\88\227\191\13\247\95\254\167\15\200", "\60\140\200\99\164");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\39\41\176\137\241\22", "\194\231\148\100\70"), Scroll).CornerRadius = UDim.new(0, 8);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\101\237\170\229\220\106\77\216\172\227\220", "\168\38\44\161\195\150"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\161\254\145\121\60\253\162\19\163\243\140\98\53\230\162\37\137\230\135", "\118\224\156\226\22\80\136\214")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\235\65\148\96\225\65", "\224\34\142\57"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 30);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\237\162\196\207\112\249\19\64\144", "\110\190\199\165\189\19\145\61");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = Theme.ItemBG;
				SearchBox.TextColor3 = Theme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\239\194\84\231\153\201\223\249", "\167\186\139\23\136\235"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\46\176\144\25", "\109\122\213\232")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\218\242\186\36\204\226\182\36\225\249", "\80\142\151\194")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\67\245\114\64\6\197\99\73\7", "\44\99\166\23"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\79\242\37\51\48\176\60\222\61\51\62\183\50\185\103", "\196\28\151\73\86\83");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\160\77\12\98\252\13", "\22\147\99\73\112\226\56\120"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\103\227\248\136", "\237\216\21\130\149"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\182\75\71\75\156\200\92\135\66", "\62\226\46\63\63\208\169"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\77\151\61\2\55", "\62\133\121\53\227\127\109\79"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\53\26\38\240\196\238\182\21\12\38\181\222\171\176\21\90\124\187", "\194\112\116\82\149\182\206");
			Input.Text = default;
			Input.BackgroundColor3 = Theme.ItemBG;
			Input.TextColor3 = Theme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\129\111\23\210\236\11\43", "\110\89\200\44\120\160\130"), Input).CornerRadius = UDim.new(0, 8);
			Input.FocusLost:Connect(function()
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\209\74\75\70", "\45\203\163\43\38\35\42\91"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\230\128\196\55\165\188\64\198\138\210", "\52\178\229\188\67\231\201"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\20\104\119\22\246\88\42\36\79\68", "\67\65\33\48\100\151\60"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			BtnGradient.Rotation = 45;
			Btn.BackgroundColor3 = Theme.ItemBG;
			Btn.BackgroundTransparency = 0.5;
			Btn.Text = options.Name;
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextScaled = true;
			Btn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\206\141\215\225\209\226\188", "\147\191\135\206\184"), Btn).CornerRadius = UDim.new(0, 12);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\183\33\188\196", "\210\228\72\198\161\184\51")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\64\233\21", "\174\86\41\147\112\19")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\18\140\6\32", "\203\59\96\237\107\69\111\113"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.LinkBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\4\173\236\52", "\183\68\118\204\129\81\144"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 60);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\168\104\240\41\141\22", "\226\110\205\16\132\107"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\222\234\195\214\83\229\198\242", "\33\139\163\128\185"), Box).CornerRadius = UDim.new(0, 8);
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\99\93\28\202\123\89\6\219\91", "\190\55\56\100"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\122\166\50\21", "\147\54\207\92\126\115\131");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = Theme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\52\45\105\47\107\25\37\58\115", "\30\109\81\85\29\109"), Frame);
			CopyBtn.Size = UDim2.new(0, 100, 0, 35);
			CopyBtn.Position = UDim2.new(1, -100, 0, 20);
			CopyBtn.BackgroundColor3 = Theme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\220\126\68\175\118\242\245\241\122", "\156\159\17\52\214\86\190");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\198\158\179\188\225\184\174", "\220\206\143\221"), CopyBtn).CornerRadius = UDim.new(0, 12);
			CopyBtn.AutoButtonColor = false;
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\179\84\10\5\217\200\219\131\115\57", "\178\230\29\77\119\184\172"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme.AccentStart),ColorSequenceKeypoint.new(1, Theme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			local defaultCopySize = CopyBtn.Size;
			CopyBtn.MouseEnter:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\198\183\16\30", "\152\149\222\106\123\23")]=(defaultCopySize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			CopyBtn.MouseLeave:Connect(function()
				TweenService:Create(CopyBtn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\47\236\70", "\213\189\70\150\35")]=defaultCopySize}):Play();
			end);
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\108\90\100\1\74\81\53", "\104\47\53\20");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\128\67\145\5\252\35\170\66\138", "\111\195\44\225\124\220");
				else
					SendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\251\74\9\99\169\164\217\84\4\51\158\165\217\80\1\122\167\170\218\74\5", "\203\184\38\96\19\203"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\114\119\79\193\45\51\122\78\222\32\51\118\79\142\45\123\112\82\142\60\107\124\66\219\45\124\107\15", "\174\89\19\25\33"), 3);
				end
			end);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\12\0\87\74\254\147\24", "\107\79\114\50\46\151\231"));
		CreditsTab:LinkBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\167\184\44", "\160\89\198\213\73\234\89\215")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\120\167\253\202\90\117\244\205\192\90\103\177\236", "\165\40\17\212\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\201\208\6\56", "\70\133\185\104\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\81\80\58\218\94\10\11\46\192\23\70\75\56\205\74\66\67\101\251\12\97\74\31\248\22\17\96\63", "\169\100\37\36\74")});
	end;
	return WindowAPI;
end;
return Library;
