script.Parent = game.ReplicatedStorage
local rs = game:GetService("ReplicatedStorage")

local newTransfer = Instance.new("RemoteEvent", rs)
newTransfer.Name = "Transfer"
local newEditCash = Instance.new("RemoteEvent", rs)
newEditCash.Name = "EditCash"
script:Destroy()
-- End of Script
