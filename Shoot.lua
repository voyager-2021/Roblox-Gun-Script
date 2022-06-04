script.parent.equipped:Connect(function(Mouse)
local function Reload()
    reloading = true
    wait(2)
    ammo = maxAmmo
    print("Reloaded")
    reloading = false
end

script.Parent.Activated:Connect(function()
        if ammo > 0 and not reloading then --SHOOTING
            ammo = ammo-1
            if Mouse.Target.Parent:FindFirstChild("Humanoid") then
                script.Parent.Damage:FireServer(Mouse.Target.Parent)
            end
        elseif reloading == false then
        Reload()
        end
        print(ammo)
    end)

game:GetService("UserInputService").InputBegan:Connect(function(Key) --RELOADING
    if Key.KeyCode == Enum.KeyCode.R and reloading == false and ammo ~= maxAmmo then
        Reload()
    end
end)
