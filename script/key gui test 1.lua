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
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Putin Club",
Text = "U can get key in discord", 

Button1 = "Im joined",
Button2 = "Im joined",
Duration = 100 
})
-- Sound plays
local part = Instance.new("Part")
part.Anchored = true
part.Position = Vector3.new(0, 3, 0)
part.BrickColor = BrickColor.new("Bright red")
part.Name = "MusicBox"
part.Parent = workspace
-- Create a LocalScript and place it in StarterPlayerScripts

local player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player.PlayerGui

-- Create main frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(229, 122, 41) -- Orange background
mainFrame.Parent = screenGui

-- Create TextBox for input
local keyInput = Instance.new("TextBox")
keyInput.Size = UDim2.new(0, 250, 0, 50)
keyInput.Position = UDim2.new(0, 25, 0, 10)
keyInput.PlaceholderText = "Enter your key..."
keyInput.TextColor3 = Color3.fromRGB(0, 0, 0) -- Black text
keyInput.BackgroundColor3 = Color3.fromRGB(229, 122, 41) -- Orange background
keyInput.Parent = mainFrame

-- Create confirm button
local confirmButton = Instance.new("TextButton")
confirmButton.Size = UDim2.new(0, 100, 0, 50)
confirmButton.Position = UDim2.new(0.5, -50, 0, 70)
confirmButton.Text = "Confirm"
confirmButton.BackgroundColor3 = Color3.fromRGB(229, 122, 41) -- Orange color
confirmButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
confirmButton.Parent = mainFrame

-- Create message label
local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, 0, 0, 50)
messageLabel.Position = UDim2.new(0, 0, 0, 130)
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text
messageLabel.BackgroundColor3 = Color3.fromRGB(229, 122, 41) -- Orange background
messageLabel.Text = ""
messageLabel.Parent = mainFrame

-- Function to check key
local function checkKey()
    local enteredKey = keyInput.Text

    if enteredKey == "Shiya" then
        messageLabel.Text = "Key Accepted!"
        messageLabel.TextColor3 = Color3.fromRGB(0, 128, 0) -- Green text for success
        
        wait(1) -- Wait for a moment to let the user read the message
        
        -- Execute the loadstring script (insert your code below)
        local success, result = pcall(function()
            loadstring([[
                -- Your code here
                loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                -- You can add more code or functionality here
            ]])()
        end)

        -- Check if the script executed successfully
        if success then
            print("Script executed successfully.")
        else
            warn("Script execution failed: " .. result)
        end

        -- Destroy the GUI after executing the script
        screenGui:Destroy()
    else
        messageLabel.Text = "Incorrect Key. Try Again."
        messageLabel.TextColor3 = Color3.fromRGB(255, 0, 0) -- Red text for error
    end
end

-- Connect button click event
confirmButton.MouseButton1Click:Connect(checkKey)

-- Optional: Allow Enter key to confirm
UserInputService.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Return then
        checkKey()
    end
end)



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