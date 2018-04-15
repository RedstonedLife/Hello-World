local rs = game:GetService("ReplicatedStorage")

rs.Transfer.OnServerEvent:Connect(function(plr,Player,Cash, Executor)
	local pld = game:GetService("Players")[Player].leaderstats
	pld.leaderstats.Cash = pld.leaderstats.Cash + Cash
	rs.EditCash:FireServer(Executor,"Remove",Cash)
end)

rs.EditCash.OnServerEvent:Connect(function(plr,p,Type,Cash) -- Edits players cash either add or remove
	local pl = game:GetService("Players")[p].leaderstats
	if(Type == "Remove")then
			pl.Cash = pl.Cash - Cash
			print("Removed: "..Cash.." | From:"..p.Name)
	end
	if(Type == "Add")then
			pl.Cash = pl.Cash + Cash
			print("Added: "..Cash.." | To: "..p.Name
	end
end)
