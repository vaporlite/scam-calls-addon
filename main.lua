--[[

        thx to some guy on v3rmillion for the base of the script, i reworked it
        
]]

getgenv().infcash = false
getgenv().Version = "v1.0"

game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Notifications").Enabled = false

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

    local Window = Rayfield:CreateWindow({
        Name = "Vapor Artworks ".. Version,
        LoadingTitle = "Found Game...",
        LoadingSubtitle = "by majestical",
        ConfigurationSaving = {
            Enabled = false,
            FolderName = "vaporartworks",
            FileName = "vaporlitefile"
        },
            Discord = {
                Enabled = true,
                Invite = "34tJXDPzvq",
                RememberJoins = false
            },
        KeySystem = false,
        KeySettings = {
            Title = "Vapor Artworks",
            Subtitle = "Key System",
            Note = "Join the discord (discord.gg/34tJXDPzvq)",
            FileName = "vaporartworks_key",
            SaveKey = false,
            GrabKeyFromSite = true,
            Key = "https://pastebin.com/raw/kcEsdc3h" --tostring(KeyLol)
        }
    })

    Rayfield:Notify({
        Title = "Vapor Artworks",
        Content = "Vapor Artworks ".. Version .." has loaded with (0) Errors.",
        Duration = 6.5,
        Image = 4483362458,
        Actions = {
            Ignore = {
                Name = "idc",
                Callback = function()
                    print("The user tapped Okay!")
                end
            },
        },
    })

    local AutomaticsTab = Window:CreateTab("Auto", 7072716155) -- Title, Image
    local AutomaticsSection = AutomaticsTab:CreateSection("Cash & Scams")

    local infcash = AutomaticsTab:CreateToggle({
        Name = "Infinite Cash",
        CurrentValue = false,
        Flag = "infcash",
        Callback = function(Value)
            
            infcash = Value

            game:GetService("Players").LocalPlayer.Data.ScamSpeed.Value=0.1;game:GetService("Players").LocalPlayer.Data.TransferSpeed.Value=0.1;while infcash and task.wait()do if not game:GetService("Players").LocalPlayer:FindFirstChild("GeneratedNumber")then local a=game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()wait()else local b={[1]=game:GetService("Players").LocalPlayer.GeneratedNumber.Value}game:GetService("ReplicatedStorage").Events.CheckNumber:FireServer(unpack(b))end end

        end,
    })

    local AutomaticsSection2 = AutomaticsTab:CreateSection("misc")

    local disablesprint = AutomaticsTab:CreateButton({
        Name = "Disable Shift2Sprint",
        Callback = function()

            Rayfield:Notify({
                Title = "Vapor Artworks",
                Content = "ok",
                Duration = 6.5,
                Image = 4483362458,
                Actions = {
                    Ignore = {
                        Name = "alr",
                        Callback = function()
                            print("idgaf")
                        end
                    },
                },
            })

            game:GetService("Players").LocalPlayer.PlayerScripts.Sprint:Destroy()

        end,
    })

    

    local PlrTab = Window:CreateTab("Player", 7072724538) -- Title, Image
    local PlrSection = PlrTab:CreateSection("Local Player")

    local WsSlider = PlrTab:CreateSlider({
        Name = "WalkSpeed",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Walkspeed",
        CurrentValue = 16,
        Flag = "WsSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

        end,
    })

    local JsSlider = PlrTab:CreateSlider({
        Name = "JumpPower",
        Range = {0, 500},
        Increment = 1,
        Suffix = "Jumpppeed",
        CurrentValue = 7.2,
        Flag = "JpSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Value)

        end,
    })

    local fovSlider = PlrTab:CreateSlider({
        Name = "Field of View (FOV)",
        Range = {30, 120},
        Increment = 1,
        Suffix = "FOV",
        CurrentValue = 70,
        Flag = "FovSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            
            game.Workspace.Camera.FieldOfView = Value

        end,
    })

    local TrollTab = Window:CreateTab("Visuals", 7072716095)
    local TrollSection = TrollTab:CreateSection("Visuals")

    local MoneyInput = TrollTab:CreateInput({
        Name = "Set Cash Value (CLIENT)",
        PlaceholderText = "amount",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)

            if tonumber(Text) ~= nil then

                game:GetService("Players").LocalPlayer.Data.Coins.Value = tonumber(Text)

            end

        end,
    })

    local ScamsInput = TrollTab:CreateInput({
        Name = "Set Scams Value (CLIENT)",
        PlaceholderText = "amount",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)

            if tonumber(Text) ~= nil then

                game:GetService("Players").LocalPlayer.leaderstats.Scams.Value = tonumber(Text)

            end

        end,
    })
