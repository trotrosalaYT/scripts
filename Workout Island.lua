-- Gui to Lua
-- Version: 3.2

-- Instances:

local WorkOutIsland = Instance.new("ScreenGui")
local gui = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local lift = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local destroy = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local label = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local buyall = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local buydna = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local autodecline = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local off = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local on = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")

--Properties:

WorkOutIsland.Name = "WorkOutIsland"
WorkOutIsland.Parent = game.CoreGui
WorkOutIsland.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

gui.Name = "gui"
gui.Parent = WorkOutIsland
gui.BackgroundColor3 = Color3.fromRGB(48, 0, 203)
gui.Position = UDim2.new(0.299811453, 0, 0.0697674453, 0)
gui.Size = UDim2.new(0, 724, 0, 323)

UICorner.Parent = gui

lift.Name = "lift"
lift.Parent = gui
lift.BackgroundColor3 = Color3.fromRGB(1, 128, 206)
lift.Position = UDim2.new(0, 0, 0.845201254, 0)
lift.Size = UDim2.new(0, 200, 0, 50)
lift.Font = Enum.Font.PatrickHand
lift.Text = "Auto Lift"
lift.TextColor3 = Color3.fromRGB(0, 0, 0)
lift.TextScaled = true
lift.TextSize = 14.000
lift.TextWrapped = true
lift.MouseButton1Down:Connect(function()
	while wait(0.5) do
		local Event = game:GetService("ReplicatedStorage").Remotes.LiftWeight
		Event:FireServer()

	end
end)

UICorner_2.Parent = lift

destroy.Name = "destroy"
destroy.Parent = gui
destroy.BackgroundColor3 = Color3.fromRGB(188, 0, 3)
destroy.Position = UDim2.new(0.361878455, 0, 0.845201254, 0)
destroy.Size = UDim2.new(0, 200, 0, 50)
destroy.Font = Enum.Font.PatrickHand
destroy.Text = "Destroy"
destroy.TextColor3 = Color3.fromRGB(0, 0, 0)
destroy.TextScaled = true
destroy.TextSize = 14.000
destroy.TextWrapped = true
destroy.MouseButton1Down:Connect(function()
	game.CoreGui.WorkOutIsland:Destroy()
end)

UICorner_3.Parent = destroy

label.Name = "label"
label.Parent = gui
label.BackgroundColor3 = Color3.fromRGB(209, 4, 209)
label.Size = UDim2.new(0, 724, 0, 50)
label.Font = Enum.Font.PatrickHand
label.Text = "Can't turn off Auto Lift cuz ur bad L"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextSize = 70.000
label.TextWrapped = true

UICorner_4.Parent = label

buyall.Name = "buyall"
buyall.Parent = gui
buyall.BackgroundColor3 = Color3.fromRGB(0, 179, 11)
buyall.Position = UDim2.new(0.723756909, 0, 0.845201254, 0)
buyall.Size = UDim2.new(0, 200, 0, 50)
buyall.Font = Enum.Font.PatrickHand
buyall.Text = "Buy All Weights"
buyall.TextColor3 = Color3.fromRGB(0, 0, 0)
buyall.TextScaled = true
buyall.TextSize = 14.000
buyall.TextWrapped = true
buyall.MouseWheelForward:Connect(function()
	local A_1 = "\87\101\105\103\104\116"
	local A_2 = "\73\115\108\97\110\100\115"
	local Event = game:GetService("ReplicatedStorage").Remotes.Shop.RequestBuyAll
	Event:InvokeServer(A_1, A_2)
end)

UICorner_5.Parent = buyall

buydna.Name = "buydna"
buydna.Parent = gui
buydna.BackgroundColor3 = Color3.fromRGB(167, 170, 0)
buydna.Position = UDim2.new(0.723756909, 0, 0.662538707, 0)
buydna.Size = UDim2.new(0, 200, 0, 50)
buydna.Font = Enum.Font.PatrickHand
buydna.Text = "Buy Next DNA"
buydna.TextColor3 = Color3.fromRGB(0, 0, 0)
buydna.TextScaled = true
buydna.TextSize = 14.000
buydna.TextWrapped = true
buydna.MouseButton1Down:Connect(function()
	local A_1 = 2
	local A_2 = "\68\78\65"
	local A_3 = "\73\115\108\97\110\100\115"
	local Event = game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase
	Event:InvokeServer(A_1, A_2, A_3)
end)

UICorner_6.Parent = buydna

autodecline.Name = "autodecline"
autodecline.Parent = gui
autodecline.BackgroundColor3 = Color3.fromRGB(188, 0, 3)
autodecline.Position = UDim2.new(0.361878455, 0, 0.662538707, 0)
autodecline.Size = UDim2.new(0, 200, 0, 50)
autodecline.Font = Enum.Font.PatrickHand
autodecline.Text = "Auto Decline Requests"
autodecline.TextColor3 = Color3.fromRGB(0, 0, 0)
autodecline.TextScaled = true
autodecline.TextSize = 14.000
autodecline.TextWrapped = true
autodecline.MouseButton1Down:Connect(function()
	local A_1 = game:GetService("Players").LocalPlayer
	local Event = game:GetService("ReplicatedStorage").Remotes.Trade.DeclineRequest
	Event:FireServer(A_1)
end)

UICorner_7.Parent = autodecline

off.Name = "off"
off.Parent = WorkOutIsland
off.BackgroundColor3 = Color3.fromRGB(208, 0, 3)
off.Position = UDim2.new(0.87429291, 0, 0.308445513, 0)
off.Size = UDim2.new(0, 200, 0, 50)
off.Visible = false
off.Font = Enum.Font.PatrickHand
off.Text = "turn on"
off.TextColor3 = Color3.fromRGB(0, 0, 0)
off.TextSize = 70.000
off.TextWrapped = true
off.MouseButton1Down:Connect(function()
	gui.Visible = false
	on.Visible = true
	off.Visible = false
end)

UICorner_8.Parent = off

on.Name = "on"
on.Parent = WorkOutIsland
on.BackgroundColor3 = Color3.fromRGB(27, 208, 0)
on.Position = UDim2.new(0.87429291, 0, 0.308445513, 0)
on.Size = UDim2.new(0, 200, 0, 50)
on.Visible = true
on.Font = Enum.Font.PatrickHand
on.Text = "turn on"
on.TextColor3 = Color3.fromRGB(0, 0, 0)
on.TextSize = 70.000
on.TextWrapped = true
on.MouseButton1Down:Connect(function()
	gui.Visible = true
	off.Visible = true
	on.Visible = false
end)

UICorner_9.Parent = on