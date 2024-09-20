-- Variables

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer

repeat wait() until lp ~= nil end

-- Functions

local function Fly(v)
    if v == true then
        local bg = Instance.new("BodyGyro", lp.Character.Torso)
    else

    end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name         = "Kepler Hub",
    HidePremium  = false,
    SaveConfig   = false,
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
    Callback = Fly(Value)
})

OrionLib:Init()
