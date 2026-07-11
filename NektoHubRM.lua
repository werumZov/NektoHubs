local notification_gui = Instance.new("ScreenGui")
notification_gui.DisplayOrder = 999999999
notification_gui.Name = "Notification"
notification_gui.Parent = game.CoreGui
-- notification_gui.IgnoreGuiInset = true

local notification_queue = {}
local can_notify = true
local notification_frame = Instance.new("Frame")
notification_frame.Parent = notification_gui
notification_frame.Position = UDim2.new(0.5, 0, 0.6, 0)
notification_frame.AnchorPoint = Vector2.new(0.5, 0.5)
notification_frame.Size = UDim2.new(0.1, 0, 0.1, 0)
notification_frame.BackgroundTransparency = 1
notification_frame.Name = "notification_f"

local notification_layout = Instance.new("UIGridLayout")
notification_layout.Parent = notification_frame
notification_layout.CellPadding = UDim2.new(0, 5, 0, 5)
notification_layout.CellSize = UDim2.new(1, 0, 0.25, 0)
notification_layout.VerticalAlignment = Enum.VerticalAlignment.Top

function show_notification(message)
	if can_notify then
		local notification_item = Instance.new("TextLabel")
		notification_item.Parent = notification_frame
		notification_item.BackgroundColor3 = Color3.new(0, 0, 0)
		notification_item.Text = ""
		notification_item.TextScaled = true
		notification_item.Font = Enum.Font.SourceSansBold
		notification_item.TextColor3 = Color3.new(0, 0, 0)
		notification_item.Transparency = 1
		notification_item.Size = UDim2.new(0.2, 0, 1, 0)
		notification_item.Position = UDim2.new(0.5, 0, 0.5, 0)
		notification_item.AnchorPoint = Vector2.new(0.5, 0.5)
		notification_item.Visible = true

		local notif_text = Instance.new("TextLabel")
		notif_text.Parent = notification_item
		notif_text.Text = message
		notif_text.TextScaled = true
		notif_text.Font = Enum.Font.SourceSansBold
		notif_text.TextColor3 = Color3.new(1, 1, 1)
		notif_text.Size = UDim2.new(1, 0, 1, 0)
		notif_text.BackgroundTransparency = 1



		Instance.new("UICorner", notification_item)

		game:GetService("TweenService"):Create(notification_item,
			TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 0 }):Play()


		local children = notification_frame:GetChildren()
		local count = #children
		if count > 2 then

		end

		task.spawn(function()
			task.wait(5)
			game:GetService("TweenService"):Create(notification_item,
				TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Transparency = 1 }):Play()
			task.wait(0.5)
			notification_item:Destroy()
		end)
	end
end

wait(0.25)
show_notification("NektoHub moved on new link! Check F9")
wait(0.1)
print("New link in discord server! https://discord.gg/U65StBRNr2")
