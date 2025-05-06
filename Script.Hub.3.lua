-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "BondRainbowGui"
gui.ResetOnSpawn = false

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 500)  -- Initial height to fit all 10 buttons, adjust as needed
frame.Position = UDim2.new(0.5, -150, 0.5, -250)  -- Adjusted position for center alignment
frame.BackgroundColor3 = Color3.new(0, 0, 0)  -- Black background
frame.BorderSizePixel = 4  -- Green outline width
frame.BorderColor3 = Color3.new(0, 1, 0)  -- Green outline color
frame.Parent = gui
frame.Active = true
frame.Draggable = true

-- Add rounded corners to the frame
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 16)  -- Set the radius for smooth corners
frameCorner.Parent = frame

-- Function to create buttons
local function createButton(text, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.Text = text
    button.TextColor3 = Color3.new(1, 1, 1)
    button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)  -- Dark background for the button
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 24
    button.Parent = frame

    -- Add rounded corners to the button
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 12)  -- Set the radius for smooth corners
    buttonCorner.Parent = button

    return button
end

-- Create Bond Button (Position at the top)
local bondButton = createButton("Page 3", UDim2.new(0.5, -100, 0, 10))

-- Create additional buttons (1 to 10)
local button1 = createButton("Comming Soon", UDim2.new(0.5, -100, 0, 70))
local button2 = createButton("comming soon", UDim2.new(0.5, -100, 0, 130))
local button3 = createButton("Comming Soon", UDim2.new(0.5, -100, 0, 190))
local button4 = createButton("Comming Soon", UDim2.new(0.5, -100, 0, 250))
local button5 = createButton("Comming Soon", UDim2.new(0.5, -100, 0, 310))
local button6 = createButton("Comming Soon", UDim2.new(0.5, -100, 0, 370))
local button7 = createButton("Comming Soon", UDim2.new(0.5, -100, 0, 430))
local button8 = createButton("Comming Soon", UDim2.new(0.5, -100, 0, 490))
local button9 = createButton("Comming Soon", UDim2.new(0.5, -100, 0, 550))
local button10 = createButton("More", UDim2.new(0.5, -100, 0, 610))

-- Adjust Frame Height Based on Buttons
frame.Size = UDim2.new(0, 300, 0, 650)  -- Height adjusted based on 10 buttons

-- Minimize Button
local minimize = Instance.new("TextButton")
minimize.Size = UDim2.new(0, 25, 0, 25)
minimize.Position = UDim2.new(1, -55, 0, 5)
minimize.Text = "-"
minimize.TextColor3 = Color3.new(1, 1, 1)
minimize.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)  -- Darker background for minimize button
minimize.Font = Enum.Font.SourceSansBold
minimize.TextSize = 20
minimize.Parent = frame

-- Add rounded corners to minimize button
local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(0, 6)  -- Set the radius for smooth corners
minimizeCorner.Parent = minimize

-- Close Button
local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 25, 0, 25)
close.Position = UDim2.new(1, -25, 0, 5)
close.Text = "X"
close.TextColor3 = Color3.new(1, 1, 1)
close.BackgroundColor3 = Color3.new(0.5, 0, 0)  -- Red background for close button
close.Font = Enum.Font.SourceSansBold
close.TextSize = 20
close.Parent = frame

-- Add rounded corners to close button
local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)  -- Set the radius for smooth corners
closeCorner.Parent = close

-- Minimize logic
local minimized = false
minimize.MouseButton1Click:Connect(function()
	minimized = not minimized
	for _, child in pairs(frame:GetChildren()) do
		if child:IsA("TextButton") and child ~= minimize and child ~= close then
			child.Visible = not minimized
		end
	end
end)

-- Close GUI
close.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

-- Bond Button Click: Load script
bondButton.MouseButton1Click:Connect(function()
	print("Bond script loading...")
	-- Replace with your actual script
	-- For example:
	-- game.ReplicatedStorage.BondScript:Fire()  -- This can be your custom function
end)

-- Additional button click functions (optional)
button1.MouseButton1Click:Connect(function()

end)
button2.MouseButton1Click:Connect(function()

end)

button3.MouseButton1Click:Connect(function()

end)

button4.MouseButton1Click:Connect(function()

end)

button5.MouseButton1Click:Connect(function()
    print("Button 5 clicked")
end)

button6.MouseButton1Click:Connect(function()
    print("Button 6 clicked")
end)

button7.MouseButton1Click:Connect(function()
    print("Button 7 clicked")
end)

button8.MouseButton1Click:Connect(function()
    print("Button 8 clicked")
end)

button9.MouseButton1Click:Connect(function()
    print("Button 9 clicked")
end)

button10.MouseButton1Click:Connect(function()
    print("Button 10 clicked")
end)
