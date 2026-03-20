local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- reference the remotevent
local remoteEvent = ReplicatedStorage:WaitForChild("ButtonToConsole1")

local function onButtonPressed()
	print("Testing #456")
	remoteEvent:FireServer()
end

-- connect the button click to the function
script.Parent.MouseButton1Click:Connect(onButtonPressed)
