-- update the textbox in real-time with the WalkSpeed value.

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character

if not character or character.Parent == nil then
	character = player.CharacterAdded:Wait()
end

local textLabel = script.Parent
local humanoid = character:WaitForChild("Humanoid")
local HumanoidWalkSpeed = humanoid.WalkSpeed

textLabel.Text = HumanoidWalkSpeed .. " studs/s"
