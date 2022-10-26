while true do
   wait(30)
   local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Depth", -- Custom name of your entity
    Model = "https://github.com/Noobyxd/Depth/blob/main/Models/DepthV2.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 5, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    FlickerLights = {
        true, -- Enabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 7,
        Max = 10,
        WaitTime = 5,
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "rbxassetid://11278229132", -- Image1 url
            Image2 = "rbxassetid://11278229132", -- Image2 url
            Shake = true,
            Sound1 = {
                1592934514, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                5351101493, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(0, 70, 0), -- Color
            },
            Tease = {
                true, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You Died to who you call depth..", "Depth is rare....", "It has a random chance of spawning everytime...", "try hiding next time when the lights flicker..."}, -- Custom death message (can be as long as you want)
})


-- Run the created entity
Creator.runEntity(entity)
