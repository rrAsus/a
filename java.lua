local TowersUHave = {}
for i,v in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
    if v.Equipped then
        table.insert(TowersUHave, i)
    end
end
wait(1)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Project Sex Chamber PSC", "DarkTheme")
local Lobby = Window:NewTab("Game")	
local Credits = Window:NewTab("Abilities")
local Script = Window:NewTab("Scripts")
local turn = false
local CreditsBar = Credits:NewSection("Abillities Tower's That do ability")

local Stack = Lobby:NewSection("Abilities CLICK ON 3 DOTS FOR INFO")
Stack:NewButton("Commander Chain", "Place 3 commanders lvl 2", function(txt)
	local args = {
		loadstring(game:HttpGet("https://mmdevelopment.xyz/scripts/tdsautochain"))()
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Skip with keybind E", "Press E to skip", function(txt)
	local args = {
		game:GetService("UserInputService").InputBegan:Connect(function(input, chatting)
if input.KeyCode == Enum.KeyCode.E and not chatting then
game.ReplicatedStorage.RemoteEvent:FireServer("Waves","Skip")
end
end)
}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Auto Medic Macro", "Uses medics abillity", function(txt)
	local args = {
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TacoCatBackWardsIsTacoCat/scripts/main/TDS%20Auto%20Medic.lua",true))()
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

local Stack = Lobby:NewSection("Stacker Tower's that shoot")
Stack:NewButton("Accelerator", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Accelerator",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Ace Pilot", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Ace Pilot",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Archer", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Archer",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Commander", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Commander",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Cowboy", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Cowboy",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Crook Boss", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Crook Boss",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Demoman", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Demoman",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("DJ Booth", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "DJ Booth",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Electroshocker", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Electroshocker",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Engineer", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Engineer",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Executioner", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Executioner",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Elf Camp", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Elf Camp",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Farm", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Farm",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Freezer", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Freezer",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Hunter", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Hunter",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Military Base", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Military Base",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Medic", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Medic",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Militant", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Militant",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Minigunner", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Minigunner",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Mortar", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Mortar",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Paintballer", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Paintballer",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Pursuit", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Pursuit",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Pyromancer", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Pyromancer",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Ranger", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Ranger",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Rocketeer", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Rocketeer",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Scout", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Scout",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Shotgunner", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Shotgunner",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Sniper", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Sniper",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Soldier", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Soldier",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Toxic Gunner", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Toxic Gunner",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

Stack:NewButton("Turret", "Make sure u stand in the position u want to place", function(txt)
	local args = {
		[1] = "Troops",
		[2] = "Place",
		[3] = "Turret",
		[4] = {
			["Rotation"] = CFrame.new(0,5,0,0,90,0,0,0,0,0,0,0),
			["Position"] = game.Players.LocalPlayer.character.HumanoidRootPart.Position - Vector3.new(0,5,0)
		}
	}

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

local Baker = Script:NewSection("Scripts")
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
