local TowersUHave = {}
for i,v in next, game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("Session", "Search", "Inventory.Troops") do
    if v.Equipped then
        table.insert(TowersUHave, i)
    end
end
wait(1)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Project Sex Chamber PSC", "DarkTheme")
local Credits = Window:NewTab("Credits")
local Lobby = Window:NewTab("Game")
local Script = Window:NewTab("Scripts")
local turn = false
local CreditsBar = Credits:NewSection("Credits")
CreditsBar:NewLabel("TripleDomm: owner script")
CreditsBar:NewLabel("ClozZ: Testers")
CreditsBar:NewLabel("Java: Editor")
CreditsBar:NewLabel("MoneyMaker Server")
CreditsBar:NewLabel("IMPORTANT: CLICK 3 DOTS FOR INFO")

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

local Stack = Lobby:NewSection("Stacker")
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
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "TDS Player Stats | v2.0.0",
})

local Tab = Window:CreateTab("Player", 4483362458)

-- local Player = Tab:CreateSection("NAME")

local Name = Tab:CreateLabel("Name: ")
local Coins = Tab:CreateLabel("Coins: ")
local Gems = Tab:CreateLabel("Gems: ")
local Level = Tab:CreateLabel("Level: ")
local Troops = Tab:CreateLabel("Troops: ")

local Extra = Tab:CreateSection("Extra")

local Instructions = Tab:CreateParagraph({Title = "Instructions", Content = "just click on someone to see their loadout and more"})
local Credits = Tab:CreateParagraph({Title = "Credits", Content = "made by poseidon#0364 (feel free to dm for questions, comments, and concerns)"})

local players = game:GetService("Players")
local player = players.LocalPlayer

local mouse = player:GetMouse()

mouse.Button1Down:Connect(function()
    local model = mouse.Target:FindFirstAncestorOfClass('Model')
    
    if model then
        local clickedPlayer = game.Players:GetPlayerFromCharacter(model)
        
        if clickedPlayer then
            local player = game:GetService("Players")[clickedPlayer.Name]
            Name:Set("Name: " .. clickedPlayer.Name)
            -- Player:Set(clickedPlayer.Name)
            Coins:Set("Coins: " .. player['Coins']['Value'])
            Gems:Set("Gems: " .. player['Gems']['Value'])
            Level:Set("Level: " .. player['Level']['Value'])
        
            local args = {
                [1] = "Profiles",
                [2] = "Download",
                [3] = player
            }
            
            local returnedPlayer = game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
            local troopText = "Troops: "
            for i, v in pairs(returnedPlayer.Troops) do
                if i ~= 1 then
                    troopText = troopText .. ", "
                end
                troopText = troopText .. v
            end
            
            Troops:Set(troopText)
        end
    end
end)
	}
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end)

local CopyDiscordServerLink = Credits:NewSection("Copy Discord server link")
CopyDiscordServerLink:NewButton("Copy", "Why don't you even understand this?", function()
    setclipboard("https://discord.gg/82yQsEgpV8")
end)
