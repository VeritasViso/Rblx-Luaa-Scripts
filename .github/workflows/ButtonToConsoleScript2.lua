-- script to lsiten for when remote event is fired, then print the intended output to console, then send something back to client.

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = ReplicatedStorage:WaitForChild("ButtonToConsole2")

remoteEvent.OnServerEvent:Connect(function(player)
	task.wait(1)
	print("Received from client (REC).")
	task.wait(1)
	remoteEvent:FireClient(player, "(ACK) Butcher. Acknowledged.")
end)
