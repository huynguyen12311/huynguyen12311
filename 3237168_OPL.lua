for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
    if string.find(v.Name,"Base") then
        v:Destroy()
    end
end
local Base1 = Instance.new("Part",game:GetService("Workspace").ISLAND) Base1.Name = "Base1"
local Base2 = Instance.new("Part",game:GetService("Workspace").ISLAND) Base2.Name = "Base2"
for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
    if v.Name == "Base1" then
        v.Size = Vector3.new(60, 3, 65)
        v.Position = Vector3.new(math.random(150000,200000),20000,math.random(150000,200000))
        v.Anchored = true
    end
    if v.Name == "Base2" then
        v.Size = Vector3.new(2,1,2)
        v.Position = Vector3.new(188679, 210, 176128)
        v.Anchored = true
    end
end
game:GetService("Players").LocalPlayer.PlayerGui.Menu.Frame.C.Frame.Nametag.Text = "GOD HUB ON THE TOP \ndiscord.gg/2rHrfe637z"
local plr = game.Players.LocalPlayer
local remotes = {}
    local azc
    azc=hookmetamethod(game,"__namecall",function(self,...)
        local args = {...}
        local method = getnamecallmethod()
        if method == "FireServer" or method == "InvokeServer" then
            if self.Name == "RemoteEvent" and args[3] == "StopCharging" then
                remotes[self.Name] = args[1]
                return azc(self,unpack(args))
            end
        end
          return azc(self,...)
    end)
    
    function serializeTable(val, name, skipnewlines, depth)
    skipnewlines = skipnewlines or false
    depth = depth or 0
 
    local tmp = string.rep("", depth)
 
    if name then tmp = tmp end
 
    if type(val) == "table" then
        tmp = tmp .. (not skipnewlines and "" or "")
 
        for k, v in pairs(val) do
            tmp =  tmp .. serializeTable(v, k, skipnewlines, depth + 1) .. (not skipnewlines and "" or "")
        end
 
        tmp = tmp .. string.rep("", depth) 
    elseif type(val) == "number" then
        tmp = tmp .. tostring(val)
    elseif type(val) == "string" then
        tmp = tmp .. string.format("%q", val)
    elseif type(val) == "boolean" then
        tmp = tmp .. (val and "true" or "false")
    elseif type(val) == "function" then
        tmp = tmp  .. "func: " .. debug.getinfo(val).name
    else
        tmp = tmp .. tostring(val)
    end
 
    return tmp
 end
--- ANTI AFK
local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

repeat
    wait()
until game:IsLoaded()

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
    local a
    a=hookmetamethod(game,"__namecall",function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" or method == "InvokeServer" then
        if self.Name == "RemoteEvent" and args[3] == "StopCharging" and Config.autoskillvip or _G.autoskillvip then
            args[6] = 100
            return a(self,unpack(args))
        end
    end
      return a(self,...)
    end)
local Players = game:GetService("Players")
local BlacklistedPlayers = {
    "Oblivic",
    "BowTiedPony",
    "Bige0n",
    "Farquanetta",
    "icydragonwingsis",
    "trashpanda2361",
    "MarcusVetarus",
    "ElianJoestar",
    "Quixotize",
    "CudlesstheCat",
    "FoxKingFab",
    "Tiptop98",
    "vlonedd",
    "VortexFragmented",
    "Natsudragn331",

}

for i, v in pairs(Players:GetPlayers()) do 
    if table.find(BlacklistedPlayers, v.Name) then 
        Players.LocalPlayer:Kick(v.Namw)
    end
end

Players.PlayerAdded:Connect(function(v)
    if table.find(BlacklistedPlayers, v.Name) then 
        Players.LocalPlayer:Kick(v.name)
    end
end)

local GC = getconnections
for i, v in pairs(GC(game.Players.LocalPlayer.Idled)) do
    v:Disable()
end


Config = {};
function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end
function ATTACK()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end




spawn(function()


end);
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "GoD Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "SKID HUB",
	Content = "SUCCESSFULLY LOADED",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "ANTI AFK ACTIVATED",
	Content = "SUCCESSFULLY LOADED",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Tab:AddButton({
	Name = "Safe Zone",
	Callback = function(a)
      		for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
             if v.Name == "Base1" then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,10,0)
             end
end
  	end    
})
local Section = Tab:AddSection({
	Name = "Stats Farm"
})
Tab:AddToggle({
Name = "Auto Stats Farm",

Default = Config.mixer,
Callback = function(Value)
	Config.mixer = Value
	
_G.drink = true
_G.drinkcheck = false
spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                if _G.drink and _G.drinkcheck then
                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Milk") or string.find(v.Name, "Cider") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Smoothie") or string.find(v.Name, "Golden") then
                                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        end
                    end
                end
            end)
        end
    end)
end)
spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                if Config.mixer then
                    pcall(function()
                        if _G.drink == true then
                                                    for i,v in pairs(game.Workspace:GetChildren()) do 
                                if v.ClassName == "Tool" then
                                    v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                end
                                                    end
                        wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12, 216, -351)
                            wait(0.2)
                                                        for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 216, -378)
                            wait(0.2)
                                                        for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-114, 216, -750)
                            wait(0.2)
                                                                                    for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-133, 216, -710)
                            wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-204, 224, -206)
                                                        wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1754, 217, -327)
                                                                                    wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1706, 217, -326)
                                                                                                                wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1754, 216, -217)
                                                                                                                                            wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1550, 217, -307)
                                                                                                                                                                        wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1494, 217, -306)
wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1493, 217, -290)
wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1871, 218, 823)
                            wait(0.2)
                                                                                                                for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1858, 218, 814)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1882, 219, 838)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1989, 235, 568)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1970, 219, 576)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1989, 218, 561)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1981, 217, 553)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1517, 217, -289)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1186, 217, -285)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1173, 217, -286)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1009, 220, 3342)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2601, 254, 1111)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2618, 254, 1110)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(989, 224, -3337)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 216, 3409)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(882, 218, 3364)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1167, 219, 3228)
wait(0.2)
     for i,v in pairs(game:GetService("Workspace").Barrels.Crates:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            
                            for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end

                            wait(2)
                            for i,v in pairs(game:GetService("Workspace").Island8.Kitchen:GetDescendants()) do
                                if v:IsA("ClickDetector") then
                                fireclickdetector(v)
                                end
                            end
                            wait(7)
                            _G.drinkcheck = true
                            end
                    end)
                end
            end)
        end
    end)
	end)
end
})

local Section = Tab:AddSection({
	Name = "Cannon Farm"
})

	Tab:AddToggle({
		Name = "Cannon Ball Farm Mob(Fast)",
		
		Default = Config.cannonfarm,
		Callback = function(Value)
	    Config.cannonfarm = Value
	


        spawn(function()
            while task.wait(0) do
                pcall(function()
                    if Config.cannonfarm then
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v.ClassName == "Tool" then
                                    v:Destroy()
                                end
                            end
                            wait(1)
                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball")  then
                                for i=1,4 do
                                    game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                                end
                            end
                        repeat wait(0.25)
                            local toolname = "Cannon Ball"
                            local Plr = game:GetService("Players").LocalPlayer
                            wait(1)
                            if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                                local tool = Plr.Backpack:FindFirstChild(toolname)
                                Plr.Character.Humanoid:EquipTool(tool)
                            end
                            wait(2)
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                        until Config.cannonfarm == false
                        
                    end
                end)
            end
        end)
        
        
        
        
        spawn(function()
        while task.wait(0) do
        pcall(function()
            if Config.cannonfarm then
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
        
        spawn(function()
        while task.wait(0) do
        pcall(function()
            if Config.cannonfarm then
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
                until Config.cannonfarm == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
            end
        end)
        end
        end)
        
        
        
        
        
        spawn(function()
        while task.wait(0) do
        pcall(function()
            if Config.cannonfarm then
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
        while wait(0) do
        pcall(function()
            if Config.cannonfarm then
                fireclickdetector(workspace.Island11.CentralBuilding.Doors.Button.Button.ClickDetector)
                task.wait(0)
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(2)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(2)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
        
            end
        end)
        end
        end)
        spawn(function() -- autofarm cannon
            while wait(0) do
                pcall(function()
                    if Config.cannonfarm then
                        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if string.find(v.Name, " Boar")
                            and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                                v:FindFirstChild("HumanoidRootPart").Anchored = true
                                v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-50)
                                if v.Humanoid.Health == 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                                    v:Destroy()
                                end
                             end
                        end
                        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if string.find(v.Name, "Crab")
                            and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                                --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                                v.HumanoidRootPart.Transparency = 0.9
                                v:FindFirstChild("HumanoidRootPart").Anchored = true
                                v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-50)
                                if v.Humanoid.Health == 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                                    v:Destroy()
                                end
                             end
                        end
                        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if string.find(v.Name, "Angry ") 
                            or string.find(v.Name, "Bandit") 
                            or string.find(v.Name, "Thief")
                            or string.find(v.Name, "Bruno") 
                            or string.find(v.Name, "Bucky") 
                            or string.find(v.Name, " Vokun") 
                            or string.find(v.Name, "Freddy")  
                            or string.find(v.Name, "Cave ") 
                            or string.find(v.Name, "Thug") 
                            or string.find(v.Name, "Gunslinger")
                            or string.find(v.Name, "Gunner") 
                            or string.find(v.Name, "Buster") 
                            and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                                v:FindFirstChild("HumanoidRootPart").Anchored = true
                                v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-50)
                                if v.Humanoid.Health == 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                                    v:Destroy()
                                end
                                if v.Humanoid.Health == 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end)
            end
        end)
        


	end
})
Tab:AddToggle({
	Name = "Cannon Ball Farm Mob(Slow)",
	
	Default = Config.cannonslow,
	Callback = function(Value)
        Config.cannonslow = Value
        spawn(function()
            while task.wait(0) do
                pcall(function()
                    if Config.cannonslow then
                        local toolname = "Cannon Ball"
                        local Plr = game:GetService("Players").LocalPlayer
                        wait(0.5)
                        if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                            local tool = Plr.Backpack:FindFirstChild(toolname)
                            Plr.Character.Humanoid:EquipTool(tool)
                        end
                    end
                end)
            end
        end)
        spawn(function()
            while task.wait(0) do
                pcall(function()
                    if Config.cannonslow then
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
        
        spawn(function()
            while task.wait(0) do
                pcall(function()
                    if Config.cannonslow then
                        repeat task.wait(0)
                            for i, v in pairs(game.workspace.ResourceHolder["Resources_" .. game.Players.LocalPlayer.UserId]:GetChildren()) do
                                if v.Name == "CannonBall" then
                                    v.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0, 0,-50)
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
                        until Config.cannonslow == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
                    end
                end)
            end
        end)
        
        spawn(function()
            while task.wait(0) do
                pcall(function()
                    if Config.cannonslow then
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
            while wait(0) do
                pcall(function()
                    if Config.cannonslow then
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
        spawn(function() -- autofarm cannon
            while wait(0) do
                pcall(function()
                    if Config.cannonslow then
                        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if string.find(v.Name, " Boar")
                            and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                                v:FindFirstChild("HumanoidRootPart").Anchored = true
                                v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-50)
                                if v.Humanoid.Health == 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                                    v:Destroy()
                                end
                             end
                        end
                        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if string.find(v.Name, "Crab")
                            and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                                --v.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                                v.HumanoidRootPart.Transparency = 0.9
                                v:FindFirstChild("HumanoidRootPart").Anchored = true
                                v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-50)
                                if v.Humanoid.Health == 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                                    v:Destroy()
                                end
                             end
                        end
                        for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if string.find(v.Name, "Angry ") 
                            or string.find(v.Name, "Bandit") 
                            or string.find(v.Name, "Thief")
                            or string.find(v.Name, "Bruno") 
                            or string.find(v.Name, "Bucky") 
                            or string.find(v.Name, " Vokun") 
                            or string.find(v.Name, "Freddy")  
                            or string.find(v.Name, "Cave ") 
                            or string.find(v.Name, "Thug") 
                            or string.find(v.Name, "Gunslinger")
                            or string.find(v.Name, "Gunner") 
                            or string.find(v.Name, "Buster") 
                            and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                                v:FindFirstChild("HumanoidRootPart").Anchored = true
                                v:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-50)
                                if v.Humanoid.Health == 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                                    v:Destroy()
                                end
                                if v.Humanoid.Health == 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(0, 0, 0)
                                    v:Destroy()
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
})
Tab:AddToggle({
	Name = "Cannon Ball Kill All Player",
	
	Default = Config.autocannonplr,
	Callback = function(Value)
    Config.autocannonplr = Value
 
spawn(function() -- autofarm teleport cannon
    while wait(0) do
        pcall(function()
            if Config.autocannonplr then
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        v.Character.HumanoidRootPart.Transparency = 0.9
                    	v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                        v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-50)
                        if v.Character.Humanoid.Health == 0 then
                            v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                            v.Character.HumanoidRootPart.Transparency = 1
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(0) do
        pcall(function()
            if Config.autocannonplr then
                    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ClassName == "Tool" then
                            v:Destroy()
                        end
                    end
                    wait(1)
                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball")  then
                        for i=1,4 do
                            game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                        end
                    end
                repeat wait(0.25)
                    local toolname = "Cannon Ball"
                    local Plr = game:GetService("Players").LocalPlayer
                    wait(1)
                    if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                        local tool = Plr.Backpack:FindFirstChild(toolname)
                        Plr.Character.Humanoid:EquipTool(tool)
                    end
                    wait(2)
                    game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                until Config.autocannonplr == false
                
            end
        end)
    end
end)




spawn(function()
while task.wait(0) do
pcall(function()
    if Config.autocannonplr then
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

spawn(function()
while task.wait(0) do
pcall(function()
    if Config.autocannonplr then
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
        until Config.autocannonplr == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
    end
end)
end
end)





spawn(function()
while task.wait(0) do
pcall(function()
    if Config.autocannonplr then
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
while wait(0) do
pcall(function()
    if Config.autocannonplr then
        fireclickdetector(workspace.Island11.CentralBuilding.Doors.Button.Button.ClickDetector)
        task.wait(0)
        if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
            wait(2)
            game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
        end
        if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
            wait(2)
            game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
        end

    end
end)
end
end)
    end
})
local Section = Tab:AddSection({
	Name = "For Yoru"
})

Tab:AddSlider({
	Name = "Multi Damage YOru",
	Min = 0,
	Max = 100,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "hits",
	Callback = function(Value)
		_G.yoruhits = Value
	end    
})
Tab:AddToggle({
	Name = "Fast Yoru",
	Default = false,
	Callback = function(Value)

    _G.Yoru = Value

local Yoru = plr.Character:FindFirstChild("Yoru")
local Environment

        local Yoru = plr.Character:FindFirstChild("Yoru")
        local Environment
while _G.Yoru do
    if _G.Yoru then
    ATTACK()
    end
    wait()
    pcall(function()
    for i,v in pairs(getconnections(Yoru["RequestAnimation"].OnClientEvent)) do 
        Environment = getsenv(Yoru["AnimationController"])
    end
        wait()
    for i = 1, _G.yoruhits do
    Yoru["RequestAnimation"]:FireServer(Environment.PlaceId)
    end
    end)
    wait(_G.cdyoru)
    end
	end    
})
Tab:AddTextbox({
	Name = "Cooldown Fast Yoru",
	Default = Value,
	TextDisappear = true,
	Callback = function(Value)
		_G.cdyoru = Value
	end	  
})


Tab2:AddToggle({
	Name = "Anti Spam(Telport )",
	Default = Config.antispam,
	Callback = function(Value)
	Config.antispam = Value
	if Config.antispam then
spawn(function() --
while task.wait(0) do
    pcall(function()
        if Config.antispam  then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new((math.random(-1000000, 1000000)), (math.random(500000, 1000000)), (math.random(-1000000, 1000000)))
        end
    end)
end
end)

end
	end
})
Tab2:AddToggle({
	Name = "Auto 100% Skill",
	
	Default = Config.autoskillvip,
	Callback = function(Value)
    Config.autoskillvip = Value
    
    end
})

Tab3:AddDropdown({
	Name = "Choose Island",
	Default = "1",
	Options = {"Grassy","Snowy Mountains","Pursuer's Island","Bar","Cliffs","Windmill", "Cave","Krizma","Pirate","Green","Trees","Pyramid","Package","Snowy","Mountain", "Marine Ford","Sand Castle", "Forest","Evil",
"Crescent","Islands","Town","Rocky","Palm","Sand","Sand 2","Small","Tiny","Super Tiny","Grass","Atlar","Safe Place"},
	Callback = function(t)
		getgenv().tpisland = t 
     if getgenv().tpisland == "Grassy" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(737, 241, 1209)
       elseif getgenv().tpisland == "Snowy Mountains"  then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(6501, 408, -1261)
       elseif getgenv().tpisland == "Pursuer's Island" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(4847, 570, -7143)
       elseif getgenv().tpisland == "Bar" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(1522, 260, 2188)
       elseif getgenv().tpisland == "Cliffs" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(4598, 217, 4964)
       elseif getgenv().tpisland == "Windmill" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 224, -91)
       elseif getgenv().tpisland == "Cave" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 217, -831)
       elseif getgenv().tpisland == "Krizma" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1109, 341, 1645)
       elseif getgenv().tpisland == "Pirate" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1283, 218, -1348)
       elseif getgenv().tpisland == "Green" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2727, 253, 1041)
       elseif getgenv().tpisland == "Trees" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(1068, 217, 3351)
       elseif getgenv().tpisland == "Pyramid" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(118, 216, 4773)
       elseif getgenv().tpisland == "Package" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1668, 217, -300)
       elseif getgenv().tpisland == "Snowy" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1896, 222, 3385)
       elseif getgenv().tpisland == "Mountain" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(2052, 488, -701)
       elseif getgenv().tpisland == "Marine Ford" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-3164, 296, -3780)
       elseif getgenv().tpisland == "Sand Castle" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(1020, 224, -3277)
       elseif getgenv().tpisland == "Forest" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5781, 216, 114)
       elseif getgenv().tpisland == "Evil" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-5169, 523, -7803)
       elseif getgenv().tpisland == "Crescent" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(3193, 357, 1670)
       elseif getgenv().tpisland == "Islands" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4319, 245, 5252)
       elseif getgenv().tpisland == "Town" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(1818, 218, 755)
       elseif getgenv().tpisland == "Rocky" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 229, 2149)
       elseif getgenv().tpisland == "Palm" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(766, 216, -1374)
       elseif getgenv().tpisland == "Sand" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-2747, 216, -942)
       elseif getgenv().tpisland == "Sand 2" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(162, 216, -2265)
       elseif getgenv().tpisland == "Small" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(1237, 240, -244)
       elseif getgenv().tpisland == "Tiny" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1235, 223, 623)
       elseif getgenv().tpisland == "Super Tiny" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4007, 216, -2190)
       elseif getgenv().tpisland == "Grass" then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(2096, 217, -1884)
       elseif getgenv().tpisland == "Atlar" then
         plr.Character.HumanoidRootPart.CFrame = game.workspace.Altar.RecepticalEffect.CFrame * CFrame.new(0, 5, 0)
       elseif getgenv().tpisland == "Safe Place" then
         for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
             if v.Name == "Part" then
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,10,0)
             end
         end
     end
	end    
})



Tab3:AddToggle({
	Name = "Auto Spawn",
	Default = false,
	Callback = function(Value)
		Config.respawn = Value
	end    
})

spawn(function()--autorespawn
    while wait() do
        if Config.respawn then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Visible == true then
                    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Load.Frame.Load.MouseButton1Click)) do
                        v.Function()
                    end
                end
            end)
        end
    end
end)

Tab2:AddToggle({
	Name = "Auto Fix Spam",
	Default = Config.fixspam,
	Callback = function(Value)
		Config.fixspam = Value
		_G.fixspam = Value
		if Value then
					OrionLib:MakeNotification({
			Name = "Auto Fix Spam",
			Content = "Change the Skill You Want To Spam To Button C",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
				end
			spawn(function()
			spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                if Config.fixspam or _G.fixspam then
                    wait(3)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "C", false, game)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game)
                end
            end)
        end
    end)
end)
			end)
	end    
})
local Section = Tab:AddSection({
	Name = "Auto Farm Beli only Spam"
})
Tab:AddDropdown({
	Name = "Select Fruit Farm",
	Options = {"Gas", "Light","Quake","Magma"},
	Callback = function(Value)
		Config.choosefruit = Value
	end    
})
Tab:AddToggle({
	Name = "TP Mob",
	Default = Config.tpmob,
	Callback = function(Value)
	Config.tpmob = Value
	spawn(function()
    pcall(function()
        while true do wait()
            if Config.tpmob then
                pcall(function()
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (plr.Character.HumanoidRootPart.Position - game:GetService("Workspace").CustomizeModel.SpawnAreaStuffK.HBase.Position).Magnitude > 1000 then
                            pcall(function()
                                repeat wait()
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        if Config.choosefruit == "Gas" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
                                        end
                               
                                        if Config.choosefruit == "Light" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
                                        end
                                        if Config.choosefruit == "Magma" then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)
                                        end
                                        if Config.choosefruit == "Quake" then
                                        	for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
                                                if v.Name == "Base1" then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,10,0)
                                                end
                                   end
                                        end
                                until not Config.tpmob or v.Humanoid.Health == 0
                            end)
                        end
                    end
                end)
            end
        end
    end)
end)
	
	end
})
Tab2:AddToggle({
	Name = "No Clip",
	Default = false,
	Callback = function(Value)
	Config.noclip = Value
	_G.noclip = Value
	spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                if Config.noclip or _G.noclip then
                    if not plr.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") and Config.noclip or _G.noclip   then
                        local BV = Instance.new("BodyVelocity", plr.Character.HumanoidRootPart)
                        BV.MaxForce = Vector3.new(100000, 100000, 100000)
                        BV.Velocity = Vector3.new(0, 0, 0)
                    elseif _G.noclip == false or Config.noclip == false then
                        for i,v in pairs(plr.Character.HumanoidRootPart:GetChildren()) do
                            if v.Name == "BodyVelocity" then
                                v:destroy()
                            end
                        end
                    end
                end
            end)
        end
    end)
end)

	                                            
            
	end
})
Tab:AddTextbox({
	Name = "Time Spam",
	Default = Config.timespam,
	TextDisappear = true,
	Callback = function(Value)
		Config.timespam = Value
	end	  
})
Tab:AddToggle({
	Name = "Auto Farm(Spam Skill)",
	Default = Config.spamskill,
	Callback = function(Value)
	Config.spamskill = Value
	spawn(function()
	if Config.spamskill then
	_G.noclip = true
	_G.autoskillvip = true
	_G.fixspam = true
	if Config.choosefruit == "Quake" then
	_G.noclip = false
	
	end
	
	end
	end)
          spawn(function()
        pcall(function() 
                while true do wait(0.1)
                    pcall(function()
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health ~= 0 then
                                if Config.spamskill then
                                    if v.Humanoid.Health > 0 and Config.choosefruit == "Gas" and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 100 then
                                        wait(Config.timespam)
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "GasPower4",
                                            [3] = "StartCharging",
                                            [4] = CFrame.new(v.HumanoidRootPart.Position),
                                            [5] = v.HumanoidRootPart,
                                            [6] = "Right"
                                        }
                                        
                                        game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
                                        
                                        
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "GasPower4",
                                            [3] = "StopCharging",
                                            [4] = CFrame.new(v.HumanoidRootPart.Position),
                                            [5] = v.HumanoidRootPart,
                                            [6] = 100
                                        }
                                        
                                        game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
                                    --2
                                    local args = {
                                        [1] = tonumber(serializeTable(remotes)),
                                        [2] = "GasPower10",
                                        [3] = "StartCharging",
                                        [4] = CFrame.new(v.HumanoidRootPart.Position),
                                        [5] = v.HumanoidRootPart,
                                        [6] = "Right"
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
                                    
                                    
                                    local args = {
                                        [1] = tonumber(serializeTable(remotes)),
                                        [2] = "GasPower10",
                                        [3] = "StopCharging",
                                        [4] = CFrame.new(v.HumanoidRootPart.Position),
                                        [5] = v.HumanoidRootPart,
                                        [6] = 100
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))    
                                    end
                                         if v.Humanoid.Health > 0 and Config.choosefruit == "Light" and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 100 then
                                        wait(Config.timespam)
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "LightPower8",
                                            [3] = "StartCharging",
                                            [4] = CFrame.new(v.HumanoidRootPart.Position),
                                            [5] = v.HumanoidRootPart,
                                            [6] = "Right"
                                        }
                                        
                                        game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                                        
                                        
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "LightPower8",
                                            [3] = "StopCharging",
                                            [4] = CFrame.new(v.HumanoidRootPart.Position),
                                            [5] = v.HumanoidRootPart,
                                            [6] = 100
                                        }
                                        
                                        game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                                    --2
                                    local args = {
                                        [1] = tonumber(serializeTable(remotes)),
                                        [2] = "LightPower2",
                                        [3] = "StartCharging",
                                        [4] = CFrame.new(v.HumanoidRootPart.Position),
                                        [5] = v.HumanoidRootPart,
                                        [6] = "Right"
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                                    
                                    
                                    local args = {
                                        [1] = tonumber(serializeTable(remotes)),
                                        [2] = "LightPower2",
                                        [3] = "StopCharging",
                                        [4] = CFrame.new(v.HumanoidRootPart.Position),
                                        [5] = v.HumanoidRootPart,
                                        [6] = 100
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                                    end
                                    if v.Humanoid.Health > 0 and Config.choosefruit == "Quake" then
                                            wait(Config.timespam)
                                            local args = {
                                                [1] = tonumber(serializeTable(remotes)),
                                                [2] = "QuakePower4",
                                                [3] = "StartCharging",
                                                [5] = "Right"
                                            }
                                    
                                            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                                            
                                    
                                            local args = {
                                                [1] = tonumber(serializeTable(remotes)),
                                                [2] = "QuakePower4",
                                                [3] = "StopCharging",
                                                [4] = v.HumanoidRootPart,
                                                [5] = CFrame.new(v.HumanoidRootPart.Position),
                                                [6] = 100,
                                                [7] = v.HumanoidRootPart.Position
                                            }
                                    
                                            game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                                        --2
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "QuakePower10",
                                            [3] = "StartCharging",
                                            [5] = "Right"
                                        }
                                
                                        game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                                        
                                
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "QuakePower10",
                                            [3] = "StopCharging",
                                            [4] = v.HumanoidRootPart,
                                            [5] = CFrame.new(v.HumanoidRootPart.Position),
                                            [6] = 100,
                                            [7] = v.HumanoidRootPart.Position
                                        }
                                
                                        game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                                        end
                                        if v.Humanoid.Health > 0 and Config.choosefruit == "Magma" and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude < 100 then
                                            wait(Config.timespam)
                                            local args = {
                                                [1] = tonumber(serializeTable(remotes)),
                                                [2] = "MagmaPower7",
                                                [3] = "StartCharging",
                                                [4] = CFrame.new(v.HumanoidRootPart.Position),
                                                [5] = v.HumanoidRootPart,
                                                [6] = "Right"
                                            }
                                            
                                            game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                    
                                            local args = {
                                                [1] = tonumber(serializeTable(remotes)),
                                                [2] = "MagmaPower7",
                                                [3] = "StopCharging",
                                                [4] = CFrame.new(v.HumanoidRootPart.Position),
                                                [6] = 100
                                            }
                                            
                                            game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
            
                                            local args = {
                                                [1] = tonumber(serializeTable(remotes)),
                                                [2] = "MagmaPower7",
                                                [3] = "StopCharging",
                                                [4] = CFrame.new(v.HumanoidRootPart.Position),
                                                [5] = v.HumanoidRootPart,
                                                [6] = 100
                                            }
            
                                            game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                                            local args = {
                                                [1] = tonumber(serializeTable(remotes)),
                                                [2] = "MagmaPower7",
                                                [3] = "StartCharging",
                                                [4] = CFrame.new(v.HumanoidRootPart.Position),
                                                [5] = v.HumanoidRootPart,
                                                [6] = "Left"
                                            }
            
                                            game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                                        --2
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "MagmaPower1",
                                            [3] = "StartCharging",
                                            [4] = CFrame.new(v.HumanoidRootPart.Position),
                                            [5] = v.HumanoidRootPart,
                                            [6] = "Right"
                                        }
                                        
                                        game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "MagmaPower1",
                                            [3] = "StopCharging",
                                            [4] = CFrame.new(v.HumanoidRootPart.Position),
                                            [6] = 100
                                        }
                                        
                                        game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
        
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "MagmaPower1",
                                            [3] = "StopCharging",
                                            [4] = CFrame.new(v.HumanoidRootPart.Position),
                                            [5] = v.HumanoidRootPart,
                                            [6] = 100
                                        }
        
                                        game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                                        local args = {
                                            [1] = tonumber(serializeTable(remotes)),
                                            [2] = "MagmaPower1",
                                            [3] = "StartCharging",
                                            [4] = CFrame.new(v.HumanoidRootPart.Position),
                                            [5] = v.HumanoidRootPart,
                                            [6] = "Left"
                                        }
        
                                        game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                                        end 
if v.Humanoid.MaxHealth - v.Humanoid.Health >= 5000 then
                                        v.Humanoid.Health = 0
                                    end
                                end
                            end
                        end
                    end)
                end
        end)
    end)  
	end
})



local Tab4 = Window:MakeTab({
	Name = "PvP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

function findplr()
	local players = {};
	for i, v in pairs(game.Players:GetChildren()) do
        
            if not table.find(players, v.Name)  then
                table.insert(players, v.Name);
            end;
        
	end;
	return players;
end;

local haha = Tab4:AddDropdown({
	Name = "Choose Players",

	Options = findplr(),
	Callback = function(Value)
		_G.playerr = Value
       
		Config.Players = _G.playerr
	end    
})

Tab4:AddButton({
	Name = "Refresh Players",
	Callback = function(Value)
      	haha:Refresh(findplr(), true)	
        
  	end    
})

Tab4:AddDropdown({
	Name = "Choose Method Telport",
	Options = {"Normal", "Above"},
	Callback = function(Value)
		Config.methodtp = Value
	end    
})

Tab4:AddToggle({
	Name = "Teleport Players",
	Default = Config.tpplayer,
	Callback = function(Value)
	Config.tpplayer = Value
	
spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                local plr1 = game.Players.LocalPlayer.Character
                local plr2 = game.Players:FindFirstChild(Config.Players)
                if Config.tpplayer then
                if Config.tpplayer and Config.methodtp ~= "" then
                    repeat wait()
                        if (plr2.Character.HumanoidRootPart.Position - game:GetService("Workspace").CustomizeModel.SpawnAreaStuffK.HBase.Position).Magnitude > 1000 then
                            if Config.methodtp == "Normal" then
                                plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                            end
                            if Config.methodtp == "Above" then
                                plr1.HumanoidRootPart.CFrame = plr2.Character.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
                            end
                            
                        else
                            for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
                                if v.Name == "Part" then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,10,0)
                                end
                            end
                        end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    until not _G.tpplayer or plr2.Humanoid.Health == 0 or plr1.Humanoid.Health == 0
                else
                    for i,v in pairs(game:GetService("Workspace").ISLAND:GetChildren()) do
                        if v.Name == "Part" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame * CFrame.new(0,10,0)
                        end
                    end
                end
            end
        end)
    end
end)
end)
	end
})
if Config.methodtp == nil then
    Config.methodtp = ""
end
local Section = Tab4:AddSection({
	Name = "Spam Skill For Farm Players"
})
Tab4:AddToggle({
	Name = "Spam Skill Light",
	Default = Config.Light,
	Callback = function(Value)
	Config.Light = Value
	
	
spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                if Config.Light then
                    local plr1 = game.Players.LocalPlayer.Character
                    local plr2 = game.Players:FindFirstChild(Config.Players)
                    if (plr2.Character.HumanoidRootPart.Position - game:GetService("Workspace").CustomizeModel.SpawnAreaStuffK.HBase.Position).Magnitude > 1000 then
                      wait(0.5)
                        local args = {
                            [1] = tonumber(serializeTable(remotes)),
                            [2] = "LightPower8",
                            [3] = "StartCharging",
                            [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                            [5] = plr2.Character.HumanoidRootPart,
                            [6] = "Right"
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                        
                        
                        local args = {
                            [1] = tonumber(serializeTable(remotes)),
                            [2] = "LightPower8",
                            [3] = "StopCharging",
                            [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                            [5] = plr2.Character.HumanoidRootPart,
                            [6] = 100
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                        --2
                        local args = {
                            [1] = tonumber(serializeTable(remotes)),
                            [2] = "LightPower2",
                            [3] = "StartCharging",
                            [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                            [5] = plr2.Character.HumanoidRootPart,
                            [6] = "Right"
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                        
                        
                        local args = {
                            [1] = tonumber(serializeTable(remotes)),
                            [2] = "LightPower2",
                            [3] = "StopCharging",
                            [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                            [5] = plr2.Character.HumanoidRootPart,
                            [6] = 100
                        }
                        
                        game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(unpack(args))
                    end
                end
            end)
        end
    end)
end)
end
})
Tab4:AddToggle({
	Name = "Spam Skill Quake",
	Default = Config.Quake,
	Callback = function(Value)
	Config.Quake = Value
	spawn(function()
    pcall(function()
        while true do wait()
            pcall(function()
                if Config.Quake then
                    local plr1 = game.Players.LocalPlayer.Character
                    local plr2 = game.Players:FindFirstChild(Config.Players)
                    wait(0.5)
                    local args = {
                        [1] = tonumber(serializeTable(remotes)),
                        [2] = "QuakePower4",
                        [3] = "StartCharging",
                        [5] = "Right"
                    }
            
                    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                    
            
                    local args = {
                        [1] = tonumber(serializeTable(remotes)),
                        [2] = "QuakePower4",
                        [3] = "StopCharging",
                        [4] = plr2.Character.HumanoidRootPart,
                        [5] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                        [6] = 100,
                        [7] = plr2.Character.HumanoidRootPart.Position
                    }
            
                    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                    --2
                    local args = {
                        [1] = tonumber(serializeTable(remotes)),
                        [2] = "QuakePower10",
                        [3] = "StartCharging",
                        [5] = "Right"
                    }
            
                    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                    
            
                    local args = {
                        [1] = tonumber(serializeTable(remotes)),
                        [2] = "QuakePower10",
                        [3] = "StopCharging",
                        [4] = plr2.Character.HumanoidRootPart,
                        [5] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                        [6] = 100,
                        [7] = plr2.Character.HumanoidRootPart.Position
                    }
            
                    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                end
            end)
        end
    end)
end)

	end
})
Tab4:AddToggle({
	Name = "Quake Kill All Players",
	Default = Config.Quakeall,
	Callback = function(Value)
        Config.Quakeall = Value
spawn(function() -- auto farm quake
    while task.wait(0) do
        pcall(function()
            for i,v in pairs(game.Players:GetChildren()) do
                    if Config.Quakeall  then
                        if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if v.Name ~= "SetInstances" and v.Character.Humanoid.Health ~= 0 and v.Backpack:FindFirstChildOfClass("Tool") then
                                if v.Name ~= game.Players.LocalPlayer.Name then
                                    wait(0.1)
                                    local args = {
                                        [1] = tonumber(serializeTable(remotes)),
                                        [2] = "QuakePower4",
                                        [3] = "StopCharging",
                                        [4] = v.Character.HumanoidRootPart.CFrame,
                                        [5] = v.Character.HumanoidRootPart.CFrame,
                                        [6] = 100,
                                        [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position)
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(unpack(args))
                                    
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
--1

    end
})
Tab4:AddToggle({
	Name = "Spam Skill Gas",
	Default = Config.Gas,
	Callback = function(Value)
        Config.Gas = Value
        spawn(function()
            pcall(function()
                while true do wait()
                    pcall(function()
                        if Config.Gas then
                            local plr1 = game.Players.LocalPlayer.Character
                            local plr2 = game.Players:FindFirstChild(Config.Players)
                            if (plr2.Character.HumanoidRootPart.Position - game:GetService("Workspace").CustomizeModel.SpawnAreaStuffK.HBase.Position).Magnitude > 1000 then
                              wait(0.5)
                                local args = {
                                    [1] = tonumber(serializeTable(remotes)),
                                    [2] = "GasPower4",
                                    [3] = "StartCharging",
                                    [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                                    [5] = plr2.Character.HumanoidRootPart,
                                    [6] = "Right"
                                }
                                
                                game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
                                
                                
                                local args = {
                                    [1] = tonumber(serializeTable(remotes)),
                                    [2] = "GasPower4",
                                    [3] = "StopCharging",
                                    [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                                    [5] = plr2.Character.HumanoidRootPart,
                                    [6] = 100
                                }
                                
                                game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
                                --2
                                local args = {
                                    [1] = tonumber(serializeTable(remotes)),
                                    [2] = "GasPower10",
                                    [3] = "StartCharging",
                                    [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                                    [5] = plr2.Character.HumanoidRootPart,
                                    [6] = "Right"
                                }
                                
                                game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
                                
                                
                                local args = {
                                    [1] = tonumber(serializeTable(remotes)),
                                    [2] = "GasPower10",
                                    [3] = "StopCharging",
                                    [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                                    [5] = plr2.Character.HumanoidRootPart,
                                    [6] = 100
                                }
                                
                                game:GetService("Players").LocalPlayer.Character.Powers.Gas.RemoteEvent:FireServer(unpack(args))
                            end
                        end
                    end)
                end
            end)
        end)
            
    end
})

Tab4:AddToggle({
	Name = "Spam Skill Magma",
	Default = Config.Magma,
	Callback = function(Value)

    Config.Magma = Value
    spawn(function()
        pcall(function()
            while true do wait()
                pcall(function()
                    if Config.Magma then
                        local plr1 = game.Players.LocalPlayer.Character
                        local plr2 = game.Players:FindFirstChild(Config.Players)
                        if (plr2.Character.HumanoidRootPart.Position - game:GetService("Workspace").CustomizeModel.SpawnAreaStuffK.HBase.Position).Magnitude > 1000 then
                         wait(0.5)
                            local args = {
                                [1] = tonumber(serializeTable(remotes)),
                                [2] = "MagmaPower9",
                                [3] = "Create",
                                [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                                [5] = workspace.Cave.Stone
                            }
                            
                            game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                            
                            
                            local args = {
                                [1] = tonumber(serializeTable(remotes)),
                                [2] = "MagmaPower7",
                                [3] = "StartCharging",
                                [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                                [5] = "Right"
                            }
                            
                            game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                            
                            
                            
                            local args = {
                                [1] = tonumber(serializeTable(remotes)),
                                [2] = "MagmaPower7",
                                [3] = "StopCharging",
                                [4] = CFrame.new(plr2.Character.HumanoidRootPart.Position),
                                [5] = plr2.Character.HumanoidRootPart,
                                [6] = 100
                            }
                            
                            game:GetService("Players").LocalPlayer.Character.Powers.Magma.RemoteEvent:FireServer(unpack(args))
                        end
                    end
                end)
            end
        end)
    end)
    
end})

local Section = Tab4:AddSection({
	Name = "Farm Players With Cannon"
})
Tab4:AddToggle({
	Name = "Bring Players",
	Default = Config.bringplr,
	Callback = function(Value)
        Config.bringplr = Value
        spawn(function() -- autofarm teleport cannon
            while wait(0) do
                pcall(function()
                    if Config.bringplr then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if v.Name == Config.Players then
                                v.Character.HumanoidRootPart.Transparency = 0.9
                                v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 255, 255)
                                v.Character.HumanoidRootPart.CanCollide = false
                                v.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10)
                                v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-50)
                                if v.Character.Humanoid.Health == 0 then
                                    v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                    v.Character.HumanoidRootPart.Transparency = 1
                                end
                            end
                        end
                    end
                end)
            end
        end)
    end
})
Tab4:AddToggle({
	Name = "Kill Players With Cannon",
	Default = Config.cannonkillplr,
	Callback = function(Value)
        Config.cannonkillplr = Value
        
    
        spawn(function()
            while task.wait(0) do
                pcall(function()
                    if Config.cannonkillplr and Config.bringplr then
                            for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if v.ClassName == "Tool" then
                                    v:Destroy()
                                end
                            end
                            wait(1)
                            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Cannon Ball")  then
                                for i=1,4 do
                                    game:GetService("Players").LocalPlayer.Character.Weapons:FireServer()
                                end
                            end
                        repeat wait(0.25)
                            local toolname = "Cannon Ball"
                            local Plr = game:GetService("Players").LocalPlayer
                            wait(0.5)
                            if Plr.Backpack:FindFirstChild(toolname) and not Plr.Character:FindFirstChild(toolname) and not Plr.Character:FindFirstChildOfClass("Tool") then
                                local tool = Plr.Backpack:FindFirstChild(toolname)
                                Plr.Character.Humanoid:EquipTool(tool)
                            end
                            wait(1)
                            game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                        until Config.cannonkillplr == false and Config.bringplr == false
                        
                    end
                end)
            end
        end)
        
        
        
        
        spawn(function()
        while task.wait(0) do
        pcall(function()
            if Config.cannonkillplr and Config.bringplr then
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
        
        spawn(function()
        while task.wait(0) do
        pcall(function()
            if Config.cannonkillplr and Config.bringplr then
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
                until Config.cannonkillplr == false and Config.bringplr == false or game.Players.LocalPlayer.Character.Humanoid.Health == 0
            end
        end)
        end
        end)
        
        
        
        
        
        spawn(function()
        while task.wait(0) do
        pcall(function()
            if Config.cannonkillplr and Config.bringplr then
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
        while wait(0) do
        pcall(function()
            if Config.cannonkillplr and Config.bringplr then
                fireclickdetector(workspace.Island11.CentralBuilding.Doors.Button.Button.ClickDetector)
                task.wait(0)
                if not game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(1)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
                if game.Players.LocalPlayer.PlayerGui.HealthBar.Frame.Status:FindFirstChild("BusoHaki") then
                    wait(1)
                    game.workspace.UserData["User_" .. game.Players.LocalPlayer.UserId].UpdateHaki:FireServer()
                end
        
            end
        end)
        end
        end)
    end
})
local Section = Tab4:AddSection({
	Name = "Misc"
})
Tab4:AddTextbox({
	Name = "Size HitBoxes",

	TextDisappear = true,
	Callback = function(Value)
		Config.sizehitboxes = Value
	end	  
})


Tab4:AddToggle({
	Name = "Hitboxes Players",
	Default = Config.hitboxplrs,
	Callback = function(Value)
	Config.hitboxplrs = Value
    spawn(function()
        game:GetService('RunService').RenderStepped:connect(function()
        if Config.hitboxplrs then
        for i,v in pairs(game.Players:GetChildren()) do
        if v.Name == Config.Players then
        pcall(function()
        v.Character.HumanoidRootPart.Size = Vector3.new(Config.sizehitboxes, Config.sizehitboxes, Config.sizehitboxes)
        v.Character.HumanoidRootPart.Transparency = 0.7
        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Gray")
        v.Character.HumanoidRootPart.Material = "Neon"
        v.Character.HumanoidRootPart.CanCollide = false
        end)
        end
        end
        end
        end)
        end)

    end})

    local Tab5 = Window:MakeTab({
        Name = "Find DF",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

Tab5:AddToggle({
    Name = "Get Sam",
    Default = Config.getsam,
    Callback = function(Value)
        Config.getsam = Value
        spawn(function()
            pcall(function()
                while true do wait()
                    if Config.getsam then
                        workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
                    end
                end
            end)
        end)
        
end
})
function findsam()
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.Name == "Compass" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Poser.Value)
                wait(0.5)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(0,0))
            end
        end
    end)
end

function equipsam()
    pcall(function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "Compass" then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Compass"])
                end
            end
        end
    end)
end
Tab5:AddToggle({
    Name = "Find Sam",
    Default = Config.findsam,
    Callback = function(Value)
        Config.findsam = Value
        spawn(function()
            pcall(function()
                while true do wait()
                    pcall(function()
                        if Config.findsam and (plr.Character.HumanoidRootPart.Position - game:GetService("Workspace").CustomizeModel.SpawnAreaStuffK.HBase.Position).Magnitude > 1000 then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Compass") then
                                equipsam()
                            end
                            if game.Players.LocalPlayer.Character:FindFirstChild("Compass") then
                                wait(0.5)
                                findsam()
                            else
                            end
                        end
                    end)
                end
            end)
        end)
    end
})
local Section = Tab:AddSection({
	Name = "Aqua Staff Farm"
})
Tab:AddToggle({
    Name = "Auto Fishing",
    
    Default = Config.fish,
    Callback = function(Value)
        Config.fish = Value
        _G.fish = Value
       spawn(function()
        if Config.fish then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(188679, 216, 176128)
        while true do wait(0.1)
            
       end
    end
end)
            spawn(function()
                pcall(function()
                            pcall(function()
               while true do wait()
                
                   pcall(function()
            if Config.fish and _G.fish then
                pcall(function()
                                for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if string.find(v.Name , "Rod") then
                                                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if string.find(v.Name , "Rod") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                                    end
                                end
                                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if string.find(v.Name , "Rod") then
                                                        for _,x in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                if string.find(x.Name , "Rod") then
                                    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                                        if v:FindFirstChild("Bobber") then
                                            if v.Bobber.Effect.Enabled == true then
                                                
                                                wait(0.5)
                                                local args = {
                                                    [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                                }
                                                game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                            end
                                        elseif v.Name == "Cast" and not v:FindFirstChild("Bobber") then
                                            
                                            wait(0.5)
                                            local args = {
                                                [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                                            }
                                            game:GetService("Players").LocalPlayer.Character:FindFirstChild(x.Name).Click:FireServer(unpack(args))
                                        end
                                    end
                                end
                            end
                                        wait(0.5)
                                    end
                                end
                end)
            end
            end)
            end
            end)
            end)
            end)
        
        
    end
})
Tab:AddToggle({
    Name = "Auto Sell Fish",
    
    Default = Config.sellfish,
    Callback = function(Value)
        Config.sellfish = Value
        if Config.sellfish then
        while true do wait()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if string.find(v.Name , "Busser") or string.find(v.Name , "Jawber") or string.find(v.Name , "Lubber") or string.find(v.Name, "Flooper") then
                _G.fish = false
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        wait(0.3)
        local args = {
            [1] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame,
            [2] = workspace:WaitForChild("Firepit"):WaitForChild("Part")
        }
        
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Click:FireServer(unpack(args))
        wait(0.1)
        workspace:WaitForChild("Merchants"):WaitForChild("FishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
            end
        end
        _G.fish = true
    end

    
end

    end
})
local Tab6 = Window:MakeTab({
    Name = "Quest",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Tab6:AddToggle({
	Name = "Auto Claim Quest",
	Default = false,
	Callback = function(Value)
		Config.quest = Value
	end    
})

spawn(function()--auto quest
    while wait() do
        if Config.quest then
            if game:GetService("Players").LocalPlayer.PlayerGui.MissionGui.Frame.Frame.Header.Text == "Mission Objective" then
                local Event = game:GetService("Workspace").Merchants.ExpertiseMerchant.Clickable.Retum
                Event:FireServer()
            end
        end
    end
end)

local Section = Tab6:AddSection({
	Name = "Lightning Sword Farm"
})
Tab6:AddToggle({
	Name = "Auto Package",
	Default = false,
	Callback = function(Value)
		Config.package = Value
	end    
})

spawn(function()--auto package
    while wait() do
        pcall(function()
         if Config.package then
            wait(0.6)
                game.workspace:WaitForChild("Merchants"):WaitForChild("QuestFishMerchant"):WaitForChild("Clickable"):WaitForChild("Retum"):FireServer()
            wait(0.001)
             local playernameuser = game.Players.LocalPlayer.Name
            if  game.Players.LocalPlayer.Backpack:FindFirstChild("Package") or game.Players.LocalPlayer.Character:FindFirstChild("Package") or game.workspace.playernameuser:FindFirstChild("Package") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.AffinityMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat1Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat2Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants:GetChildren()[16].HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat3Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.Boat4Merchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.DrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.BetterDrinkMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.ExpertiseMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SniperMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1549, 264, 2136)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.SwordMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.KrizmaMerch.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FishMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FlailMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.FriendMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Package"))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.HeavyWeaponsMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.QuestMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Merchants.EmoteMerchant.HumanoidRootPart.CFrame*CFrame.new(0,0,3.1)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2610, 254, 1114)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
                    wait(1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982, 218, 567)
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))      
            end
        end
        end)
    end
end)
