local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
for _,v in pairs(playerGui:GetChildren()) do
	if v.Name == "AdminThumbnailUI" then
		v:Destroy()
	end
end
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdminThumbnailUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui
local container = Instance.new("Frame")
container.Name = "Container"
container.AnchorPoint = Vector2.new(0.5,0.5)
container.Position = UDim2.new(0.5,0.5,0.5,0)
container.Size = UDim2.new(0,520,0,300)
container.BackgroundTransparency = 1
container.Parent = screenGui
local card = Instance.new("Frame")
card.Name = "Card"
card.Size = UDim2.new(1,0,1,0)
card.Position = UDim2.new(0,0,0,0)
card.BackgroundColor3 = Color3.fromRGB(18,18,18)
card.BorderSizePixel = 0
card.Parent = container
local cardCorner = Instance.new("UICorner", card)
cardCorner.CornerRadius = UDim.new(0,14)
local cardStroke = Instance.new("UIStroke", card)
cardStroke.Color = Color3.fromRGB(255,255,255)
cardStroke.Thickness = 2
cardStroke.Transparency = 0.9
local inner = Instance.new("Frame")
inner.Name = "Inner"
inner.Size = UDim2.new(1,-20,1,-20)
inner.Position = UDim2.new(0,10,0,10)
inner.BackgroundColor3 = Color3.fromRGB(12,12,12)
inner.BorderSizePixel = 0
inner.Parent = card
local innerCorner = Instance.new("UICorner", inner)
innerCorner.CornerRadius = UDim.new(0,12)
local innerStroke = Instance.new("UIStroke", inner)
innerStroke.Color = Color3.fromRGB(40,40,44)
innerStroke.Thickness = 1
innerStroke.Transparency = 0.88
local header = Instance.new("Frame")
header.Name = "Header"
header.Size = UDim2.new(1,-24,0,64)
header.Position = UDim2.new(0,12,0,8)
header.BackgroundColor3 = Color3.fromRGB(19,19,19)
header.BorderSizePixel = 0
header.Parent = inner
local headerCorner = Instance.new("UICorner", header)
headerCorner.CornerRadius = UDim.new(0,10)
local headerStroke = Instance.new("UIStroke", header)
headerStroke.Color = Color3.fromRGB(60,60,64)
headerStroke.Thickness = 1
headerStroke.Transparency = 0.92
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1,-22,0,34)
title.Position = UDim2.new(0,12,0,6)
title.BackgroundTransparency = 1
title.Text = "RINGTA"
title.TextColor3 = Color3.fromRGB(235,235,238)
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = header
local byline = Instance.new("TextLabel")
byline.Name = "Byline"
byline.Size = UDim2.new(1,-22,0,18)
byline.Position = UDim2.new(0,12,0,36)
byline.BackgroundTransparency = 1
byline.Text = "discord.gg/ringta"
byline.TextColor3 = Color3.fromRGB(235,235,238)
byline.Font = Enum.Font.Gotham
byline.TextSize = 12
byline.TextXAlignment = Enum.TextXAlignment.Left
byline.Parent = header
local columns = Instance.new("Frame")
columns.Name = "Columns"
columns.Size = UDim2.new(1,-28,1,-100)
columns.Position = UDim2.new(0,14,0,84)
columns.BackgroundTransparency = 1
columns.Parent = inner
local leftCol = Instance.new("Frame")
leftCol.Name = "LeftCol"
leftCol.Size = UDim2.new(0.5, -8, 1, 0)
leftCol.Position = UDim2.new(0,0,0,0)
leftCol.BackgroundTransparency = 1
leftCol.Parent = columns
local rightCol = Instance.new("Frame")
rightCol.Name = "RightCol"
rightCol.Size = UDim2.new(0.5, -8, 1, 0)
rightCol.Position = UDim2.new(0.5,8,0,0)
rightCol.BackgroundTransparency = 1
rightCol.Parent = columns
local leftLayout = Instance.new("UIListLayout", leftCol)
leftLayout.SortOrder = Enum.SortOrder.LayoutOrder
leftLayout.Padding = UDim.new(0,12)
leftLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
local rightLayout = Instance.new("UIListLayout", rightCol)
rightLayout.SortOrder = Enum.SortOrder.LayoutOrder
rightLayout.Padding = UDim.new(0,12)
rightLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
local function makeButton(parent, text, order, emoji)
	local b = Instance.new("TextButton")
	b.Name = text:gsub("%s+","")
	b.Size = UDim2.new(1,-4,0,46)
	b.BackgroundColor3 = Color3.fromRGB(30,30,32)
	b.BorderSizePixel = 0
	b.AutoButtonColor = false
	b.LayoutOrder = order
	b.Text = ""
	b.Parent = parent
	local c = Instance.new("UICorner", b)
	c.CornerRadius = UDim.new(0,10)
	local s = Instance.new("UIStroke", b)
	s.Color = Color3.fromRGB(50,50,54)
	s.Thickness = 1
	s.Transparency = 0.85
	local icon = Instance.new("TextLabel", b)
	icon.Name = "Icon"
	icon.Size = UDim2.new(0,40,0,40)
	icon.Position = UDim2.new(0,10,0,3)
	icon.BackgroundColor3 = Color3.fromRGB(28,28,30)
	icon.BorderSizePixel = 0
	icon.Text = emoji
	icon.TextColor3 = Color3.fromRGB(235,235,238)
	icon.Font = Enum.Font.GothamBold
	icon.TextSize = 20
	icon.TextXAlignment = Enum.TextXAlignment.Center
	icon.TextYAlignment = Enum.TextYAlignment.Center
	local iconCorner = Instance.new("UICorner", icon)
	iconCorner.CornerRadius = UDim.new(0,8)
	local lbl = Instance.new("TextLabel", b)
	lbl.Name = "Label"
	lbl.Size = UDim2.new(1, -64, 1, 0)
	lbl.Position = UDim2.new(0,64,0,0)
	lbl.BackgroundTransparency = 1
	lbl.Text = text
	lbl.TextColor3 = Color3.fromRGB(235,235,238)
	lbl.Font = Enum.Font.GothamBold
	lbl.TextSize = 16
	lbl.TextXAlignment = Enum.TextXAlignment.Left
	return b
end
makeButton(leftCol, "Desync Steal", 1, "🧠")
makeButton(leftCol, "Anti Hit", 2, "⚡")
makeButton(leftCol, "Instant Steal", 3, "💰")
makeButton(leftCol, "Player ESP", 4, "🔄")
makeButton(rightCol, "Laser Steal", 1, "✨")
makeButton(rightCol, "Invisible", 2, "🍀")
makeButton(rightCol, "Set Money", 3, "💰")
makeButton(rightCol, "Set Rebirth", 4, "🔁")
local footer = Instance.new("TextLabel")
footer.Name = "Footer"
footer.Size = UDim2.new(1,-24,0,18)
footer.Position = UDim2.new(0,12,1,-28)
footer.BackgroundTransparency = 1
footer.Text = "Preview • Buttons inactive"
footer.TextColor3 = Color3.fromRGB(160,160,160)
footer.Font = Enum.Font.Gotham
footer.TextSize = 12
footer.TextXAlignment = Enum.TextXAlignment.Left
footer.Parent = inner
