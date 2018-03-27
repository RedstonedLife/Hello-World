--[[
    Name: Generator.lua
    FilteringEnabled Compatiable: No
]]--
local x = 0
local y = 0
local z = 0
local pf = game.ServerStorage.Prefabs -- Create a folder named Prefabs in ServerStorage
local world = Instance.new("Folder", workspace) -- Creates the World folder where the blocks that are Draw'n will be stored :D
world.Name = "world"

-- Functions
function DrawBlock(block,xp,yp,zp)
    local newBlock = pf[Block]:Clone()
    newBlock.Parent = world
    newBlock.Size = Vector3.new(3,3,3)
    newBlock.CFrame = CFrame.new(xp,yp,zp)
    x=x+3
end

function Flat()
    while true do
        wait()
        DrawBlock("BlockName",x,y,z) -- Block name is the block your prefering to in Prefabs :D
        if(x==32)then -- Simple math to calculate to X, Just do the ammount of blocks * 3 , Example: 40 (Blocks) * 3 (3 Studs)
            x=0
            z=z+3
        end
        if(z==32)then -- Same goes for Z and Y
            x=0
            z=0
            break
        end
    end
end

function Bumpy()
    while true do
        wait()
        DrawBlock("BlockName",x,math.random(0.1,2.5),z)
        if(x==32)then
            x=0
            z=z+3
        end
        if(z==32)then
            x=0
            z=0
            break
        end
    end
end

-- Now choose, if the terrain will be Bumpy or flat
Bumpy() -- Will generate a bumpy terrain
-- Flat() will make a Flat Terrain
