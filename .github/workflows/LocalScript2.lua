local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- reference the remote function
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local remoteEvent = ReplicatedStorage:WaitForChild("ButtonToConsole2")

local function onButtonPressed()
	print(player.Name .. " pressed the 2nd button (REQ).")
	remoteEvent:FireServer()
end

-- connect the button click to the function
script.Parent.MouseButton1Click:Connect(onButtonPressed)
remoteEvent.OnClientEvent:Connect(print)
