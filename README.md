if game.PlaceId == 3237168 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("One Piece Legendary | Made by Khai", "BloodTheme", colors)

local Tab = Window:NewTab("Haki")
local Tab2 = Window:NewTab("Islands/Players")
local Tab3 = Window:NewTab("Sam")
local Tab4 = Window:NewTab("Weapon Spams")
local Tab5 = Window:NewTab("Farming")
local Tab6 = Window:NewTab("FruitFarming")
local Tab7 = Window:NewTab("Kill Players")
local Tab8 = Window:NewTab("Misc")
local Tab9 = Window:NewTab("Drinks")


local HakiSection = Tab:NewSection("Select a method")
local TPSection = Tab2:NewSection("Teleports")
local SamSection = Tab3:NewSection("Sam Quests")
local DrinkingSection = Tab9:NewSection("Drinks")
local FarmingSection = Tab5:NewSection("Spawn")
local FarmingSection3 = Tab5:NewSection("Extra")
local FFarmingSection = Tab6:NewSection("Light Fruit")
local FFarmingSection2 = Tab6:NewSection("Quake Fruit")
local FFarmingSection3 = Tab6:NewSection("Rumble Fruit")
local KPSection = Tab7:NewSection("Players")
local KPSection2 = Tab7:NewSection("Quake Fruit")
local KPSection3 = Tab7:NewSection("Light Fruit")
local MiscSection = Tab8:NewSection("Random Shit")
local WeaponSection1 = Tab4:NewSection("Yoru")
local WeaponSection2 = Tab4:NewSection("Seastone Cestus")

local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Settings")
local ColorSection = Settings:NewSection("Ui Color")
local PLRS = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(PLRS,v.Name)
end

----------------------------------- Weapon Spams
WeaponSection1:NewSlider("Yoru Speed", "Increase/Decrease", 50, 1, function(s) -- 50 (MaxValue) | 0 (MinValue)
    Speed = s
end)

WeaponSection1:NewToggle("Yoru Spam", "Spams Yoru m1", function(state)
    if state then
        _G.Yoru = true
        local Players = game:GetService("Players")
        local Plr = Players.LocalPlayer
        local Character = Plr.Character
        local Yoru = Character:FindFirstChild("Yoru")
        local Environment
while _G.Yoru do
    wait()
    pcall(function()
    for i,v in pairs(getconnections(Yoru["RequestAnimation"].OnClientEvent)) do 
        Environment = getsenv(Yoru["AnimationController"])
    end
        wait()
    for i = 1, Speed do
    Yoru["RequestAnimation"]:FireServer(Environment.PlaceId)
    end
    end)
    end
else
        _G.Yoru = false
    end
end)

WeaponSection2:NewSlider("Seastone Speed", "Increase/Decrease", 50, 1, function(ss) -- 50 (MaxValue) | 0 (MinValue)
    Speed2 = ss
end)

WeaponSection2:NewToggle("Seastone Spam", "Spams Seastone Cestus", function(state)
    if state then
        _G.Cestus = true
        local Players = game:GetService("Players")
        local Plr = Players.LocalPlayer
        local Character = Plr.Character
        local Cestus = Character:FindFirstChild("Seastone Cestus")
        local Environment
while _G.Cestus do
    wait()
    pcall(function()
    for i,v in pairs(getconnections(Cestus["RequestAnimation"].OnClientEvent)) do 
        Environment = getsenv(Cestus["AnimationController"])
    end
        wait()
    for i = 1, Speed2 do
    Cestus["RequestAnimation"]:FireServer(Environment.PlaceId)
    end
    end)
    end
else
        _G.Cestus = false
    end
end)
----------------------------------- Misc

MiscSection:NewButton("Immortal", "Makes you immortal to all attacks but heart steal", function()
local plr = game.Players.LocalPlayer.Name
game:GetService("Workspace")[""..plr].Damage:Destroy()
end)

MiscSection:NewToggle("Anti-Stun", "Removes Stun", function(state)
    if state then
        _G.NoStun = true
    pcall(function()
        while _G.NoStun do
            wait()
        game:GetService("Players").LocalPlayer["DF_Disabled"] = false
    end
end)
else
        _G.NoStun = false
    end
end)

MiscSection:NewButton("Anti-mod", "Kicks if a mod is in server or joins server", function()
    local Pedo = {
        1135910299,520944,43247021
    }
    
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        for _, v1 in pairs(Pedo) do
            if v.UserId == v1 then
                game:GetService("Players").LocalPlayer:Kick("Admin is in the server")
            end
        end
    end
    
    game:GetService("Players").PlayerAdded:Connect(function(r)
        for _, v in pairs(Pedo) do
            if r.UserId == v then
                game:GetService("Players").LocalPlayer:Kick("Admin has joined the server")
            end
        end
    end)
    end)

MiscSection:NewButton("Expertise GUI", "Shows the Expertise GUI", function()
    for i,v in pairs(game:GetService("Workspace").Merchants.ExpertiseMerchant:GetDescendants()) do
    if v:IsA("ClickDetector") then
    fireclickdetector(v)
    end
    end
    end)

MiscSection:NewButton("Affinity Gui", "Shows the affinity diviners gui so u can spin", function()
    for i,v in pairs(game:GetService("Workspace").Merchants.AffinityMerchant:GetDescendants()) do
    if v:IsA("ClickDetector") then
    fireclickdetector(v)
    end
    end
    end)

MiscSection:NewDropdown("Present", "Collect Chosen presents", {"Hourly Presents", "Daily Presents"}, function(AnF)
    ChosenOne = AnF
    end)

MiscSection:NewTextBox("Present Amount", "Collects presents", function(text)
    local plrid = tostring(game.Players.LocalPlayer.UserId)
    for i = 1,(text) do
    if ChosenOne == "Hourly Presents" then
    wait()
    workspace.UserData["User_"..plrid].ClaimRewardHourly:FireServer("RewardMark")
    end
    if ChosenOne == "Daily Presents" then
        workspace.UserData["User_"..plrid].ClaimRewardDaily:FireServer("RewardMark")
    end
end
    end)

MiscSection:NewButton("ModMenu", "Hold alt or press emotes, this is a safe 1", function()
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Visible = true
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.BanId.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.OfflineBan.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Ban.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.JoinId.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec["OfflineBan_Text"].Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec["Ban_Text"].Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec["BanId_Text"].Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec["Join_Text"].Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Join.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec["JoinId_Text"].Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Template.Frame.E.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Template.Frame.A.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Template.Frame.B.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Template.Frame.D.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Template.Frame.C.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Emotes.Frame.Spec.Template.Frame.E2.Visible = false
end)

MiscSection:NewButton("Emotes", "Gives emotes you also have to press it in each server", function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark1.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark2.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark3.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark4.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark5.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark6.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark7.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark8.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark9.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark10.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark11.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark12.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark13.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark14.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark15.Value = true
Game.Workspace.UserData["User_"..plrid].Data.CB_Mark16.Value = true
end)

----------------------------------- Kill Players
local dropdown =  KPSection:NewDropdown("Select Player", "", PLRS, function(f)
    Choose2 = f
end)

KPSection:NewButton("Refresh PLR List", "Refreshes Dropdown", function(aa)
    local PLRS = {}
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(PLRS,v.Name)
    end
    dropdown:Refresh(PLRS)
    end)

KPSection3:NewToggle("Light Spam" , "Kills Player", function(state)
    if state then
    _G.AutoLight = true
    local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Light)
    local vp = x.VTCrv
    while _G.AutoLight do
        wait(0.2)
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == Choose2 then
                game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(vp,"LightPower2", "StopCharging",v.HumanoidRootPart.CFrame,workspace.IslandCaver.Stones.Stone, 100)
            end
            end
     end
    else
        _G.AutoLight = false
     end
    end)

KPSection2:NewToggle("Quake Spam" , "Kills Player", function(state)
    if state then
    _G.AutoQuake = true
    local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
    local vp = x.VTCebvc
    while _G.AutoQuake do
        wait(0)
        pcall(function()
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == Choose2 then
                game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(vp,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,v.HumanoidRootPart.CFrame,100,Vector3.new(-290.4129333496094, 266.8401794433594, -103.8988037109375))
            end
        end
        end)
        end
    else
        _G.AutoQuake = false
    end
    end)
----------------------------------- FruitFarming
FFarmingSection3:NewToggle("Rumble Farm3" , "Kills Krizma NPC's", function(state)
if state then
_G.AutoRumble = true
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Rumble)
local v = x.VTCzyhf
while _G.AutoRumble do
    wait(8)
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-991.578857421875, 217.1343994140625, 1664.7615966796875),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1053.3848876953125, 217.19288635253906, 1681.0531005859375),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1055.0928955078125, 218.02655029296875, 1663.1973876953125),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1053.102294921875, 217.51536560058594, 1646.76416015625),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-906.1535034179688, 216.06491088867188, 1623.90380859375),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1012.9547119140625, 324.14837646484375, 1688.389404296875),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-984.7723999023438, 283, 1613.73681640625),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
 end
else
    _G.AutoRumble = false
 end
end)

FFarmingSection3:NewToggle("Rumble Farm2" , "Kills Cave NPC's", function(state)
if state then
_G.AutoRumble = true
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Rumble)
local v = x.VTCzyhf
while _G.AutoRumble do
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1166.3197021484375, 219.90908813476562, -1580.827880859375),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-1420.2213134765625, 240.68174743652344, -1599.0550537109375))
wait(4)
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1202.275390625, 254.9381866455078, -1662.3792724609375),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-1420.2213134765625, 240.68174743652344, -1599.0550537109375))
wait(4)
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1287.9407958984375, 248.89393615722656, -1654.454833984375),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-1420.2213134765625, 240.68174743652344, -1599.0550537109375))
wait(4)
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1271.0579833984375, 263.09088134765625, -1792.6419677734375),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-1420.2213134765625, 240.68174743652344, -1599.0550537109375))
wait(4)
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1340.6353759765625, 245.81817626953125, -1626.208740234375),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-1420.2213134765625, 240.68174743652344, -1599.0550537109375))
wait(4)
game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(-1432.870849609375, 257.8327941894531, -1652.255615234375),workspace.Enemies:FindFirstChild("Lv17 Thug").HumanoidRootPart,200,Vector3.new(-1420.2213134765625, 240.68174743652344, -1599.0550537109375))
 end
else
    _G.AutoRumble = false
 end
end)

FFarmingSection3:NewToggle("Rumble Farm1" , "Kills Cave NPC's", function(state)
if state then
_G.AutoRumble = true
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Rumble)
local v = x.VTCzyhf
while _G.AutoRumble do
    wait(7)
 game:GetService("Players").LocalPlayer.Character.Powers.Rumble.RemoteEvent:FireServer(v,"RumblePower8","StopCharging",Vector3.new(67.43363189697266, 217.19859313964844, -924.2767333984375),workspace.Firepit.Part,200,Vector3.new(4.660553932189941, 305.5, -942.0166625976562))
 end
else
    _G.AutoRumble = false
 end
end)

FFarmingSection2:NewToggle("Quake Farm" , "Kills every NPCS", function(state)
if state then
_G.AutoQuake = true
local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Quake)
local v = x.VTCebvc
while _G.AutoQuake do
    wait(1)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1848.4346923828125, 222, -450.0833740234375), Vector3.new(-0.5347824096679688, -0.43560168147087097, -0.7240573167800903)),100,Vector3.new(-1848.4346923828125, 222, -450.0833740234375), Vector3.new(-0.5347824096679688, -0.43560168147087097, -0.7240573167800903))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1898.96728515625, 225.03367614746094, -200.6829071044922), Vector3.new(-0.9484627842903137, -0.18392488360404968, 0.25805023312568665)),100,Vector3.new(-1898.96728515625, 225.03367614746094, -200.6829071044922), Vector3.new(-0.9484627842903137, -0.18392488360404968, 0.25805023312568665))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1749.58203125, 224.88922119140625, -134.49240112304688), Vector3.new(-0.6882264614105225, -0.40487319231033325, 0.6020150184631348)),100,Vector3.new(-1749.58203125, 224.88922119140625, -134.49240112304688), Vector3.new(-0.6882264614105225, -0.40487319231033325, 0.6020150184631348))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1622.5482177734375, 225.85337829589844, -200.26828002929688), Vector3.new(-0.3189719319343567, -0.7127735018730164, 0.6246685981750488)),100,Vector3.new(-1622.5482177734375, 225.85337829589844, -200.26828002929688), Vector3.new(-0.3189719319343567, -0.7127735018730164, 0.6246685981750488))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(1002.1565551757812, 214, 3349.3857421875), Vector3.new(-0.2978745698928833, -0.6442758440971375, 0.7044001221656799)),100,Vector3.new(1002.1565551757812, 214, 3349.3857421875), Vector3.new(-0.2978745698928833, -0.6442758440971375, 0.7044001221656799))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(2167.46923828125, 213, -631.9636840820312), Vector3.new(0.6589730978012085, -0.6376858949661255, -0.3988874852657318)),100,Vector3.new(2167.46923828125, 213, -631.9636840820312), Vector3.new(0.6589730978012085, -0.6376858949661255, -0.3988874852657318))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(1178.6993408203125, 212.26193237304688, -263.04681396484375), Vector3.new(0.04516664147377014, -0.9571055173873901, 0.28619781136512756)),100,Vector3.new(1178.6993408203125, 212.26193237304688, -263.04681396484375), Vector3.new(0.04516664147377014, -0.9571055173873901, 0.28619781136512756))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1040.117919921875, 215, 1662.1202392578125), Vector3.new(0.9582481980323792, -0.13812202215194702, 0.2503652274608612)), 100,Vector3.new(-1040.117919921875, 215, 1662.1202392578125), Vector3.new(0.9582481980323792, -0.13812202215194702, 0.2503652274608612))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044)), 100,Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317)),100,Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672)),100,Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137)),100,Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924)),100,Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323)),100,Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517)),100,Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965)),100,Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916)),100,Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087)),100,Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177)),100,Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375), Vector3.new(0.025024037808179855, -0.7537118196487427, -0.6567284464836121)),100,Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224)),100,Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224)),100,Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224))
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Quake.RemoteEvent:FireServer(v,"QuakePower4", "StopCharging",workspace.IslandCaver.Stones.Stone,CFrame.new(Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612)),100,Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612))
 end
else
    _G.AutoQuake = false
 end
end)

FFarmingSection:NewToggle("Light Farm" , "Kills a few NPCS", function(state)
    if state then
    local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Light)
    local v = x.VTCrv
    _G.Light = true
    while _G.Light do 
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-988.4560546875, 283, 1616.5068359375), Vector3.new(-0.44781866669654846, -0.36267393827438354, 0.8172675371170044)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1037.58544921875, 215.7229461669922, 1508.449951171875), Vector3.new(-0.7139230966567993, -0.5779988169670105, 0.39526084065437317)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-908.2176513671875, 214, 1621.364990234375), Vector3.new(-0.21460314095020294, -0.40479180216789246, 0.88886958360672)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-248.8604736328125, 273.4266052246094, 355.64453125), Vector3.new(0.6645273566246033, -0.5016912817955017, -0.5538134574890137)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-319.3795471191406, 272.3931884765625, 388.7362060546875), Vector3.new(0.5347911715507507, -0.7442643046379089, -0.40008631348609924)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-315.74334716796875, 270.4518737792969, 307.21185302734375), Vector3.new(0.4924789369106293, -0.6783868670463562, -0.5452118515968323)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-178.00997924804688, 272.4919128417969, 390.1238708496094), Vector3.new(0.6851771473884583, -0.678036093711853, -0.26608139276504517)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-159.9521026611328, 269.81768798828125, 312.1455993652344), Vector3.new(0.6065837144851685, -0.7200759649276733, -0.33696722984313965)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(89.97474670410156, 299.3000183105469, -936.1035766601562), Vector3.new(0.2870140075683594, -0.6174480319023132, -0.7323803305625916)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1169.5670166015625, 219.90908813476562, -1588.0274658203125), Vector3.new(0.015137090347707272, -0.6970996260643005, -0.7168144583702087)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1201.4923095703125, 254.11367797851562, -1660.2674560546875), Vector3.new(0.04675392061471939, -0.6955714225769043, -0.7169341444969177)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1288.0887451171875, 245.90695190429688, -1653.00537109375), Vector3.new(0.025024037808179855, -0.7537118196487427, -0.6567284464836121)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1339.789306640625, 245.81817626953125, -1634.641845703125), Vector3.new(0.07458476722240448, -0.6587507128715515, -0.7486552596092224)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1432.3958740234375, 256.3514709472656, -1652.33984375), Vector3.new(0.007446270436048508, -0.6148971319198608, -0.7885722517967224)),workspace.IslandCaver.Stones.Stone, 100)
    wait(0.5)
    game:GetService("Players").LocalPlayer.Character.Powers.Light.RemoteEvent:FireServer(v,"LightPower2", "StopCharging",CFrame.new(Vector3.new(-1270.039794921875, 263.09088134765625, -1793.016357421875), Vector3.new(0.32165566086769104, -0.4306340515613556, -0.8432627320289612)),workspace.IslandCaver.Stones.Stone, 100)
 end
else
    _G.Light = false
 end
end)

----------------------------------- Farming
FarmingSection3:NewButton("Infinite Yield", "Uses Inf yield gui", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

FarmingSection:NewToggle("Suicide", "Kills u for farming purposes", function(state)
    if state then
        _G.AutoDrown = true
while _G.AutoDrown do
    wait(1)
    spawn(function()
    for i = 1,5 do
local args = {
    [1] = "NOPLS"
}

game:GetService("Players").LocalPlayer.Character.Drown:FireServer(unpack(args))
end
end)
end
else
        _G.AutoDrown = false
    end
end)

FarmingSection:NewSlider("Dark Vortex Time", "Increase/Decrease time to wait until you use dark vortex", 50, 5, function(f) -- 50 (MaxValue) | 0 (MinValue)
    DT = f
end)

FarmingSection:NewToggle("Dark Vortex", "Auto uses dark vortex for farming", function(state)
    if state then
        _G.AutoDark = true
while _G.AutoDark do
    wait(DT)
    local x = getsenv(game:GetService("Players").LocalPlayer.Character.Powers.Dark)
    local v = x.VTCjebaj
local args = {
    [1] = v,
    [2] = "DarkPower8",
    [3] = "Create",
    [4] = CFrame.new(Vector3.new(-274.5000305175781, 225.91897583007812, -506.1360778808594), Vector3.new(-0.5358331203460693, 0.01048304419964552, 0.8442589044570923)),
    [5] = workspace.StoneBridge.Beach
}

game:GetService("Players").LocalPlayer.Character.Powers.Dark.RemoteEvent:FireServer(unpack(args))
end
else
        _G.AutoDark = false
    end
end)

FarmingSection:NewToggle("Auto Spawn", "Spawns you at Cave Docks Automatically", function(state)
        if state then
            _G.AutoSpawn = true
            setfpscap(15)
    while _G.AutoSpawn do 
    wait(4)
    local Players = game:GetService("Players")
    local Lp = Players.LocalPlayer
    local Character = Lp.Character or Lp.CharacterAdded:Wait()
    local Humanoid = Character:FindFirstChild("Humanoid")
    Humanoid.Died:Connect(function()
        local Character = Lp.CharacterAdded:Wait()
        local WeaponRemote = Character:WaitForChild("Weapons")
        local CharacterTrait = Character:WaitForChild("CharacterTrait")
        local ClothingRemote = CharacterTrait:WaitForChild("ClothingTrigger")
        WeaponRemote:FireServer()
        ClothingRemote:FireServer()
        Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-128.048264, 215.999954, -753.320984, 0.999702752, -1.25554733e-09, 0.0243795477, 4.81836904e-10, 1, 3.17419158e-08, -0.0243795477, -3.17207345e-08, 0.999702752)
    end)
    Lp.CharacterAdded:Connect(function(Char)
        Char:WaitForChild("Humanoid").Died:Connect(function()
        local Character = Lp.CharacterAdded:Wait()
        local WeaponRemote = Character:WaitForChild("Weapons")
        local CharacterTrait = Character:WaitForChild("CharacterTrait")
        local ClothingRemote = CharacterTrait:WaitForChild("ClothingTrigger")
        WeaponRemote:FireServer()
        ClothingRemote:FireServer()
        Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-128.048264, 215.999954, -753.320984, 0.999702752, -1.25554733e-09, 0.0243795477, 4.81836904e-10, 1, 3.17419158e-08, -0.0243795477, -3.17207345e-08, 0.999702752)
        end)
    end)
    end
        else
           _G.AutoSpawn = false
        end
end)



----------------------------------- Drinks/Barrel Farming
DrinkingSection:NewDropdown("The Drink", "Buys chosen drinks", {"Cider+", "Lemonade+", "Juice+", "Smoothie+"}, function(An)
Choice = An
end)

DrinkingSection:NewTextBox("Drink Amount", "Makes you buy drinks", function(text)
    for i = 1,(text) do
        wait(0.1)
        game.Workspace.Merchants.BetterDrinkMerchant.Clickable.Retum:FireServer(Choice)
        end
end)

DrinkingSection:NewToggle("Auto Drink", "Auto Drinks juices", function(state)
    if state then
        _G.Using = true
while _G.Using do
    wait(0.5)  
pcall(function()
local Players = game:GetService("Players")
local Lp = Players.LocalPlayer
local Character = Lp.Character or Lp.CharacterAdded:Wait()
local Humanoid = Character.Humanoid
local user = tostring(game.Players.LocalPlayer.Name)
for i,v in pairs(Lp.Backpack:GetChildren()) do 
    if v:IsA("Tool") and string.find(v.Name, "Juice") or string.find(v.Name, "Cider") or string.find(v.Name, "Milk")  or string.find(v.Name, "+")  or string.find(v.Name, "Smoothie") or string.find(v.Name, "Lemonade") or string.find(v.Name, "Golden") then  
        Humanoid:EquipTool(v)
        v:Activate()
        wait()
    end 
end 
end)
end
else
        _G.Using = false
    end
end)

DrinkingSection:NewToggle("Auto Barrels", "Auto clicks all barrels", function(state)
    if state then
         _G.AutoMixer = true
local user = tostring(game.Players.LocalPlayer.Name)
local StoredLocation = game.workspace[""..user].HumanoidRootPart.CFrame 

spawn(function()
local plrid = tostring(game.Players.LocalPlayer.UserId)
local plr = tostring(game.Players.LocalPlayer)
while _G.AutoMixer do
wait()
pcall(function()
repeat task.wait() until game.Players[""..plr].PlayerGui.Challenges.Frame.Frame.ChallengesFrame.ScrollingFrame["Challenge_13"].Claim.AutoButtonColor == true
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge13")
workspace.UserData["User_"..plrid].ChallengesRemote:FireServer("Claim","Challenge14")
end)
end
end)

function amongus()
for i,v in pairs(game:GetService("Workspace").Barrels:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
for i,v in pairs(game:GetService("Workspace").Island8.Kitchen:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end

while _G.AutoMixer do
pcall(function()
for i,v in pairs(game:GetService("Workspace").Barrels.Barrels:GetDescendants()) do
if v.Name == "Barrel" then
game.workspace[""..user].HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
amongus()
wait(0.1)
end
end
for i,v in pairs(game:GetService("Workspace").Barrels:GetDescendants()) do
if v.Name == "Crate" then
game.workspace[""..user].HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 5, 0)
amongus()
wait(0.1)
end
end
game.workspace[""..user].HumanoidRootPart.CFrame = StoredLocation
end)
wait(15)
end
    else
       _G.AutoMixer = false
    end
end)

----------------------------------- Sam
SamSection:NewButton("Collect all compass's", "Collects all compass's", function()
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim10")
end)

SamSection:NewButton("Collect one compass", "Collects single compass", function()
workspace.Merchants.QuestMerchant.Clickable.Retum:FireServer("Claim1")
end)


SamSection:NewToggle("Compass Destination", "Tp's you to your compass destination", function(state)
    if state then
        _G.Destination = true
while _G.Destination do 
    task.wait(0.2)        
local user = tostring(game.Players.LocalPlayer.Name)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players")[""..user].Backpack.Compass.Poser.Value)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")[""..user].Compass.Power.Value
     end
    else
        _G.Destination = false
    end
end)

SamSection:NewToggle("Compass Stealing", "Steals a compass if dropped", function(state)

if state then
    _G.CompassSteal = true
    local plr=game:GetService'Players'.LocalPlayer              --compass stealing
local find='Compass' 
while _G.Compass do
local char=plr.Character or plr.CharacterAdded:Wait()
local HRP=char:WaitForChild'HumanoidRootPart'
for i,v in next, workspace:GetChildren() do
local Handle=v:FindFirstChild'Handle'
if v:IsA'Tool' and string.find(v.Name:lower(), find:lower()) and Handle then
Handle.CFrame=HRP.CFrame
end
end
wait()
end
else
    _G.CompassSteal = false
end
end)
SamSection:NewToggle("RareBox Stealing", "Steals a RareBox if dropped", function(state)
if state then
    _G.Rare = true
    local plr=game:GetService'Players'.LocalPlayer              --Steals rare if dropped
local find='Rare Box' 
while _G.Rare do
local char=plr.Character or plr.CharacterAdded:Wait()
local HRP=char:WaitForChild'HumanoidRootPart'
for i,v in next, workspace:GetChildren() do
local Handle=v:FindFirstChild'Handle'
if v:IsA'Tool' and string.find(v.Name:lower(), find:lower()) and Handle then
Handle.CFrame=HRP.CFrame
end
end
wait()
end
else
    _G.Rare = false
end
end)
SamSection:NewToggle("UltraRareBox stealing", "Steals a UltraRareBox if dropped", function(state)
    if state then
        _G.Ultra = true
        local plr=game:GetService'Players'.LocalPlayer--------- compass stealing
local find='Ultra Rare Box' 
while _G.Ultra do
local char=plr.Character or plr.CharacterAdded:Wait()
local HRP=char:WaitForChild'HumanoidRootPart'
for i,v in next, workspace:GetChildren() do
local Handle=v:FindFirstChild'Handle'
if v:IsA'Tool' and string.find(v.Name:lower(), find:lower()) and Handle then
Handle.CFrame=HRP.CFrame
end
end
wait()
end
    else
        _G.Ultra = false
    end
end)
SamSection:NewToggle("TpFruit", "Tps fruits", function(state)
    if state then
     _G.Tpfruit = true
 while _G.Tpfruit do
     task.wait()
 for i,v in pairs(game:GetService("Workspace").Trees.Tree:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end    
    else
        _G.Tpfruit = false
    end
end) 

----------------------------------- Haki Scripts
HakiSection:NewButton("Haki levels", "Grinds ur haki level", function(state)

local pl = tostring(game:GetService("Players").LocalPlayer.UserId)
local lv = game:GetService("Workspace").UserData["User_"..pl].Data.HakiLevel.Value
for i = 1,25 do
while wait() do
workspace.UserData["User_"..pl].III:FireServer("On", lv)
wait()
workspace.UserData["User_"..pl].III:FireServer("On", lv)
wait()
workspace.UserData["User_"..pl].III:FireServer("Off", lv)
wait()
workspace.UserData["User_"..pl].III:FireServer("Off", lv)   
end
end
end)

----------------------------------- Teleports
TPSection:NewDropdown("Island Teleports", "Teleports you to chosen island", {"Sand", "RaceTrack" , "Disco" ,"Cave", "MarineFort" ,"Sam", "Krizma", "Moss" , "Expertise", "Mansion" , "Tall Trees" , "Dead Trees", "Pyramid", "BigSnow", "Little Snow", "Vokkun", "Kaizu", "Purple", "Pursuer", "Safe Place"}, function(currentOption)
    if currentOption == "Expertise" then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.105103, 282.199921, 1219.1825, 0.000111424371, -4.80737405e-08, 1, -5.58505509e-09, 1, 4.80743623e-08, -1, -5.59041169e-09, 0.000111424371)
    end
    
    if currentOption == "Krizma" then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1074.2793, 360.999908, 1687.67566, 0.998138607, -2.49312624e-08, 0.0609866381, 1.98675316e-08, 1, 8.3636543e-08, -0.0609866381, -8.22692101e-08, 0.998138607)
       end

    if currentOption == "Sand" then
        for i,v in pairs(game.Workspace.IslandWindmill:GetDescendants()) do
            if v.Name == "Part" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
            end    end  
    
    if currentOption == "Cave" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(76.3779144, 299.999908, -916.032043, 0.0174713228, -3.14204591e-08, 0.999847353, 5.21297814e-08, 1, 3.05143395e-08, -0.999847353, 5.15886995e-08, 0.0174713228)
    end

    if currentOption == "SandCastle" then
        for i,v in pairs(game.Workspace.IslandSandCastle:GetDescendants()) do
            if v.Name == "Part" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
            end    end
      
    if currentOption == "Sam" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1298.30603, 217.999954, -1352.47571, 0.017669782, -1.08078257e-08, 0.999843895, -7.31044647e-09, 1, 1.09387068e-08, -0.999843895, -7.50258966e-09, 0.017669782)
    end

    if currentOption == "Mansion" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1818.72119, 218, 881.086304, 0.707021296, 6.48462928e-09, -0.707192302, -5.54870603e-08, 1, -4.63041019e-08, 0.707192302, 7.19780076e-08, 0.707021296)
    end
    
    if currentOption == "Dead Trees" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2053.56348, 491.999908, -603.457642, 0.999845803, -6.42047766e-08, -0.0175616108, 6.59244677e-08, 1, 9.73443264e-08, 0.0175616108, -9.84870496e-08, 0.999845803)
    end

    if currentOption == "Moss" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606.74414, 269.599915, 1098.1311, 0.0525588207, -5.60069324e-09, 0.998617828, -1.80996815e-10, 1, 5.61797142e-09, -0.998617828, -4.76020612e-10, 0.0525588207)
    end
    
    if currentOption == "RaceTrack" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6056.94434, 217.643265, 3332.71924, -0.824234724, -3.06996917e-08, -0.566248238, -9.82805215e-09, 1, -3.991018e-08, 0.566248238, -2.73302394e-08, -0.824234724)
    end
      
    if currentOption == "Little Snow" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1897.03699, 224.999954, 3295.97852, 0.422415107, -1.19760401e-07, -0.906402469, 5.81015094e-08, 1, -1.05049857e-07, 0.906402469, -8.28870661e-09, 0.422415107)
    end

    if currentOption == "Pyramid" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(117.47625, 277.999908, 4948.05713, -0.688197017, 3.47416451e-09, 0.725523829, -6.7682937e-10, 1, -5.43049916e-09, -0.725523829, -4.22830926e-09, -0.688197017)
    end
    
    if currentOption == "BigSnow" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6640.6499, 417.998901, -1478.11169, -0.294113189, 6.32640322e-08, -0.955770612, 2.0722144e-08, 1, 5.98149583e-08, 0.955770612, -2.21324803e-09, -0.294113189)
    end

    if currentOption == "MarineFort" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3134.58325, 275.799927, -3652.50513, 0.99999994, -9.04243613e-09, -0.000312123768, 9.0418677e-09, 1, -1.82297777e-09, 0.000312123768, 1.82015547e-09, 0.99999994)
    end

    if currentOption == "Purple" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5285.72803, 515.999817, -7745.1543, -0.999651134, 6.1504144e-09, 0.0264117159, 3.64631259e-09, 1, -9.48584287e-08, -0.0264117159, -9.47290317e-08, -0.999651134)
    end

    if currentOption == "Disco" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1521.71997, 260.38623, 2187.73511, 1, 8.61509197e-11, 7.85281545e-16, -8.61509197e-11, 1, -9.82245325e-08, -7.93743669e-16, 9.82245325e-08, 1)
    end

    if currentOption == "Tall Trees" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6032.78955, 401.999908, 4.39634514, -0.999964476, 1.89321381e-09, -0.00843126699, 1.84625704e-09, 1, 5.57713209e-09, 0.00843126699, 5.56136781e-09, -0.999964476)
    end

    if currentOption == "Vokkun" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4572.5, 217.399857, 5094.63428, -0.999854326, 3.65839306e-08, -0.0170693286, 3.71540878e-08, 1, -3.30852146e-08, 0.0170693286, -3.37145885e-08, -0.999854326)
    end

    if currentOption == "Pursuer" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4846.59082, 569.999817, -7142.89258, 0.996175706, -2.08068229e-09, -0.087372601, 9.85005189e-10, 1, -1.25833957e-08, 0.087372601, 1.24492106e-08, 0.996175706)
    end

    if currentOption == "Kaizu" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1589.06714, 215.999954, 9941.59766, -0.0209177006, -8.02182285e-08, -0.999781191, 4.7343427e-08, 1, -8.1226311e-08, 0.999781191, -4.90321348e-08, -0.0209177006)
    end

    if currentOption == "Kaizu" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1589.06714, 215.999954, 9941.59766, -0.0209177006, -8.02182285e-08, -0.999781191, 4.7343427e-08, 1, -8.1226311e-08, 0.999781191, -4.90321348e-08, -0.0209177006)
    end
    if currentOption == "Safe Place" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1000, 50000, 8000)
    baseplatee = Instance.new("Part", workspace)
    baseplatee.Size = Vector3.new(150, 1, 150)
    baseplatee.CFrame = game.workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame + Vector3.new(0,-2, 0)
    baseplatee.Anchored = true
end
end)

----------------------------------- Teleport Section 2

local dropdown =  TPSection:NewDropdown("Select Player", "", PLRS, function(rbrhrynr)
    Choose = rbrhrynr
end)

TPSection:NewButton("Refresh PLR List", "Refreshes Dropdown", function(aa)
local PLRS = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(PLRS,v.Name)
end
dropdown:Refresh(PLRS)
end)

TPSection:NewButton("View Player", "Views selected player", function()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v.Name == Choose then
    game.Workspace.Camera.CameraSubject = v.Humanoid
    end
    end
    end)

TPSection:NewButton("Teleport", "Teleports you to selected player", function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == Choose then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
end
end
end)

----------------------------------- Settings section

SettingsSection:NewKeybind("Toggle Ui", "Toggles the ui on and off when key is pressed", Enum.KeyCode.P, function()
    Library:ToggleUI()
end)

local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
    }

for theme, color in pairs(colors) do
    ColorSection:NewColorPicker(theme, "Change your "..theme, color, function(color3)
    Library:ChangeColor(theme, color3)
    end)
end
end  
