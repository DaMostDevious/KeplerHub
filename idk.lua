local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local function OnCloseWindow()
    OrionLib:Destroy()
end
local Window = OrionLib:MakeWindow({
    Name         = "Kepler Hub",
    HidePremium  = false,
    SaveConfig   = true,
    ConfigFolder = "OrionTest",
    IntroEnabled = false,
    Icon         = "rbxassetid://84144975977979"
})

local GlobalTab = Window:MakeTab({
    Name = "Global",
    PremiumOnly = false
})

local GeneralGlobal = GlobalTab:AddSection({
    Name = "General Global"
})

GeneralGlobal:AddToggle({
    Name = "Flight",
    Default = false,
    Callback = function(Value)
        print(Value)
    end
})

OrionLib:Init()