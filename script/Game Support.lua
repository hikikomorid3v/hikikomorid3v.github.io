if game.GameId == nil then
    loadstring(game:HttpGet(""))()
  elseif game.GameId == nil then
    loadstring(game:HttpGet(""))()
  else
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "(Putin Club)", Text = "This game is not supported, but we can run the inf yield for you.", Duration = 10})
    loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
  end