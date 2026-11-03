local v8 = setmetatable({}, {
    ["__index"] = function(v351, v352)
        local v353 = workspace.CurrentCamera
        local v354 = (v353 and v353.ViewportSize) or Vector2.new(4156 - 2236, 2163 - (286 + 797))
        if v352 == "Width" then
            return v354.X
        elseif v352 == "Height" then
            return v354.Y
        elseif v352 == "Size" then
            return v354
        end
    end,
})
local v9 = game:GetService("UserInputService")
local v10 = workspace.CurrentCamera.ViewportSize
local function v11(v355, v356)
    local v357 = 0 - 0
    local v358
    local v359
    local v360
    local v361
    local v362
    while true do
        if v357 == (0 - 0) then
            v358 = 439 - (397 + 42)
            v359 = nil
            v357 = 1 + 0
        end
        if v357 == (802 - (24 + 776)) then
            v362 = nil
            while true do
                if v358 == 1 then
                    v362 = (v359 and (2 - 0)) or (786.5 - (222 + 563))
                    if v355 == "X" then
                        return v356 * (v10.X / v360) * v362
                    elseif v355 == "Y" then
                        return v356 * (v10.Y / v361) * v362
                    end
                    break
                end
                if v358 == 0 then
                    v359 = v9.TouchEnabled and not v9.KeyboardEnabled
                    v360, v361 = 1920, 2379 - 1299
                    v358 = 1 + 0
                end
            end
            break
        end
        if v357 == 1 then
            v360 = nil
            v361 = nil
            v357 = 192 - (23 + 167)
        end
    end
end
local function v12(v363, v364, v365)
    local v366 = 1798 - (690 + 1108)
    local v367
    while true do
        if v366 == (0 + 0) then
            v367 = 0 + 0
            while true do
                if v367 == (848 - (40 + 808)) then
                    if type(v364) == v363 then
                        return v364
                    end
                    return v365
                end
            end
            break
        end
    end
end
local v13 = v12("function", cloneref, function(...)
    return ...
end)
local v14 = setmetatable({}, {
    ["__index"] = function(v368, v369)
        return v13(game:GetService(v369))
    end,
})
local v15 = v14.Players
local v16 = v14.RunService
local v17 = v14.UserInputService
local v18 = v14.TweenService
local v19 = v14.AvatarEditorService
local v20 = v14.HttpService
local v21 = v15.LocalPlayer
local v22 = v21.Character or v21.CharacterAdded:Wait()
local v23 = v22:WaitForChild("Humanoid")
local v24 = v23.RigType == Enum.HumanoidRigType.R6
local v25 = (v22.PrimaryPart and v22.PrimaryPart.Position) or Vector3.new()
local v26, v27, v28, v29, v30
v21.CharacterAdded:Connect(function(v370)
    local v371 = 0 + 0
    while true do
        if 1 == v371 then
            v24 = v23.RigType == Enum.HumanoidRigType.R6
            if v26 then
                v26.Text = (v24 and "AYAN 🔥 EMOTES (R6)") or "AYAN 🔥 emotes"
            end
            v371 = 7 - 5
        end
        if v371 == (2 + 0) then
            if v27 then
                v27.Text = (v24 and "Anim") or "Catalog"
            end
            if v28 then
                v28.Visible = not v24
            end
            v371 = 3
        end
        if v371 == (2 + 1) then
            if v24 and v29 and v30 then
                local v726 = 0 + 0
                while true do
                    if v726 == (572 - (47 + 524)) then
                        v27.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                        v28.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                        break
                    end
                    if v726 == (0 - 0) then
                        v29.Visible = true
                        v30.Visible = false
                        v726 = 1
                    end
                end
            end
            v25 = (v22.PrimaryPart and v22.PrimaryPart.Position) or Vector3.new()
            break
        end
        if v371 == (1726 - (1165 + 561)) then
            v22 = v370
            v23 = v370:WaitForChild("Humanoid")
            v371 = 1
        end
    end
end)
local v31 = {}
v31["Stop Emote When Moving"] = true
v31["Fade In"] = 0.1
v31["Fade Out"] = 0.1 + 0
v31["Weight"] = 3 - 2
v31["Speed"] = 1 + 0
v31["Time Position"] = 0
v31["Freeze On Finish"] = false
v31["Looped"] = true
v31["Stop Other Animations On Play"] = true
v31["High Priority"] = true
local v42 = {}
local v43 = "ORIONEXE_Saved.json"
local function v44()
    local v372, v373 = pcall(function()
        local v569 = 0
        while true do
            if v569 == (479 - (341 + 138)) then
                local v708 = 0 + 0
                while true do
                    if v708 == (0 - 0) then
                        if readfile and isfile and isfile(v43) then
                            return v20:JSONDecode(readfile(v43))
                        end
                        return {}
                    end
                end
            end
        end
    end)
    if v372 and (type(v373) == "table") then
        v42 = v373
    else
        v42 = {}
    end
    for v570, v571 in ipairs(v42) do
        local v572 = 326 - (89 + 237)
        while true do
            if (0 - 0) == v572 then
                if not v571.AnimationId then
                    if v571.AssetId then
                        v571.AnimationId = "rbxassetid://" .. tostring(v571.AssetId)
                    else
                        v571.AnimationId = "rbxassetid://" .. tostring(v571.Id)
                    end
                end
                if v571.Favorite == nil then
                    v571.Favorite = false
                end
                break
            end
        end
    end
end
local function v45()
    pcall(function()
        if writefile then
            writefile(v43, v20:JSONEncode(v42))
        end
    end)
end
v44()
local v46 = nil
local function v47(v374)
    local v375 = 0 - 0
    local v376
    local v377
    local v378
    local v379
    local v380
    local v381
    local v382
    while true do
        if v375 == (883 - (581 + 300)) then
            v380.Priority = v381
            v382 = v31["Weight"]
            if v382 == (1220 - (855 + 365)) then
                v382 = 0.001 - 0
            end
            if v31["Stop Other Animations On Play"] then
                for v769, v770 in pairs(v23.Animator:GetPlayingAnimationTracks()) do
                    if v770.Priority ~= v381 then
                        v770:Stop()
                    end
                end
            end
            v375 = 1 + 2
        end
        if (1238 - (1030 + 205)) == v375 then
            v380:Play(v31["Fade In"], v382, v31["Speed"])
            v46 = v380
            v46.TimePosition = math.clamp(v31["Time Position"], 0 + 0, 1) * (v46.Length or (1 + 0))
            v46.Priority = v381
            v375 = 290 - (156 + 130)
        end
        if v375 == (8 - 4) then
            v46.Looped = v31["Looped"]
            return v380
        end
        if v375 == (1 - 0) then
            v379 = Instance.new("Animation")
            v379.AnimationId = v376
            v380 = v23:LoadAnimation(v379)
            v381 = (v31["High Priority"] and Enum.AnimationPriority.Action4) or Enum.AnimationPriority.Action
            v375 = 3 - 1
        end
        if (0 + 0) == v375 then
            if v46 then
                v46:Stop(v31["Fade Out"])
            end
            v376 = nil
            v377, v378 = pcall(function()
                return game:GetObjects("rbxassetid://" .. tostring(v374))
            end)
            if v377 and v378 and (#v378 > (0 + 0)) then
                local v727 = 0
                local v728
                while true do
                    if v727 == (69 - (10 + 59)) then
                        v728 = v378[1 + 0]
                        if v728:IsA("Animation") then
                            v376 = v728.AnimationId
                        else
                            v376 = "rbxassetid://" .. tostring(v374)
                        end
                        break
                    end
                end
            else
                v376 = "rbxassetid://" .. tostring(v374)
            end
            v375 = 4 - 3
        end
    end
end
v16.RenderStepped:Connect(function()
    local v383 = 0
    while true do
        if 0 == v383 then
            if v31["Looped"] and v46 and v46.IsPlaying then
                v46.Looped = v31["Looped"]
            end
            if v22:FindFirstChild("HumanoidRootPart") then
                local v731 = 0
                local v732
                while true do
                    if v731 == (1163 - (671 + 492)) then
                        v732 = v22.HumanoidRootPart
                        if v31["Stop Emote When Moving"] and v46 and v46.IsPlaying then
                            local v901 = 0 + 0
                            local v902
                            local v903
                            local v904
                            while true do
                                if (1216 - (369 + 846)) == v901 then
                                    v904 = nil
                                    while true do
                                        if v902 == (1 + 0) then
                                            if v903 or v904 then
                                                local v955 = 0 + 0
                                                while true do
                                                    if v955 == 0 then
                                                        v46:Stop(v31["Fade Out"])
                                                        v46 = nil
                                                        break
                                                    end
                                                end
                                            end
                                            break
                                        end
                                        if v902 == (1945 - (1036 + 909)) then
                                            v903 = (v732.Position - v25).Magnitude > 0.1
                                            v904 = v23 and (v23:GetState() == Enum.HumanoidStateType.Jumping)
                                            v902 = 1 + 0
                                        end
                                    end
                                    break
                                end
                                if 0 == v901 then
                                    v902 = 0
                                    v903 = nil
                                    v901 = 1 - 0
                                end
                            end
                        end
                        v731 = 204 - (11 + 192)
                    end
                    if v731 == 1 then
                        v25 = v732.Position
                        break
                    end
                end
            end
            break
        end
    end
end)
local v48 = v14.CoreGui
local v49 = Instance.new("ScreenGui")
v49.Name = "OrionExeGUI"
v49.Parent = v48
v49.Enabled = false
v49.DisplayOrder = 505 + 494
local function v54(v384, v385)
    local v386 = 175 - (135 + 40)
    local v387
    while true do
        local v573 = 0 - 0
        while true do
            if v573 == (0 + 0) then
                if v386 == (2 - 1) then
                    v387.Parent = v384
                    return v387
                end
                if v386 == (0 - 0) then
                    v387 = Instance.new("UICorner")
                    v387.CornerRadius = UDim.new(176 - (50 + 126), v385 or (16 - 10))
                    v386 = 1 + 0
                end
                break
            end
        end
    end
end
local function v55(v388, v389, v390)
    local v391 = 1413 - (1233 + 180)
    local v392
    while true do
        local v574 = 969 - (522 + 447)
        while true do
            if v574 == (1422 - (107 + 1314)) then
                if v391 == 0 then
                    v392 = Instance.new("UIStroke")
                    v392.Color = v389 or Color3.fromRGB(100, 100, 100)
                    v391 = 1
                end
                break
            end
            if v574 == 0 then
                if (5 - 3) == v391 then
                    local v774 = 0 + 0
                    while true do
                        if v774 == 0 then
                            v392.Parent = v388
                            return v392
                        end
                    end
                end
                if v391 == 1 then
                    v392.Thickness = v390 or (1 - 0)
                    v392.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    v391 = 2
                end
                v574 = 3 - 2
            end
        end
    end
end
local function v56(v393)
    local v394 = 1910 - (716 + 1194)
    local v395
    while true do
        if v394 == (0 + 0) then
            local v615 = 0
            while true do
                if v615 == (1 + 0) then
                    v394 = 504 - (74 + 429)
                    break
                end
                if v615 == 0 then
                    v395 = Instance.new("UIScale")
                    v395.Scale = 0.5 - 0
                    v615 = 1 + 0
                end
            end
        end
        if v394 == (2 - 1) then
            v395.Parent = v393
            v18:Create(
                v395,
                TweenInfo.new(0.4 + 0, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                { ["Scale"] = 2 - 1 }
            ):Play()
            break
        end
    end
end
local v57 = Instance.new("Frame")
v57.Size = UDim2.new(0 - 0, v11("X", 470), 0, v11("Y", 450))
v57.Position = UDim2.new(0.5, -v11("X", 758 - (279 + 154)), 778.5 - (454 + 324), -v11("Y", 178 + 47))
v57.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
v57.BackgroundTransparency = 0.15 + 0
v57.Active = true
v57.Draggable = true
v57.Parent = v49
v54(v57, 20 - 12)
v55(v57, Color3.fromRGB(80, 80, 80), 1)
local v65 = Instance.new("TextButton")
v65.Size = UDim2.new(0 + 0, 24, 975 - (815 + 160), 24)
v65.Position = UDim2.new(4 - 3, -(56 - 32), 1, -(6 + 18))
v65.BackgroundTransparency = 1
v65.Text = "◢"
v65.TextColor3 = Color3.fromRGB(200, 200, 200)
v65.TextSize = 1911 - (1222 + 671)
v65.ZIndex = 25 - 15
v65.Parent = v57
local v74 = false
local v75
local v76
v65.InputBegan:Connect(function(v396)
    if (v396.UserInputType == Enum.UserInputType.MouseButton1) or (v396.UserInputType == Enum.UserInputType.Touch) then
        v74 = true
        v75 = v396.Position
        v76 = v57.AbsoluteSize
    end
end)
v17.InputChanged:Connect(function(v397)
    if
        v74
        and (
            (v397.UserInputType == Enum.UserInputType.MouseMovement) or (v397.UserInputType == Enum.UserInputType.Touch)
        )
    then
        local v604 = 0
        local v605
        local v606
        local v607
        while true do
            if v604 == (1 - 0) then
                v607 = math.max(1282 - (229 + 953), v76.Y + v605.Y)
                v57.Size = UDim2.new(0, v606, 1774 - (1111 + 663), v607)
                break
            end
            if v604 == (1579 - (874 + 705)) then
                v605 = v397.Position - v75
                v606 = math.max(150, v76.X + v605.X)
                v604 = 1 + 0
            end
        end
    end
end)
v17.InputEnded:Connect(function(v398)
    if (v398.UserInputType == Enum.UserInputType.MouseButton1) or (v398.UserInputType == Enum.UserInputType.Touch) then
        v74 = false
    end
end)
local v77 = Instance.new("TextLabel")
v26 = v77
v77.Size = UDim2.new(1 + 0, 0 - 0, 0, v11("Y", 36))
v77.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v77.BackgroundTransparency = 0.5 + 0
v77.Text = (v24 and "AYAN 🔥 EMOTES (R6)") or "AYAN 🔥emotes"
v77.TextColor3 = Color3.new(1, 1, 1)
v77.Font = Enum.Font.GothamBold
v77.TextScaled = true
v77.Parent = v57
v54(v77, 18 - 10)
local v87 = Instance.new("TextButton")
v27 = v87
v87.Size = UDim2.new(0.3, 0 + 0, 1541 - (718 + 823), v11("Y", 16 + 8))
v87.Position = UDim2.new(0.05, 0, 805 - (266 + 539), v11("Y", 40))
v87.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
v87.BackgroundTransparency = 0.2 - 0
v87.Text = (v24 and "Animation") or "Catalog"
v87.TextColor3 = Color3.new(1, 1, 1)
v87.Font = Enum.Font.GothamBold
v87.TextScaled = true
v87.Parent = v57
v54(v87, 10 - 6)
local v97 = Instance.new("TextButton")
v28 = v97
v97.Size = UDim2.new(0.3 - 0, 1187 - (1151 + 36), 0, v11("Y", 24 + 0))
v97.Position = UDim2.new(0.35 + 0, 0 - 0, 1832 - (1552 + 280), v11("Y", 40))
v97.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
v97.BackgroundTransparency = 0.2 - 0
v97.Text = "Saved"
v97.TextColor3 = Color3.new(1, 1, 1)
v97.Font = Enum.Font.GothamBold
v97.TextScaled = true
v97.Visible = not v24
v97.Parent = v57
v54(v97, 4)
local v108 = Instance.new("Frame")
v108.Size = UDim2.new(0 - 0, v11("X", 8 - 6), 1 - 0, -v11("Y", 95 - 25))
v108.Position = UDim2.new(819.6 - (599 + 220), -v11("X", 1 - 0), 1931 - (1813 + 118), v11("Y", 52 + 18))
v108.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
v108.BackgroundTransparency = 0.5 - 0
v108.Parent = v57
local v114 = Instance.new("Frame")
v29 = v114
v114.Size = UDim2.new(0.6 + 0, -v11("X", 27 - 17), 860 - (464 + 395), -v11("Y", 179 - 109))
v114.Position = UDim2.new(0 + 0, v11("X", 842 - (467 + 370)), 0 - 0, v11("Y", 52 + 18))
v114.BackgroundTransparency = 1
v114.Visible = true
v114.Parent = v57
local v120 = Instance.new("TextBox")
v120.Size = UDim2.new(0.6, -v11("X", 27 - 19), 0 + 0, v11("Y", 64 - 36))
v120.Position = UDim2.new(520 - (150 + 370), v11("X", 1290 - (74 + 1208)), 0 - 0, 0 - 0)
v120.PlaceholderText = "Search..."
v120.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
v120.BackgroundTransparency = 390.3 - (14 + 376)
v120.TextColor3 = Color3.new(1, 1, 1)
v120.Font = Enum.Font.Gotham
v120.TextScaled = true
v120.ClearTextOnFocus = false
v120.Text = ""
v120.Parent = v114
v54(v120, 4 + 0)
v55(v120, Color3.fromRGB(60, 60, 60), 1 + 0)
local v133 = Instance.new("TextButton")
v133.Size = UDim2.new(78.2 - (23 + 55), -v11("X", 9 - 5), 0 + 0, v11("Y", 26 + 2))
v133.Position = UDim2.new(0.6 - 0, v11("X", 4), 0, 0 + 0)
v133.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
v133.BackgroundTransparency = 1868.2 - (708 + 1160)
v133.Text = "Refresh"
v133.Font = Enum.Font.GothamBold
v133.TextScaled = true
v133.TextColor3 = Color3.new(1, 1, 1)
v133.Parent = v114
v54(v133, 1 + 3)
local v143 = Instance.new("TextButton")
v143.Size = UDim2.new(0.2, -v11("X", 1740 - (1400 + 332)), 0 - 0, v11("Y", 1936 - (242 + 1666)))
v143.Position = UDim2.new(0.8 + 0, v11("X", 4), 0, 0 + 0)
v143.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
v143.BackgroundTransparency = 1390.2 - (360 + 1030)
v143.Text = "Sort: Relevance"
v143.Font = Enum.Font.GothamBold
v143.TextScaled = true
v143.TextColor3 = Color3.new(1, 1, 1)
v143.Parent = v114
v54(v143, 1665 - (909 + 752))
local v153 = Instance.new("Frame")
v30 = v153
v153.Size = UDim2.new(1223.6 - (109 + 1114), -v11("X", 18 - 8), 1, -v11("Y", 70))
v153.Position = UDim2.new(0 + 0, v11("X", 247 - (6 + 236)), 0, v11("Y", 45 + 25))
v153.BackgroundTransparency = 1
v153.Visible = false
v153.Parent = v57
local v159 = Instance.new("TextBox")
v159.Size = UDim2.new(0.7 + 0, -v11("X", 16), 0 - 0, v11("Y", 48 - 20))
v159.Position = UDim2.new(1133 - (1076 + 57), v11("X", 2 + 6), 0, 0)
v159.PlaceholderText = "Search Saved..."
v159.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
v159.BackgroundTransparency = 0.3
v159.TextColor3 = Color3.new(1, 1, 1)
v159.Font = Enum.Font.Gotham
v159.TextScaled = true
v159.ClearTextOnFocus = false
v159.Text = ""
v159.Parent = v153
v54(v159, 6 - 2)
v55(v159, Color3.fromRGB(60, 60, 60), 1)
local v171 = Instance.new("TextBox")
v171.Size = UDim2.new(0.2, 0 + 0, 0, v11("Y", 7 + 21))
v171.Position = UDim2.new(0.7 - 0, -v11("X", 3 + 1), 0, 0)
v171.PlaceholderText = "Emote ID"
v171.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
v171.BackgroundTransparency = 0.3
v171.TextColor3 = Color3.new(1, 1, 1)
v171.Font = Enum.Font.Gotham
v171.TextScaled = true
v171.ClearTextOnFocus = false
v171.Text = ""
v171.Parent = v153
v54(v171, 4)
v55(v171, Color3.fromRGB(60, 60, 60), 1)
local v183 = Instance.new("TextButton")
v183.Size = UDim2.new(0.1, 0 + 0, 0, v11("Y", 3 + 25))
v183.Position = UDim2.new(722.9 - (478 + 244), 517 - (440 + 77), 0 + 0, 0 - 0)
v183.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
v183.BackgroundTransparency = 0.2
v183.Text = "+"
v183.Font = Enum.Font.GothamBold
v183.TextScaled = true
v183.TextColor3 = Color3.new(1, 1, 1)
v183.Parent = v153
v54(v183, 4)
local v193 = Instance.new("ScrollingFrame")
v193.Size = UDim2.new(1, -v11("X", 16), 1 + 0, -v11("Y", 161 - 121))
v193.Position = UDim2.new(0, v11("X", 8), 1445 - (695 + 750), v11("Y", 122 - 86))
v193.CanvasSize = UDim2.new(0 - 0, 0, 0, 0 - 0)
v193.ScrollBarThickness = 0
v193.BackgroundTransparency = 352 - (285 + 66)
v193.Parent = v153
local v200 = Instance.new("TextLabel")
v200.Size = UDim2.new(2 - 1, 1310 - (682 + 628), 0 + 0, v11("Y", 335 - (176 + 123)))
v200.Position = UDim2.new(0 + 0, 0 + 0, 0.5, -v11("Y", 287 - (239 + 30)))
v200.BackgroundTransparency = 1 + 0
v200.Text = "AYAN: Search Empty :3"
v200.TextColor3 = Color3.new(1, 1, 1)
v200.Font = Enum.Font.GothamBold
v200.TextScaled = true
v200.Visible = false
v200.Parent = v193
local v210 = Instance.new("UIGridLayout")
v210.CellSize = UDim2.new(0 - 0, v11("X", 120), 315 - (306 + 9), v11("Y", 200))
v210.CellPadding = UDim2.new(0, v11("X", 27 - 19), 0, v11("Y", 2 + 6))
v210.HorizontalAlignment = Enum.HorizontalAlignment.Center
v210.Parent = v193
local v216 = Instance.new("Frame")
v216.Size = UDim2.new(0.4 + 0, -v11("X", 10), 1 + 0, -v11("Y", 200 - 130))
v216.Position = UDim2.new(1375.6 - (1140 + 235), v11("X", 4 + 1), 0 + 0, v11("Y", 70))
v216.BackgroundTransparency = 1
v216.Parent = v57
local v221 = Instance.new("TextLabel")
v221.Size = UDim2.new(1, 0 + 0, 52 - (33 + 19), v11("Y", 11 + 17))
v221.BackgroundTransparency = 2 - 1
v221.Text = "Settings"
v221.TextColor3 = Color3.new(1, 1, 1)
v221.Font = Enum.Font.GothamBold
v221.TextScaled = true
v221.Parent = v216
local v229 = Instance.new("ScrollingFrame")
v229.Size = UDim2.new(1, -v11("X", 20), 1 + 0, -v11("Y", 729 - (586 + 103)))
v229.Position = UDim2.new(0 + 0, v11("X", 10), 0 - 0, v11("Y", 1518 - (1309 + 179)))
v229.BackgroundTransparency = 1 - 0
v229.CanvasSize = UDim2.new(0, 0, 0, 0 + 0)
v229.ScrollBarThickness = 4
v229.ScrollBarImageColor3 = Color3.fromRGB(150, 150, 150)
v229.Parent = v216
local function v237()
    v229.CanvasPosition = Vector2.new(0 - 0, v229.CanvasPosition.Y)
end
v229:GetPropertyChangedSignal("CanvasPosition"):Connect(v237)
local v238 = Instance.new("UIListLayout", v229)
v238.Padding = UDim.new(0 - 0, 617 - (295 + 314))
v238.FillDirection = Enum.FillDirection.Vertical
v238.SortOrder = Enum.SortOrder.LayoutOrder
v238:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    v229.CanvasSize = UDim2.new(0 - 0, 0, 1962 - (1300 + 662), v238.AbsoluteContentSize.Y + (31 - 21))
end)
function GetReal(v401)
    local v402 = 0
    local v403
    local v404
    while true do
        if v402 == (1755 - (1178 + 577)) then
            v403, v404 = pcall(function()
                return game:GetObjects("rbxassetid://" .. tostring(v401))
            end)
            if v403 and v404 and (#v404 > (0 + 0)) then
                local v734 = 0 - 0
                local v735
                while true do
                    if v734 == 0 then
                        v735 = v404[1]
                        if v735:IsA("Animation") and (v735.AnimationId ~= "") then
                            return tonumber(v735.AnimationId:match("%d+"))
                        elseif v735:FindFirstChildOfClass("Animation") then
                            local v929 = v735:FindFirstChildOfClass("Animation")
                            return tonumber(v929.AnimationId:match("%d+"))
                        end
                        break
                    end
                end
            end
            break
        end
    end
end
local v244
v183.MouseButton1Click:Connect(function()
    local v405 = 1405 - (851 + 554)
    local v406
    while true do
        if v405 == (0 + 0) then
            v406 = tonumber(v171.Text)
            if v406 then
                local v736 = 0 - 0
                local v737
                while true do
                    if v736 == (0 - 0) then
                        v737 = false
                        for v862, v863 in ipairs(v42) do
                            if v863.Id == v406 then
                                v737 = true
                                break
                            end
                        end
                        v736 = 303 - (115 + 187)
                    end
                    if v736 == 1 then
                        if not v737 then
                            local v905 = GetReal(v406)
                            table.insert(
                                v42,
                                {
                                    ["Id"] = v406,
                                    ["AssetId"] = v406,
                                    ["Name"] = "Custom ID: " .. v406,
                                    ["AnimationId"] = "rbxassetid://" .. tostring(v905 or v406),
                                    ["Favorite"] = false,
                                }
                            )
                            v45()
                            v244()
                        end
                        break
                    end
                end
            end
            break
        end
    end
end)
v31._sliders = {}
v31._toggles = {}
local function v247(v407, v408, v409, v410)
    v31[v407] = v410 or v408
    local v412 = Instance.new("Frame")
    v412.Size = UDim2.new(1 + 0, 0 + 0, 0, v11("Y", 65))
    v412.BackgroundTransparency = 1
    v412.Parent = v229
    local v416 = Instance.new("Frame")
    v416.Size = UDim2.new(1, 0 - 0, 1162 - (160 + 1001), 0 + 0)
    v416.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    v416.BackgroundTransparency = 0.4
    v416.Parent = v412
    v54(v416, 6)
    v55(v416, Color3.fromRGB(80, 80, 80), 1)
    local v421 = Instance.new("TextLabel")
    v421.Size = UDim2.new(897.5 - (525 + 372), -v11("X", 10), 0 - 0, v11("Y", 65 - 45))
    v421.Position = UDim2.new(142 - (96 + 46), 787 - (643 + 134), 0 + 0, 11 - 6)
    v421.BackgroundTransparency = 3 - 2
    v421.Text = string.format("%s: %.2f", v407, v31[v407])
    v421.TextColor3 = Color3.new(1, 1, 1)
    v421.Font = Enum.Font.Gotham
    v421.TextScaled = true
    v421.TextXAlignment = Enum.TextXAlignment.Left
    v421.Parent = v416
    local v433 = Instance.new("TextBox")
    v433.Size = UDim2.new(0.5 - 0, -v11("X", 20), 0, v11("Y", 20))
    v433.Position = UDim2.new(0.5, v11("X", 20 - 10), 719 - (316 + 403), v11("Y", 4 + 1))
    v433.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    v433.Text = tostring(v31[v407])
    v433.TextColor3 = Color3.new(1, 1, 1)
    v433.Font = Enum.Font.Gotham
    v433.TextScaled = true
    v433.ClearTextOnFocus = false
    v433.Parent = v416
    v54(v433, 4)
    local v443 = Instance.new("Frame")
    v443.Size = UDim2.new(1, -v11("X", 13 + 27), 0 - 0, v11("Y", 12))
    v443.Position = UDim2.new(0 - 0, v11("X", 41 - 21), 0 + 0, v11("Y", 68 - 33))
    v443.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    v443.Parent = v416
    v54(v443, 23 - 17)
    local v448 = Instance.new("Frame")
    v448.Size = UDim2.new(0, 0, 1 - 0, 0 - 0)
    v448.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    v448.Parent = v443
    v54(v448, 6 + 0)
    local v452 = Instance.new("Frame")
    v452.Size = UDim2.new(0 + 0, v11("X", 53 - 33), 0 - 0, v11("Y", 374 - (5 + 349)))
    v452.AnchorPoint = Vector2.new(0.5, 0.5 - 0)
    v452.Position = UDim2.new(0, 0, 0.5, 1271 - (266 + 1005))
    v452.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    v452.Parent = v443
    v54(v452, 34 - 24)
    v55(v452, Color3.fromRGB(0, 0, 0), 1)
    local function v458(v575)
        local v576 = 0 - 0
        local v577
        while true do
            if v576 == 1 then
                v18:Create(v452, TweenInfo.new(0.15), { ["Position"] = UDim2.new(v577, 0, 0.5, 0 - 0) }):Play()
                break
            end
            if v576 == 0 then
                v577 = math.clamp(v575, 0, 1)
                v18:Create(v448, TweenInfo.new(0.15), { ["Size"] = UDim2.new(v577, 0, 1067 - (507 + 559), 0 - 0) })
                    :Play()
                v576 = 3 - 2
            end
        end
    end
    local function v459(v578)
        v31[v407] = math.clamp(v578, v408, v409)
        v421.Text = string.format("%s: %.2f", v407, v31[v407])
        v433.Text = tostring(v31[v407])
        local v582 = (v31[v407] - v408) / (v409 - v408)
        v458(v582)
        if v46 and v46.IsPlaying then
            if v407 == "Speed" then
                v46:AdjustSpeed(v31["Speed"])
            elseif v407 == "Weight" then
                local v825 = 0
                local v826
                while true do
                    if v825 == 1 then
                        v46:AdjustWeight(v826)
                        break
                    end
                    if v825 == 0 then
                        v826 = v31["Weight"]
                        if v826 == 0 then
                            v826 = 388.001 - (212 + 176)
                        end
                        v825 = 1
                    end
                end
            elseif v407 == "Time Position" then
                if v46.Length > (905 - (250 + 655)) then
                    v46.TimePosition = math.clamp(v578, 0 - 0, 1 - 0) * v46.Length
                end
            end
        end
    end
    local v460 = false
    local function v461(v583)
        local v584 = 0
        local v585
        local v586
        local v587
        while true do
            if v584 == (1 - 0) then
                v587 = nil
                while true do
                    if v585 == 1 then
                        v459(v587)
                        break
                    end
                    if v585 == (1956 - (1869 + 87)) then
                        v586 = math.clamp((v583.Position.X - v443.AbsolutePosition.X) / v443.AbsoluteSize.X, 0, 1)
                        v587 = math.floor((v408 + ((v409 - v408) * v586)) * (346 - 246)) / (2001 - (484 + 1417))
                        v585 = 2 - 1
                    end
                end
                break
            end
            if v584 == (0 - 0) then
                v585 = 773 - (48 + 725)
                v586 = nil
                v584 = 1 - 0
            end
        end
    end
    v443.InputBegan:Connect(function(v588)
        if
            (v588.UserInputType == Enum.UserInputType.MouseButton1) or (v588.UserInputType == Enum.UserInputType.Touch)
        then
            local v617 = 0 - 0
            while true do
                if v617 == 0 then
                    v460 = true
                    v461(v588)
                    break
                end
            end
        end
    end)
    v452.InputBegan:Connect(function(v589)
        if
            (v589.UserInputType == Enum.UserInputType.MouseButton1) or (v589.UserInputType == Enum.UserInputType.Touch)
        then
            local v618 = 0 + 0
            while true do
                if v618 == 0 then
                    v460 = true
                    v461(v589)
                    break
                end
            end
        end
    end)
    v17.InputChanged:Connect(function(v590)
        if
            v460
            and (
                (v590.UserInputType == Enum.UserInputType.MouseMovement)
                or (v590.UserInputType == Enum.UserInputType.Touch)
            )
        then
            v461(v590)
        end
    end)
    v17.InputEnded:Connect(function(v591)
        if
            v460
            and (
                (v591.UserInputType == Enum.UserInputType.MouseButton1) or (
                    v591.UserInputType == Enum.UserInputType.Touch
                )
            )
        then
            v460 = false
        end
    end)
    v433.FocusLost:Connect(function(v592)
        if v592 then
            local v619 = 0 - 0
            local v620
            while true do
                if v619 == (0 + 0) then
                    v620 = tonumber(v433.Text)
                    if v620 then
                        v459(v620)
                    else
                        v433.Text = tostring(v31[v407])
                    end
                    break
                end
            end
        end
    end)
    v31._sliders[v407] = v459
    v459(v31[v407])
end
local function v248(v463)
    local v464 = 0 + 0
    local v465
    local v466
    local v467
    local v468
    while true do
        if (858 - (152 + 701)) == v464 then
            v467.Position = UDim2.new(1312 - (430 + 881), -v11("X", 27 + 43), 0.5, -v11("Y", 907 - (557 + 338)))
            v467.TextColor3 = Color3.new(1, 1, 1)
            v467.Font = Enum.Font.GothamBold
            v467.TextScaled = true
            v464 = 6
        end
        if v464 == (4 - 2) then
            v466 = Instance.new("TextLabel")
            v466.Size = UDim2.new(2 - 1, -v11("X", 891 - (499 + 302)), 1, 0)
            v466.Position = UDim2.new(866 - (39 + 827), v11("X", 27 - 17), 0, 0 - 0)
            v466.BackgroundTransparency = 3 - 2
            v464 = 3 - 0
        end
        if v464 == (1 + 0) then
            v465.BackgroundTransparency = 0.4
            v465.Parent = v229
            v54(v465, 17 - 11)
            v55(v465, Color3.fromRGB(80, 80, 80), 1)
            v464 = 2
        end
        if v464 == (9 - 3) then
            v467.Parent = v465
            v54(v467, 4)
            v468 = nil
            function v468(v709)
                local v710 = 0
                local v711
                while true do
                    if v710 == 0 then
                        v711 = 104 - (103 + 1)
                        while true do
                            if v711 == (554 - (475 + 79)) then
                                v467.Text = (v709 and "ON") or "OFF"
                                v467.BackgroundColor3 = (v709 and Color3.fromRGB(200, 200, 200))
                                    or Color3.fromRGB(60, 60, 60)
                                v711 = 1
                            end
                            if v711 == 1 then
                                v467.BackgroundTransparency = 1503.2 - (1395 + 108)
                                break
                            end
                        end
                        break
                    end
                end
            end
            v464 = 7
        end
        if v464 == (0 - 0) then
            v31[v463] = v31[v463] or false
            v465 = Instance.new("Frame")
            v465.Size = UDim2.new(1205 - (7 + 1197), 0 + 0, 0, v11("Y", 14 + 26))
            v465.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            v464 = 1
        end
        if v464 == 4 then
            v466.TextXAlignment = Enum.TextXAlignment.Left
            v466.Parent = v465
            v467 = Instance.new("TextButton")
            v467.Size = UDim2.new(0 - 0, v11("X", 60), 0, v11("Y", 24))
            v464 = 20 - 15
        end
        if v464 == (5 - 2) then
            v466.Text = v463
            v466.TextColor3 = Color3.new(1, 1, 1)
            v466.Font = Enum.Font.Gotham
            v466.TextScaled = true
            v464 = 16 - 12
        end
        if v464 == (15 - 8) then
            v467.MouseButton1Click:Connect(function()
                local v712 = 0 + 0
                local v713
                while true do
                    if v712 == (0 + 0) then
                        v713 = 0
                        while true do
                            if v713 == (0 - 0) then
                                v31[v463] = not v31[v463]
                                v468(v31[v463])
                                break
                            end
                        end
                        break
                    end
                end
            end)
            v468(v31[v463])
            v31._toggles[v463] = v468
            break
        end
    end
end
v31.EditSlider = function(v469, v470, v471)
    local v472 = 0 + 0
    local v473
    while true do
        if v472 == (0 - 0) then
            v473 = v469._sliders[v470]
            if v473 then
                v473(v471)
            end
            break
        end
    end
end
v31.EditToggle = function(v474, v475, v476)
    local v477 = 0 + 0
    local v478
    while true do
        if v477 == (0 + 0) then
            v478 = v474._toggles[v475]
            if v478 then
                local v738 = 1751 - (1414 + 337)
                local v739
                while true do
                    if v738 == (1940 - (1642 + 298)) then
                        v739 = 0 - 0
                        while true do
                            if v739 == (0 - 0) then
                                v31[v475] = v476
                                v478(v476)
                                break
                            end
                        end
                        break
                    end
                end
            end
            break
        end
    end
end
local function v251(v479, v480)
    local v481 = Instance.new("Frame")
    v481.Size = UDim2.new(1, 0, 0, v11("Y", 133 - 88))
    v481.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    v481.BackgroundTransparency = 0.4 + 0
    v481.Parent = v229
    v54(v481, 6)
    local v486 = Instance.new("TextButton")
    v486.Size = UDim2.new(973 - (357 + 615), -v11("X", 20), 1 + 0, -v11("Y", 24 - 14))
    v486.Position = UDim2.new(0, v11("X", 9 + 1), 0 - 0, v11("Y", 4 + 1))
    v486.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    v486.BackgroundTransparency = 0.2
    v486.Text = v479
    v486.TextColor3 = Color3.new(1, 1, 1)
    v486.Font = Enum.Font.GothamBold
    v486.TextScaled = true
    v486.Parent = v481
    v54(v486, 6)
    v486.MouseButton1Click:Connect(function()
        if typeof(v480) == "function" then
            v480()
        end
    end)
    return v486
end
local v252 = v251("Reset Settings", function() end)
v248("Stop Emote When Moving")
v248("Looped")
v247("Speed", 697 - (128 + 569), 5, v31["Speed"])
v247("Time Position", 1543 - (1407 + 136), 1888 - (687 + 1200), v31["Time Position"])
v247("Weight", 1710 - (556 + 1154), 1, v31["Weight"])
v247("Fade In", 0 - 0, 97 - (9 + 86), v31["Fade In"])
v247("Fade Out", 0, 423 - (275 + 146), v31["Fade Out"])
v248("Stop Other Animations On Play")
v248("High Priority")
v252.MouseButton1Click:Connect(function()
    v31:EditToggle("Stop Emote When Moving", true)
    v31:EditToggle("Stop Other Animations On Play", true)
    v31:EditToggle("High Priority", true)
    v31:EditSlider("Fade In", 0.1 + 0)
    v31:EditSlider("Fade Out", 64.1 - (29 + 35))
    v31:EditSlider("Weight", 4 - 3)
    v31:EditSlider("Speed", 2 - 1)
    v31:EditSlider("Time Position", 0 - 0)
    v31:EditToggle("Freeze On Finish", false)
    v31:EditToggle("Looped", true)
end)
local v253 = {
    { Enum.CatalogSortType.Relevance, "Relevance" },
    { Enum.CatalogSortType.PriceHighToLow, "Price High→Low" },
    { Enum.CatalogSortType.PriceLowToHigh, "Price Low→High" },
    { Enum.CatalogSortType.MostFavorited, "Most Favorited" },
    { Enum.CatalogSortType.RecentlyCreated, "Recently Created" },
    { Enum.CatalogSortType.Bestselling, "Bestselling" },
}
local v254 = 1241 - (988 + 252)
local v255 = ""
local v256 = nil
local v257 = 1 + 0
local v258 = 1
local function v259(v497)
    local v498 = 0
    local v499
    local v500
    local v501
    while true do
        local v593 = 0 + 0
        while true do
            if v593 == (1971 - (49 + 1921)) then
                if v498 == (891 - (223 + 667)) then
                    v499.SalesTypeFilter = Enum.SalesTypeFilter.All
                    v499.AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
                    v499.IncludeOffSale = true
                    v499.SortType = v253[v254][1]
                    v498 = 2 - 0
                end
                break
            end
            if v593 == (0 - 0) then
                if v498 == 0 then
                    if v24 then
                        return {
                            ["IsFinished"] = true,
                            ["GetCurrentPage"] = function()
                                return {
                                    {
                                        ["Id"] = 115314801779897 - (146 + 979),
                                        ["Name"] = "Dance If Youre The Best",
                                        ["AssetId"] = 115314801778772,
                                    },
                                }
                            end,
                            ["AdvanceToNextPageAsync"] = function() end,
                        }
                    end
                    v499 = CatalogSearchParams.new()
                    v499.SearchKeyword = v497 or ""
                    v499.CategoryFilter = Enum.CatalogCategoryFilter.None
                    v498 = 1 + 0
                end
                if v498 == (607 - (311 + 294)) then
                    v499.Limit = 10
                    v500, v501 = pcall(function()
                        return v19:SearchCatalog(v499)
                    end)
                    if not v500 then
                        return nil
                    end
                    return v501
                end
                v593 = 2 - 1
            end
        end
    end
end
local function v260(v502)
    local v503 = 0 + 0
    local v504
    local v505
    local v506
    local v507
    local v508
    local v509
    local v510
    local v511
    while true do
        if v503 == 3 then
            v507.BackgroundTransparency = 1444 - (496 + 947)
            v507.Text = v502.Name or "Unknown"
            v507.TextScaled = true
            v507.TextWrapped = true
            v507.Font = Enum.Font.GothamBold
            v507.TextColor3 = Color3.new(1, 1, 1)
            v503 = 4 + 0
        end
        if v503 == 5 then
            v509.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            v509.BackgroundTransparency = 0.2 + 0
            v509.Text = "🛒🔗"
            v509.Font = Enum.Font.GothamBold
            v509.TextScaled = true
            v509.TextColor3 = Color3.new(1, 1, 1)
            v503 = 1 + 5
        end
        if v503 == (12 - 3) then
            v511.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
            v511.BackgroundTransparency = 0.2 + 0
            v511.Text = "Save"
            v511.Font = Enum.Font.GothamBold
            v511.TextScaled = true
            v511.TextColor3 = Color3.new(1, 1, 1)
            v503 = 174 - (149 + 15)
        end
        if v503 == (970 - (890 + 70)) then
            local v668 = 117 - (39 + 78)
            while true do
                if v668 == 0 then
                    v511.Parent = v504
                    v54(v511, 486 - (14 + 468))
                    v668 = 1
                end
                if v668 == (4 - 2) then
                    return v504
                end
                if v668 == (2 - 1) then
                    v511.MouseButton1Click:Connect(function()
                        local v827 = 0 + 0
                        local v828
                        while true do
                            if v827 == (0 + 0) then
                                local v911 = 0 + 0
                                while true do
                                    if v911 == (1 + 0) then
                                        v827 = 1 + 0
                                        break
                                    end
                                    if v911 == (0 - 0) then
                                        v828 = false
                                        for v942, v943 in ipairs(v42) do
                                            if v943.Id == v502.Id then
                                                v828 = true
                                                break
                                            end
                                        end
                                        v911 = 1 + 0
                                    end
                                end
                            end
                            if (3 - 2) == v827 then
                                if not v828 then
                                    local v930 = 0
                                    local v931
                                    while true do
                                        if v930 == 0 then
                                            v931 = GetReal(v505)
                                            table.insert(
                                                v42,
                                                {
                                                    ["Id"] = v502.Id,
                                                    ["AssetId"] = v505,
                                                    ["Name"] = v502.Name or "Unknown",
                                                    ["AnimationId"] = "rbxassetid://" .. tostring(v931 or v505),
                                                    ["Favorite"] = false,
                                                }
                                            )
                                            v930 = 1
                                        end
                                        if v930 == (1 + 1) then
                                            v511.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                                            task.wait(3 - 2)
                                            v930 = 1 + 2
                                        end
                                        if v930 == (1 + 0) then
                                            v45()
                                            v511.Text = "Saved!"
                                            v930 = 4 - 2
                                        end
                                        if v930 == 3 then
                                            v511.Text = "Save"
                                            v511.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
                                            break
                                        end
                                    end
                                else
                                    local v932 = 1710 - (1596 + 114)
                                    while true do
                                        if v932 == (0 - 0) then
                                            v511.Text = "Already"
                                            task.wait(0.7)
                                            v932 = 714 - (164 + 549)
                                        end
                                        if v932 == (1439 - (1059 + 379)) then
                                            v511.Text = "Save"
                                            break
                                        end
                                    end
                                end
                                break
                            end
                        end
                    end)
                    v56(v504)
                    v668 = 2 - 0
                end
            end
        end
        if v503 == 0 then
            v504 = Instance.new("Frame")
            v504.Size = UDim2.new(0, v11("X", 120), 0 + 0, v11("Y", 180))
            v504.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            v504.BackgroundTransparency = 0.2 + 0
            v54(v504, 8)
            v55(v504, Color3.fromRGB(70, 70, 70), 2 - 1)
            v503 = 1 + 0
        end
        if v503 == (4 + 0) then
            v507.Parent = v504
            v508 = "https://www.roblox.com/catalog/" .. tonumber(v502.Id)
            v509 = Instance.new("TextButton")
            v509.Parent = v504
            v509.Size = UDim2.new(0 - 0, v11("X", 36), 720 - (254 + 466), v11("Y", 36))
            v509.Position = UDim2.new(1, -v11("X", 42), 560 - (544 + 16), v11("Y", 15 - 10))
            v503 = 633 - (294 + 334)
        end
        if v503 == (261 - (236 + 17)) then
            v510.Parent = v504
            v54(v510, 2 + 2)
            v510.MouseButton1Click:Connect(function()
                v47(v505)
            end)
            v511 = Instance.new("TextButton")
            v511.Size = UDim2.new(0.45 + 0, -v11("X", 5), 0 - 0, v11("Y", 113 - 89))
            v511.Position = UDim2.new(0.55 + 0, 0, 1 + 0, -v11("Y", 823 - (413 + 381)))
            v503 = 1 + 8
        end
        if v503 == 1 then
            v505 = v502.AssetId or v502.Id
            v506 = Instance.new("ImageLabel")
            v506.Size = UDim2.new(1, -v11("X", 21 - 11), 0 - 0, v11("Y", 90))
            v506.Position = UDim2.new(1970 - (582 + 1388), v11("X", 8 - 3), 0 + 0, v11("Y", 5))
            v506.BackgroundTransparency = 365 - (326 + 38)
            v506.ScaleType = Enum.ScaleType.Fit
            v503 = 2
        end
        if v503 == (5 - 3) then
            pcall(function()
                v506.Image = "rbxthumb://type=Asset&id=" .. tonumber(v505) .. "&w=150&h=150"
            end)
            v506.Parent = v504
            v54(v506, 4)
            v507 = Instance.new("TextLabel")
            v507.Size = UDim2.new(1 - 0, -v11("X", 630 - (47 + 573)), 0 + 0, v11("Y", 28))
            v507.Position = UDim2.new(0, v11("X", 21 - 16), 0 - 0, v11("Y", 100))
            v503 = 1667 - (1269 + 395)
        end
        if v503 == (498 - (76 + 416)) then
            v509.AutoButtonColor = false
            v54(v509, 6)
            v509.MouseButton1Click:Connect(function()
                local v715 = 443 - (319 + 124)
                while true do
                    if (4 - 2) == v715 then
                        v509.Text = "🛒🔗"
                        v509.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                        break
                    end
                    if v715 == (0 - 0) then
                        setclipboard(v508)
                        v509.Text = "✅"
                        v715 = 1
                    end
                    if v715 == (459 - (337 + 121)) then
                        v509.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
                        task.wait(0.7 - 0)
                        v715 = 2
                    end
                end
            end)
            v510 = Instance.new("TextButton")
            v510.Size = UDim2.new(0.45, -v11("X", 5), 0, v11("Y", 1935 - (1261 + 650)))
            v510.Position = UDim2.new(0 + 0, v11("X", 7 - 2), 1818 - (772 + 1045), -v11("Y", 5 + 24))
            v503 = 151 - (102 + 42)
        end
        if v503 == (1851 - (1524 + 320)) then
            v510.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
            v510.BackgroundTransparency = 0.2 - 0
            v510.Text = "Play"
            v510.Font = Enum.Font.GothamBold
            v510.TextScaled = true
            v510.TextColor3 = Color3.new(1, 1, 1)
            v503 = 8
        end
    end
end
local v261 = Instance.new("ScrollingFrame")
v261.Size = UDim2.new(4 - 3, -v11("X", 16), 1, -v11("Y", 81 + 19))
v261.Position = UDim2.new(0, v11("X", 8 + 0), 1604 - (240 + 1364), v11("Y", 1118 - (1050 + 32)))
v261.CanvasSize = UDim2.new(0 - 0, 0 + 0, 0, 1055 - (331 + 724))
v261.ScrollBarThickness = 1 + 5
v261.ScrollBarImageColor3 = Color3.fromRGB(150, 150, 150)
v261.BackgroundTransparency = 1 - 0
v261.Parent = v114
local v269 = Instance.new("UIGridLayout", v261)
v269.CellSize = UDim2.new(818 - (667 + 151), v11("X", 1617 - (1410 + 87)), 0, v11("Y", 2077 - (1504 + 393)))
v269.CellPadding = UDim2.new(0 - 0, v11("X", 8), 0 - 0, v11("Y", 804 - (461 + 335)))
local v272 = Instance.new("TextLabel", v261)
v272.Size = UDim2.new(1 + 0, 0, 1761 - (1730 + 31), v11("Y", 36))
v272.Position = UDim2.new(1667 - (728 + 939), 0 - 0, 0.5 - 0, -v11("Y", 18))
v272.BackgroundTransparency = 1
v272.Text = "AYAN: Search Empty :3"
v272.TextColor3 = Color3.new(1, 1, 1)
v272.Font = Enum.Font.GothamBold
v272.TextScaled = true
v272.Visible = false
local v281 = Instance.new("TextButton", v114)
v281.Size = UDim2.new(1068.4 - (138 + 930), -v11("X", 6), 0 + 0, v11("Y", 26 + 6))
v281.Position = UDim2.new(0, v11("X", 4), 1 + 0, -v11("Y", 36))
v281.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
v281.BackgroundTransparency = 0.2
v281.Text = "< Prev"
v281.Font = Enum.Font.GothamBold
v281.TextScaled = true
v281.TextColor3 = Color3.new(1, 1, 1)
v54(v281, 6)
local v290 = Instance.new("TextButton", v114)
v290.Size = UDim2.new(0.4, -v11("X", 6), 0, v11("Y", 1 + 31))
v290.Position = UDim2.new(0.6, v11("X", 2), 1, -v11("Y", 103 - 67))
v290.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
v290.BackgroundTransparency = 0.2
v290.Text = "Next >"
v290.Font = Enum.Font.GothamBold
v290.TextScaled = true
v290.TextColor3 = Color3.new(1, 1, 1)
v54(v290, 6)
local v299 = Instance.new("TextBox", v114)
v299.Size = UDim2.new(1419.2 - (374 + 1045), 0 + 0, 0 - 0, v11("Y", 32))
v299.Position = UDim2.new(638.4 - (448 + 190), v11("X", 2), 1 + 0, -v11("Y", 36))
v299.BackgroundTransparency = 1 + 0
v299.Font = Enum.Font.Gotham
v299.TextScaled = true
v299.TextColor3 = Color3.new(1, 1, 1)
v299.Text = "1 / Enter page"
local v307 = Instance.new("TextLabel", v114)
v307.Size = UDim2.new(0.3, 0 - 0, 0, v11("Y", 74 - 50))
v307.Position = UDim2.new(0.35, 1494 - (1307 + 187), 3 - 2, -v11("Y", 158 - 90))
v307.BackgroundTransparency = 2 - 1
v307.TextColor3 = Color3.fromRGB(200, 200, 200)
v307.Font = Enum.Font.Gotham
v307.TextScaled = true
v307.Text = ""
v307.Visible = false
local function v316()
    local v512 = 564 - (510 + 54)
    while true do
        if v512 == 0 then
            v281.Visible = v257 > (1 - 0)
            if v256 and (typeof(v256.IsFinished) == "boolean") then
                v290.Visible = not v256.IsFinished
            else
                v290.Visible = true
            end
            break
        end
    end
end
local v317 = 0
local function v318(v513)
    local v514 = 0
    local v515
    local v516
    local v517
    local v518
    while true do
        if 0 == v514 then
            v317 = v317 + (37 - (13 + 23))
            v515 = v317
            v514 = 1
        end
        if v514 == (1 - 0) then
            v299.Text = "Loading..."
            for v716, v717 in ipairs(v261:GetChildren()) do
                if v717:IsA("Frame") then
                    v717:Destroy()
                end
            end
            v514 = 2 - 0
        end
        if v514 == 4 then
            if v516 and (#v516 > (0 - 0)) then
                local v742 = 1088 - (830 + 258)
                local v743
                local v744
                local v745
                while true do
                    if v742 == (0 - 0) then
                        v743 = 0 + 0
                        v744 = nil
                        v742 = 1 + 0
                    end
                    if v742 == (1442 - (860 + 581)) then
                        v745 = nil
                        while true do
                            if v743 == (0 - 0) then
                                v272.Visible = false
                                v744 = v258
                                v743 = 1 + 0
                            end
                            if v743 == 1 then
                                v745 = 241 - (237 + 4)
                                for v933, v934 in ipairs(v516) do
                                    if (v258 ~= v744) or (v515 ~= v317) then
                                        break
                                    end
                                    v260(v934).Parent = v261
                                    v745 = v745 + (2 - 1)
                                    if (v745 % (4 - 2)) == 0 then
                                        v16.RenderStepped:Wait()
                                    end
                                end
                                break
                            end
                        end
                        break
                    end
                end
            else
                v272.Visible = true
            end
            if v515 == v317 then
                local v747 = 0 - 0
                local v748
                while true do
                    if v747 == 0 then
                        v748 = 0 + 0
                        while true do
                            if 1 == v748 then
                                v316()
                                break
                            end
                            if v748 == (0 + 0) then
                                v261.CanvasSize =
                                    UDim2.new(0 - 0, 0 + 0, 0 + 0, v269.AbsoluteContentSize.Y + (1434 - (85 + 1341)))
                                v299.Text = tostring(v257) .. " / Enter page"
                                v748 = 1 - 0
                            end
                        end
                        break
                    end
                end
            end
            break
        end
        if v514 == (5 - 3) then
            local v699 = 372 - (45 + 327)
            while true do
                if (0 - 0) == v699 then
                    v516 = nil
                    v517, v518 = pcall(function()
                        return v513:GetCurrentPage()
                    end)
                    v699 = 503 - (444 + 58)
                end
                if v699 == (1 + 0) then
                    v514 = 1 + 2
                    break
                end
            end
        end
        if (2 + 1) == v514 then
            if v517 then
                v516 = v518
            else
                v299.Text = "ERROR"
                return
            end
            if v515 ~= v317 then
                return
            end
            v514 = 11 - 7
        end
    end
end
local function v319(v519)
    local v520 = 1732 - (64 + 1668)
    local v521
    while true do
        if v520 == 1 then
            local v700 = 1973 - (1227 + 746)
            while true do
                if v700 == (0 - 0) then
                    for v833 = 3 - 1, v519 do
                        if v521.IsFinished then
                            break
                        end
                        local v834, v835 = pcall(function()
                            v521:AdvanceToNextPageAsync()
                        end)
                        if v834 then
                        else
                            break
                        end
                    end
                    return v521
                end
            end
        end
        if v520 == (494 - (415 + 79)) then
            v521 = v259(v255)
            if not v521 then
                return nil
            end
            v520 = 1 + 0
        end
    end
end
local function v320(v522)
    local v523 = 0
    while true do
        if v523 == (493 - (142 + 349)) then
            if v256 then
                v318(v256)
            end
            break
        end
        if v523 == 0 then
            v255 = v522 or ""
            v257 = 1
            v523 = 1 + 0
        end
        if v523 == 1 then
            v299.Text = "Loading..."
            v256 = v259(v255)
            v523 = 2 - 0
        end
    end
end
v133.MouseButton1Click:Connect(function()
    v320(v120.Text)
end)
v120.FocusLost:Connect(function(v524)
    if v524 then
        v320(v120.Text)
    end
end)
v143.MouseButton1Click:Connect(function()
    v254 = (v254 % #v253) + 1
    v143.Text = "Sort: " .. v253[v254][2]
    v320(v255)
end)
local function v321()
    local v526 = 0 + 0
    local v527
    local v528
    while true do
        if (0 + 0) == v526 then
            if not v256 or v256.IsFinished then
                return
            end
            v527, v528 = pcall(function()
                v256:AdvanceToNextPageAsync()
            end)
            v526 = 2 - 1
        end
        if v526 == (1865 - (1710 + 154)) then
            if v527 then
                local v750 = 318 - (200 + 118)
                while true do
                    if v750 == 0 then
                        v257 += (1 + 0)
                        v318(v256)
                        break
                    end
                end
            else
                local v751 = 0 - 0
                local v752
                local v753
                local v754
                while true do
                    if v751 == (0 - 0) then
                        v752 = 0 + 0
                        v753 = nil
                        v751 = 1 + 0
                    end
                    if v751 == (1 + 0) then
                        v754 = nil
                        while true do
                            if v752 == (1 + 0) then
                                if v754 then
                                    local v939 = 0 - 0
                                    while true do
                                        if v939 == (1250 - (363 + 887)) then
                                            v256 = v754
                                            v257 = math.min(v753, v257 + (1 - 0))
                                            v939 = 4 - 3
                                        end
                                        if (1 + 0) == v939 then
                                            v318(v256)
                                            break
                                        end
                                    end
                                end
                                break
                            end
                            if v752 == 0 then
                                v753 = v257 + (2 - 1)
                                v754 = v319(v753)
                                v752 = 1 + 0
                            end
                        end
                        break
                    end
                end
            end
            break
        end
    end
end
local function v322()
    local v529 = 1664 - (674 + 990)
    local v530
    local v531
    local v532
    while true do
        if v529 == 1 then
            v532 = nil
            while true do
                if v530 == (1 + 0) then
                    if v531 then
                        local v851 = 0 + 0
                        local v852
                        while true do
                            if v851 == (0 - 0) then
                                v852 = 0
                                while true do
                                    if v852 == (1055 - (507 + 548)) then
                                        v257 = math.max(1, v257 - (838 - (289 + 548)))
                                        v318(v256)
                                        break
                                    end
                                end
                                break
                            end
                        end
                    else
                        local v853 = 1818 - (821 + 997)
                        local v854
                        local v855
                        local v856
                        while true do
                            if v853 == 0 then
                                v854 = 0
                                v855 = nil
                                v853 = 256 - (195 + 60)
                            end
                            if v853 == (1 + 0) then
                                v856 = nil
                                while true do
                                    if (1502 - (251 + 1250)) == v854 then
                                        if v856 then
                                            local v952 = 0
                                            while true do
                                                if (2 - 1) == v952 then
                                                    v318(v256)
                                                    break
                                                end
                                                if v952 == 0 then
                                                    v256 = v856
                                                    v257 = v855
                                                    v952 = 1 + 0
                                                end
                                            end
                                        end
                                        break
                                    end
                                    if v854 == 0 then
                                        v855 = math.max(1033 - (809 + 223), v257 - 1)
                                        v856 = v319(v855)
                                        v854 = 1
                                    end
                                end
                                break
                            end
                        end
                    end
                    break
                end
                if v530 == (0 - 0) then
                    if not v256 or (v257 <= (2 - 1)) then
                        return
                    end
                    v531, v532 = pcall(function()
                        v256:AdvanceToPreviousPageAsync()
                    end)
                    v530 = 3 - 2
                end
            end
            break
        end
        if v529 == (0 + 0) then
            v530 = 0 + 0
            v531 = nil
            v529 = 1
        end
    end
end
v290.MouseButton1Click:Connect(v321)
v281.MouseButton1Click:Connect(v322)
v17.InputBegan:Connect(function(v533, v534)
    local v535 = 617 - (14 + 603)
    while true do
        if v535 == 0 then
            if v534 then
                return
            end
            if (v533.UserInputType == Enum.UserInputType.Keyboard) and (v533.KeyCode == Enum.KeyCode.Right) then
                v321()
            elseif v533.KeyCode == Enum.KeyCode.Left then
                v322()
            end
            break
        end
    end
end)
v299.FocusLost:Connect(function(v536)
    local v537 = 129 - (118 + 11)
    local v538
    local v539
    local v540
    local v541
    local v542
    while true do
        if 3 == v537 then
            v256 = v542
            v257 = math.max(1, v540)
            v318(v256)
            break
        end
        if v537 == 0 then
            if not v536 then
                return
            end
            v538 = v299.Text:gsub("%s+", "")
            v539 = tonumber(v538:match("%d+"))
            v537 = 1
        end
        if v537 == 1 then
            if not v539 or (v539 < (1 + 0)) then
                local v755 = 0 + 0
                while true do
                    local v790 = 0 - 0
                    while true do
                        if v790 == (950 - (551 + 398)) then
                            if v755 == 1 then
                                task.delay(2, function()
                                    if v307 then
                                        v307.Visible = false
                                    end
                                end)
                                v299.Text = "Page " .. tostring(v257)
                                v755 = 2 + 0
                            end
                            break
                        end
                        if v790 == (0 + 0) then
                            if v755 == 2 then
                                return
                            end
                            if v755 == (0 + 0) then
                                v307.Text = "Invalid page number"
                                v307.Visible = true
                                v755 = 1
                            end
                            v790 = 1
                        end
                    end
                end
            end
            v540 = math.floor(v539)
            if v540 == v257 then
                local v756 = 0 - 0
                while true do
                    if v756 == 0 then
                        v299.Text = "Page " .. tostring(v257)
                        return
                    end
                end
            end
            v537 = 2
        end
        if v537 == 2 then
            v299.Text = "Loading..."
            v541, v542 = pcall(function()
                return v319(v540)
            end)
            if not v541 or not v542 then
                local v757 = 0 - 0
                while true do
                    if (1 + 0) == v757 then
                        task.delay(7 - 5, function()
                            if v307 then
                                v307.Visible = false
                            end
                        end)
                        v299.Text = "Page " .. tostring(v257)
                        v757 = 1 + 1
                    end
                    if v757 == 0 then
                        v307.Text = "Unable to fetch page"
                        v307.Visible = true
                        v757 = 90 - (40 + 49)
                    end
                    if v757 == (7 - 5) then
                        return
                    end
                end
            end
            v537 = 493 - (99 + 391)
        end
    end
end)
local function v323(v543)
    local v544 = 0
    local v545
    local v546
    local v547
    local v548
    local v549
    local v550
    local v551
    while true do
        local v594 = 0 + 0
        while true do
            if v594 == 1 then
                if v544 == (8 - 6) then
                    v547 = Instance.new("TextLabel")
                    v547.Size = UDim2.new(2 - 1, -v11("X", 10 + 0), 0, v11("Y", 73 - 45))
                    v547.Position = UDim2.new(1604 - (1032 + 572), v11("X", 5), 0, v11("Y", 100))
                    v547.BackgroundTransparency = 1
                    v547.Text = v543.Name or "Unknown"
                    v547.TextScaled = true
                    v547.TextWrapped = true
                    v544 = 420 - (203 + 214)
                end
                if v544 == 9 then
                    local v797 = 1817 - (568 + 1249)
                    while true do
                        if v797 == (1 + 0) then
                            v551.TextColor3 = Color3.new(1, 1, 1)
                            v551.BackgroundTransparency = 1
                            v797 = 5 - 3
                        end
                        if v797 == 3 then
                            v549.MouseButton1Click:Connect(function()
                                for v925, v926 in ipairs(v42) do
                                    if v926.Id == v543.Id then
                                        table.remove(v42, v925)
                                        v45()
                                        v244()
                                        break
                                    end
                                end
                            end)
                            v544 = 14 - 4
                            break
                        end
                        if (410 - (269 + 141)) == v797 then
                            v551.Font = Enum.Font.GothamBold
                            v551.TextScaled = true
                            v797 = 2 - 1
                        end
                        if v797 == 2 then
                            v551.Parent = v545
                            v551.MouseButton1Click:Connect(function()
                                local v912 = 0
                                local v913
                                while true do
                                    if v912 == (1981 - (362 + 1619)) then
                                        v913 = 1625 - (950 + 675)
                                        while true do
                                            if (0 + 0) == v913 then
                                                v543.Favorite = not v543.Favorite
                                                v551.Text = (v543.Favorite and "★") or "☆"
                                                v913 = 1180 - (216 + 963)
                                            end
                                            if (1288 - (485 + 802)) == v913 then
                                                v45()
                                                v244()
                                                break
                                            end
                                        end
                                        break
                                    end
                                end
                            end)
                            v797 = 3
                        end
                    end
                end
                if (565 - (432 + 127)) == v544 then
                    local v798 = 1073 - (1065 + 8)
                    while true do
                        if (1 + 0) == v798 then
                            v549.TextColor3 = Color3.new(1, 1, 1)
                            v549.Parent = v545
                            v798 = 1603 - (635 + 966)
                        end
                        if v798 == 3 then
                            v550.Size = UDim2.new(0 + 0, v11("X", 40), 0, v11("Y", 66 - (5 + 37)))
                            v544 = 17 - 10
                            break
                        end
                        if v798 == (1 + 1) then
                            v54(v549, 4)
                            v550 = Instance.new("TextButton")
                            v798 = 4 - 1
                        end
                        if 0 == v798 then
                            v549.Font = Enum.Font.GothamBold
                            v549.TextScaled = true
                            v798 = 1
                        end
                    end
                end
                if v544 == (2 + 2) then
                    v548.BackgroundTransparency = 0.2
                    v548.Text = "Play"
                    v548.Font = Enum.Font.GothamBold
                    v548.TextScaled = true
                    v548.TextColor3 = Color3.new(1, 1, 1)
                    v548.Parent = v545
                    v54(v548, 15 - 11)
                    v544 = 9 - 4
                end
                v594 = 2
            end
            if v594 == 0 then
                if v544 == (0 - 0) then
                    v545 = Instance.new("Frame")
                    v545.Size = UDim2.new(0 + 0, v11("X", 120), 529 - (318 + 211), v11("Y", 984 - 784))
                    v545.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                    v545.BackgroundTransparency = 846.2 - (518 + 328)
                    v54(v545, 18 - 10)
                    v55(v545, Color3.fromRGB(70, 70, 70), 2 - 1)
                    v546 = Instance.new("ImageLabel")
                    v544 = 2 - 1
                end
                if v544 == (26 - 16) then
                    v56(v545)
                    return v545
                end
                if v544 == 7 then
                    local v809 = 0
                    while true do
                        if v809 == (2 + 0) then
                            v550.Font = Enum.Font.GothamBold
                            v550.TextScaled = true
                            v809 = 3
                        end
                        if v809 == (1 + 0) then
                            v550.BackgroundTransparency = 0.2
                            v550.Text = "Copy AnimId"
                            v809 = 3 - 1
                        end
                        if v809 == (2 + 1) then
                            v550.TextColor3 = Color3.new(1, 1, 1)
                            v544 = 8
                            break
                        end
                        if (0 - 0) == v809 then
                            v550.Position = UDim2.new(0.5, -v11("X", 7 + 13), 0, v11("Y", 5))
                            v550.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                            v809 = 3 - 2
                        end
                    end
                end
                if v544 == 3 then
                    local v810 = 0 - 0
                    while true do
                        if v810 == (1 - 0) then
                            v547.Parent = v545
                            v548 = Instance.new("TextButton")
                            v810 = 4 - 2
                        end
                        if v810 == (1 + 1) then
                            v548.Size = UDim2.new(0.45, -v11("X", 2 + 3), 0 - 0, v11("Y", 24))
                            v548.Position = UDim2.new(0, v11("X", 5 + 0), 1, -v11("Y", 29))
                            v810 = 3
                        end
                        if v810 == (613 - (520 + 93)) then
                            v547.Font = Enum.Font.GothamBold
                            v547.TextColor3 = Color3.new(1, 1, 1)
                            v810 = 1
                        end
                        if v810 == 3 then
                            v548.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                            v544 = 11 - 7
                            break
                        end
                    end
                end
                v594 = 1762 - (440 + 1321)
            end
            if v594 == (1831 - (1059 + 770)) then
                if v544 == (4 - 3) then
                    local v811 = 545 - (424 + 121)
                    while true do
                        if v811 == (1 + 1) then
                            v546.Image = "rbxthumb://type=Asset&id=11768914234&w=150&h=150"
                            v546.Parent = v545
                            v811 = 1350 - (641 + 706)
                        end
                        if v811 == (1 + 0) then
                            v546.BackgroundTransparency = 1
                            v546.ScaleType = Enum.ScaleType.Fit
                            v811 = 2
                        end
                        if (443 - (249 + 191)) == v811 then
                            v54(v546, 17 - 13)
                            v544 = 2
                            break
                        end
                        if (0 + 0) == v811 then
                            v546.Size = UDim2.new(3 - 2, -v11("X", 437 - (183 + 244)), 0 + 0, v11("Y", 90))
                            v546.Position = UDim2.new(730 - (434 + 296), v11("X", 5), 0, v11("Y", 15 - 10))
                            v811 = 513 - (169 + 343)
                        end
                    end
                end
                if v544 == 5 then
                    v548.MouseButton1Click:Connect(function()
                        v47(v543.Id)
                    end)
                    v549 = Instance.new("TextButton")
                    v549.Size = UDim2.new(0.45 + 0, -v11("X", 5), 0, v11("Y", 24))
                    v549.Position = UDim2.new(0.55 - 0, 0, 2 - 1, -v11("Y", 24 + 5))
                    v549.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
                    v549.BackgroundTransparency = 0.2 + 0
                    v549.Text = "Remove"
                    v544 = 3 + 3
                end
                if v544 == (9 - 1) then
                    v550.Parent = v545
                    v54(v550, 487 - (397 + 86))
                    v550.MouseButton1Click:Connect(function()
                        local v836 = 0
                        local v837
                        while true do
                            if v836 == (876 - (423 + 453)) then
                                v837 = 0 + 0
                                while true do
                                    if v837 == (0 + 0) then
                                        if setclipboard then
                                            setclipboard(v543.AnimationId:gsub("rbxassetid://", ""))
                                        end
                                        v550.Text = "Copied!"
                                        v837 = 1
                                    end
                                    if v837 == (1 + 0) then
                                        task.wait(0.7 + 0)
                                        v550.Text = "Copy AnimId"
                                        break
                                    end
                                end
                                break
                            end
                        end
                    end)
                    v551 = Instance.new("TextButton")
                    v551.Size = UDim2.new(0 + 0, v11("X", 1214 - (50 + 1140)), 0 + 0, v11("Y", 15 + 9))
                    v551.Position = UDim2.new(1, -v11("X", 2 + 28), 0, v11("Y", 7 - 2))
                    v551.Text = (v543.Favorite and "★") or "☆"
                    v544 = 9
                end
                break
            end
        end
    end
end
local v324 = 0 + 0
function v244()
    local v552 = 0
    local v553
    local v554
    local v555
    while true do
        if v552 == (600 - (157 + 439)) then
            if v553 == v324 then
                v193.CanvasSize = UDim2.new(0 - 0, 0 - 0, 0 - 0, v210.AbsoluteContentSize.Y + 8)
            end
            break
        end
        if v552 == (919 - (782 + 136)) then
            for v718, v719 in ipairs(v193:GetChildren()) do
                if v719:IsA("Frame") then
                    v719:Destroy()
                end
            end
            v554 = (v159.Text or ""):lower()
            v552 = 857 - (112 + 743)
        end
        if v552 == (1171 - (1026 + 145)) then
            v324 = v324 + 1 + 0
            v553 = v324
            v552 = 719 - (493 + 225)
        end
        if v552 == (11 - 8) then
            table.sort(v555, function(v720, v721)
                if v720.Favorite ~= v721.Favorite then
                    return v720.Favorite
                else
                    return false
                end
            end)
            if #v555 > (0 + 0) then
                local v759 = 0
                local v760
                local v761
                local v762
                while true do
                    if 0 == v759 then
                        v760 = 0
                        v761 = nil
                        v759 = 2 - 1
                    end
                    if v759 == (1 + 0) then
                        v762 = nil
                        while true do
                            if v760 == (0 - 0) then
                                v200.Visible = false
                                v761 = v258
                                v760 = 1
                            end
                            if v760 == (1 + 0) then
                                v762 = 0 - 0
                                for v936, v937 in ipairs(v555) do
                                    if (v258 ~= v761) or (v553 ~= v324) then
                                        break
                                    end
                                    v323(v937).Parent = v193
                                    v762 = v762 + (1596 - (210 + 1385))
                                    if (v762 % (1714 - (1201 + 488))) == (0 + 0) then
                                        v16.RenderStepped:Wait()
                                    end
                                end
                                break
                            end
                        end
                        break
                    end
                end
            else
                v200.Visible = true
            end
            v552 = 6 - 2
        end
        if v552 == (2 - 0) then
            local v703 = 0
            while true do
                if v703 == (586 - (352 + 233)) then
                    v552 = 7 - 4
                    break
                end
                if v703 == (0 + 0) then
                    v555 = {}
                    for v838, v839 in ipairs(v42) do
                        if (v554 == "") or (v839.Name and v839.Name:lower():find(v554)) then
                            table.insert(v555, v839)
                        end
                    end
                    v703 = 2 - 1
                end
            end
        end
    end
end
v87.MouseButton1Click:Connect(function()
    local v556 = 0
    local v557
    while true do
        if v556 == (574 - (489 + 85)) then
            v557 = 1501 - (277 + 1224)
            while true do
                if v557 == (1494 - (663 + 830)) then
                    v153.Visible = false
                    v87.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                    v557 = 2
                end
                if v557 == (0 + 0) then
                    v258 += (1 + 0)
                    v114.Visible = true
                    v557 = 1 + 0
                end
                if v557 == (2 + 0) then
                    v97.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                    break
                end
            end
            break
        end
    end
end)
v159:GetPropertyChangedSignal("Text"):Connect(v244)
v97.MouseButton1Click:Connect(function()
    local v558 = 0
    while true do
        if (0 + 0) == v558 then
            v258 += (1 - 0)
            v114.Visible = false
            v558 = 1 + 0
        end
        if v558 == (1 + 1) then
            v97.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            v244()
            break
        end
        if 1 == v558 then
            v153.Visible = true
            v87.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            v558 = 7 - 5
        end
    end
end)
v320("")
local v325 = v49
local function v326()
    v325.Enabled = not v325.Enabled
end
local v327 = Instance.new("ScreenGui")
v327.Name = "OrionExeToggleButtonGui"
v327.ResetOnSpawn = false
v327.Parent = v48
v327.Enabled = true
local v332 = Instance.new("TextButton")
v332.Parent = v327
v332.Text = "🔱"
v332.Font = Enum.Font.GothamSemibold
v332.TextScaled = true
v332.Size = UDim2.new(0, 50, 0 - 0, 16 + 34)
v332.Position = UDim2.new(0, 12 + 8, 0.5, -(497 - (133 + 314)))
v332.AnchorPoint = Vector2.new(0, 0.5 + 0)
v332.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
v332.BackgroundTransparency = 0.2 - 0
v332.TextColor3 = Color3.new(1, 1, 1)
v332.Active = true
pcall(function()
    v332.Draggable = true
end)
v54(v332, 56 - 44)
v55(v332, Color3.fromRGB(100, 100, 100), 2)
local v345 = Instance.new("UIAspectRatioConstraint")
v345.Parent = v332
v345.AspectRatio = 3 - 2
v332.MouseButton1Click:Connect(v326)
v17.InputBegan:Connect(function(v561, v562)
    local v563 = 0
    while true do
        if v563 == 0 then
            if v562 then
                return
            end
            if (v561.UserInputType == Enum.UserInputType.Keyboard) and (v561.KeyCode == Enum.KeyCode.X) then
                v326()
            end
            break
        end
    end
end)
v49.Enabled = true
v244()
task.spawn(function()
    local v564 = game:GetService("RunService")
    local v565 = game.Players
    local v566 = v565.LocalPlayer
    local function v567(v595)
        local v596 = 0 - 0
        local v597
        local v598
        local v599
        local v600
        local v601
        while true do
            if v596 == (0 - 0) then
                v597 = v595:WaitForChild("HumanoidRootPart")
                v598 = {}
                v596 = 1948 - (414 + 1533)
            end
            if v596 == (2 + 0) then
                function v599(v764)
                    if v764:IsA("BasePart") and (v764 ~= v597) then
                        table.insert(v598, v764)
                    end
                end
                for v765, v766 in pairs(v595:GetDescendants()) do
                    v599(v766)
                end
                v596 = 558 - (443 + 112)
            end
            if v596 == 1 then
                v597.CanCollide = true
                v599 = nil
                v596 = 1481 - (888 + 591)
            end
            if v596 == 3 then
                v600 = v595.DescendantAdded:Connect(v599)
                v601 = nil
                v596 = 10 - 6
            end
            if v596 == 4 then
                v601 = v564.Heartbeat:Connect(function()
                    local v767 = 0 + 0
                    while true do
                        if v767 == 0 then
                            if not v595 or not v595.Parent then
                                local v914 = 0 - 0
                                local v915
                                while true do
                                    if v914 == 0 then
                                        v915 = 0 + 0
                                        while true do
                                            local v945 = 0 + 0
                                            while true do
                                                if v945 == 0 then
                                                    if v915 == (1 + 0) then
                                                        return
                                                    end
                                                    if v915 == 0 then
                                                        v601:Disconnect()
                                                        v600:Disconnect()
                                                        v915 = 1 - 0
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                            for v898 = 1 - 0, #v598 do
                                local v899 = v598[v898]
                                if v899 and v899.Parent then
                                    v899.CanCollide = false
                                end
                            end
                            break
                        end
                    end
                end)
                break
            end
        end
    end
    if v566.Character then
        v567(v566.Character)
    end
    v566.CharacterAdded:Connect(v567)
end)