local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- ===== FUNGSI MASUK ARENA =====
local function JoinArena(arenaId)
    local args = {
        arenaId
    }
    game:GetService("ReplicatedStorage")
        :WaitForChild("\228\186\139\228\187\182")
        :WaitForChild("\229\133\172\231\148\168")
        :WaitForChild("\231\171\158\230\138\128\229\156\186")
        :WaitForChild("\230\140\145\230\136\152")
        :FireServer(unpack(args))
end

-- ===== FUNGSI BALIK HOME =====
local function GoHome()
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild("HumanoidRootPart")

    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("SpawnLocation") then
            hrp.CFrame = v.CFrame
            break
        end
    end
end

-- ===== URUTAN AUTO ARENA (sequential/blocking, tanpa task.spawn) =====
-- Arena 1
JoinArena(1)
task.wait(2.5)
GoHome()
task.wait(4)

-- Arena 2
JoinArena(2)
task.wait(1.5)
GoHome()
task.wait(4)

-- Arena 3
JoinArena(3)
task.wait(1.5)
GoHome()
task.wait(4)

-- Arena 4
JoinArena(4)
task.wait(1.5)
GoHome()
task.wait(4)

-- Arena 1
JoinArena(1)
task.wait(1.5)
GoHome()
task.wait(4)

-- Arena 2
JoinArena(2)
task.wait(1.5)
GoHome()
task.wait(4)

-- Arena 3
JoinArena(3)
task.wait(1.5)
GoHome()
task.wait(4)

-- Arena 4
JoinArena(4)
task.wait(1.5)
GoHome()
task.wait(4)
