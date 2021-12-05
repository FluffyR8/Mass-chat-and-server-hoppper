getgenv().PlaceId = 6488220605
getgenv().Message = "DM Fluffyy# 6542 for the best underrated exploits!"

repeat wait() until game:IsLoaded()
repeat wait() until game.Players.LocalPlayer.Character

wait(1)

local A_1 = getgenv().Message
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
for i = 1, 3 do
    Event:FireServer(A_1, A_2)
end

wait(1)

local suc, err = pcall(function()
    game:GetService('TeleportService'):Teleport(getgenv().PlaceId)
end)

if err then
    error("Teleport failed.")
end