local RandomEncounter = require("RandomEncounter")

local player = nil
local PlayerController = nil
local ModEnable = true

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(Context, pawn)
    local pawnname = pawn:get():GetFullName()
    if pawnname:find("DefaultEmptyPawn_C") then-- trash when start game
        return
    elseif pawnname:find("Unit_Player_Wukong_C") then -- player
        PlayerController = Context:get()
        player=pawn:get()
    end
end)

local BGUFunctionLibraryCS = nil
local UKismetMathLibrary = nil

function IsNilOrInvalid(obj)
    return obj == nil or not obj:IsValid()
end

function Initialize()

    if IsNilOrInvalid(BGUFunctionLibraryCS) then
        BGUFunctionLibraryCS = StaticFindObject("/Script/b1-Managed.Default__BGUFunctionLibraryCS")
        if not BGUFunctionLibraryCS:IsValid() then
            BGUFunctionLibraryCS = nil
        end
    end

    if IsNilOrInvalid(UKismetMathLibrary) then
        UKismetMathLibrary = StaticFindObject("/Script/Engine.Default__KismetMathLibrary")
        if not UKismetMathLibrary:IsValid() then
            UKismetMathLibrary = nil
        end
    end
end

local context = nil

local monsterKeys = {}
for k, v in pairs(RandomEncounter.MonsterList) do
    table.insert(monsterKeys, k)
end

if RandomEncounter.RandomRate < 0 then
    RandomEncounter.RandomRate = 0
elseif RandomEncounter.RandomRate > 100 then
    RandomEncounter.RandomRate = 100
end

ExecuteWithDelay(10000, function()

    RegisterHook("/Script/b1.BGUCharacter:FullyInit", function(Context)

        if ModEnable then
            Initialize()
            local BPPlayerController = FindFirstOf("BP_B1PlayerController_C")
            local bpPlayer = BPPlayerController.pawn

            local curCharacter = Context:get()

            if not IsNilOrInvalid(bpPlayer) then
            
                if not IsNilOrInvalid(curCharacter) and not curCharacter:GetFullName():find("Unit_Player_Wukong_C") then

                    if curCharacter:GetTamerOwner().TamerType == 1 then

                        if RandomEncounter.RandomRate ~= 0 then
                            local isSpawnRandom = math.random(1, 100) <= RandomEncounter.RandomRate

                            if isSpawnRandom then
                                local random = math.random(RandomEncounter.RandomCount.Min, RandomEncounter.RandomCount.Max)

                                for i = 1, random do
                                    local monsterKey = monsterKeys[math.random(#monsterKeys)]
                                    assetPath = RandomEncounter.MonsterList[monsterKey]

                                    local asset = LoadAsset(assetPath)

                                    if not IsNilOrInvalid(asset) then

                                        local spawnLoc = curCharacter:K2_GetActorLocation()
                                        local spawnRot = curCharacter:K2_GetActorRotation()

                                        local tamer = BGUFunctionLibraryCS:BGUSpawnActor(BPPlayerController:GetWorld(), asset, spawnLoc, spawnRot)
                                        tamer.TamerType = 2
                                    end
                                end
                            end
                        end

                    end
                end
            end
        end
    end)
end)

RegisterKeyBind(Key.F1, function()
    ModEnable = not ModEnable
end)