local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
 
local PhantomForcesWindow = Library:NewWindow("Trazh Hub | Legends of speed")
 
local KillingCheats = PhantomForcesWindow:NewSection("Main")



getgenv().collectHoopsToggle = false
getgenv().collectOrbsToggle = false
getgenv().autoRebirth = false

function collectHoopsToggle() -- Auto Collects Hoops
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectHoopsToggle then break end
            for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
            end 
        end
    end)
end

function collectOrbsToggle() -- Auto Collects Orbs
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectOrbsToggle then break end
            for i, v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 1)
                    wait(0.1)
                    firetouchinterest(playerHead, v.Parent, 0)
                end
            end
        end
    end)
end

function autoRebirth() -- Well it says auto rebirth, I'm sure we all know what that is
    spawn(function() 
        while wait(5) do
            if not getgenv().autoRebirth then break end
            local args = {[1] = "rebirthRequest"}
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
         end
    end)
end

spawn(function() -- Anti AFK
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end) 
end)



getgenv().collectHoopsToggle = false
getgenv().collectOrbsToggle = false
getgenv().autoRebirth = false

function collectHoopsToggle() -- Auto Collects Hoops
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectHoopsToggle then break end
            for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
            end 
        end
    end)
end

function collectOrbsToggle() -- Auto Collects Orbs
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectOrbsToggle then break end
            for i, v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 1)
                    wait(0.1)
                    firetouchinterest(playerHead, v.Parent, 0)
                end
            end
        end
    end)
end

function autoRebirth() -- Well it says auto rebirth, I'm sure we all know what that is
    spawn(function() 
        while wait(5) do
            if not getgenv().autoRebirth then break end
            local args = {[1] = "rebirthRequest"}
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
         end
    end)
end

spawn(function() -- Anti AFK
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end) 
end)
getgenv().collectHoopsToggle = false
getgenv().collectOrbsToggle = false
getgenv().autoRebirth = false

function collectHoopsToggle() -- Auto Collects Hoops
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectHoopsToggle then break end
            for i, v in pairs(game:GetService("Workspace").Hoops:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 0)
                    wait(0.01)
                    firetouchinterest(playerHead, v.Parent, 1)
                end
            end 
        end
    end)
end

function collectOrbsToggle() -- Auto Collects Orbs
    spawn(function()
        local playerHead = game.Players.LocalPlayer.Character.Head
        while wait() do
            if not getgenv().collectOrbsToggle then break end
            for i, v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                    -- Fire the Touch Interest
                    firetouchinterest(playerHead, v.Parent, 1)
                    wait(0.1)
                    firetouchinterest(playerHead, v.Parent, 0)
                end
            end
        end
    end)
end

function autoRebirth() -- Well it says auto rebirth, I'm sure we all know what that is
    spawn(function() 
        while wait(5) do
            if not getgenv().autoRebirth then break end
            local args = {[1] = "rebirthRequest"}
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(args))
         end
    end)
end

spawn(function() -- Anti AFK
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end) 
end)







KillingCheats:CreateToggle("Auto rebirth", function(bool)
getgenv().autoRebirth = bool
    print(shared.toggle)
    if bool then
        autoRebirth()
    end
end)

KillingCheats:CreateToggle("Auto collect", function(bool)
getgenv().collectOrbsToggle = bool
    print(shared.toggle)
    if bool then
        collectOrbsToggle()
    end
end)


KillingCheats:CreateToggle("Auto hoops", function(bool)
getgenv().collectHoopsToggle = bool
    print(shared.toggle)
    if bool then
        collectHoopsToggle()
    end
end)

local KillingCheats = PhantomForcesWindow:NewSection("Teleport")

KillingCheats:CreateButton("Highway legends", function()
local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(3682.60254, 71.5308151, 5592.50879, -0.0193620101, 3.62180188e-08, -0.999812543, 4.99353519e-08, 1, 3.52577771e-08, 0.999812543, -4.92433294e-08, -0.0193620101)
end)

KillingCheats:CreateButton("Snow city", function()
local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(-866.386841, 4.00088787, 2165.70654, -0.499959469, -9.93534854e-08, -0.866048813, -4.44803661e-08, 1, -8.90424445e-08, 0.866048813, -5.99544503e-09, -0.499959469)
end)

KillingCheats:CreateButton("Magma city", function()
local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(1616.82739, 4.05089617, 4330.65283, 7.86637156e-06, -4.15036254e-08, -1, -6.3789912e-08, 1, -4.15041264e-08, 1, 6.37902389e-08, 7.86637156e-06)  
end)

KillingCheats:CreateButton("City", function()
local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(-537.767456, 3.95088959, 386.226837, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)