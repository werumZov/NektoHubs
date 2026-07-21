						
-- loaders
--local Conhosted = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ghdtyu190-lab/LuaLibrarys/refs/heads/main/conhosted')))()
--local keysystemloader = loadstring(game:HttpGet(('')))()


-- main init
local menu_key = "RightShift" -- dont used
local script_name = "NektoHub"
local script_name_f9 = "[NektoHub]"
local script_version = "v1.9951"
local cfg_folder = "NektoHubRM"
local sys_folder = "NektoHubRMSys"
local integrated_lib = "Conhosted"


if not isfolder("NektoHubRMSys") then
	-- main folders && files
	makefolder("NektoHubRMSys")
	makefolder("NektoHubRMSys/ms")
	makefolder("NektoHubRMSys/bind")
	makefolder("NektoHubRMSys/bind/bind1")
	makefolder("NektoHubRMSys/bind/bind2")
	makefolder("NektoHubRMSys/bind/bind3")
	makefolder("NektoHubRMSys/bind/bind4")
	makefolder("NektoHubRMSys/bind/function1")
	makefolder("NektoHubRMSys/bind/function2")
	makefolder("NektoHubRMSys/bind/function3")
	makefolder("NektoHubRMSys/bind/function4")

	writefile("NektoHubRMSys/ms/msts.ms", "100ms")

	writefile("NektoHubRMSys/bind/bind1/bind.txt", "nothing")
	writefile("NektoHubRMSys/bind/bind2/bind.txt", "nothing")
	writefile("NektoHubRMSys/bind/bind3/bind.txt", "nothing")
	writefile("NektoHubRMSys/bind/bind4/bind.txt", "nothing")
	writefile("NektoHubRMSys/bind/function1/function.txt", "nothing")
	writefile("NektoHubRMSys/bind/function2/function.txt", "nothing")
	writefile("NektoHubRMSys/bind/function3/function.txt", "nothing")
	writefile("NektoHubRMSys/bind/function4/function.txt", "nothing")

	-- version folder && file
	makefolder("NektoHubRMSys/vs")
	writefile("NektoHubRMSys/vs/vs.txt", "v1.994")

	-- uid folder && file
	makefolder("NektoHubRMSys/qwkjas/uid")
	writefile("NektoHubRMSys/qwkjas/uid/u.txt", "x70psq")

	-- keysys
	
end

if isfolder("NektoHubRMSys") then 
	if not isfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt") then
		writefile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt", "1")
	end
	if not isfile("NektoHubRMSys/bind/qo2kdasosjfanvjdoasdhoaPR.txt") then
		writefile("NektoHubRMSys/bind/qo2kdasosjfanvjdoasdhoaPR.txt", "1")
	end
	if not isfile("NektoHubRMSys/bind/sdauwihdawhd91q8u2y3jadfoi.txt") then
		writefile("NektoHubRMSys/bind/sdauwihdawhd91q8u2y3jadfoi.txt", "0")
	end
	if not isfile("NektoHubRMSys/bind/uqhwh197wghdauishdyiagefia.txt") then
		writefile("NektoHubRMSys/bind/uqhwh197wghdauishdyiagefia.txt", "false")
	end
end

local hours = math.ceil((86400 - (os.time() - tonumber(readfile("NektoHubRMSys/bind/sdauwihdawhd91q8u2y3jadfoi.txt")))) / 3600)
if hours <= 0 then
	writefile("NektoHubRMSys/bind/uqhwh197wghdauishdyiagefia.txt", "false") 
	writefile("NektoHubRMSys/bind/sdauwihdawhd91q8u2y3jadfoi.txt", "inf")
	if readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt") == "1" then
		writefile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt", "2")
	elseif readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt") == "2" then
		writefile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt", "3")
	elseif readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt") == "3" then
		writefile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt", "1")
	end
else
	writefile("NektoHubRMSys/bind/uqhwh197wghdauishdyiagefia.txt", "true") 
end


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


-- exec list
local exec_free_list = {
	"Xeno",
	"Solara",
	"Velocity",
	"Madium",
	"Ronix",
	"Drift",
	"Real"
}

local exec_moba_list = {
	"Delta",
	"Krnl"

}

local exec_paid_list = {
	"Seliware",
	"Potassium",
	"Volt",
	"Cosmic",
	"Volcano"
}


local function MainUI()

	if game.PlaceId ~= 124095328182831 and game.PlaceId ~= 14908286297 then
		s_bypass = true
		local AnimationsHandler = game.Players.LocalPlayer.PlayerScripts:FindFirstChild("AnimationsHandler")
		if AnimationsHandler then
			AnimationsHandler.Enabled = false
		end
		local DeathHandler = game.Players.LocalPlayer.PlayerScripts:FindFirstChild("DeathHandler")
		if DeathHandler then
			DeathHandler.Enabled = false
		end
		local RbxCharacterSounds = game.Players.LocalPlayer.PlayerScripts:FindFirstChild("RbxCharacterSounds")
		if RbxCharacterSounds then
			RbxCharacterSounds.Enabled = false
		end
		wait(0.02)
		local Anticheat = game.Players.LocalPlayer.PlayerScripts:FindFirstChild("LocalScript")
		if Anticheat then
			Anticheat.Enabled = false
		end
		wait(0.02)
		local AnimationsHandler = game.Players.LocalPlayer.PlayerScripts:FindFirstChild("AnimationsHandler")
		if AnimationsHandler then
			AnimationsHandler.Enabled = true
		end
		local DeathHandler = game.Players.LocalPlayer.PlayerScripts:FindFirstChild("DeathHandler")
		if DeathHandler then
			DeathHandler.Enabled = true
		end
		local RbxCharacterSounds = game.Players.LocalPlayer.PlayerScripts:FindFirstChild("RbxCharacterSounds")
		if RbxCharacterSounds then
			RbxCharacterSounds.Enabled = true
		end
	end

	-- f9
	local executor_name = identifyexecutor()
	print(script_name_f9 .. " Your Executor: " .. executor_name)
	print(script_name_f9 .. " Current Script Version: " .. script_version)



	-- binds
	local function read_keybind_file(path)
		local ok, content = pcall(readfile, path)
		if ok and content and content ~= "nothing" then return content end
		return nil
	end

	local function read_function_file(path)
		local ok, content = pcall(readfile, path)
		if ok and content and content ~= "nothing" then return content end
		return nil
	end

	local bind1_key = read_keybind_file("NektoHubRMSys/bind/bind1/bind.txt")
	local bind2_key = read_keybind_file("NektoHubRMSys/bind/bind2/bind.txt")
	local bind3_key = read_keybind_file("NektoHubRMSys/bind/bind3/bind.txt")
	local bind4_key = read_keybind_file("NektoHubRMSys/bind/bind4/bind.txt")
	local func1 = read_function_file("NektoHubRMSys/bind/function1/function.txt")
	local func2 = read_function_file("NektoHubRMSys/bind/function2/function.txt")
	local func3 = read_function_file("NektoHubRMSys/bind/function3/function.txt")
	local func4 = read_function_file("NektoHubRMSys/bind/function4/function.txt")



	-- проверка на нужное значение uid в файле
	function css_client_uid(uid, key)
		local list = {}
		local currentScriptUid = "x70psq"
		local customScriptUid = uid
		local key = key
		if readfile("NektoHubRMSys/qwkjas/uid/u.txt") ~= currentScriptUid and customScriptUid then
			warn(customScriptUid .. " - warning")
			wait(3)
			error(customScriptUid .. " - error:script closing - eternal uid error;90xxoiw")
			wait(1)
			game.CoreGui.NektoUI:Destroy()
		else
			if readfile("NektoHubRMSys/qwkjas/uid/u.txt") == currentScriptUid and customScriptUid then
				print(currentScriptUid .. " - 1.0")
				print(key)
			end
		end
	end
	
	function syntax()
		local syntaxFloat = 9951
	end
	
	function getgenvsyntax()
		local genv = getgenv().NEKTOHUB
		if genv == "RM" then
			print("Script id: RM9951")
		else
			game.Players.LocalPlayer:Kick("Error to get getgenv()")
		end
	end


	-- old method esp
	local ESPLib = {}

	function ESPLib:CreateESPTag(params)
		local RunService = game:GetService("RunService")
		local player = game.Players.LocalPlayer
		local camera = game:GetService("Workspace").CurrentCamera

		local Text = params.Text
		local Part = params.Part
		local TextSize = params.TextSize
		local TextColor = params.TextColor
		local BoxColor = params.BoxColor
		local TracerColor = params.TracerColor or Color3.new(255, 255, 255)
		local TracerWidth = params.TracerWidth or 3
		local TrailMode = params.TrailMode or false
		local TrailColor = params.TrailColor or { Color3.new(255, 0, 0) }
		local TrailWidth = params.TrailWidth or { 2 }

		local isActive = true
		local renderConnection = nil

		if #TrailColor < 2 then
			TrailColor[2] = TrailColor[1]
		end

		if #TrailWidth < 2 then
			TrailWidth[2] = TrailWidth[1] -- Duplicate the width if only one is provided
		end

		local esp = Instance.new("BillboardGui")
		esp.Name = "esp"
		esp.Size = UDim2.new(0, 200, 0, 50)
		esp.StudsOffset = Vector3.new(0, Part.Size.Y + 2, 0) -- Adjusted offset for the label above the head
		esp.Adornee = Part
		esp.Parent = Part
		esp.AlwaysOnTop = true

		local esplabelfr = Instance.new("TextLabel")
		esplabelfr.Name = "esplabelfr"
		esplabelfr.Size = UDim2.new(1, 0, 0, 70)
		esplabelfr.BackgroundColor3 = Color3.new(0, 0, 0)
		esplabelfr.TextColor3 = TextColor or Color3.fromRGB(255, 255, 255)
		esplabelfr.BackgroundTransparency = 1
		esplabelfr.TextStrokeTransparency = 0
		esplabelfr.TextStrokeColor3 = Color3.new(0, 0, 0)
		esplabelfr.TextSize = TextSize
		esplabelfr.TextScaled = false
		esplabelfr.Font = "Arcade"
		esplabelfr.Parent = esp

		local box = Instance.new("BoxHandleAdornment")
		box.Name = "box"
		box.Size = Part.Size + Vector3.new(0.5, 0.5, 0.5)
		box.Adornee = Part
		box.AlwaysOnTop = true
		box.Transparency = 0.6
		box.Color3 = BoxColor or Color3.new(0, 0, 255)
		box.ZIndex = 0
		box.Parent = Part

		local tracerLine = Drawing.new("Line")
		tracerLine.Visible = false

		local trail = Instance.new("Trail")
		trail.Texture = "rbxassetid://188166667"
		trail.Enabled = false
		trail.Color = ColorSequence.new(TrailColor[1], TrailColor[2])
		trail.WidthScale = NumberSequence.new(TrailWidth[1], TrailWidth[2])
		trail.Parent = Part
		trail.Lifetime = 0.5

		local function updateesplabelfr()
			if not Part or not Part:IsA("BasePart") or not Part.Parent then
				-- Part no longer exists, delete ESP elements
				esp:Destroy()
				tracerLine:Destroy()
				trail:Destroy()
				return
			end

			local playerPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
			if playerPosition then
				local distance = (playerPosition.Position - Part.Position).Magnitude
				esplabelfr.Text = string.format(Text .. ": %.2f", distance)



				local headPosition = Part.Position + Vector3.new(0, Part.Size.Y / 2, 0)
				local screenPosition, onScreen = camera:WorldToScreenPoint(headPosition)

				if onScreen or playerPosition.Position.Y > Part.Position.Y then
					esp.Adornee = Part
					esp.Enabled = true
					box.Adornee = Part
					box.Visible = true

					-- Update tracer line points
					local tracerStart = camera:WorldToViewportPoint(player.Character.Head.Position)
					local tracerEnd = camera:WorldToViewportPoint(Part.Position)
					tracerLine.From = Vector2.new(tracerStart.X, tracerStart.Y)
					tracerLine.To = Vector2.new(tracerEnd.X, tracerEnd.Y)
					tracerLine.Color = TracerColor
					tracerLine.Thickness = TracerWidth -- Adjust the thickness of the line (increased from 1)
					tracerLine.Visible = not TrailMode

					-- Update trail
					trail.Attachment1 = Part.Attachment
					trail.Lifetime = 0.3
					trail.Enabled = TrailMode
					trail.Color = ColorSequence.new(TrailColor[1], TrailColor[2])
					trail.WidthScale = NumberSequence.new(TrailWidth[1], TrailWidth[2])
				else
					esp.Enabled = false
					box.Visible = false
					tracerLine.Visible = false
					trail.Enabled = false
				end
			else
				esp.Enabled = false
				box.Visible = false
				tracerLine.Visible = false
				trail.Enabled = false
			end
		end

		RunService.RenderStepped:Connect(updateesplabelfr)
	end

	-- new method esp
	local Screen1489 = Instance.new("ScreenGui")
	Screen1489.IgnoreGuiInset = true
	Screen1489.Parent = game.Players.LocalPlayer.PlayerGui
	local player = game.Players.LocalPlayer
	local camera = game:GetService("Workspace").CurrentCamera
	local workspace = game.Workspace

	local function isDescendantOf(child, ancestor)
		if not child or not ancestor then return false end

		local current = child

		while current do
			if current == ancestor then
				return true
			end

			if not current.Parent then
				break
			end
			current = current.Parent
		end
		return false
	end

	local function new_esp(value, color, name, value_gui, fill)
		if not value or not color or not name then
			return
		end
		local FIRST_VALUE = value
		if value:IsA("Model") then
			if value.PrimaryPart then
				value = value.PrimaryPart
			else
				for i, v in pairs(value:GetChildren()) do
					if v:IsA("BasePart") then
						value = v
					end
				end
			end
		end
		local framedagg = Instance.new("Frame")
		framedagg.Parent = Screen1489
		framedagg.Name = name
		framedagg.BackgroundColor3 = color
		framedagg.AnchorPoint = Vector2.new(0.5, 0.5)
		framedagg.Position = UDim2.new(0.5, 0, 0.5, 0)
		framedagg.Size = UDim2.new(0.01, 0, 0.01, 0)
		framedagg.Visible = true
		local dot = Instance.new("Frame")
		dot.Parent = Screen1489
		dot.AnchorPoint = Vector2.new(0.5, 0.5)
		dot.Position = UDim2.new(0.5, 0, 0.5, 0)
		dot.BackgroundTransparency = 1
		local dot2 = Instance.new("Frame")
		dot2.Parent = Screen1489
		dot2.AnchorPoint = Vector2.new(0.5, 0.5)
		dot2.Position = UDim2.new(0.5, 0, 0.5, 0)
		dot2.BackgroundTransparency = 1
		game:GetService("RunService").RenderStepped:Connect(function()
			if value then
				if FIRST_VALUE then
					if value_gui == true then
						local targetPart = value
						if targetPart then
							local isChildOfWorkspace = isDescendantOf(targetPart, workspace)
							if isChildOfWorkspace then
								if not FIRST_VALUE:FindFirstChild("ScriptHighlight") then
									local Highlight = Instance.new("Highlight")
									Highlight.Name = "ScriptHighlight"
									Highlight.FillColor = color
									Highlight.FillTransparency = fill
									Highlight.OutlineTransparency = 1
									Highlight.Parent = FIRST_VALUE
								end
								if not FIRST_VALUE:FindFirstChild("ScriptNameTag") then
									local NameTag = Instance.new("BillboardGui")
									NameTag.Name = "ScriptNameTag"
									NameTag.Size = UDim2.new(5, 0, 2, 0)
									NameTag.AlwaysOnTop = true
									NameTag.StudsOffset = Vector3.new(0, 6, 0)
									NameTag.Parent = FIRST_VALUE
									local TextLabel = Instance.new("TextLabel")
									TextLabel.Size = UDim2.new(1, 0, 1, 0)
									TextLabel.BackgroundTransparency = 1
									TextLabel.Text = name
									local playerPosition = player.Character and
										player.Character:FindFirstChild("HumanoidRootPart")
									if playerPosition then
										local distance = (playerPosition.Position - targetPart.Position).Magnitude
										TextLabel.Text = string.format(name .. ": %.2f", distance)
									end
									TextLabel.TextColor3 = color
									TextLabel.TextScaled = true
									TextLabel.Parent = NameTag
								end
								framedagg.Transparency = 0.4
								if targetPart:IsA("Model") and not targetPart.PrimaryPart then
									local foundPart = targetPart:FindFirstChildWhichIsA("BasePart", true)
									if foundPart then
										targetPart.PrimaryPart = foundPart
									end
								end
								if targetPart:IsA("Model") and targetPart.PrimaryPart then
									targetPart = targetPart.PrimaryPart
								else
								end
								if FIRST_VALUE then
									if FIRST_VALUE:FindFirstChild("ScriptHighlight") then
										FIRST_VALUE:FindFirstChild("ScriptHighlight").Enabled = true
									end
									if FIRST_VALUE:FindFirstChild("ScriptNameTag") then
										local tage = FIRST_VALUE:FindFirstChild("ScriptNameTag")
										FIRST_VALUE:FindFirstChild("ScriptNameTag").Enabled = true
										local playerPosition = player.Character and
											player.Character:FindFirstChild("HumanoidRootPart")
										if playerPosition then
											local distance = (playerPosition.Position - targetPart.Position).Magnitude
											tage.TextLabel.Text = string.format(name .. ": %.2f", distance)
										end
									end
								end
								if targetPart:IsA("BasePart") then
									local worldPos = targetPart.Position
									local vector, onScreen = camera:WorldToViewportPoint(worldPos)
									if onScreen then
										framedagg.Visible = true
										local frameA = dot
										local frameB = dot2
										local centerA = frameA.AbsolutePosition + (frameA.AbsoluteSize / 2)
										local centerB = frameB.AbsolutePosition + (frameB.AbsoluteSize / 2)
										local parentPos = framedagg.Parent.AbsolutePosition
										local posA = centerA - parentPos
										local posB = centerB - parentPos
										local delta = centerB - centerA
										local distance = delta.Magnitude
										local angle = math.atan2(delta.Y, delta.X)
										local pisuntrans = 0.2
										framedagg.Size = UDim2.new(0, distance, 0, 1)
										framedagg.Position = UDim2.new(0, (posA.X + posB.X) / 2, 0, (posA.Y + posB.Y) / 2)
										framedagg.Rotation = math.deg(angle)
										framedagg.AnchorPoint = Vector2.new(0.5, 0.5)
										framedagg.BorderSizePixel = 0
										dot.Position = UDim2.new(0, vector.X, 0, vector.Y)
									else
										framedagg.Visible = false
									end
								end
							else
								framedagg.Visible = false
							end
						else
							framedagg.Visible = false
						end
					else
						framedagg.Visible = false
						if FIRST_VALUE then
							if FIRST_VALUE:FindFirstChild("ScriptHighlight") then
								FIRST_VALUE:FindFirstChild("ScriptHighlight").Enabled = false
							end
							if FIRST_VALUE:FindFirstChild("ScriptNameTag") then
								FIRST_VALUE:FindFirstChild("ScriptNameTag").Enabled = false
							end
						end
					end
				end
			end
		end)
	end



	local function noclip()
		for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA "Part" then
				v.CanCollide = false
			end
		end
	end

	local is_mobile = false
	local user_input = game:GetService("UserInputService")
	if user_input.TouchEnabled then
		is_mobile = true
	end
	
	local function FogR()
		while wait() do
			local Lighting = game:GetService("Lighting")
			Lighting.FogEnd = 100000
			Lighting.Brightness = 5
			Lighting.GlobalShadows = false
			Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		end
	end


	-- GITHUB API
	function update_checker(link)
		local current_version = script_version
		local pidorAS = game:HttpGet(link)
		pidorAS = string.gsub(pidorAS, "^%s+", "")
		pidorAS = string.gsub(pidorAS, "%s+$", "")
		pidorAS = string.gsub(pidorAS, "[\r\n]+", "")
		if current_version ~= pidorAS then
			warn(script_name_f9 .. " New update available! Pls reload script or wait for update")
			wait(1)
			game.Players.LocalPlayer:Kick("NektoHub: New update available! Check discord")
		else
			print(script_name_f9 .. " New update dont found!")
		end
	end
	
	
	
	function exec_iden() 
		local iden = identifyexecutor()
		if iden == "Xeno" and iden == "Drift" then
			wait(0.5)
			game.CoreGui.NektoUI:Destroy()
			error(script_name_f9 .. " Unsupported executor detected")
		end
	end
	
	
	
	local NotifUpdLib = {}
	function NotifUpdLib:CreateNotificationUpdate()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Update Info",
			Text = "Update time: 21.07.2026 - 23:21(GMT+3)",
			Duration = 15
		})
	end


	-- ping + fps
	local FrameMainLib = {}
	function FrameMainLib:FrameStart()
		local player = game.Players.LocalPlayer
		local gui = Instance.new("ScreenGui")
		gui.Name = "PerformanceDisplay"
		gui.Parent = game.CoreGui
		gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



		local frame = Instance.new("Frame")
		frame.Name = "FPSFrame"
		frame.Size = UDim2.new(0, 100, 0, 50)
		frame.Position = UDim2.new(0, 0, 0.109, 0)
		frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		frame.BackgroundTransparency = 0.1
		frame.BorderSizePixel = 1
		frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
		frame.Parent = gui
		--frame.IgnoreGuiInset = true

		local framePING = Instance.new("Frame")
		framePING.Name = "PingFrame"
		framePING.Size = UDim2.new(0, 100, 0, 50)
		framePING.Position = UDim2.new(0, 0, 0.109, -52)
		framePING.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		framePING.BackgroundTransparency = 0.1
		framePING.BorderSizePixel = 1
		framePING.BorderColor3 = Color3.fromRGB(255, 255, 255)
		framePING.Parent = gui
		--framePING.IgnoreGuiInset = true

		local frameU = Instance.new("Frame")
		frameU.Name = "MainFrameU"
		frameU.Size = UDim2.new(0, 200, 0, 37)
		frameU.Position = UDim2.new(0, 0, 0.163, 0)
		frameU.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		frameU.BackgroundTransparency = 0.1
		frameU.BorderSizePixel = 1
		frameU.BorderColor3 = Color3.fromRGB(255, 255, 255)
		frameU.Parent = gui
		--frameU.IgnoreGuiInset = true


		local corners = Instance.new("UICorner")
		corners.CornerRadius = UDim.new(0, 5)
		corners.Parent = frame

		local cornersU = Instance.new("UICorner")
		cornersU.CornerRadius = UDim.new(0, 5)
		cornersU.Parent = frameU

		local cornersPING = Instance.new("UICorner")
		cornersPING.CornerRadius = UDim.new(0, 5)
		cornersPING.Parent = framePING


		local fpsLabel = Instance.new("TextLabel")
		fpsLabel.Name = "FPSLabel"
		fpsLabel.Size = UDim2.new(1, 0, 0.649, 0)
		fpsLabel.Position = UDim2.new(0, 0, 0.162, 0)
		fpsLabel.BackgroundTransparency = 1
		fpsLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
		fpsLabel.TextSize = 16
		fpsLabel.Font = Enum.Font.SourceSansBold
		fpsLabel.Text = "FPS: 0"
		fpsLabel.TextXAlignment = Enum.TextXAlignment.Center
		fpsLabel.Parent = frame

		local pingLabel = Instance.new("TextLabel")
		pingLabel.Name = "PINGLabel"
		pingLabel.Size = UDim2.new(1, 0, 0.649, 0)
		pingLabel.Position = UDim2.new(0, 0, 0.162, 0)
		pingLabel.BackgroundTransparency = 1
		pingLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
		pingLabel.TextSize = 16
		pingLabel.Font = Enum.Font.SourceSansBold
		pingLabel.TextXAlignment = Enum.TextXAlignment.Center
		pingLabel.Parent = framePING

		local UpdLabel = Instance.new("TextLabel")
		UpdLabel.Name = "UPDLabel"
		UpdLabel.Size = UDim2.new(1, 0, 0.649, 0)
		UpdLabel.Position = UDim2.new(-0.016, 0, 0.164, 0)
		UpdLabel.BackgroundTransparency = 1
		UpdLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
		UpdLabel.TextSize = 16
		UpdLabel.Font = Enum.Font.SourceSansBold
		UpdLabel.Text = "Last Update Time: 21.07.2026"
		UpdLabel.TextXAlignment = Enum.TextXAlignment.Center
		UpdLabel.Parent = frameU



		local frames = 0
		local lastTime = tick()


		local function updateFPS()
			frames = frames + 1
			local currentTime = tick()
			local delta = currentTime - lastTime

			if delta >= 1 then
				local fps = frames / delta
				frames = 0
				lastTime = currentTime


				fpsLabel.Text = string.format("FPS: %.1f", fps)


				if fps >= 60 then
					fpsLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
				elseif fps >= 30 then
					fpsLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
				else
					fpsLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
				end
			end
		end


		local function updateWT() -- не юзабельно, хз когда оптимизирую
			local speed = 0.5
			local lastUpdate = 0
			local updateInterval = 0.05


			while true do
				local currentTime = tick()

				if currentTime - lastUpdate >= updateInterval then
					lastUpdate = currentTime

					local time = os.clock() * speed


					local sinVal = math.sin
					local floorVal = math.floor

					local r = floorVal((sinVal(time) + 1) * 127.5)
					local g = floorVal((sinVal(time + 2) + 1) * 127.5)
					local b = floorVal((sinVal(time + 4) + 1) * 127.5)


					local newColor = Color3.fromRGB(r, g, b)
					if WatermarkLabel.TextColor3 ~= newColor then
						WatermarkLabel.TextColor3 = newColor
					end
				end


				task.wait(0.024) -- ~240 FPS
			end
		end

		local function updatePing()
			local currentPing2 = player:GetNetworkPing()
			local currentPing1 = currentPing2 * 1000
			local currentPing = math.floor(currentPing1)
			pingLabel.Text = string.format("Ping: %dms", currentPing)
			if currentPing >= 20 then
				pingLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
			elseif currentPing >= 120 then
				pingLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
			else
				pingLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
			end
		end




		game:GetService("RunService").RenderStepped:Connect(function()
			updateFPS()
		end)

		game:GetService("RunService").RenderStepped:Connect(function()
			updatePing()
		end)
	end


	update_checker("https://raw.githubusercontent.com/werumZov/nthubupd/refs/heads/main/npthubsd")
	getgenvsyntax()

	-- main onload
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/werumZov/nektoui/refs/heads/main/source')))()
	local Window = OrionLib:MakeWindow({ Name = "NektoHub-v1.9951", HidePremium = false, SaveConfig = true, ConfigFolder = "NektoHubRM", IntroText = "Nekto Hub v1.9951" })
	
	css_client_uid("x70psq", "nekto-12jahauhdbafjb8972geha")
	exec_iden()
	
	-- ui loads
	FrameMainLib:FrameStart()
	NotifUpdLib:CreateNotificationUpdate()


	-- tabs and etc
	local Tab = Window:MakeTab({ Name = "Global - 1", Icon = "rbxassetid://4483345998", PremiumOnly = false })

	local TabChar = Window:MakeTab({ Name = "Character", Icon = "rbxassetid://4483345998", PremiumOnly = false })

	local Night2 = Window:MakeTab({ Name = "Night 2", Icon = "rbxassetid://4483345998", PremiumOnly = false })

	local Night3 = Window:MakeTab({ Name = "Night 3", Icon = "rbxassetid://4483345998", PremiumOnly = false })
	
	local Mansion = Window:MakeTab({ Name = "Mansion", Icon = "rbxassetid://4483345998", PremiumOnly = false })
	
	local Spirit = Window:MakeTab({ Name = "Spirit", Icon = "rbxassetid://4483345998", PremiumOnly = false })

	local Bunker = Window:MakeTab({ Name = "Bunker", Icon = "rbxassetid://4483345998", PremiumOnly = false })

	local Tab2 = Window:MakeTab({ Name = "Teleports", Icon = "rbxassetid://4483345998", PremiumOnly = false })

	local modif = Window:MakeTab({ Name = "Modifers", Icon = "rbxassetid://4483345998", PremiumOnly = false })

	local misc = Window:MakeTab({
		Name = "Misc",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local plr = Window:MakeTab({
		Name = "Players",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})


	local mn = Window:MakeTab({
		Name = "Monster Gamemode",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local RandomTab = Window:MakeTab({
		Name = "Visual",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local cfgTab = Window:MakeTab({
		Name = "Config",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local ChangeLogTab = Window:MakeTab({
		Name = "Change Log",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local AboutTab = Window:MakeTab({
		Name = "About",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})





	-- Mansion + MansionW
	Mansion:AddParagraph("Information about this tab", "*Auto FlashLight Battery can contains bugs")

	local SectionE = Mansion:AddSection({
		Name = "Esp"
	})

	Mansion:AddButton({
		Name = "Kid ESP",
		Default = true,
		Callback = function()
			local a = true
			new_esp(game.ReplicatedStorage.Kid, Color3.new(255, 255, 255), "KID-EPSTEIN", a, 0.8)
			wait(0.05)
			show_notification("Kid Esp enabled")
		end
	})

	local SectionM = Mansion:AddSection({
		Name = "Main"
	})

	Mansion:AddToggle({
		Name = "Zero Danger",
		Default = false,
		Save = true,
		Flag = "toggleZero",
		Callback = function()
			game:GetService("RunService").RenderStepped:Connect(function()
				if game.PlaceId == 124095328184825 - 109 - 1885 then
					local danger = game.Players.LocalPlayer.Character:FindFirstChild("Danger")
					if danger then danger.Value = 0 end
				end
			end)
		end
	})

    local cand_bowl = false
	local support_fire_click_detector = true
	Mansion:AddToggle({
		Name = "Auto Candy Bowl",
		Save = true,
		Default = false,
		Flag = "toggleCandy",
		Callback = function(v)
			cand_bowl = v
			local auto_candy_boil_cd = false
			if game.PlaceId == 124095328182831 then
				game:GetService("RunService").RenderStepped:Connect(function()
					if auto_candy_boil_cd == false then
						if support_fire_click_detector == true then
							local player = game.Players.LocalPlayer
							if not player then return end
							local character = player.Character
							if not character then return end
							local humanoidrootpart412 = character:FindFirstChild("HumanoidRootPart")
							if not humanoidrootpart412 then return end
							local CandyBowl = workspace:FindFirstChild("CandyBowl")
							if CandyBowl then
								local FakeCandyBag = workspace:FindFirstChild("FakeCandyBag")
								if not FakeCandyBag then return end
								local CandyBag = workspace:FindFirstChild("CandyBag")
								if not CandyBag then
									local po1 = CandyBowl:FindFirstChild("1")
									local po2 = CandyBowl:FindFirstChild("2")
									local po3 = CandyBowl:FindFirstChild("3")
									if not po1 or not po2 or not po3 then return end
									local po1v2 = po1:FindFirstChild("Decal")
									local po2v2 = po2:FindFirstChild("Decal")
									local po3v2 = po3:FindFirstChild("Decal")
									if not po1v2 or not po2v2 or not po3v2 then return end
									if po1v2.Transparency == 1 and po2v2.Transparency == 1 and po3v2.Transparency == 1 then
										auto_candy_boil_cd = true
										fireclickdetector(FakeCandyBag.ClickDetector)
										wait(0.6)
										while CandyBowl.ClickDetector.MaxActivationDistance == 0 do
											task.wait()
										end
										fireclickdetector(CandyBowl.ClickDetector)
										wait(1)
										auto_candy_boil_cd = false
									end
								end
							end

						end
					end
				end)
			end
		end
	})

    local btt_enabled = false
	Mansion:AddToggle({
		Name = "Auto FlashLight Battery",
		Save = true,
		Flag = "toggleFlash",
		Callback = function(v)
			btt_enabled = v 
				if game.PlaceId == 124095328182831 then
					game:GetService("RunService").RenderStepped:Connect(function()
						wait(0.05)
						local frameBt = game:GetService("Players").LocalPlayer.PlayerGui.FlashlightUI.Battery.Frame
						local clcBt = game.Workspace.BatteryCrate:FindFirstChild("ClickDetector")
						if frameBt.Size.X.Scale == 0 then
							fireclickdetector(clcBt)
						end
					end)
				end
			end
	})


	-- Bunker
	Bunker:AddParagraph("Information about this tab",
		"PowerGrids & JerryCan esp works on old method")


	local SectionM = Bunker:AddSection({
		Name = "Main"
	})

	_G.InfO2B = false
	Bunker:AddButton({
		Name = "Abomination ESP",
		Default = true,
		Callback = function()
			local a = true
			new_esp(game.Workspace.BunkerRat, Color3.new(255, 255, 255), "Abomination", a, 0.8)
			wait(0.05)
			show_notification("Abomination Esp enabled")
		end
	})

	Bunker:AddButton({
		Name = "Kill Abomination",
		Callback = function()
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local killEvent = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("KillPlayer")
			killEvent:FireServer()
			wait(0.05)
			show_notification("Abomination succesfully killed")
		end
	})


	local SectionG = Bunker:AddSection({
		Name = "Power Grids"
	})

	Bunker:AddButton({
		Name = "Power Grid 1 ESP",
		Callback = function()
			ESPLib:CreateESPTag({
				Text = "Grid 1",
				Part = game.Workspace.PowerGrids:WaitForChild("1").Tally,
				TextSize = 9,
				TextColor = Color3.new(255, 0, 0),
				BoxColor = Color3.new(255, 0, 0),
				TracerColor = Color3.new(255, 0, 0),
				TracerWidth = 1
			})
		end
	})

	Bunker:AddButton({
		Name = "Power Grid 2 ESP",
		Callback = function()
			ESPLib:CreateESPTag({
				Text = "Grid 2",
				Part = game.Workspace.PowerGrids:WaitForChild("2").Tally,
				TextSize = 9,
				TextColor = Color3.new(255, 0, 0),
				BoxColor = Color3.new(255, 0, 0),
				TracerColor = Color3.new(255, 0, 0),
				TracerWidth = 1
			})
		end
	})

	Bunker:AddButton({
		Name = "Power Grid 3 ESP",
		Callback = function()
			ESPLib:CreateESPTag({
				Text = "Grid 3",
				Part = game.Workspace.PowerGrids:WaitForChild("3").Tally,
				TextSize = 9,
				TextColor = Color3.new(255, 0, 0),
				BoxColor = Color3.new(255, 0, 0),
				TracerColor = Color3.new(255, 0, 0),
				TracerWidth = 1
			})
		end
	})

	Bunker:AddButton({
		Name = "Power Grid 4 ESP",
		Callback = function()
			ESPLib:CreateESPTag({
				Text = "Grid 4",
				Part = game.Workspace.PowerGrids:WaitForChild("4").Tally,
				TextSize = 9,
				TextColor = Color3.new(255, 0, 0),
				BoxColor = Color3.new(255, 0, 0),
				TracerColor = Color3.new(255, 0, 0),
				TracerWidth = 1
			})
		end
	})


	local SectionO = Bunker:AddSection({
		Name = "Other"
	})


	Bunker:AddButton({
		Name = "JerryCan ESP",
		Callback = function()
			ESPLib:CreateESPTag({
				Text = "JerryCan",
				Part = game.Workspace.JerryCans.JerryCan:WaitForChild("Wedge"),
				TextSize = 9,
				TextColor = Color3.new(0, 0, 255),
				BoxColor = Color3.new(0, 0, 255),
				TracerColor = Color3.new(0, 0, 255),
				TracerWidth = 2
			})
		end
	})

	Bunker:AddButton({
		Name = "Generator ESP",
		Callback = function()
			local a = true
			new_esp(game.Workspace.Generator.Main, Color3.new(0, 255, 0), "Generator", a, 0.6)
			wait(0.05)
			show_notification("Generator Esp enabled")
		end
	})

	-- Spirit
	local pidor_spirit = false
	Spirit:AddToggle({
		Name = "Auto Spirit Helper",
		Save = true,
		Default = true,
		Flag = "toggleAutoSpirit",
		Callback = function(v)
			pidor_spirit = v
				if game.PlaceId == 14908286297 then
						local IS_MONSTER = false
						local monsterFolder = workspace:WaitForChild("Monster")
						local previousProgress = {}
						local activeTrigger = {}
						local pendingChecks = {}
						local function check_monster()
							local anyActiveTrigger = false
							for _, model in pairs(monsterFolder:GetChildren()) do
								if not model:IsA("Model") or model.Name == "Closet" then
									continue
								end
								local progressValue = model:FindFirstChild("Progress")
								if not (progressValue and progressValue:IsA("NumberValue")) then
									continue
								end
								local current = progressValue.Value
								local prev = previousProgress[model.Name] or 0
								previousProgress[model.Name] = current
								if pendingChecks[model.Name] then
									continue
								end
								if activeTrigger[model.Name] then
									if current ~= 3 then
										activeTrigger[model.Name] = nil
									else
										anyActiveTrigger = true
									end
								else
									if prev == 2 and current == 3 then
										pendingChecks[model.Name] = true
										task.spawn(function()
											task.wait(0.2)
											local modelCheck = monsterFolder:FindFirstChild(model.Name)
											if not modelCheck then
												pendingChecks[model.Name] = nil
												return
											end
											local progressCheck = modelCheck:FindFirstChild("Progress")
											local now = (progressCheck and progressCheck:IsA("NumberValue")) and progressCheck.Value or -1
											if now == 3 then
												activeTrigger[model.Name] = true
												anyActiveTrigger = true
											else
												activeTrigger[model.Name] = nil
											end
											pendingChecks[model.Name] = nil
										end)
									end
								end
							end
							IS_MONSTER = anyActiveTrigger
						end
						local spirit_rs_cd = false
						game:GetService("RunService").RenderStepped:Connect(function()
							if spirit_rs_cd == false then
								spirit_rs_cd = true
								check_monster()
							local plr = game.Players.LocalPlayer.Character
							local lamp = game.Workspace.Lamp
							local bed = game.Workspace.Bed
							local tbear = game.Workspace:FindFirstChild("Teddy bear")
							local clock = game.Workspace.Radio
							local sanity = plr.Sanity

							local window = game.Workspace.Monster.Window.Progress.Value
							local door = game.Workspace.Monster.Door.Progress.Value
							local vent = game.Workspace.Monster.Vent.Progress.Value

							local heat = lamp.Heat.Value
							local light = lamp.Bulb.PointLight.Enabled

							local clc_lamp = lamp.ClickDetector
							local clc_bed = bed.Detectors.Detector1.ClickDetector
							local clc_bed2 = bed.Detectors.Detector2.ClickDetector
							local clc_tbear = tbear.ClickDetector
							local clc_clock = clock.ClickDetector
								if IS_MONSTER == false and bed.Hidden.Value == false then 
									if clc_clock.MaxActivationDistance > 0 then	
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10.4044113, 5.00000334, 16.6453609, -0.0674342215, -7.93165071e-08, 0.997723699, 1.08398401e-08, 1, 8.02301088e-08, -0.997723699, 1.6225421e-08, -0.0674342215)
										fireclickdetector(clc_clock)
									else
										if heat <= 30 and light == false then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.89709663, 5.00000334, 18.5351982, 0.00391950598, -1.26934052e-09, 0.999992311, 1.08748999e-07, 1, 8.43104642e-10, -0.999992311, 1.08744857e-07, 0.00391950598)
											fireclickdetector(clc_lamp)
										elseif heat >= 70 and light == true then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.89709663, 5.00000334, 18.5351982, 0.00391950598, -1.26934052e-09, 0.999992311, 1.08748999e-07, 1, 8.43104642e-10, -0.999992311, 1.08744857e-07, 0.00391950598)
											fireclickdetector(clc_lamp)
										elseif heat > 30 and heat < 70 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.89709663, 5.00000334, 18.5351982, 0.00391950598, -1.26934052e-09, 0.999992311, 1.08748999e-07, 1, 8.43104642e-10, -0.999992311, 1.08744857e-07, 0.00391950598)
											if clc_tbear.MaxActivationDistance > 0 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.32593918, 5.00000334, -9.43118858, 0.999313593, 2.59117634e-08, 0.0370455198, -2.71939431e-08, 1, 3.41070141e-08, -0.0370455198, -3.50910163e-08, 0.999313593)
												fireclickdetector(clc_tbear)
											else		
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.89709663, 5.00000334, 18.5351982, 0.00391950598, -1.26934052e-09, 0.999992311, 1.08748999e-07, 1, 8.43104642e-10, -0.999992311, 1.08744857e-07, 0.00391950598)
											end
										else
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.89709663, 5.00000334, 18.5351982, 0.00391950598, -1.26934052e-09, 0.999992311, 1.08748999e-07, 1, 8.43104642e-10, -0.999992311, 1.08744857e-07, 0.00391950598)
										end
									end
								elseif IS_MONSTER == false and bed.Hidden.Value == true then
									fireclickdetector(clc_bed)
								elseif IS_MONSTER == true and bed.Hidden.Value == false then
									if light == true then
										fireclickdetector(clc_lamp)
									end
									wait(0.05)
									fireclickdetector(clc_bed)
								end
								wait(0.05)
								spirit_rs_cd = false
					end
				end)
			end
		end
	})
	


	-- Night 3

	Night3:AddButton({
		Name = "Worker ESP",
		Default = true,
		Callback = function()
			if game.PlaceId == 140260816701736 then
				local a = true
				new_esp(game.ReplicatedStorage.Mutant, Color3.new(255, 0, 0), "Worker", a, 0.8)
				wait(0.05)
				show_notification("Worker Esp enabled")
			end
		end
	})

	Night3:AddButton({
		Name = "Spider ESP",
		Default = true,
		Callback = function()
			if game.PlaceId == 140260816701736 then
				local a = true
				new_esp(game.ReplicatedStorage.WorkerHead, Color3.new(255, 255, 255), "Spider", a, 0.8)
				wait(0.05)
				show_notification("Spider Esp enabled")
			end
		end
	})

	local SectionO2 = Night3:AddSection({
		Name = "Ammo Piles"
	})

	Night3:AddButton({
		Name = "Ammo ESP",
		Default = true,
		Callback = function()
			local a = true
			local AmmoPiles = workspace:FindFirstChild("AmmoPiles")
			wait(0.05)
			show_notification("Ammo Esp enabled")
			if AmmoPiles then
				for _, v in pairs(AmmoPiles:GetChildren()) do
					local Detector = v:FindFirstChild("Detector")
					if Detector then
						local Log = v:FindFirstChild("Log")
						if Log then
							new_esp(Log, Color3.new(0.870588, 0.686275, 0.94902), "Ammo", a, 0.5)
						end
					end
				end
			end
		end
	})


	local SectionO3 = Night3:AddSection({
		Name = "Removes"
	})

	Night3:AddButton({
		Name = "Remove Shotgun Blur",
		Default = true,
		Callback = function()
			game.Lighting.ShotgunBlur.Enabled = false
			show_notification("Remove Shotgun Blur enabled")
		end
	})

	Night3:AddButton({
		Name = "Remove Heartbeat Blur",
		Default = true,
		Callback = function()
			game.Lighting.HeartBeatBlur.Enabled = false
			show_notification("Remove Heartbeat Blur enabled")
		end
	})

	Night3:AddButton({
		Name = "Remove Hit Blur",
		Default = true,
		Callback = function()
			game.Lighting.HitBlur.Enabled = false
			show_notification("Remove Hit Blur enabled")
		end
	})


	local Clip = false
	_G.Noclip = false

	local function NoclipLoop()
		local speaker = game.Players.LocalPlayer


		if speaker.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end



	local mainsec = TabChar:AddSection({
		Name = "Main"
	})
	TabChar:AddToggle({
		Name = "Noclip[GLOBAL] (jump after disabling)",
		Flag = "toggleNoclip",
		Default = false,
		Save = true,
		Callback = function(v)
			_G.Noclip = v
		end	
	})
	spawn(function()
		while wait() do
			if _G.Noclip then
				NoclipLoop()
			end
		end
	end)


	local SpeedHackEnabled = false
	local connection = nil

	local function startSpeedHack()
		if connection then return end
		local tp_walk_cd = false
		connection = game:GetService("RunService").RenderStepped:Connect(function()
			if SpeedHackEnabled and game.Players.LocalPlayer.Character then
				if tp_walk_cd == false then
					tp_walk_cd = true
					local character = game.Players.LocalPlayer.Character
					local hrp = character:FindFirstChild("HumanoidRootPart")
					local humanoid = character:FindFirstChild("Humanoid")

					if hrp and humanoid then
						local tp = hrp.CFrame + humanoid.MoveDirection -- 7/2 = 3.5 - значение не используется
						hrp.CFrame = tp
					end
					task.wait(0.02)
					tp_walk_cd = false
				end
			end
		end)
	end

	local function stopSpeedHack()
		if connection then
			connection:Disconnect()
			connection = nil
		end
	end

	TabChar:AddToggle({
		Name = "Speed Hack[GLOBAL]",
		Flag = "toggleSp",
		Save = true,
		Default = false,
		Callback = function(v)
			SpeedHackEnabled = v
			if v then
				startSpeedHack()
			else
				stopSpeedHack()
			end
		end
	})

	_G.InfStam = false
	_G.InfSanity = false
	_G.InfO2 = false
	_G.InfFood = false

	TabChar:AddToggle({
		Name = "Infinite Stam[GLOBAL]",
		Default = true,
		Flag = "toggleSt",
		Save = true,
		Callback = function(v)
			_G.InfStam = v
		end
	})

	TabChar:AddToggle({
		Name = "Infinite Oxygen[GLOBAL - DONT WORKS IN BUNKER]",
		Default = false,
		Flag = "toggleOxmain",
		Save = true,
		Callback = function(v)
			_G.InfO2 = v
		end
	})

	TabChar:AddButton({
		Name = "Anti Freeze",
		Default = true,
		Callback = function()
			local pidaras = game.ReplicatedStorage.GameState.Blizzard
			pidaras.Value = false
			show_notification("Anti Freeze enabled")
		end
	})



	-- Modifers
	modif:AddButton({
		Name = "Anti BloodMoon",
		Default = true,
		Callback = function()
			local sasynn1 = game.ReplicatedStorage.GameState
			sasynn1.Bloodmoon.Value = false
		end
	})

	modif:AddButton({
		Name = "Anti Graves",
		Default = true,
		Callback = function()
			local sasynn2 = game.ReplicatedStorage.GameState
			sasynn2.Zombies.Value = false
		end
	})

	modif:AddButton({
		Name = "Anti Thunderstorm",
		Default = true,
		Callback = function()
			local sasynn3 = game.ReplicatedStorage.GameState
			sasynn3.Thunderstorm.Value = false
		end
	})








	-- Night 2
	local SectionESP2 Night2:AddSection ({
		Name = "Esp"
	})

	Night2:AddButton({
		Name = "Mutant ESP",
		Default = true,
		Callback = function()
			if game.PlaceId == 16667550979 then
				local a = true
				new_esp(game.ReplicatedStorage.Mutant, Color3.new(255, 0, 0), "Mutant", a, 0.8)
				wait(0.05)
				show_notification("Mutant Esp enabled")
			end
		end
	})

	Night2:AddButton({
		Name = "Stalker ESP",
		Default = true,
		Callback = function()
			local a = true
			new_esp(game.ReplicatedStorage.Stalker, Color3.new(255, 255, 255), "Stalker", a, 0.8)
			wait(0.05)
			show_notification("Stalker Esp enabled")
		end
	})

	local SectionMISC2 Night2:AddSection ({
		Name = "Misc"
	})

	Night2:AddButton({
		Name = "ReviveCharacter[ESP WILL BROKE - WORK ONLY IN NIGHT 2]",
		Default = true,
		Callback = function()
			game:GetService("ReplicatedStorage").Remotes.LoadCharacter:FireServer()
			show_notification("Succesfully revived character")
		end
	})



	Tab:AddParagraph("Information about this tab",
		"In the Multiversal section esp works on old method and dont works globaly(works only in multiversal modificator)\n*Now this modificator removed from game")

	local Section = Tab:AddSection({
		Name = "Main - GLOBAL FUNCTIONS"
	})


	-- Default(Night 1)
	Tab:AddButton({
		Name = "Larry ESP",
		Callback = function()
			local a = true
			if game.PlaceId == 14896802601 then
			new_esp(game.ReplicatedStorage.Mutant, Color3.new(255, 0, 0), "Larry", a, 0.8)
			wait(0.05)
			show_notification("Larry Esp enabled")
			end
		end
	})

	local items_cure = {}
	Tab:AddButton({
		Name = "Item ESP[GLOBAL]",
		Callback = function()
			local a = true
			if game.PlaceId == 14896802601 or game.PlaceId == 16667550979 or game.PlaceId == 140260816701736 or game.PlaceId == 100255403764514 then
				game:GetService("RunService").RenderStepped:Connect(function()
					local itemsContainer = workspace:FindFirstChild("ItemSpots")
					if itemsContainer then
						local allItems = itemsContainer:GetChildren()
						for _, targetItems in ipairs(allItems) do
							local allChildren = targetItems:GetChildren()
							for _, item in ipairs(allChildren) do
								if item:IsA("Tool") or item:IsA("Model") then
									if not table.find(items_cure, item) then
										table.insert(items_cure, item)
										if item:IsA("Tool") then
											new_esp(item, Color3.new(0.647059, 0.505882, 1), item.Name, a, 0.7)
										else
											new_esp(item, Color3.new(0.647059, 0.505882, 1), item.Name, a, 0.7)
										end
									end
								end
							end
						end
					end
				end)
			end
			wait(0.05)
			show_notification("Item Esp enabled")
		end
	})

	Tab:AddButton({
		Name = "AutoWin (night 1)",
		Callback = function()
			if game.PlaceId == 14896802601 then
			noclip()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5.88350201, 27.5749683, -70.5206757, 0, 0,
				1, 0, 1, -0, -1, 0, 0)
			end
		end
	})


	local repair_cd = false
	Tab:AddToggle({
		Name = "Auto Fuse Box[NIGHT 1-2 ONLY]",
		Flag = "toggleFuse1",
		Save = true,
		Callback = function()
			if game.PlaceId == 14896802601 or game.PlaceId == 16667550979 then
				game:GetService("RunService").Heartbeat:Connect(function()
					if repair_cd == false then
						local FuseBox = workspace:FindFirstChild("FuseBox")
						if FuseBox then
							local WarningSign = FuseBox:FindFirstChild("WarningSign")
							if WarningSign then
								if WarningSign.BillboardGui.Enabled == true then
									local a = nil
									if FuseBox.Wires["1"].Highlight.Enabled == true then
										a = FuseBox.Wires["1"]
									end
									if FuseBox.Wires["2"].Highlight.Enabled == true then
										a = FuseBox.Wires["2"]
									end
									if FuseBox.Wires["3"].Highlight.Enabled == true then
										a = FuseBox.Wires["3"]
									end
									if FuseBox.Wires["4"].Highlight.Enabled == true then
										a = FuseBox.Wires["4"]
									end
									if a ~= nil then
										local Wrench = nil
										local Wrench1 = game.Players.LocalPlayer.Character:FindFirstChild("Wrench")
										local Wrench2 = game.Players.LocalPlayer.Backpack:FindFirstChild("Wrench")
										if Wrench1 then
											Wrench = Wrench1
										end
										if Wrench2 then
											Wrench = Wrench2
										end
										if Wrench ~= nil then
											local Item = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
											if Item then
												if Item.Name ~= "Wrench" then
													Item.Parent = game.Players.LocalPlayer.Backpack
												end
											end
											local Wrench14 = game.Players.LocalPlayer.Backpack:FindFirstChild("Wrench")
											if Wrench14 then
												repair_cd = true
												Wrench14.Parent = game.Players.LocalPlayer.Character
												game.ReplicatedStorage.Remotes.ClickWire:FireServer(a)
												wait(0.05)
												if Item then
													if Item.Name ~= "Wrench" then
														Wrench14.Parent = game.Players.LocalPlayer.Backpack
														Item.Parent = game.Players.LocalPlayer.Character
													else

													end
												else
													Wrench14.Parent = game.Players.LocalPlayer.Backpack
												end
												wait(1.95)
												repair_cd = false
											else
												local Wrench14 = game.Players.LocalPlayer.Character:FindFirstChild("Wrench")
												if Wrench14 then
													repair_cd = true
													Wrench14.Parent = game.Players.LocalPlayer.Character
													game.ReplicatedStorage.Remotes.ClickWire:FireServer(a)
													wait(0.05)
													if Item then
														if Item.Name ~= "Wrench" then
															Wrench14.Parent = game.Players.LocalPlayer.Backpack
															Item.Parent = game.Players.LocalPlayer.Character
														else

														end
													else
														Wrench14.Parent = game.Players.LocalPlayer.Backpack
													end
													wait(1.95)
													repair_cd = false
												end
											end
										end
									end
								end
							end
						end
					end
				end)
			end
		end
	})






	Tab:AddButton({
		Name = "Fullbright[GLOBAL]",
		Callback = function()
			local RunService = game:GetService("RunService")
			game:GetService("RunService").Heartbeat:Connect(function()
				game.Lighting.Atmosphere.Density = 0
				game.Lighting.Atmosphere.Color = Color3.fromRGB(255, 255, 255)
				game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
			end)
		end

	})

	Tab:AddButton({
		Name = "Remove Fog(TEST) - [GLOBAL]",
		Callback = function()
			FogR()
		end
	})

	Tab:AddButton({
		Name = "Fov Changer - [GLOBAL]",
		Callback = function()
			game:GetService("RunService").Heartbeat:Connect(function()
				game:GetService("TweenService"):Create(workspace.Camera,
					TweenInfo.new(0.02, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { FieldOfView = 120 }):Play()
			end)
		end
	})


	local ThirdPerson = false
	local connection = nil

	local function cameraPidor()
		if connection then return end
		connection = game:GetService("RunService").RenderStepped:Connect(function()
			if ThirdPerson then
				game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
			end
		end)
	end

	Tab:AddToggle({
		Name = "3rd Person View In-House[GLOBAL]",
		Flag = "toggle3rd",
		Save = true,
		Default = true,
		Callback = function(v)
			ThirdPerson = v
			if v then
				cameraPidor()
			end
		end
	})


	Tab:AddButton({
		Name = "Unlimited FlashLight battery[GLOBAL]",
		Callback = function()
			game:GetService("RunService").RenderStepped:Connect(function()
			local plr = game.Players.LocalPlayer.Character

			plr.Flashlight.Battery.Value = 999999
			plr.Flashlight.Charges.Value = 999999
			show_notification("Unlimited FlashLight battery enabled")
			end)
		end
	})



	local SectionVisual = Tab:AddSection({
		Name = "Removes"
	})


	Tab:AddButton({
		Name = "Remove Vignette[GLOBAL]",
		Default = true,
		Callback = function()
			game:GetService("RunService").Heartbeat:Connect(function()
				local DialogueUI = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("DialogueUI")
				if DialogueUI then
					local Vignette = DialogueUI:FindFirstChild("Vignette")
					if Vignette then
						Vignette.Visible = false
					end
				end
			end)
			wait(0.05)
			show_notification("Remove Vignette enabled")
		end
	})

	Tab:AddButton({
		Name = "Remove Statics[GLOBAL - 1,2 NIGHTS]",
		Default = true,
		Callback = function()
			game:GetService("RunService").Heartbeat:Connect(function()
				local DialogueUI = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("DialogueUI")
				if DialogueUI then
					local Static = DialogueUI:FindFirstChild("Static")
					if Static then
						Static.Visible = false
					end
				end
			end)
			wait(0.05)
			show_notification("Remove Statics enabled")
		end
	})

	Tab:AddButton({
		Name = "Remove Monochrome[GLOBAL-GRAVES]",
		Default = true,
		Callback = function()
			game.Lighting.Monochrome.Enabled = false
			wait(0.05)
			show_notification("Remove Monochrome enabled")
		end
	})

	--Tab:AddButton({
	--	Name = "Remove Tutorial[GLOBAL]",
	--	Callback = function()
	--	game.StarterGui.DialogueUI.TutorialFrame.Visible = false
	--	end
	--})




	local SectionMulti = Tab:AddSection({
		Name = "Multiversal"
	})

	Tab:AddButton({
		Name = "Dad ESP",
		Callback = function()
			ESPLib:CreateESPTag({
				Text = "DAD IS HERE",
				Part = game.Workspace:WaitForChild("WeirdDad").HumanoidRootPart,
				TextSize = 10,
				TextColor = Color3.new(255, 255, 0),
				BoxColor = Color3.new(255, 255, 0),
				TracerColor = Color3.new(255, 255, 0),
				TracerWidth = 3
			})
		end
	})

	Tab:AddButton({
		Name = "Winterhorn ESP",
		Callback = function()
			ESPLib:CreateESPTag({
				Text = "Winterhorn",
				Part = game.Workspace:WaitForChild("Winterhorn").HumanoidRootPart,
				TextSize = 9,
				TextColor = Color3.new(255, 250, 0),
				BoxColor = Color3.new(255, 250, 0),
				TracerColor = Color3.new(255, 250, 0),
				TracerWidth = 3
			})
		end
	})

	Tab:AddButton({
		Name = "Intruder ESP",
		Callback = function()
			ESPLib:CreateESPTag({
				Text = "INTRUDER",
				Part = game.Workspace:WaitForChild("Intruder").Head,
				TextSize = 9,
				TextColor = Color3.new(0, 0, 0),
				BoxColor = Color3.new(0, 0, 0),
				TracerColor = Color3.new(0, 0, 0),
				TracerWidth = 3
			})
		end
	})



	spawn(function()
		while wait() do
			if _G.InfO2 then
				game.Players.LocalPlayer.Character.Breath.Value = 9999
			elseif not _G.InfO2 then

			end
		end
	end)


	spawn(function()
		while wait() do
			if _G.InfStam then
				game.Players.LocalPlayer.Character.Sprint.Overdrive.Value = 9999
			elseif not _G.InfStam then

			end
		end
	end)




	local Section1 = Tab2:AddSection({
		Name = "Night 1"
	})

	local function b(t, c)
		Tab2:AddButton({
			Name = t,
			Callback = c
		})
	end

	local function tp(cframe)
		game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(cframe)
	end

	b("TP to Bedroom", function()
		if game.PlaceId == 14896802601 then
			tp(CFrame.new(-26.4822197, 25.2999763, -70.1086578, 0.0224343352, -3.52125333e-08, 0.999748349, 1.10617968e-08, 1,
				3.49731728e-08, -0.999748349, 1.02744133e-08, 0.0224343352))
		end
	end)

	b("TP to Bathroom", function()
		if game.PlaceId == 14896802601 then
			tp(CFrame.new(-30.7616272, 25.2665825, -52.872654, -0.88530308, -0.00215160637, -0.46500957, -9.70951419e-07,
				0.999989271, -0.00462511973, 0.465014547, -0.00409418205, -0.885293603))
		end
	end)

	b("TP to Ladder", function()
		if game.PlaceId == 14896802601 then
			tp(CFrame.new(-0.173666388, 9.29997444, -81.3216171, 0.71976018, 4.61229028e-08, -0.694222808, 2.05241513e-08, 1,
				8.7717325e-08, 0.694222808, -7.73837669e-08, 0.71976018))
		end
	end)

	b("TP to Living room", function()
		if game.PlaceId == 14896802601 then
			tp(CFrame.new(-30.4597397, 9.54158783, -48.7385521, -0.716877401, -3.08829655e-08, -0.697199285, 5.5513663e-08, 1,
				-1.01376258e-07, 0.697199285, -1.11378434e-07, -0.716877401))
		end
	end)

	b("TP to generator", function()
		if game.PlaceId == 14896802601 then
			tp(CFrame.new(-79.0926361, 6.17452288, -132.726837, 0.999816597, 1.17400432e-05, 0.0191521458, -1.32483137e-07,
				0.999999821, -0.000605979934, -0.0191521496, 0.000605866197, 0.999816418))
		end
	end)

	b("TP to power console", function()
		if game.PlaceId == 14896802601 then
			tp(CFrame.new(-2.41564226, 6.19921589, -92.5593948, -0.98161006, 0.000280018401, -0.190896764, -1.27568831e-06,
				0.999998927, 0.00147344405, 0.190896958, 0.00144659204, -0.981608987))
		end
	end)

	local Section2 = Tab2:AddSection({
		Name = "Night 3"
	})

	b("TP to cabin 1(enter in invis wall)", function()
		if game.PlaceId == 140260816701736 then
			tp(CFrame.new(103.196289, 1.32511044, -257.749939, -1, 0, 0, 0, 1, 0, 0, 0, -1))
		end
	end)

	b("TP to cabin 1", function()
		if game.PlaceId == 140260816701736 then
			tp(CFrame.new(102.19632, 11.1778259, -243.749954, -1.1920929e-07, -0, -1.00000012, 0, 1, -0, 1.00000012, 0,
				-1.1920929e-07))
		end
	end)

	b("TP to cabin 2", function()
		if game.PlaceId == 140260816701736 then
			tp(CFrame.new(-34.0536728, 11.1778269, 67.7500153, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		end
	end)

	b("TP to cabin 3", function()
		if game.PlaceId == 140260816701736 then
			tp(CFrame.new(-39.053688, 11.1778278, 267.694946, -1, 0, 0, 0, 1, 0, 0, 0, -1))
		end
	end)

	b("TP to right ammo 1(cabin 1)", function()
		if game.PlaceId == 140260816701736 then
			tp(CFrame.new(-46.8036766, 2.4266336, -68.25, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		end
	end)

	b("TP to right ammo 2(cabin 1)", function()
		if game.PlaceId == 140260816701736 then
			tp(CFrame.new(-6.80367327, 2.4266336, -153.25, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		end
	end)

	b("TP to left ammo 1(cabin 2)", function()
		if game.PlaceId == 140260816701736 then
			tp(CFrame.new(96.9999847, 2.4266336, 178, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		end
	end)

	b("TP to left ammo 2(cabin 3)", function()
		if game.PlaceId == 140260816701736 then
			tp(CFrame.new(48.6963272, 2.4266336, 282.75, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		end
	end)


	local Section3 = Tab2:AddSection({
		Name = "Bunker"
	})

	b("TP to the generator", function()
		if game.PlaceId == 100255403764514 then
			tp(CFrame.new(-33.9844055, 16.7331085, -154.5, 0, 0, -1, 0, 1, 0, 1, 0, 0))
		end
	end)

	b("TP to the ventelation", function()
		if game.PlaceId == 100255403764514 then
			tp(CFrame.new(63.8999825, 20.5001945, 65.5, 1, 0, 0, 0, 1, 0, 0, 0, 1))
		end
	end)




	local InfBlood = false

	mn:AddToggle({
		Name = "Infinite Blood",
		Default = false,
		Callback = function(v)
			InfBlood = v
		end
	})

	spawn(function()
		game.RunService.RenderStepped:Connect(function()
			if InfBlood then
				task.wait()
				game.Players.LocalPlayer.Character:WaitForChild("Blood").Value = 999998927
			end
		end)
	end)

	mn:AddButton({
		Name = "Large Hitbox",
		Callback = function()
			for i, v in pairs(game.Players:GetChildren()) do
				if v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name then
					v.Character.HumanoidRootPart.Size = Vector3.new(100, 100, 100)
				end
			end
		end
	})


	misc:AddParagraph("Information about this tab",
		"GrabItem Aura dont works on executors which dont have fireclickdetector support")
	local itemgrab = false

	misc:AddToggle({
		Name = "GrabItem Aura",
		Default = false,
		Callback = function(v)
			itemgrab = v
		end
	})

	spawn(function()
		game.RunService.RenderStepped:Connect(function()
			if itemgrab then
				task.wait(1)
				for i, v in pairs(game.Workspace:GetDescendants()) do
					if v:IsA("Tool") or table.find({ "Flashlight", "Wrench", "Battery", "BloxyCola" }, v.Name) then
						fireclickdetector(v:FindFirstChild("ClickDetector"))
					end
				end
			end
		end)
	end)


	plr:AddParagraph("Information about this tab",
		"This tab for pvp mode")
	local players = {}

	local playersDropdown = plr:AddDropdown({
		Name = "Players",
		Default = "PlayerName",
		Options = players,
		Callback = function(selectedPlayer)
			targ = selectedPlayer
		end
	})

	function UpdatePlayersTable()
		players = {}
		for _, player in pairs(game.Players:GetPlayers()) do
			if player ~= game.Players.LocalPlayer then
				table.insert(players, player.Name)
			end
		end

		playersDropdown:Refresh(players, true)
	end

	spawn(function()
		while wait(0.5) do
			UpdatePlayersTable()
		end
	end)

	plr:AddButton({
		Name = "TP to Player",
		Callback = function()
			if targ == nil or targ == "" or targ == " " then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Player is nil!",
					Text = "Target not selected",
					Duration = 5
				})
			else
				game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players[targ].Character.PrimaryPart.CFrame)
			end
		end
	})

	plr:AddButton({
		Name = "ESP to Player",
		Callback = function()
			if targ == "" or targ == " " then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Player is nil!",
					Text = "Target not selected",
					Duration = 5
				})
			else
				local bi = Instance.new("BillboardGui", game.Players[targ].Character.HumanoidRootPart)
				bi.Name = "ESP"
				bi.StudsOffset = Vector3.new(0, game.Players[targ].Character.HumanoidRootPart.Size.Y + 6, 0)
				bi.Adornee = game.Players[targ].Character.HumanoidRootPart
				bi.AlwaysOnTop = true
				bi.Size = UDim2.new(0, 200, 0, 50)

				local esplabelfr = Instance.new("TextLabel")
				esplabelfr.Name = "esplabelfr"
				esplabelfr.Text = targ
				esplabelfr.Size = UDim2.new(1, 0, 0, 70)
				esplabelfr.BackgroundColor3 = Color3.new(0, 0, 0)
				esplabelfr.TextColor3 = TextColor or Color3.fromRGB(255, 255, 255)
				esplabelfr.BackgroundTransparency = 1
				esplabelfr.TextStrokeTransparency = 0
				esplabelfr.TextStrokeColor3 = Color3.new(0, 0, 0)
				esplabelfr.TextSize = 12
				esplabelfr.TextScaled = false
				esplabelfr.Font = "Arcade"
				esplabelfr.Parent = bi
			end
		end
	})

	plr:AddButton({
		Name = "Tween to Player",
		Callback = function()
			if targ == "" or targ == " " then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Player is nil!",
					Text = "Target not selected",
					Duration = 5
				})
			else
				local ts = game:GetService("TweenService")

				local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
				local targetHumanoidRootPart = game.Players[targ].Character.HumanoidRootPart

				local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

				local propertyGoals = {
					CFrame = targetHumanoidRootPart.CFrame
				}

				local tween = ts:Create(humanoidRootPart, tweenInfo, propertyGoals)
				tween:Play()
			end
		end
	})

	local cbring = false

	plr:AddToggle({
		Name = "Client-Bring Player",
		Default = false,
		Callback = function(v)
			cbring = v

			if targ == nil or targ == "" or targ == " " then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Player is nil!",
					Text = "Target not selected",
					Duration = 5
				})
			else
				while task.wait(.1) do
					if cbring then
						game.Players[targ].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character
							.PrimaryPart.CFrame
					end
				end
			end
		end
	})

	plr:AddButton({
		Name = "Increase Player Hitbox",
		Callback = function()
			if targ == nil or targ == "" or targ == " " then
				game.StarterGui:SetCore("SendNotification", {
					Title = "Player is nil!",
					Text = "Target not selected",
					Duration = 5
				})
			else
				while task.wait(.1) do
					game.Players[targ].Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.PrimaryPart
						.CFrame
				end
			end
		end
	})

	--VISUAL

	RandomTab:AddParagraph("Information about this tab",
		"All functions here just visual, dont works in real\n *Works only Aspect Ratio and Kill Abomination in Bunker tab")

	local sectionvisual = RandomTab:AddSection({
		Name = "Main Visuals"
	})

	
	local ascpt = false
	RandomTab:AddButton({
		Name = "Aspect Ratio(4:3)",
		Callback = function()
			if ascpt == false then
				ascpt = true	
				local Camera = workspace.CurrentCamera
				local Resolution = 0.80
				game:GetService("RunService").RenderStepped:Connect(function()
					Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, Resolution, 0, 0, 0, 1)
				end)
	end
			
		end
	})

	local sectiondumb = RandomTab:AddSection({
		Name = "Dumb"
	})
	RandomTab:AddButton({
		Name = "Destroy Doors(click it 6 times)", --Only you see that
		Callback = function()
			game.Workspace.Doors.Door:Destroy()
		end
	})
	RandomTab:AddButton({
		Name = "Destroy Jeeps(works in lobby)",
		Callback = function()
			game.Workspace.Jeep:Destroy()
		end
	})
	RandomTab:AddButton({
		Name = "Destroy Upd Board(works in lobby)",
		Callback = function()
			game.Workspace.UpdateBoard:Destroy()
		end
	})
	RandomTab:AddButton({
		Name = "Destroy Larry",
		Callback = function()
			game.ReplicatedStorage.Mutant:Destroy()
		end
	})


	-- binds window
	local keybind_window_visible = false
	local keybind_window = nil

	function open_keybinds_window()
		if keybind_window_visible then return end
		keybind_window_visible = true
		local bindgui = Instance.new("ScreenGui")
		bindgui.Parent = game:GetService("CoreGui")

		keybind_window = Instance.new("Frame")
		keybind_window.Parent = bindgui
		keybind_window.Size = UDim2.new(0, 500, 0, 400)
		keybind_window.Position = UDim2.new(0.5, -250, 0.5, -200)
		keybind_window.AnchorPoint = Vector2.new(0.5, 0.5)
		keybind_window.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		keybind_window.BackgroundTransparency = 0
		keybind_window.BorderSizePixel = 0
		Instance.new("UICorner", keybind_window)
		Instance.new("UIStroke", keybind_window).Color = Color3.fromRGB(255, 255, 255)

		local title = Instance.new("TextLabel")
		title.Parent = keybind_window
		title.Size = UDim2.new(1, 0, 0.1, 0)
		title.Position = UDim2.new(0, 0, 0, 0)
		title.Text = "Keybinds Menu"
		title.TextColor3 = Color3.fromRGB(0, 255, 0)
		title.TextScaled = true
		title.Font = Enum.Font.SourceSansBold
		title.BackgroundTransparency = 1

		local close_btn = Instance.new("TextButton")
		close_btn.Parent = keybind_window
		close_btn.Size = UDim2.new(0.1, 0, 0.1, 0)
		close_btn.Position = UDim2.new(0.9, 0, 0, 0)
		close_btn.Text = "X"
		close_btn.TextScaled = true
		close_btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		close_btn.TextColor3 = Color3.fromRGB(0, 255, 0)
		close_btn.BorderSizePixel = 0
		Instance.new("UICorner", close_btn)
		close_btn.MouseButton1Click:Connect(function()
			keybind_window:Destroy()
			keybind_window_visible = false
		end)

		local function create_keybind_row(parent, index, label_text)
			local row = Instance.new("Frame")
			row.Parent = parent
			row.Size = UDim2.new(0.95, 0, 0.13, 0)
			row.Position = UDim2.new(0.5, 0, index * 0.15 + 0.05, 0)
			row.AnchorPoint = Vector2.new(0.5, 0.5)
			row.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			row.BackgroundTransparency = 0.3
			Instance.new("UICorner", row)

			local label = Instance.new("TextButton")
			label.Parent = row
			label.Size = UDim2.new(0.4, 0, 1, 0)
			label.BackgroundTransparency = 1
			label.Text = "Keybind " .. index .. " (Click to reset)"
			label.TextColor3 = Color3.fromRGB(0, 255, 0)
			label.TextScaled = true
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.Font = Enum.Font.SourceSansBold

			local key_btn = Instance.new("TextButton")
			key_btn.Parent = row
			key_btn.Size = UDim2.new(0.27, 0, 1, 0)
			key_btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			key_btn.BorderSizePixel = 0
			key_btn.Position = UDim2.new(0.35, 0, 0, 0)
			key_btn.AnchorPoint = Vector2.new(0.5, 0)
			key_btn.Text = "Keybind: " .. readfile("NektoHubRMSys/bind/bind" .. index .. "/bind.txt")
			key_btn.TextColor3 = Color3.fromRGB(0, 255, 0)
			key_btn.TextScaled = true
			key_btn.Font = Enum.Font.SourceSansBold
			Instance.new("UICorner", key_btn)

			local func_box = Instance.new("TextBox")
			func_box.Parent = row
			func_box.Size = UDim2.new(0.27, 0, 1, 0)
			func_box.Position = UDim2.new(0.75, 0, 0, 0)
			func_box.AnchorPoint = Vector2.new(0.5, 0)
			func_box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			func_box.BorderSizePixel = 0
			func_box.PlaceholderText = "Function (Click to write)"
			func_box.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
			func_box.Text = readfile("NektoHubRMSys/bind/function" .. index .. "/function.txt") ~= "nothing" and
				readfile("NektoHubRMSys/bind/function" .. index .. "/function.txt") or ""
			func_box.TextColor3 = Color3.fromRGB(0, 255, 0)
			func_box.TextScaled = true
			func_box.Font = Enum.Font.SourceSansBold
			Instance.new("UICorner", func_box)

			label.MouseButton1Click:Connect(function()
				writefile("NektoHubRMSys/bind/bind" .. index .. "/bind.txt", "nothing")
				writefile("NektoHubRMSys/bind/function" .. index .. "/function.txt", "nothing")
				key_btn.Text = "Keybind: nothing"
				func_box.Text = ""
			end)

			func_box.Changed:Connect(function()
				if func_box.Text ~= "" then
					writefile("NektoHubRMSys/bind/function" .. index .. "/function.txt", func_box.Text)
				end
			end)

			if not is_mobile then
				local listening = false
				key_btn.MouseButton1Click:Connect(function()
					if listening then return end
					listening = true
					key_btn.Text = "Listen..."
					local connection
					connection = user_input.InputBegan:Connect(function(input, game_processed)
						if game_processed then return end
						if input.KeyCode ~= Enum.KeyCode.Unknown then
							writefile("NektoHubRMSys/bind/bind" .. index .. "/bind.txt", input.KeyCode.Name)
							key_btn.Text = "Keybind: " .. input.KeyCode.Name
							connection:Disconnect()
							listening = false
						end
					end)
				end)
			end



			local save_btn = Instance.new("TextButton")
			save_btn.Parent = keybind_window
			save_btn.Size = UDim2.new(0.3, 0, 0.1, 0)
			save_btn.Position = UDim2.new(0.5, 0, 0.95, 0)
			save_btn.AnchorPoint = Vector2.new(0.5, 0.5)
			save_btn.Text = "Save And Close"
			save_btn.TextScaled = true
			save_btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			save_btn.TextColor3 = Color3.fromRGB(0, 255, 0)
			save_btn.BorderSizePixel = 0
			Instance.new("UICorner", save_btn)
			save_btn.MouseButton1Click:Connect(function()
				keybind_window:Destroy()
				keybind_window_visible = false
			end)
		end
		for i = 1, 4 do
			create_keybind_row(keybind_window, i, i)
		end
	end

	-- Config && binds
	cfgTab:AddParagraph("Information about this tab",
		"Now this tab is exprerimental! All here functions on tests and have bugs or visual errors!\n *If you see bugs in all script sections(this is functions and etc), please tell it to me /discord: werumov")

	cfgTab:AddButton({
		Name = "Open binds window",
		Callback = function()
			warn(script_name_f9 .. " KeyBinds Window have errors!")
			wait(0.5)
			print(script_name_f9 .. " KeyBinds Window open in 1.5 seconds")
			wait(1.5)
			open_keybinds_window()
		end
	})

	cfgTab:AddButton({
		Name = "Save buttons toggle config",
		Callback = function()
			show_notification("Dont working now :P")
		end
	})

	cfgTab:AddButton({
		Name = "Save custom binds",
		Callback = function()
			show_notification("Dont working now :P")
		end
	})


	-- change log
	ChangeLogTab:AddParagraph("Change Log", "Version 1.9951 addctions:\n-Old key system returned\n-Changed hud data\n-Changed some features in update_checker()")



	-- About
	AboutTab:AddButton({
		Name = "Telegram",
		Callback = function()
			game.StarterGui:SetCore("SendNotification", {
				Title = "@",
				Text = "This is telegram :D",
				Duration = 7
			})
		end
	})

	AboutTab:AddButton({
		Name = "Developer Discord",
		Callback = function()
			show_notification("Discord username: werumov")
		end
	})

	AboutTab:AddButton({
		Name = "Discord Server",
		Callback = function()
			show_notification("Discord server link: https://discord.gg/U65StBRNr2")
		end
	})
	
	AboutTab:AddButton({	
		Name = "About Menu",
		Callback = function()
			
		end
	})

	OrionLib:Init()

end

if readfile("NektoHubRMSys/bind/uqhwh197wghdauishdyiagefia.txt") == "false" then
	local variation_k = 0
	local prem_variation_k = 0

	if tonumber(readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt")) == 1 then
		variation_k = 1
	elseif tonumber(readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt")) == 2 then
		variation_k = 2
	elseif tonumber(readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt")) == 3 then
		variation_k = 3
	end

	local nickLength = #game.Players.LocalPlayer.Name
	local need_v_key = 1

	local encryptedPlayerName = "KEY_00000000000000001"
	if variation_k == 1 then
		if nickLength <= 5 then
			-- Nekto Hub Residence Massacre Script -  Key 1
			-- https://link-hub.net/7250219/LG23VsGiEUia
			encryptedPlayerName = "nektorm_mcoettqlxu"
		end
		if nickLength >= 6 and nickLength <= 8 then
			-- Nekto Hub Residence Massacre Script -  Key 2
			-- https://link-target.net/7250219/xyZU9r9nPLAJ
			encryptedPlayerName = "nektorm_zadrhxmdbq"
		end
		if nickLength >= 9 and nickLength <= 13 then
			-- Nekto Hub Residence Massacre Script -  Key 3
			-- https://direct-link.net/7250219/oT7I1nvZDb26
			encryptedPlayerName = "nektorm_furmzzprtx"
		end
		if nickLength >= 14 then
			-- Nekto Hub Residence Massacre Script -  Key 4
			-- https://link-target.net/7250219/shQeHxKaDn77
			encryptedPlayerName = "nektorm_ofpxivbaok"
		end
	elseif variation_k == 2 then
		if nickLength <= 5 then
			-- Nekto Hub Residence Massacre Script -  Key 5
			-- https://link-target.net/7250219/VpEJ1G4rzwbo
			encryptedPlayerName = "nektorm_ghouzdxill"
		end
		if nickLength >= 6 and nickLength <= 8 then
			-- Nekto Hub Residence Massacre Script -  Key 6
			-- https://link-target.net/7250219/Ymi58drzkFWb
			encryptedPlayerName = "nektorm_mrqkqkwjcu"
		end
		if nickLength >= 9 and nickLength <= 13 then
			-- Nekto Hub Residence Massacre Script -  Key 7
			-- https://direct-link.net/7250219/nTuh4eZGPE2v
			encryptedPlayerName = "nektorm_gxmwddsuxs"
		end
		if nickLength >= 14 then
			-- Nekto Hub Residence Massacre Script -  Key 8
			-- https://link-target.net/7250219/dGqTnn0YAP5u
			encryptedPlayerName = "nektorm_rftfutczxe"
		end
	elseif variation_k == 3 then
		if nickLength <= 5 then
			-- Nekto Hub Residence Massacre Script -  Key 9
			-- https://direct-link.net/7250219/VanuaBkeuQyn
			encryptedPlayerName = "nektorm_bbxaomrkor"
		end
		if nickLength >= 6 and nickLength <= 8 then
			-- Nekto Hub Residence Massacre Script -  Key 10
			-- https://direct-link.net/7250219/jCLoNktsSTtQ
			encryptedPlayerName = "nektorm_lldgrtylyk"
		end
		if nickLength >= 9 and nickLength <= 13 then
			-- Nekto Hub Residence Massacre Script -  Key 11
			-- https://link-target.net/7250219/s8r0iTeTz9fC
			encryptedPlayerName = "nektorm_nnrqnukepo"
		end
		if nickLength >= 14 then
			-- Nekto Hub Residence Massacre Script -  Key 12
			-- https://link-center.net/7250219/CB9oWsM0lUNF
			encryptedPlayerName = "nektorm_xisjzoixhi"
		end
	end


	-- keygui
	local player = game.Players.LocalPlayer
	local keygui = Instance.new("ScreenGui")
	keygui.Name = "KeyGui"
	keygui.Parent = game.CoreGui
	keygui.IgnoreGuiInset = true
	keygui.DisplayOrder = 999999999

	local frame = Instance.new("Frame")
	frame.Name = "PIDOR"
	frame.Parent = keygui
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame.Size = UDim2.new(0.3, 0, 0.3, 0)
	frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

	local aspectratio = Instance.new("UIAspectRatioConstraint")
	aspectratio.Parent = frame
	aspectratio.AspectRatio = 1.38

	local uicorner = Instance.new("UICorner")
	uicorner.Parent = frame

	local texboxkey = Instance.new("TextBox")
	texboxkey.Parent = frame
	texboxkey.AnchorPoint = Vector2.new(0.5, 0.5)
	texboxkey.Position = UDim2.new(0.5, 0, 0.5, 0)
	texboxkey.Size = UDim2.new(0.5, 0, 0.15, 0)
	texboxkey.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	texboxkey.Font = Enum.Font.SourceSansBold
	texboxkey.TextScaled = true
	texboxkey.TextColor3 = Color3.fromRGB(22, 255, 5)
	texboxkey.PlaceholderText = "key here"
	texboxkey.PlaceholderColor3 = Color3.fromRGB(127, 127, 127)
	texboxkey.Text = ""
	local maxLength = 18
	local function filterInput(input)
		local filteredText = string.gsub(input, "[^a-zA-Z_]", "")
		return filteredText
	end
	texboxkey.Changed:Connect(function()
		local originalText = texboxkey.Text
		local filteredText = filterInput(originalText)
		if #filteredText > maxLength then
			filteredText = string.sub(filteredText, 1, maxLength)
		end
		if texboxkey.Text ~= filteredText then
			texboxkey.Text = filteredText
		end
	end)

	local uicornertext = Instance.new("UICorner")
	uicornertext.Parent = texboxkey
	local uiborder = Instance.new("UIStroke")
	uiborder.Parent = texboxkey
	uiborder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiborder.Thickness = 2.5
	uiborder.Color = Color3.fromRGB(255, 255, 255)

	local textlabelkey = Instance.new("TextLabel")
	textlabelkey.Parent = frame
	textlabelkey.AnchorPoint = Vector2.new(0.5, 0.5)
	textlabelkey.Position = UDim2.new(0.5, 0, 0.15, 0)
	textlabelkey.Size = UDim2.new(0.5, 0, 0.2, 0)
	textlabelkey.BackgroundTransparency = 1
	textlabelkey.Font = Enum.Font.SourceSansBold
	textlabelkey.TextScaled = true
	textlabelkey.TextColor3 = Color3.fromRGB(22, 255, 5)
	textlabelkey.Text = "Key System"


	local buttonenter = Instance.new("TextButton")
	buttonenter.Parent = frame
	buttonenter.AnchorPoint = Vector2.new(0.5, 0.5)
	buttonenter.Position = UDim2.new(0.5, 0, 0.72, 0)
	buttonenter.Size = UDim2.new(0.5, 0, 0.15, 0)
	buttonenter.BackgroundColor3 = Color3.fromRGB(0,0,0)
	buttonenter.Font = Enum.Font.SourceSansBold
	buttonenter.TextScaled = true
	buttonenter.TextColor3 = Color3.fromRGB(22, 255, 5)
	buttonenter.Text = "Enter"

	local cancheck = false
	buttonenter.MouseButton1Click:Connect(function()
		if cancheck == true then return end
		if texboxkey.Text == "" then return end
		if texboxkey.Text == encryptedPlayerName then
			keygui:Destroy()
			writefile("NektoHubRMSys/bind/uqhwh197wghdauishdyiagefia.txt", "true")
			local correctTime = tostring(os.time())
			writefile("NektoHubRMSys/bind/sdauwihdawhd91q8u2y3jadfoi.txt", correctTime)
			show_notification("You have 24 hours before the key changes")
			wait(1.5)
			MainUI()
		else
			cancheck = true
			buttonenter.Text = "Wrong Key"
			wait(1.5)
			player:Kick("KeySystem: Wrong Key")
			buttonenter.Text = "Enter"
			cancheck = false
		end
	end)

	local uicornertextb = Instance.new("UICorner")
	uicornertextb.Parent = buttonenter
	local uiborderb = Instance.new("UIStroke")
	uiborderb.Parent = buttonenter
	uiborderb.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiborderb.Thickness = 2.5
	uiborderb.Color = Color3.fromRGB(255, 255, 255)

	local buttonx = Instance.new("TextButton")
	buttonx.Parent = frame
	buttonx.AnchorPoint = Vector2.new(1, 0)
	buttonx.Position = UDim2.new(1, 0, 0, 0)
	buttonx.Size = UDim2.new(0.12, 0, 0.12, 0)
	buttonx.BackgroundTransparency = 1
	buttonx.Font = Enum.Font.SourceSansBold
	buttonx.TextScaled = true
	buttonx.TextColor3 = Color3.fromRGB(68, 255, 0)
	buttonx.Text = "X"
	local uixascpect = Instance.new("UIAspectRatioConstraint")
	uixascpect.Parent = buttonx
	uixascpect.AspectRatio = 1

	buttonx.MouseButton1Click:Connect(function()
		keygui:Destroy()
	end)

	local buttonget = Instance.new("TextButton")
	buttonget.Parent = frame
	buttonget.AnchorPoint = Vector2.new(0.5, 0.5)
	buttonget.Position = UDim2.new(0.5, 0, 0.9, 0)
	buttonget.Size = UDim2.new(0.5, 0, 0.15, 0)
	buttonget.BackgroundColor3 = Color3.fromRGB(0,0,0)
	buttonget.Font = Enum.Font.SourceSansBold
	buttonget.TextScaled = true
	buttonget.TextColor3 = Color3.fromRGB(22, 255, 5)
	buttonget.Text = "Copy Link"

	local waitbeforenew = false
	buttonget.MouseButton1Click:Connect(function()
		if waitbeforenew == true then return end
		waitbeforenew = true
		buttonget.Text = "Copied"
		local nameLength = #game.Players.LocalPlayer.Name
		local variation_k = 0

		if tonumber(readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt")) == 1 then
			variation_k = 1
		elseif tonumber(readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt")) == 2 then
			variation_k = 2
		elseif tonumber(readfile("NektoHubRMSys/bind/aihdafjasbfd9yuqt3gryqgaef.txt")) == 3 then
			variation_k = 3
		end

		local nickLength = #game.Players.LocalPlayer.Name
		local need_v_key = 1


		if variation_k == 1 then
			if nickLength <= 5 then
				-- Nekto Hub Residence Massacre Script -  Key 1
				setclipboard("https://link-hub.net/7250219/LG23VsGiEUia")
			end
			if nickLength >= 6 and nickLength <= 8 then
				-- Nekto Hub Residence Massacre Script -  Key 2
				setclipboard("https://link-target.net/7250219/xyZU9r9nPLAJ")
			end
			if nickLength >= 9 and nickLength <= 13 then
				-- Nekto Hub Residence Massacre Script -  Key 3
				setclipboard("https://direct-link.net/7250219/oT7I1nvZDb26")
			end
			if nickLength >= 14 then
				-- Nekto Hub Residence Massacre Script -  Key 4
				setclipboard("https://link-target.net/7250219/shQeHxKaDn77")
			end
		elseif variation_k == 2 then
			if nickLength <= 5 then
				-- Nekto Hub Residence Massacre Script -  Key 5
				setclipboard("https://link-target.net/7250219/VpEJ1G4rzwbo")
			end
			if nickLength >= 6 and nickLength <= 8 then
				-- Nekto Hub Residence Massacre Script -  Key 6
				setclipboard("https://link-target.net/7250219/Ymi58drzkFWb")
			end
			if nickLength >= 9 and nickLength <= 13 then
				-- Nekto Hub Residence Massacre Script -  Key 7
				setclipboard("https://direct-link.net/7250219/nTuh4eZGPE2v")
			end
			if nickLength >= 14 then
				-- Nekto Hub Residence Massacre Script -  Key 8
				setclipboard("https://link-target.net/7250219/dGqTnn0YAP5u")
			end
		elseif variation_k == 3 then
			if nickLength <= 5 then
				-- Nekto Hub Residence Massacre Script -  Key 9
				setclipboard("https://direct-link.net/7250219/VanuaBkeuQyn")
			end
			if nickLength >= 6 and nickLength <= 8 then
				-- Nekto Hub Residence Massacre Script -  Key 10
				setclipboard("https://direct-link.net/7250219/jCLoNktsSTtQ")
			end
			if nickLength >= 9 and nickLength <= 13 then
				-- Nekto Hub Residence Massacre Script -  Key 11
				setclipboard("https://link-target.net/7250219/s8r0iTeTz9fC")
			end
			if nickLength >= 14 then
				-- Nekto Hub Residence Massacre Script -  Key 12
				setclipboard("https://link-center.net/7250219/CB9oWsM0lUNF")
			end
		end
		wait(3)
		buttonget.Text = "Copy Link"
		waitbeforenew = false
	end)

	local uicornertextb1 = Instance.new("UICorner")
	uicornertextb1.Parent = buttonget
	local uiborderb1 = Instance.new("UIStroke")
	uiborderb1.Parent = buttonget
	uiborderb1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uiborderb1.Thickness = 2.5
	uiborderb1.Color = Color3.fromRGB(255, 255, 255)
else 
	wait(1)
	MainUI()
end





