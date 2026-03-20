-- script to listen for when remoteevent is fired, then print the intended output to the console

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = ReplicatedStorage:WaitForChild("ButtonToConsole1")

remoteEvent.OnServerEvent:Connect(function(player) -- ServerEvent = "I'm listneing for the message!". Connect() is how you attach code to any event.
	print(player.Name .. " pressed the button!")
end)
