-- When character loads, walkspeed is changed.

-- need to find humanoid inside the character to do it.

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local character = player.Character

if not character or character.Parent == nil then
	character = player.CharacterAdded:Wait()
end

local function onCharacterAdded(character)
	print(character.Name .. " has spawned.")
	local humanoid = character:FindFirstChild("Humanoid")
	local ranSpeed = math.random(1, 1000)
	if humanoid then
		print("found humanoid")
		humanoid.WalkSpeed = ranSpeed
		print(ranSpeed .. " studs/s")
	else
		print("No humanoid found")
	end
end

local function onCharacterRemoving(character)
	print(character.Name .. " is despawning.")
end

local function onPlayerAdded(player)
	player.CharacterAdded:Connect(onCharacterAdded)
	player.CharacterRemoving:Connect(onCharacterRemoving)
end

onCharacterAdded(character)
player.CharacterAdded:Connect(onCharacterAdded)
