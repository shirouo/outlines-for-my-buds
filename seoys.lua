repeat task.wait() until game:IsLoaded();
wait()

if getgenv().highlightloaded2 == true then
return
end
getgenv().highlightloaded2 = true

if game:GetService("Players").LocalPlayer.UserId == 2752075667 or 85059658 then

------- HIGHLIGHTS -------

local Players = game.Players
local function RefreshHighlights2()
	for i, Player in pairs(Players:GetPlayers()) do
		if Player ~= Players.LocalPlayer then
			local Character = Player.Character

			if Character then
				if Player.Character:FindFirstChildWhichIsA("Highlight") then
					Player.Character:FindFirstChildWhichIsA("Highlight"):Destroy()
				end
                    ------- SEO -------
				if Character.Name == getgenv().Account2 then
					local Highlight = Instance.new("Highlight")
					Highlight.OutlineColor = Color3.new(0.885588235,0.979705882,0.919803922)
					Highlight.OutlineTransparency = 0
					Highlight.FillColor = Color3.new(0.949019608,0.949019608,0.949019608)
				    Highlight.FillTransparency = 1
					Highlight.Parent = Character
				end
			end
		end
	end
end

------- NAME TAG -------
local Players = game.Players
local function RefreshNameTag2()
	for i, Player in pairs(Players:GetPlayers()) do
		if Player ~= Players.LocalPlayer then
			local Character = Player.Character

			if Character then
				if Player.Character.Head:FindFirstChildWhichIsA("BillboardGui") then
					Player.Character.Head:FindFirstChildWhichIsA("BillboardGui"):Destroy()
				end
                    ------- SEO -------
				if Character.Name == getgenv().Account2 then
				    Character.Humanoid.DisplayName = " "
					local BillboardGui = Instance.new("BillboardGui")
					local TextLabel = Instance.new("TextLabel")
					local UIStroke = Instance.new("UIStroke")
					BillboardGui.Parent = Character.Head
					BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					BillboardGui.Active = true
					BillboardGui.AlwaysOnTop = true
					BillboardGui.LightInfluence = 0
					BillboardGui.Size = UDim2.new(0, 200, 0, 200)
					BillboardGui.StudsOffset = Vector3.new(0, 1.5, 0)
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
					TextLabel.BackgroundTransparency = 1
					TextLabel.Size = UDim2.new(0, 200, 0, 200)
					TextLabel.Font = Enum.Font.Bodoni
					local acctt = getgenv().Account2
                    local plrzs = game:GetService("Players")[acctt]
                    local displaer = plrzs.DisplayName
                    TextLabel.Text = "".. getgenv().HisCurrentName .. " <3 (" .. displaer .. ")";
					TextLabel.TextColor3 = Color3.new(0.470588235,0.564705882,0.509803922)
					TextLabel.TextScaled = false
					TextLabel.TextSize = 25
					TextLabel.TextWrapped = true
					UIStroke.Parent = TextLabel
					UIStroke.Color = Color3.new(0.949019608,0.949019608,0.949019608)
					UIStroke.LineJoinMode = Round
					UIStroke.Thickness = 0.025
					UIStroke.Transparency = 0
				end
			end
		end
	end
end
  
game:GetService("RunService").Heartbeat:Connect(function()
task.wait(1)
RefreshHighlights2()
RefreshNameTag2()
end)
end