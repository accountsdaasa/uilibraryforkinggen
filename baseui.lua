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
local Themes = {[LUAOBFUSACTOR_DECRYPT_STR_0("\50\182\223\216\205\11\49\23", "\84\121\223\177\191\237\76")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\140\95\199\164\53\71\18\230", "\161\219\54\169\192\90\48\80")]=Color3.fromRGB(42, 40, 55),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\75\4\32\75\67\18\7\110", "\69\41\34\96")]=Color3.fromRGB(28, 26, 38),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\215\210\7\32\12", "\75\220\163\183\106\98")]=Color3.fromRGB(65, 55, 85),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\185\136\50\215\22\137\159\54\203\22", "\185\98\218\235\87")]=Color3.fromRGB(180, 60, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\63\36\227\208\190\238\50\35", "\202\171\92\71\134\190")]=Color3.fromRGB(60, 160, 210),[LUAOBFUSACTOR_DECRYPT_STR_0("\29\196\52\156", "\232\73\161\76")]=Color3.fromRGB(235, 235, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\220\90\73\58\186\203\73", "\126\219\185\34\61")]=Color3.fromRGB(155, 150, 165),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\231\109\102\108\120\248\226\47\193\82\125\108", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(90, 80, 115)},[LUAOBFUSACTOR_DECRYPT_STR_0("\133\231\37\220", "\167\214\137\74\171\120\206\83")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\188\249\60\89\247\176\169\215", "\199\235\144\82\61\152")]=Color3.fromRGB(240, 240, 245),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\31\189\46\5\23\171\9\32", "\75\103\118\217")]=Color3.fromRGB(220, 220, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\238\64\117\25\155\57", "\126\167\52\16\116\217")]=Color3.fromRGB(200, 200, 215),[LUAOBFUSACTOR_DECRYPT_STR_0("\233\45\35\133\186\13\207\220\47\50\148", "\156\168\78\64\224\212\121")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\38\237\166\203\9\250\128\192\3", "\174\103\142\197")]=Color3.fromRGB(150, 150, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44", "\152\54\72\63\88\69\62")]=Color3.fromRGB(20, 20, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\193\246\72\240\197\252\87", "\60\180\164\142")]=Color3.fromRGB(80, 80, 80),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\119\54\61\53\226\25\93\125\10\37\40\255", "\114\56\62\101\73\71\141")]=Color3.fromRGB(180, 180, 190)}};
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
Library.Notify = function(self, options)
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
			if (success and (type(decoded) == LUAOBFUSACTOR_DECRYPT_STR_0("\5\49\176\52\75", "\73\113\80\210\88\46\87"))) then
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
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\190\20\242\33\228\128\32\200", "\135\225\76\173\114")] = object.Position.X.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\37\213\135\159\170\187\180\31\249", "\199\122\141\216\208\204\221")] = object.Position.X.Offset;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\146\228\47\195\123\247\161\216", "\150\205\189\112\144\24")] = object.Position.Y.Scale;
						Library.Flags[saveKey .. LUAOBFUSACTOR_DECRYPT_STR_0("\26\189\128\99\2\142\2\21\49", "\112\69\228\223\44\100\232\113")] = object.Position.Y.Offset;
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
	Library.CurrentConfig = options.ConfigName or LUAOBFUSACTOR_DECRYPT_STR_0("\215\16\9\213\191\123\200\222\12\8\221", "\230\180\127\103\179\214\28");
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\167\12\81\65\195\68\238\185\44", "\128\236\101\63\38\132\33")) then
		CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\135\160\31\67\145\238\193\153\128", "\175\204\201\113\36\214\139")):Destroy();
	end
	if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\108\238\32\200\16\72\194\18\201\13", "\100\39\172\85\188")) then
		CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\134\90\172\148\39\162\118\158\149\58", "\83\205\24\217\224")):Destroy();
	end
	Library:Load();
	if (Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\213\192\217\41\239\203\202\46\217\241\197\56\235\192", "\93\134\165\173")] and Themes[Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\141\247\213\214\51\192\181\109\129\198\201\199\55\203", "\30\222\146\161\162\90\174\210")]]) then
		CurrentTheme = Themes[Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\214\75\100\30\236\64\119\25\218\122\120\15\232\75", "\106\133\46\16")]];
	end
	local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\35\97\249\95\78\127\53\122", "\32\56\64\19\156\58"));
	ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\113\193\235\81\125\247\142\111\225", "\224\58\168\133\54\58\146");
	ScreenGui.Parent = CoreGui;
	ScreenGui.DisplayOrder = 999;
	ScreenGui.ResetOnSpawn = false;
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\68\74\240\112", "\107\57\54\43\157\21\230\231"), ScreenGui);
	MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\246\138\24\251\159\206\206\214\142", "\175\187\235\113\149\217\188");
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5);
	MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
	MainFrame.Size = UDim2.new(0.45, 0, 0.65, 0);
	MainFrame.BackgroundColor3 = CurrentTheme.SidebarBG;
	MainFrame.BackgroundTransparency = 0;
	MainFrame.BorderSizePixel = 0;
	MainFrame.ZIndex = 1;
	local MainScale = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\134\178\79\226\117\125", "\24\92\207\225\44\131\25"), MainFrame);
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\120\214\172\88\18\115\76\192\135\127\24\124\71\214", "\29\43\179\216\44\123")] then
		MainScale.Scale = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\142\220\52\88\180\215\39\95\130\234\35\77\177\220", "\44\221\185\64")];
	else
		MainScale.Scale = 1;
	end
	local MainFrameGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\111\77\114\5\238\77\81\103", "\19\97\135\40\63"), MainFrame);
	MainFrameGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.WindowBG),ColorSequenceKeypoint.new(1, CurrentTheme.SidebarBG)});
	MainFrameGradient.Rotation = 90;
	local MainCorner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\155\117\16\52\61\63\171\78", "\81\206\60\83\91\79"), MainFrame);
	MainCorner.CornerRadius = UDim.new(0, 24);
	local FrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\130\227\102\61\204\70\161", "\196\46\203\176\18\79\163\45"), MainFrame);
	FrameStroke.Color = CurrentTheme.UIStrokeColor;
	FrameStroke.Transparency = 1;
	FrameStroke.Thickness = 1;
	local arConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\11\95\13\52\254\236\172\16\127\10\45\244\204\183\44\109\10\54\250\230\182\54", "\143\216\66\30\126\68\155"), MainFrame);
	arConstraint.AspectRatio = 480 / 540;
	arConstraint.DominantAxis = Enum.DominantAxis.Height;
	local sizeConstraint = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\225\62\194\223\166\244\238\164\219\25\217\196\170\217\245", "\129\202\168\109\171\165\195\183"), MainFrame);
	sizeConstraint.MaxSize = Vector2.new(600, 700);
	sizeConstraint.MinSize = Vector2.new(240, 270);
	local InputBlocker = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\93\47\204\252\1\242\54\87\57", "\134\66\56\87\184\190\116"), MainFrame);
	InputBlocker.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\21\63\25\174\13\201\45\58\63\58\12\169", "\85\92\81\105\219\121\139\65");
	InputBlocker.Size = UDim2.new(1, 0, 1, 0);
	InputBlocker.BackgroundTransparency = 1;
	InputBlocker.Text = "";
	InputBlocker.Visible = false;
	InputBlocker.ZIndex = 500;
	local TitleBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\161\81\72\121", "\191\157\211\48\37\28"), MainFrame);
	TitleBar.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\235\22\224\16\63\253\30\230", "\90\191\127\148\124");
	TitleBar.Size = UDim2.new(1, 0, 0, 44);
	TitleBar.BackgroundColor3 = CurrentTheme.SidebarBG;
	TitleBar.ZIndex = 2;
	local TitleBarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\77\174\9\5\121\131\39\18\118\147", "\119\24\231\78"), TitleBar);
	TitleBarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.SidebarBG),ColorSequenceKeypoint.new(1, CurrentTheme.WindowBG)});
	TitleBarGradient.Rotation = 90;
	MakeDraggable(TitleBar, MainFrame);
	local TitleLogo = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\171\32\164\77\217\108\16\128\40\169", "\113\226\77\197\42\188\32"), TitleBar);
	TitleLogo.Image = KINGHUB_DECAL_ID;
	TitleLogo.Size = UDim2.new(0, 32, 0, 32);
	TitleLogo.Position = UDim2.new(0, 12, 0.5, -16);
	TitleLogo.BackgroundTransparency = 1;
	TitleLogo.ScaleType = Enum.ScaleType.Fit;
	TitleLogo.ZIndex = 3;
	local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\14\19\236\161\22\23\246\176\54", "\213\90\118\148"), TitleBar);
	TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\112\7\154\113\13\124\11\154", "\45\59\78\212\54");
	TitleLabel.Size = UDim2.new(1, -50, 1, 0);
	TitleLabel.Position = UDim2.new(0, 52, 0, 0);
	TitleLabel.Font = Enum.Font.GothamBold;
	TitleLabel.TextScaled = true;
	TitleLabel.TextColor3 = CurrentTheme.Text;
	TitleLabel.BackgroundTransparency = 1;
	TitleLabel.TextXAlignment = Enum.TextXAlignment.Left;
	TitleLabel.ZIndex = 3;
	local MinBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\83\155\159\164\59\185\228\31\88", "\144\112\54\227\235\230\78\205"), TitleBar);
	MinBtn.Size = UDim2.new(0, 34, 0, 34);
	MinBtn.Position = UDim2.new(1, -44, 0.5, -17);
	MinBtn.Text = "−";
	MinBtn.Font = Enum.Font.GothamBold;
	MinBtn.TextSize = 24;
	MinBtn.BackgroundColor3 = CurrentTheme.ItemBG;
	MinBtn.TextColor3 = CurrentTheme.Text;
	MinBtn.ZIndex = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\1\44\243\194\85\182\58", "\59\211\72\111\156\176"), MinBtn).CornerRadius = UDim.new(0, 12);
	MinBtn.AutoButtonColor = false;
	local function AnimateButtonColor(button, color)
		TweenService:Create(button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\108\134\224\38\73\149\236\56\64\131\192\34\66\136\241\126", "\77\46\231\131")]=color}):Play();
	end
	MinBtn.MouseEnter:Connect(function()
		AnimateButtonColor(MinBtn, CurrentTheme.AccentStart);
	end);
	MinBtn.MouseLeave:Connect(function()
		if not Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\133\107\131\105\133\121\159\110\147\121\159\122\159\112", "\32\218\52\214")] then
			AnimateButtonColor(MinBtn, CurrentTheme.ItemBG);
		end
	end);
	local KGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\20\35\173\244\190\98\79\71", "\58\46\119\81\200\145\208\37"), CoreGui);
	KGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\0\174\37\184\189\178\56\12\153\57", "\86\75\236\80\204\201\221");
	KGui.ResetOnSpawn = false;
	KGui.DisplayOrder = 1000;
	local KBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\91\76\118\130\251\169\103\85\99\138\240", "\235\18\33\23\229\158"), KGui);
	KBtn.Image = KINGHUB_DECAL_ID;
	KBtn.BackgroundTransparency = 1;
	KBtn.Visible = false;
	KBtn.ZIndex = 100;
	local SavedKSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\99\191\213\175\89\180\198\168\111\145\242\178\74\191", "\219\48\218\161")] or 100;
	KBtn.Size = UDim2.new(0, SavedKSize, 0, SavedKSize);
	local KRatio = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\93\90\203\74\227\240\67\125\93\210\64\195\235\127\111\93\201\78\233\234\101", "\128\132\17\28\41\187\47"), KBtn);
	KRatio.AspectRatio = 1;
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\62\13\45\5\109\46\1\57\2\98\50\49\7\54\88", "\61\97\82\102\90")] then
		KBtn.Position = UDim2.new(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\147\17\128\116\247\120\45\54\148\17\152\72\198\91\27", "\105\204\78\203\43\167\55\126")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\154\149\8\33\35\43\244\110\157\149\12\24\21\23\194\69", "\49\197\202\67\126\115\100\167")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\8\100\244\22\176\121\109\8\98\224\26\131\87\82\50", "\62\87\59\191\73\224\54")], Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\216\61\209\246\215\45\201\246\222\61\213\207\225\17\255\221", "\169\135\98\154")]);
	else
		KBtn.Position = UDim2.new(0.9, -110, 0.1, 0);
	end
	KBtn.ScaleType = Enum.ScaleType.Fit;
	MakeDraggable(KBtn, KBtn, LUAOBFUSACTOR_DECRYPT_STR_0("\244\72\15\107\205\28\251", "\168\171\23\68\52\157\83"));
	local function SetState(isMinimized)
		Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\203\78\192\132\26\0\174\218\88\216\132\31\8\163", "\231\148\17\149\205\69\77")] = isMinimized;
		Library:Save();
		local mainFrameTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local kBtnTweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
		local TargetKSize = Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\179\162\211\239\94\241\135\180\248\208\100\246\154\162", "\159\224\199\167\155\55")] or 100;
		if isMinimized then
			MainFrame.ZIndex = 1;
			local tweenOut = TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\252\47\219\227\250\51\220", "\178\151\147\92")]=UDim2.new(0.5, 0, 1.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\190\242\88\51\6\69\117\130", "\26\236\157\44\82\114\44")]=-10});
			tweenOut:Play();
			tweenOut.Completed:Connect(function()
				MainFrame.Visible = false;
			end);
			KBtn.Visible = true;
			KBtn.ImageTransparency = 1;
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\3\35\212\92\47\26\199\90\36\61\197\90\56\43\219\88\51", "\59\74\78\181")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\22\216\64\95", "\211\69\177\58\58")]=UDim2.new(0, TargetKSize, 0, TargetKSize)}):Play();
		else
			TweenService:Create(KBtn, kBtnTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\158\232\120\242\236\255\165\228\119\230\249\202\165\224\119\246\240", "\171\215\133\25\149\137")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\210\193\40\255", "\34\129\168\82\154\143\80\156")]=UDim2.new(0, TargetKSize * 0.8, 0, TargetKSize * 0.8)}):Play();
			task.wait(0.3);
			KBtn.Visible = false;
			MainFrame.Visible = true;
			MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
			MainFrame.Rotation = -10;
			TweenService:Create(MainFrame, mainFrameTweenInfo, {[LUAOBFUSACTOR_DECRYPT_STR_0("\181\189\32\2\92\71\134\139", "\233\229\210\83\107\40\46")]=UDim2.new(0.5, 0, 0.5, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\77\38\215\17\200\77\60", "\101\161\34\82\182")]=0}):Play();
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
	if Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\215\50\108\215\228\207\171\0\193\32\112\196\254\198", "\78\136\109\57\158\187\130\226")] then
		MainFrame.Visible = false;
		MainFrame.Position = UDim2.new(0.5, 0, 1.5, 0);
		KBtn.Visible = true;
		KBtn.ImageTransparency = 0;
	else
		KBtn.Visible = false;
		MainFrame.Visible = true;
		MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0);
		MainFrame.Rotation = 0;
	end
	local SidebarContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\45\248\252\59", "\145\94\95\153"), MainFrame);
	SidebarContainer.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\206\196\16\208\76\182\239\238\27\219\90\182\244\195\17\199", "\215\157\173\116\181\46");
	SidebarContainer.Size = UDim2.new(0, 120, 1, -44);
	SidebarContainer.Position = UDim2.new(0, 0, 0, 44);
	SidebarContainer.BackgroundColor3 = CurrentTheme.SidebarBG;
	SidebarContainer.BorderSizePixel = 0;
	SidebarContainer.ZIndex = 2;
	local SidebarGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\157\172\224\219\49\189\142\252\206", "\186\85\212\235\146"), SidebarContainer);
	SidebarGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.SidebarBG),ColorSequenceKeypoint.new(1, CurrentTheme.AccentStart)});
	SidebarGradient.Rotation = 90;
	local SidebarStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\168\37\234\43\225\83\199", "\56\162\225\118\158\89\142"), SidebarContainer);
	SidebarStroke.Color = CurrentTheme.UIStrokeColor;
	SidebarStroke.Transparency = 1;
	SidebarStroke.Thickness = 1;
	local TabBar = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\111\6\210\160\46\212\85\11\199\137\48\217\81\0", "\184\60\101\160\207\66"), SidebarContainer);
	TabBar.Size = UDim2.new(1, 0, 1, 0);
	TabBar.BackgroundTransparency = 1;
	TabBar.ScrollBarThickness = 2;
	TabBar.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
	TabBar.HorizontalScrollBarInset = Enum.ScrollBarInset.None;
	TabBar.ZIndex = 2;
	TabBar.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	TabBar.CanvasSize = UDim2.new(0, 0, 0, 0);
	local TabListLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\171\80\181\34\150\80\189\40\141\105\168", "\220\81\226\28"), TabBar);
	TabListLayout.FillDirection = Enum.FillDirection.Vertical;
	TabListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center;
	TabListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
	TabListLayout.Padding = UDim.new(0, 8);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\252\178\250\238\195\26\219\133", "\167\115\181\226\155\138"), TabBar).PaddingTop = UDim.new(0, 15);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\11\215\93\127\117\207\236\37", "\166\130\66\135\60\27\17"), TabBar).PaddingBottom = UDim.new(0, 10);
	local PagesContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\88\207\120\53", "\80\36\42\174\21"), MainFrame);
	PagesContainer.Size = UDim2.new(1, -120, 1, -44);
	PagesContainer.Position = UDim2.new(0, 120, 0, 44);
	PagesContainer.BackgroundTransparency = 1;
	PagesContainer.ZIndex = 2;
	local ContentPadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\123\57\7\123\74\20\62\116\73", "\26\46\112\87"), PagesContainer);
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
		local TabBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\141\38\179\96\157\170\81\160\182\45", "\212\217\67\203\20\223\223\37"), TabBar);
		TabBtn.Size = UDim2.new(1, -16, 0, buttonHeight);
		TabBtn.Text = name;
		TabBtn.Font = Enum.Font.GothamBold;
		TabBtn.TextScaled = true;
		TabBtn.AutoButtonColor = false;
		TabBtn.ZIndex = 3;
		Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\143\164\139\221\168\131\173\192", "\178\218\237\200"), TabBtn).CornerRadius = UDim.new(0, 12);
		local TabBtnStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\156\213\196\164\186\237\213", "\176\214\213\134"), TabBtn);
		TabBtnStroke.Color = CurrentTheme.UIStrokeColor;
		TabBtnStroke.Transparency = 0.8;
		TabBtnStroke.Thickness = 1;
		local function UpdateTabButtonStyle(button, isActive)
			if isActive then
				button.BackgroundColor3 = CurrentTheme.WindowBG;
				button.TextColor3 = CurrentTheme.Text;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\192\191\183\218\187\70\88\230\168\184\215\177", "\57\148\205\214\180\200\54")]=0.3,[LUAOBFUSACTOR_DECRYPT_STR_0("\49\242\57\59\100", "\22\114\157\85\84")]=CurrentTheme.AccentStart}):Play();
			else
				button.BackgroundColor3 = CurrentTheme.SidebarBG;
				button.TextColor3 = CurrentTheme.TextDark;
				TweenService:Create(TabBtnStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\240\217\18\202\78\230\169\214\206\29\199\68", "\200\164\171\115\164\61\150")]=0.8,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\251\15\74\145", "\227\222\148\99\37")]=CurrentTheme.UIStrokeColor}):Play();
			end
		end
		table.insert(TabButtons, {[LUAOBFUSACTOR_DECRYPT_STR_0("\17\70\92", "\153\83\50\50\150")]=TabBtn,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\119\126\25", "\45\61\22\19\124\19\203")]=name});
		local Page = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\17\31\250\14\124\176\207\21\43\231\3\125\188", "\217\161\114\109\149\98\16"), PagesContainer);
		Page.Name = name .. LUAOBFUSACTOR_DECRYPT_STR_0("\45\16\57\123\185", "\20\114\64\88\28\220");
		Page.Size = UDim2.new(1, 0, 1, 0);
		Page.BackgroundTransparency = 1;
		Page.ScrollBarThickness = 4;
		Page.ScrollBarImageColor3 = CurrentTheme.AccentEnd;
		Page.Visible = FirstTab;
		Page.AutomaticCanvasSize = Enum.AutomaticSize.Y;
		Page.CanvasSize = UDim2.new(0, 0, 0, 0);
		Page.ZIndex = 2;
		Page.Active = true;
		local PageLayout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\4\40\254\189\235\196\145\48\24\221\161\236", "\221\81\97\178\212\152\176"), Page);
		PageLayout.SortOrder = Enum.SortOrder.LayoutOrder;
		PageLayout.Padding = UDim.new(0, 10);
		local PagePadding = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\248\206\45\250\30\201\238\19\252", "\122\173\135\125\155"), Page);
		PagePadding.PaddingRight = UDim.new(0, 15);
		PagePadding.PaddingTop = UDim.new(0, 5);
		PagePadding.PaddingBottom = UDim.new(0, 25);
		table.insert(Pages, {[LUAOBFUSACTOR_DECRYPT_STR_0("\162\211\1\180\58", "\168\228\161\96\217\95\81")]=Page,[LUAOBFUSACTOR_DECRYPT_STR_0("\245\208\35\89", "\55\187\177\78\60\79")]=name});
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\11\220\94\230\67", "\224\77\174\63\139\38\175"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 40);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\68\64\58\168\64\90\43\136", "\78\228\33\56"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(0.7, -5, 1, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\250\123\170\23\167\219\106\166\12\139", "\229\174\30\210\99"), Frame);
			Button.Size = UDim2.new(0.3, 0, 1, 0);
			Button.Position = UDim2.new(0.7, 0, 0, 0);
			Button.Font = Enum.Font.GothamBold;
			Button.TextScaled = true;
			Button.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\196\165\94\255\51\60\9", "\89\123\141\230\49\141\93"), Button).CornerRadius = UDim.new(0, 14);
			Button.AutoButtonColor = false;
			local ToggleStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\88\197\24\2\69\248\116", "\42\147\17\150\108\112"), Button);
			ToggleStroke.Color = CurrentTheme.UIStrokeColor;
			ToggleStroke.Transparency = 0.5;
			ToggleStroke.Thickness = 1;
			local function UpdateVisuals(val)
				Button.Text = (val and LUAOBFUSACTOR_DECRYPT_STR_0("\32\136", "\136\111\198\77\31\135")) or LUAOBFUSACTOR_DECRYPT_STR_0("\45\47\129", "\201\98\105\199\54\221\132\119");
				Button.TextColor3 = (val and CurrentTheme.Text) or CurrentTheme.TextDark;
				local targetColor = (val and CurrentTheme.AccentEnd) or CurrentTheme.ItemBG;
				TweenService:Create(Button, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\155\13\128\42\5\39\163\172\2\135\2\13\57\163\171\95", "\204\217\108\227\65\98\85")]=targetColor}):Play();
				TweenService:Create(ToggleStroke, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\125\204\249\234\62", "\160\62\163\149\133\76")]=((val and CurrentTheme.AccentEnd) or CurrentTheme.UIStrokeColor)}):Play();
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\178\12\34\198", "\163\182\192\109\79"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local TopLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\35\24\212\217\53\36\5\204", "\149\84\70\96\160"), Frame);
			TopLabel.Size = UDim2.new(1, 0, 0, 20);
			TopLabel.Text = options.Name;
			TopLabel.Font = Enum.Font.GothamBold;
			TopLabel.TextScaled = true;
			TopLabel.TextColor3 = CurrentTheme.Text;
			TopLabel.BackgroundTransparency = 1;
			TopLabel.TextXAlignment = Enum.TextXAlignment.Left;
			TopLabel.ZIndex = 5;
			local SliderFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\20\12\224\61", "\141\88\102\109"), Frame);
			SliderFrame.Size = UDim2.new(1, 0, 0, 28);
			SliderFrame.Position = UDim2.new(0, 0, 0, 22);
			SliderFrame.BackgroundColor3 = CurrentTheme.ItemBG;
			SliderFrame.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\134\122\233\127\8\51\80\211", "\161\211\51\170\16\122\93\53"), SliderFrame).CornerRadius = UDim.new(0, 12);
			local SliderFrameStroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\206\135\129\60\233\161\185\45", "\72\155\206\210"), SliderFrame);
			SliderFrameStroke.Color = CurrentTheme.UIStrokeColor;
			SliderFrameStroke.Transparency = 0.5;
			SliderFrameStroke.Thickness = 1;
			local ValLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\127\76\26\31\71\120\81\2", "\83\38\26\52\110"), SliderFrame);
			ValLabel.Text = tostring(default);
			ValLabel.Size = UDim2.new(0, 40, 1, 0);
			ValLabel.Position = UDim2.new(1, -45, 0, 0);
			ValLabel.Font = Enum.Font.GothamBold;
			ValLabel.TextScaled = true;
			ValLabel.TextColor3 = CurrentTheme.Text;
			ValLabel.BackgroundTransparency = 1;
			ValLabel.ZIndex = 6;
			local BarBG = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\5\38\75\93", "\38\56\119\71"), SliderFrame);
			BarBG.Size = UDim2.new(1, -50, 1, -4);
			BarBG.Position = UDim2.new(0, 4, 0, 2);
			BarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
			BarBG.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\198\198\123\217\55\88\246\253", "\54\147\143\56\182\69"), BarBG).CornerRadius = UDim.new(0, 12);
			local Fill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\147\254\68\218", "\191\182\225\159\41"), BarBG);
			Fill.BackgroundColor3 = CurrentTheme.AccentStart;
			Fill.Size = UDim2.new(0, 0, 1, 0);
			Fill.ZIndex = 7;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\59\11\90\153\137\199\57", "\162\75\114\72\53\235\231"), Fill).CornerRadius = UDim.new(0, 12);
			local UIGradientFill = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\21\99\240\82\6\133\57\74\246", "\98\236\92\36\130\51"), Fill);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\11\13\183\64", "\80\196\121\108\218\37\200\213"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\118\26\107\103\15\136\5\127", "\234\96\19\98\31\43\110"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\26\74\211\142\103\159\18\16\92", "\235\102\127\50\167\204\18"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = CurrentTheme.ItemBG;
			MainBtn.Text = default;
			MainBtn.TextColor3 = CurrentTheme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\101\136\214\44\86\32\85\179", "\78\48\193\149\67\36"), MainBtn).CornerRadius = UDim.new(0, 12);
			MainBtn.AutoButtonColor = false;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\29\146\23\77\60\23\142\31\103\34\31\141\29", "\33\80\126\224\120"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\200\186\12\212\88\227\191\13\247\95\254\167\15\200", "\60\140\200\99\164");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\221\39\41\176\137\241\22", "\194\231\148\100\70"), Scroll).CornerRadius = UDim.new(0, 12);
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
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\237\162\196\207\112\249\19\64\144", "\110\190\199\165\189\19\145\61");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = CurrentTheme.ItemBG;
				SearchBox.TextColor3 = CurrentTheme.Text;
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\195\111\88\33\211\99\88\12\200", "\44\99\166\23"), Scroll);
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
					if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\72\242\49\34\17\177\104\227\38\56", "\196\28\151\73\86\83")) then
						child:Destroy();
					end
				end
				if (isSearchable and SearchBox) then
					SearchBox.Text = "";
					SearchBox.Parent = Scroll;
				end
				for _, item in ipairs(newList) do
					local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\160\77\12\98\252\13", "\22\147\99\73\112\226\56\120"), Scroll);
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
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local MainBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\28\77\151\61\24\59\74\234\23", "\62\133\121\53\227\127\109\79"), Frame);
			MainBtn.Size = UDim2.new(1, -20, 0, 35);
			MainBtn.Position = UDim2.new(0, 10, 0, 30);
			MainBtn.BackgroundColor3 = CurrentTheme.ItemBG;
			MainBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\35\17\62\240\213\186\226\57\0\55\248\197\224\236\94", "\194\112\116\82\149\182\206");
			MainBtn.TextColor3 = CurrentTheme.AccentStart;
			MainBtn.Font = Enum.Font.GothamSemibold;
			MainBtn.TextScaled = true;
			MainBtn.ZIndex = 6;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\129\111\23\210\236\11\43", "\110\89\200\44\120\160\130"), MainBtn).CornerRadius = UDim.new(0, 12);
			MainBtn.AutoButtonColor = false;
			local Scroll = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\192\89\73\79\70\50\67\172\229\89\71\78\79", "\45\203\163\43\38\35\42\91"), MainBtn);
			Scroll.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\255\144\208\55\142\141\70\221\149\216\44\144\167\103\209\151\211\47\139", "\52\178\229\188\67\231\201");
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\20\104\115\11\229\82\38\51", "\67\65\33\48\100\151\60"), Scroll).CornerRadius = UDim.new(0, 12);
			local Layout = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\234\206\130\209\224\203\203\175\193\252\202\243", "\147\191\135\206\184"), Scroll);
			Layout.Padding = UDim.new(0, 5);
			Layout.SortOrder = Enum.SortOrder.LayoutOrder;
			local function UpdateCanvas()
				local contentSize = Layout.AbsoluteContentSize.Y;
				Scroll.CanvasSize = UDim2.new(0, 0, 0, contentSize + 20);
			end
			Layout:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\165\42\181\206\212\70\166\129\11\169\207\204\86\188\144\27\175\219\221", "\210\228\72\198\161\184\51")):Connect(UpdateCanvas);
			local SearchBox;
			if isSearchable then
				SearchBox = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\76\235\4\81\193\46", "\174\86\41\147\112\19"), Scroll);
				SearchBox.ZIndex = 605;
				SearchBox.Size = UDim2.new(1, -10, 0, 25);
				SearchBox.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\104\5\140\25\38\7\95\229\21", "\203\59\96\237\107\69\111\113");
				SearchBox.Text = "";
				SearchBox.BackgroundColor3 = CurrentTheme.ItemBG;
				SearchBox.TextColor3 = CurrentTheme.Text;
				SearchBox.Font = Enum.Font.Gotham;
				SearchBox.TextSize = 14;
				SearchBox.LayoutOrder = -1;
				Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\63\143\238\35\254\210\54", "\183\68\118\204\129\81\144"), SearchBox).CornerRadius = UDim.new(0, 6);
				SearchBox:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\58\168\104\240", "\226\110\205\16\132\107")):Connect(function()
					local txt = SearchBox.Text:lower();
					for _, child in ipairs(Scroll:GetChildren()) do
						if child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\223\198\248\205\99\254\215\244\214\79", "\33\139\163\128\185")) then
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
				MainBtn.Text = ((count > 0) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\23\107\1\210\82\91\16\219\83", "\190\55\56\100"))) or LUAOBFUSACTOR_DECRYPT_STR_0("\101\170\48\27\16\247\179\127\187\57\19\0\173\189\24", "\147\54\207\92\126\115\131");
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
				local ItemBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\57\52\45\105\47\107\25\37\58\115", "\30\109\81\85\29\109"), Scroll);
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
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\217\99\85\187\51", "\156\159\17\52\214\86\190"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 70);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\234\165\168\130\238\191\185\162", "\220\206\143\221"), Frame);
			Label.Text = options.Name;
			Label.Size = UDim2.new(1, -20, 0, 24);
			Label.Position = UDim2.new(0, 10, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Left;
			Label.ZIndex = 5;
			local Input = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\178\120\53\3\250\195\202", "\178\230\29\77\119\184\172"), Frame);
			Input.Size = UDim2.new(1, -20, 0, 35);
			Input.Position = UDim2.new(0, 10, 0, 30);
			Input.PlaceholderText = options.Placeholder or LUAOBFUSACTOR_DECRYPT_STR_0("\208\176\30\30\101\184\225\187\18\15\55\240\240\172\15\85\57\182", "\152\149\222\106\123\23");
			Input.Text = default;
			Input.BackgroundColor3 = CurrentTheme.ItemBG;
			Input.TextColor3 = CurrentTheme.Text;
			Input.Font = Enum.Font.Gotham;
			Input.TextScaled = true;
			Input.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\15\213\76\167\211\35\228", "\213\189\70\150\35"), Input).CornerRadius = UDim.new(0, 12);
			Input.FocusLost:Connect(function()
				Library.Flags[tFlag] = Input.Text;
				pcall(options.Callback, Input.Text);
				Library:Save();
			end);
			pcall(options.Callback, default);
		end;
		Elements.TextBox = Elements.Input;
		Elements.Button = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\71\117\5\74", "\104\47\53\20"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 50);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			if (options.Name == "") then
				return;
			end
			local Btn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\73\153\8\158\26\183\88\142\18", "\111\195\44\225\124\220"), Frame);
			Btn.Size = UDim2.new(1, 0, 0, 40);
			Btn.Position = UDim2.new(0, 0, 0, 5);
			local BtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\111\39\97\170\175\209\67\14\103", "\203\184\38\96\19\203"), Btn);
			BtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			BtnGradient.Rotation = 45;
			Btn.BackgroundColor3 = CurrentTheme.ItemBG;
			Btn.BackgroundTransparency = 0.5;
			Btn.Text = options.Name;
			Btn.TextColor3 = Color3.fromRGB(255, 255, 255);
			Btn.Font = Enum.Font.GothamBold;
			Btn.TextScaled = true;
			Btn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\90\90\78\220\55\118\107", "\174\89\19\25\33"), Btn).CornerRadius = UDim.new(0, 14);
			Btn.AutoButtonColor = false;
			local defaultSize = Btn.Size;
			Btn.MouseEnter:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\27\72\75", "\107\79\114\50\46\151\231")]=(defaultSize + UDim2.new(0, 0, 0, 2))}):Play();
			end);
			Btn.MouseLeave:Connect(function()
				TweenService:Create(Btn, TweenInfo.new(0.1), {[LUAOBFUSACTOR_DECRYPT_STR_0("\10\175\175\44", "\160\89\198\213\73\234\89\215")]=defaultSize}):Play();
			end);
			Btn.MouseButton1Click:Connect(function()
				pcall(options.Callback);
			end);
		end;
		Elements.Spacer = function(self, height)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\110\99\181\243\192", "\165\40\17\212\158"), Page);
			Frame.Size = UDim2.new(1, 0, 0, height or 10);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
		end;
		Elements.Label = function(self, text)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\195\203\9\62\35", "\70\133\185\104\83"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 30);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Lab = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\48\64\92\62\229\5\71\65\38", "\169\100\37\36\74"), Frame);
			Lab.Size = UDim2.new(1, 0, 1, 0);
			Lab.Text = text;
			Lab.Font = Enum.Font.GothamBold;
			Lab.TextScaled = true;
			Lab.TextColor3 = CurrentTheme.Text;
			Lab.BackgroundTransparency = 1;
			Lab.ZIndex = 5;
		end;
		Elements.CreditBox = function(self, options)
			local Frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\38\149\163\93\5", "\48\96\231\194"), Page);
			Frame.Size = UDim2.new(1, 0, 0, 80);
			Frame.BackgroundTransparency = 1;
			Frame.ZIndex = 5;
			local Label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\95\22\57\53\217\173\134\196", "\227\168\58\110\77\121\184\207"), Frame);
			Label.Text = options.Name or LUAOBFUSACTOR_DECRYPT_STR_0("\95\53\172\67\190\201\117\229\72\57\173\86\180\201", "\197\27\92\223\32\209\187\17");
			Label.Size = UDim2.new(1, 0, 0, 20);
			Label.Position = UDim2.new(0, 0, 0, 0);
			Label.Font = Enum.Font.GothamBold;
			Label.TextScaled = true;
			Label.TextColor3 = CurrentTheme.Text;
			Label.BackgroundTransparency = 1;
			Label.TextXAlignment = Enum.TextXAlignment.Center;
			Label.ZIndex = 5;
			local Box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\90\219\239\33\80\219", "\155\99\63\163"), Frame);
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
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\248\130\130\171\138\135\195", "\228\226\177\193\237\217"), Box).CornerRadius = UDim.new(0, 12);
			local CopyBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\181\59\242\22\165\55\242\59\190", "\134\84\208\67"), Frame);
			CopyBtn.Size = UDim2.new(0.5, 0, 0, 25);
			CopyBtn.Position = UDim2.new(0.25, 0, 0, 55);
			CopyBtn.BackgroundColor3 = CurrentTheme.ItemBG;
			CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\48\163\150\69\83\128\143\82\24", "\60\115\204\230");
			CopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255);
			CopyBtn.Font = Enum.Font.GothamBold;
			CopyBtn.TextScaled = true;
			CopyBtn.ZIndex = 5;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\19\200\127\245\52\238\98", "\16\135\90\139"), CopyBtn).CornerRadius = UDim.new(0, 12);
			local CopyBtnGradient = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\97\93\33\33\79\80\113\81\122\18", "\24\52\20\102\83\46\52"), CopyBtn);
			CopyBtnGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, CurrentTheme.AccentStart),ColorSequenceKeypoint.new(1, CurrentTheme.AccentEnd)});
			CopyBtnGradient.Rotation = 45;
			CopyBtn.MouseButton1Click:Connect(function()
				if setclipboard then
					pcall(function()
						setclipboard(Box.Text);
					end);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\231\32\49\45\10\192\110", "\111\164\79\65\68");
					task.wait(2);
					CopyBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\229\214\147\199\110\198\207\215\136", "\138\166\185\227\190\78");
				else
				end
			end);
		end;
		return Elements;
	end;
	WindowAPI.Init = function(self)
		local CreditsTab = WindowAPI:Tab(LUAOBFUSACTOR_DECRYPT_STR_0("\232\102\192\51\91\55\10", "\121\171\20\165\87\50\67"));
		CreditsTab:Spacer(5);
		CreditsTab:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\245\59\171\63\169\22\134\26\160\108\249\46\207\34\188\18\188\20", "\98\166\88\217\86\217"));
		CreditsTab:Spacer(10);
		CreditsTab:CreditBox({[LUAOBFUSACTOR_DECRYPT_STR_0("\216\247\116\4", "\188\150\150\25\97\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\128\76\1\3\255\222\201\108\7\30\251\223\155", "\141\186\233\63\98\108"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\227\34\189", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\120\219\157\153\172\76\63\128\141\128\172\21\127\221\141\199\184\17\63\253\129\173\177\35\65\221\221\173\170", "\118\16\175\233\233\223")});
		local SettingsTab = WindowAPI:Tab("⚙️");
		SettingsTab:Label(LUAOBFUSACTOR_DECRYPT_STR_0("\162\138\33\190\252\141\124\136\129\117\136\235\159\105\130\138\50\168", "\29\235\228\85\219\142\235"));
		SettingsTab:Dropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\19\213\183\216", "\50\93\180\218\189\23\46\71")]=LUAOBFUSACTOR_DECRYPT_STR_0("\234\172\94\65\65", "\40\190\196\59\44\36\188"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\73\221\179", "\109\92\37\188\212\154\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\234\176\215\56\84\3\252\155\247\57\95\9\234", "\58\100\143\196\163\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\75\48\183", "\110\122\34\67\195\95\41\133")]={LUAOBFUSACTOR_DECRYPT_STR_0("\94\184\85\77\150\82\180\85", "\182\21\209\59\42"),LUAOBFUSACTOR_DECRYPT_STR_0("\132\89\202\10", "\222\215\55\165\125\65")},[LUAOBFUSACTOR_DECRYPT_STR_0("\8\212\192\27\231\205\249", "\42\76\177\166\122\146\161\141")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\150\143\17\218\112\120\162\153\58\250\113\115\168\143", "\22\197\234\101\174\25")] or LUAOBFUSACTOR_DECRYPT_STR_0("\6\61\171\219\54\136\210\136", "\230\77\84\197\188\22\207\183")),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\21\202\240\142\160\243\62", "\85\153\116\166\156\236\193\144")]=function(val)
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\138\225\64\182", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\0\164\59\108\209\174\184\221", "\184\85\237\27\63\178\207\212"),[LUAOBFUSACTOR_DECRYPT_STR_0("\46\85\8\88", "\63\104\57\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\56\130\176\80\2\137\163\87\52\180\167\69\7\130", "\36\107\231\196"),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\188\172", "\231\61\213\194")]=80,[LUAOBFUSACTOR_DECRYPT_STR_0("\36\172\37", "\19\105\205\93")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\141\13\216\128\42\165\28", "\95\201\104\190\225")]=((Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\156\206\213\218\166\197\198\221\144\248\194\207\163\206", "\174\207\171\161")] or 1) * 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\206\255\1\255\250\214\238\245", "\183\141\158\109\147\152")]=function(val)
			local scale = val / 100;
			Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\31\12\242\24\37\7\225\31\19\58\229\13\32\12", "\108\76\105\134")] = scale;
			if MainFrame:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\222\236\130\226\207\231\192", "\174\139\165\209\129")) then
				MainFrame.UIScale.Scale = scale;
			end
		end});
		SettingsTab:Slider({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\178\239\196", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\67\203\57\71\2\73\13\169\31\90\12\67", "\118\38\99\137\76\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\42\4\21", "\64\157\70\101\114\105")]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\173\179\247\25\78\175\180\220\59\115\161\189\230", "\112\32\200\199\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\89\82", "\66\76\48\60\216\163\203")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\151\135\97", "\68\218\230\25\147\63\174")]=150,[LUAOBFUSACTOR_DECRYPT_STR_0("\137\47\85\77\163\161\62", "\214\205\74\51\44")]=(Library.Flags[LUAOBFUSACTOR_DECRYPT_STR_0("\201\73\246\232\126\244\75\241\195\92\201\69\248\249", "\23\154\44\130\156")] or 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function(val)
		end});
		SettingsTab:Button({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\86\243\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\136\198\43\124\235\117\151\133\223\61\57", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\89\132\238\72\89\139\233", "\130\42\56\232")]=function()
			Library:Save();
			MainFrame.Visible = false;
			if CoreGui:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\193\151\49\247\84\48\228\146\49\234", "\95\138\213\68\131\32")) then
				CoreGui.KButtonGui.Enabled = false;
			end
		end});
	end;
	return WindowAPI;
end;
return Library;
