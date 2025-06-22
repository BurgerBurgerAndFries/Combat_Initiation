local lp = game.Players.LocalPlayer
local path = game.Workspace.Enemies
getgenv().Farm = true
local distance = 10
local function BringNPCs()
while getgenv().Farm do
local playerHRP = lp.Character:WaitForChild("HumanoidRootPart")
for _, npc in ipairs(path:GetChildren()) do
local npcHRP = npc:FindFirstChild("HumanoidRootPart")
local npcHumanoid = npc:FindFirstChild("Humanoid")
if npcHRP and npcHumanoid and npcHumanoid.Health > 0 then
npcHRP.CFrame = playerHRP.CFrame + playerHRP.CFrame.LookVector * distance
end
end
task.wait(0.1)
end
end
BringNPCs()
