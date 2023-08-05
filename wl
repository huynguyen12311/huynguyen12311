HttpService = game:GetService("HttpService")
Webhook_URL = "https://discord.com/api/webhooks/1137287712802615306/323RlMPTUSzbuyL1WPpqct9BalA71lP-WfhUgcDncGh3rZGDvkwt6GJ5KOdZBpzm4Jku"

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
