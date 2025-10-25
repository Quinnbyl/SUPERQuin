-- Simple GUI Speed + Dupe + Buy Items
--== Climb & Jump Tower Enhanced Script ==--
local p = game:GetService("Players").LocalPlayer
local pg = p:WaitForChild("PlayerGui")
local gui = Instance.new("ScreenGui", pg)
gui.Name = "SimpleHub"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 250, 0, 300)
frame.Position = UDim2.new(0.5, -125, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "Simple Hub"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundColor3 = Color3.fromRGB(70, 70, 70)

-- Walk Speed Button
local wsBtn = Instance.new("TextButton", frame)
wsBtn.Size = UDim2.new(1, -20, 0, 40)
wsBtn.Position = UDim2.new(0, 10, 0, 50)
wsBtn.Text = "Increase WalkSpeed"
wsBtn.BackgroundColor3 = Color3.fromRGB(60, 100, 200)
wsBtn.TextColor3 = Color3.new(1,1,1)

-- Climb Speed Button
local climbBtn = wsBtn:Clone()
climbBtn.Parent = frame
climbBtn.Position = UDim2.new(0, 10, 0, 100)
climbBtn.Text = "Increase ClimbSpeed"

-- Dupe Button
local dupeBtn = wsBtn:Clone()
dupeBtn.Parent = frame
dupeBtn.Position = UDim2.new(0, 10, 0, 150)
dupeBtn.Text = "Dupe Souvenir"

-- Buy Items Button
local buyBtn = wsBtn:Clone()
buyBtn.Parent = frame
buyBtn.Position = UDim2.new(0, 10, 0, 200)
buyBtn.Text = "Buy All Items"

-- Actions
wsBtn.MouseButton1Click:Connect(function()
    p.Character.Humanoid.WalkSpeed = 99999
    print("WalkSpeed set to 99999")
end)

climbBtn.MouseButton1Click:Connect(function()
    p.Character.Humanoid.ClimbSpeed = 10000
    print("ClimbSpeed set to 10000")
end)

dupeBtn.MouseButton1Click:Connect(function()
    print("Dupe Souvenir executed!") 
    -- tambahkan logika dupe di sini kalau kamu punya nama item / eventnya Souvenir
    -- Bag 
    -- Pet
    -- Souvenir
end)

buyBtn.MouseButton1Click:Connect(function()
    print("Buying all items executed!")
    -- tambahkan logika pembelian item di sini
    -- Pet 1999
end)
