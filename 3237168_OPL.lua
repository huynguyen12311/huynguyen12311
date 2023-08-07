Config = {};
function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end
Instance.new("Part",game:GetService("Workspace").ISLAND)
for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
    if v.Name == "Part" then
        v.Size = Vector3.new(60, 3, 65)
        v.Position = Vector3.new(math.random(10000),20000,math.random(10000))
        v.Anchored = true
    end
end


spawn(function()


end);
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local WeponTab = Window:MakeTab({
	Name = "Wepon Spam",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MicsTab = Window:MakeTab({
	Name = "Orther",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "SKID HUB",
	Content = "SUCCESSFULLY LOADED",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Section = MicsTab:AddSection({
	Name = "Fish Farm"
})

MicsTabTab:AddToggle({
	Name = "Farm Fish",
	Default = _G.autofish,
	Callback = function(af)
		_G.autofish = af
	end    
})

local Section = MicsTab:AddSection({
	Name = "Stats Farm (very dangerous by admin)"
})

MicsTabTab:AddToggle({
	Name = "Auto Mixer",
	Default = _G.automixer,
	Callback = function(am)
		_G.automixer = am
	end    
})

Tab:AddButton({
	Name = "Safe Zone",
	Callback = function(a)
      		for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
             if v.Name == "Part" then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,10,0)
             end
end
  	end    
})
local Section = Tab:AddSection({
	Name = "Cannon Farm"
})

Tab:AddToggle({
	Name = "Cannon Ball Farm",
	
	Default = Config.cannonfarm,
	Callback = function(Value)
    Config.autofarm = Value
spawn(function()
if Config.autofarm then
while true do wait()
EquipWeapon("Cannon Ball")
end
end
end)
spawn(function()
    while task.wait(0) do
        pcall(function()
            if Config.autofarm then
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                local args = {
                    [1] = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame))
                }
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Cannon Ball").RemoteEvent:FireServer(unpack(args))
                wait(0)
                if game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall") then
                    game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:FindFirstChild("CannonBall").CanCollide = false
                end
            end
        end)
    end
end)
	wait(1)
spawn(function()
if Config.autofarm then
local plr = game.Players.LocalPlayer
local mobname = "Crab"
while task.wait(0) do 
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if (v:IsA("Model") and string.find(v.Name,mobname) and v:FindFirstChild("HumanoidRootPart")) or v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then

v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
v:FindFirstChild("HumanoidRootPart").Anchored = true
v.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-50)
  if v.Humanoid.Health == 0 then
                            v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                            v:Destroy()
                        end
end
end
end
end
end)


spawn(function()
    while true do wait()
        pcall(function()
            if Config.autofarm then
                repeat task.wait(0)
                    for i, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                        if v.Name == "CannonBall" then
                            v.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 0, -50)
                            v.CanCollide = false
                            if not v:FindFirstChild("BodyClip") then
                                local Noclip = Instance.new("BodyVelocity")
                                Noclip.Name = "BodyClip"
                                Noclip.Parent = v
                                Noclip.MaxForce = Vector3.new(100000,100000,100000)
                                Noclip.Velocity = Vector3.new(0,20,0)
                            end
                        end
                    end
                until Config.autofarm == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
            end
        end)
    end
end)

spawn(function()
    while true do wait(1)
        pcall(function()
            if Config.autofarm and game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                for i=1,2 do
                    game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(30) do
        pcall(function()
            if Config.autofarm then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name == "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while true do wait(0.1)
        pcall(function()
            if Config.autofarm then
                task.wait(0.1)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball") then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.Name ~= "Cannon" and v.Name ~= "Cannon Ball" then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while true do wait(0.1)
        pcall(function()
            if Config.autofarm then
                fireclickdetector(workspace.Island11.CentralBuilding.Doors.Button.Button.ClickDetector)
                task.wait(0)
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(0.5)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end

            end
        end)
    end
end)
	end
})
local Section = WeponTab:AddSection({
	Name = "For Yoru"
})
WeponTab:AddTextbox({
	Name = "Yoru Hit",
	Default = Value,
	TextDisappear = true,
	Callback = function(Value)
		_G.yoruhit = Value
	end	  
})

WeponTab:AddToggle({
	Name = "Fast Yoru",
	Default = false,
	Callback = function(Value)

_G.Yoru = Value

local Players = game:GetService("Players")
local Plr = Players.LocalPlayer
local Character = Plr.Character
local Yoru = Character:FindFirstChild("Yoru")
local Environment
if _G.Yoru then
while _G.Yoru do
wait()
pcall(function()
for i,v in pairs(getconnections(Yoru["RequestAnimation"].OnClientEvent)) do 
Environment = getsenv(Yoru["AnimationController"])
end
wait()
for i = 1, _G.yoruhit do
Yoru["RequestAnimation"]:FireServer(Environment.PlaceId)
end
end)
end
else
_G.Yoru = false
end
	end    
})

spawn(function() -- fish farm
    while wait(0) do
        pcall(function()
            if _G.autofish then
                wait(0.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19784, 218, 4675)
                wait(0.5)
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if string.find(v.Name, "Rod") then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                            end
                        end
                    end
                end
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if string.find(v.Name, "Rod") then
                        for _, x in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                            if string.find(x.Name, "Rod") then
                                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                    if v:FindFirstChild("Bobber") then
                                        if v.Bobber.Effect.Enabled == true then
                                            wait(0.6)
                                            local args = {
                                                [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        end
                                    elseif v.Name == "Cast" and not v:FindFirstChild("Bobber") then
                                        wait(0.6)
                                        local args = {
                                            [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                        }
                                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
                                    end
                                end
                            end
                        end
                    end
                end       
            end
        end)
    end
end)

game:GetService("Players").LocalPlayer:WaitForChild("Click"):FireServer(unpack(args))
spawn(function() -- auto mixer
    while wait() do
        pcall(function()
            if _G.automixer then
                wait(1)
                for i, v in pairs(game:GetService("Workspace").Island8.Kitchen:GetDescendants()) do
                    if v:IsA("ClickDetector") then
                        fireclickdetector(v)
                    end
                end
            end
        end)
    end
end)

