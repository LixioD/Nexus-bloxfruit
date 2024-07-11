

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Nexus | Hub",
    SubTitle = "by Lixio",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when there's no MinimizeKeybind
})

local validWords = {"keyofferforfreelancement"}

local Tabs = {
    Key = Window:AddTab({ Title = "Key", Icon = "key" })
}

local server = "neptunescript"
local linkpay = "linkpay"

Tabs.Key:AddButton({
    Title = "Discord",
    Description = "To get a permanent key and for bug,suggestion etc",
    Callback = function()
        Window:Dialog({
            Title = "Discord",
            Content = "To get a permanent key and for bug,suggestion etc",
            Buttons = {
                {
                    Title = "discord.gg/" .. server,
                    Callback = function()
                        print("The link is confirmed.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

Tabs.Key:AddButton({
    Title = "Get Key",
    Description = "To get free key for 24h",
    Callback = function()
        Window:Dialog({
            Title = "The link",
            Content = "The link is coping in your clipboard",
            Buttons = {
                {
                    Title = "Done",
                    Callback = function()
                        print("The link is confirmed.")
                    end
                },
            }
        })
        setclipboard(linkpay)
    end
})


local Input = Tabs.Key:AddInput("Input", {
    Title = "Key systeme",
    Default = "",
    Placeholder = "Enter the key here",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        print("Input changed:", Value)
    end
})



Input:OnChanged(function()
    for _, word in ipairs(validWords) do
        if Input.Value == word then
            Fluent:Notify({
                Title = "Notification",
                Content = "You have unlock the script",
                SubContent = "made by Lixio and by love",
                Duration = 5 
            })

            local Tabs = {
                Main = Window:AddTab({ Title = "Main", Icon = "file" }),
                Teleport = Window:AddTab({ Title = "Teleport", Icon = "git-compare" }),
                Esp = Window:AddTab({ Title = "Esp", Icon = "aperture" }),
                Auto = Window:AddTab({ Title = "Auto stats", Icon = "bar-chart-3" }),
                Buy = Window:AddTab({ Title = "Buy item", Icon = "bookmark" }),
                Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
            }

            local Options = Fluent.Options

            Tabs.Main:AddButton({
                Title = "Get Chest (300k in 1h)",
                Description = "This is Get Chest",
                Callback = function()
                    Window:Dialog({
                        Title = "Hello",
                        Content = "Do you want to activate this (it's dangerous)",
                        Buttons = {
                            {
                                Title = "Confirm",
                                Callback = function()
                                    loadstring(game:HttpGet("https://pastebin.com/raw/ZiTZT8sG", true))()
                                    Fluent:Notify({
                                        Title = "Notification",
                                        Content = "You have activated get chest",
                                        SubContent = "made by Lixio",
                                        Duration = 5 
                                    })
                                    print("Confirmed the dialog.")
                                end
                            },
                            {
                                Title = "Cancel",
                                Callback = function()
                                    print("Cancelled the dialog.")
                                end
                            }
                        }
                    })
                end
            })


local Toggless = Tabs.Auto:AddToggle("MyToggles", { Title = "Melee", Default = false })

Toggless:OnChanged(function()
    if Options.MyToggles.Value == true then
        local running = true
        while running do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", SelectPoint)
            wait(1)  -- Attendre 1 seconde avant de recommencer la boucle
            if Options.MyToggles.Value == false then
                running = false
            end
        end
    end
end)

Options.MyToggles:SetValue(false)

local Togglesss = Tabs.Auto:AddToggle("MyTogglesss", { Title = "Defense", Default = false })

Togglesss:OnChanged(function()
    if Options.MyTogglesss.Value == true then
        local running = true
        while running do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", SelectPoint)
            wait(1)  -- Attendre 1 seconde avant de recommencer la boucle
            if Options.MyTogglesss.Value == false then
                running = false
            end
        end
    end
end)

Options.MyTogglesss:SetValue(false)




            local teleportLocations = {
                {Title = "Pirate Island", CFrame = CFrame.new(1041.886, 16.274, 1424.937)},
                {Title = "Marine Island", CFrame = CFrame.new(-2896.687, 41.489, 2009.275)},
                {Title = "Colosseum", CFrame = CFrame.new(-1541.088, 7.389, -2987.406)},
                {Title = "Desert", CFrame = CFrame.new(1094.321, 6.570, 4231.636)},
                {Title = "Fountain City", CFrame = CFrame.new(5529.724, 429.357, 4245.550)},
                {Title = "Jungle", CFrame = CFrame.new(-1615.188, 36.852, 150.805)},
                {Title = "Marine Fort", CFrame = CFrame.new(-4846.150, 20.652, 4393.651)},
                {Title = "Middle Town", CFrame = CFrame.new(-706.998, 7.852, 1547.522)},
                {Title = "Prison", CFrame = CFrame.new(4841.844, 5.652, 741.330)},
                {Title = "Pirate Village", CFrame = CFrame.new(-1146.429, 4.752, 3818.503)},
                {Title = "Sky 1", CFrame = CFrame.new(-4967.837, 717.672, -2623.843)},
                {Title = "Sky 2", CFrame = CFrame.new(-7876.077, 5545.582, -381.199)},
                {Title = "Snow", CFrame = CFrame.new(1100.361, 5.291, -1151.542)},
                {Title = "Under Water", CFrame = CFrame.new(61135.293, 18.472, 1597.683)},
                {Title = "Magma Village", CFrame = CFrame.new(-5248.272, 8.699, 8452.891)}
            }

            for _, location in ipairs(teleportLocations) do
                Tabs.Teleport:AddButton({
                    Title = location.Title,
                    Description = "Teleport you there",
                    Callback = function()
                        Fluent:Notify({
                            Title = "Notification",
                            Content = "You have activated the teleport",
                            SubContent = "made by Lixio",
                            Duration = 5 
                        })

                        local tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(45, Enum.EasingStyle.Linear)
                        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, tweenInfo, {CFrame = location.CFrame}):Play()
                    end
                })
            end
local Toggle = Tabs.Esp:AddToggle("ESP Players", {Title = "ESP Players", Default = false })

Toggle:OnChanged(function(Value)
    if Value == true then

        PlayerESP = Value
        Number = math.random(1, 1000000)  -- Initialiser Number avant d'utiliser UpdatePlayer

        function UpdatePlayer()
            for i, v in pairs(game:GetService("Players"):GetChildren()) do
                pcall(function()
                    if v.Character then
                        if PlayerESP then
                            if v.Character.Head and not v.Character.Head:FindFirstChild("PlayerESP" .. Number) then
                                local Bb = Instance.new("BillboardGui", v.Character.Head)
                                Bb.Name = "PlayerESP" .. Number
                                Bb.ExtentsOffset = Vector3.new(0, 1, 0)
                                Bb.Size = UDim2.new(1, 200, 1, 30)
                                Bb.Adornee = v.Character.Head
                                Bb.AlwaysOnTop = true

                                local Textlb = Instance.new("TextLabel", Bb)  -- Créer Textlb ici
                                Textlb.Font = Enum.Font.GothamBold
                                Textlb.TextSize = 14
                                Textlb.Text = v.Name .. "\n" .. math.floor((v.Character.Head.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
                                Textlb.Size = UDim2.new(1, 0, 1, 0)
                                Textlb.BackgroundTransparency = 1
                                Textlb.TextStrokeTransparency = 0.5
                                if v.Team == game:GetService("Players").LocalPlayer.Team then
                                    Textlb.TextColor3 = Color3.new(0, 1, 0)
                                else
                                    Textlb.TextColor3 = Color3.new(0, 0, 0.8)
                                end
                            else
                                v.Character.Head["PlayerESP" .. Number].TextLabel.Text = v.Name .. "\n" .. math.floor((v.Character.Head.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
                            end
                        else
                            if v.Character.Head:FindFirstChild("PlayerESP" .. Number) then
                                v.Character.Head:FindFirstChild("PlayerESP" .. Number):Destroy()
                            end
                        end
                    end
                end)
            end
        end

        while PlayerESP do
            wait()
            UpdatePlayer()
        end
    else

        PlayerESP = false
    end
end)

local ToggleBoxes = Tabs.Esp:AddToggle("ESP Chests", {Title = "ESP Chests", Default = false })
local ChestESP = false
local Number = math.random(1, 1000000)  -- Initialiser Number

ToggleBoxes:OnChanged(function(Value)
    if Value == true then

        ChestESP = Value

        function UpdateChest()
            for i, v in pairs(game.Workspace:GetChildren()) do
                pcall(function()
                    if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
                        if ChestESP then
                            if (v.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
                                if not v:FindFirstChild("ChestESP" .. Number) then
                                    local Bb = Instance.new("BillboardGui", v)
                                    Bb.Name = "ChestESP" .. Number
                                    Bb.ExtentsOffset = Vector3.new(0, 1, 0)
                                    Bb.Size = UDim2.new(1, 200, 1, 30)
                                    Bb.Adornee = v
                                    Bb.AlwaysOnTop = true
                                    
                                    local Textlb = Instance.new("TextLabel", Bb)  -- Créer Textlb ici
                                    Textlb.Font = Enum.Font.GothamBold
                                    Textlb.TextSize = 14
                                    Textlb.Size = UDim2.new(1, 0, 1, 0)
                                    Textlb.BackgroundTransparency = 1
                                    Textlb.TextStrokeTransparency = 0.5
                                    
                                    if v.Name == "Chest1" then
                                        Textlb.TextColor3 = Color3.fromRGB(174, 123, 47)
                                        Textlb.Text = "Bronze Chest" .. "\n" .. math.floor((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
                                    elseif v.Name == "Chest2" then
                                        Textlb.TextColor3 = Color3.fromRGB(255, 255, 127)
                                        Textlb.Text = "Gold Chest" .. "\n" .. math.floor((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
                                    elseif v.Name == "Chest3" then
                                        Textlb.Text = "Diamond Chest" .. "\n" .. math.floor((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
                                        Textlb.TextColor3 = Color3.fromRGB(5, 243, 255)
                                    end
                                else
                                    v["ChestESP" .. Number].TextLabel.Text = v.Name .. "\n" .. math.floor((v.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
                                end
                            end
                        else
                            if v:FindFirstChild("ChestESP" .. Number) then
                                v:FindFirstChild("ChestESP" .. Number):Destroy()
                            end
                        end
                    end
                end)
            end
        end

        while ChestESP do
            wait()
            UpdateChest()
        end

    else
        ChestESP = false
    end
end)
local ToggleDevilFruit = Tabs.Esp:AddToggle("ESP DevilFruit", {Title = "ESP DevilFruit", Default = false })

ToggleDevilFruit:OnChanged(function(Value)
    if Value == true then
        Fluent:Notify({
            Title = "ESP",
            Content = "ESP DevilFruit is now ON",
            Duration = 5
        })
        
        local Number = math.random(1, 1000000)
        local DevilESP = Value

        local function UpdateDevilFruit()
            for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                pcall(function()
                    if string.find(v.Name, "Fruit") and v:IsA("Model") and v:FindFirstChild("Handle") then
                        if DevilESP then
                            if not v.Handle:FindFirstChild("DevilESP" .. Number) then
                                local Bb = Instance.new("BillboardGui", v.Handle)
                                Bb.Name = "DevilESP" .. Number
                                Bb.ExtentsOffset = Vector3.new(0, 1, 0)
                                Bb.Size = UDim2.new(1, 200, 1, 30)
                                Bb.Adornee = v.Handle
                                Bb.AlwaysOnTop = true
                                
                                local Textlb = Instance.new("TextLabel", Bb)
                                Textlb.Font = Enum.Font.GothamBold
                                Textlb.TextSize = 14
                                Textlb.Size = UDim2.new(1, 0, 1, 0)
                                Textlb.BackgroundTransparency = 1
                                Textlb.TextStrokeTransparency = 0.5
                                Textlb.Text = v.Name .. "\n" .. math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
                                Textlb.TextColor3 = Color3.new(1, 1, 1)
                            else
                                v.Handle["DevilESP" .. Number].TextLabel.Text = v.Name .. "\n" .. math.round((v.Handle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
                            end
                        else
                            if v.Handle:FindFirstChild("DevilESP" .. Number) then
                                v.Handle:FindFirstChild("DevilESP" .. Number):Destroy()
                            end
                        end
                    end
                end)
            end
        end

        while DevilESP do
            wait()
            UpdateDevilFruit()
        end

        -- Add ESP tracers functionality here (if needed)
    else
     
        DevilESP = false

        -- Remove ESP tracers functionality here (if needed)
    end
end)
          print("The input value matches one of the valid words:", word)
            return
        end
    end
    warn("The input value does not match any valid words.")
end)

