-- PROPERTY OF @VeritasViso

-- budget grav coil, needs to change a player's gravity when holding.

local budgetGravCoil = script.Parent

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character -- all the neccessary variables

local function onEquipped(_mouse) -- for when the tool is equipped
	local humanoid = character:FindFirstChild("Humanoid")
	humanoid.JumpHeight = 60
	print(player.Name .. " is holding the BUDGET grav coil.")
end

local function onUnequipped(_mouse) --  for when the tool is unequipped
	local humanoid = character:FindFirstChild("Humanoid")
	humanoid.JumpHeight = 7.2
	print(player.Name .. " unequipped the budgetGravCoil.")
end

budgetGravCoil.Equipped:Connect(onEquipped) -- connecting the code
budgetGravCoil.Unequipped:Connect(onUnequipped) -- connecting the code
