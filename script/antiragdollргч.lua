while true do
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Died:Connect(function()
    wait(6)
    print("done")
    local Players = game:GetService("Players")
    local character = Players.LocalPlayer.Character
    character.Ragdoll:Destroy()
    character["Local Ragdoll"]:Destroy()
    character.RagdollConstraints:Destroy()
end)
task.wait(0.5)
end