-- Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create Window
local Window = Rayfield:CreateWindow({
   Name = "Delta Hack Suite",
   LoadingTitle = "Delta Executor",
   LoadingSubtitle = "Android Edition",
   Theme = "Default",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "DeltaHack",
   },
})

-- Create Tabs
local MainTab = Window:CreateTab("Movement", nil)

-- Fly Toggle
MainTab:CreateToggle({
   Name = "Fly Mode",
   CurrentValue = false,
   Callback = function(Value)
      if Value then
         -- Your fly code here
      end
   end,
})

-- Noclip Toggle
MainTab:CreateToggle({
   Name = "Noclip",
   CurrentValue = false,
   Callback = function(Value)
      -- Your noclip code here
   end,
})

-- Super Speed Slider
MainTab:CreateSlider({
   Name = "Super Speed",
   Range = {16, 250},
   Increment = 5,
   Suffix = "WalkSpeed",
   CurrentValue = 50,
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

-- ESP Toggle
local VisualsTab = Window:CreateTab("Visuals", nil)
VisualsTab:CreateToggle({
   Name = "Wallhack (ESP)",
   CurrentValue = false,
   Callback = function(Value)
      -- Your ESP code here
   end,
})

-- Complete script would include all the fly/noclip/ESP code from my previous message
