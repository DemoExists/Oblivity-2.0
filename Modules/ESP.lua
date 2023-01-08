--[Main Variables]

local plrs = game["Players"]
local rs = game["RunService"]

local plr = plrs.LocalPlayer
local mouse = plr:GetMouse()
local camera = workspace.CurrentCamera
local worldToViewportPoint = camera.worldToViewportPoint

--[Optimisation Variables]

local Drawingnew = Drawing.new
local Color3fromRGB = Color3.fromRGB
local Vector3new = Vector3.new
local Vector2new = Vector2.new
local mathfloor = math.floor
local mathceil = math.ceil

--[Setup Table]

local esp = {
    players = {},
    objects = {},
    enabled = true,
    teamcheck = false,
    fontsize = 13,
    font = 2,
    maxdist = 0,
    settings = {
        name = {enabled = true, outline = true, displaynames = true, color = Color3fromRGB(255, 255, 255)},
        box = {enabled = true, outline = true, color = Color3fromRGB(255, 255, 255)},
        filledbox = {enabled = true, outline = true, transparency = 0.5, color = Color3fromRGB(255, 255, 255)},
        healthbar = {enabled = true, size = 3, outline = true},
        healthtext = {enabled = true, outline = true, color = Color3fromRGB(255, 255, 255)},
        distance = {enabled = true, outline = true, color = Color3fromRGB(255, 255, 255)},
        viewangle = {enabled = true, size = 10, color = Color3fromRGB(255, 255, 255)},
        weapon = {enabled = true, outline = true, color = Color3fromRGB(255, 255, 255)}
    },
    settings_chams = {
        enabled = false,
        teamcheck = false,
        outline = false,
        fill_color = Color3fromRGB(255, 255, 255),
        outline_color = Color3fromRGB(0, 0, 0), 
        fill_transparency = 0,
        outline_transparency = 0,
        autocolor = false,
        visible_Color = Color3fromRGB(0, 255, 0),
        invisible_Color = Color3fromRGB(255, 0, 0),
    }
}

if syn then
    return printconsole("dont paste my code pls, demo#0644")
else
    return print("dont paste my code pls, demo#0644")
end
