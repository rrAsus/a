local function InitChangeLog(Settings)
	assert(typeof(Settings) == "table", "Invalid argument #1 (table expected)");
	assert(typeof(Settings.News) == "table", "Invalid format to 'Settings.News' (table expected)");
	assert(typeof(Settings.MainText) == "string", "Invalid format to 'Settings.MainText' (string expected)");
	assert(typeof(Settings.Title) == "string", "Invalid format to 'Settings.MainText' (string expected)");
	Settings.DelayToDestroy = Settings.DelayToDestroy;
	if (Settings.DelayToDestroy == nil) then
		Settings.DelayToDestroy = 15;
	end
	local function Create(Class, Properties)
		local _Instance = Class;
		if (type(Class) == "string") then
			_Instance = Instance.new(Class);
		end
		for Property, Value in pairs(Properties) do
			_Instance[Property] = Value;
		end
		return _Instance;
	end
	local TextBoundsCache = {};
	local function GetTextBounds(Text, Font, Size, Resolution)
		local TextService = game:GetService("TextService");
		if not TextService then
			return 0, 0;
		end
		Text = Text:gsub("<br/>", "\n");
		local CleanText = Text:gsub("<[^>]+>", "");
		if not TextBoundsCache[CleanText] then
			local Bounds = TextService:GetTextSize(CleanText, Size, Font, Resolution or Vector2.new(1920, 1080));
			TextBoundsCache[CleanText] = Bounds;
		end
		return TextBoundsCache[CleanText].X, TextBoundsCache[CleanText].Y;
	end
	local Prompt = Create("ScreenGui", {Name="Prompt",Parent=((gethui and gethui()) or game.CoreGui),DisplayOrder=100,ResetOnSpawn=false});
	local Main = Create("Frame", {Name="Main",Parent=Prompt,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundColor3=Color3.fromRGB(25, 25, 25),BorderSizePixel=0,Position=UDim2.new(0.199853599, 0, 0.858749986, 0),Size=UDim2.new(0, 500, 0, 187),Visible=false});
	local Title = Create("TextLabel", {Name="Title",Parent=Main,BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,Position=UDim2.new(0, 20, 0, 19),Size=UDim2.new(0, 220, 0, 16),Font=Enum.Font.GothamMedium,Text="New Documentation Available",TextColor3=Color3.fromRGB(240, 240, 240),TextScaled=true,TextSize=14,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left});
	local UICorner = Create("UICorner", {CornerRadius=UDim.new(0, 9),Parent=Main});
	local Shadow = Create("Frame", {Name="Shadow",Parent=Main,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,Position=UDim2.new(0.5, 0, 0.5, 0),Size=UDim2.new(1, 35, 1.09625673, 35),ZIndex=0});
	local Image = Create("ImageLabel", {Name="Image",Parent=Shadow,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,Position=UDim2.new(0.5, 0, 0.5, 0),Size=UDim2.new(1.60000002, 0, 1.29999995, 0),ZIndex=0,Image="rbxassetid://5587865193",ImageColor3=Color3.fromRGB(20, 20, 20),ImageTransparency=0.5});
	local NoteTitle = Create("TextLabel", {Name="NoteTitle",Parent=Main,BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,Position=UDim2.new(0.449999988, 0, 0.858796775, 0),Size=UDim2.new(0, 258, 0, 12),Font=Enum.Font.GothamMedium,Text="This will disappear in the next 15 seconds",TextColor3=Color3.fromRGB(150, 150, 150),TextScaled=true,TextSize=14,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Right});
	local From = Create("TextLabel", {Name="From",Parent=Main,BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,Position=UDim2.new(0.0460000001, 0, 0.858796954, 0),Size=UDim2.new(0, 156, 0, 12),Font=Enum.Font.GothamMedium,Text=(Settings.From or "- Metas (Lead Developer)"),TextColor3=Color3.fromRGB(80, 80, 80),TextScaled=true,TextSize=14,TextWrapped=true,TextXAlignment=Enum.TextXAlignment.Left,Visible=(Settings.From ~= nil)});
	local Content = Create("ScrollingFrame", {Name="Content",Parent=Main,AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,Position=UDim2.new(0.0399999991, 0, 0.5, 0),Selectable=false,Size=UDim2.new(0, 462, 0, 105),BottomImage="",CanvasSize=UDim2.new(0, 0, 0, 0),ScrollBarThickness=6,TopImage="",AutomaticCanvasSize="Y"});
	local MainText = Create("TextLabel", {Name="MainText",Parent=Content,BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=1,Size=UDim2.new(0, 340, 0, 105),Font=Enum.Font.GothamMedium,Text='This script is using an <b>outdated version of the library</b>, the creator needs to update the script to the newest documentation on our website or github page.<br/><br/><br/>https://github.com/UI-Interface/CustomField<br/><font color="rgb(0,155,225)">https://arraydocumentation.vercel.app/en/introduction</font>',TextColor3=Color3.fromRGB(200, 200, 200),TextSize=13,TextWrapped=true,RichText=true,TextXAlignment=Enum.TextXAlignment.Left});
	local Open = Create("TextButton", {Name="Open",Parent=MainText,AnchorPoint=Vector2.new(0, 1),BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,Position=UDim2.new(0, 0, 1, -5),Size=UDim2.new(0, 340, 0, 30),Font=Enum.Font.SourceSans,Text="",TextColor3=Color3.fromRGB(0, 0, 0),TextSize=1,TextTransparency=1});
	local UIListLayout = Create("UIListLayout", {Parent=Content,SortOrder=Enum.SortOrder.LayoutOrder,FillDirection=Enum.FillDirection.Vertical,HorizontalAlignment=Enum.HorizontalAlignment.Left,VerticalAlignment=Enum.VerticalAlignment.Top});
	local Changelogs = Create("Frame", {Name="Changelogs",Parent=Content,BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=2,Size=UDim2.new(1, 0, 0, 100)});
	local Title_2 = Create("TextLabel", {Name="Title",Parent=Changelogs,BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-1,Size=UDim2.new(0, 200, 0, 16),Font=Enum.Font.GothamBold,Text="Changelogs",TextColor3=Color3.fromRGB(200, 200, 200),TextSize=16,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top});
	local UIListLayout_2 = Create("UIListLayout", {Parent=Changelogs,SortOrder=Enum.SortOrder.LayoutOrder,FillDirection=Enum.FillDirection.Vertical,HorizontalAlignment=Enum.HorizontalAlignment.Left,VerticalAlignment=Enum.VerticalAlignment.Top,Padding=UDim.new(0, 5)});
	local X, Y = GetTextBounds(Settings.MainText, Enum.Font.GothamMedium, 13);
	MainText.Size = UDim2.new(0, 340, 0, Y + 30);
	MainText.Text = Settings.MainText;
	Title.Text = Settings.Title;
	for i, v in next, Settings.News do
		wait();
		local newsLabel = Create("TextLabel", {Name="New",Parent=Changelogs,BackgroundColor3=Color3.fromRGB(255, 255, 255),BackgroundTransparency=1,BorderSizePixel=0,Size=UDim2.new(0, 200, 0, 12),Font=Enum.Font.Gotham,Text=v,TextColor3=Color3.fromRGB(225, 225, 225),TextSize=13,RichText=true,TextXAlignment=Enum.TextXAlignment.Left,TextYAlignment=Enum.TextYAlignment.Top});
		local textBoundsX, textBoundsY = GetTextBounds(v, Enum.Font.Gotham, 13);
		if (textBoundsX > 200) then
			local wrappedText = "";
			local words = v:gmatch("%S+");
			local line = "";
			for word in words do
				if ((#line + #word + 1) <= 60) then
					line = line .. word .. " ";
				else
					wrappedText = wrappedText .. line .. "\n";
					line = word .. " ";
				end
			end
			wrappedText = wrappedText .. line;
			newsLabel.Text = wrappedText;
			textBoundsX, textBoundsY = GetTextBounds(wrappedText, Enum.Font.Gotham, 13);
		end
		newsLabel.Size = UDim2.new(0, 200, 0, textBoundsY + 5);
	end
	local totalNewsHeight = UIListLayout_2.AbsoluteContentSize.Y;
	Changelogs.Size = UDim2.new(1, 0, 0, totalNewsHeight);
	local script = Instance.new("LocalScript", Prompt);
	local TweenService = game:GetService("TweenService");
	local Prompt = script.Parent.Main;
	Prompt.BackgroundTransparency = 1;
	Prompt.BackgroundColor3 = Color3.fromRGB(150, 150, 150);
	Prompt.Size = UDim2.fromOffset(478, 178);
	Prompt.Shadow.Image.ImageTransparency = 1;
	Prompt.Content.ScrollBarImageTransparency = 1;
	Prompt.Content.MainText.TextTransparency = 1;
	Prompt.From.TextTransparency = 1;
	Prompt.Title.TextTransparency = 1;
	Prompt.NoteTitle.TextTransparency = 1;
	for _, Label in pairs(Prompt.Content.Changelogs:GetChildren()) do
		if Label:IsA("TextLabel") then
			Label.TextTransparency = 1;
		end
	end
	Prompt.Visible = true;
	wait(2);
	TweenService:Create(Prompt, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.fromOffset(500, 187),BackgroundTransparency=0,BackgroundColor3=Color3.fromRGB(25, 25, 25)}):Play();
	wait(0.2);
	TweenService:Create(Prompt.Title, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0}):Play();
	wait(0.05);
	TweenService:Create(Prompt.NoteTitle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0}):Play();
	wait(0.05);
	TweenService:Create(Prompt.From, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0}):Play();
	wait(0.05);
	TweenService:Create(Prompt.Content.MainText, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0}):Play();
	wait(0.05);
	for _, Label in pairs(Prompt.Content.Changelogs:GetChildren()) do
		if Label:IsA("TextLabel") then
			TweenService:Create(Label, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=0}):Play();
			wait(0.05);
		end
	end
	TweenService:Create(Prompt.Content, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ScrollBarImageTransparency=0}):Play();
	wait(1);
	for i = Settings.DelayToDestroy, 0, -1 do
		Prompt.NoteTitle.Text = string.format("This will disappear in the next %i seconds", i);
		wait(1);
	end
	Prompt.NoteTitle.Text = "Closing...";
	for _, Label in pairs(Prompt.Content.Changelogs:GetChildren()) do
		if Label:IsA("TextLabel") then
			TweenService:Create(Label, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=1}):Play();
			wait(0.05);
		end
	end
	TweenService:Create(Prompt.Content, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ScrollBarImageTransparency=1}):Play();
	TweenService:Create(Prompt.Content.MainText, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=1}):Play();
	wait(0.05);
	TweenService:Create(Prompt.From, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=1}):Play();
	wait(0.05);
	TweenService:Create(Prompt.NoteTitle, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=1}):Play();
	wait(0.05);
	TweenService:Create(Prompt.Title, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency=1}):Play();
	wait(0.05);
	TweenService:Create(Prompt, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size=UDim2.fromOffset(500, 187),BackgroundTransparency=1,BackgroundColor3=Color3.fromRGB(200, 200, 200)}):Play();
	wait(0.2);
end
InitChangeLog({News={"[+] Changed To A Better UI.","[=] Currently Trying To Fix Search.","[=] Currently Trying To Fix Avatar Headshot Icons.","[=] According to me the Open Keybind is UnFixable.","[+] New Change Log UI.","[=] Discord Link Is In Credits!.","[=] Please Bug Report If You Encounter Any Bugs!!"},Title="Javolo Hub Universal",MainText='Make Sure to join our <b>Discord Server</b>.<br/><font color="rgb(0,155,225)">https://discord.gg/PhEH8uh9pR</font>',DelayToDestroy=6,From="FakeBadger (Script Owner)"});
