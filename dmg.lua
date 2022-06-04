local damage = 50

script.Parent.Damage.OnServerEvent:Connect(function(Player,Target)
    Target.Humanoid:TakeDamage(damage)
end)
