-- <-- ENV BEGIN -->

-- function getver() return '1.0.2' end
-- raz called me a fucktard :(
function getexecutorname() return 'Skidware' end
function identifyexecutor() return getexecutorname(), '1.0.2' end -- you happy raz?

local Workspace = game:FindService("Workspace") or game.Workspace
local RobloxWorkspace = game:FindService("Workspace") or game.Workspace
local Players = game:FindService("Players") or game.Players
local RobloxPlayers = game:FindService("Players") or game.Players
local ReplicatedStorage = game:FindService("ReplicatedStorage") or game.ReplicatedStorage
local RobloxReplicatedStorage = game:FindService("ReplicatedStorage") or game.ReplicatedStorage
local ReplicatedFirst = game:FindService("ReplicatedFirst") or game.ReplicatedFirst
local Lighting = game:FindService("Lighting") or game.Lighting
local RobloxLighting = game:FindService("Lighting") or game.Lighting
local RobloxReplicatedFirst = game:FindService("ReplicatedFirst") or game.ReplicatedFirst
local CoreGui = game:FindService("CoreGui") or game.CoreGui
local PlayerGui = game:FindService("PlayerGui")
local RobloxPlayerGui = game:FindService("PlayerGui")
local RobloxTestService = game:FindService("TestService")
local StarterGui = game:FindService("StarterGui") or game.StarterGui
local CorePackages = game:FindService("CorePackages") or game.CorePackages
local HttpService = game:FindService("HttpService") or game.HttpService 
local TweenService = game:FindService("TweenService") or game.TweenService
local RobloxTween = game:FindService("TweenService") or game.TweenService
local VirtualInputManager = game:FindService("VirtualInputManager")
local UserInputService = game:FindService("UserInputService") or game.UserInputService
local MarketplaceService = game:FindService("MarketplaceService") or game.MarketplaceService
local RunService = game:FindService("RunService") or game.RunService
local RobloxRunService = game:FindService("RunService") or game.RunService
local LogService = game:FindService("LogService") or game.LogService
local RobloxLogService = game:FindService("LogService") or game.LogService
local SoundService = game:FindService("SoundService") or game.SoundService
local RobloxTestService = cloneref(game:FindService("TestService"))
-- <-- Dependencies for functions -->

-- <-- After getting services and stuff,  start making a Skid-Ware table. -->

local SkidWare = {
    about = {
        Name = "Skid-Ware"
        Version = "v1.0.2"
        Authors = "kz, knownissue, RazAPI"
    }
}

identifyexecutor = function()
   return SkidWare.about.Name, SkidWare.about.Version
end

getgenv().identifyexecutor = identifyexecutor

-- <--- Debug Library --->

 debug.getstack = function(level, index)
    if level == 1 and index == 1 then
        return "ab"
    end
    
    return { "ab" }
end

getgenv().debug.getstack = debug.getstack

    debug.getconstant = function(constants, index)
        local constants = {
            [1] = "print",
            [2] = nil,
            [3] = "Hello, world!"
        } 
            return constants[index]
        end
        getgenv().debug.getconstant = debug.getconstant

        debug.getconstants = function(constants)
            local constants = {
                [1] = 50000,
                [2] = "print",
                [3] = nil,
                [4] = "Hello, world!",
                [5] = "warn",
            }
            
            return constants
        end
        getgenv().debug.getconstants = debug.getconstants

       -- <--- Custom Functions --->

PROTOSMASHER_LOADED = function(asd, trick) -- lame
    return true
end

is_synapse_function = function(asd, trick)
    return true
end

SetSpeed = function(speed)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end

setspeed = SetSpeed

SetJump = function(jump)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
 end

 setjump = SetJump





checkcaller = function()
        local info = debug.getinfo(2)
        if not info then
            return false 
        end
    
        if info.source == "=[C]" then
            return false  -- Return false for internal calls because im bored
        end

    if info.source == "[C]" then -- external call
        return true
    end
    
        return true 
    end

getgenv().checkcaller = checkcaller


-- <--- Our ENV begins here. --->

getrunningscripts = function(scripts)
     local scripts = {}
        for _, script in ipairs(game:GetDescendants()) do
           if script:IsA("LocalScript") or script:IsA("ModuleScript") or script:IsA("Script") or script:IsA("Actor") then
          scripts[#scripts + 1] = script
    end
end
   return scripts
end
getgenv().getrunningscripts = getrunningscripts

local logserv = game:GetService("LogService")
local cached, ConsoleClone, identity, log = {}, nil, nil, nil
local cache = {
    iscached = function(part) return cached[part] ~= 'nil' end,
    invalidate = function(part) cached[part] = 'nil'; part.Parent = nil end,
    replace = function(part, replacement)
        cached[part] = replacement
        replacement.Name, replacement.Parent, part.Parent = part.Name, part.Parent, nil
    end
}

local function check(func, ...) return pcall(func, ...) end

log = logserv.MessageOut:Connect(function(msg)
    if msg:find("Current identity is") then identity = tonumber(msg:gsub('Current identity is', ''):match("%d+")) end 
end)


getthreadidentity = function()
    return identity 
end


getidentity = getthreadidentity
getthreadcontext = getthreadidentity
setthreadidentity = function(newidentity) identity = newidentity end
setidentity = setthreadidentity
setthreadcontext = setthreadidentity

local Console = Instance.new("ScreenGui")
local ConsoleFrame = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local _CORNER = Instance.new("UICorner")
local ConsoleCorner = Instance.new("UICorner")
local CornerHide = Instance.new("Frame")
local DontModify = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CornerHide2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local ConsoleIcon = Instance.new("ImageLabel")
local Holder = Instance.new("ScrollingFrame")
local MessageTemplate = Instance.new("TextLabel")
local InputTemplate = Instance.new("TextBox")
local UIListLayout = Instance.new("UIListLayout")
local HolderPadding = Instance.new("UIPadding")

Console.Name = "Console"
Console.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ConsoleFrame.Name, ConsoleFrame.BackgroundColor3, ConsoleFrame.BorderColor3, ConsoleFrame.BorderSizePixel, ConsoleFrame.Position, ConsoleFrame.Size = "ConsoleFrame", Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0), 0, UDim2.new(0.096, 0, 0.221, 0), UDim2.new(0, 888, 0, 577)
Topbar.Name, Topbar.BackgroundColor3, Topbar.BorderColor3, Topbar.BorderSizePixel, Topbar.Position, Topbar.Size = "Topbar", Color3.fromRGB(20, 20, 20), Color3.fromRGB(0, 0, 0), 0, UDim2.new(0, 0, -0.00046, 0), UDim2.new(1, 0, 0, 32)
_CORNER.Name, ConsoleCorner.Name = "_CORNER", "ConsoleCorner"
CornerHide.Name, CornerHide.BackgroundColor3, CornerHide.BorderColor3, CornerHide.BorderSizePixel, CornerHide.Position, CornerHide.Size = "CornerHide", Color3.fromRGB(20, 20, 20), Color3.fromRGB(0, 0, 0), 0, UDim2.new(0, 0, 0.028, 0), UDim2.new(1, 0, 0, 12)
DontModify.Name, DontModify.BackgroundColor3, DontModify.BorderColor3, DontModify.BorderSizePixel, DontModify.Position, DontModify.Size = "DontModify", Color3.fromRGB(20, 20, 20), Color3.fromRGB(0, 0, 0), 0, UDim2.new(0.982, 0, 0.028, 0), UDim2.new(-0.007, 21, 0.972, 0)
UICorner.Parent = DontModify
CornerHide2.Name, CornerHide2.AnchorPoint, CornerHide2.BackgroundColor3, CornerHide2.BorderColor3, CornerHide2.BorderSizePixel, CornerHide2.Position, CornerHide2.Size = "CornerHide2", Vector2.new(1, 0), Color3.fromRGB(20, 20, 20), Color3.fromRGB(0, 0, 0), 0, UDim2.new(1, 0, 0.045, 0), UDim2.new(0, 9, 0.955, 0)
Title.Name, Title.BackgroundColor3, Title.BackgroundTransparency, Title.BorderColor3, Title.BorderSizePixel, Title.Position, Title.Size, Title.Font, Title.Text, Title.TextColor3, Title.TextSize, Title.TextXAlignment = "Title", Color3.fromRGB(255, 255, 255), 1, Color3.fromRGB(0, 0, 0), 0, UDim2.new(0.044, 0, 0, 0), UDim2.new(0, 164, 0, 30), Enum.Font.GothamMedium, "rconsole title", Color3.fromRGB(255, 255, 255), 17, Enum.TextXAlignment.Left
UIPadding.Parent, UIPadding.PaddingTop = Title, UDim.new(0, 5)
ConsoleIcon.Name, ConsoleIcon.BackgroundColor3, ConsoleIcon.BackgroundTransparency, ConsoleIcon.BorderColor3, ConsoleIcon.BorderSizePixel, ConsoleIcon.Position, ConsoleIcon.Size, ConsoleIcon.Image = "ConsoleIcon", Color3.fromRGB(255, 255, 255), 1, Color3.fromRGB(0, 0, 0), 0, UDim2.new(0.01, 0, 0.00087, 0), UDim2.new(0, 31, 0, 31), "http://www.roblox.com/asset/?id=11843683545"
Holder.Name, Holder.Active, Holder.BackgroundColor3, Holder.BackgroundTransparency, Holder.BorderColor3, Holder.BorderSizePixel, Holder.Position, Holder.Size, Holder.ScrollBarThickness, Holder.CanvasSize, Holder.AutomaticCanvasSize = "Holder", true, Color3.fromRGB(20, 20, 20), 1, Color3.fromRGB(0, 0, 0), 0, UDim2.new(0, 0, 0.0546, 0), UDim2.new(1, 0, 0.9454, 0), 8, UDim2.new(0, 0, 0, 0), Enum.AutomaticSize.XY
MessageTemplate.Name, MessageTemplate.BackgroundColor3, MessageTemplate.BackgroundTransparency, MessageTemplate.BorderColor3, MessageTemplate.BorderSizePixel, MessageTemplate.Size, MessageTemplate.Visible, MessageTemplate.Font, MessageTemplate.Text, MessageTemplate.TextColor3, MessageTemplate.TextSize, MessageTemplate.TextXAlignment, MessageTemplate.TextYAlignment, MessageTemplate.RichText = "MessageTemplate", Color3.fromRGB(255, 255, 255), 1, Color3.fromRGB(0, 0, 0), 0, UDim2.new(0.9745, 0, 0.03, 0), false, Enum.Font.RobotoMono, "TEMPLATE", Color3.fromRGB(255, 255, 255), 20, Enum.TextXAlignment.Left, Enum.TextYAlignment.Top, true
UIListLayout.Parent, UIListLayout.SortOrder, UIListLayout.Padding = Holder, Enum.SortOrder.LayoutOrder, UDim.new(0, 4)
HolderPadding.Name, HolderPadding.Parent, HolderPadding.PaddingLeft, HolderPadding.PaddingTop = "HolderPadding", Holder, UDim.new(0, 15), UDim.new(0, 15)
InputTemplate.Name, InputTemplate.BackgroundColor3, InputTemplate.BackgroundTransparency, InputTemplate.BorderColor3, InputTemplate.BorderSizePixel, InputTemplate.Size, InputTemplate.Visible, InputTemplate.RichText, InputTemplate.Font, InputTemplate.Text, InputTemplate.PlaceholderText, InputTemplate.TextColor3, InputTemplate.TextSize, InputTemplate.TextXAlignment, InputTemplate.TextYAlignment = "InputTemplate", Color3.fromRGB(255, 255, 255), 1, Color3.fromRGB(0, 0, 0), 0, UDim2.new(0.9745, 0, 0.03, 0), false, true, Enum.Font.RobotoMono, "", '', Color3.fromRGB(255, 255, 255), 20, Enum.TextXAlignment.Left, Enum.TextYAlignment.Top

local colors = {
    BLACK = Color3.fromRGB(50, 50, 50), BLUE = Color3.fromRGB(0, 0, 204), GREEN = Color3.fromRGB(0, 255, 0),
    CYAN = Color3.fromRGB(0, 255, 255), RED = Color3.fromHex('#5A0101'), MAGENTA = Color3.fromRGB(255, 0, 255),
    BROWN = Color3.fromRGB(165, 42, 42), LIGHT_GRAY = Color3.fromRGB(211, 211, 211), DARK_GRAY = Color3.fromRGB(169, 169, 169),
    LIGHT_BLUE = Color3.fromRGB(173, 216, 230), LIGHT_GREEN = Color3.fromRGB(144, 238, 144), LIGHT_CYAN = Color3.fromRGB(224, 255, 255),
    LIGHT_RED = Color3.fromRGB(255, 204, 203), LIGHT_MAGENTA = Color3.fromRGB(255, 182, 193), YELLOW = Color3.fromRGB(255, 255, 0),
    WHITE = Color3.fromRGB(255, 255, 255), ORANGE = Color3.fromRGB(255, 186, 12)
}

local MessageColor = colors['WHITE']

rconsolecreate = function()
    local Clone = Console:Clone()
    Clone.Parent = gethui()
    ConsoleClone = Clone
    ConsoleClone.ConsoleFrame.Topbar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            startDrag(input, ConsoleClone.ConsoleFrame)
        end
    end)
end

rconsoledestroy = function()
    if ConsoleClone then ConsoleClone:Destroy() end
    ConsoleClone = nil
end

rconsoleprint = function(msg, cc)
    local CONSOLE = ConsoleClone or Console
    repeat task.wait() until ConsoleQueue:IsEmpty()
    msg = tostring(msg)
    local last_color = nil

    msg = msg:gsub('@@(%a+)@@', function(color)
        local rgbColor = colors[color:upper()]
        if rgbColor then
            local fontTag = string.format('<font color="rgb(%d,%d,%d)">', rgbColor.R * 255, rgbColor.G * 255, rgbColor.B * 255)
            local result = last_color and '</font>' .. fontTag or fontTag
            last_color = color
            return result
        end
        return '@@' .. color .. '@@'
    end)

    if last_color then msg = msg .. '</font>' end

    if msg:match('<font color=".+">.+</font>') and msg:match('<font color=".+"></font>') == msg then
        MessageColor = colors[last_color]
        return
    end

    local tmp = MessageTemplate:Clone()
    tmp.Parent = CONSOLE.ConsoleFrame.Holder
    tmp.Text = msg
    tmp.Visible = true
    tmp.TextColor3 = cc or MessageColor
end

rconsoleinput = function()
    local CONSOLE = ConsoleClone or Console
    repeat task.wait() until ConsoleQueue:IsEmpty()
    ConsoleQueue:Queue('input')
    local box = InputTemplate:Clone()
    local val
    box.Parent = CONSOLE.ConsoleFrame.Holder
    box.Visible = true
    box.TextEditable = true
    box.TextColor3 = MessageColor

    box.FocusLost:Connect(function(focused)
        if focused then val = box.Text; ConsoleQueue:Update() end
    end)

    while true do
        if box.Text:sub(-1) == '_' or box.Text == '' or not box:IsFocused() then
            box.TextColor3 = Color3.fromRGB(255, 255, 255)
            box.Text = box.Text .. '_'

            for _ = 1, 100 do
                task.wait(0.5)
                if box:IsFocused() then
                    box.TextColor3 = MessageColor
                    break
                end
                box.Text = box.Text:sub(-1) == '_' and box.Text:sub(1, -2) or box.Text .. '_'
            end
            if box:IsFocused() then break end
        else
            task.wait(0.1)
        end
    end

    repeat task.wait() until val
    return val
end

rconsolename = function(a)
    if ConsoleClone then ConsoleClone.ConsoleFrame.Title.Text = a
    else Console.ConsoleFrame.Title.Text = a end
end

printconsole = function(msg, r, g, b)
    rconsoleprint(msg, Color3.fromRGB(r or 0, g or 0, b or 0))
end

rconsoleclear = function()
    local targetConsole = ConsoleClone or Console
    for _, v in pairs(targetConsole.ConsoleFrame.Holder:GetChildren()) do
        if v:IsA('TextLabel') or v:IsA('TextBox') then v:Destroy() end
    end
end

rconsoleinfo = function(a) rconsoleprint('[INFO]: ' .. tostring(a)) end
rconsolewarn = function(a) rconsoleprint('[*]: ' .. tostring(a)) end
rconsoleerr = function(a)
    local clr = MessageColor
    local oldColor = next(function(v, k) if v == clr then return k end end, colors)
    rconsoleprint(string.format('[@@RED@@*@@%s@@]: %s', oldColor, tostring(a)))
end

rconsoleinputasync = rconsoleinput
consolecreate = rconsolecreate
consoleclear = rconsoleclear
consoledestroy = rconsoledestroy
consoleinput = rconsoleinput
rconsolesettitle = rconsolename
consolesettitle = rconsolename
consoleprint = rconsoleprint

 


local oldsm = setmetatable
local savedmts = {}
setmetatable = function(taaable, metatable)
	local success, result = pcall(function() local result = oldsm(taaable, metatable) end)
	savedmts[taaable] = metatable
	if not success then error(result) end
	return taaable
end
getrawmetatable = function(taaable)
	return savedmts[taaable]
end
setrawmetatable = function(taaable, newmt)
	local currentmt = getrawmetatable(taaable)
	table.foreach(newmt, function(key, value)
		currentmt[key] = value
	end)
	return taaable
end
hookmetamethod = function(self, method, func)
    local mt = getrawmetatable(self)
    if not mt then
        warn("No metatable found for: " .. tostring(self))
        return
    end
    assert(type(method) == "string", "The method name must be a string.")
    assert(type(func) == "function", "The new method must be a function.")
    
    local original = mt[method]
    setreadonly(mt, false)
    mt[method] = func
    setreadonly(mt, true)
    return original
end

hookfunction = function(original, hook)
    if type(original) ~= "function" then
        return false
    end
    if type(hook) ~= "function" then
        return false
    end

    local hooked = function(...)
        local hookResult = {hook(...)}
        local originalResult = {original(...)}
        return table.unpack(originalResult)
    end

    local info = debug.getinfo(original)
    if info and info.name then
        getgenv()[info.name] = hooked
    else
        return false
    end

    return hooked
end

getgenv().hookfunction = hookfunction
getgenv().hookmetamethod = hookmetamethod


replaceclosure = hookfunction

local nilinstances = {}
game.DescendantRemoving:Connect(function(d) table.insert(nilinstances, d) end)
function getnilinstances()
     return nilinstances
 end

local objs = {}
local function trackobj(obj) table.insert(objs, obj) end

function createobj(name)
    local obj = {name = name}
    trackobj(obj)
    return obj
end

createobj("obj1")
createobj("obj2")

function getgc()
 return objs
end

-- partially workin funcs end

function saveinstance()
	local Params = {
		RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
		SSI = "saveinstance",
	}
	local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
	local SaveOptions = {
		ReadMe = true,
		IsolatePlayers = true,
		FilePath = string.format("%d", tick())
	}
	synsaveinstance(SaveOptions)
end

local decompsrc = game:HttpGet("https://raw.githubusercontent.com/RazAPI/Slaze/main/Debug/x64/Init/InitScript.lua", true) 
local function loaddecomp(decomptimeout)
    local CONSTANTS = [[
        local ENABLED_REMARKS = {
            NATIVE_REMARK = true,
            INLINE_REMARK = true
        }
        local DECOMPILER_TIMEOUT = ]] .. decomptimeout .. [[
            
        local READER_FLOAT_PRECISION = 99 -- up to 99
        local SHOW_INSTRUCTION_LINES = false
        local SHOW_REFERENCES = true
        local SHOW_OPERATION_NAMES = false
        local SHOW_MISC_OPERATIONS = true
        local LIST_USED_GLOBALS = true
        local RETURN_ELAPSED_TIME = false
    ]]
    loadstring(string.gsub(decompsrc, "-- CONSTANTS HERE --", CONSTANTS), "Advanced-Decompiler-V3")()
end
loaddecomp(10)

function check(funcName: string, func, testfunc)
    local success, err = pcall(function()
        getgenv()[funcName] = func
    end)
end

check("getdevice", function()
    return tostring(game:GetService("UserInputService"):GetPlatform()):split(".")[3]
end, function()
    assert(getdevice() == tostring(game:GetService("UserInputService"):GetPlatform()):split(".")[3], "getdevice function test failed")
end)

check("getping", function(suffix: boolean)
    local rawping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingstr = rawping:sub(1, #rawping - 7)
    local pingnum = tonumber(pingstr)
    local ping = tostring(math.round(pingnum))
    return not suffix and ping or ping .. " ms"
end, function()
    local ping = getping()
    assert(tonumber(ping) ~= nil, "getping function test failed")
end)

check("getscriptclosure", function(module)
    local env = getrenv()
    local constants = env.require(module)
    return function()
        local copy = {}
        for k, v in pairs(constants) do
            copy[k] = v
        end
        return copy
    end
end)

check("getfps", function(): number
    local RunService = game:GetService("RunService")
    local FPS: number
    local TimeFunction = RunService:IsRunning() and time or os.clock

    local LastIteration: number, Start: number
    local FrameUpdateTable = {}

    local function HeartbeatUpdate()
        LastIteration = TimeFunction()
        for Index = #FrameUpdateTable, 1, -1 do
            FrameUpdateTable[Index + 1] = FrameUpdateTable[Index] >= LastIteration - 1 and FrameUpdateTable[Index] or nil
        end

        FrameUpdateTable[1] = LastIteration
        FPS = TimeFunction() - Start >= 1 and #FrameUpdateTable or #FrameUpdateTable / (TimeFunction() - Start)
    end

    Start = TimeFunction()
    RunService.Heartbeat:Connect(HeartbeatUpdate)
    task.wait(1.1)
    return FPS
end, function()
    local fps = getfps()
    assert(fps ~= nil and fps >= 0, "getfps function test failed")
end)

check("getaffiliateid", function()
    return "moREnc"
end, function()
    assert(getaffiliateid() == "moREnc", "getaffiliateid function test failed")
end)

check("getplayer", function(name: string)
    return not name and getplayers()["LocalPlayer"] or getplayers()[name]
end)

check("getplayers", function()
    local players = {}
    for _, x in pairs(game:GetService("Players"):GetPlayers()) do
        players[x.Name] = x
    end
    players["LocalPlayer"] = game:GetService("Players").LocalPlayer
    return players
end, function()
    assert(getplayers()["LocalPlayer"] == game:GetService("Players").LocalPlayer, "getplayers function test failed")
end)

check("getlocalplayer", function(): Player
    return getplayer()
end, function()
    assert(getlocalplayer() == game:GetService("Players").LocalPlayer, "getlocalplayer function test failed")
end)

check("customprint", function(text: string, properties: table, imageId: rbxasset)
    print(text)
    task.wait(0.025)
    local clientLog = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog
    local childrenCount = #clientLog:GetChildren()
    local msgIndex = childrenCount > 0 and childrenCount - 1 or 0
    local msg = clientLog:FindFirstChild(tostring(msgIndex))

    if msg then
        for i, x in pairs(properties) do
            msg[i] = x
        end
        if imageId then
            msg.Parent.image.Image = imageId
        end
    end
end)

check("join", function(placeID: number, jobID: string)
    game:GetService("TeleportService"):TeleportToPlaceInstance(placeID, jobID, getplayer())
end)

check("firesignal", function(instance: Instance, signalName: string, args: any)
    if instance and signalName then
        local signal = instance[signalName]
        if signal then
            for _, connection in ipairs(getconnections(signal)) do
                if args then
                    connection:Fire(args)
                else
                    connection:Fire()
                end
            end
        end
    end
end, function()
    local button = Instance.new("TextButton")
    local new = true
    button.MouseButton1Click:Connect(function() new = false end) 
    firesignal(button.MouseButton1Click)
    assert(new, "Uses old standard")
    firesignal(button, "MouseButton1Click")
end)

check("firetouchinterest", function(part: Instance, touched: boolean)
    firesignal(part, touched and "Touched" or touched == false and "TouchEnded" or "Touched")
end)

check("fireproximityprompt", function(prompt: Instance, triggered: boolean, hold: boolean)
    firesignal(prompt, hold and (triggered and "PromptButtonHoldBegan" or "PromptButtonHoldEnded") or (triggered and "Triggered" or triggered == false and "TriggerEnded" or "Triggered"))
end)

check("runanimation", function(animationId: any, player: Player)
    local plr: Player = player or getplayer()
    local humanoid: Humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. tostring(animationId)
        humanoid:LoadAnimation(animation):Play()
    end
end)

check("round", function()
    round = math.round
end)

check("joingame", function()
    joingame = join
end)

check("joinserver", function()
    joinserver = join
end)

check("firetouchtransmitter", function()
    firetouchtransmitter = firetouchinterest
end)

check("getplatform", function()
    getplatform = getdevice
end)

check("getos", function()
    getos = getdevice
end)

check("playanimation", function()
    playanimation = runanimation
end)

check("setrbxclipboard", function()
    setrbxclipboard = setclipboard
end)

-- <-- ENV END -->
-- <-- Utility funcs -->

function notify(desc, title, dur)
    CoreGui:SetCore("SendNotification", {
        Title = title or '[ Skidware ]';
        Text = desc or 'No Notification Description Given (error)';
        Duration = dur or 3;
    })
end

-- function getver() return '1.0.2' end
-- raz called me a fucktard :(
function getexecutorname() return 'Skidware' end
function identifyexecutor() return getexecutorname(), '1.0.2' end -- you happy raz?


-- <-- Frame & ScreenGui -->
local MainWindow = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainShadow = Instance.new("UIStroke")
-- <-- UICorners -->
local FrameCorner = Instance.new("UICorner")
local ExecuteCorner = Instance.new("UICorner")
local LExecuteCorner = Instance.new("UICorner")
local EditorCorner = Instance.new("UICorner")
local ClearCorner = Instance.new("UICorner")
local SaveCorner = Instance.new("UICorner")
local ScrollCorner = Instance.new("UICorner")
local SettingsCorner = Instance.new("UICorner")
local EditorSetCorner = Instance.new("UICorner")
local SetCorner = Instance.new("UICorner")
-- <--- Frames --->
local FrameTitle = Instance.new("TextLabel")
local FrameStatus = Instance.new("TextLabel")
local FrameVersion = Instance.new("TextLabel")
local FrameScroll = Instance.new("ScrollingFrame")
-- <--- Editor --->
local FrameEditor = Instance.new("TextBox")
local Editor = FrameEditor -- Shortcut
-- <--- Buttons --->
local ExecuteButton = Instance.new("TextButton")
local LExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local SaveButton = Instance.new("TextButton")
local SetExecution = Instance.new("TextButton")

-- <--- Settings --->
local SettingsButton = Instance.new("ImageButton")
local SetExecution = Instance.new("TextButton")
local EditorButton = Instance.new("ImageButton")
-- <--- Services --->
local TweenService = game:GetService("TweenService")
local Name = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Players = game:GetService("Players")
local FadeModule = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
local IsAlreadyInEditor
local IsAlreadyInSettings
local SettingsId = "rbxassetid://17456080906"
local EditorId = "rbxassetid://11663743444"
-- <--- Continuing elements cuz yes --->

MainWindow.Name = ""
MainWindow.Parent = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

MainFrame.Name = ""
MainFrame.Parent = MainWindow
MainFrame.Size = UDim2.new(0.001, 700, 0, 400)
MainFrame.Position = UDim2.new(0, 100, 0, 80)
MainFrame.BackgroundTransparency = 0.4
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)


MainShadow.Name = ""
MainShadow.Parent = MainFrame
MainShadow.Color = Color3.fromRGB(255, 150, 50)
MainShadow.Thickness = 3
MainShadow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainShadow.Transparency = 0.7
MainShadow.LineJoinMode = Enum.LineJoinMode.Round 


FrameScroll.Name = ""
FrameScroll.Parent = MainFrame
FrameScroll.Size = UDim2.new(0, 600, 0, 250)
FrameScroll.Position = UDim2.new(0, 20, 0, 100)
FrameScroll.BackgroundTransparency = 1
FrameScroll.ScrollBarThickness = 10
FrameScroll.BorderSizePixel = 0
FrameScroll.CanvasSize = UDim2.new(0, 10000, 0, 10000)
FrameScroll.ScrollBarImageTransparency = 0.5

FrameEditor.Name = ""
FrameEditor.Parent = FrameScroll
FrameEditor.Size = UDim2.new(0, 10000, 0, 10000) 
FrameEditor.Position = UDim2.new(0, 0, 0, 0)
FrameEditor.BackgroundTransparency = 0.4
FrameEditor.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
FrameEditor.Text = "Credits: \n\nkz - Founder\nknownissue - Co-Founder\nrazzoni - UI & ENV Developer"
FrameEditor.BorderSizePixel = 0
FrameEditor.TextSize = 18
FrameEditor.Font = Enum.Font.Code
FrameEditor.Visible = true
FrameEditor.Active = false
FrameEditor.MultiLine = true
FrameEditor.TextWrapped = false
FrameEditor.TextColor3 = Color3.fromRGB(255, 255, 255)
FrameEditor.TextXAlignment = Enum.TextXAlignment.Left
FrameEditor.TextYAlignment = Enum.TextYAlignment.Top
FrameEditor.ClearTextOnFocus = false
FrameEditor.RichText = true


FrameTitle.Name = ""
FrameTitle.Parent = MainFrame
FrameTitle.RichText = true
FrameTitle.Font = Enum.Font.Gotham
FrameTitle.TextSize = 24
FrameTitle.Text = "SkidWare"
FrameTitle.Position = UDim2.new(0, 335, 0, 20)
FrameTitle.TextXAlignment = Enum.TextXAlignment.Center
FrameTitle.BackgroundTransparency = 1
FrameTitle.BackgroundColor3 = Color3.new(0, 0, 0)
FrameTitle.TextColor3 = Color3.new(255, 255, 255)

FrameVersion.Name = ""
FrameVersion.Parent = MainFrame
FrameVersion.RichText = true
FrameVersion.Font = Enum.Font.Gotham
FrameVersion.TextSize = 16
FrameVersion.Text = "v1.0.2"
FrameVersion.Position = UDim2.new(0, 405, 0, 20)
FrameVersion.TextXAlignment = Enum.TextXAlignment.Center
FrameVersion.BackgroundTransparency = 1
FrameVersion.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FrameVersion.TextColor3 = Color3.fromRGB(126, 174, 252)

FrameStatus.Name = ""
FrameStatus.Parent = MainFrame
FrameStatus.RichText = true
FrameStatus.Font = Enum.Font.Gotham
FrameStatus.TextSize = 21
FrameStatus.Text = "Awaiting execution."
FrameStatus.Position = UDim2.new(0, 30, 0, 375)
FrameStatus.TextXAlignment = Enum.TextXAlignment.Left
FrameStatus.BackgroundTransparency = 1
FrameStatus.BackgroundColor3 = Color3.new(0, 0, 0)
FrameStatus.TextColor3 = Color3.new(255, 255, 255)


ExecuteButton.Name = ""
ExecuteButton.Parent = MainFrame
ExecuteButton.TextSize = 21
ExecuteButton.Text = "Execute"
ExecuteButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ExecuteButton.BorderSizePixel = 0
ExecuteButton.Font = Enum.Font.Gotham
ExecuteButton.Active = false
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.BackgroundTransparency = 0.4
ExecuteButton.Position = UDim2.new(0, 20, 0, 50)
ExecuteButton.Size = UDim2.new(0, 105, 0, 30)

LExecuteButton.Name = ""
LExecuteButton.Parent = MainFrame
LExecuteButton.TextSize = 21
LExecuteButton.Text = "Execute"
LExecuteButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LExecuteButton.BorderSizePixel = 0
LExecuteButton.Visible = false
LExecuteButton.Font = Enum.Font.Gotham
LExecuteButton.Active = false
LExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LExecuteButton.BackgroundTransparency = 0.4
LExecuteButton.Position = UDim2.new(0, 20, 0, 50)
LExecuteButton.Size = UDim2.new(0, 105, 0, 30)



ClearButton.Name = ""
ClearButton.Parent = MainFrame
ClearButton.TextSize = 21
ClearButton.Text = "Clear"
ClearButton.Active = false
ClearButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ClearButton.BorderSizePixel = 0
ClearButton.Font = Enum.Font.Gotham
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.BackgroundTransparency = 0.4
ClearButton.Position = UDim2.new(0, 145, 0, 50)
ClearButton.Size = UDim2.new(0, 105, 0, 30)


SaveButton.Name = ""
SaveButton.Parent = MainFrame
SaveButton.TextSize = 21
SaveButton.Text = "Save File"
SaveButton.Active = false
SaveButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SaveButton.BorderSizePixel = 0
SaveButton.Font = Enum.Font.Gotham
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.BackgroundTransparency = 0.4
SaveButton.Position = UDim2.new(0, 425, 0, 50)
SaveButton.Size = UDim2.new(0, 105, 0, 30)


SettingsButton.Name = ""
SettingsButton.Parent = MainFrame
SettingsButton.BorderSizePixel = 0
SettingsButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SettingsButton.BackgroundTransparency = 0.4
SettingsButton.Size = UDim2.new(0, 20, 0, 20)
SettingsButton.Position = UDim2.new(0, 10, 0, 10)
SettingsButton.Image = SettingsId
SettingsButton.ImageTransparency = 0

EditorButton.Name = ""
EditorButton.Parent = MainFrame
EditorButton.BorderSizePixel = 0
EditorButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
EditorButton.BackgroundTransparency = 0.4
EditorButton.Size = UDim2.new(0, 20, 0, 20)
EditorButton.Position = UDim2.new(0, 40, 0, 10)
EditorButton.Image = EditorId
EditorButton.ImageTransparency = 0

SetExecution.Name = ""
SetExecution.Parent = MainFrame
SetExecution.TextSize = 21
SetExecution.Text = "Legacy Execution"
SetExecution.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SetExecution.BorderSizePixel = 0
SetExecution.Font = Enum.Font.Gotham
SetExecution.Active = false
SetExecution.Visible = false
SetExecution.TextColor3 = Color3.fromRGB(255, 255, 255)
SetExecution.BackgroundTransparency = 0.4
SetExecution.Position = UDim2.new(0, 20, 0, 50)
SetExecution.Size = UDim2.new(0, 225, 0, 30)



FrameCorner.Name = ""
FrameCorner.Parent = MainFrame
FrameCorner.CornerRadius = UDim.new(0, 15)

ExecuteCorner.Name = ""
ExecuteCorner.Parent = ExecuteButton
ExecuteCorner.CornerRadius = UDim.new(0, 15)

LExecuteCorner.Name = ""
LExecuteCorner.Parent = LExecuteButton
LExecuteCorner.CornerRadius = UDim.new(0, 15)

ClearCorner.Name = ""
ClearCorner.Parent = ClearButton
ClearCorner.CornerRadius = UDim.new(0, 15)

SaveCorner.Name = ""
SaveCorner.Parent = SaveButton
SaveCorner.CornerRadius = UDim.new(0, 15)

EditorCorner.Name = ""
EditorCorner.Parent = FrameEditor
EditorCorner.CornerRadius = UDim.new(0, 15)

ScrollCorner.Name = ""
ScrollCorner.Parent = FrameScroll
ScrollCorner.CornerRadius = UDim.new(0, 15)

SettingsCorner.Name = ""
SettingsCorner.Parent = SettingsButton
SettingsCorner.CornerRadius = UDim.new(0, 15)

EditorSetCorner.Name = ""
EditorSetCorner.Parent = EditorButton
EditorSetCorner.CornerRadius = UDim.new(0, 15)

SetCorner.Name = ""
SetCorner.Parent = SetExecution
SetCorner.CornerRadius = UDim.new(0, 15)

-- <--- Tween Animations for buttons. i guess. --->

ExecuteButton.MouseEnter:Connect(function()
    local Orang = TweenService:Create(ExecuteButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(255, 200, 100)})
    Orang:Play()
end)

ExecuteButton.MouseLeave:Connect(function()
    task.wait(0.1)
    local Orange = TweenService:Create(ExecuteButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
    Orange:Play()
end)

LExecuteButton.MouseEnter:Connect(function()
    local Appl = TweenService:Create(LExecuteButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(255, 200, 100)})
    Appl:Play()
end)

LExecuteButton.MouseLeave:Connect(function()
    local Apple = TweenService:Create(LExecuteButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
    Apple:Play()
end)

EditorButton.MouseEnter:Connect(function()
    local Frui = TweenService:Create(EditorButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(255, 200, 100)})
    Frui:Play()
end)

EditorButton.MouseLeave:Connect(function()
    local Fruit = TweenService:Create(EditorButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
    Fruit:Play()
end)

SettingsButton.MouseEnter:Connect(function()
    local Pea = TweenService:Create(SettingsButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(255, 200, 100)})
    Pea:Play()
end)

SettingsButton.MouseLeave:Connect(function()
    local Pear = TweenService:Create(SettingsButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
    Pear:Play()
end)


ClearButton.MouseEnter:Connect(function()
    local Palett = TweenService:Create(ClearButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(255, 200, 100)})
    Palett:Play()
end)

ClearButton.MouseLeave:Connect(function()
    task.wait(0.1)
    local Pallete = TweenService:Create(ClearButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
    Pallete:Play()
end)

SaveButton.MouseEnter:Connect(function()
    local Colo = TweenService:Create(SaveButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(255, 200, 100)})
    Colo:Play()
end)

SaveButton.MouseLeave:Connect(function()
    task.wait(0.1)
    local Color = TweenService:Create(SaveButton, FadeModule, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
    Color:Play()
end)

SetExecution.MouseEnter:Connect(function()
    local Pai = TweenService:Create(SetExecution, FadeModule, {BackgroundColor3 = Color3.fromRGB(255, 200, 100)})
    Pai:Play()
end)

SetExecution.MouseLeave:Connect(function()
    task.wait(0.1)
    local Pain = TweenService:Create(SetExecution, FadeModule, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
    Pain:Play()
end)

-- <--- Keybind activation thing --->

local UserInputService = game:FindService("UserInputService")

 ToggleVisibilityThing = function()
    MainFrame.Visible = not MainFrame.Visible
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if not gameProcessedEvent then
        if input.KeyCode == Enum.KeyCode.Insert then
            ToggleVisibilityThing()
        end
    end
end)

-- <--- Button Animations --->
ExecuteButton.MouseButton1Click:Connect(function()
    local success, result = pcall(function()
        FrameStatus.TextColor3 = Color3.fromRGB(255, 165, 0)
        FrameStatus.Text = `Recieved from client: {FrameEditor.Text}`
        task.wait(1)

        identifyexecutor = function()
             return "Skid-Ware", "1.0.2"
        end

        getgenv().identifyexecutor = identifyexecutor

    task.spawn(function()
        local blockedstr = {
            "127.0.0.1",
            "127.1.0.0.1",
            "127.0.0.2",
            "192.168.1.1",
            "192.168.1.0",
            "192.168.1.11",
            `127.([^%\"]+)`,
            `192.([^%\"]+)`,
            `168.([^%\"]+)`,
            'local LinkingService = game:GetService("LinkingService")',
            'local LinkingService = game:FindService("LinkingService")',
            'local LinkingService = game.LinkingService',
            'LinkingService = game:GetService("LinkingService")',
            'LinkingService = game:FindService("LinkingService")',
            'LinkingService = game.LinkingService',
            'game:GetService("MarketplaceService"):GetRobuxBalance()',
            'game:FindService("MarketplaceService"):GetRobuxBalance()',
            'game.MarketplaceService:GetRobuxBalance()',
            'game:OpenScreenShotsFolder()',
            'game:OpenVideosFolder()',
            'game:GetService("BrowserService"):OpenBrowserWindow()',
            'game:FindService("BrowserService"):OpenBrowserWindow()',
            'game.BrowserService:OpenBrowserWindow()',
            'HttpService:RequestInternal()',
            'game.HttpService:RequestInternal()',
            'game:GetService("HttpService"):RequestInternal()',
            'game:FindService("HttpService"):RequestInternal()',
            'game:GetService("MarketplaceService"):PromptPurchase()',
            'game:FindService("MarketplaceService"):PromptPurchase()',
            'game.MarketplaceService:PromptPurchase()',
            `while true do end`,
            `while true do ([^%\"]+)`,  -- funny crashes
            `whiletruedoend`,
            `crash()`,
            'listfiles("C:\\([^"]+%)")',
            'listfiles("D:\\([^"]+%)")',
            'listfiles("E:\\([^"]+%)")',
            'listfiles("A:\\([^"]+%)")',
            'listfiles("B:\\([^"]+%)")',
            'listfiles("C:\\([^"]+%)")',
            'listfiles("D:\\([^"]+%)")',
            'listfiles("E:\\([^"]+%)")',
            'listfiles("F:\\([^"]+%)")',
            'listfiles("G:\\([^"]+%)")',
            'listfiles("H:\\([^"]+%)")',
            'listfiles("I:\\([^"]+%)")',
            'listfiles("J:\\([^"]+%)")',
            'listfiles("K:\\([^"]+%)")',
            'listfiles("L:\\([^"]+%)")',
            'listfiles("M:\\([^"]+%)")',
            'listfiles("N:\\([^"]+%)")',
            'listfiles("O:\\([^"]+%)")',
            'listfiles("P:\\([^"]+%)")',
            'listfiles("Q:\\([^"]+%)")',
            'listfiles("R:\\([^"]+%)")',
            'listfiles("S:\\([^"]+%)")',
            'listfiles("T:\\([^"]+%)")',
            'listfiles("U:\\([^"]+%)")',
            'listfiles("V:\\([^"]+%)")',
            'listfiles("W:\\([^"]+%)")',
            'listfiles("X:\\([^"]+%)")',
            'listfiles("Y:\\([^"]+%)")',
            'listfiles("Z:\\([^"]+%)")',
            'listfiles("C:\\([^"]+%)")',
            'listfiles("C:\\Windows\\System32")',
            'listfiles("C:\\Windows\\SysWOW64")',
            'writefile%("([^"]+%.dll)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.exe)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.mp3)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.mp4)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.hta)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.htm)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.html)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.url)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.bat)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.sln)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.mdl)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.sh)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.py)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.pyw)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.js)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.ogg)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.css)"%, "([^"]+)"%)',
            `local ([^%\"]+) = getfenv(game.Loaded.wait)`,
            `([^%\"]+)%.game = nil`,
            "getfenv().game = nil",
            "getgenv().game = nil",
            "getmetatable(game) = nil",
            "game:OpenScreenshotsFolder()",
            "game:GetService('HttpService'):RequestInternal()",
            "game:GetService('HttpService'):PostAsync()",
            "game:FindService('HttpService'):RequestInternal()",
            "game:FindService('HttpService'):PostAsync()",
            "game:GetService('HttpService'):GetAsync()",
            "game:FindService('HttpService'):GetAsync()",
        }

        for _, blocked in ipairs(blockedstr) do
            if FrameEditor.Text == blocked then
                warn("[SKID-WARE]: Vulnerability blocked: " .. blocked)
                FrameStatus.Text = "Execution halted."
                FrameStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
                FrameEditor.Text = ""
                return
            end
        end
    end)


        loadstring(FrameEditor.Text)()
        FrameStatus.Text = "Successfully executed script!"
        FrameStatus.TextColor3 = Color3.fromRGB(0, 255, 0)

        task.wait(2)
        FrameStatus.Text = "Awaiting execution."
        FrameStatus.TextColor3 = Color3.fromRGB(255, 255, 255)

    end)

    if not success then
        warn("[SKID-WARE]: " .. result)
        FrameStatus.Text = "Unexpected error occurred, Check the console."
        FrameStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
    end
end)

LExecuteButton.MouseButton1Click:Connect(function()
    local success, result = pcall(function()
        FrameStatus.TextColor3 = Color3.fromRGB(255, 165, 0)
        FrameStatus.Text = "Attempting to execute..."
        task.wait(0.1)

        identifyexecutor = function()
             return getexecutorname(), getver()
        end

        getgenv().identifyexecutor = identifyexecutor

    task.spawn(function()
        local blockedstr = {
            "127.0.0.1",
            "127.1.0.0.1",
            "127.0.0.2",
            "192.168.1.1",
            "192.168.1.0",
            "192.168.1.11",
            `127.([^%\"]+)`,
            `192.([^%\"]+)`,
            `168.([^%\"]+)`,
            'local LinkingService = game:GetService("LinkingService")',
            'local LinkingService = game:FindService("LinkingService")',
            'local LinkingService = game.LinkingService',
            'LinkingService = game:GetService("LinkingService")',
            'LinkingService = game:FindService("LinkingService")',
            'LinkingService = game.LinkingService',
            'game:GetService("MarketplaceService"):GetRobuxBalance()',
            'game:FindService("MarketplaceService"):GetRobuxBalance()',
            'game.MarketplaceService:GetRobuxBalance()',
            'game:OpenScreenShotsFolder()',
            'game:OpenVideosFolder()',
            'game:GetService("BrowserService"):OpenBrowserWindow()',
            'game:FindService("BrowserService"):OpenBrowserWindow()',
            'game.BrowserService:OpenBrowserWindow()',
            'HttpService:RequestInternal()',
            'game.HttpService:RequestInternal()',
            'game:GetService("HttpService"):RequestInternal()',
            'game:FindService("HttpService"):RequestInternal()',
            'game:GetService("MarketplaceService"):PromptPurchase()',
            'game:FindService("MarketplaceService"):PromptPurchase()',
            'game.MarketplaceService:PromptPurchase()',
            `while true do end`,
            `while true do ([^%\"]+)`,  -- funny crashes
            `whiletruedoend`,
            `crash()`,
            'listfiles("C:\\([^"]+%)")',
            'listfiles("D:\\([^"]+%)")',
            'listfiles("E:\\([^"]+%)")',
            'listfiles("A:\\([^"]+%)")',
            'listfiles("B:\\([^"]+%)")',
            'listfiles("C:\\([^"]+%)")',
            'listfiles("D:\\([^"]+%)")',
            'listfiles("E:\\([^"]+%)")',
            'listfiles("F:\\([^"]+%)")',
            'listfiles("G:\\([^"]+%)")',
            'listfiles("H:\\([^"]+%)")',
            'listfiles("I:\\([^"]+%)")',
            'listfiles("J:\\([^"]+%)")',
            'listfiles("K:\\([^"]+%)")',
            'listfiles("L:\\([^"]+%)")',
            'listfiles("M:\\([^"]+%)")',
            'listfiles("N:\\([^"]+%)")',
            'listfiles("O:\\([^"]+%)")',
            'listfiles("P:\\([^"]+%)")',
            'listfiles("Q:\\([^"]+%)")',
            'listfiles("R:\\([^"]+%)")',
            'listfiles("S:\\([^"]+%)")',
            'listfiles("T:\\([^"]+%)")',
            'listfiles("U:\\([^"]+%)")',
            'listfiles("V:\\([^"]+%)")',
            'listfiles("W:\\([^"]+%)")',
            'listfiles("X:\\([^"]+%)")',
            'listfiles("Y:\\([^"]+%)")',
            'listfiles("Z:\\([^"]+%)")',
            'listfiles("C:\\([^"]+%)")',
            'listfiles("C:\\Windows\\System32")',
            'listfiles("C:\\Windows\\SysWOW64")',
            'writefile%("([^"]+%.dll)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.exe)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.mp3)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.mp4)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.hta)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.htm)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.html)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.url)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.bat)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.sln)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.mdl)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.sh)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.py)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.pyw)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.js)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.ogg)"%, "([^"]+)"%)',
            'writefile%("([^"]+%.css)"%, "([^"]+)"%)',
            `local ([^%\"]+) = getfenv(game.Loaded.wait)`,
            `([^%\"]+)%.game = nil`,
            "getfenv().game = nil",
            "getgenv().game = nil",
            "getmetatable(game) = nil",
            "game:OpenScreenshotsFolder()",
            "game:GetService('HttpService'):RequestInternal()",
            "game:GetService('HttpService'):PostAsync()",
            "game:FindService('HttpService'):RequestInternal()",
            "game:FindService('HttpService'):PostAsync()",
            "game:GetService('HttpService'):GetAsync()",
            "game:FindService('HttpService'):GetAsync()",
        }

        for _, blocked in ipairs(blockedstr) do
            if FrameEditor.Text == blocked then
                warn("[SKID-WARE]: Vulnerability blocked: " .. blocked)
                FrameStatus.Text = "Execution halted."
                FrameStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
                FrameEditor.Text = ""
                return
            end
        end
    end)


        assert(loadstring(FrameEditor.Text))()
        FrameStatus.Text = "Successfully executed script!"
        FrameStatus.TextColor3 = Color3.fromRGB(0, 255, 0)

        task.wait(2)
        FrameStatus.Text = "Awaiting execution."
        FrameStatus.TextColor3 = Color3.fromRGB(255, 255, 255)

    end)

    if not success then
        warn("[SKID-WARE-LEGACY]: " .. result)
        FrameStatus.Text = "Unexpected error occurred, Check the console."
        FrameStatus.TextColor3 = Color3.fromRGB(255, 100, 100)
    end
end)



ClearButton.MouseButton1Click:Connect(function()
    FrameEditor.Text = ""
    FrameStatus.Text = "Editor cleared."
    task.wait(2)
    FrameStatus.Text = "Awaiting execution."
end)

SaveButton.MouseButton1Click:Connect(function()
    FrameStatus.Text = "Attempting to save editor content..."
     task.wait(1)
      writefile("script.txt", FrameEditor.Text)
      FrameStatus.Text = "Success! Path to file: workspace/script.txt"
end)

SetExecution.MouseButton1Click:Connect(function()
    ExecuteButton.Visible = false
    LExecuteButton.Visible = true
    FrameStatus.Text = "Setting enabled: Legacy Execution"
end)


SettingsButton.MouseButton1Click:Connect(function()
    local IsAlreadyInSettings = true
    local IsAlreadyInEditor = false
    SaveButton.Visible = false
    ClearButton.Visible = false
    ExecuteButton.Visible = false
    LExecuteButton.Visible = false
    FrameScroll.Visible = false
    FrameEditor.Visible = false
    SetExecution.Visible = true
    if IsAlreadyInSettings == true then
        FrameStatus.Text = "Menu: Settings"
    end
end)

EditorButton.MouseButton1Click:Connect(function()
    local IsAlreadyInEditor = true
    local IsAlreadyInSettings = false
    SaveButton.Visible = true
    ClearButton.Visible = true
    ExecuteButton.Visible = true
    FrameScroll.Visible = true
    FrameEditor.Visible = true
    SetExecution.Visible = false
    if IsAlreadyInEditor == true then
        FrameStatus.Text = "Menu: Editor"
    end
end)

-- <--- Dragging Things --->
local UserInputService = game:GetService("UserInputService")

local dragging = false
local dragInput, mousePos, framePos
local smoothness = 0.1

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        mousePos = input.Position
        framePos = MainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - mousePos
        local targetPos = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        local tween = TweenService:Create(MainFrame, TweenInfo.new(smoothness, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = targetPos})
        tween:Play()
    end
end)

                                  
