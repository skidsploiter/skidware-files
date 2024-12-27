-- <-- Functions -->
local envurl = "https://github.com/skidsploiter/skidware-files/raw/refs/heads/main/func.lua"

function notify(desc, title, dur)
    CoreGui:SetCore("SendNotification", {
        Title = title or '[ Skidware ]';
        Text = desc or 'No Notification Description Given (error)';
        Duration = dur or 3;
    })
end

local success, result = pcall(loadstring(game:HttpGet(envurl)))
if not success then
    notify("Failed to load ENV.")
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

                                  
