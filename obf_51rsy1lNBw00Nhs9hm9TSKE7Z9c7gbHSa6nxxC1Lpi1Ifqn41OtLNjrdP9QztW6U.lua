--[[ 
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                    
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 
]]--

local v0 = string.char
local v1 = string.byte
local v2 = string.sub
local v3 = bit32 or bit
local v4 = v3.bxor
local v5 = table.concat
local v6 = table.insert

local function v7(v60, v61)
    local v62 = {}
    for v77 = 1, #v60 do
        v6(v62, v0(v4(v1(v2(v60, v77, v77 + 1)), v1(v2(v61, 1 + (v77 % #v61), 1 + (v77 % #v61) + 1))) % 256))
    end
    return v5(v62)
end

local v8 = game:GetService(v7("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"))
local v9 = game:GetService(v7("\17\216\36\246\249\49\219\35\198\249", "\156\67\173\74\165"))
local v10 = v8.LocalPlayer
local v11 = workspace.CurrentCamera
local v12 = nil
local v13 = false
local v14 = 0 - 0

local function v15()
    local v63 = 0 + 0
    local v64
    while true do
        if (v63 == (0 + 0)) then
            v64 = game:GetService(v7("\7\163\72\2\175", "\38\84\215\41\118\220\70")).Network.ServerStatsItem[v7("\116\23\54\19\190\96\31\44\21", "\158\48\118\66\114")]
            return v64:GetValue() / (204 - (14 + 188))
        end
    end
end

local v16 = v15()
v14 = v16 * (675.01 - (534 + 141))

local v17 = Instance.new(v7("\152\39\2\51\118\171\220\190\45", "\155\203\68\112\86\19\197"))
v17.Parent = game.CoreGui
v17.Name = v7("\108\206\62\208\79\123\238\223\83\212", "\152\38\189\86\156\32\24\133")

local v21 = Instance.new(v7("\218\69\166\75\249", "\38\156\55\199"))
v21.Size = UDim2.new(0 + 0, 177 + 23, 0, 100)
v21.Position = UDim2.new(1 + 0, -(462 - 242), 0 - 0, 56 - 36)
v21.BackgroundColor3 = Color3.fromRGB(0 + 0, 0, 0 + 0)
v21.BackgroundTransparency = 396.3 - (115 + 281)
v21.BorderSizePixel = 0 - 0
v21.Parent = v17

local v28 = Instance.new(v7("\157\84\95\39\1\122\255\81", "\35\200\29\28\72\115\20\154"))
v28.CornerRadius = UDim.new(0 + 0, 12)
v28.Parent = v21

local v31 = Instance.new(v7("\45\186\201\203\175\57\32\13\176\223", "\84\121\223\177\191\237\76"))
v31.Size = UDim2.new(2 - 1, 0, 0.5, 0 - 0)
v31.Text = v7("\145\69\193\238\34\84\112\238\189\80", "\161\219\54\169\192\90\48\80")
v31.TextColor3 = Color3.fromRGB(1122 - (550 + 317), 255, 255)
v31.TextScaled = true
v31.BackgroundTransparency = 1
v31.Font = Enum.Font.SourceSansBold
v31.Parent = v21

local v40 = Instance.new(v7("\125\71\24\49\107\77\24", "\69\41\34\96"))
v40.Size = UDim2.new(1, -(28 - 8), 0.3, 0)
v40.Position = UDim2.new(0, 14 - 4, 0.6 - 0, 285 - (134 + 151))
v40.Text = tostring(v14)
v40.PlaceholderText = v7("\143\198\195\74\50\57\185\199\222\9\22\34\179\205", "\75\220\163\183\106\98")
v40.TextColor3 = Color3.fromRGB(1920 - (970 + 695), 486 - 231, 2245 - (582 + 1408))
v40.BackgroundColor3 = Color3.fromRGB(30, 104 - 74, 30)
v40.TextScaled = true
v40.Font = Enum.Font.SourceSansBold
v40.ClearTextOnFocus = false
v40.Parent = v21

local v51 = Instance.new(v7("\55\147\168\56\203\12\191\153", "\185\98\218\235\87"))
v51.CornerRadius = UDim.new(0 - 0, 30 - 22)
v51.Parent = v40

local function v54(v65)
    if v65 then
        v31.Text = v7("\225\47\47\168\198\174\139\19\41", "\202\171\92\71\134\190")
    else
        v31.Text = v7("\3\210\36\198\49\197\108\167\47\199", "\232\73\161\76")
    end
end

local function v55(v66, v67)
    local v68 = 1824 - (1195 + 629)
    local v69
    while true do
        if (v68 == (0 - 0)) then
            v69 = ((v66 == v7("\151\214\65\86", "\126\219\185\34\61")) and (v7("\38\221\86\60\102\115\179\195\9\221\74\96\113\110\250\233\11\142", "\135\108\174\62\18\30\23\147") .. v67)) or (v7("\156\250\34\133\0\170\115\244\166\232\56\206\28\238", "\167\214\137\74\171\120\206\83") .. v67)
            game.StarterGui:SetCore(v7("\184\245\60\89\214\168\159\249\52\84\251\166\159\249\61\83", "\199\235\144\82\61\152"), {[v7("\51\31\173\39\2", "\75\103\118\217")] = v7("\237\71\120\90\161\26", "\126\167\52\16\116\217"), [v7("\252\43\56\148", "\156\168\78\64\224\212\121")] = v69, [v7("\35\251\183\207\19\231\170\192", "\174\103\142\197")] = 244 - (187 + 54)})
            break
        end
    end
end

local function v56(v70, v71)
    if v71 then
        local v82 = 780 - (162 + 618)
        local v83
        while true do
            if (v82 == (0 + 0)) then
                v83 = Instance.new(v7("\126\33\88\48\41\87\255\94\60", "\152\54\72\63\88\69\62"))
                v83.FillColor = Color3.fromRGB(170 + 85, 0 - 0, 0 - 0)
                v82 = 1 + 0
            end
            if (v82 == (1637 - (1373 + 263))) then
                v83.OutlineColor = Color3.fromRGB(255, 1255 - (451 + 549), 81 + 174)
                v83.Parent = v70.Character
                break
            end
        end
    else
        local v84 = 0 - 0
        local v85
        while true do
            if (v84 == (0 - 0)) then
                v85 = v70.Character:FindFirstChild(v7("\252\205\233\84\216\205\233\84\192", "\60\180\164\142"))
                if v85 then
                    v85:Destroy()
                end
                break
            end
        end
    end
end

local function v57()
    local v72 = math.huge
    local v73 = nil
    for v78, v79 in pairs(v8:GetPlayers()) do
        if ((v79 ~= v10) and v79.Character and v79.Character:FindFirstChild(v7("\112\75\8\40\41\226\27\92\108\10\38\51\221\19\74\74", "\114\56\62\101\73\71\141"))) then
            local v89 = (v10.Character.HumanoidRootPart.Position - v79.Character.HumanoidRootPart.Position).Magnitude
            if (v89 < v72) then
                v72 = v89
                v73 = v79
            end
        end
    end
    return v73
end

local function v58()
    local v74 = 0 + 0
    local v75
    while true do
        if (v74 == 0) then
            v75 = v57()
            if (v75 and v75.Character) then
                v12 = v75
                v55(v7("\148\230\216\207", "\164\216\137\187"), v12.DisplayName)
                v56(v12, true)
                v9:BindToRenderStep(v7("\241\231\60\190\169\253\0", "\107\178\134\81\210\198\158"), Enum.RenderPriority.Camera.Value + 1, function()
                    if (v12 and v12.Character and v12.Character:FindFirstChild(v7("\16\27\143\199\164\55\7\134\244\165\55\26\178\199\184\44", "\202\88\110\226\166"))) then
                        v11.CFrame = CFrame.new(v11.CFrame.Position, v12.Character.HumanoidRootPart.Position + (v12.Character.HumanoidRootPart.Velocity * v14))
                    end
                end)
                v13 = true
                v54(true)
            end
            break
        end
    end
end

local function v59()
    if v12 then
        v55(v7("\246\1\142\248\201\200", "\170\163\111\226\151"), v12.DisplayName)
        v56(v12, false)
        v9:UnbindFromRenderStep(v7("\50\49\191\52\65\52\34", "\73\113\80\210\88\46\87"))
        v12 = nil
        v13 = false
        v54(false)
    end
end

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton3 then  -- MButton1 (middle mouse button)
        if v13 then
            v59()  -- Unlock the target
        else
            v58()  -- Lock onto the target
        end
    end
end)

v40.FocusLost:Connect(function(v76)
    if v76 then
        local v86 = 0 - 0
        local v87
        while true do
            if (v86 == (341 - (218 + 123))) then
                v87 = tonumber(v40.Text)
                if v87 then
                    v14 = v87
                    game.StarterGui:SetCore(v7("\178\41\195\22\201\142\56\196\20\238\130\45\217\27\232\143", "\135\225\76\173\114"), {[v7("\46\228\172\188\169", "\199\122\141\216\208\204\221")] = v7("\135\206\24\190\96\242", "\150\205\189\112\144\24"), [v7("\17\129\167\88", "\112\69\228\223\44\100\232\113")] = v7("\228\13\2\215\191\127\146\221\16\9\147\165\121\146\148\11\8\137\246", "\230\180\127\103\179\214\28") .. v87, [v7("\168\16\77\71\240\72\239\130", "\128\236\101\63\38\132\33")] = 3})
                    break
                end
            end
        end
    end
end)

game.StarterGui:SetCore(v7("\107\37\125\248\116\79\76\41\117\245\89\65\76\41\124\242", "\32\56\64\19\156\58"), {[v7("\110\193\241\90\95", "\224\58\168\133\54\58\146")] = v7("\115\69\67\179\109\130", "\107\57\54\43\157\21\230\231"), [v7("\239\142\9\225", "\175\187\235\113\149\217\188")] = v7("\29\185\132\94\226\126\125\124\159\136\66\228\35\56", "\24\92\207\225\44\131\25") .. v16 .. v7("\70\192", "\29\43\179\216\44\123"), [v7("\153\204\50\77\169\208\47\66", "\44\221\185\64")] = 5})