local x = 0
local y = 0
local z = 0
local chunks = {}
local chunkCount = 0
local chunkSizeX,chunkSizeY = 5,5
local chunkDoneX,chunkDoneY = 0,0
local prefabs = game:GetService("ServerStorage"):WaitForChild("Prefabs")
local wolrd = workspace.World

function AddTo(Int,Adder,Output)
   Int = Int + Adder
   return output == Int
    
end


function CreateChunk()
    local newChunkFolder = Instance.new("Folder", world)
    newChunkFolder.Name = "Chunk_"..chunkCount
    table.add(chunks,"Chunk_Path_"..chunkCount)
    chunks[chunkCount] = world:WaitForChild("Chunk_"..chunkCount)
end

function DrawBlock(Block,xp,yp,zp,Path)
   local newBlock = prefabs:Clone(Block)
   newBlock.Parent = path
   newBlock.Size = Vector3.new(1,1,1)
   newBlock.CFrame = CFrame.new(xp,yp,zp)
   x=x+1
   
end

while true do
    wait()
    DrawBlock("Grass",x,y,z,chunks[chunkCount])
    if(x==10)then
        x=0
        z=z+1
        chunkDoneZ = chunkDoneZ + 1
    end
    if(x==10)then
        x=0
        z=0
        chunkDoneZ = 0
        chunkDoneX = 0
    end
    
end
