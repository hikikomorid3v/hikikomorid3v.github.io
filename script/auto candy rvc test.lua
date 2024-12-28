-- Create a LocalScript and place it in StarterPlayerScripts or StarterCharacterScripts

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Function to collect candies from CandySpawners
local function collectCandies()
    local candySpawnersFolder = workspace:FindFirstChild("CandySpawners") -- Ensure your folder is named "CandySpawners"

    if candySpawnersFolder then
        -- Get all CandySpawner models from the folder
        local candySpawners = candySpawnersFolder:GetChildren()
        
        for _, spawner in ipairs(candySpawners) do
            if spawner:IsA("Model") then
                -- Check for candies inside the spawner
                for _, candy in ipairs(spawner:GetChildren()) do
                    if candy:IsA("Part") then
                        -- Fire touch interest to simulate collection
                        local touchInterest = Instance.new("TouchTransmitter")
                        touchInterest.Parent = candy
                        
                        -- Fire the interest from the player's Character
                        local function fireTouch()
                            local touchEvent = Instance.new("Touch") -- Create a new Touch instance

                            -- Simulate firing touch interest
                            candy:FireTouchInterest(humanoidRootPart)

                            -- Clean up touch transmitter after use
                            touchInterest:Destroy()
                        end

                        fireTouch()
                        print("Collected: " .. candy.Name)

                        wait(0.5) -- Adjust wait as necessary to avoid rapid collection
                    end
                end
            end
        end
    else
        print("CandySpawners folder not found!")
    end
end

-- Loop to auto-collect candies
while true do
    collectCandies()
    wait(5) -- Wait some time before collecting again, adjust as necessary
end