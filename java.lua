local TowersUHave = {}
for i,v in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
    if v.Equipped then
        table.insert(TowersUHave, i)
    end
end
wait(1)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Javolo Hub", "DarkTheme")
local Script = Window:NewTab("Scripts")
local turn = false

local Baker = Script:NewSection("Scripts & Abilities")
Baker:NewButton("Commander Chain", "Place 3 commanders lvl 2", function(txt)
	local args = {
		loadstring(game:HttpGet("https://mmdevelopment.xyz/scripts/tdsautochain"))()
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Baker:NewButton("Skip with keybind E", "Press E to skip", function(txt)
	local args = {
		game:GetService("UserInputService").InputBegan:Connect(function(input, chatting)
if input.KeyCode == Enum.KeyCode.E and not chatting then
game.ReplicatedStorage.RemoteEvent:FireServer("Waves","Skip")
end
end)
}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Baker:NewButton("Auto Medic Macro", "Uses medics abillity", function(txt)
	local args = {
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TacoCatBackWardsIsTacoCat/scripts/main/TDS%20Auto%20Medic.lua",true))()
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Baker:NewButton("Stacker V3", "Upgrader", function(txt)
	local args = {
	loadstring(game:HttpGet("https://raw.githubusercontent.com/rrAsus/b/main/b.lua",true))()
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Baker:NewButton("Infinite Yield", "Cmd box", function(txt)
	local args = {
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",true))()
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Baker:NewButton("CMDX", "Cmd box", function(txt)
	local args = {
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Baker:NewButton("Player Stats UI TDS", "Useful for Viewing", function(txt)
	local args = {
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrAsus/c/main/c.lua",true))()
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)
