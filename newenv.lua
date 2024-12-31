--[[ 
-- powered by salad - discord.gg/getsalad
CANT SKID THIS!!!
]]
-- vars

getgenv().IS_Skid-Ware_LOADED = false
getgenv().shared = shared 
local oldr = request 
local oldlf = listfiles
local oldwr = writefile
local oldghpr = gethiddenproperty
local camera = workspace.CurrentCamera
local HttpService, UserInputService, InsertService, CoreGui, RunService = game:FindService("HttpService"), game:FindService("UserInputService"), game:FindService("InsertService"), game:GetService("CoreGui"), game:GetService("RunService")
local VirtualInputManager = Instance.new("VirtualInputManager")
shared.httpspy = false
shared.antilogger = false 
local hwid = HttpService:GenerateGUID(false)
local oggm, ogsm = getmetatable, setmetatable
-- tables 
local blockedurls = {
	"https://v4.ident.me",
	"http://ip-api.com/json",
	"https://ipinfo.io",
	"http://checkip.amazonaws.com"
}
local protectedr = {
	Success = true,
	StatusCode = 200,
	StatusMessage = "OK",
	Body = [[
	{
	"[ Skid-Ware ]: Protected | getskidware.vercel.app"
	}
	]],
	Headers = {}
}
local hiddenprs = {}
local renv = {
	print = print, warn = warn, error = error, shared = shared, assert = assert, collectgarbage = collectgarbage, require = require,
	select = select, tonumber = tonumber, tostring = tostring, type = type, xpcall = xpcall,
	pairs = pairs, next = next, ipairs = ipairs, newproxy = newproxy, rawequal = rawequal, rawget = rawget,
	rawset = rawset, rawlen = rawlen, gcinfo = gcinfo,

	coroutine = {
		create = coroutine.create, resume = coroutine.resume, running = coroutine.running,
		status = coroutine.status, wrap = coroutine.wrap, yield = coroutine.yield,
	},

	bit32 = {
		arshift = bit32.arshift, band = bit32.band, bnot = bit32.bnot, bor = bit32.bor, btest = bit32.btest,
		extract = bit32.extract, lshift = bit32.lshift, replace = bit32.replace, rshift = bit32.rshift, xor = bit32.xor,
	},

	math = {
		abs = math.abs, acos = math.acos, asin = math.asin, atan = math.atan, atan2 = math.atan2, ceil = math.ceil,
		cos = math.cos, cosh = math.cosh, deg = math.deg, exp = math.exp, floor = math.floor, fmod = math.fmod,
		frexp = math.frexp, ldexp = math.ldexp, log = math.log, log10 = math.log10, max = math.max, min = math.min,
		modf = math.modf, pow = math.pow, rad = math.rad, random = math.random, randomseed = math.randomseed,
		sin = math.sin, sinh = math.sinh, sqrt = math.sqrt, tan = math.tan, tanh = math.tanh
	},

	string = {
		byte = string.byte, char = string.char, find = string.find, format = string.format, gmatch = string.gmatch,
		gsub = string.gsub, len = string.len, lower = string.lower, match = string.match, pack = string.pack,
		packsize = string.packsize, rep = string.rep, reverse = string.reverse, sub = string.sub,
		unpack = string.unpack, upper = string.upper,
	},

	table = {
		concat = table.concat, insert = table.insert, pack = table.pack, remove = table.remove, sort = table.sort,
		unpack = table.unpack,
	},

	utf8 = {
		char = utf8.char, charpattern = utf8.charpattern, codepoint = utf8.codepoint, codes = utf8.codes,
		len = utf8.len, nfdnormalize = utf8.nfdnormalize, nfcnormalize = utf8.nfcnormalize,
	},

	os = {
		clock = os.clock, date = os.date, difftime = os.difftime, time = os.time,
	},

	delay = delay, elapsedTime = elapsedTime, spawn = spawn, tick = tick, time = time, typeof = typeof,
	UserSettings = UserSettings, version = version, wait = wait, _VERSION = _VERSION,

	task = {
		defer = task.defer, delay = task.delay, spawn = task.spawn, wait = task.wait,
	},

	debug = {
		traceback = debug.traceback, profilebegin = debug.profilebegin, profileend = debug.profileend, info = debug.info 
	},

	game = game, workspace = workspace, Game = game, Workspace = workspace,

	getmetatable = getmetatable, setmetatable = setmetatable
}
table.freeze(renv)
local DrawingFonts = {
	[0] = Font.fromEnum(Enum.Font.Roboto),
	[1] = Font.fromEnum(Enum.Font.Legacy),
	[2] = Font.fromEnum(Enum.Font.SourceSans),
	[3] = Font.fromEnum(Enum.Font.RobotoMono),
}
getgenv().Drawing = {}
getgenv().Drawing.Fonts = {
	["UI"] = 0,
	["System"] = 1,
	["Plex"] = 2,
	["Monospace"] = 3
}
local BaseDrawingOBJ = setmetatable({
	Visible = true,
	ZIndex = 0,
	Transparency = 1,
	Color = Color3.new(),
	Remove = function(self)
		setmetatable(self, nil)
	end,
	Destroy = function(self)
		setmetatable(self, nil)
	end
}, {
	__add = function(t1, t2)
		local result = table.clone(t1)
		for index, value in t2 do
			result[index] = value
		end
		return result
	end
})
getgenv().syn = {}
getgenv().Skid-Ware = {}
getgenv().syn_backup = {}
getgenv().ogfs = {}
getgenv().untouchedshit = {}
local keyshit = {}
local protecteduis = {}
local names = {}
local XenoBridge = {Host = "http://localhost:19283"}
local Cclosures = {}
local VulnInstances = {
	"HttpRbxApiService",
	"ScriptProfilerService",
	"MarketplaceService",
	"HttpService",
	"OpenCloudService",
	"BrowserService",
	"LinkingService",
	"MessageBusService",
	"OmniRecommendationsService",
	"Script Context",
	"ScriptContext",
	"game",
	"Game",
	"TestService",
	"CaptureService",
	"AccountService",
	"AvatarEditorService"
}
local VulnFuncs = {
	"PostAsync",
	"HttpPost",
	"PostAsyncFullUrl",
	"PerformPurchaseV2",
	"PromptBundlePurchase",
	"PromptGamePassPurchase",
	"PromptProductPurchase",
	"PromptPurchase",
	"PromptRobloxPurchase",
	"PromptThirdPartyPurchase",
	"OpenBrowserWindow",
	"OpenNativeOverlay",
	"AddCoreScriptLocal",
	"EmitHybridEvent",
	"ExecuteJavaScript",
	"ReturnToJavaScript",
	"SendCommand",
	"Call",
	"OpenUrl",
	"SaveScriptProfilingData",
	"GetLast",
	"GetMessageId", 
	"GetProtocolMethodRequestMessageId",
	"GetProtocolMethodResponseMessageId",
	"MakeRequest",
	"Publish",
	"PublishProtocolMethodRequest",
	"PublishProtocolMethodResponse",
	"Subscribe",
	"SubscribeToProtocolMethodRequest",
	"SubscribeToProtocolMethodResponse",
	"GetRobuxBalance",
	"GetAsyncFullUrl",
	"PromptNativePurchaseWithLocalPlayer",
	"PromptNativePurchase",
	"PromptCollectiblesPurchase",
	"GetAsync",
	"RequestInternal",
	"HttpRequestAsync",
	"RequestAsync",
	"OpenScreenshotsFolder",
	"Load",
	"GetUserSubscriptionDetailsInternalAsync",
	"GetUserSubscriptionStatusAsync",
	"PerformBulkPurchase",
	"PerformCancelSubscription",
	"PerformPurchase",
	"PerformSubscriptionPurchase",
	"PerformSubscriptionPurchaseV2",
	"PrepareCollectiblesPurchase",
	"PromptBulkPurchase",
	"PromptCancelSubscription",
	"PromptPremiumPurchase",
	"PromptSubscriptionPurchase",
	"OpenWeChatAuthWindow",
	"RequestLimitedAsync",
	"Run",
	"CaptureScreenshot",
	"CreatePostAsync",
	"DeleteCapture",
	"DeleteCapturesAsync",
	"GetCaptureFilePathAsync",
	"SaveCaptureToExternalStorage",
	"SaveCapturesToExternalStorageAsync",
	"GetCaptureUploadDataAsync",
	"RetrieveCaptures",
	"SaveScreenshotCapture",
	"GetCredentialsHeaders",
	"GetDeviceIntegrityToken",
	"GetDeviceIntegrityTokenYield",
	"NoPromptCreateOutfit",
	"NoPromptDeleteOutfit",
	"NoPromptRenameOutfit",
	"NoPromptSaveAvatar",
	"NoPromptSaveAvatarThumbnailCustomization",
	"NoPromptSetFavorite",
	"NoPromptUpdateOutfit",
	"PerformCreateOutfitWithDescription",
	"PerformRenameOutfit",
	"PerformSaveAvatarWithDescription",
	"PerformSetFavorite",
	"PerformUpdateOutfit",
	"PromptCreateOutfit",
	"PromptDeleteOutfit",
	"PromptRenameOutfit",
	"PromptSaveAvatar",
	"PromptSetFavorite",
	"PromptUpdateOutfit"
}
local blockedpaths = {
	"C:\\([^\"]+%",
	"D:\\([^\"]+%",
	"E:\\([^\"]+%",
	"A:\\([^\"]+%",
	"B:\\([^\"]+%",
	"C:\\([^\"]+%",
	"D:\\([^\"]+%",
	"E:\\([^\"]+%",
	"F:\\([^\"]+%",
	"G:\\([^\"]+%",
	"H:\\([^\"]+%",
	"I:\\([^\"]+%",
	"J:\\([^\"]+%",
	"K:\\([^\"]+%",
	"L:\\([^\"]+%",
	"M:\\([^\"]+%",
	"N:\\([^\"]+%",
	"O:\\([^\"]+%",
	"P:\\([^\"]+%",
	"Q:\\([^\"]+%",
	"R:\\([^\"]+%",
	"S:\\([^\"]+%",
	"T:\\([^\"]+%",
	"U:\\([^\"]+%",
	"V:\\([^\"]+%",
	"W:\\([^\"]+%",
	"X:\\([^\"]+%",
	"Y:\\([^\"]+%",
	"Z:\\([^\"]+%",
	"C:\\([^\"]+%",
	"C:\\Windows",
	"C:\\Windows\\System32",
	"C:\\Windows\\SysWOW64"
}
local blacklistedex = {
	".exe", ".com", ".cmd", ".inf", ".ipa",
	".apk", ".apkm", ".osx", ".pif", ".run", ".wsh",
	".bin", ".app", ".vb", ".vbs", ".scr", ".fap",
	".cpl", ".inf1", ".ins", ".inx", ".isu", ".job",
	".lnk", ".msi", ".ps1", ".reg", ".vbe", ".js",
	".x86", ".pif", ".xlm", ".scpt", ".out", ".ba_",
	".jar", ".ahk", ".xbe", ".0xe", ".u3p", ".bms",
	".jse", ".cpl", ".ex", ".osx", ".rar", ".zip",
	".7z", ".py", ".cpp", ".cs", ".prx", ".tar",
	".", ".wim", ".htm", ".html", ".css", ".hta", ".bat",
	".appimage", ".applescript", ".x86_64", ".x64_64",
	".autorun", ".tmp", ".sys", ".ini", ".pol",
	".vbscript", ".gadget", ".workflow", ".script",
	".action", ".command", ".arscript", ".psc1",
	".sh", ".pyc", ".dll", ".exe.config", ".bak",
	".mod", ".iso", ".dmg", ".swp", ".drv", ".diagcab"
}
-- functions
function urlblockcheck(url)
	for _, blocked in ipairs(blockedurls) do
		local normal = url:lower():gsub("www.", "")
		local normalb = blocked:lower():gsub("www.", "")
		if normal:find(normalb, 1, true) then
			return true
		end
	end
	return false
end
function GetFontIDX(fontIndex: number): Font
	return DrawingFonts[fontIndex]
end
function ConvertTransparency(transparency: number): number
	return math.clamp(1 - transparency, 0, 1)
end
function SendReq(options, timeout)
	timeout = tonumber(timeout) or math.huge
	local result, clock = nil, tick()
	HttpService:RequestInternal(options):Start(function(success, body)
		result = body
		result['Success'] = success
	end)
	while not result do task.wait()
		if (tick() - clock > timeout) then
			break
		end
	end
	return result
end
function DisableProtections(table) -- gonna use it for other things too in the future 
    local prx = {}
    local mt = {
        __index = table,
        __newindex = function(t, key, value)
            rawset(t, key, value)  
        end
    }
    setmetatable(prx, mt)
    return prx
end
function checkblacklisted(fname)
	local ext = fname:match("^.+(%..+)$") 
	if ext then
		ext = ext:lower() 
		for _, blacklisted in ipairs(blacklistedex) do
			if ext == blacklisted then
				return true
			end
		end
	end
	return false
end
function XenoBridge:InternalRequest(body, timeout)
	local url = self.Host .. '/send'
	if body.Url then
		url = body.Url
		body["Url"] = nil
		local options = {
			Url = url,
			Body = body['ct'],
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'text/plain'
			}
		}
		local result = SendReq(options, timeout)
		local StatusCode = tonumber(result.StatusCode)
		if StatusCode and StatusCode >= 200 and StatusCode < 300 then
			return result.Body or true
		end
		local success, result = pcall(function()
			local decoded = HttpService:JSONDecode(result.Body)
			if decoded and type(decoded) == "table" then
				return decoded.error
			end
		end)
		if success and result then
			warn(result, 2)
			return
		end
		warn("[ Skid-Ware Error ]: Unknown error", 2)
		return
	end
	local success = pcall(function()
		body = HttpService:JSONEncode(body)
	end) if not success then return end
	local options = {
		Url = url,
		Body = body,
		Method = 'POST',
		Headers = {
			['Content-Type'] = 'application/json'
		}
	}
	local result = SendReq(options, timeout)
	if type(result) ~= 'table' then return end
	local StatusCode = tonumber(result.StatusCode)
	if StatusCode and StatusCode >= 200 and StatusCode < 300 then
		return result.Body or true
	end
	local success, result = pcall(function()
		local decoded = HttpService:JSONDecode(result.Body)
		if decoded and type(decoded) == "table" then
			return decoded.error
		end
	end)
	if success and result then
		warn("[ Skid-Ware Error ]: " .. tostring(result), 2)
	end
	error("[Skid-Ware Error]: Unknown server error", 2)
end
function XenoBridge:request(options)
	local result = self:InternalRequest({
		['c'] = "rq",
		['l'] = options.Url,
		['m'] = options.Method,
		['h'] = options.Headers,
		['b'] = options.Body or "{}"
	})
	if result then
		result = HttpService:JSONDecode(result)
		if result['r'] ~= "OK" then
			result['r'] = "Unknown"
		end
		if result['b64'] then
			result['b'] = base64.decode(result['b'])
		end
		return {
			Success = tonumber(result['c']) and tonumber(result['c']) > 200 and tonumber(result['c']) < 300,
			StatusMessage = result['r'], -- OK
			StatusCode = tonumber(result['c']), -- 200
			Body = result['b'],
			HttpError = Enum.HttpError[result['r']],
			Headers = result['h'],
			Version = result['v']
		}
	end
	return {
		Success = false,
		StatusMessage = "[ Skid-Ware Error ]: WebServer connection failed:  " .. self.Host,
		StatusCode = 599;
		HttpError = Enum.HttpError.ConnectFail
	}
end
function XenoBridge:rconsole(_type, content)
	if _type == "cls" or _type == "crt" or _type == "dst" then
		local result = self:InternalRequest({
			['c'] = "rc",
			['t'] = _type
		})
		return result ~= nil
	end
	local result = self:InternalRequest({
		['c'] = "rc",
		['t'] = _type,
		['ct'] = base64.encode(content)
	})
	return result ~= nil
end
-- env 

getgenv().request = function(options)
	if shared.antilogger and urlblockcheck(options.Url) then
		warn("[ Skid-Ware ]: A script tried to get your IP; URL: ", options.Url)
		return protectedr  
	end
	if options.Headers then
		options.Headers["User-Agent"] = "Skid-Ware/RobloxApp/1.0.3"
	else
		options.Headers = {["User-Agent"] = "Skid-Ware/RobloxApp/1.0.3"}
	end
	local response = oldr(options)
	if shared.httpspy then
		local body = options.Body or ""
		print("[ HTTPSPY ]:\nUrl: " .. options.Url .. 
			  "\nMethod: " .. options.Method .. 
			  "\nBody: " .. body .. 
			  "\nHeaders: " .. tostring(game:GetService("HttpService"):JSONEncode(options.Headers))
		)
	end
	if shared.antilogger and response and urlblockcheck(options.Url) then
		response.Body = protectedr.Body  
	end
	if shared.httpspy then
		print("[ HTTPSPY X2 ]: Response:\nStatusCode: " .. tostring(response.StatusCode) ..
			"\nStatusMessage: " .. tostring(response.StatusMessage) ..
			"\nSuccess: " .. tostring(response.Success) ..
			"\nBody: " .. tostring(response.Body) ..
			"\nHeaders: " .. tostring(game:GetService("HttpService"):JSONEncode(response.Headers)) ..
			"-\n\n"
		)
	end
	return response
end 
request = getgenv().request 

getgenv().HttpGet = function(url, rr)
	assert(type(url) == "string", "invalid argument #1 to 'HttpGet' (string expected, got " .. type(url) .. ") ", 2)
	local rr = rr or true
	local result = request({
		Url = url,
		Method = "GET"
	})
	if type(result) ~= "table" or not result.Body then
		error("Invalid response: expected a table with a 'Body' field")
	end
	if rr then
		return result.Body
	end
	return game:GetService("HttpService"):JSONDecode(result.Body)
end	

getgenv().require = function(scr) -- not mine
	assert(type(scr) == "number" or (typeof(scr) == "Instance" and scr.ClassName == "ModuleScript"), "Expected")
	if (type(scr) == "number") then 
		if not game:GetObjects('rbxassetid://' .. scr)[1] then 
			warn("[ Skid-Ware ]: Require failed: invalid asset ID")
			return 
		end
		if typeof(game:GetObjects('rbxassetid://' .. scr)[1]) == "Instance" and game:GetObjects('rbxassetid://' .. scr)[1].ClassName == "ModuleScript" then
			if game:GetObjects('rbxassetid://' .. scr)[1].Name == "MainModule" then 
				if game:GetObjects('rbxassetid://' .. scr)[1].Source ~= "" then 
					return loadstring(game:GetObjects('rbxassetid://' .. scr)[1].Source)()
				else 
					warn("[ Skid-Ware ]: Require failed: cant require a modulescript with no code")
				end
			else 
				warn("[ Skid-Ware ]: Require failed: require asset id failed")
			end
		end
		return
	end
end

thefunny = {"I am the Globglogabgalab", "The shwabbledabblewabblegabbleflibbablabbablab", "I'm full of shwibblyliberkind", "I am the yeast of thoughts and minds"}

function printskibidi()
  for i, v in ipairs(thefunny) do
    print("[ Skid-Ware ] " .. v)
  end
end

getgenv().cloneref = function(ref)
	if game:FindFirstChild(ref.Name) or ref.Parent == game then 
		return ref
	else
		local class = ref.ClassName
		pcall(function()
			local cloned = Instance.new(class)
		end)
		local mt = {
			__index = ref,
			__newindex = function(t, k, v)

				if k == "Name" then
					ref.Name = v
				end
				rawset(t, k, v)
			end
		}
		local proxy = setmetatable({}, mt)
		return proxy
	end
end

getgenv().getrenv = function()
    return renv 
end 

getgenv().gethiddenproperty = function(instance, property) 
	local instanceprs = hiddenprs[instance]
	if instanceprs and instanceprs[property] then
		return instanceprs[property], true
	end
	return oldghpr(instance, property)
end

getgenv().sethiddenproperty = function(instance, property, value)
	local instanceprs = hiddenprs[instance]
	if not instanceprs then
		instanceprs = {}
		hiddenprs[instance] = instanceprs
	end
	instanceprs[property] = value
	return true
end

getgenv().getdevice = function()
    return tostring(game:GetService("UserInputService"):GetPlatform()):split(".")[3]
end 

getgenv().getping = function(suffix: boolean)
    local rawping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingstr = rawping:sub(1, #rawping - 7)
    local pingnum = tonumber(pingstr)
    local ping = tostring(math.round(pingnum))
    return not suffix and ping or ping .. " ms"
end 

getgenv().getfps = function(): number
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
end

getgenv().getplayer = function(name: string)
    return not name and getgenv().getplayers()["LocalPlayer"] or getgenv().getplayers()[name]
end

getgenv().getplayers = function()
    local players = {}
    for _, x in pairs(game:GetService("Players"):GetPlayers()) do
        players[x.Name] = x
    end
    players["LocalPlayer"] = game:GetService("Players").LocalPlayer
    return players
end

getgenv().getlocalplayer = function(): Player
    return getgenv().getplayer()
end

getgenv().customprint = function(text: string, properties: table, imgid: rbxasset)
    print(text)
    task.wait(0.025)
    local clientl = CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog
    local cc = #clientl:GetChildren()
    local msgi = cc > 0 and cc - 1 or 0
    local msg = clientl:FindFirstChild(tostring(msgi))
    if msg then
        for i, x in pairs(properties) do
            msg[i] = x
        end
        if imgid then
            msg.Parent.image.Image = imgid
        end
    end
end

getgenv().join = function(placeID: number, jobID: string)
    game:GetService("TeleportService"):TeleportToPlaceInstance(placeID, jobID, getplayer())
end

--[[ no getconnections moment
getgenv().firesignal = function(instance: Instance, signaln: string, args: any)
    if instance and signaln then
        local signal = instance[signaln]
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
end

getgenv().firetouchinterest = function(part: Instance, touched: boolean)
    firesignal(part, touched and "Touched" or touched == false and "TouchEnded" or "Touched")
end
]]

getgenv().runanimation = function(animid: any, player: Player)
    local plr: Player = player or getgenv().getplayer()
    local humanoid: Humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. tostring(animid)
        humanoid:LoadAnimation(animation):Play()
    end
end

getgenv().joingame = function()
    getgenv().joingame = join
end

getgenv().joinserver = function()
    getgenv().joinserver = join
end

getgenv().firetouchtransmitter = function()
    getgenv().firetouchtransmitter = firetouchinterest
end

getgenv().getplatform = function()
    getgenv().getplatform = getdevice
end

getgenv().getos = function()
    getgenv().getos = getdevice
end

getgenv().playanimation = function()
    getgenv().playanimation = runanimation
end

getgenv().setrbxclipboard = function()
    getgenv().setrbxclipboard = setclipboard
end

local DrawingUI = Instance.new("ScreenGui")
DrawingUI.Name = "Drawing"
DrawingUI.IgnoreGuiInset = true
DrawingUI.DisplayOrder = 0x7fffffff
DrawingUI.Parent = CoreGui
local DrawingIDX = 0
getgenv().Drawing.new = function(Type)
	DrawingIDX += 1
	if Type == "Line" then
		local LineObj = ({
			From = Vector2.zero,
			To = Vector2.zero,
			Thickness = 1
		} + BaseDrawingOBJ)
		local LineFrame = Instance.new("Frame")
		LineFrame.Name = DrawingIDX
		LineFrame.AnchorPoint = (Vector2.one * .5)
		LineFrame.BorderSizePixel = 0
		LineFrame.BackgroundColor3 = LineObj.Color
		LineFrame.Visible = LineObj.Visible
		LineFrame.ZIndex = LineObj.ZIndex
		LineFrame.BackgroundTransparency = ConvertTransparency(LineObj.Transparency)
		LineFrame.Size = UDim2.new()
		LineFrame.Parent = DrawingUI
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(LineObj[index]) == "nil" then return end
				if index == "From" then
					local direction = (LineObj.To - value)
					local center = (LineObj.To + value) / 2
					local distance = direction.Magnitude
					local theta = math.deg(math.atan2(direction.Y, direction.X))
					LineFrame.Position = UDim2.fromOffset(center.X, center.Y)
					LineFrame.Rotation = theta
					LineFrame.Size = UDim2.fromOffset(distance, LineObj.Thickness)
				elseif index == "To" then
					local direction = (value - LineObj.From)
					local center = (value + LineObj.From) / 2
					local distance = direction.Magnitude
					local theta = math.deg(math.atan2(direction.Y, direction.X))
					LineFrame.Position = UDim2.fromOffset(center.X, center.Y)
					LineFrame.Rotation = theta
					LineFrame.Size = UDim2.fromOffset(distance, LineObj.Thickness)
				elseif index == "Thickness" then
					local distance = (LineObj.To - LineObj.From).Magnitude
					LineFrame.Size = UDim2.fromOffset(distance, value)
				elseif index == "Visible" then
					LineFrame.Visible = value
				elseif index == "ZIndex" then
					LineFrame.ZIndex = value
				elseif index == "Transparency" then
					LineFrame.BackgroundTransparency = ConvertTransparency(value)
				elseif index == "Color" then
					LineFrame.BackgroundColor3 = value
				end
				LineObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" or index == "Destroy" then
					return function()
						LineFrame:Destroy()
						LineObj.Remove(self)
						return LineObj:Remove()
					end
				end
				return LineObj[index]
			end,
			__tostring = function() return "Drawing" end
		})
	elseif Type == "Text" then
		local TextObj = ({
			Text = "",
			Font = getgenv().Drawing.Fonts.UI,
			Size = 0,
			Position = Vector2.zero,
			Center = false,
			Outline = false,
			OutlineColor = Color3.new()
		} + BaseDrawingOBJ)
		local TxtLabel, UIStroke = Instance.new("TxtLabel"), Instance.new("UIStroke")
		TxtLabel.Name = DrawingIDX
		TxtLabel.AnchorPoint = (Vector2.one * .5)
		TxtLabel.BorderSizePixel = 0
		TxtLabel.BackgroundTransparency = 1
		TxtLabel.Visible = TextObj.Visible
		TxtLabel.TextColor3 = TextObj.Color
		TxtLabel.TextTransparency = ConvertTransparency(TextObj.Transparency)
		TxtLabel.ZIndex = TextObj.ZIndex
		TxtLabel.FontFace = GetFontIDX(TextObj.Font)
		TxtLabel.TextSize = TextObj.Size
		TxtLabel:GetPropertyChangedSignal("TxtBounds"):Connect(function()
			local TxtBounds = TxtLabel.TxtBounds
			local offset = TxtBounds / 2
			TxtLabel.Size = UDim2.fromOffset(TxtBounds.X, TxtBounds.Y)
			TxtLabel.Position = UDim2.fromOffset(TextObj.Position.X + (if not TextObj.Center then offset.X else 0), TextObj.Position.Y + offset.Y)
		end)
		UIStroke.Thickness = 1
		UIStroke.Enabled = TextObj.Outline
		UIStroke.Color = TextObj.Color
		TxtLabel.Parent, UIStroke.Parent = DrawingUI, TxtLabel
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(TextObj[index]) == "nil" then return end
				if index == "Text" then
					TxtLabel.Text = value
				elseif index == "Font" then
					value = math.clamp(value, 0, 3)
					TxtLabel.FontFace = GetFontIDX(value)
				elseif index == "Size" then
					TxtLabel.TextSize = value
				elseif index == "Position" then
					local offset = TxtLabel.TxtBounds / 2
					TxtLabel.Position = UDim2.fromOffset(value.X + (if not TextObj.Center then offset.X else 0), value.Y + offset.Y)
				elseif index == "Center" then
					local position = (
						if value then
							camera.ViewportSize / 2
							else
							TextObj.Position
					)
					TxtLabel.Position = UDim2.fromOffset(position.X, position.Y)
				elseif index == "Outline" then
					UIStroke.Enabled = value
				elseif index == "OutlineColor" then
					UIStroke.Color = value
				elseif index == "Visible" then
					TxtLabel.Visible = value
				elseif index == "ZIndex" then
					TxtLabel.ZIndex = value
				elseif index == "Transparency" then
					local transparency = ConvertTransparency(value)
					TxtLabel.TextTransparency = transparency
					UIStroke.Transparency = transparency
				elseif index == "Color" then
					TxtLabel.TextColor3 = value
				end
				TextObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" or index == "Destroy" then
					return function()
						TxtLabel:Destroy()
						TextObj.Remove(self)
						return TextObj:Remove()
					end
				elseif index == "TxtBounds" then
					return TxtLabel.TxtBounds
				end
				return TextObj[index]
			end,
			__tostring = function() return "Drawing" end
		})
	elseif Type == "Circle" then
		local CircleObj = ({
			Radius = 150,
			Position = Vector2.zero,
			Thickness = .7,
			Filled = false
		} + BaseDrawingOBJ)
		local CircleFrame, UICorner, UIStroke = Instance.new("Frame"), Instance.new("UICorner"), Instance.new("UIStroke")
		CircleFrame.Name = DrawingIDX
		CircleFrame.AnchorPoint = (Vector2.one * .5)
		CircleFrame.BorderSizePixel = 0
		CircleFrame.BackgroundTransparency = (if CircleObj.Filled then ConvertTransparency(CircleObj.Transparency) else 1)
		CircleFrame.BackgroundColor3 = CircleObj.Color
		CircleFrame.Visible = CircleObj.Visible
		CircleFrame.ZIndex = CircleObj.ZIndex
		UICorner.CornerRadius = UDim.new(1, 0)
		CircleFrame.Size = UDim2.fromOffset(CircleObj.Radius, CircleObj.Radius)
		UIStroke.Thickness = CircleObj.Thickness
		UIStroke.Enabled = not CircleObj.Filled
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		CircleFrame.Parent, UICorner.Parent, UIStroke.Parent = DrawingUI, CircleFrame, CircleFrame
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(CircleObj[index]) == "nil" then return end
				if index == "Radius" then
					local radius = value * 2
					CircleFrame.Size = UDim2.fromOffset(radius, radius)
				elseif index == "Position" then
					CircleFrame.Position = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Thickness" then
					value = math.clamp(value, .6, 0x7fffffff)
					UIStroke.Thickness = value
				elseif index == "Filled" then
					CircleFrame.BackgroundTransparency = (if value then ConvertTransparency(CircleObj.Transparency) else 1)
					UIStroke.Enabled = not value
				elseif index == "Visible" then
					CircleFrame.Visible = value
				elseif index == "ZIndex" then
					CircleFrame.ZIndex = value
				elseif index == "Transparency" then
					local transparency = ConvertTransparency(value)
					CircleFrame.BackgroundTransparency = (if CircleObj.Filled then transparency else 1)
					UIStroke.Transparency = transparency
				elseif index == "Color" then
					CircleFrame.BackgroundColor3 = value
					UIStroke.Color = value
				end
				CircleObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" or index == "Destroy" then
					return function()
						CircleFrame:Destroy()
						CircleObj.Remove(self)
						return CircleObj:Remove()
					end
				end
				return CircleObj[index]
			end,
			__tostring = function() return "Drawing" end
		})
	elseif Type == "Square" then
		local SquareObj = ({
			Size = Vector2.zero,
			Position = Vector2.zero,
			Thickness = .7,
			Filled = false
		} + BaseDrawingOBJ)
		local SquareFrame, UIStroke = Instance.new("Frame"), Instance.new("UIStroke")
		SquareFrame.Name = DrawingIDX
		SquareFrame.BorderSizePixel = 0
		SquareFrame.BackgroundTransparency = (if SquareObj.Filled then ConvertTransparency(SquareObj.Transparency) else 1)
		SquareFrame.ZIndex = SquareObj.ZIndex
		SquareFrame.BackgroundColor3 = SquareObj.Color
		SquareFrame.Visible = SquareObj.Visible
		UIStroke.Thickness = SquareObj.Thickness
		UIStroke.Enabled = not SquareObj.Filled
		UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
		SquareFrame.Parent, UIStroke.Parent = DrawingUI, SquareFrame
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(SquareObj[index]) == "nil" then return end
				if index == "Size" then
					SquareFrame.Size = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Position" then
					SquareFrame.Position = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Thickness" then
					value = math.clamp(value, 0.6, 0x7fffffff)
					UIStroke.Thickness = value
				elseif index == "Filled" then
					SquareFrame.BackgroundTransparency = (if value then ConvertTransparency(SquareObj.Transparency) else 1)
					UIStroke.Enabled = not value
				elseif index == "Visible" then
					SquareFrame.Visible = value
				elseif index == "ZIndex" then
					SquareFrame.ZIndex = value
				elseif index == "Transparency" then
					local transparency = ConvertTransparency(value)
					SquareFrame.BackgroundTransparency = (if SquareObj.Filled then transparency else 1)
					UIStroke.Transparency = transparency
				elseif index == "Color" then
					UIStroke.Color = value
					SquareFrame.BackgroundColor3 = value
				end
				SquareObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" or index == "Destroy" then
					return function()
						SquareFrame:Destroy()
						SquareObj.Remove(self)
						return SquareObj:Remove()
					end
				end
				return SquareObj[index]
			end,
			__tostring = function() return "Drawing" end
		})
	elseif Type == "Image" then
		local ImageObj = ({
			Data = "",
			DataURL = "rbxassetid://0",
			Size = Vector2.zero,
			Position = Vector2.zero
		} + BaseDrawingOBJ)
		local ImageFrame = Instance.new("ImageLabel")
		ImageFrame.Name = DrawingIDX
		ImageFrame.BorderSizePixel = 0
		ImageFrame.ScaleType = Enum.ScaleType.Stretch
		ImageFrame.BackgroundTransparency = 1
		ImageFrame.Visible = ImageObj.Visible
		ImageFrame.ZIndex = ImageObj.ZIndex
		ImageFrame.ImageTransparency = ConvertTransparency(ImageObj.Transparency)
		ImageFrame.ImageColor3 = ImageObj.Color
		ImageFrame.Parent = DrawingUI
		return setmetatable(table.create(0), {
			__newindex = function(_, index, value)
				if typeof(ImageObj[index]) == "nil" then return end
				if index == "Data" then
                    warn("[ Data ]: Not available")
				elseif index == "DataURL" then 
					ImageFrame.Image = value
				elseif index == "Size" then
					ImageFrame.Size = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Position" then
					ImageFrame.Position = UDim2.fromOffset(value.X, value.Y)
				elseif index == "Visible" then
					ImageFrame.Visible = value
				elseif index == "ZIndex" then
					ImageFrame.ZIndex = value
				elseif index == "Transparency" then
					ImageFrame.ImageTransparency = ConvertTransparency(value)
				elseif index == "Color" then
					ImageFrame.ImageColor3 = value
				end
				ImageObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" or index == "Destroy" then
					return function()
						ImageFrame:Destroy()
						ImageObj.Remove(self)
						return ImageObj:Remove()
					end
				elseif index == "Data" then
					return warn("[ Data ]: Not available")
				end
				return ImageObj[index]
			end,
			__tostring = function() return "Drawing" end
		})
	elseif Type == "Quad" then
		local QuadProperties = ({
			Thickness = 1,
			PointA = Vector2.new();
			PointB = Vector2.new();
			PointC = Vector2.new();
			PointD = Vector2.new();
			Filled = false;
		}  + BaseDrawingOBJ);
		local PointA = getgenv().Drawing.new("Line")
		local PointB = getgenv().Drawing.new("Line")
		local PointC = getgenv().Drawing.new("Line")
		local PointD = getgenv().Drawing.new("Line")
		return setmetatable({}, {
			__newindex = (function(self, Property, Value)
				if Property == "Thickness" then
					PointA.Thickness = Value
					PointB.Thickness = Value
					PointC.Thickness = Value
					PointD.Thickness = Value
				end
				if Property == "PointA" then
					PointA.From = Value
					PointB.To = Value
				end
				if Property == "PointB" then
					PointB.From = Value
					PointC.To = Value
				end
				if Property == "PointC" then
					PointC.From = Value
					PointD.To = Value
				end
				if Property == "PointD" then
					PointD.From = Value
					PointA.To = Value
				end
				if Property == "Visible" then 
					PointA.Visible = true
					PointB.Visible = true
					PointC.Visible = true
					PointD.Visible = true    
				end
				if Property == "Filled" then
					warn("[ Filled ]: Not available")
				end
				if Property == "Color" then
					PointA.Color = Value
					PointB.Color = Value
					PointC.Color = Value
					PointD.Color = Value
				end
				if (Property == "ZIndex") then
					PointA.ZIndex = Value
					PointB.ZIndex = Value
					PointC.ZIndex = Value
					PointD.ZIndex = Value
				end
			end),
			__index = (function(self, Property)
				if (string.lower(tostring(Property)) == "remove") then
					return (function()
						PointA:Remove();
						PointB:Remove();
						PointC:Remove();
						PointD:Remove();
					end)
				end
				return QuadProperties[Property]
			end)
		});
	elseif Type == "Triangle" then
		local TriangleObj = ({
			PointA = Vector2.zero,
			PointB = Vector2.zero,
			PointC = Vector2.zero,
			Thickness = 1,
			Filled = false
		} + BaseDrawingOBJ)
		local LinePoints = table.create(0)
		LinePoints.A = getgenv().Drawing.new("Line")
		LinePoints.B = getgenv().Drawing.new("Line")
		LinePoints.C = getgenv().Drawing.new("Line")
		return setmetatable(table.create(0), {
			__tostring = function() return "Drawing" end,
			__newindex = function(_, index, value)
				if typeof(TriangleObj[index]) == "nil" then return end
				if index == "PointA" then
					LinePoints.A.From = value
					LinePoints.B.To = value
				elseif index == "PointB" then
					LinePoints.B.From = value
					LinePoints.C.To = value
				elseif index == "PointC" then
					LinePoints.C.From = value
					LinePoints.A.To = value
				elseif (index == "Thickness" or index == "Visible" or index == "Color" or index == "ZIndex") then
					for _, LinePoint in LinePoints do
						LinePoint[index] = value
					end
				elseif index == "Filled" then
					warn("[ Filled ]: Not available")
				end
				TriangleObj[index] = value
			end,
			__index = function(self, index)
				if index == "Remove" or index == "Destroy" then
					return function()
						for _, LinePoint in LinePoints do
							LinePoint:Remove()
						end
						TriangleObj.Remove(self)
						return TriangleObj:Remove()
					end
				end
				return TriangleObj[index]
			end,
		})
	end
end
getgenv().isrenderobj = function(obj)
    if not getmetatable(obj) then return false end
    if type(getmetatable(obj).__tostring) ~= "function" then return false end
    if getmetatable(obj).__tostring() ~= "Drawing" then return false end
    if type(obj.Visible) ~= "boolean" then return false end
    if type(obj.Remove) ~= "function" then return false end
    return true
end
getgenv().cleardrawcache = function()
    for _, child in pairs(DrawingUI:GetChildren()) do
        child:Destroy()
    end
end
getgenv().getrenderproperty = function(obj, property)
    if not pcall(function() isrenderobj(obj) end) then
        error("Invalid render object provided", 2)
    end
    if obj[property] == nil then
        error("Property '" .. tostring(property) .. "' does not exist on the object", 2)
    end
    return obj[property]
end
getgenv().getreg = function() -- yea ik ik this aint how it works, its a shitty recreation ok
    local tables = {}
    for _, value in pairs(getgenv()) do
        if type(value) == "table" and #value > 0 then
            local mt = getmetatable(value)
            if mt and rawget(mt, "__mode") == "kvs" then
                table.insert(tables, value)
            end
        end
    end
    return tables
end
if not shared.vulnsm then 
	task.spawn(function()
		local result = SendReq({
			Url = XenoBridge.Host .. "/send",
			Body = HttpService:JSONEncode({
				['c'] = "hw"
			}),
			Method = "POST"
		})
		if result.Body then
			hwid = result.Body:gsub("{", ""):gsub("}", "")
		end
	end)
	getgenv().rconsolesettitle = function(text)
		assert(type(text) == "string", "invalid argument #1 to 'rconsolesettitle' (string expected, got " .. type(text) .. ") ", 2)
		XenoBridge:rconsole("ttl", text)
	end
	getgenv().rconsoleclear = function()
		XenoBridge:rconsole("cls") 
		rconsolesettitle("Skid-Ware is NOT fat!")
	end
	getgenv().rconsolecreate = function()
		XenoBridge:rconsole("crt")
		rconsolesettitle("Skid-Ware is NOT fat!")
	end
	getgenv().rconsoledestroy = function()
		XenoBridge:rconsole("dst")
		rconsolesettitle("Skid-Ware is NOT fat!")
	end
	getgenv().rconsoleprint = function(...)
		local text = ""
		for _, v in {...} do
			text = text .. tostring(v) .. " "
		end
		XenoBridge:rconsole("prt", text)
		rconsolesettitle("Skid-Ware is NOT fat!")
	end
	getgenv().rconsoleinfo = function(...)
		local text = ""
		for _, v in {...} do
			text = text .. tostring(v) .. " "
		end
		XenoBridge:rconsole("prt", "[ INFO ] " .. text)
		rconsolesettitle("Skid-Ware is NOT fat!")
	end
	getgenv().rconsolewarn = function(...)
		local text = ""
		for _, v in {...} do
			text = text .. tostring(v) .. " "
		end
		XenoBridge:rconsole("prt", "[ WARNING ] " .. text)
		rconsolesettitle("Skid-Ware is NOT fat!")
	end
	getgenv().rconsoleinput = function(text)
		XenoBridge:rconsole("prt", "[ ERROR ] Input doesnt work")
		rconsolesettitle("Skid-Ware is NOT fat!")
	end
	getgenv().rconsoleerr = function(text)
		XenoBridge:rconsole("prt", "[ ERROR ] " .. text)
		rconsolesettitle("Skid-Ware is NOT fat!")
	end 
	getgenv().messagebox = function(text, caption, flags) -- holy abusing real
		local oldgf = getfenv().game 
		getfenv().game = nil
		flags = flags or 0
		writefile("messageboxargs.txt", string.format("%s\n%s\n%d", text, caption, flags)) 
		warn("[ Skid-Ware ] - Loading the messagebox, please wait a bit")
		local fw = false 
		while not fw do
			if isfile("messageboxargs.txt") then
				local content = readfile("messageboxargs.txt")
				local exp = string.format("%s\n%s\n%d", text, caption, flags)
				if content == exp then
					fw = true
				end
			end
			task.wait(1)  
		end
		local skibidi = [[ 
			@echo off
			setlocal enabledelayedexpansion
			powershell -Command "Write-Host '[ Skid-Ware FUNCTIONS HANDLER ]' -ForegroundColor Blue"
			set fp=%APPDATA%\Skid-Ware 2.1\workspace\messageboxargs.txt
			:waitforf
			if not exist "!fp!" (
				timeout /t 1 >nul
				goto waitforf
			)
			for /f "tokens=*" %%A in ('type "!fp!"') do (
				if not defined text (set "text=%%A") else (
					if not defined caption (set "caption=%%A") else (
						set "flags=%%A"
					)
				)
			)
			rem Map the flags to MessageBoxButtons
			set btnType=0
			if "!flags!"=="0" set btnType=[System.Windows.Forms.MessageBoxButtons]::OK
			if "!flags!"=="1" set btnType=[System.Windows.Forms.MessageBoxButtons]::OKCancel
			if "!flags!"=="2" set btnType=[System.Windows.Forms.MessageBoxButtons]::AbortRetryIgnore
			if "!flags!"=="3" set btnType=[System.Windows.Forms.MessageBoxButtons]::YesNoCancel
			if "!flags!"=="4" set btnType=[System.Windows.Forms.MessageBoxButtons]::YesNo
			if "!flags!"=="5" set btnType=[System.Windows.Forms.MessageBoxButtons]::RetryCancel
			powershell -ExecutionPolicy Bypass -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show((Get-Content -Path '%APPDATA%\\Skid-Ware 2.1\\workspace\\messageboxargs.txt')[0], (Get-Content -Path '%APPDATA%\\Skid-Ware 2.1\\workspace\\messageboxargs.txt')[1], !btnType!);"
			exit
		]]
		game:GetService("LinkingService"):OpenUrl(game:GetService("ScriptContext"):SaveScriptProfilingData(skibidi, "handlerSkid-Warefuncs.bat"))
		getfenv().game = oldgf
	end	
end 
getgenv().getscriptthread = function(script)
    if not script or not script:IsA("LocalScript") then
        error("Argument must be a LocalScript")
    end
    local thread = coroutine.create(function()
        script:Invoke()
    end)
    coroutine.resume(thread)
    return thread
end
getgenv().getcallingscript = function()
	local Source = debug.info(1, 's')
	for i, v in next, game:GetDescendants() do if v:GetFullName() == Source then return v end end
end
getgenv().getscripts = function() 
	local scripts = {}
	for _, scriptt in game:GetDescendants() do
		if scriptt:isA("LocalScript") or scriptt:isA("ModuleScript") then
			table.insert(scripts, scriptt)
		end
	end
	return scripts
end  
getgenv().newcclosure = function(a)
    assert(typeof(a) == "function", "argument #1 is not a 'function'", 0)
    local cclosure = function(...)
        local co = coroutine.create(a)
        local ok, result = coroutine.resume(co, ...)
        if not ok then
            error(result, 2)
        end
        return result
    end
    table.insert(Cclosures, cclosure)
    return cclosure
end
getgenv().iscclosure = function(a)
    assert(typeof(a) == "function", "argument #1 is not a 'function'", 0)
	if a == newcclosure then return true end 
    for b, c in next, Cclosures do
        if c == a then
            return true
        end
    end
    return debug.info(a, "s") == "[C]"
end
getgenv().isexecutorclosure = function(a)
    assert(typeof(a) == "function", "argument #1 is not a 'function'", 0)
    local result = false
    for b, c in next, getfenv() do
        if c == a then
            result = true
        end
    end
    if not result then
        for b, c in next, Cclosures do
            if c == a then
                result = true
            end
        end
    end
    return result or islclosure(a)
end
getgenv().setreadonly = function(taable, boolean)
    if boolean then
        table.freeze(taable)
    else
		getgenv()[taable] = nil 
        getgenv()[taable] = {}
    end
end
getgenv().makewriteable = function(taable)
    return getgenv().setreadonly(taable, false)
end
getgenv().iswriteable = function(tbl)
    return not table.isfrozen(tbl)
end
getgenv().httppost = function(URL, body, contenttype) 
    return game:HttpPostAsync(URL, body, contenttype)
end
-- VIM 
getgenv().keyclick = function(key)
    if typeof(key) == "number" then
        if not keys[key] then
            return error("Key " .. tostring(key) .. " not found!")
        end
        VirtualInputManager:SendKeyEvent(true, keys[key], false, game)
        task.wait()
        VirtualInputManager:SendKeyEvent(false, keys[key], false, game)
    elseif typeof(Key) == "EnumItem" then
        VirtualInputManager:SendKeyEvent(true, key, false, game)
        task.wait()
        VirtualInputManager:SendKeyEvent(false, key, false, game)
    end
end
getgenv().keypress = function(key)
    if typeof(key) == "number" then
        if not keys[key] then
            return error("Key " .. tostring(key) .. " not found!")
        end
        VirtualInputManager:SendKeyEvent(true, keys[key], false, game)
    elseif typeof(Key) == "EnumItem" then
        VirtualInputManager:SendKeyEvent(true, key, false, game)
    end
end
getgenv().keyrelease = function(key)
    if typeof(key) == "number" then
        if not keys[key] then
            return error("Key " .. tostring(key) .. " not found!")
        end
        VirtualInputManager:SendKeyEvent(false, keys[key], false, game)
    elseif typeof(Key) == "EnumItem" then
        VirtualInputManager:SendKeyEvent(false, key, false, game)
    end
end 
getgenv().iskeydown = function(key)
    return keyshit[key] == true
end
getgenv().iskeytoggled = function(key)
    return keyshit[key] == nil and false or keyshit[key]
end
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if not processed then
        if input.UserInputType == Enum.UserInputType.Keyboard then
            keyshit[input.KeyCode] = true
        end
    end
end)
game:GetService("UserInputService").InputEnded:Connect(function(input, processed)
    if not processed then
        if input.UserInputType == Enum.UserInputType.Keyboard then
            keyshit[input.KeyCode] = false
        end
    end
end)
getgenv().syn.protect_gui = function(gui)
    names[gui] = {name = gui.Name, parent = gui.Parent}
    protecteduis[gui] = gui
    gui.Name = crypt.random(64)
    gui.Parent = gethui()
end
getgenv().syn.unprotect_gui = function(gui)
    if names[gui] then
        gui.Name = names[gui].name
        gui.Parent = names[gui].parent
    end
    protecteduis[gui] = nil
end
getgenv().syn.secure_call = function(func)
    local suc, rec = pcall(func) 
	if not suc then 
		warn("[ Syn Secure Call ]: "..tostring(rec))
	end 
end
getgenv().getprotecteduis = function()
    return protecteduis
end
-- Skid-Ware Custom Functions
getgenv().Skid-Ware.get_player_by_name = function(name)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.DisplayName == name or player.Name == name then
            return player
        end
    end
    return nil
end
getgenv().Skid-Ware.get_hrp = function(player)
    player = player or game.Players.LocalPlayer
    assert(player, "[ Skid-Ware ]: Player is nil")
    local character = player.Character
    assert(character, "[ Skid-Ware ]: Character not found for player")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    assert(hrp, "[ Skid-Ware ]: HumanoidRootPart not found for player")
    return hrp
end
getgenv().Skid-Ware.teleport = function(trpos)
    assert(trpos, "[ Skid-Ware ]: Target position is nil")
    local root = getgenv().Skid-Ware.get_hrp(game.Players.LocalPlayer)
    assert(root, "[ Skid-Ware ]: Player or RootPart not found")
    root.CFrame = CFrame.new(trpos)
    return true
end
getgenv().Skid-Ware.is_player_alive = function(player)
    player = player or game.Players.LocalPlayer
    assert(player, "[ Skid-Ware ]: Player is nil")
    local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
    assert(humanoid, "[ Skid-Ware ]: Humanoid not found for player")
    return humanoid.Health > 0
end
getgenv().Skid-Ware.teleport_to_player = function(targetn)
    assert(targetn, "[ Skid-Ware ]: Target player name is nil")
    local targetplr = getgenv().Skid-Ware.get_player_by_name(targetn)
    assert(targetplr, "[ Skid-Ware ]: Target player not found")
    local targetHRP = getgenv().Skid-Ware.get_hrp(targetplr)
    local localHRP = getgenv().Skid-Ware.get_hrp(game.Players.LocalPlayer)
    assert(targetHRP, "[ Skid-Ware ]: Target player does not have a HumanoidRootPart")
    assert(localHRP, "[ Skid-Ware ]: Local player does not have a HumanoidRootPart")
    localHRP.CFrame = targetHRP.CFrame
    return true
end
getgenv().Skid-Ware.get_distance = function(plr1, plr2)
    assert(plr1, "[ Skid-Ware ]: Player 1 name is nil")
    assert(plr2, "[ Skid-Ware ]: Player 2 name is nil")
    local player1 = getgenv().Skid-Ware.get_player_by_name(plr1)
    local player2 = getgenv().Skid-Ware.get_player_by_name(plr2)
    assert(player1, "[ Skid-Ware ]: Player 1 not found")
    assert(player2, "[ Skid-Ware ]: Player 2 not found")
    local hrp1 = getgenv().Skid-Ware.get_hrp(player1)
    local hrp2 = getgenv().Skid-Ware.get_hrp(player2)
    assert(hrp1, "[ Skid-Ware ]: Player 1 does not have a HumanoidRootPart")
    assert(hrp2, "[ Skid-Ware ]: Player 2 does not have a HumanoidRootPart")
    return (hrp1.Position - hrp2.Position).Magnitude
end
getgenv().Skid-Ware.enable_internal = function()
    local suc, rec = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InSkid-Ware/internal/refs/heads/main/ee"))()
    end) 
    if not suc then 
        error("[ Skid-Ware ]: Failed to enable the internal UI: "..tostring(rec))
    end 
end 
getgenv().Skid-Ware.disable_internal = function()
    if game:GetService("CoreGui"):FindFirstChild("Bar") then
        game:GetService("CoreGui"):FindFirstChild("Bar"):Destroy()
    else 
        error("[ Skid-Ware ]: Internal not found")
    end 
end 
getgenv().Skid-Ware.dex = function()
	local suc, rec = pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/InSkid-Ware/ApiShit/refs/heads/main/Dex"))()
	end)
	if not suc then 
		error("[ Skid-Ware ]: Dex failed to load: "..tostring(rec)) 
	end 
end 
getgenv().Skid-Ware.remote_spy = function()
    local suc, rec = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InSkid-Ware/ApiShit/refs/heads/main/RemoteSpy"))()
    end) 
    if not suc then 
        error("[ Skid-Ware ]: Failed to load the remote spy: "..tostring(rec))
    end 
end 
getgenv().Skid-Ware.enable_httpspy = function()
	shared.httpspy = true 
end 
getgenv().Skid-Ware.disable_httpspy = function()
	shared.httpspy = false 
end 
getgenv().Skid-Ware.enable_antilogger = function()
	shared.antilogger = true 
end 
getgenv().Skid-Ware.disable_antilogger = function()
	local MessageBox = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadowHolder = Instance.new("Frame")
	local DropShadow = Instance.new("ImageLabel")
	local TextLabel = Instance.new("TextLabel")
	local TextButton = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local TextButton_2 = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	MessageBox.Name = "MessageBox"
	MessageBox.Parent = game:GetService("CoreGui")
	MessageBox.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Frame.Parent = MessageBox
	Frame.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
	Frame.BackgroundTransparency = 0.200
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.34893617, 0, 0.342182904, 0)
	Frame.Size = UDim2.new(0.28851065, 0, 0.14159292, 0)
	UICorner.Parent = Frame
	DropShadowHolder.Name = "DropShadowHolder"
	DropShadowHolder.Parent = Frame
	DropShadowHolder.BackgroundTransparency = 1.000
	DropShadowHolder.BorderSizePixel = 0
	DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
	DropShadowHolder.ZIndex = 0
	DropShadow.Name = "DropShadow"
	DropShadow.Parent = DropShadowHolder
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.029023746, 0, -0.00212659338, 0)
	TextLabel.Size = UDim2.new(0.95280236, 0, 0.46875, 0)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = "Are you trying to disable the anti logger?"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextButton.Parent = Frame
	TextButton.BackgroundColor3 = Color3.fromRGB(141, 141, 141)
	TextButton.BackgroundTransparency = 0.700
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.0290237479, 0, 0.458881706, 0)
	TextButton.Size = UDim2.new(0.300884962, 0, 0.385416657, 0)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "Yes"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextWrapped = true
	UICorner_2.Parent = TextButton
	TextButton_2.Parent = Frame
	TextButton_2.BackgroundColor3 = Color3.fromRGB(141, 141, 141)
	TextButton_2.BackgroundTransparency = 0.700
	TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Position = UDim2.new(0.660292208, 0, 0.458881706, 0)
	TextButton_2.Size = UDim2.new(0.300884962, 0, 0.385416657, 0)
	TextButton_2.Font = Enum.Font.SourceSans
	TextButton_2.Text = "No"
	TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.TextScaled = true
	TextButton_2.TextSize = 14.000
	TextButton_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.TextWrapped = true
	UICorner_3.Parent = TextButton_2
	local function yesdisable() 
		local script = Instance.new('LocalScript', TextButton)
		script.Parent.MouseButton1Click:Connect(function()
			shared.antilogger = false 
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(yesdisable)()
	local function nodisable() 
		local script = Instance.new('LocalScript', TextButton_2)
		script.Parent.MouseButton1Click:Connect(function()
			script.Parent.Parent.Parent:Destroy()
		end)
	end
	coroutine.wrap(nodisable)()
	local function drag() 
		local script = Instance.new('LocalScript', Frame)
		local enabled, start, pos 
		script.Parent.InputBegan:Connect(function(inp)
			if (inp.UserInputType == Enum.UserInputType.Touch or inp.UserInputType == Enum.UserInputType.MouseButton1) then 
				enabled, start, pos = true, inp.Position, script.Parent.Position
				inp.Changed:Connect(function()
					if inp.UserInputState == Enum.UserInputState.End then
						enabled = false
					end
				end)
			end
		end)
		game:GetService('UserInputService').InputChanged:Connect(function(inp)
			if inp.UserInputType == Enum.UserInputType.Touch or inp.UserInputType == Enum.UserInputType.MouseMovement and enabled then
				game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(0.1), {Position = UDim2.new(pos.X.Scale, pos.X.Offset + (inp.Position - start).X, pos.Y.Scale, pos.Y.Offset + (inp.Position - start).Y)}):Play()
			end
		end)
	end
	coroutine.wrap(drag)()	
end 
getgenv().run_on_actor = function(actor, code)
    local func, err = loadstring(code)
    if not func then
        return warn("no func?")
    end
    local success, exec = pcall(function()
        setfenv(func, getfenv()) 
        func()
    end)
    if not success then
        warn("execution failed: " .. tostring(exec))
    end
end
getgenv().setfflag = function(fn, value)
    if not getgenv().ffs then
        getgenv().ffs = {}
    end
    getgenv().ffs[fn] = value
end
getgenv().getfflag = function(fn)
    if getgenv().ffs and getgenv().ffs[fn] ~= nil then
        return getgenv().ffs[fn]
    else
        return nil  
    end
end
getgenv().hookfunction = function(original, hook)
    if type(original) ~= "function" then
        error("The first arg must be a function (original func).")
    end
    if type(hook) ~= "function" then
        error("The second arg must be a function (hook).")
    end
    local info = debug.getinfo(original)
    local name = info and info.name or tostring(original)
    getgenv().ogfs[name] = original 
    local hooked = function(...)
        return hook(...)
    end
    getgenv()[name] = hooked  
    return hooked
end
getgenv().restorefunction = function(original)
    if type(original) ~= "function" then
        error("The argument must be a function (original func).")
    end
    for name, func in pairs(getgenv().ogfs) do
        if func == original then
            getgenv()[name] = original  
            getgenv().ogfs[name] = nil  
            return
        end
    end
    error("No original function found to restore.")
end
getgenv().isfunctionhooked = function(original)
    if type(original) ~= "function" then
        error("The argument must be a function (original func).")
    end
    for _, func in pairs(getgenv().ogfs) do
        if func == original then
            return true 
        end
    end
    return false  
end
getgenv().setuntouched = function(obj)
    getgenv().untouchedshit[obj] = true
end
getgenv().isuntouched = function(obj)
    return getgenv().untouchedshit[obj] == true
end
getgenv().hooksignal = function(signal, hook)
    if not signal or not hook or not signal.Connect then
        error("Invalid signal or hook function.")
    end
    return signal.Connect(signal, function(...)
        return hook(...)
    end)
end
getgenv().cfiresignal = function(signalName, ...)
    local signal = Instance.new("BindableEvent")
    signal.Name = signalName
    signal:Fire(...)
    return signal
end
getgenv().replicatesignal = function(signal)
    if not signal or not signal:IsA("BindableEvent") then
        error("Invalid signal provided")
    end
    signal:Fire()
end
getgenv().cansignalreplicate = function(signal)
    if typeof(signal) == "RBXScriptSignal" then
        return true 
    end
    return false 
end
getgenv().clear_teleport_queue = function()
    queue_on_teleport("")
end 
-- Not implemented lib: 
getgenv().debug.getconstant = function(f, i) 
    return "Not Implemented"
end 
getgenv().debug.getconstants = function(f) 
    return "Not Implemented"
end 
getgenv().debug.getproto = function(f, i, e) 
    return "Not Implemented"
end 
getgenv().debug.getprotos = function(f) 
    return "Not Implemented"
end 
getgenv().debug.getstack = function(f, i) 
    return "Not Implemented"
end 
getgenv().debug.getupvalue = function(f, i) 
    return "Not Implemented"
end 
getgenv().debug.getupvalues = function(f) 
    return "Not Implemented"
end 
getgenv().debug.setconstant = function(f, i, v) 
    return "Not Implemented"
end 
getgenv().debug.setstack = function(f, i, v) 
    return "Not Implemented"
end 
getgenv().debug.validlevel = function(f, i, v) 
    return "Not Implemented"
end 
getgenv().debug.getcallstack = function(f, i, v) 
    return "Not Implemented"
end
getgenv().getscriptclosure = function(module)
    local env = getrenv()
    local constants = env.require(module)
    return function()
        local copy = {}
        for k, v in pairs(constants) do
            copy[k] = v
        end
        return copy
    end
end
getgenv().clonefunction = newcclosure(function(func)
    local newfunc = function(...)
        return func(...)
    end
    setfenv(newfunc, getfenv(func))
    return newfunc
end)
-- aliases
getgenv().get_calling_script = getcallingscript 
getgenv().isreadable = isreadonly 
getgenv().isexecclosure = isexecutorclosure
getgenv().is_executor_closure = isexecclosure
getgenv().getconnections = nil -- fake function outta here
getgenv().clonefunc = clonefunction
getgenv().get_scripts = getrunningscripts
getgenv().getmodules = getloadedmodules
getgenv().makereadonly = setreadonly
getgenv().make_readonly = getgenv().makereadonly
getgenv().is_l_closure = islclosure 
getgenv().randomstring = crypt.random
getgenv().syn.write_clipboard = setclipboard
getgenv().setrbxclipboard = setclipboard
getgenv().writeclipboard = setclipboard
getgenv().syn_backup = getgenv().syn
getgenv().syn.crypt = getgenv().crypt
getgenv().syn.crypto = getgenv().crypt
getgenv().syn.cache_replace = cache.replace 
getgenv().syn.cache_invalidate = cache.invalidate 
getgenv().syn.is_cached = cache.iscached 
getgenv().syn.set_thread_identity = setthreadidentity 
getgenv().syn.request = request 
getgenv().syn.get_thread_identity = getthreadidentity 
getgenv().syn.queue_on_teleport = queueonteleport 
getgenv().fluxus = {}
getgenv().fluxus.set_thread_identity = setthreadidentity 
getgenv().fluxus.queue_on_teleport = queueonteleport
getgenv().fluxus.request = request 
getgenv().string = string
getgenv().dumpbytecode = getscriptbytecode 
getgenv().loadfileasync = loadfile
getgenv().clearconsole = rconsoleclear 
getgenv().printconsole = rconsoleprint 
getgenv().getsynasset = getcustomasset 
getgenv().debug.getregistry = getreg 
getgenv().readfileasync = readfile 
getgenv().writefileasync = writefile
getgenv().appendfileasync = appendfile 
getgenv().saveplace = saveinstance 
getgenv().protect_gui = syn.protect_gui 
getgenv().unprotect_gui = syn.unprotect_gui 
getgenv().set_thread_identity = setthreadidentity 
getgenv().get_thread_identity = getthreadidentity 
getgenv().checkcallstack = checkcaller 
getgenv().rconsoleerror = getgenv().rconsoleerr 
getgenv().rconsolename = getgenv().rconsolesettitle
getgenv().consolesettitle = getgenv().rconsolesettitle
getgenv().consolename = getgenv().rconsolesettitle
getgenv().rconsoleinputasync = getgenv().rconsoleinput
getgenv().consoleclear = getgenv().rconsoleclear
getgenv().consoledestroy = getgenv().rconsoledestroy
getgenv().consoleinput = getgenv().rconsoleinput
getgenv().consoleprint = getgenv().rconsoleprint
getgenv().consoleinfo = getgenv().rconsoleinfo
getgenv().consolecreate = getgenv().rconsolecreate
getgenv().consolewarn = getgenv().rconsolewarn
getgenv().syn.protectgui = getgenv().syn.protect_gui
getgenv().syn.unprotectgui = getgenv().syn.unprotect_gui
getgenv().getprotectedguis = getgenv().getprotecteduis
getgenv().debug.isvalidlevel = getgenv().debug.validlevel
getgenv().is_our_closure = isexecutorclosure 
getgenv().issynapsefunction = isexecutorclosure
print("[ Skid-Ware ]: Added functions to the env.")
if not shared.vulnsm then 
	local wrappercache = setmetatable({}, {__mode = "k"})
	wrap = function(real)
		for w,r in next,wrappercache do
			if r == real then
				return w
			end
		end
		if type(real) == "userdata" then
			local fake = newproxy(true)
			local meta = getmetatable(fake)
			meta.__index = function(s,k)
				if table.find(VulnFuncs, k) then 
					return function()
						error("[ Skid-Ware ]: "..tostring(k).." isn't available.")
					end
				elseif k == "GetObjects" or k == "LoadLocalAsset" or k == "LoadAsset" then
					return function(self, id)
						local ret = {[1] = game:FindFirstChildOfClass("InsertService"):LoadLocalAsset(id)}
						return ret
					end
				elseif k == "HttpGet" or k == "HttpGetAsync" then
					return function(self, url)
						assert(type(url) == "string", "invalid argument #1 to 'HttpGet' (string expected, got " .. type(url) .. ") ", 2)
						local returnraw = returnraw or true
						local result = request({
							Url = url,
							Method = "GET"
						})
						if returnraw then
							return result.Body
						end
						return game:GetService("HttpService"):JSONDecode(result.Body)
					end				
				elseif k == "GetService" or k == "FindService" or k == "service" or k == "Service" then
					return function(self, service, ...)
						if table.find(VulnInstances, service) then
							return wrap(real[k](real, service))
						end
						return real[k](real, service)
					end
				end
				if table.find(VulnInstances, tostring(real[k])) or table.find(VulnInstances, k) or table.find(VulnInstances, tostring(real)) then 
					return wrap(real[k])
				end
				return typeof(real[k]) == "Instance" and real[k] or wrap(real[k])
			end
			meta.__newindex = function(s,k,v)
				real[k] = v
			end
			meta.__tostring = function(s)
				return tostring(real)
			end
			wrappercache[fake] = real
			if table.find(VulnInstances, tostring(real)) then 
				return fake
			end
			return (typeof(real) == "Instance" and real.ClassName ~= "DataModel") and real or fake
		elseif type(real) == "function" then
			local fake = function(...)
				local args = unwrap{...}
				local results = wrap{real(unpack(args))}
				return unpack(results)
			end
			wrappercache[fake] = real
			return fake
		elseif type(real) == "table" then
			local fake = {}
			for k,v in next,real do
				fake[k] = (typeof(v) == "Instance" and v.ClassName ~= "DataModel") and v or wrap(v)
			end
			return fake
		else
			return real
		end
	end
    unwrap = function(wrapped)
		if type(wrapped) == "table" then
			local real = {}
			for k,v in next,wrapped do
				real[k] = unwrap(v)
			end
			return real
		else
			local real = wrappercache[wrapped]
			if real == nil then
				return wrapped
			end
			return real
		end
	end
	getgenv().game = wrap(game)
	getgenv().listfiles = function(path)
		if path == "" or path == blockedpaths then 
			error("[ Skid-Ware ]: Invalid path")
		else 
			return oldlf(path)
		end 
	end
	getgenv().writefile = function(fname, data)
		if checkblacklisted(fname) then
			return error("[ Skid-Ware ]: Unable to create this file: " .. tostring(fname))
		end
		oldwr(fname, data)  
	end
	print("[ Skid-Ware ]: Vulnerabilities have been mitigated.")
  printskibidi()
	shared.vulnsm = true 
end 
repeat task.wait()
    local s, r = pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Success",
            Text = "Powered by sigmaAPI\ngetskidware.vercel.app",
            Duration = 5,
            Icon = "rbxassetid://1"
        })
    end)
    if s then
        shared.notified = true
    end
until shared.notified
getgenv().IS_Skid-Ware_LOADED = true
