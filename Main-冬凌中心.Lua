local ScreenGui = Instance.new("ScreenGui") 
 ScreenGui.Name = "Credits" 
 ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") 
  
 local playerGui = game.Players.LocalPlayer.PlayerGui 
  
 local health = 100 
  
 local healthGui = Instance.new("ScreenGui") 
 healthGui.Name = "HealthGui" 
 healthGui.Parent = playerGui 
  
 local healthFrame = Instance.new("Frame") 
 healthFrame.Name = "HealthFrame" 
 healthFrame.Size = UDim2.new(0, 150, 0, 20) 
 healthFrame.Position = UDim2.new(1, -170, 0, 20) 
 healthFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0) 
 healthFrame.BorderSizePixel = 0 
 healthFrame.Parent = healthGui 
 local healthBar = Instance.new("Frame") 
 healthBar.Name = "HealthBar" 
 healthBar.Size = UDim2.new(1, 0, 1, 0) 
 healthBar.BackgroundColor3 = Color3.fromRGB(255, 249, 74) 
 healthBar.BorderSizePixel = 0 
 healthBar.Parent = healthFrame 
  
 local function updateHealthGUI() 
    healthBar.Size = UDim2.new(health / 100, 0, 1, 0) 
 end 
  
 updateHealthGUI() 
  
 game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(function(newHealth) 
    health = newHealth 
    updateHealthGUI() 
 end) 
  
 local playerGui = game.Players.LocalPlayer.PlayerGui 
  
 local fpsGui = Instance.new("ScreenGui") 
 fpsGui.Name = "FpsGui" 
 fpsGui.Parent = playerGui 
  
 local fpsLabel = Instance.new("TextLabel") 
 fpsLabel.Name = "FpsLabel" 
 fpsLabel.Size = UDim2.new(0, 100, 0, 20) 
 fpsLabel.Position = UDim2.new(0, 20, 0, 20) 
 fpsLabel.BackgroundColor3 = Color3.new(0, 0, 0) 
 fpsLabel.TextColor3 = Color3.new(1, 1, 1) 
 fpsLabel.Font = Enum.Font.SourceSans 
 fpsLabel.FontSize = Enum.FontSize.Size14 
 fpsLabel.Text = "帧数: " 
 fpsLabel.Parent = fpsGui 
  
 local lastUpdate = tick() 
  
 local fps = 0 
  
 local function updateFpsCounter() 
     local deltaTime = tick() - lastUpdate 
     lastUpdate = tick() 
  
     fps = math.floor(1 / deltaTime) 
  
     fpsLabel.Text = "帧数: " .. fps 
 end 
  
 game:GetService("RunService").RenderStepped:Connect(updateFpsCounter) 
  
 local ImageLabel = Instance.new("ImageLabel") 
 ImageLabel.Name = "Image" 
 ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5) 
 ImageLabel.Position = UDim2.new(0.5, 0, 0.4, 0) 
 ImageLabel.Size = UDim2.new(0.2, 0, 0.2, 0) 
 ImageLabel.Image = "rbxassetid://18733651372" 
 ImageLabel.Parent = ScreenGui 
 local TextLabel = Instance.new("TextLabel") 
 TextLabel.Name = "Text" 
 TextLabel.AnchorPoint = Vector2.new(0.5, 0.5) 
 TextLabel.Position = UDim2.new(0.5, 0, 0.6, 0) 
 TextLabel.Size = UDim2.new(0.5, 0, 0.1, 0) 
 TextLabel.Font = Enum.Font.GothamBold 
 TextLabel.TextColor3 = Color3.new(1, 1, 1) 
 TextLabel.TextScaled = true 
 TextLabel.Text = "新 | 冬凌中心[FORMAL]" 
 TextLabel.Parent = ScreenGui 
  
 local function animateCredits() 
     local TweenService = game:GetService("TweenService") 
     local imageTween = TweenService:Create(ImageLabel, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, -0.2, 0)}) 
     local textTween = TweenService:Create(TextLabel, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, -0.1, 0)}) 
     imageTween:Play() 
     textTween:Play() 
  
     wait(10) 
  
     ImageLabel.Position = UDim2.new(0.5, 0, 0.4, 0) 
     TextLabel.Position = UDim2.new(0.5, 0, 0.6, 0) 
     ScreenGui:Destroy() 
 end 
  
 animateCredits() 
  
 local creditText = "一个很新的脚本..." 
 local creditDuration = 5 
  
 local decalIds = { 
     5479567228, 
     5479565074, 
     5479559610, 
 } 
  
 local decalId = decalIds[math.random(#decalIds)] 
 local ScreenGui = Instance.new("ScreenGui") 
 ScreenGui.Name = "NotificationCreditsGui" 
 ScreenGui.ResetOnSpawn = false 
 ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
 ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui 
  
 local Frame = Instance.new("Frame") 
 Frame.BackgroundTransparency = 1 
 Frame.BorderSizePixel = 0 
 Frame.Position = UDim2.new(1, -200, 1, -50) 
 Frame.Size = UDim2.new(0, 200, 0, 50) 
 Frame.Parent = ScreenGui 
  
 local Decal = Instance.new("Decal") 
 Decal.Texture = "rbxassetid://16060333448" .. decalId 
 Decal.Face = Enum.NormalId.Back 
 Decal.Parent = Frame 
  
 local TextLabel = Instance.new("TextLabel") 
 TextLabel.BackgroundTransparency = 1 
 TextLabel.Font = Enum.Font.SourceSans 
 TextLabel.Text = creditText 
 TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255) 
 TextLabel.TextSize = 16 
 TextLabel.Position = UDim2.new(0, 10, 0, 10) 
 TextLabel.Size = UDim2.new(1, -20, 1, -20) 
 TextLabel.Parent = Frame 
  
 local function animateNotification() 
     Frame:TweenPosition(UDim2.new(1, -200, 1, -50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true) 
     wait(creditDuration - 1) 
     Frame:TweenPosition(UDim2.new(1, 0, 1, -50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true) 
     wait(0.5) 
     ScreenGui:Destroy() 
 end 
  
 animateNotification() 
 local Notification = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua")) 
 local bindable = Instance.new("BindableFunction") 
 bindable.OnInvoke = function(button) 
 print("执行脚本")
 end 
  
 game:GetService("StarterGui"):SetCore("SendNotification",{ 
     Title = "反挂机", 
     Text = "已为你打开", 
     Icon = "rbxassetid://16060333448", 
     Duration = 60, 
     Callback = bindable, 
     Button1 = "谢谢", 
     Button2 = "null" 
 }) 

 print("冬凌中心/已开启反挂机") 
                 local vu = game:GetService("VirtualUser") 
                 game:GetService("Players").LocalPlayer.Idled:connect(function() 
                    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) 
                    wait(1) 
                    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) 
                 end) 

     local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))() 
 local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))() 
 wait(1)
     local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6073491164" 
     sound.Parent = game.Workspace 
     sound:Play()
 Notification:Notify( 
     {Title = "冬凌 | 脚本中心", Description = "作者:小凌"}, 
     {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "image"}, 
     {Image = "http://www.roblox.com/asset/?id=7733747106", ImageColor = Color3.fromRGB(255, 84, 84)} 
 )
 wait(0.6)
      local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6073491164" 
     sound.Parent = game.Workspace 
     sound:Play()
  Notification:Notify( 
     {Title = "进入主页..", Description = "JoinHome..."}, 
     {OutlineColor = Color3.fromRGB(255, 0, 0),Time = 5, Type = "image"}, 
     {Image = "http://www.roblox.com/asset/?id=7733747106", ImageColor = Color3.fromRGB(0, 0, 255)} 
 ) 
 wait(0.4)
 
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/_G.UI_Size-200----config-ui-size-loadstring-game-HttpGet-lol-/refs/heads/main/jjjjj.lua"))()
  local Window = OrionLib:MakeWindow({Name = "冬凌 | 脚本中心", HidePremium = false, SaveConfig = true, ConfigFolder = "冬凌缓存...", IntroText = "冬凌作者:Q3E4"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]
  local about = Window:MakeTab({  
      Name = "信息/介绍",  
      Icon = "rbxassetid://7743878358",  
      PremiumOnly = false  
  })  
  about:AddButton({	
Name = "打死ui[不隐藏]",	
Callback = function()	
  	OrionLib:Destroy()
     end
})<
  about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")  
  about:AddParagraph("您的注入器:"," "..identifyexecutor().."")  
  about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")  
  about:AddParagraph("正式版","Roblox进程:[0×1f30cd90]已获取状态")  
  about:AddParagraph("进程已获取你可以打开脚本","谢谢你进入冬凌中心")  
  about:AddParagraph("缝合","缝合")  
  about:AddParagraph("脚本都是从 QQ群'脚本网站'找的","全是英文看不懂的别怪我")  
 local Tab= Window:MakeTab({ 
         Name = "国内其他脚本", 
         Icon = "rbxassetid://7733779610", 
         PremiumOnly = false 
 }) 
  local Section = Tab:AddSection({  
  
          Name = "正在添加请等待..."  
  
  })  
  
   local Tab = Window:MakeTab({  
    Name = "通用/玩家",  
    Icon = "rbxassetid://7733970494",  
    PremiumOnly = false  
    })  
  
  local Section = Tab:AddSection({  
  
          Name = "有一点东西用不了"  
  
  })  
  Tab:AddSlider({  
  
          Name = "速度展示：",  
  
          Min = 16,  
  
          Max = 200,  
  
          Default = 16,  
  
          Color = Color3.fromRGB(127,251,111),  
  
          Increment = 1,  
  
          ValueName = "数值",  
  
          Callback = function(Value)  
  
                  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value  
  
          end      
  
  })  
  Tab:AddSlider({  
  
          Name = "跳跃高度",  
  
          Min = 50,  
  
          Max = 200,  
  
          Default = 50,  
  
          Color = Color3.fromRGB(127,251,111),  
  
          Increment = 1,  
  
          ValueName = "数值",  
  
          Callback = function(Value)  
  
                  game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value  
  
          end      
  
  })  
  
  Tab:AddButton({  
          Name = "控制玩家(小凌汉化)",  
          Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/XiaoLing-CODE.tk3usj449llspw1/main/%E7%8E%A9%E5%AE%B6%E6%8E%A7%E5%88%B6%20%E6%B1%89%E5%8C%96.txt"))()  
            end  
  })  
  
  Tab:AddTextbox({  
          Name = "移动速度",  
          Default = "speed",  
          TextDisappear = true,  
          Callback = function(Value)  
                  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value  
          end           
  })  
  
   Tab:AddTextbox({  
          Name = "跳跃高度",  
          Default = "Jump",  
          TextDisappear = true,  
          Callback = function(Value)  
                  game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value  
          end           
  })  
  
  Tab:AddTextbox({  
          Name = "最大血量",  
          Default = "HP",  
          TextDisappear = true,  
          Callback = function(Value)  
                  game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value  
          end           
  })  
  
  Tab:AddTextbox({  
          Name = "当前血量",  
          Default = "U.HP",  
          TextDisappear = true,  
          Callback = function(Value)  
                  game.Players.LocalPlayer.Character.Humanoid.Health = Value  
          end           
  })  
  
  Tab:AddTextbox({  
          Name = "重力设置",  
          Default = "GR",  
          TextDisappear = true,  
          Callback = function(Value)  
                  game.Workspace.Gravity = Value  
          end  
  })  
  
  Tab:AddButton({  
          Name = "回满血(假的没用)",  
          Callback = function()  
  game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth   
  end  
  })  
  
  Tab:AddButton({          
  Name = "工具包",          
  Callback = function()        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()                    
       end  
  })  
  Tab:AddButton({  
          Name = "透视",  
          Callback = function()  
       loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()  
            end      
  })  
  Tab:AddButton({  
          Name = "飞车",  
          Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()  
          end  
  })  
  Tab:AddButton({  
          Name = "甩飞",  
          Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()  
          end  
  })  
  Tab:AddButton({  
    Name = "高亮",  
    Callback = function()  
  loadstring(game:HttpGet("https://pastebin.com/raw/4LDKiJ5a"))()  
      end  
  })  
  Tab:AddButton({  
          Name = "无限跳",  
          Callback = function()  
  loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()  
      end  
  })  
  
  Tab:AddButton({  
        Name = "阿尔宙斯V3.0 UI",  
        Callback = function()  
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()  
        end  
  })  
  
  Tab:AddButton({  
    Name = "光影_2",  
    Default = false,  
    Callback = function()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()  
    end  
  })  
  
  Tab:AddButton({  
    Name = "美丽天空",  
    Callback = function()  
      -- Roblox Graphics Enhancher  
      local light = game.Lighting  
      for i, v in pairs(light:GetChildren()) do  
        v:Destroy()  
      end  
  
      local ter = workspace.Terrain  
      local color = Instance.new("ColorCorrectionEffect")  
      local bloom = Instance.new("BloomEffect")  
      local sun = Instance.new("SunRaysEffect")  
      local blur = Inst  
    end  
  })  
  
  Tab:AddButton({  
          Name = "超高画质",  
          Callback = function()  
  loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()  
  end  
  })      
  
  Tab:AddButton({  
          Name = "Acrylix（通用）",  
          Callback = function()  
  loadstring(game:HttpGet('https://raw.githubusercontent.com/3dsonsuce/acrylix/main/Acrylix'))()  
  end  
  })  
  Tab:AddButton({  
    Name = "全游戏通用范围",  
    Callback = function ()  
      local ScreenGui = Instance.new("ScreenGui")  
  local main = Instance.new("Frame")  
  local label = Instance.new("TextLabel")  
  local Hitbox =   
  Instance.new("TextButton")  
  
  ScreenGui.Parent = game.CoreGui  
  
  main.Name = "main"  
  main.Parent = ScreenGui  
  main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  
  main.Position = UDim2.new(0.40427351, 0, 0.34591195, 0)  
  main.Size = UDim2.new(0, 100, 0, 100)  
  main.Active = true  
  main.Draggable = true  
  
  label.Name = "label"  
  label.Parent = main  
  label.BackgroundColor3 = Color3.fromRGB(139,0,0)  
  label.Size = UDim2.new(0, 100, 0, 20)  
  label.Font = Enum.Font.SourceSans  
  label.Text = "Hitbox Gui"  
  label.TextColor3 = Color3.fromRGB(0, 0, 0)  
  label.TextScaled = true  
  label.TextSize = 5.000  
  label.TextWrapped = true  
  
  Hitbox.Name = "Hitbox"  
  Hitbox.Parent = main  
  Hitbox.BackgroundColor3 = Color3.fromRGB(0, 0, 255)  
  Hitbox.Position = UDim2.new(0.114285722, 0, 0.372448981, 0)  
  Hitbox.Size = UDim2.new(0, 90, 0, 40)  
  Hitbox.Font = Enum.Font.SourceSans  
  Hitbox.Text = "Hitbox"  
  Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)  
  Hitbox.TextSize = 40.000  
  Hitbox.MouseButton1Down:connect(function()  
          _G.HeadSize = 20  
  
          _G.Disabled = true  
  
  
  game:GetService('RunService').RenderStepped:connect(function()  
                  if _G.Disabled then  
                          for i,v in next, game:GetService('Players'):GetPlayers() do  
                                  if v.Name ~= game:GetService('Players').LocalPlayer.Name then  
                                          pcall(function()  
                                                  v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)  
                                                  v.Character.HumanoidRootPart.Transparency = 0.7  
                                                  v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")  
                                                  v.Character.HumanoidRootPart.Material = "Neon"  
                                                  v.Character.HumanoidRootPart.CanCollide = false  
                                          end)  
                                  end  
                          end  
                  end  
          end)  
  end)  
    end  
  })  
  
  Tab:AddButton({  
          Name = "空范围",  
          Callback = function()  
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/%E7%A9%BA%E9%80%8F%E8%A7%86.lua"))()  
  end  
  })  
  Tab:AddButton({  
    Name = "普通范围",  
    Callback = function ()  
  loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "中等范围",  
    Callback = function ()  
  loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()  
    end  
  })  
  Tab:AddButton({  
      Name="全图范围",  
      Callback=function()  
  loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()  
      end  
  })  
  Tab:AddButton({  
      Name="终极范围",  
      Callback=function()  
  loadstring(game:HttpGet("https://pastebin.com/raw/CAQ9x4A7"))()  
      end  
  })  
 Tab:AddButton({  
          Name = "墙行走",  
          Callback = function()  
  loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()  
  end  
  })  
  
  Tab:AddToggle({  
          Name = "夜视",  
          Default = false,  
          Callback = function(Value)  
                  if Value then  
                      game.Lighting.Ambient = Color3.new(1, 1, 1)  
                  else  
                      game.Lighting.Ambient = Color3.new(0, 0, 0)  
                  end  
          end  
  })  
  
  Tab:AddButton({  
          Name = "通用ESP",  
          Callback = function()  
          loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()  
          end  
  })  
  
  Tab:AddButton({  
          Name = "电脑键盘",  
          Callback = function()  
       loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()  
            end      
  })  
  
  Tab:AddToggle({  
          Name = "穿墙",  
          Default = false,  
          Callback = function(Value)  
                  if Value then  
                      Noclip = true  
                      Stepped = game.RunService.Stepped:Connect(function()  
                              if Noclip == true then  
                                      for a, b in pairs(game.Workspace:GetChildren()) do  
                          if b.Name == game.Players.LocalPlayer.Name then  
                              for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do  
                                  if v:IsA("BasePart") then  
                                      v.CanCollide = false  
                                  end  
                              end  
                          end  
                      end  
                              else  
                                      Stepped:Disconnect()  
                              end  
                      end)  
              else  
                      Noclip = false  
              end  
          end  
  })  
  
  Tab:AddButton({  
          Name = "甩飞别人",  
          Callback = function()  
       loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()  
            end      
  })  
  
  Tab:AddButton({  
          Name = "转圈fling GUI",  
          Callback = function()  
  loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()  
  end  
  })  
  
  Tab:AddButton({  
    Name = "稳定穿墙",  
    Callback = function()  
      local Workspace = game:GetService("Workspace")  
  local Players = game:GetService("Players")  
  local Clipon = true  
  
  Stepped = game:GetService("RunService").Stepped:Connect(function()  
          if not Clipon == false then  
                  for a, b in pairs(Workspace:GetChildren()) do  
          if b.Name == Players.LocalPlayer.Name then  
          for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do  
          if v:IsA("BasePart") then  
          v.CanCollide = false  
          end end end end  
          else  
                  Stepped:Disconnect()  
          end  
  end)  
    end  
  })  
  
  Tab:AddButton({  
      Name="我要紫砂",  
      Callback=function()  
          game.Players.LocalPlayer.Character.Humanoid.Health=0  
  HumanDied = true  
      end  
  })  
  
  Tab:AddButton({  
          Name = "不死但不完全不死（点紫砂去除）",  
          Callback = function()  
  HumanDied = false  
  end  
  })  
  
  Tab:AddButton({  
          Name = "跟踪玩家",  
          Callback = function()  
                loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()  
            end  
  })  
  
  Tab:AddButton({  
          Name = "伪名说话",  
          Callback = function()  
  loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()  
          end   
  })  
  
  Tab:AddButton({  
          Name = "人物无敌",  
          Callback = function()  
       loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()  
          end      
  })  
  
  Tab:AddButton({  
          Name = "无敌",  
          Callback = function()  
  local lp = game:GetService "Players".LocalPlayer  
  if lp.Character:FindFirstChild "Head" then  
      local char = lp.Character  
      char.Archivable = true  
      local new = char:Clone()  
      new.Parent = workspace  
      lp.Character = new  
      wait(2)  
      local oldhum = char:FindFirstChildWhichIsA "Humanoid"  
      local newhum = oldhum:Clone()  
      newhum.Parent = char  
      newhum.RequiresNeck = false  
      oldhum.Parent = nil  
      wait(2)  
      lp.Character = char  
      new:Destroy()  
      wait(1)  
      newhum:GetPropertyChangedSignal("Health"):Connect(  
          function()  
              if newhum.Health <= 0 then  
                  oldhum.Parent = lp.Character  
                  wait(1)  
                  oldhum:Destroy()  
              end  
          end)  
      workspace.CurrentCamera.CameraSubject = char  
      if char:FindFirstChild "Animate" then  
          char.Animate.Disabled = true  
          wait(.1)  
          char.Animate.Disabled = false  
      end  
      lp.Character:FindFirstChild "Head":Destroy()  
  end  
  end  
  })  
  
  Tab:AddButton({  
          Name = "点击传送工具",  
          Callback = function()  
  mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "小凌NB" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack  
          end  
  })  
  
  Tab:AddButton({  
          Name = "Dex",  
          Callback = function()  
  loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()  
  end  
  })  
  
 local Tab= Window:MakeTab({ 
         Name = "速度传奇", 
         Icon = "rbxassetid://7733956134", 
         PremiumOnly = false 
 }) 
 Tab:AddButton({         
 Name = "The Lgondbs-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://pastebin.com/raw/mqGPg69N"))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Legends-Of-hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/SkoterScripts/Legends-Of-Speed-Script/main/Script%20For%20Legends%20Of%20Speed.txt"))()  
      end 
 }) 
 Tab:AddButton({         
 Name = "Data-Ez-Hub",         
 Callback = function()         
           loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "NewIce-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMae17/NewIceHub/main/Brookhaven"))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Tbao-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHublegendsofspeed"))()  
      end 
 }) 
 Tab:AddButton({         
 Name = "NewIce-电脑可用",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMae17/NewIceHub/main/Brookhaven"))() 
      end 
 }) 
 local Tab= Window:MakeTab({ 
         Name = "忍者传奇", 
         Icon = "rbxassetid://7733798901", 
         PremiumOnly = false 
 }) 
 local Section = Tab:AddSection({  
  
          Name = "以下不是内置"  
  
  })  
 Tab:AddButton({         
 Name = "自动收集 气、钱、宝石有bug",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/-/main/AutoGetIDK(NinjaLegend)"))() 
      end 
 }) 
 Tab:AddButton({  
         Name = "RoLLu-Hub超强", 
         Callback = function() 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/XRoLLu/Rolly_Hub/main/open-source-trash-loader.exe.yeah"))() 
           end 
 }) 
  
 Tab:AddButton({ 
         Name = "AliCodeV4", 
         Callback = function() 
 loadstring(game:HttpGet("https://raw.githubusercontent.com/AliCode14/scripts/main/ScriptHub.lua"))() 
           end 
 }) 
 Tab:AddButton({         
 Name = "ALLHACK-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Proxima-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Space-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/spacvehubloader"))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "ExtremeAntonis-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/ExtremeAntonis/loader/main/loader.lua"))() 
      end 
 }) 
 local Section = Tab:AddSection({  
  
          Name = "内置脚本[自动系列]"  
  
  })  
  
  
 Tab:AddToggle( 
     { 
         Name = "自动挥舞", 
         Default = false, 
         Callback = function(x) 
             autoswing = x 
             if autoswing then 
                 swinging() 
             end 
         end 
     } 
 ) 
  
 Tab:AddToggle( 
     { 
         Name = "自动售卖", 
         Default = false, 
         Callback = function(x) 
             autosell = x 
             if autosell then 
                 selling() 
             end 
         end 
     } 
 ) 
  
 Tab:AddToggle( 
     { 
         Name = "存满了自动售卖", 
         Default = false, 
         Callback = function(x) 
             autosellmax = x 
             if autosellmax then 
                 maxsell() 
             end 
         end 
     } 
 ) 
  
 local Section = Tab:AddSection({ 
         Name = "自动购买功能" 
 }) 
  
 Tab:AddToggle( 
     { 
         Name = "自动购买剑", 
         Default = false, 
         Callback = function(x) 
             autobuyswords = x 
             if autobuyswords then 
                 buyswords() 
             end 
         end 
     } 
 ) 
  
 Tab:AddToggle( 
     { 
         Name = "自动购买腰带", 
         Default = false, 
         Callback = function(x) 
             autobuybelts = x 
             if autobuybelts then 
                 buybelts() 
             end 
         end 
     } 
 ) 
  
 Tab:AddToggle( 
     { 
         Name = "自动购买称号（等级）", 
         Default = false, 
         Callback = function(x) 
             autobuyranks = x 
             if autobuyranks then 
                 buyranks() 
             end 
         end 
     } 
 ) 
  
 Tab:AddToggle( 
     { 
         Name = "自动购买忍术", 
         Default = false, 
         Callback = function(x) 
             autobuyskill = x 
             if autobuyskill then 
                 buyskill() 
             end 
         end 
     } 
 ) 
  
 Tab:AddToggle( 
     { 
         Name = "自动购买（全部打开）", 
         Default = false, 
         Callback = function(x) 
             autobuyshurikens = x 
             if autobuyshurikens then 
                 buyshurikens() 
             end 
         end 
     } 
 ) 
  
 Tab:AddButton( 
     { 
         Name = "解锁所有岛", 
         Callback = function() 
             for _, v in next, game.workspace.islandUnlockParts:GetChildren() do 
                 if v then 
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame 
                     wait(.5) 
                 end 
             end 
         end 
     } 
 ) 
 local Section = Tab:AddSection({  
  
          Name = "内置脚本[/TP 各种岛屿]"  
  
  })  
 Tab:AddButton ({ 
         Name = "附魔岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(83.028564453125, 766.3915405273438, -128.62686157226562) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "星界岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.43006896972656, 2014.091064453125, 247.5571746826172) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "神秘岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162.7420654296875, 4047.7841796875, 13.378257751464844) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "太空岛", 
         Callback = function () 
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.0364227294922, 5657.091796875, 161.54000854492188) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "冻土岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.7508544921875, 9285.08984375, 158.16287231445312) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "沙暴", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.7511749267578, 17686.236328125, 147.5008087158203) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "雷暴", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.87640380859375, 24069.9296875, 158.25582885742188) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "远古炼狱岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.48052978515625, 28256.201171875, 160.25828552246094) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "午夜暗影岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.76388549804688, 33206.88671875, 136.66305541992188) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "神秘灵魂岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(157.39967346191406, 39317.4765625, 146.05630493164062) 
         end 
  
 }) 
         Tab:AddButton ({ 
         Name = "冬季奇迹岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(168.73797607421875, 46010.4609375, 158.589599609375) 
         end 
 }) 
         Tab:AddButton ({ 
         Name = "黄金大师岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(184.56202697753906, 52607.671875, 166.47279357910156) 
         end 
 }) 
         Tab:AddButton ({ 
         Name = "龙传奇岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(166.83065795898438, 59594.58984375, 150.16586303710938) 
         end 
 }) 
         Tab:AddButton ({ 
         Name = "赛博传奇岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(167.66766357421875, 66669.0703125, 142.27223205566406) 
         end 
 }) 
         Tab:AddButton ({ 
         Name = "天岚超能岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.09237670898438, 70271.0625, 157.14857482910156) 
         end 
 }) 
         Tab:AddButton ({ 
         Name = "混沌传奇岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(177.88784790039062, 74442.7578125, 143.346435546875) 
         end 
 }) 
         Tab:AddButton ({ 
         Name = "灵魂融合岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.39129638671875, 79746.890625, 163.01148986816406) 
         end 
 }) 
         Tab:AddButton ({ 
         Name = "黑暗元素岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(169.4972381591797, 83198.890625, 170.53890991210938) 
         end 
 }) 
         Tab:AddButton ({ 
         Name = "禅心岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(173.4744873046875, 87050.9765625, 141.89602661132812) 
         end 
 }) 
 Tab:AddButton ({ 
         Name = "炽热漩涡之岛", 
         Callback = function () 
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(178.33023071289062, 91245.96875, 152.53775024414062) 
         end 
 }) 
  
   local Tab= Window:MakeTab({  
          Name = "刀刃球",  
          Icon = "rbxassetid://7733675107",  
          PremiumOnly = false  
  })  
 local Section = Tab:AddSection({  
  
          Name = "以下脚本目前可用"  
  
  })  
  Tab:AddButton({  
    Name = "BDOLL-HUB",  
    Callback = function ()  
      _G.UI_Size = 200 -- config ui size  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "红圈格挡V3",  
    Callback = function ()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/RedCircleBlock"))()  
    end  
  })  
 Tab:AddButton({         
 Name = "ScouT-Hub",         
 Callback = function()         
           loadstring(game:HttpGet(("https://raw.githubusercontent.com/Kozukiremboukk/Aqui-mesml/main/blades")))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Pitbull-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/SoyAdriYT/PitbullHub/main/Scripting", true))()  
      end 
 }) 
 local Tab= Window:MakeTab({ 
         Name = "死亡球", 
         Icon = "rbxassetid://7733779668", 
         PremiumOnly = false 
 }) 
 Tab:AddButton({         
 Name = "Op脚本_已绕过反作弊",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/sirapobsriumang/Death-Bal/main/Op-Script-by-me"))()  
      end 
 }) 
 Tab:AddButton({         
 Name = "LOLking-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Death/main/Ball"))() 
      end 
 }) 
 Tab:AddButton({ 
  
         Name = "LOLking-hub卡密如果没用就删了感叹号", 
  
         Callback = function() 
  
      setclipboard("RobloxNewBestBall!!") 
  
           end 
  
 }) 
  
 local Tab= Window:MakeTab({ 
         Name = "枪球", 
         Icon = "rbxassetid://7734068495", 
         PremiumOnly = false 
 }) 
 Tab:AddButton({         
 Name = "自动打击",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Secure/Gun-Ball/main/.lua"))() 
      end 
 }) 
 local Tab= Window:MakeTab({ 
         Name = "压力", 
         Icon = "rbxassetid://7733674820", 
         PremiumOnly = false 
 }) 
  
  Tab:AddButton({          
  Name = "GOA-HUB",          
  Callback = function()          
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Nevcit/Pressure/main/GOA_HUB"))()  
       end  
  })  
  Tab:AddButton({          
  Name = "Persona_Hub",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/LordEyes2/Script/main/PersonalHub"))()  
  
       end  
  })  
  Tab:AddButton({          
  Name = "DocYongurt",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DocYogurt/Main/main/Scripts/Pressure"))()  
       end  
  }) 
 Tab:AddButton({         
 Name = "CryeepyEye-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))() 
      end 
 }) 
 Tab:AddButton({         
     Name = "BDOLL-Hub_优质By:c-a-t-s-u-s",         
     Callback = function()         
  loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/pressure_kuy.lua"))() 
    end 
 }) 
  
 Tab:AddButton({         
     Name = "Pressure???",         
     Callback = function()         
 loadstring(game:HttpGet(('https://raw.githubusercontent.com/zuohongjian/bjb/main/Pressure')))() 
    end 
 }) 
 local Tab= Window:MakeTab({ 
         Name = "Doors", 
         Icon = "rbxassetid://7734022041", 
         PremiumOnly = false 
 }) 
 Tab:AddButton({  
          Name = "Ohio doors",  
          Callback = function()  
   loadstring(game:HttpGet("https://raw.githubusercontent.com/rxn-xyz/Ohio./main/Ohio.lua",true))()  
      end  
  })  
  
 Tab:AddButton({  
    Name = "MSDOORS",  
    Callback = function ()  
      loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()  
  
    end  
  })  
 Tab:AddButton({         
 Name = "KeoneGit-hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/KeoneGithub/KeoneGithub/main/Doors",true))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Utilities-Hub",         
 Callback = function()         
           loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/UtilitiesHub/main/UtilitiesGUI'))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Folder-Hub",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/VaniaPerets/FolderGui-FolderHub/main/loader.lua", true))() 
      end 
 }) 
 Tab:AddButton({  
    Name = "微山doors1.0.4(可用)要白名单",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/weishanteam/Script/main/doors/WeiShan_Loader.lua"))()  
    end  
  })  
 Tab:AddButton({  
    Name = "DOORS 后门 ",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/Scripts/main/mspaint/backdoor.lua"))()  
    end  
  })   
 Tab:AddButton({  
    Name = "doors中转站卡密：114514xhxh",  
    Callback = function ()  
      loadstring(game:HttpGet("https://shz.al/ySeKWSdaes8TiJbZTc2XzDiS"))()  
  
    end  
  })  
  Tab:AddButton({  
    Name = "小云doors",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/EntitySpawner/main/doors(orionlib).lua"))()  
    end  
  })  
 Tab:AddButton({  
    Name = "doors最强脚本汉化",  
    Callback = function ()  
      loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()  
  
    end  
  }) 
 Tab:AddButton({         
 Name = "doors最强无汉化",         
 Callback = function()         
               loadstring(game:HttpGet('https://pastebin.com/raw/R8QMbhzv'))() 
      end 
 })   
 Tab:AddButton({  
          Name = "十字架",  
          Callback = function()  
  
  loadstring(game:HttpGet('https://pastebin.com/raw/ibbWwU6q'))()  
            end  
  })  
  Tab:AddButton({  
          Name = "能量罐",  
          Callback = function()    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()  
      end  
  })     
  
  Tab:AddButton({  
          Name = "紫色手电筒（在电梯购买东西的时候使用）",  
          Callback = function()  
  
    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()  
      end  
  })    
 Tab:AddButton({  
          Name = "吸铁石",  
          Callback = function()  
       loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()  
      end  
  })  
  Tab:AddButton({  
          Name = "剪刀",  
          Callback = function()  
  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()  
      end  
  })      
  Tab:AddButton({  
          Name = "激光枪",  
          Callback = function()  
    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()  
      end  
  })  
  Tab:AddButton({  
          Name = "夜视仪",  
          Callback = function()  
  
    _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()  
      end  
  })      
 local Tab= Window:MakeTab({ 
         Name = "伐木大亨2", 
         Icon = "rbxassetid://7733799901", 
         PremiumOnly = false 
 }) 
  
 Tab:AddButton({         
 Name = "最强Lua_WareLoader",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/frencaliber/LuaWareLoader.lw/main/luawareloader.wtf",true))() 
      end 
 }) 
 Tab:AddButton({  
        Name = "小云bark2.0",  
        Callback = function()  
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/bark2.0.lua"))()  
        end  
  })  
  
 Tab:AddButton({         
     Name = "无汉化-Burrer-Hub",         
     Callback = function()         
 loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt'))() 
    end 
 }) 
  
 Tab:AddButton({         
     Name = "汉化Butter-hub",         
     Callback = function()         
 loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt'))() 
    end 
 }) 
  
 Tab:AddButton({         
     Name = "白-伐木脚本",         
     Callback = function()         
 loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/main/%E4%BC%90%E6%9C%A8%E5%A4%A7%E4%BA%A822.lua", true))() 
    end 
 }) 
 Tab:AddButton({         
 Name = "idk😱",         
 Callback = function()         
           loadstring(game:HttpGet"https://raw.githubusercontent.com/darkxwin/darkxsourcethinkyoutousedarkx/main/darkx")() 
      end 
 }) 
  
 Tab:AddButton({         
 Name = "NOOBARMY-hub",         
 Callback = function()         
           loadstring(game:HttpGet(("https://raw.githubusercontent.com/NOOBARMYSCRIPTER/NOOBARMYSCRIPTER/main/AXE%20LOOP%20SCRIPT"), true))() 
      end 
 }) 
 local Tab= Window:MakeTab({  
          Name = "The Rake",  
          Icon = "rbxassetid://7733779610",  
          PremiumOnly = false  
  })  
  Tab:AddButton({          
  Name = "Zeerox-Hub",          
  Callback = function()                loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()  
       end  
  })  
  Tab:AddButton({          
  Name = "CE-hub",          
  Callback = function()          
            loadstring(game:HttpGet('https://raw.githubusercontent.com/scriptemt/CE-Technologies/main/script', true))()  
       end  
  })  
  Tab:AddButton({  
    Name = "The Rake小云☁",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/The%20Rake.lua"))()  
    end  
  })  
  Tab:AddButton({          
  Name = "Tiger_Admin",          
  Callback = function()          
            loadstring(game:HttpGet('https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/MAIN'))()   
       end  
  })  
  Tab:AddButton({          
  Name = "Sussy-Tech",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Sussy-Tech/Scripts/main/RakeScript.lua"))()  
       end  
  })  
  Tab:AddButton({          
  Name = "REMASTERED",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CHEATERFUN/The-Rake-REMASTERED-Script/main/Source.lua"))()  
       end  
  })  
  Tab:AddButton({          
  Name = "filesV3",          
  Callback = function()          
  
  loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c2c886534e662c614423ee5748353fe4.lua"))()  
  
       end  
  })  
  Tab:AddButton({          
  Name = "Devva...",          
  Callback = function()          
            loadstring(game:HttpGet("https://gist.githubusercontent.com/OtarDevv/49186047e758b9b263ec5a6583a99b4b/raw/d98e767de166fa6361066e9d43ec13ab05fdad89/Rake"))();  
       end  
  }) 
      local Tab = Window:MakeTab({  
          Name = "CW(战斗勇士)",  
          Icon = "rbxassetid://7733779610",  
          PremiumOnly = false  
  })  
 Tab:AddButton({  
          Name = "无名",  
          Callback = function()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()  
          end  
  })  
  Tab:AddButton({  
    Name = "Warriors-Hub",  
    Callback = function ()  
     loadstring(game:HttpGet("https://raw.githubusercontent.com/leakediz/top-g/main/combat%20warriors"))()   
    end  
  })  
  
  Tab:AddButton({  
    Name = "电脑端Combat-Hub",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "无限体力和跳跃+",  
    Callback = function ()  
      for i,v in pairs(getgc(true)) do  
     if typeof(v) == "table" and rawget(v, "getIsMaxed") then  
         v.getIsMaxed = function()  
             return false  
         end  
         v.getFlags = function()  
             return 1  
         end  
         v.addFlags = function(a,b)  
             a:setFlags(0)  
             return  
         end  
     end  
     -- "There was another script here but it caused the user to crash (lag out), so it had to be removed" -KiwisASkid --  
     if typeof(v) == "table" and rawget(v, "spawnCharacter") then  
         local oldfunc = v.spawnCharacter  
         v.SpawnCharacter = function(a)  
             for _,f in pairs(getgc(true)) do  
                 if typeof(f) == "table" and rawget(f, "getIsMaxed") then  
                     f.getIsMaxed = function()  
                         return false  
                     end  
                     f.getFlags = function()  
                         return 1  
                     end  
                     f.addFlags = function(aa,b)  
                         aa:setFlags(0)  
                         return  
                     end  
                 end  
             end  
         end  
     end  
     if typeof(v) == "table" and rawget(v, "getCanJump") then  
         v.getCanJump = function()  
             return true  
         end  
     end  
     if typeof(v) == "table" and rawget(v, "JUMP_DELAY_ADD") then  
         v.JUMP_DELAY_ADD = 0.5  
     end  
     if typeof(v) == "table" and rawget(v, "_setStamina") then  
         v._setStamina = function(a, b)  
             a._stamina = math.huge  
             a._staminaChangedSignal:Fire(99)  
         end  
     end  
  end  
  game.StarterGui:SetCore("SendNotification", {Title = "开启成功", Text = "Script loaded, "..game.Players.LocalPlayer.DisplayName..".", Duration = 4,})  
    end  
  })  
  Tab:AddButton({  
    Name = "Zab-HUB",  
    Callback = function ()  
      loadstring(game:HttpGet('https://itots.tk/zaphub/ZapHubFreeVersion'))()  
    end  
  })  
  Tab:AddButton({  
    Name = "Vcsk-HUB",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/AstralHub/main/Main.lua", true))()  
    end  
  })  
  Tab:AddButton({  
    Name = "自动盾反菜",  
    Callback = function ()  
      local lp = game.Players.LocalPlayer  
  
  local animationInfo = {}  
  
  function getInfo(id)  
    local success, info = pcall(function()  
        return game:GetService("MarketplaceService"):GetProductInfo(id)  
    end)  
    if success then  
        return info  
    end  
    return {Name=''}  
  end  
  function block(player)  
    keypress(0x46)  
    wait()  
    keyrelease(0x46)  
  end  
  
  local AnimNames = {  
    'Slash',  
    'Swing',  
    'Sword'  
  }  
  
  function playerAdded(v)  
      local function charadded(char)  
        local humanoid = char:WaitForChild("Humanoid", 5)  
        if humanoid then  
            humanoid.AnimationPlayed:Connect(function(track)  
                local info = animationInfo[track.Animation.AnimationId]  
                if not info then  
                    info = getInfo(tonumber(track.Animation.AnimationId:match("%d+")))  
                    animationInfo[track.Animation.AnimationId] = info  
                end  
  
                if (lp.Character and lp.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Head")) then  
                    local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude  
                    if mag < 15  then  
  
                        for _, animName in pairs(AnimNames) do  
                            if info.Name:match(animName) then  
                                pcall(block, v)  
                            end  
                        end  
  
                    end  
                end  
            end)  
        end  
    end  
  
    if v.Character then  
        charadded(v.Character)  
    end  
    v.CharacterAdded:Connect(charadded)  
  end  
  
  for i,v in pairs(game.Players:GetPlayers()) do  
     if v ~= lp then  
         playerAdded(v)  
     end  
  end  
  
  game.Players.PlayerAdded:Connect(playerAdded)  
    end  
  })  
  Tab:AddButton({  
    Name = "KEYYSYSYSTEM-Hub",  
    Callback = function ()  
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/funhaji/FunHubScriptLoader/main/RBL/KEYSYSTEM'),true))()  
    end  
  })  
  Tab:AddButton({  
    Name = "无敌",  
    Callback = function ()  
      local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart  
  local spawnbox = workspace.SpawnBox  
  
  HRP.CFrame = spawnbox.SpawnPart.CFrame  
    end  
  })  
  Tab:AddButton({  
    Name = "Tickware-Hub",  
    Callback = function ()  
     loadstring(game:HttpGet("https://raw.githubusercontent.com/tickwares/tickware/main/Tickware"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "SWeatDestrigon-HUB",  
    Callback = function ()  
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Tropxzz/SweatDestroyer/main/MainOperator.lua", true))()   
    end  
  })  
  Tab:AddButton({  
    Name = "Tickware-Hub",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/tickwares/tickware/main/Tickware"))()  
    end  
  })  
  
  Tab:AddButton({  
    Name = "lsaaaKK-Hub",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/IsaaaKK/cwhb/main/cw.txt"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "打死光环",  
    Callback = function ()  
     loadstring(game:HttpGet("https://projecthook.xyz/scripts/free.lua"))()   
    end  
  })  
  Tab:AddButton({  
    Name = "Nova-Hub",  
    Callback = function ()  
      loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/novahub"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "NOVA-Hub_Source2.0",  
    Callback = function () loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NOVA_HUB_SOURCE"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "Wen-NOVA1.15",  
    Callback = function ()  
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NEW_NOVA"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "Top-G_Hub",  
    Callback = function ()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/leakediz/top-g/main/combat%20warriors"))()  
    end  
  })  
  Tab:AddButton({  
    Name = "1foyt-HUB",  
    Callback = function ()  
  loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/novahub"))()  
    end  
  })  
  local Tab= Window:MakeTab({  
          Name = "BF",  
          Icon = "rbxassetid://7733779610",  
          PremiumOnly = false  
  })  
  
  Tab:AddButton({          
  Name = "Matssune-Hub",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Yatsuraa/Matsune/main/matssunehub.lua"))()   
       end  
  })  
  Tab:AddButton({          
  Name = "Spec-X",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/SpectrumX.lua"))()   
       end  
  })  
  Tab:AddButton({          
  Name = "FREE-hub",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FreeeScripts/FREEHub/main/Loader", true))()  
       end  
  })  
  Tab:AddButton({          
  Name = "BLCK-Ez",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/BLCK"))()  
       end  
  })  
  Tab:AddButton({          
  Name = "Valk_Hub",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Scriptssz/Folder_Script/main/Valk_Hub"))()   
       end  
  })  
  Tab:AddButton({          
  Name = "Mingane-Hub",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Basicallyybeta/mingane/main/MinGamingNew.lua"))()   
       end  
  })  
  Tab:AddButton({          
  Name = "Vector-Hub",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/VectorHub/main/Loader.lua"))()   
       end  
  })  
  Tab:AddButton({          
  Name = "Hajibeza???",          
  Callback = function()          
            loadstring(game:HttpGet('https://raw.githubusercontent.com/hajibeza/Module/main/Mobile_Script.lua'))()   
       end  
  })  
  Tab:AddButton({          
  Name = "Speed-Hub-X",          
  Callback = function()          
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/SpeedHubX"))()   
       end  
  })  
 local Tab= Window:MakeTab({ 
         Name = "吃掉世界", 
         Icon = "rbxassetid://7733779610", 
         PremiumOnly = false 
 }) 
 Tab:AddButton({         
 Name = "Rid20.Mk",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/Eat-the-World-script/main/Eat%20the%20world%20Script"))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Main MenuV1.2",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/R1nn1/MainMenu1/main/MainMenuV1.2"))()  
      end 
 }) 
 local Tab= Window:MakeTab({ 
         Name = "彩虹盆友", 
         Icon = "rbxassetid://7733779610", 
         PremiumOnly = false 
 }) 
 Tab:AddButton({         
 Name = "主要的/Ture2",         
 Callback = function()         
           loadstring(game:HttpGet('https://raw.githubusercontent.com/OfficialOasisScript/OasisGameScripts/main/MainScripts/RainbowFriends.lua', true))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "Ez hub",         
 Callback = function()         
   loadstring(game:HttpGet("https://pastebin.com/raw/0fRs279k"))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "CH-HUB",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/CHHub.lua"))() 
      end 
 }) 
 Tab:AddButton({         
 Name = "ZREALKING",         
 Callback = function()         
           loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Rainbow-Friends/main/Main.lua'))() 
  
      end 
 }) 
 Tab:AddButton({         
 Name = "Block-hub",         
 Callback = function()         
           loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ') 
      end 
 }) 
 Tab:AddButton({         
 Name = "Launcher.Exe",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Launcher-Exe/Launcher-Exe/main/rainbow.lua"))()
           
      end 
 })
 
  local Tab= Window:MakeTab({ 
         Name = "鱼(Fish)", 
         Icon = "rbxassetid://7733779610", 
         PremiumOnly = false 
 }) 
   local Section = Tab:AddSection({  
  
          Name = "自动摇摆1 2不能一起用"  
  
  })  
  Tab:AddButton({         
 Name = "自动摇摆 1",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitler69/InfiniteWare/refs/heads/main/Launcher",true))()
      end 
 }) 
 Tab:AddToggle({  
          Name = "自动摇摆 2",  
          Default = false,  
          Callback = function()  
          loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitler69/InfiniteWare/refs/heads/main/Launcher",true))()
          end  
  })  
  
   local Section = Tab:AddSection({  
  
          Name = "下面是脚本中心"  
  
  })  
   Tab:AddButton({         
 Name = "Speed_HUB",         
 Callback = function()         
           
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
           
      end 
 })
  Tab:AddButton({         
 Name = "noname_HUB",         
 Callback = function()         
           loadstring(game:HttpGet("https://noname-hub.fun/loader.lua"))()
           
      end 
 })
   Tab:AddButton({         
 Name = "Nidev_HUB",         
 Callback = function()         
           
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/main/refs/heads/main/Loader.lua"))()
      end 
 })
 
  local Tab= Window:MakeTab({ 
         Name = "元素力量大亨", 
         Icon = "rbxassetid://7733779610", 
         PremiumOnly = false 
 }) 
  Tab:AddButton({         
 Name = "Elmental.HUB",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/Elemental"))()
           
      end 
 })
  local Tab= Window:MakeTab({ 
         Name = "战壕", 
         Icon = "rbxassetid://7733779610", 
         PremiumOnly = false 
 }) 
  Tab:AddButton({         
 Name = "头范围",         
 Callback = function()         
                      loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitler69/InfiniteWare/refs/heads/main/Launcher",true))()
           
      end 
 })
  local Tab= Window:MakeTab({ 
         Name = "武器太多了", 
         Icon = "rbxassetid://7733779610", 
         PremiumOnly = false 
 }) 
  Tab:AddButton({         
 Name = "汉化版",         
 Callback = function()         
           print("执行脚本")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flyspeed7/Orion-Library.UI/refs/heads/main/%E5%B0%8F%E5%87%8C%E4%B8%AD%E5%BF%83%E7%9A%84%F0%9F%98%B0%F0%9F%A4%94%F0%9F%A4%A3%F0%9F%91%8D%F0%9F%A4%93%F0%9F%98%8E%F0%9F%98%92%F0%9F%A4%AE%F0%9F%98%82%F0%9F%98%A1%F0%9F%98%A8%F0%9F%98%AD%F0%9F%A5%B0%F0%9F%99%82%F0%9F%92%80%F0%9F%98%93%F0%9F%92%94%F0%9F%A5%B5%F0%9F%A7%90Orion%20Library.Lua"))()
           
      end 
 })
 
  local Tab= Window:MakeTab({ 
         Name = "单词炸弹", 
         Icon = "rbxassetid://7733779610", 
         PremiumOnly = false 
 }) 
  Tab:AddButton({         
 Name = "自动填单词",         
 Callback = function()         
           loadstring(game:HttpGet("https://raw.githubusercontent.com/railme37509124/wordbomb/refs/heads/main/feinfeinfeinfeinfeinfien", true))()
           
      end 
 })
 