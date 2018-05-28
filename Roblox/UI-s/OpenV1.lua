local plr = game:GetService("Players").LocalPlayer
local plg = plr:WaitForChild("PlayerGui")
local ui = plg:WaitForChild("GuiNameHere(The Screen GUI)")
local f = ui:WaitForChild("FrameName")
local on=false

script.parent.MouseButton1Click:Connect(function()
    if on == true then
        f.Visible = false
        on = false
    end
    if on == false then
        f.Visible = true
        on = true
    end
end)

-- Put this in a TextButton or ImageButton
-- It will do a pop up
