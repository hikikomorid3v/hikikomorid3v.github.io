local library = loadstring(game:HttpGet("https://github.com/GoHamza/AppleLibrary/blob/main/main.lua?raw=true"))()


local window = library:init("Choose the section please..", true, Enum.KeyCode.RightShift, true)

window:Divider("This made by shiya")

local sectionA = window:Section("SHIYA")

sectionA:Divider("Made By shiya")

sectionA:Button("Fixer", function()
    workspace.MusicPortal.Part:Destroy()
    for i,v in (game.workspace:GetDescendants()) do
    if v.Name == "Teleport" then
    v:Destroy()
    end
    end
end)

sectionA:Button("Gamepass", function()
    for i,v in (LocalPlayer:GetDescendants()) do
    if v.Name ~= "SHIYAGUIGAMEPASSES" then
    WorkedDONTTOUCH.Name = "SHIYAGUIGAMEPASSES"
    WorkedDONTTOUCH.Parent = LocalPlayer.HavePasses
    Dances.Name = "Пак танцев"
    Dances.Value = 717065798
    trail.Name = "Трейл"
    trail.Value = 42688565
    trail.Parent = LocalPlayer
    Dances.Parent = LocalPlayer
    wait(5)
    trail.Parent = LocalPlayer.HavePasses
    Dances.Parent = LocalPlayer.HavePasses
    end
    end
end)