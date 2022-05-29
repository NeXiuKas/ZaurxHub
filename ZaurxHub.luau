if game.PlaceId == 155615604 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Prison Life", "Sentinel")
    
    --Main
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
 
    MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)

    MainSection:NewDropdown("Modgun", "destroy kids", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)


    --Player
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Sped", "SpedChanger", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    PlayerSection:NewSlider("Jump", "Clown", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)




end

if game.PlaceId == 5636466220 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Hyper Clicker", "BloodTheme")
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")


    --MAIN
    MainSection:NewToggle("Auto Click", "Make your Player auto click", function(v)
        getgenv().AutoClick = v
        while true do
            if not getgenv().AutoClick then return end
            local A_1 = "AutoClick"
            local Event = Local Event = game:GetService("ReplicatedStorage").Remotes.Click
            Event:FireServer()
            wait()
        end
    end)

    MainSection:NewToggle("Auto Rebirth", "Make your Player auto rebirth", function(v)
        getgenv().AutoRebirth = v
        while true do
            if not getgenv().AutoRebirth then return end
            local A_1 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.Rebirth
Event:FireServer(A_1)
wait()
        end
    end)



    --Player



    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    PlayerSection:NewSlider("Sped", "SpedChanger", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    PlayerSection:NewSlider("Jump", "Clown", 500, 20,  function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)




end
    

    
        
