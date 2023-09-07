local ver = "v0.3.4" -- script by: "LeviTheOtaku"

local FTFHAX = Instance.new("ScreenGui")
local MenusTabFrame = Instance.new("Frame")
local CheatButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local ESPMenuWindow = Instance.new("Frame")
local Body = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local ButtonsFrame = Instance.new("Frame")
local BestPCESPButton = Instance.new("TextButton")
local PCESPButton = Instance.new("TextButton")
local TbdButton = Instance.new("TextButton")
local PlayerESPButton = Instance.new("TextButton")
local PodsESPButton = Instance.new("TextButton")
local ExitsESPButton = Instance.new("TextButton")
local UIGridLayout = Instance.new("UIGridLayout")
local TopBar = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local BackButton = Instance.new("TextButton")
local CreditTotalText = Instance.new("TextLabel")
local PageTitleText = Instance.new("TextLabel")
local MainMenuWindow = Instance.new("Frame")
local TopBar_2 = Instance.new("Frame")
local CloseButton_2 = Instance.new("TextButton")
local CreditTotalText_2 = Instance.new("TextLabel")
local PageTitleText_2 = Instance.new("TextLabel")
local Body_2 = Instance.new("Frame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local ESPButton = Instance.new("ImageButton")
local BottomText = Instance.new("TextLabel")
local TempIcon = Instance.new("ImageLabel")
local ToolsButton = Instance.new("ImageButton")
local BottomText_2 = Instance.new("TextLabel")
local TempIcon_2 = Instance.new("ImageLabel")
local ToolsMenuWindow = Instance.new("Frame")
local Body_3 = Instance.new("Frame")
local TitleLabel_2 = Instance.new("TextLabel")
local ButtonsFrame_2 = Instance.new("Frame")
local UIGridLayout_3 = Instance.new("UIGridLayout")
local NeverFailButton = Instance.new("TextButton")
local AutoPlayButton = Instance.new("TextButton")
local AutoInteractButton = Instance.new("TextButton")
local BeastCamButton = Instance.new("TextButton")
local TopBar_3 = Instance.new("Frame")
local CloseButton_3 = Instance.new("TextButton")
local BackButton_2 = Instance.new("TextButton")
local CreditTotalText_3 = Instance.new("TextLabel")
local PageTitleText_3 = Instance.new("TextLabel")
local ViewportFrame = Instance.new("ViewportFrame")

FTFHAX.Name = "FTFHAX"
FTFHAX.Parent = game.CoreGui

MenusTabFrame.Name = "MenusTabFrame"
MenusTabFrame.Parent = FTFHAX
MenusTabFrame.AnchorPoint = Vector2.new(1, 0.5)
MenusTabFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MenusTabFrame.BackgroundTransparency = 1.000
MenusTabFrame.BorderColor3 = Color3.fromRGB(63, 63, 63)
MenusTabFrame.BorderSizePixel = 0
MenusTabFrame.Position = UDim2.new(1, 0, 0.5, 0)
MenusTabFrame.Size = UDim2.new(0.0799999982, 0, 0.159999996, 0)
MenusTabFrame.SizeConstraint = Enum.SizeConstraint.RelativeYY

CheatButton.Name = "CheatButton"
CheatButton.Parent = MenusTabFrame
CheatButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CheatButton.BackgroundTransparency = 0.500
CheatButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CheatButton.BorderSizePixel = 0
CheatButton.Position = UDim2.new(0, 0, 1, 0)
CheatButton.Size = UDim2.new(1, 0, 1, 0)
CheatButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
CheatButton.Image = "rbxassetid://11570895459"
CheatButton.ImageColor3 = Color3.fromRGB(223, 223, 223)

TextLabel.Parent = CheatButton
TextLabel.AnchorPoint = Vector2.new(0, 1)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 1, 0)
TextLabel.Size = UDim2.new(1, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "ftfhax"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 12.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true
TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

ESPMenuWindow.Name = "ESPMenuWindow"
ESPMenuWindow.Parent = FTFHAX
ESPMenuWindow.AnchorPoint = Vector2.new(0.5, 0.5)
ESPMenuWindow.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
ESPMenuWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPMenuWindow.BorderSizePixel = 2
ESPMenuWindow.ClipsDescendants = true
ESPMenuWindow.Position = UDim2.new(0.5, 0, 0.5, -18)
ESPMenuWindow.Size = UDim2.new(0, 480, 0, 175)
ESPMenuWindow.SizeConstraint = Enum.SizeConstraint.RelativeYY
ESPMenuWindow.Visible = false

Body.Name = "Body"
Body.Parent = ESPMenuWindow
Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body.BackgroundTransparency = 1.000
Body.BorderSizePixel = 0
Body.Position = UDim2.new(0, 0, 0, 40)
Body.Size = UDim2.new(1, 0, 1, -40)

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = Body
TitleLabel.AnchorPoint = Vector2.new(0.5, 0)
TitleLabel.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TitleLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.BorderSizePixel = 0
TitleLabel.Position = UDim2.new(0.5, 0, -1.06500006, 150)
TitleLabel.Size = UDim2.new(1, -10, 0.0235044118, 30)
TitleLabel.Text = "ESP"
TitleLabel.TextColor3 = Color3.fromRGB(149, 255, 237)
TitleLabel.TextScaled = true
TitleLabel.TextSize = 14.000
TitleLabel.TextWrapped = true

ButtonsFrame.Name = "ButtonsFrame"
ButtonsFrame.Parent = Body
ButtonsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonsFrame.BackgroundTransparency = 1.000
ButtonsFrame.Position = UDim2.new(0, 5, 0, 45)
ButtonsFrame.Size = UDim2.new(1, -10, -0.00555555569, 85)

BestPCESPButton.Name = "BestPCESPButton"
BestPCESPButton.Parent = ButtonsFrame
BestPCESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
BestPCESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
BestPCESPButton.BorderSizePixel = 0
BestPCESPButton.LayoutOrder = 4
BestPCESPButton.Size = UDim2.new(0, 200, 0, 50)
BestPCESPButton.Text = "Best PC"
BestPCESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BestPCESPButton.TextScaled = true
BestPCESPButton.TextSize = 14.000
BestPCESPButton.TextWrapped = true

PCESPButton.Name = "PCESPButton"
PCESPButton.Parent = ButtonsFrame
PCESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
PCESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PCESPButton.BorderSizePixel = 0
PCESPButton.Size = UDim2.new(0, 200, 0, 50)
PCESPButton.Text = "PC"
PCESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PCESPButton.TextScaled = true
PCESPButton.TextSize = 14.000
PCESPButton.TextWrapped = true

TbdButton.Name = "TbdButton"
TbdButton.Parent = ButtonsFrame
TbdButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
TbdButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TbdButton.BorderSizePixel = 0
TbdButton.LayoutOrder = 5
TbdButton.Size = UDim2.new(0, 200, 0, 50)
TbdButton.Visible = false
TbdButton.Text = "nothing"
TbdButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TbdButton.TextScaled = true
TbdButton.TextSize = 14.000
TbdButton.TextWrapped = true

PlayerESPButton.Name = "PlayerESPButton"
PlayerESPButton.Parent = ButtonsFrame
PlayerESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
PlayerESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerESPButton.BorderSizePixel = 0
PlayerESPButton.LayoutOrder = 1
PlayerESPButton.Size = UDim2.new(0, 200, 0, 50)
PlayerESPButton.Text = "Player"
PlayerESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerESPButton.TextScaled = true
PlayerESPButton.TextSize = 14.000
PlayerESPButton.TextWrapped = true

PodsESPButton.Name = "PodsESPButton"
PodsESPButton.Parent = ButtonsFrame
PodsESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
PodsESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PodsESPButton.BorderSizePixel = 0
PodsESPButton.LayoutOrder = 2
PodsESPButton.Size = UDim2.new(0, 200, 0, 50)
PodsESPButton.Text = "Pods"
PodsESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PodsESPButton.TextScaled = true
PodsESPButton.TextSize = 14.000
PodsESPButton.TextWrapped = true

ExitsESPButton.Name = "ExitsESPButton"
ExitsESPButton.Parent = ButtonsFrame
ExitsESPButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
ExitsESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitsESPButton.BorderSizePixel = 0
ExitsESPButton.LayoutOrder = 3
ExitsESPButton.Size = UDim2.new(0, 200, 0, 50)
ExitsESPButton.Text = "Exits"
ExitsESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitsESPButton.TextScaled = true
ExitsESPButton.TextSize = 14.000
ExitsESPButton.TextWrapped = true

UIGridLayout.Parent = ButtonsFrame
UIGridLayout.FillDirection = Enum.FillDirection.Vertical
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 6, 0, 6)
UIGridLayout.CellSize = UDim2.new(0, 152, 0, 39)

TopBar.Name = "TopBar"
TopBar.Parent = ESPMenuWindow
TopBar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 40)
TopBar.ZIndex = 5

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopBar
CloseButton.AnchorPoint = Vector2.new(1, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(191, 191, 191)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -1, 0, 1)
CloseButton.Size = UDim2.new(0, 36, 0, 36)
CloseButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseButton.ZIndex = 5
CloseButton.Modal = true
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true

BackButton.Name = "BackButton"
BackButton.Parent = TopBar
BackButton.AnchorPoint = Vector2.new(1, 0)
BackButton.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
BackButton.BorderColor3 = Color3.fromRGB(191, 191, 191)
BackButton.BorderSizePixel = 0
BackButton.Position = UDim2.new(1, -41, 0, 1)
BackButton.Size = UDim2.new(1, -4, 1, -4)
BackButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
BackButton.ZIndex = 5
BackButton.Text = "<"
BackButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BackButton.TextScaled = true
BackButton.TextSize = 14.000
BackButton.TextWrapped = true

CreditTotalText.Name = "CreditTotalText"
CreditTotalText.Parent = TopBar
CreditTotalText.AnchorPoint = Vector2.new(1, 0)
CreditTotalText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditTotalText.BackgroundTransparency = 1.000
CreditTotalText.BorderSizePixel = 0
CreditTotalText.Position = UDim2.new(1, -111, 0, 0)
CreditTotalText.Size = UDim2.new(0, 120, 1, 0)
CreditTotalText.ZIndex = 5
CreditTotalText.Text = ver
CreditTotalText.TextColor3 = Color3.fromRGB(255, 255, 0)
CreditTotalText.TextScaled = true
CreditTotalText.TextSize = 34.000
CreditTotalText.TextWrapped = true
CreditTotalText.TextXAlignment = Enum.TextXAlignment.Right

PageTitleText.Name = "PageTitleText"
PageTitleText.Parent = TopBar
PageTitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText.BackgroundTransparency = 1.000
PageTitleText.BorderSizePixel = 0
PageTitleText.Position = UDim2.new(0, 10, 0, 0)
PageTitleText.Size = UDim2.new(0.5, 0, 0, 40)
PageTitleText.ZIndex = 5
PageTitleText.Text = "ftfhax"
PageTitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText.TextScaled = true
PageTitleText.TextSize = 34.000
PageTitleText.TextWrapped = true
PageTitleText.TextXAlignment = Enum.TextXAlignment.Left

MainMenuWindow.Name = "MainMenuWindow"
MainMenuWindow.Parent = FTFHAX
MainMenuWindow.AnchorPoint = Vector2.new(0.5, 0.5)
MainMenuWindow.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
MainMenuWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainMenuWindow.BorderSizePixel = 2
MainMenuWindow.ClipsDescendants = true
MainMenuWindow.Position = UDim2.new(0.5, 0, 0.5, -18)
MainMenuWindow.Size = UDim2.new(0, 420, 0, 320)
MainMenuWindow.SizeConstraint = Enum.SizeConstraint.RelativeYY
MainMenuWindow.Visible = false

TopBar_2.Name = "TopBar"
TopBar_2.Parent = MainMenuWindow
TopBar_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TopBar_2.BorderSizePixel = 0
TopBar_2.Size = UDim2.new(1, 0, 0, 40)
TopBar_2.ZIndex = 5

CloseButton_2.Name = "CloseButton"
CloseButton_2.Parent = TopBar_2
CloseButton_2.AnchorPoint = Vector2.new(1, 0)
CloseButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton_2.BorderColor3 = Color3.fromRGB(191, 191, 191)
CloseButton_2.BorderSizePixel = 0
CloseButton_2.Position = UDim2.new(1, -1, 0, 1)
CloseButton_2.Size = UDim2.new(0, 36, 0, 36)
CloseButton_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseButton_2.ZIndex = 5
CloseButton_2.Modal = true
CloseButton_2.Text = "X"
CloseButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton_2.TextScaled = true
CloseButton_2.TextSize = 14.000
CloseButton_2.TextWrapped = true

CreditTotalText_2.Name = "CreditTotalText"
CreditTotalText_2.Parent = TopBar_2
CreditTotalText_2.AnchorPoint = Vector2.new(1, 0)
CreditTotalText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditTotalText_2.BackgroundTransparency = 1.000
CreditTotalText_2.BorderSizePixel = 0
CreditTotalText_2.Position = UDim2.new(1, -111, 0, 0)
CreditTotalText_2.Size = UDim2.new(0, 120, 1, 0)
CreditTotalText_2.ZIndex = 5
CreditTotalText_2.Text = ver
CreditTotalText_2.TextColor3 = Color3.fromRGB(255, 255, 0)
CreditTotalText_2.TextScaled = true
CreditTotalText_2.TextSize = 34.000
CreditTotalText_2.TextWrapped = true
CreditTotalText_2.TextXAlignment = Enum.TextXAlignment.Right

PageTitleText_2.Name = "PageTitleText"
PageTitleText_2.Parent = TopBar_2
PageTitleText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText_2.BackgroundTransparency = 1.000
PageTitleText_2.BorderSizePixel = 0
PageTitleText_2.Position = UDim2.new(0, 10, 0, 0)
PageTitleText_2.Size = UDim2.new(0.5, 0, 0, 40)
PageTitleText_2.ZIndex = 5
PageTitleText_2.Text = "ftfhax"
PageTitleText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText_2.TextScaled = true
PageTitleText_2.TextSize = 34.000
PageTitleText_2.TextWrapped = true
PageTitleText_2.TextXAlignment = Enum.TextXAlignment.Left

Body_2.Name = "Body"
Body_2.Parent = MainMenuWindow
Body_2.AnchorPoint = Vector2.new(0.5, 0)
Body_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body_2.BackgroundTransparency = 1.000
Body_2.BorderSizePixel = 0
Body_2.Position = UDim2.new(0.5, 0, 0, 45)
Body_2.Size = UDim2.new(1, -10, 1, -50)

UIGridLayout_2.Parent = Body_2
UIGridLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center
UIGridLayout_2.CellSize = UDim2.new(0, 132, 0, 132)

ESPButton.Name = "ESPButton"
ESPButton.Parent = Body_2
ESPButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ESPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPButton.BorderSizePixel = 0
ESPButton.LayoutOrder = 1
ESPButton.Size = UDim2.new(0, 100, 0, 100)

BottomText.Name = "BottomText"
BottomText.Parent = ESPButton
BottomText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BottomText.BackgroundTransparency = 1.000
BottomText.BorderSizePixel = 0
BottomText.Position = UDim2.new(0, 0, 0.800000012, 0)
BottomText.Size = UDim2.new(1, 0, 0.200000003, 0)
BottomText.Text = "ESP"
BottomText.TextColor3 = Color3.fromRGB(255, 255, 255)
BottomText.TextScaled = true
BottomText.TextSize = 14.000
BottomText.TextWrapped = true

TempIcon.Name = "TempIcon"
TempIcon.Parent = ESPButton
TempIcon.AnchorPoint = Vector2.new(0.5, 0)
TempIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TempIcon.BackgroundTransparency = 1.000
TempIcon.Position = UDim2.new(0.5, 0, 0, 0)
TempIcon.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
TempIcon.Image = "rbxassetid://2594274683"

ToolsButton.Name = "ToolsButton"
ToolsButton.Parent = Body_2
ToolsButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ToolsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToolsButton.BorderSizePixel = 0
ToolsButton.LayoutOrder = 2
ToolsButton.Size = UDim2.new(0, 100, 0, 100)

BottomText_2.Name = "BottomText"
BottomText_2.Parent = ToolsButton
BottomText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BottomText_2.BackgroundTransparency = 1.000
BottomText_2.BorderSizePixel = 0
BottomText_2.Position = UDim2.new(0, 0, 0.800000012, 0)
BottomText_2.Size = UDim2.new(1, 0, 0.200000003, 0)
BottomText_2.Text = "Tools"
BottomText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BottomText_2.TextScaled = true
BottomText_2.TextSize = 14.000
BottomText_2.TextWrapped = true

TempIcon_2.Name = "TempIcon"
TempIcon_2.Parent = ToolsButton
TempIcon_2.AnchorPoint = Vector2.new(0.5, 0)
TempIcon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TempIcon_2.BackgroundTransparency = 1.000
TempIcon_2.Position = UDim2.new(0.5, 0, 0, 0)
TempIcon_2.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
TempIcon_2.Image = "rbxassetid://12403104094"

ToolsMenuWindow.Name = "ToolsMenuWindow"
ToolsMenuWindow.Parent = FTFHAX
ToolsMenuWindow.AnchorPoint = Vector2.new(0.5, 0.5)
ToolsMenuWindow.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
ToolsMenuWindow.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToolsMenuWindow.BorderSizePixel = 2
ToolsMenuWindow.ClipsDescendants = true
ToolsMenuWindow.Position = UDim2.new(0.5, 0, 0.5, -18)
ToolsMenuWindow.Size = UDim2.new(0, 480, 0, 175)
ToolsMenuWindow.SizeConstraint = Enum.SizeConstraint.RelativeYY
ToolsMenuWindow.Visible = false

Body_3.Name = "Body"
Body_3.Parent = ToolsMenuWindow
Body_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Body_3.BackgroundTransparency = 1.000
Body_3.BorderSizePixel = 0
Body_3.Position = UDim2.new(0, 0, 0, 40)
Body_3.Size = UDim2.new(1, 0, 1, -40)

TitleLabel_2.Name = "TitleLabel"
TitleLabel_2.Parent = Body_3
TitleLabel_2.AnchorPoint = Vector2.new(0.5, 0)
TitleLabel_2.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TitleLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel_2.BorderSizePixel = 0
TitleLabel_2.Position = UDim2.new(0.5, 0, -1.06500006, 150)
TitleLabel_2.Size = UDim2.new(1, -10, 0.0235044118, 30)
TitleLabel_2.Text = "Tools"
TitleLabel_2.TextColor3 = Color3.fromRGB(144, 255, 161)
TitleLabel_2.TextScaled = true
TitleLabel_2.TextSize = 14.000
TitleLabel_2.TextWrapped = true

ButtonsFrame_2.Name = "ButtonsFrame"
ButtonsFrame_2.Parent = Body_3
ButtonsFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonsFrame_2.BackgroundTransparency = 1.000
ButtonsFrame_2.Position = UDim2.new(0, 5, 0, 45)
ButtonsFrame_2.Size = UDim2.new(1, -10, -0.00555555569, 85)

UIGridLayout_3.Parent = ButtonsFrame_2
UIGridLayout_3.FillDirection = Enum.FillDirection.Vertical
UIGridLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_3.CellPadding = UDim2.new(0, 6, 0, 6)
UIGridLayout_3.CellSize = UDim2.new(0, 152, 0, 39)

NeverFailButton.Name = "NeverFailButton"
NeverFailButton.Parent = ButtonsFrame_2
NeverFailButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
NeverFailButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NeverFailButton.BorderSizePixel = 0
NeverFailButton.Size = UDim2.new(0, 200, 0, 50)
NeverFailButton.Text = "Never Fail"
NeverFailButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NeverFailButton.TextScaled = true
NeverFailButton.TextSize = 14.000
NeverFailButton.TextWrapped = true

AutoPlayButton.Name = "AutoPlayButton"
AutoPlayButton.Parent = ButtonsFrame_2
AutoPlayButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
AutoPlayButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoPlayButton.BorderSizePixel = 0
AutoPlayButton.LayoutOrder = 1
AutoPlayButton.Size = UDim2.new(0, 200, 0, 50)
AutoPlayButton.Text = "Auto-Play"
AutoPlayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoPlayButton.TextScaled = true
AutoPlayButton.TextSize = 14.000
AutoPlayButton.TextWrapped = true

AutoInteractButton.Name = "AutoInteractButton"
AutoInteractButton.Parent = ButtonsFrame_2
AutoInteractButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
AutoInteractButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoInteractButton.BorderSizePixel = 0
AutoInteractButton.LayoutOrder = 2
AutoInteractButton.Size = UDim2.new(0, 200, 0, 50)
AutoInteractButton.Text = "Auto Interact"
AutoInteractButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoInteractButton.TextScaled = true
AutoInteractButton.TextSize = 14.000
AutoInteractButton.TextWrapped = true

BeastCamButton.Name = "BeastCamButton"
BeastCamButton.Parent = ButtonsFrame_2
BeastCamButton.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
BeastCamButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
BeastCamButton.BorderSizePixel = 0
BeastCamButton.LayoutOrder = 3
BeastCamButton.Size = UDim2.new(0, 200, 0, 50)
BeastCamButton.Text = "Beast Cam"
BeastCamButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BeastCamButton.TextScaled = true
BeastCamButton.TextSize = 14.000
BeastCamButton.TextWrapped = true

TopBar_3.Name = "TopBar"
TopBar_3.Parent = ToolsMenuWindow
TopBar_3.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TopBar_3.BorderSizePixel = 0
TopBar_3.Size = UDim2.new(1, 0, 0, 40)
TopBar_3.ZIndex = 5

CloseButton_3.Name = "CloseButton"
CloseButton_3.Parent = TopBar_3
CloseButton_3.AnchorPoint = Vector2.new(1, 0)
CloseButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton_3.BorderColor3 = Color3.fromRGB(191, 191, 191)
CloseButton_3.BorderSizePixel = 0
CloseButton_3.Position = UDim2.new(1, -1, 0, 1)
CloseButton_3.Size = UDim2.new(0, 36, 0, 36)
CloseButton_3.SizeConstraint = Enum.SizeConstraint.RelativeYY
CloseButton_3.ZIndex = 5
CloseButton_3.Modal = true
CloseButton_3.Text = "X"
CloseButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton_3.TextScaled = true
CloseButton_3.TextSize = 14.000
CloseButton_3.TextWrapped = true

BackButton_2.Name = "BackButton"
BackButton_2.Parent = TopBar_3
BackButton_2.AnchorPoint = Vector2.new(1, 0)
BackButton_2.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
BackButton_2.BorderColor3 = Color3.fromRGB(191, 191, 191)
BackButton_2.BorderSizePixel = 0
BackButton_2.Position = UDim2.new(1, -41, 0, 1)
BackButton_2.Size = UDim2.new(1, -4, 1, -4)
BackButton_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
BackButton_2.ZIndex = 5
BackButton_2.Text = "<"
BackButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BackButton_2.TextScaled = true
BackButton_2.TextSize = 14.000
BackButton_2.TextWrapped = true

CreditTotalText_3.Name = "CreditTotalText"
CreditTotalText_3.Parent = TopBar_3
CreditTotalText_3.AnchorPoint = Vector2.new(1, 0)
CreditTotalText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CreditTotalText_3.BackgroundTransparency = 1.000
CreditTotalText_3.BorderSizePixel = 0
CreditTotalText_3.Position = UDim2.new(1, -111, 0, 0)
CreditTotalText_3.Size = UDim2.new(0, 120, 1, 0)
CreditTotalText_3.ZIndex = 5
CreditTotalText_3.Text = ver
CreditTotalText_3.TextColor3 = Color3.fromRGB(255, 255, 0)
CreditTotalText_3.TextScaled = true
CreditTotalText_3.TextSize = 34.000
CreditTotalText_3.TextWrapped = true
CreditTotalText_3.TextXAlignment = Enum.TextXAlignment.Right

PageTitleText_3.Name = "PageTitleText"
PageTitleText_3.Parent = TopBar_3
PageTitleText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText_3.BackgroundTransparency = 1.000
PageTitleText_3.BorderSizePixel = 0
PageTitleText_3.Position = UDim2.new(0, 10, 0, 0)
PageTitleText_3.Size = UDim2.new(0.5, 0, 0, 40)
PageTitleText_3.ZIndex = 5
PageTitleText_3.Text = "ftfhax"
PageTitleText_3.TextColor3 = Color3.fromRGB(255, 255, 255)
PageTitleText_3.TextScaled = true
PageTitleText_3.TextSize = 34.000
PageTitleText_3.TextWrapped = true
PageTitleText_3.TextXAlignment = Enum.TextXAlignment.Left

ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = FTFHAX
ViewportFrame.Position = UDim2.new(0, 5, 0.666000009, -5)
ViewportFrame.Size = UDim2.new(0.333, 0, 0.333, 0)
ViewportFrame.Ambient = Color3.fromRGB(147,147,147)
ViewportFrame.LightDirection = Vector3.new(0,1,0)
ViewportFrame.BackgroundColor3 = Color3.fromRGB(50,50,50)
ViewportFrame.BackgroundTransparency = 0.9
ViewportFrame.Visible = false


CheatButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
	ToolsMenuWindow.Visible = false
	MainMenuWindow.Visible = not MainMenuWindow.Visible
end)

CloseButton_2.MouseButton1Down:Connect(function()
	MainMenuWindow.Visible = false
end)

CloseButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
end)

CloseButton_3.MouseButton1Down:Connect(function()
	ToolsMenuWindow.Visible = false
end)

BackButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
	ToolsMenuWindow.Visible = false
	MainMenuWindow.Visible = true
end)

BackButton_2.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
	ToolsMenuWindow.Visible = false
	MainMenuWindow.Visible = true
end)

ESPButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = true
	ToolsMenuWindow.Visible = false
	MainMenuWindow.Visible = false
end)

ToolsButton.MouseButton1Down:Connect(function()
	ESPMenuWindow.Visible = false
	ToolsMenuWindow.Visible = true
	MainMenuWindow.Visible = false
end)


local podstoggle = false
local pctoggle = false
local playertoggle = false
local bestpctoggle = false
local exitstoggle = false
local beastcamtoggle = false


local neverfailtoggle = false
local autointeracttoggle = false
local autoplaytoggle = false


PodsESPButton.MouseButton1Down:Connect(function()
	if podstoggle == false then
		podstoggle = true
		PodsESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		podstoggle = false
		PodsESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

PCESPButton.MouseButton1Down:Connect(function()
	if pctoggle == false then
		pctoggle = true
		PCESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		pctoggle = false
		PCESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)


PlayerESPButton.MouseButton1Down:Connect(function()
	if playertoggle == false then
		playertoggle = true
		PlayerESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		playertoggle = false
		PlayerESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)


BestPCESPButton.MouseButton1Down:Connect(function()
	if bestpctoggle == false then
		bestpctoggle = true
		BestPCESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		bestpctoggle = false
		BestPCESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

ExitsESPButton.MouseButton1Down:Connect(function()
	if exitstoggle == false then
		exitstoggle = true
		ExitsESPButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadESP()
	else
		exitstoggle = false
		ExitsESPButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
		reloadESP()
	end
end)

NeverFailButton.MouseButton1Down:Connect(function()
	if neverfailtoggle == false then
		neverfailtoggle = true
		NeverFailButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
	else
		neverfailtoggle = false
		NeverFailButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
	end
end)

AutoInteractButton.MouseButton1Down:Connect(function()
	if autointeracttoggle == false then
		autointeracttoggle = true
		AutoInteractButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
	else
		autointeracttoggle = false
		AutoInteractButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
	end
end)


BeastCamButton.MouseButton1Down:Connect(function()
	if beastcamtoggle == false then
		beastcamtoggle = true
		ViewportFrame.Visible = true
		BeastCamButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
		reloadBeastCam()
	else
		ViewportFrame:ClearAllChildren()
		beastcamtoggle = false
		ViewportFrame.Visible = false
		BeastCamButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
	end
end)



AutoPlayButton.MouseButton1Down:Connect(function()
	if autoplaytoggle == false then
		autoplaytoggle = true
		AutoPlayButton.BackgroundColor3 = Color3.new(0, 0.74902, 0)
	else
		autoplaytoggle = false
		AutoPlayButton.BackgroundColor3 = Color3.new(0.74902, 0, 0)
	end
end)

function reloadESP()
	spawn(function()
		local map = game.ReplicatedStorage.CurrentMap.Value
		if map ~= nil then
			local mapstuff = map:getChildren()
			for i=1,#mapstuff do
				if mapstuff[i].Name == "ComputerTable" then
					if mapstuff[i]:findFirstChild("Highlight") and not pctoggle then
						mapstuff[i].Highlight:remove()
					end
					if pctoggle and not mapstuff[i]:findFirstChild("Highlight") then
						local a = Instance.new("Highlight", mapstuff[i])
						a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						a.FillColor = Color3.fromRGB(13, 105, 172) -- avoid display bugs as soon as loads :)
						a.OutlineColor = Color3.fromRGB(20, 165, 270) -- avoid display bugs as soon as loads :)
						spawn(function()
							repeat 
								if bestpctoggle and mapstuff[i]:findFirstChild("Screen") then
									if getBestPC()[1].pc ~= nil and mapstuff[i] == getBestPC()[1].pc then
										a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
										a.OutlineColor = Color3.fromRGB(200, 0, 255)
									else
										a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
										a.OutlineColor = Color3.fromRGB(a.FillColor.R*400, a.FillColor.G*400, a.FillColor.B*400)
									end
								else
									a.FillColor = mapstuff[i]:findFirstChild("Screen").Color
									a.OutlineColor = Color3.fromRGB(a.FillColor.R*400, a.FillColor.G*400, a.FillColor.B*400)
								end
								wait(1)
							until mapstuff[i] == nil or a == nil
						end)
					end
				end
				if mapstuff[i].Name == "FreezePod" then
					if mapstuff[i]:findFirstChild("Highlight") and not podstoggle then
						mapstuff[i].Highlight:remove()
					end
					if podstoggle and not mapstuff[i]:findFirstChild("Highlight") then
						local a = Instance.new("Highlight", mapstuff[i])
						a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						a.FillColor = Color3.fromRGB(120,200,255)
						a.OutlineColor = Color3.fromRGB(160,255,255)
					end
				end
				if mapstuff[i].Name == "ExitDoor" then
					if mapstuff[i]:findFirstChild("Highlight") and not exitstoggle then
						mapstuff[i].Highlight:remove()
					end
					if exitstoggle and not mapstuff[i]:findFirstChild("Highlight") then
						local a = Instance.new("Highlight", mapstuff[i])
						a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						a.FillColor = Color3.fromRGB(252, 255, 100)
						a.OutlineColor = Color3.fromRGB(255,255,160)
					end
				end
			end
		end
	end)
	local player = game.Players:GetChildren()
	for i=1, #player do
		if player[i] ~= game.Players.LocalPlayer and player[i].Character ~= nil then
			local character = player[i].Character
			if character:findFirstChild("Highlight") and not playertoggle then
				character.Highlight:remove()
			end
			if playertoggle and not character:findFirstChild("Highlight") then
				local a = Instance.new("Highlight", character)
				a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				a.FillColor = Color3.fromRGB(0,255,0) -- avoid display bugs as soon as loads :)
				a.OutlineColor = Color3.fromRGB(127,255,127) -- avoid display bugs as soon as loads :)
				spawn(function()
					repeat
						wait(0.1)
						if player[i] == getBeast() then
							a.FillColor = Color3.fromRGB(255,0,0)
							a.OutlineColor = Color3.fromRGB(255,127,127)
						else
							a.FillColor = Color3.fromRGB(0,255,0)
							a.OutlineColor = Color3.fromRGB(127,255,127)
						end
					until character == nil or a == nil
				end)
			end
		end
	end
end

function reloadBeastCam()
	ViewportFrame:ClearAllChildren()
	if beastcamtoggle and game.ReplicatedStorage.CurrentMap.Value ~= nil then
		local beast = getBeast()
		local cam = Instance.new("Camera", ScreenGui)
		cam.CameraType = Enum.CameraType.Scriptable
		cam.FieldOfView = 70
		local map = game.ReplicatedStorage.CurrentMap.Value
		local mapclone = map:clone()
		mapclone.Name = "map"
		local mcstuff = mapclone:getDescendants()
		for i=1,#mcstuff do
			if mcstuff[i].Name == "SingleDoor" or mcstuff[i].Name == "DoubleDoor" or mcstuff[i].ClassName == "Sound" or mcstuff[i].ClassName == "LocalScript" or mcstuff[i].ClassName == "Script" then
				mcstuff[i]:remove() 
			end
		end

		mapclone.Parent = ViewportFrame
		ViewportFrame.CurrentCamera = cam

		spawn(function()
			repeat
				wait()
				if not beastcamtoggle then
					break
				end
				repeat
					wait()
				until getBeast().Character ~= nil
				cam.CFrame = getBeast().Character.Head.CFrame
				wait()
			until cam == nil or mapclone == nil or beast ~= getBeast()
		end)

		spawn(function()
			local dummy = Instance.new("Folder", ViewportFrame)
			dummy.Name = "dummy"
			dummy.Parent = ViewportFrame
			local doors = Instance.new("Folder", ViewportFrame)
			doors.Name = "doors"
			doors.Parent = ViewportFrame
			repeat
				wait()
				if not beastcamtoggle then
					break
				end
				local doorsstuff = map:GetChildren()
				for i=1,#doorsstuff do
					if doorsstuff[i].Name == "SingleDoor" or doorsstuff[i].Name == "DoubleDoor" then
						local a = doorsstuff[i]:clone()
						a.Parent = doors
					end
				end
				local players = game.Players:getChildren()
				for i=1,#players do
					if players[i] ~= getBeast() then
						if players[i].Character ~= nil then
							players[i].Character.Archivable = true
							local dummyclone = players[i].Character:clone()
							local bodyparts = dummyclone:getDescendants()
							for i=1,#bodyparts do
								if bodyparts[i].ClassName == "Sound" or bodyparts[i].ClassName == "LocalScript" or bodyparts[i].ClassName == "Script" then
									bodyparts[i]:remove() 
								end
							end
							dummyclone.Parent = dummy
						end
					end
				end
				wait(0.3)

				dummy:ClearAllChildren()
				doors:ClearAllChildren()
			until cam == nil or mapclone == nil or beast ~= getBeast()
		end)
	end
end

function getBeast()
	local player = game.Players:GetChildren()
	for i=1, #player do
		local character = player[i].Character
		if player[i]:findFirstChild("TempPlayerStatsModule"):findFirstChild("IsBeast").Value == true or (character ~= nil and character:findFirstChild("BeastPowers")) then
			return player[i]
		end
	end
end

function getBestPC()
	local beast = getBeast()
	local pcs = {}
	local map = game.ReplicatedStorage.CurrentMap.Value
	if map ~= nil then
		local mapstuff = map:getChildren()
		for i=1,#mapstuff do
			if mapstuff[i].Name == "ComputerTable" then
				if mapstuff[i].Screen.BrickColor ~= BrickColor.new("Dark green") then
					local magnitude = ((mapstuff[i].Screen.Position - beast.Character:findFirstChild("HumanoidRootPart").Position).magnitude)
					table.insert(pcs, {magnitude=magnitude, pc=mapstuff[i]})
				end
			end
		end
	end
	table.sort(pcs, function(a, b) return a.magnitude > b.magnitude end)
	return pcs
end

function isPlayerTyping()
	local hum = game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid")
	local anims = hum:GetPlayingAnimationTracks()
	for i=1,#anims do
		if anims[i].Name == "AnimTyping" then
			return true
		end
	end
	return false
end

spawn(function() -- reload esp when new map
	game.ReplicatedStorage.CurrentMap.Changed:Connect(function()
		wait(5) -- hopefully enough time for map to load ;)
		reloadESP()
		if beastcamtoggle then
			reloadBeastCam()	
		end
	end)
end)

spawn(function() -- reload esp when game becomes active
	game.ReplicatedStorage.IsGameActive.Changed:Connect(function()
		reloadESP()
		if beastcamtoggle then
			reloadBeastCam()	
		end
	end)
end)
spawn(function() --reload esp when character loads/deloads
	game:GetService("Players").PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			reloadESP()
		end)
		player.CharacterRemoved:Connect(function(character)
			reloadESP()
		end)
	end)
end)

spawn(function() -- never fail hacking
	local mt = getrawmetatable(game)
	local old = mt.__namecall
	setreadonly(mt,false)
	mt.__namecall = newcclosure(function(self, ...)
		local args = {...}
		if getnamecallmethod() == 'FireServer' and args[1] == 'SetPlayerMinigameResult' and neverfailtoggle then
			args[2] = true
		end
		return old(self, unpack(args))
	end)
end)

spawn(function() -- auto interact
	game.Players.LocalPlayer.PlayerGui.ScreenGui.ActionBox:GetPropertyChangedSignal("Visible"):connect(function()
		if autointeracttoggle then
			game.ReplicatedStorage.RemoteEvent:FireServer("Input", "Action", true)
		end	
	end)
end)

spawn(function() -- auto play (buggy and still testing :))
	while wait(3) do
		if autoplaytoggle then	
			local beast = getBeast()
			local map = game.ReplicatedStorage.CurrentMap.Value
			local mapstuff = map:getChildren()
			for i=1,#mapstuff do
				if mapstuff[i].Name == "SingleDoor" or mapstuff[i].Name == "DoubleDoor" then
					local doorParts = mapstuff[i]:getDescendants()
					for i=1,#doorParts do
						if doorParts[i].ClassName == "Part" and doorParts[i].Name ~= "Frame" then
							if not doorParts[i]:findFirstChild("PathfindingModifier") then
								local a = Instance.new("PathfindingModifier", doorParts[i])
								a.PassThrough = true
							end
							if doorParts[i].Name == "Frame" then
								local a = Instance.new("PathfindingModifier", doorParts[i])
								a.PassThrough = false
								a.Label = "avoid"
							end
						end
					end
				end
			end
			local pcs = getBestPC()
			local PathfindingService = game:GetService("PathfindingService")
			local Humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
			local Root = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
			local goal = nil
			local agentParams = {
				AgentRadius = 2.4,
				AgentHeight = 2,
				AgentCanJump = true,
				AgentWalkableClimb = 4,
				WaypointSpacing = 2,
				Costs = {
					avoid = 10.0
				}
			}
			local beastNearby = ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - beast.Character:findFirstChild("HumanoidRootPart").Position).magnitude < 50)
			for i, pc in ipairs(pcs) do
				if beastNearby then
					print("beast nearby")
				end
				if isPlayerTyping() and not beastNearby then
					break
				end
				goal = pc.pc["ComputerTrigger1"].Position
				local goalpc = pc.pc
				local path = PathfindingService:CreatePath(agentParams)
				path:ComputeAsync(Root.Position, goal)
				print(path.Status)
				if path.Status == Enum.PathStatus.Success then
					local waypoints = path:GetWaypoints()
					for i, waypoint in ipairs(waypoints) do
						local ray = Ray.new(waypoints[i].Position, Vector3.new(0, 1, 0) * 3)
						local part = workspace:FindPartOnRay(ray)
						if part and part.CanCollide then
							local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
							print("need to crouch :)")
						end
						Humanoid:MoveTo(waypoint.Position)
						if waypoint.Action == Enum.PathWaypointAction.Jump then
							Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						end

						local a = Instance.new("Part", workspace)
						a.Shape = Enum.PartType.Ball
						a.Position = waypoint.Position
						a.BrickColor = BrickColor.new("Pink")
						a.Material = Enum.Material.Neon
						a.Size = Vector3.new(2,2,2)
						a.Anchored = true
						a.CanCollide = false
						local touch = false

						spawn(function()
							a.Touched:Connect(function(hit)
								if hit.Parent:FindFirstChild("Humanoid") then
									if hit.Parent.Name == game.Players.LocalPlayer.Character.Name then
										touch = true
										a:remove()
									end
								end
							end)
							wait(10)
							a:remove()
						end)
						repeat
							wait(0.05)
						until touch
					end
					break
				end
			end
		end
	end
end)
