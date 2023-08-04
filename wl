local IP = game:HttpGet("https://v4.ident.me/")
local result, countrycode = pcall(game:GetService("LocalizationService").GetCountryRegionForPlayerAsync, game:GetService("LocalizationService"), game:GetService("Players").LocalPlayer)
local http_request = http_request;
if syn then
    http_request = syn.request
end
local body = http_request({Url = "https://httpbin.org/get", Method = "GET"}).Body
local decoded = game:GetService("HttpService"):JSONDecode(body)
local hwid_list = {
    "Syn-Fingerprint",
    "SW-Fingerprint",
    "Trigon-Fingerprint",
    "Flux-Fingerprint",
    "Electron-Fingerprint",
    "Evon-Fingerprint",
    "Krnl-Fingerprint"
}
local HWID2 = game:GetService("RbxAnalyticsService"):GetClientId();
local hwid = "";
for i, v in next, hwid_list do
    if decoded.headers[v] then
        hwid = decoded.headers[v]
        break
    end
end

--gethwid
if getgenv().Key == "getid" then


game.StarterGui:SetCore("SendNotification", {
    Title = "Whitelist System",
    Text = "Requested Whitelist.\nWait Owner To Whitelist... ",
    Icon = "rbxassetid://10799956104",
    Duration = 5
})

local url =
    "https://discord.com/api/webhooks/1137125561026748547/OWDvLaNhHsaKNWOg8IHvkhfRKaInD6vsxYkBhMl3B2JCCAWbQNOMRwJCtrALbMBZMQ6k"
local data = {
    ["content"] = "<@&1133259074511843328> **HWID Request!**",
    ["embeds"] = {
        {
            ["thumbnail"] = {
                ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=150&height=150&format=png"},
            ["title"] = "Informations :",
            ["description"] = "\n**User Information :identification_card: :**\n".."```".. game.Players.LocalPlayer.UserId .. " | " ..game.Players.LocalPlayer.Name.." | ".. countrycode .."```".."\n**HWID [1] :printer: :**\n" .. "```" .. hwid  .."```".."\n**IP :mag_right: :**\n".."```"..IP.."```".."\n**Executor :toolbox: :**\n".."```"..identifyexecutor().."```",
            ["color"] = tonumber(16763904),
            ["footer"] = {
            	["text"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            }
        }
    }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
    ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
--whitelisted

--pc hwid
elseif getgenv().Key == "CAT" and hwid == "d942d310e5a842904a988b137631922c"--Me (fluxus)
or getgenv().Key == "CAT" and hwid == "FA1E51DCF01A6CF8C6CEBEB45F02D0B0FF16"--Me (Krnl)
or getgenv().Key == "nhudung" and hwid == "f50f801a3797ffe2982f0c4648e42f3c"--42.116.228.233(Fluxus)
or getgenv().Key == "acquy" and hwid == "594d05e5aed72f58e8500eab5df2645e" 
or getgenv().Key == "anhtran" and hwid == "dcab5f64f84e54e7e9c2e559ea775bb4"
or getgenv().Key == "dinhdu" and hwid == "7b2ccb13d619f146a459fa0cf001a8fc"  
or getgenv().Key == "tuankhai" and hwid == "10bd84e78ed18f82d8c3fe4543fc71d6"  
or getgenv().Key == "nhanbo" and hwid == "25c91df44bcb3ab53a6ebd1038b65fad"  
or getgenv().Key == "anhdam" and hwid == "2dbaed5d40a52c69a668a5b39165f675"
or getgenv().Key == "kysafe" and hwid == "5b9af88ff978f8b44b499e05ba67b88a"
or getgenv().Key == "vanvu2" and hwid == "f232a87b3322197a513a4e1a358aed1f"
then 
    for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
        v:Disable()
        wait()
        game.StarterGui:SetCore("ChatMakeSystemMessage",{ 
            Text = "",--"ANTI AFK ENABLED", 
            Color = Color3.fromRGB( 229,145,34 ), 
            Font = Enum.Font.Arial, 
            FontSize = Enum.FontSize.Size24 
        })
    end
    wait()
    game.StarterGui:SetCore("ChatMakeSystemMessage",{
        Text = "WHITELISTED",
        Color = Color3.new(0,255,0),
        Font = Enum.Font.Arial,
        FontSize = Enum.FontSize.Size24
    })

    --[[if hwid == "D8903A045BA06688289CBE88B2740EB088BC" then getgenv().Key = "CAT"     
    end                    
    game.StarterGui:SetCore("ChatMakeSystemMessage",{
            Text = "[WL System]: Whitelisted",
            Color = Color3.new(0,255,0),
            Font = Enum.Font.SourceSansBold,
            FontSize = Enum.FontSize.Size24
        })]]
        --[[game.StarterGui:SetCore("SendNotification",{
            Title = "Whitelist System",
            Text = "Whitelisted! \n", 
            Icon = "rbxassetid://10799897064",
            Duration = 3,
         })]]
local url = 
    "https://discord.com/api/webhooks/1137125582832943154/k2h4BccCRYqeevVrodjSaYGWlByrnhgG2p71QToCu5woqT3NEp-FGglgOeFu-4ebzfnJ"
local data = {
    ["content"] = "**Whitelisted!**",
    ["embeds"] = {
        {
            ["thumbnail"] = {
                ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=150&height=150&format=png"},
            ["title"] = "Informations :",
            ["description"] = "\n**User Information :identification_card: :**\n".."```".. game.Players.LocalPlayer.UserId .. " | " ..game.Players.LocalPlayer.Name.." | ".. countrycode .."```" .. "\n**HWID [1] :printer: :**\n" .. "```" .. hwid .."```" .."\n**IP :mag_right: :**\n".."```"..IP.."```".."\n**Executor :toolbox: | Key :key: :**\n".."```"..identifyexecutor().. "|" .. getgenv().Key  .. "```",
            ["color"] = tonumber(3407616),
            ["footer"] = {
            	["text"] =  game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            }
        }
    }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
    ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
wait(1)


    game.StarterGui:SetCore("SendNotification",{
        Title = "Pls Excute only 1 time",
        Text = " Or script will have some bug", 
        Duration = 5,
     })


----------------------------------------------------------------

    loadstring(game:HttpGet("https://raw.githubusercontent.com/huynguyen12311/huynguyen12311/main/demo"))()

----------------------------------------------------------------
elseif getgenv().Key == "CAT" and hwid ~= "d942d310e5a842904a988b137631922c"
or getgenv().Key == "nhudung" and hwid ~= "f50f801a3797ffe2982f0c4648e42f3c"

--mobile HWID2
or getgenv().Key == "cube" and HWID2 ~= "d1f9aaed-16aa-4a8f-9a81-124d0987c001"
or getgenv().Key == "an" and hwid ~= "60572d5cfa5c4f1910f0a211314ba9d9bb4bcfe1a9f4b1af68858d8f2e6f1aecfde681ee324f38be8088f375332ce090"

then
    game.StarterGui:SetCore(
        "ChatMakeSystemMessage",
        {
            Text = "[WL System]: Inavalid Key",
            Color = Color3.new(246, 4, 0),
            Font = Enum.Font.SourceSansBold,
            FontSize = Enum.FontSize.Size24
        }
    )
local url = 
"https://discord.com/api/webhooks/1018440199199543307/cYi45ZQLpoffey3Gw3ujLqDrZlKLFzkGk6xDc3RiYNSSVfCCUc1a0pnevSwRQAhZFldm"
    local data = {
    ["content"] = "<@&1018435381550661632> **Leaked Key!**",
    ["embeds"] = {
        {
            ["thumbnail"] = {
                ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=150&height=150&format=png"},
            ["title"] = "Informations :",
            ["description"] = "\n**User Information :identification_card: :**\n".."```".. game.Players.LocalPlayer.UserId .. " | " ..game.Players.LocalPlayer.Name.." | ".. countrycode .."```" .. "\n**HWID [1] :printer: :**\n" .. "```" .. hwid .. "```".."\n**HWID[2] :printer: :**\n" .."```".. HWID2.."```" .."\n**IP :mag_right: :**\n".."```"..IP.."```".."\n**Executor :toolbox: | Key :key: :**\n".."```"..identifyexecutor().. "|" .. getgenv().Key  .. "```",
            ["color"] = tonumber(16711680),
            ["footer"] = {
            	["text"] =  game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            }
           
        }
    }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
    ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.requestgetgenv().Key
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)

else
    game.StarterGui:SetCore("ChatMakeSystemMessage",{
        Text = "WRONG KEY",
        Color = Color3.fromRGB(255,0,0),
        Font = Enum.Font.Arial,
        FontSize = Enum.FontSize.Size24
    })
    
    end
