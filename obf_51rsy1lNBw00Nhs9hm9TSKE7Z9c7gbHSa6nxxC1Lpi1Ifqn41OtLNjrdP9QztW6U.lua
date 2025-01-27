--[[ 
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
 
  Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 
]]

local v0=string.char
local v1=string.byte
local v2=string.sub
local v3=bit32 or bit
local v4=v3.bxor
local v5=table.concat
local v6=table.insert
local function v7(v60,v61) 
    local v62={}
    for v77=1, #v60 do
        v6(v62,v0(v4(v1(v2(v60,v77,v77 + 1 )),v1(v2(v61,1 + (v77% #v61) ,1 + (v77% #v61) + 1 )))%256 ))
    end
    return v5(v62)
end

local v8=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"))
local v9=game:GetService(v7("\17\216\36\246\249\49\219\35\198\249","\156\67\173\74\165"))
local v10=v8.LocalPlayer
local v11=workspace.CurrentCamera
local v12=nil
local v13=false
local v14=0 -0

local function v15() 
    local v63=0 + 0
    local v64
    while true do 
        if (v63==(0 + 0)) then 
            v64=game:GetService(v7("\7\163\72\2\175","\38\84\215\41\118\220\70")).Network.ServerStatsItem[v7("\116\23\54\19\190\96\31\44\21","\158\48\118\66\114")]
            return v64:GetValue()/(204 -(14 + 188)) 
        end 
    end
end

local v16=v15()
v14=v16 * (675.01 -(534 + 141)) 

local v17=Instance.new(v7("\152\39\2\51\118\171\220\190\45","\155\203\68\112\86\19\197"))
v17.Parent=game.CoreGui
v17.Name=v7("\108\206\62\208\79\123\238\223\83\212","\152\38\189\86\156\32\24\133")

-- Lock on functionality for "C" key press (Hold)
local function lockOnPlayer(targetPlayer)
    local function lockCamera()
        v11.CFrame = CFrame.new(v11.CFrame.Position, targetPlayer.Character.HumanoidRootPart.Position)
    end
    v9:BindToRenderStep("LockOn", Enum.RenderPriority.Camera.Value + 1, lockCamera)
end

local function stopLockOnPlayer()
    v9:UnbindFromRenderStep("LockOn")
end

-- Key press detection for "C"
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.C then
        -- When "C" is pressed, start locking onto the closest player
        if not v13 then  -- Lock only if it's not already locked
            local closestPlayer = v57()  -- Find the closest player to lock on
            if closestPlayer then
                v12 = closestPlayer
                lockOnPlayer(closestPlayer)  -- Lock on the found player
                v13 = true  -- Lock is now active
            end
        end
    end
end)

-- Key release detection for "C" to stop locking
game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.C then
        -- When "C" is released, stop locking
        if v13 then
            stopLockOnPlayer()
            v12 = nil
            v13 = false
        end
    end
end)

-- Continue the rest of your script as before...
