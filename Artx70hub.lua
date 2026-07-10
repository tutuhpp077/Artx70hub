-- Artx70hub Base
-- Template idêntico ao chilli hub

if getgenv().Artx70hubLoaded then
    warn("Artx70hub já está rodando!")
    return
end
getgenv().Artx70hubLoaded = true

-- Exemplo de interface
local Library = {}
Library.__index = Library

function Library:CreateWindow(title)
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")

    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
    Frame.Size = UDim2.new(0, 400, 0, 250)
    Frame.Position = UDim2.new(0.5, -200, 0.5, -125)

    Title.Parent = Frame
    Title.Text = title or "Artx70hub"
    Title.Size = UDim2.new(1,0,0,50)
    Title.BackgroundColor3 = Color3.fromRGB(40,40,40)
    Title.TextColor3 = Color3.fromRGB(255,255,255)
    Title.Font = Enum.Font.SourceSansBold
    Title.TextScaled = true

    return Frame
end

-- Exemplo de uso
local win = Library:CreateWindow("Artx70hub")
