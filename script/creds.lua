game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Script loaded!",
Text = "created by Putin club - discord in ur clipboard", 

Button1 = "Im joined",
Button2 = "Im joined",
Duration = 100 
})
setclipboard("https://discord.gg/NDET87BN6N")
-- Sound plays
local part = Instance.new("Part")
part.Anchored = true
part.Position = Vector3.new(0, 3, 0)
part.BrickColor = BrickColor.new("Bright red")
part.Name = "MusicBox"
part.Parent = workspace

-- create a sound
-- Create a LocalScript and place it in StarterPlayerScripts or StarterCharacterScripts

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local soundService = game:GetService("SoundService")

-- Function to play a sound from the Roblox library
local function playSound(soundId)
    -- Create a new Sound instance
    local sound = Instance.new("Sound")
    
    -- Set the sound properties
    sound.SoundId = soundId
    sound.Parent = soundService -- Parent the sound to the SoundService
    
    -- Play the sound
    sound:Play()
    
    -- Destroy the sound after it finishes playing
    sound.Ended:Wait()
    sound:Destroy()
end

-- Example sound IDs from Roblox library
local soundIds = {
    "rbxassetid://4590662766", -- Example Sound 1 (You can replace this with other sound IDs)
--    "rbxassetid://301964312", -- Example Sound 2
}

-- Iterate through each sound ID and play them
for _, soundId in pairs(soundIds) do
    playSound(soundId)
    wait(1) -- Wait for 1 second before playing the next sound
end