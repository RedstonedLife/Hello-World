local x = 0
local y = 0
local z = 0
local chunks = {}
local chunkCount = 0
local chunkSizeX,chunkSizeY = 5,5
local chunkDoneX,chunkDoneY = 0,0
local prefabs = game:GetService("ServerStorage"):WaitForChild("Prefabs")
local wolrd = workspace.World

function CreateChunk()
    local newChunkFolder = Instance.new("Folder", world)
    newChunkFolder.Name = "Chunk_"..chunkCount
end
