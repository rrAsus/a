local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Javolo Hub TDS", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "General",
	Icon = "rbxassetid://",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Scripts"
})

Tab:AddButton({
	Name = "Auto Commander Chain",
	Callback = function()
        loadstring(game:HttpGet("https://mmdevelopment.xyz/scripts/tdsautochain"))()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "Auto Medic Macro",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TacoCatBackWardsIsTacoCat/scripts/main/TDS%20Auto%20Medic.lua",true))()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "Skip With E",
	Callback = function()
        game:GetService("UserInputService").InputBegan:Connect(function(input, chatting)
            if input.KeyCode == Enum.KeyCode.E and not chatting then
            game.ReplicatedStorage.RemoteEvent:FireServer("Waves","Skip")
            end
            end)
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "Stacker V3",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrAsus/b/main/b.lua",true))()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "Sell Farms At 40 , 50",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrAsus/d/main/d",true))()
  	end    
})

Tab:AddButton({
	Name = "Infinite Yield FE",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
  	end    
})

Tab:AddButton({
	Name = "CMD X FE",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
  	end    
})

Tab:AddButton({
	Name = "Player Stats ",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrAsus/c/main/c.lua",true))()
      		print("button pressed")
  	end    
})

local Tab2 = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://",
	PremiumOnly = false
})

local Section = Tab2:AddSection({
	Name = "Credits"
})

Tab2:AddLabel("Script Owner : FakeBadger (Java) or (Javolo)")
Tab2:AddLabel("Testing : ClozzMane")
Tab2:AddLabel("And You For Using It")

OrionLib:Init()
