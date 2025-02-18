--[[
 - Filename: Skidware-Init.lua
 - Author: RazAPI [__env on discord]
 - Description: objectvalues
 - Location: E:\Skidware\Skidware-Init.lua
 - About: Giving this init to kz0x1
 - Last updated 12:03:40 PM 2/18/2025
 - Credits: Argon, Celery (for cloneref idea), Nyx (getscript functions that i didnt even think of) nah just jk 
]]

local JestGlobals, objectPtrContainer, SkidwareieScriptContainer = game:GetService("CorePackages"):FindFirstChild("Packages").Dev.JestGlobals, Instance.new("Folder"), Instance.new("LuaSourceContainer")
local VirtualInput, objectValue, scriptValue = game:GetService("UserInputService"), Instance.new("ObjectValue"), Instance.new("ObjectValue") -- isrbxactive moment!
local Skidwareie, Sync, _assert, Rendering = {}, {}, assert Instance.new("ScreenGui")
local files = 0
local obj = objectPtrContainer

-- objectvalue hell
local getscriptbytecodevalue = Instance.new("ObjectValue")
local ObjectPtr = Instance.new("ObjectValue")
local getscripthashvalue = Instance.new("ObjectValue")
local getcallingscriptvalue = Instance.new("ObjectValue")
local getloadedmodulesvalue = Instance.new("ObjectValue")
local getscriptclosurevalue = Instance.new("ObjectValue")

objectPtrContainer.Name = "ObjectPointerContainer"
objectPtrContainer.Parent = game:GetService("CoreGui").RobloxGui.Commons
SkidwareieScriptContainer.Name = "SkidwareieScriptContainer"
SkidwareieScriptContainer.Parent = JestGlobals
SkidwareieScriptContainer.Source = ""
objectValue.Name = "Iterate"
objectValue.Parent = objectPtrContainer
ObjectPtr.Name = "Iterate"
ObjectPtr.Parent = objectPtrContainer
getscriptbytecodevalue.Name = "getscriptbytecode"
getscriptbytecodevalue.Parent = objectPtrContainer
getcallingscriptvalue.Name = "getcallingscript"
getcallingscriptvalue.Parent = obj
getscripthashvalue.Name = "getscripthashvalue"
getscripthashvalue.Parent = obj
Rendering.Name = "RobloxRenderViewService"
Rendering.Parent = game:GetService("CoreGui").RobloxGui

task.defer(function()
 for _, module in ipairs(JestGlobals.ObjectPointerContainer:GetDescendants()) do
    if module:IsA("ModuleScript") then
        ObjectPointerContainer:ClearAllChildren()
    elseif module:IsA("LocalScript") and module.Enabled == true then
        module.Disabled = true
        ObjectPointerContainer:ClearAllChildren()
    elseif module:IsA("ObjectValue") then
        module.Value = script -- Dirty stuff
    end
    return table.insert(module, Skidwareie), table.insert(module, Sync) -- hi
end


    if (script.Name == "Jest" or "JestGlobals") then -- ModuleScript -> iterate -> Source -> getValue function: 0xff19729
        local ModuleScript = Instance.new("ModuleScript")
        ModuleScript.Name = "Source_Value: 0xff1"
        ModuleScript.Parent = SkidwareieScriptContainer
        ModuleScript.Source = [[
         local new = {000, 8, 16, 32, 64, 86, 126, 128, 132, 164}; -- fill in bytecode values
         local new1 = {187, 198, 162, 209, 63, 0xff1, 0xff9, 0x2};

         task.delay(0.5, function()
            function GetScriptValue(v, _scrit)
            _assert(_scrit.ClassName == "LuaSourceContainer" or "LocalScript" or "ModuleScript", "Value #1 is not a script container")

                 if v == hash then
                    return _scrit:GetHash()
                 elseif v == bytecode then
                    local Src = game:GetService("CorePackages"):FindFirstChild("Packages").Dev.SkidwareieScriptContainer
                    Src.Source = _scrit.Source
                    return Src.Source
                 elseif v == closure then
                    return coroutine.wrap(function() return _scrit.Source end) -- wrap forward in thread? yes
                 end
                end

                if not script.Name == "VRNavigation" then
                    return GetScriptValue(game:GetService("CorePackages"):FindFirstChild("Packages").Dev.SkidwareieScriptContainer, bytecode) -- script.Parent is mostly just the ModuleScript,
                end
             return table.insert(new, new1) -- new == new1
         end)        
        ]]
         local MeNMyKup = task.spawn(function() loadstring(ModuleScript.Source, "JestGlobals")() end) -- since we are using jest method we loadstring the source and iterate it after

         task.delay(0.5, function()
             task.cancel(MeNMyKup) -- reason 1 why i put it in a thread so i can cancel
             ModuleScript:Destroy() -- Iterated now
        end)

        objectValue.Value = JestGlobals -- jest
    elseif (script.Name == "VRNavigation") then -- DataModel
        objectValue.Value = game
    elseif (script.Name == "Source") then -- Executing from source, then override the objectValue and remove all objectvalues from the container
     for _, object in pairs(JestGlobals.ObjectPointerContainer:GetDescendants())
      if object:IsA("ObjectValue") then -- target objectvalues only
        object:Destory() or objectPtrContainer:ClearAllChildren()
      end
    end
  end 
end)

function GetSource(_script2)
    _assert(_script2.ClassName == "LuaSourceContainer" or "LocalScript" or "ModuleScript", "Value #1 is not a script container")
    return tostring(_script2.Source) 
end

function GetScriptValue(_scrit, v) -- This is needed for later
    _assert(_scrit.ClassName == "LuaSourceContainer" or "LocalScript" or "ModuleScript", "Value #1 is not a script container")

         if v == hash then
            return _scrit:GetHash()
         elseif v == bytecode then
            local Src = game:GetService("CorePackages"):FindFirstChild("Packages").Dev.SkidwareieScriptContainer
            Src.Source = _scrit.Source
            return Src.Source
         elseif v == closure then
            return coroutine.wrap(function() return _scrit.Source end) -- wrap forward in thread? yes
         elseif v == secret then
            return game:GetService("HttpService"):GetSecret(_scrit) -- haha im joking this shit so buns btw... :broken_Heart:
         elseif v == wrap then
            _scrit.Name = game:GetService("HttpService"):GenerateGUID(false) -- :reverse() xd
         end

         if not script.Name == "VRNavigation" then
            return print(GetScriptValue(game:GetService("CorePackages"):FindFirstChild("Packages").Dev.SkidwareieScriptContainer, bytecode)) -- script.Parent is mostly just the ModuleScript.
        end -- sticking to the cold all these pussy niggas for the streets 
    end



local Skidware = {nm="Skidware",vr="v1.0.0", getfenv = getfenv}
local functions = Skidware
local Bridge = {serv="https://localhost:17892/action?p=", ACTIVE = true}
Bridge.__index = Bridge
Skidware.cache = {}
Skidware.crypt = {}
Skidware.crypt.base64 = {}
Skidware.Drawing = {}
Skidware.drawing = Skidware.Drawing
Skidware.rconsole = {} -- oh yeah hold on let me update
Skidware.debug = {}
table.freeze(Skidware) -- less env escapes for getgenv shit
local _G = {} -- change
local _assert = assert

-- Instances
Skidware.hui = Instance.new("Folder") -- gethui
local Skidware.Constants = Instance.new("Folder") -- getscriptclosure
Skidware.Constants.Name = "Constants"
Skidware.Constants.Parent = game:GetService("CoreGui").RobloxGui.Modules.Common
Skidware.hui.Name = "\0Skidware-hui"
Skidware.hui.Parent = game:GetService("CoreGui").RobloxGui.Commons
Skidware.hui.RobloxLocked = true
-- bridge

function Bridge:SyncFiles()
    if not files then
        error("[BRIDGE]: The file system is not responding, Retrying...", 2)
    else
        files = files + 1
    end

    local explorer = {files}
    local store = {}

   serverLink = {"https://localhost:17824/action?post=filesystem"}
   return table.insert(explorer, serverLink)
end

function Bridge:ResetFileCount()
    return files == 0, table.insert(files, async)
end

function Bridge:isgameactive()
 task.spawn(function()
   VirtualInput.WindowFocused:Connect(function()
      Bridge.ACTIVE = true
   end)

   VirtualInput.WindowFocusReleased:Connect(function() -- im hereby here to tell you that you shouldnt use this method
     Bridge.ACTIVE = true
    end)

   end)
end

function Bridge:domath(maths: number)
  return maths
end
-- misc
function Skidware.getgenv(a: number)
    return Skidware -- or {}
end

function Skidware.getrenv()
   local renv = { -- i am not writing all of it cuz im lazy
    print = print, warn = warn, error = error, select = select, pcall = pcall, xpcall = xpcall,
    getmetatable = getmetatable, setmetatable = setmetatable, rawget = rawget, rawset = rawset,
    rawlen = rawlen, assert = assert, getfenv, setfenv, self.getgenv
    -- string library
    string.char = string.char, string.byte = string.byte, string.len = string.len, string.match = string.match, string.find = string.find, string.gsub = string.gsub, string.gmatch = string.gmatch,
     string.sub = string.sub, string.reverse = string.reverse, string.pack, string.unpack
     -- table
    table.insert = table.insert, table.remove = table.remove, table.clear = table.clear,
    table.unpack = table.unpack, table.pack = table.pack, table.clone = table.clone,
    -- task 
    task.spawn = task.spawn, task.defer = task.defer, task.cancel = task.cancel, task.defer = task.defer, task.wait = task.wait,
    -- buffer
    buffer:create = buffer:create, buffer.write = buffer.write, buffer.read = buffer.read,
    -- coroutine
    coroutine.create = coroutine.create, coroutine.resume = coroutine.resume, coroutine.status = coroutine.status,
   -- math
   math.random = math.random, math.randomseed = math.randomseed, math.huge = math.huge
   -- thign
    game = game, Game = Game,
    workspace = workspace, Workspace = Workspace
    _G = {} or _G
   }

   if renv.game or renv.Game == nil then
     error("You cannot set the DataModel to a nil parameter. [0xff0]", 2)
   end
end
function Skidware.GetObject(object)
    return game:GetService("InsertService"):LoadLocalAsset(object)
end
            
function Skidware.require(id: number or function)
    local id = tonumber(id) or id
    local Object = tonumber(self.GetObject(id))
    local model = Instance.new("Part")
    local ObjectV = Instance.new("ObjectValue")

    ObjectV.Name = "Iterate"
    ObjectV.Parent = objectPtrContainer
    model.Name = "Model"
    model.Parent = game:GetService("Workspace")
    ObjectV.Value = game:GetService("Workspace").Model

    if type(id) ~= "number" or "function" then
        id = tonumber(id)
    end

    task.delay(0.5, function()
      model.Parent = game:GetService("Players").LocalPlayer.PlayerCharacterScripts
    end)

   return pcall(function(b, c)
        if not id then
            return ObjectV, model:Destroy()
        else
            return Object
        end
        return b,c
   end)
end

-- end
function Skidware.checkcaller() -- checkcaller meaning check if the current thread is owned by the user, if not return false
    local thread = coroutine.create(function() end)
    coroutine.resume(thread) -- we resume inorder to make it running

    if coroutine.status(thread) == "running" then -- do i own the thread? :think: no i own the person reading this right now
        return true
    else
        return false
    end
end

function Skidware.iscclosure(funct: function)
    local funct_metatable = getmetatable(funct) -- Since most C closure functions have a metatable in em

    if rawget(funct_metatable, "__index") then -- eitherway just setmetatable it??
        return true
    else
        return false
    end
end

function Skidware.islclosure(functi: function) -- this is shit btw i think nyx uses this method
   return xpcall(function(no, no2)
       setfenv(functi, getfenv(functi))
       return no, no2
   end)
end

function Skidware.isrbxactive()
    return Bridge.ACTIVE -- boolean
end

function Skidware.cache.invalidate(part)
   local part = Instance.new("Part")

   return part
end

function Skidware.cache.replace(part1, part2)
    return pcall(function(pig, pis) 
        part1 = part2 -- reverse this one
        return pig, pis
    end)
end

function Skidware.cache.iscached(part3) -- idk
    if part3:IsA("Part") or part3:IsA("Model") then
        return true
    else
        return false
    end
end


function Skidware.cloneref(part) --
    local p = getmetatable(part)

    if not p then
        error("Failed to protect instance: "..tostring(part.Name) or tostring(part.ClassName), 2)
        return 
    end

    p.__Index = function(t, k)
        if t and k then
            return "This metatable is locked!"
        else
            return "This metatable is locked!"
        end
    end
    p.__newindex = function(t1, k1)
        if t1 and k1 then
            return "This metatable is locked!"
        else
            return "This metatable is locked!"
        end
    end
    p.__len = function(t2, k2)
        if t2 and k2 then
            return "This metatable is locked!"
        else
            return "This metatable is locked!"
        end
    end
    p.__call = function(t3, k3)
        if t3 and k3 then
            return "This metatable is locked!"
        else
            return "This metatable is locked!"
        end
    end
    p.__concat = function(t4, k4)
        if t4 and k4 then
            return "This metatable is locked!"
        else
            return "This metatable is locked!"
        end
    end
    p.__type = function()
        return pcall(function(a, b)
            if not p.ClassName then
                return p.Name
            else
                return p.ClassName
            end
        end)
    end
    p.__metatable = function(t5, k5)
        if t5 and k5 then
            return "This metatable is locked!"
        else
            return "This metatable is locked!"
        end
    end
    p.__tostring = function(t6, k6)
        if t6 and k6 then
            return "This metatable is locked!"
        else
            return "This metatable is locked!"
        end
    end

    return p -- forgive me for what i have done...
end

function Skidware.compareinstances(InstanceClass, InstanceClass2)
    assert(typeof(InstanceClass) == "Instance", "First argument isn't an instance!")
    assert(typeof(InstanceClass2) == "Instance", "Second argument isn't an instance!") -- boing

    return InstanceClass.Name == InstanceClass2.Name -- we compare them because notice how uh it says compareinstances so we compare xd
end

function Skidware.newcclosure(id: function)
    return pcall(function(s,r)
        return coroutine.wrap(function(...)
          coroutine.yield(id(...)) -- i don't keep yielding because then it would fucking error when trying to create another function using newcclosure again
        end)
        return s,r
    end)
end


function Skidware.clonefunction(fun: function)
 return pcall(function(l,c)
    return function(...)
        return fun(...)
    end
    return l,c
  end)
end

function Skidware.identifyexecutor()
  return tostring(Skidware.nm), tostring(Skidware.vr)
end

function Skidware.gethui()
  return Skidware.hui -- line 126, some nigga thought i was returning nil
end

local blockedthing = {".exe", ".dll", ".go", ".bat", ".cmd", ".c", ".cs", ".dll.mui"}
local blockedlists = {"A:\\", "B:\\", "C:\\", "D:\\", "E:\\", "F:\\", "G:\\", "H:\\", "I:\\", "J:\\", "K:\\", "L:\\", "M:\\", "N:\\", ":O:\\", "P:\\", "Q:\\", "R:\\", "S:\\", "T:\\", "U:\\", "V:\\", "W:\\", "X:\\", "Y:\\", "Z:\\"} -- i dont know my alphabet
local files = {} -- vfsm (virtual file system)
local folders = {}

local function isblocked(file) -- this is shit blocking i dont recommend btw people can just do string.find = nil and then my career=nil
    for _, ext in ipairs(blockedthing) do
        if string.find(file, ext) then
            return true
        end
    end
    return false
end

local function islistblocked(list)
    for _, int in ipairs(blockedlists) do
        if string.find(list, int) then
            return true
        end
    end
    return false
end

function Skidware.getconnections(event: RBXScriptSignal): RBXScriptSignal
    if not event:IsA("RBXScriptSignal") then
        error("Event is not a RSS [RBXScriptSignal]", 2)
    end

   local Enable = event:Connect(function() end)
   local Connection = {}
   local ConnectionInformation = {

    ["Enabled"] = true,
    ["ForeignState"] = true,
    ["LuaConnection"] = true,
    ["Function"] = function() return select(2, getmetatable(event)) end,
    ["Thread"] = coroutine.create(function() end) or task.spawn(function() end), -- sUNC: fake thread [1] meanwhile IT IS A FUCKING THREAD?????????????????????????????????????????
    ["Fire"] = function(s) return s:Fire() end,
    ["Defer"] = function(a) return a:Defer() end,
    ["Disconnect"] = function(Connect)  return Connect:Disconnect() end,
    ["Disable"] = function(connection) return  connection:Disable() end,
    ["Enable"] = function(coen) return coen:Enable() end
}


  Skidware.getrenv().table.insert(Connection, ConnectionInformation)

   if not event:Enable() then
    event:Enable()
   else
    event:Disable()
   end
   
   return Connection -- yes.
end

function Skidware.replicatesignal(signal: RBXScriptSignal)
    local Cloned = signal:Clone()
    Cloned:Enable()

    return Cloned
end

function Skidware.getinstances()
   return task.spawn(function()
        for k,v in pairs(game:GetDescendants()) and pairs(game:GetChildren()) do
            return k,v
        end
   end)
end

function Skidware.getrunningscripts()
    local r: table: = {}
    for _, runningscript in ipairs(Skidware.getinstances()) do
        if runningscript:IsA("LocalScript") and runningscript.Enabled then
            return Skidware.getrenv().table.insert(r, runningscript)
        elseif runningscript:IsA("ModuleScript") then
            return Skidware.getrenv().table.insert(r, runningscript)
        end
    end
    return r
end

function Skidware.getloadedmodules()
    local modules = {}
    for _v, ran in pairs(game:GetDescendants())
      if ran:IsA("ModuleScript") then
        getloadedmodulesvalue.Value = ran
        return Skidware.getrenv().table.insert(modules, ran)
      else
        return ran.ClassName
    end
end

function Skidware.firesignal(signal: RBXScriptSignal)
    if not signal:IsA("RBXScriptSignal") then
        error("Signal is not a RBXScriptSignal!, This cannot be fired.")
    else
     return pcall(function()
           signal:Enable()
           signal:Fire()
      end)
    end
end

function Skidware.getcallingscript()
   getcallingscriptvalue.Value = getcallingscriptvalue
    for _, descendant in pairs(self.getinstances()) do
        if descendant:IsA("LocalScript") or descendant:IsA("ModuleScript") and descendant.Enabled == true then
           return table.insert(_, descendant)
        else
            return table.insert(_, descendant)
        end
    end
end



function Skidware.getscripthash(_script)
     _assert(_script.ClassName == "LocalScript" or "ModuleScript" or "LuaSourceContainer", "Argument #1 is not a SourceContainer")

     getscripthashvalue.Value = _script

    return _script:GetHash()
end 

function Skidware.getscriptclosure(closure)
    assert(typeof(closure) == "Instance", "Closure must be an instance or script")
    
    return function()
        return Skidware.getrenv().table.clone(self.require(closure))
    end
end

function Skidware.getgc()
    local gc = {}
    for k, v in pairs(getgenv()) or pairs(getfenv()) do
        if type(v) == "function" or 
           type(v) == "table" or 
           type(v) == "userdata" then
            table.insert(gc, {
                name = k,
                value = v,
                type = type(v)
            })
        end
    end
    return gc
end

function Skidware.getsenv(ScriptContainer) -- i honestly don't know what people use this shit for?
    local scripts = {}
   if ScriptContainer:IsA("LuaSourceContainer") or ScriptContainer:IsA("LocalScript") or ScriptContainer:IsA("ModuleScript") then
    local c = {
        ["ClassName"] = ScriptContainer.ClassName,
        ["Name"] = ScriptContainer.Name,
        ["Source"] = ScriptContainer.Source,
        ["Parent"] = ScriptContainer.Parent
    }
    return c
 end
    for a, b in pairs(getgc()) do -- garbage collect
        if type(b) == "function" or "number" then
            if getfenv(b).script == ScriptContainer then
                return getrenv(b)
            end
        end
    end
    return table.insert(scripts, c)
end

function Skidware.getmenv() -- get module environment
 local modules1 = {}
   for s, m in pairs(getfenv()) do
     if type(m) == "function" then
        return table.insert(modules1, m)
     else
        return table.clear(modules1)
      end
    end
end
function Skidware.getscriptbytecode(scripttogetbytecodefrom)
    _assert(script.ClassName == "LocalScript" or "ModuleScript" or "LuaSourceContainer", "Argument #1 is not a SourceContainer")
   
    getscriptbytecodevalue.Value = scripttogetbytecodefrom

    return pcall(function(a, b)
        task.spawn(function() return getscriptbytecodevalue.Value.Source end)
        return a, b -- pcall it
    end)
end

function Skidware.getcallbackvalue(Bind: BindableEvent, oninvoke) -- this is shit btw
       return function(...)
    end
end


function Skidware.getscripts()
    local rah: table: = {}
    for k,v in pairs(self.getinstances()) do
        if v:IsA("LocalScript") or v:IsA("ModuleScript") then
            return table.insert(rah, v)
        end
    end
end



function Skidware.getnilinstances()
    local nilinstances: table: = {} -- i love luau types

    game.DescendantRemoving:Connect(function(nilm)
        return table.insert(nilinstances, nilm)
    end)
end

function Skidware.setreadonly(t, readonly) -- whole lotta read
    assert(type(t) == "table", "1st argument isn't a table.")
    assert(type(readonly) == "boolean", "2nd argument isn't a boolean value.")
    assert(t ~= nil, "1st argument is a nil instance or is a nil table.")

    if table.isfrozen(t) and readonly then
        warn("Table is already frozen. Use isreadonly to check if a metatable/instance is readonly.")
    elseif not table.isfrozen(t) and not readonly then
        warn("Table isn't frozen. You cannot make a table/instance writable twice.")
    elseif table.isfrozen(t) and not readonly then
        return table.unfreeze(t)
    elseif not table.isfrozen(t) and readonly then
        return table.freeze(t)
    end
end

Skidware.debug.getmetatable(metatable) -- im too lazy to do the rest
   return pcall(function()
      return getmetatable(metatable)
   end)
end

Skidware.debug.setmetatable(metatable1, index) -- those who know
  local mt = getmetatable(metatable1)
  return pcall(function()
     return setmetatable(mt {
        index = __newindex or __index
     })
  end)
end

function Skidware.isreadonly(table2: table)
    return table.isfrozen(table2)
end

-- rconsole sys (since im too lazy i will just do it by using an empty screengui a bit)
function Skidware.rconsoleprint(preview)
  local Message = Instance.new("TextLabel")
   Message.Text = preview
   Message.Name = "WebView2"
   Message.Parent = Rendering
   Message.TextColor3 = Color3.fromRGB(255, 255, 255)
   Message.BackgroundTransparency = 1
   Message.TextTransparency = 0
   Message.Font = Enum.Font.Gotham
   Message.TextSize = 20
   Message.Position = UDim2.new(0, 100, 0, 100)

   task.wait(5)
   local fade = game:GetService("TweenService")
   local fadeinfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

   local lowtaper = fade:Create(Message, fadeinfo, {TextTransparency = 1})
   lowtaper:Play()
end

function Skidware.rconsoleclear()
   Rendering:ClearAllChildren()
end

function Skidware.rconsoleinput()
    return "Not implemented"
end

function Skidware.rconsoleinfo(preview)
    local Message = Instance.new("TextLabel")
   Message.Text = preview
   Message.Name = "WebView2"
   Message.Parent = Rendering
   Message.TextColor3 = Color3.fromRGB(126, 174, 252)
   Message.BackgroundTransparency = 1
   Message.TextTransparency = 0
   Message.Font = Enum.Font.Gotham
   Message.TextSize = 20
   Message.Position = UDim2.new(0, 100, 0, 100)

   task.wait(5)
   local fade = game:GetService("TweenService")
   local fadeinfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

   local lowtaper = fade:Create(Message, fadeinfo, {TextTransparency = 1})
   lowtaper:Play()
end
-- crypt

function Skidware.crypt.base64_decode(en)
    return game:GetService("HttpService"):JSONDecode(en)
end

function Skidware.crypt.base64_encode(de)
    return game:GetService("HttpService"):JSONEncode(en)
end


-- file system

function Skidware.writefile(file: string, content: string)
    if isblocked(file) then
        error(string.format("Blocked file type: %s", file), 2)
        return 0xff0
    end
    files[file] = {content = content}
end

function Skidware.makefolder(foldername: string)
    explorer[foldername] = {}
  folder[foldername] = {}

  return Skidware.getrenv().table.insert(folder, explorer)
end

function Skidware.delfolder(foldername: string)
    if folder[foldername] then
        return Skidware.getrenv().table.remove(folder, foldername)
    else
        error("Folder not found", 2)
    end
end

function Skidware.listfiles(path: string)
    if islistblocked(path) then
        error(string.format("Blocked path: %s", path), 2)
        return 0xff0
    else
      return files[path]
    end
end

function Skidware.readfile(filename: string)
    local file = files[filename]
    if file then
        return file.content
    else
        error("File not found", 2)
    end
end

function Skidware.dofile(filename: string)
    local file = files[filename]
    if file then
        return loadstring(file.content, "VirtualFileSystem")()
    else
        error("File not found", 2)
    end
end

function Skidware.loadfile(filename: string)
    local file = files[filename]
    
    if file then
        return file
    else
        error("File not found", 2)
    end
end

function Skidware.delfile(filename: string)
    if files[filename] then
        files[filename] = nil
    else
        error("File not found", 2)
    end
end

function Skidware.LoadAliases()
    Skidware.dumpstring = self.getscriptbytecode
    Skidware.getexecutorname = self.identifyexecutor
    Skidware.isgameactive = self.isrbxactive
    Skidware.deletefile = self.deletefile
    Skidware.consoleclear = self.rconsoleclear
    Skidware.consoleinput = self.rconsoleinput
    Skidware.consoledestroy = nil
    Skidware.consoleprint = self.rconsoleprint
    Skidware.consoleinfo = self.rconsoleinfo
    Skidware.crypt.base64.encode = self.crypt.base64_encode
    Skidware.crypt.base64.decode = self.crypt.base64_decode
    Skidware.getgenv(0).Skidware = Skidware
    Skidware.getfenv(0).Skidware = Skidware
    Skidware.getrenv().Skidware = Skidware
end

while task.wait(0.6) do
    Skidware.LoadAliases()
    Bridge:SyncFiles() 

    for __, descendants in ipairs(game:GetService("CoreGui").RobloxGui:FindFirstChild("Commons").ObjectPointerContainer:GetDescendants()) do
        if string.find(descendants.Name, "Iterate") then
          descendants:Destroy()
        end -- iterate the values since we dont need em anymore
    end
end
