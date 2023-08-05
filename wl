HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1137125561026748547/OWDvLaNhHsaKNWOg8IHvkhfRKaInD6vsxYkBhMl3B2JCCAWbQNOMRwJCtrALbMBZMQ6k"

local reponce = syn.request(
{
    Url = Webhook_URL,
    Method = "POST",
    Headers = {
        ['Content-Type'] = 'application/json'
    }
    Body = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "**Your script has been excuted!**",
            ["description"] = game.Players.LocalPlayer.DisplayName.." has excuted the script.",
            ["type"] = "rich",
            ["color"] = tonumber(0xffffff),
            ["fields"] = {
                {
                    ["name"] = "HWID:",
                    ["value"] = game.GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                }
            }
        }}
    })
}
)
