-- LocalScript inside StarterPlayerScripts

local player = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")
local mouse = player:GetMouse()
local clicking = false
local clickDelay = 0.01 -- Delay between clicks (10ms for fast clicking)

-- Function to simulate clicks
local function autoClick()
    while clicking do
        mouse1click() -- Simulate a left mouse button click
        wait(clickDelay) -- Wait for the defined click delay
    end
end

-- Function to toggle the auto-clicker
local function toggleAutoClicker()
    clicking = not clicking
    if clicking then
        autoClick() -- Start the clicking loop
    end
end

-- Bind the toggle function to a key (for example, "P" key)
userInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.P and not gameProcessedEvent then
        toggleAutoClicker()
    end
end)








game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Script loaded enjoy!",
Text = "https://discord.gg/EcYJ6jVJTR", 

Button1 = "Yes",
Button2 = "Thank You",
Duration = 30 
})
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "KeyBind is P ",
Text = "https://discord.gg/EcYJ6jVJTR", 

Button1 = "Yes",
Button2 = "Thank You",
Duration = 30 
})