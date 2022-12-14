local url = "https://raw.githubusercontent.com/s2rce/.dot/main/games"

local games = {
    [155615604] = "Prison Life";
    [6407649031] = "No-Scope Arcade";
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

return loadstring(game:HttpGet(url.. "/"..(games[game.PlaceId] or games[game.GameId] or "Universal")..".lua"))()
