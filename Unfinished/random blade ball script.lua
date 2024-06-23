loadstring(game:HttpGet('https://raw.githubusercontent.com/DevTravDYT/dsaaswadfeszad/main/visual/BladeBall'))();
local G2L = {};
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.ScreenGui.Menu
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
G2L["2"]["BackgroundTransparency"] = 1;
G2L["2"]["Size"] = UDim2.new(0.1319330781698227, 0, 0.0627257227897644, 0);
G2L["2"]["ClipsDescendants"] = true;
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Position"] = UDim2.new(0.3754355311393738, 0, 0.011290322989225388, 0);
G2L["2"]["Name"] = [[Menu]];

-- StarterGui.ScreenGui.Menu.UIAspectRatioConstraint
G2L["3"] = Instance.new("UIAspectRatioConstraint", G2L["2"]);
G2L["3"]["AspectRatio"] = 0.0010000000474974513;

-- StarterGui.ScreenGui.Menu.UICorner
G2L["4"] = Instance.new("UICorner", G2L["2"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 28);

-- StarterGui.ScreenGui.Menu.UIGradient
G2L["5"] = Instance.new("UIGradient", G2L["2"]);
G2L["5"]["Rotation"] = -67;
G2L["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(33, 0, 140)),ColorSequenceKeypoint.new(0.029, Color3.fromRGB(29, 0, 90)),ColorSequenceKeypoint.new(0.095, Color3.fromRGB(4, 0, 50)),ColorSequenceKeypoint.new(0.140, Color3.fromRGB(0, 4, 35)),ColorSequenceKeypoint.new(0.539, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.838, Color3.fromRGB(19, 0, 40)),ColorSequenceKeypoint.new(0.895, Color3.fromRGB(33, 7, 58)),ColorSequenceKeypoint.new(0.964, Color3.fromRGB(30, 2, 59)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(47, 0, 92))};

-- StarterGui.ScreenGui.Menu.Command
G2L["6"] = Instance.new("ImageButton", G2L["2"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["AutoButtonColor"] = false;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(35, 35, 35);
G2L["6"]["Size"] = UDim2.new(0.21195650100708008, 0, 0.7663595676422119, 0);
G2L["6"]["Name"] = [[Command]];
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Position"] = UDim2.new(-0.3089999854564667, 0, 0.11800000071525574, 0);

-- StarterGui.ScreenGui.Menu.Command.UIAspectRatioConstraint
G2L["7"] = Instance.new("UIAspectRatioConstraint", G2L["6"]);


-- StarterGui.ScreenGui.Menu.Command.UICorner
G2L["8"] = Instance.new("UICorner", G2L["6"]);
G2L["8"]["CornerRadius"] = UDim.new(0, 10);

-- StarterGui.ScreenGui.Menu.Command.ImageLabel
G2L["9"] = Instance.new("ImageLabel", G2L["6"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["Image"] = [[rbxassetid://15025827995]];
G2L["9"]["Size"] = UDim2.new(0.769230842590332, 0, 1.6666666269302368, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Position"] = UDim2.new(0.10256410390138626, 0, 0.10256410390138626, 0);

-- StarterGui.ScreenGui.Menu.Command.ImageLabel.UIAspectRatioConstraint
G2L["a"] = Instance.new("UIAspectRatioConstraint", G2L["9"]);


-- StarterGui.ScreenGui.Menu.Command.TextLabel
G2L["b"] = Instance.new("TextLabel", G2L["6"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextScaled"] = true;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextTransparency"] = 1;
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Size"] = UDim2.new(1.7729090452194214, 0, 0.44322726130485535, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[Menu]];
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Position"] = UDim2.new(-0.40695497393608093, 0, 1.8022291660308838, 0);

-- StarterGui.ScreenGui.Menu.Command.TextLabel.UIAspectRatioConstraint
G2L["c"] = Instance.new("UIAspectRatioConstraint", G2L["b"]);
G2L["c"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.Menu.Command.Text2
G2L["d"] = Instance.new("TextLabel", G2L["6"]);
G2L["d"]["TextWrapped"] = true;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextScaled"] = true;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d"]["TextTransparency"] = 1;
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["Size"] = UDim2.new(1.7729090452194214, 0, 0.44322726130485535, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[•]];
G2L["d"]["Name"] = [[Text2]];
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Position"] = UDim2.new(-0.43602317571640015, 0, 1.3371378183364868, 0);

-- StarterGui.ScreenGui.Menu.Command.Text2.UIAspectRatioConstraint
G2L["e"] = Instance.new("UIAspectRatioConstraint", G2L["d"]);
G2L["e"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.Menu.Command.LocalScript
G2L["f"] = Instance.new("LocalScript", G2L["6"]);


-- StarterGui.ScreenGui.Menu.Command.UIStroke
G2L["10"] = Instance.new("UIStroke", G2L["6"]);
G2L["10"]["Color"] = Color3.fromRGB(39, 39, 39);
G2L["10"]["Thickness"] = 0.699999988079071;

-- StarterGui.ScreenGui.Menu.Command.ImageLabel2
G2L["11"] = Instance.new("ImageLabel", G2L["6"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["ImageTransparency"] = 1;
G2L["11"]["Image"] = [[rbxassetid://15025821609]];
G2L["11"]["Size"] = UDim2.new(0.769230842590332, 0, 1.6666666269302368, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Name"] = [[ImageLabel2]];
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Position"] = UDim2.new(0.10256410390138626, 0, 0.10256410390138626, 0);

-- StarterGui.ScreenGui.Menu.Command.ImageLabel2.UIAspectRatioConstraint
G2L["12"] = Instance.new("UIAspectRatioConstraint", G2L["11"]);


-- StarterGui.ScreenGui.Menu.Profile
G2L["13"] = Instance.new("ImageButton", G2L["2"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["AutoButtonColor"] = false;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(35, 35, 35);
G2L["13"]["Size"] = UDim2.new(0.21195650100708008, 0, 0.7663595676422119, 0);
G2L["13"]["Name"] = [[Profile]];
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Position"] = UDim2.new(0.3310000002384186, 0, 0.11800000071525574, 0);

-- StarterGui.ScreenGui.Menu.Profile.UIAspectRatioConstraint
G2L["14"] = Instance.new("UIAspectRatioConstraint", G2L["13"]);


-- StarterGui.ScreenGui.Menu.Profile.UICorner
G2L["15"] = Instance.new("UICorner", G2L["13"]);
G2L["15"]["CornerRadius"] = UDim.new(0, 10);

-- StarterGui.ScreenGui.Menu.Profile.ImageLabel
G2L["16"] = Instance.new("ImageLabel", G2L["13"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["Image"] = [[rbxassetid://15025831012]];
G2L["16"]["Size"] = UDim2.new(0.769230842590332, 0, 1.6666666269302368, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Position"] = UDim2.new(0.10256410390138626, 0, 0.10256410390138626, 0);

-- StarterGui.ScreenGui.Menu.Profile.ImageLabel.UIAspectRatioConstraint
G2L["17"] = Instance.new("UIAspectRatioConstraint", G2L["16"]);


-- StarterGui.ScreenGui.Menu.Profile.TextLabel
G2L["18"] = Instance.new("TextLabel", G2L["13"]);
G2L["18"]["TextWrapped"] = true;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextScaled"] = true;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["TextTransparency"] = 1;
G2L["18"]["TextSize"] = 14;
G2L["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["Size"] = UDim2.new(1.7729090452194214, 0, 0.44322726130485535, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Profile]];
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["Position"] = UDim2.new(-0.40695497393608093, 0, 1.8022291660308838, 0);

-- StarterGui.ScreenGui.Menu.Profile.TextLabel.UIAspectRatioConstraint
G2L["19"] = Instance.new("UIAspectRatioConstraint", G2L["18"]);
G2L["19"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.Menu.Profile.Text2
G2L["1a"] = Instance.new("TextLabel", G2L["13"]);
G2L["1a"]["TextWrapped"] = true;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextScaled"] = true;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["TextTransparency"] = 1;
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["Size"] = UDim2.new(1.7729090452194214, 0, 0.44322726130485535, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[•]];
G2L["1a"]["Name"] = [[Text2]];
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["Position"] = UDim2.new(-0.43602317571640015, 0, 1.3371378183364868, 0);

-- StarterGui.ScreenGui.Menu.Profile.Text2.UIAspectRatioConstraint
G2L["1b"] = Instance.new("UIAspectRatioConstraint", G2L["1a"]);
G2L["1b"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.Menu.Profile.LocalScript
G2L["1c"] = Instance.new("LocalScript", G2L["13"]);


-- StarterGui.ScreenGui.Menu.Profile.UIStroke
G2L["1d"] = Instance.new("UIStroke", G2L["13"]);
G2L["1d"]["Color"] = Color3.fromRGB(39, 39, 39);
G2L["1d"]["Thickness"] = 0.699999988079071;

-- StarterGui.ScreenGui.Menu.Profile.ImageLabel2
G2L["1e"] = Instance.new("ImageLabel", G2L["13"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["ImageTransparency"] = 1;
G2L["1e"]["Image"] = [[rbxassetid://15025796584]];
G2L["1e"]["Size"] = UDim2.new(0.769230842590332, 0, 1.6666666269302368, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Name"] = [[ImageLabel2]];
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Position"] = UDim2.new(0.10256410390138626, 0, 0.10256410390138626, 0);

-- StarterGui.ScreenGui.Menu.Profile.ImageLabel2.UIAspectRatioConstraint
G2L["1f"] = Instance.new("UIAspectRatioConstraint", G2L["1e"]);


-- StarterGui.ScreenGui.effect
G2L["20"] = Instance.new("ImageLabel", G2L["1"]);
G2L["20"]["ZIndex"] = -1;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["ImageColor3"] = Color3.fromRGB(69, 69, 69);
G2L["20"]["ImageTransparency"] = 1;
G2L["20"]["Image"] = [[rbxassetid://10822615828]];
G2L["20"]["Size"] = UDim2.new(0.07252156734466553, 0, 0.23428186774253845, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[effect]];
G2L["20"]["BackgroundTransparency"] = 1;
G2L["20"]["Position"] = UDim2.new(0.3151668310165405, 0, -0.026072397828102112, 0);

-- StarterGui.ScreenGui.effect.UIAspectRatioConstraint
G2L["21"] = Instance.new("UIAspectRatioConstraint", G2L["20"]);


-- StarterGui.ScreenGui.Open
G2L["22"] = Instance.new("ImageButton", G2L["1"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["Size"] = UDim2.new(0.062442440539598465, 0, 0.06272571533918381, 0);
G2L["22"]["Name"] = [[Open]];
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Position"] = UDim2.new(0.3344947099685669, 0, 0.011290331371128559, 0);

-- StarterGui.ScreenGui.Open.UIAspectRatioConstraint
G2L["23"] = Instance.new("UIAspectRatioConstraint", G2L["22"]);


-- StarterGui.ScreenGui.Open.LocalScript
G2L["24"] = Instance.new("LocalScript", G2L["22"]);


-- StarterGui.ScreenGui.Open.UICorner
G2L["25"] = Instance.new("UICorner", G2L["22"]);
G2L["25"]["CornerRadius"] = UDim.new(0, 10);

-- StarterGui.ScreenGui.Open.leaf1
G2L["26"] = Instance.new("ImageLabel", G2L["22"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["Image"] = [[rbxassetid://663710708]];
G2L["26"]["Size"] = UDim2.new(0.769230842590332, 0, 1.6666666269302368, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Name"] = [[leaf1]];
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Position"] = UDim2.new(0.10256410390138626, 0, 0.10256410390138626, 0);

-- StarterGui.ScreenGui.Open.leaf1.UIAspectRatioConstraint
G2L["27"] = Instance.new("UIAspectRatioConstraint", G2L["26"]);


-- StarterGui.ScreenGui.Open.leaf2
G2L["28"] = Instance.new("ImageLabel", G2L["22"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["ImageTransparency"] = 1;
G2L["28"]["Image"] = [[rbxassetid://15015988190]];
G2L["28"]["Size"] = UDim2.new(0.769230842590332, 0, 1.6666666269302368, 0);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Name"] = [[leaf2]];
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Position"] = UDim2.new(0.10256410390138626, 0, 0.10256410390138626, 0);

-- StarterGui.ScreenGui.Open.leaf2.UIAspectRatioConstraint
G2L["29"] = Instance.new("UIAspectRatioConstraint", G2L["28"]);


-- StarterGui.ScreenGui.Open.UIGradient
G2L["2a"] = Instance.new("UIGradient", G2L["22"]);
G2L["2a"]["Rotation"] = -67;
G2L["2a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(33, 0, 140)),ColorSequenceKeypoint.new(0.029, Color3.fromRGB(29, 0, 90)),ColorSequenceKeypoint.new(0.095, Color3.fromRGB(4, 0, 50)),ColorSequenceKeypoint.new(0.140, Color3.fromRGB(0, 4, 35)),ColorSequenceKeypoint.new(0.539, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.838, Color3.fromRGB(19, 0, 40)),ColorSequenceKeypoint.new(0.895, Color3.fromRGB(33, 7, 58)),ColorSequenceKeypoint.new(0.964, Color3.fromRGB(30, 2, 59)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(47, 0, 92))};

-- StarterGui.ScreenGui.Open.fps
G2L["2b"] = Instance.new("TextLabel", G2L["22"]);
G2L["2b"]["TextWrapped"] = true;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextScaled"] = true;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["Size"] = UDim2.new(1.772909164428711, 0, 0.44322729110717773, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[FPS: ]];
G2L["2b"]["Name"] = [[fps]];
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["Position"] = UDim2.new(-6.041585445404053, 0, 3.5999338626861572, 0);

-- StarterGui.ScreenGui.Open.fps.UIAspectRatioConstraint
G2L["2c"] = Instance.new("UIAspectRatioConstraint", G2L["2b"]);
G2L["2c"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.Open.fps.LocalScript
G2L["2d"] = Instance.new("LocalScript", G2L["2b"]);


-- StarterGui.ScreenGui.CommandFrame
G2L["2e"] = Instance.new("Frame", G2L["1"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(0.4440000057220459, 0, 0.48399999737739563, 0);
G2L["2e"]["ClipsDescendants"] = true;
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Position"] = UDim2.new(0.22200000286102295, 0, 1.7319999933242798, 0);
G2L["2e"]["Name"] = [[CommandFrame]];

-- StarterGui.ScreenGui.CommandFrame.UICorner
G2L["2f"] = Instance.new("UICorner", G2L["2e"]);


-- StarterGui.ScreenGui.CommandFrame.UIGradient
G2L["30"] = Instance.new("UIGradient", G2L["2e"]);
G2L["30"]["Rotation"] = -67;
G2L["30"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(33, 0, 140)),ColorSequenceKeypoint.new(0.029, Color3.fromRGB(29, 0, 90)),ColorSequenceKeypoint.new(0.095, Color3.fromRGB(4, 0, 50)),ColorSequenceKeypoint.new(0.140, Color3.fromRGB(0, 4, 35)),ColorSequenceKeypoint.new(0.539, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.838, Color3.fromRGB(19, 0, 40)),ColorSequenceKeypoint.new(0.895, Color3.fromRGB(33, 7, 58)),ColorSequenceKeypoint.new(0.964, Color3.fromRGB(30, 2, 59)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(47, 0, 92))};

-- StarterGui.ScreenGui.CommandFrame.UIStroke
G2L["31"] = Instance.new("UIStroke", G2L["2e"]);


-- StarterGui.ScreenGui.CommandFrame.Text2
G2L["32"] = Instance.new("TextLabel", G2L["2e"]);
G2L["32"]["TextWrapped"] = true;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["RichText"] = true;
G2L["32"]["TextScaled"] = true;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["32"]["TextTransparency"] = 1;
G2L["32"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["TextSize"] = 14;
G2L["32"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["Size"] = UDim2.new(0.26471394300460815, 0, 0.0742340162396431, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Text"] = [[Visual]];
G2L["32"]["Name"] = [[Text2]];
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Position"] = UDim2.new(0.39803922176361084, 0, 0.4151172935962677, 0);

-- StarterGui.ScreenGui.CommandFrame.Text2.UIAspectRatioConstraint
G2L["33"] = Instance.new("UIAspectRatioConstraint", G2L["32"]);
G2L["33"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.CommandFrame.Effecticon
G2L["34"] = Instance.new("ImageLabel", G2L["2e"]);
G2L["34"]["ZIndex"] = 111;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["ImageTransparency"] = 1;
G2L["34"]["Image"] = [[rbxassetid://15015988190]];
G2L["34"]["Size"] = UDim2.new(0.35291364789009094, 0, 0.2968836724758148, 0);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Name"] = [[Effecticon]];
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Position"] = UDim2.new(0.39799997210502625, 0, 0.1933310329914093, 0);

-- StarterGui.ScreenGui.CommandFrame.Effecticon.UIAspectRatioConstraint
G2L["35"] = Instance.new("UIAspectRatioConstraint", G2L["34"]);


-- StarterGui.ScreenGui.CommandFrame.MainPage
G2L["36"] = Instance.new("Frame", G2L["2e"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["Size"] = UDim2.new(1, 0, 1.0000001192092896, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Position"] = UDim2.new(0, 0, -4.611440473922812e-08, 0);
G2L["36"]["Visible"] = false;
G2L["36"]["Name"] = [[MainPage]];

-- StarterGui.ScreenGui.CommandFrame.MainPage.UIAspectRatioConstraint
G2L["37"] = Instance.new("UIAspectRatioConstraint", G2L["36"]);
G2L["37"]["AspectRatio"] = 1.541298270225525;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Text2
G2L["38"] = Instance.new("TextLabel", G2L["36"]);
G2L["38"]["TextWrapped"] = true;
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["RichText"] = true;
G2L["38"]["TextScaled"] = true;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["38"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["TextSize"] = 14;
G2L["38"]["TextColor3"] = Color3.fromRGB(210, 210, 210);
G2L["38"]["Size"] = UDim2.new(0.12402577698230743, 0, 0.04779018089175224, 0);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Text"] = [[Panel]];
G2L["38"]["Name"] = [[Text2]];
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["Position"] = UDim2.new(0.4274509847164154, 0, -0.0019397560972720385, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Text2.UIAspectRatioConstraint
G2L["39"] = Instance.new("UIAspectRatioConstraint", G2L["38"]);
G2L["39"]["AspectRatio"] = 3.999999761581421;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Text2
G2L["3a"] = Instance.new("TextLabel", G2L["36"]);
G2L["3a"]["TextWrapped"] = true;
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["RichText"] = true;
G2L["3a"]["TextScaled"] = true;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3a"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["TextSize"] = 14;
G2L["3a"]["TextColor3"] = Color3.fromRGB(162, 162, 162);
G2L["3a"]["Size"] = UDim2.new(0.14363370835781097, 0, 0.05534559115767479, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Text"] = [[Combat]];
G2L["3a"]["Name"] = [[Text2]];
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["Position"] = UDim2.new(0.4176470637321472, 0, 0.043392542749643326, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Text2.UIAspectRatioConstraint
G2L["3b"] = Instance.new("UIAspectRatioConstraint", G2L["3a"]);
G2L["3b"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Line
G2L["3c"] = Instance.new("Frame", G2L["36"]);
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(132, 132, 132);
G2L["3c"]["Size"] = UDim2.new(0.6705217957496643, 0, 0.006044306792318821, 0);
G2L["3c"]["Position"] = UDim2.new(0.15294118225574493, 0, 0.1178639829158783, 0);
G2L["3c"]["Name"] = [[Line]];

-- StarterGui.ScreenGui.CommandFrame.MainPage.Line.UIGradient
G2L["3d"] = Instance.new("UIGradient", G2L["3c"]);
G2L["3d"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1)};

-- StarterGui.ScreenGui.CommandFrame.MainPage.Line.UIAspectRatioConstraint
G2L["3e"] = Instance.new("UIAspectRatioConstraint", G2L["3c"]);
G2L["3e"]["AspectRatio"] = 170.98306274414062;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto
G2L["3f"] = Instance.new("TextButton", G2L["36"]);
G2L["3f"]["ZIndex"] = 111;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["AutoButtonColor"] = false;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(36, 34, 36);
G2L["3f"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["3f"]["Size"] = UDim2.new(0.7753155827522278, 0, 0.1091419979929924, 0);
G2L["3f"]["Name"] = [[Auto]];
G2L["3f"]["Text"] = [[]];
G2L["3f"]["Position"] = UDim2.new(0.4944930672645569, 0, 0.2648106515407562, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.UIPadding
G2L["40"] = Instance.new("UIPadding", G2L["3f"]);
G2L["40"]["PaddingTop"] = UDim.new(0.23999999463558197, 0);
G2L["40"]["PaddingRight"] = UDim.new(0.04500000178813934, 0);
G2L["40"]["PaddingBottom"] = UDim.new(0.23999999463558197, 0);
G2L["40"]["PaddingLeft"] = UDim.new(0.054999999701976776, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.UICorner
G2L["41"] = Instance.new("UICorner", G2L["3f"]);
G2L["41"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.SettingText
G2L["42"] = Instance.new("TextLabel", G2L["3f"]);
G2L["42"]["TextWrapped"] = true;
G2L["42"]["TextScaled"] = true;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(200, 200, 200);
G2L["42"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["42"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["TextSize"] = 14;
G2L["42"]["TextColor3"] = Color3.fromRGB(162, 162, 162);
G2L["42"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["42"]["Text"] = [[Auto Parry]];
G2L["42"]["Name"] = [[SettingText]];
G2L["42"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame
G2L["43"] = Instance.new("Frame", G2L["3f"]);
G2L["43"]["ZIndex"] = 1111111111;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Size"] = UDim2.new(0.1819930076599121, 0, 0.8540704250335693, 0);
G2L["43"]["Position"] = UDim2.new(0.8288387656211853, 0, 0.03942915424704552, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.ToggleFrame
G2L["44"] = Instance.new("Frame", G2L["43"]);
G2L["44"]["ZIndex"] = 1111111111;
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(53, 50, 53);
G2L["44"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["44"]["Size"] = UDim2.new(0.47324609756469727, 0, 1, 0);
G2L["44"]["Position"] = UDim2.new(1.000000238418579, 0, 0.5, 0);
G2L["44"]["Name"] = [[ToggleFrame]];

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.ToggleFrame.Circle
G2L["45"] = Instance.new("Frame", G2L["44"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["45"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["45"]["Position"] = UDim2.new(0.800000011920929, 0, 0.5, 0);
G2L["45"]["Name"] = [[Circle]];

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.ToggleFrame.Circle.UICorner
G2L["46"] = Instance.new("UICorner", G2L["45"]);
G2L["46"]["CornerRadius"] = UDim.new(9, 9);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.ToggleFrame.Circle.UIAspectRatioConstraint
G2L["47"] = Instance.new("UIAspectRatioConstraint", G2L["45"]);
G2L["47"]["AspectRatio"] = 0.9554997086524963;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.ToggleFrame.UICorner
G2L["48"] = Instance.new("UICorner", G2L["44"]);
G2L["48"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.ToggleFrame.UIPadding
G2L["49"] = Instance.new("UIPadding", G2L["44"]);
G2L["49"]["PaddingTop"] = UDim.new(0.15000000596046448, 0);
G2L["49"]["PaddingRight"] = UDim.new(0.15000000596046448, 0);
G2L["49"]["PaddingBottom"] = UDim.new(0.15000000596046448, 0);
G2L["49"]["PaddingLeft"] = UDim.new(0.15000000596046448, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.ToggleFrame.UIAspectRatioConstraint
G2L["4a"] = Instance.new("UIAspectRatioConstraint", G2L["44"]);
G2L["4a"]["AspectRatio"] = 1.9109992980957031;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.UIListLayout
G2L["4b"] = Instance.new("UIListLayout", G2L["43"]);
G2L["4b"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["4b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["4b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Auto.Frame.UIAspectRatioConstraint
G2L["4c"] = Instance.new("UIAspectRatioConstraint", G2L["43"]);
G2L["4c"]["AspectRatio"] = 4.038066864013672;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Test
G2L["4d"] = Instance.new("TextLabel", G2L["36"]);
G2L["4d"]["TextWrapped"] = true;
G2L["4d"]["ZIndex"] = 1244444444;
G2L["4d"]["TextScaled"] = true;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(200, 200, 200);
G2L["4d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["4d"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["TextSize"] = 14;
G2L["4d"]["TextColor3"] = Color3.fromRGB(85, 85, 85);
G2L["4d"]["Size"] = UDim2.new(0.23479770123958588, 0, 0.03727436065673828, 0);
G2L["4d"]["Text"] = [[Auto Enabled]];
G2L["4d"]["Name"] = [[Test]];
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["Position"] = UDim2.new(0.353437602519989, 0, 0.2004828155040741, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze
G2L["4e"] = Instance.new("TextButton", G2L["36"]);
G2L["4e"]["ZIndex"] = 111;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["AutoButtonColor"] = false;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(36, 34, 36);
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["4e"]["Size"] = UDim2.new(0.7753155827522278, 0, 0.1091419979929924, 0);
G2L["4e"]["Name"] = [[SpamFreeze]];
G2L["4e"]["Text"] = [[]];
G2L["4e"]["Position"] = UDim2.new(0.4944930374622345, 0, 0.5525485873222351, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.UIPadding
G2L["4f"] = Instance.new("UIPadding", G2L["4e"]);
G2L["4f"]["PaddingTop"] = UDim.new(0.23999999463558197, 0);
G2L["4f"]["PaddingRight"] = UDim.new(0.04500000178813934, 0);
G2L["4f"]["PaddingBottom"] = UDim.new(0.23999999463558197, 0);
G2L["4f"]["PaddingLeft"] = UDim.new(0.054999999701976776, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.UICorner
G2L["50"] = Instance.new("UICorner", G2L["4e"]);
G2L["50"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.SettingText
G2L["51"] = Instance.new("TextLabel", G2L["4e"]);
G2L["51"]["TextWrapped"] = true;
G2L["51"]["TextScaled"] = true;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(200, 200, 200);
G2L["51"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["51"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["TextSize"] = 14;
G2L["51"]["TextColor3"] = Color3.fromRGB(162, 162, 162);
G2L["51"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["51"]["Text"] = [[Spam Freeze Ball]];
G2L["51"]["Name"] = [[SettingText]];
G2L["51"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame
G2L["52"] = Instance.new("Frame", G2L["4e"]);
G2L["52"]["ZIndex"] = 1111111111;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["BackgroundTransparency"] = 1;
G2L["52"]["Size"] = UDim2.new(0.1819930076599121, 0, 0.8540704250335693, 0);
G2L["52"]["Position"] = UDim2.new(0.8288387656211853, 0, 0.03942915424704552, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.ToggleFrame
G2L["53"] = Instance.new("Frame", G2L["52"]);
G2L["53"]["ZIndex"] = 1111111111;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(23, 22, 23);
G2L["53"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["53"]["Size"] = UDim2.new(0.47324609756469727, 0, 1, 0);
G2L["53"]["Position"] = UDim2.new(1.000000238418579, 0, 0.5, 0);
G2L["53"]["Name"] = [[ToggleFrame]];

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.ToggleFrame.Circle
G2L["54"] = Instance.new("Frame", G2L["53"]);
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["54"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["54"]["Position"] = UDim2.new(0.20000000298023224, 0, 0.5, 0);
G2L["54"]["Name"] = [[Circle]];

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.ToggleFrame.Circle.UICorner
G2L["55"] = Instance.new("UICorner", G2L["54"]);
G2L["55"]["CornerRadius"] = UDim.new(9, 9);

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.ToggleFrame.Circle.UIAspectRatioConstraint
G2L["56"] = Instance.new("UIAspectRatioConstraint", G2L["54"]);
G2L["56"]["AspectRatio"] = 0.9554997086524963;

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.ToggleFrame.UICorner
G2L["57"] = Instance.new("UICorner", G2L["53"]);
G2L["57"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.ToggleFrame.UIPadding
G2L["58"] = Instance.new("UIPadding", G2L["53"]);
G2L["58"]["PaddingTop"] = UDim.new(0.15000000596046448, 0);
G2L["58"]["PaddingRight"] = UDim.new(0.15000000596046448, 0);
G2L["58"]["PaddingBottom"] = UDim.new(0.15000000596046448, 0);
G2L["58"]["PaddingLeft"] = UDim.new(0.15000000596046448, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.ToggleFrame.UIAspectRatioConstraint
G2L["59"] = Instance.new("UIAspectRatioConstraint", G2L["53"]);
G2L["59"]["AspectRatio"] = 1.9109992980957031;

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.UIListLayout
G2L["5a"] = Instance.new("UIListLayout", G2L["52"]);
G2L["5a"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["5a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.Frame.UIAspectRatioConstraint
G2L["5b"] = Instance.new("UIAspectRatioConstraint", G2L["52"]);
G2L["5b"]["AspectRatio"] = 4.038066864013672;

-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.LocalScript
G2L["5c"] = Instance.new("LocalScript", G2L["4e"]);


-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam
G2L["5d"] = Instance.new("TextButton", G2L["36"]);
G2L["5d"]["ZIndex"] = 111;
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["AutoButtonColor"] = false;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(36, 34, 36);
G2L["5d"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["5d"]["Size"] = UDim2.new(0.7753155827522278, 0, 0.1091419979929924, 0);
G2L["5d"]["Name"] = [[Mobile Spam]];
G2L["5d"]["Text"] = [[]];
G2L["5d"]["Position"] = UDim2.new(0.4944930374622345, 0, 0.40925347805023193, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.UIPadding
G2L["5e"] = Instance.new("UIPadding", G2L["5d"]);
G2L["5e"]["PaddingTop"] = UDim.new(0.23999999463558197, 0);
G2L["5e"]["PaddingRight"] = UDim.new(0.04500000178813934, 0);
G2L["5e"]["PaddingBottom"] = UDim.new(0.23999999463558197, 0);
G2L["5e"]["PaddingLeft"] = UDim.new(0.054999999701976776, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5d"]);
G2L["5f"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.SettingText
G2L["60"] = Instance.new("TextLabel", G2L["5d"]);
G2L["60"]["TextWrapped"] = true;
G2L["60"]["TextScaled"] = true;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(200, 200, 200);
G2L["60"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["60"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["TextSize"] = 14;
G2L["60"]["TextColor3"] = Color3.fromRGB(162, 162, 162);
G2L["60"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["60"]["Text"] = [[Mobile Spam]];
G2L["60"]["Name"] = [[SettingText]];
G2L["60"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame
G2L["61"] = Instance.new("Frame", G2L["5d"]);
G2L["61"]["ZIndex"] = 1111111111;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Size"] = UDim2.new(0.1819930076599121, 0, 0.8540704250335693, 0);
G2L["61"]["Position"] = UDim2.new(0.8288387656211853, 0, 0.03942915424704552, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.ToggleFrame
G2L["62"] = Instance.new("Frame", G2L["61"]);
G2L["62"]["ZIndex"] = 1111111111;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(23, 22, 23);
G2L["62"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["62"]["Size"] = UDim2.new(0.47324609756469727, 0, 1, 0);
G2L["62"]["Position"] = UDim2.new(1.000000238418579, 0, 0.5, 0);
G2L["62"]["Name"] = [[ToggleFrame]];

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.ToggleFrame.Circle
G2L["63"] = Instance.new("Frame", G2L["62"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["63"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["63"]["Position"] = UDim2.new(0.20000000298023224, 0, 0.5, 0);
G2L["63"]["Name"] = [[Circle]];

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.ToggleFrame.Circle.UICorner
G2L["64"] = Instance.new("UICorner", G2L["63"]);
G2L["64"]["CornerRadius"] = UDim.new(9, 9);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.ToggleFrame.Circle.UIAspectRatioConstraint
G2L["65"] = Instance.new("UIAspectRatioConstraint", G2L["63"]);
G2L["65"]["AspectRatio"] = 0.9554997086524963;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.ToggleFrame.UICorner
G2L["66"] = Instance.new("UICorner", G2L["62"]);
G2L["66"]["CornerRadius"] = UDim.new(1, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.ToggleFrame.UIPadding
G2L["67"] = Instance.new("UIPadding", G2L["62"]);
G2L["67"]["PaddingTop"] = UDim.new(0.15000000596046448, 0);
G2L["67"]["PaddingRight"] = UDim.new(0.15000000596046448, 0);
G2L["67"]["PaddingBottom"] = UDim.new(0.15000000596046448, 0);
G2L["67"]["PaddingLeft"] = UDim.new(0.15000000596046448, 0);

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.ToggleFrame.UIAspectRatioConstraint
G2L["68"] = Instance.new("UIAspectRatioConstraint", G2L["62"]);
G2L["68"]["AspectRatio"] = 1.9109992980957031;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.UIListLayout
G2L["69"] = Instance.new("UIListLayout", G2L["61"]);
G2L["69"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["69"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["69"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.Frame.UIAspectRatioConstraint
G2L["6a"] = Instance.new("UIAspectRatioConstraint", G2L["61"]);
G2L["6a"]["AspectRatio"] = 4.038066864013672;

-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.LocalScript
G2L["6b"] = Instance.new("LocalScript", G2L["5d"]);


-- StarterGui.ScreenGui.CommandFrame.Gui
G2L["6c"] = Instance.new("LocalScript", G2L["2e"]);
G2L["6c"]["Name"] = [[Gui]];

-- StarterGui.ScreenGui.CommandFrame.UIAspectRatioConstraint
G2L["6d"] = Instance.new("UIAspectRatioConstraint", G2L["2e"]);
G2L["6d"]["AspectRatio"] = 1.5412983894348145;

-- StarterGui.ScreenGui.ProfileFrame
G2L["6e"] = Instance.new("Frame", G2L["1"]);
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(107, 107, 107);
G2L["6e"]["BackgroundTransparency"] = 1;
G2L["6e"]["Size"] = UDim2.new(0.4440000057220459, 0, 0.48399999737739563, 0);
G2L["6e"]["ClipsDescendants"] = true;
G2L["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["Position"] = UDim2.new(0.22200000286102295, 0, 1.7319999933242798, 0);
G2L["6e"]["Name"] = [[ProfileFrame]];

-- StarterGui.ScreenGui.ProfileFrame.UICorner
G2L["6f"] = Instance.new("UICorner", G2L["6e"]);


-- StarterGui.ScreenGui.ProfileFrame.UIGradient
G2L["70"] = Instance.new("UIGradient", G2L["6e"]);
G2L["70"]["Rotation"] = -67;
G2L["70"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(33, 0, 140)),ColorSequenceKeypoint.new(0.029, Color3.fromRGB(29, 0, 90)),ColorSequenceKeypoint.new(0.095, Color3.fromRGB(4, 0, 50)),ColorSequenceKeypoint.new(0.140, Color3.fromRGB(0, 4, 35)),ColorSequenceKeypoint.new(0.539, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.838, Color3.fromRGB(19, 0, 40)),ColorSequenceKeypoint.new(0.895, Color3.fromRGB(33, 7, 58)),ColorSequenceKeypoint.new(0.964, Color3.fromRGB(30, 2, 59)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(47, 0, 92))};

-- StarterGui.ScreenGui.ProfileFrame.Gui
G2L["71"] = Instance.new("LocalScript", G2L["6e"]);
G2L["71"]["Name"] = [[Gui]];

-- StarterGui.ScreenGui.ProfileFrame.UIAspectRatioConstraint
G2L["72"] = Instance.new("UIAspectRatioConstraint", G2L["6e"]);
G2L["72"]["AspectRatio"] = 1.5412983894348145;

-- StarterGui.ScreenGui.ProfileFrame.MainPage
G2L["73"] = Instance.new("Frame", G2L["6e"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["Size"] = UDim2.new(1, 0, 1.0000001192092896, 0);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Position"] = UDim2.new(0, 0, -4.611440473922812e-08, 0);
G2L["73"]["Visible"] = false;
G2L["73"]["Name"] = [[MainPage]];

-- StarterGui.ScreenGui.ProfileFrame.MainPage.UIAspectRatioConstraint
G2L["74"] = Instance.new("UIAspectRatioConstraint", G2L["73"]);
G2L["74"]["AspectRatio"] = 1.541298270225525;

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Text2
G2L["75"] = Instance.new("TextLabel", G2L["73"]);
G2L["75"]["TextWrapped"] = true;
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["RichText"] = true;
G2L["75"]["TextScaled"] = true;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["75"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["TextSize"] = 14;
G2L["75"]["TextColor3"] = Color3.fromRGB(210, 210, 210);
G2L["75"]["Size"] = UDim2.new(0.12402577698230743, 0, 0.04779018089175224, 0);
G2L["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["Text"] = [[Panel]];
G2L["75"]["Name"] = [[Text2]];
G2L["75"]["BackgroundTransparency"] = 1;
G2L["75"]["Position"] = UDim2.new(0.4274509847164154, 0, -0.0019397560972720385, 0);

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Text2.UIAspectRatioConstraint
G2L["76"] = Instance.new("UIAspectRatioConstraint", G2L["75"]);
G2L["76"]["AspectRatio"] = 3.999999761581421;

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Text2
G2L["77"] = Instance.new("TextLabel", G2L["73"]);
G2L["77"]["TextWrapped"] = true;
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["RichText"] = true;
G2L["77"]["TextScaled"] = true;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["77"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["77"]["TextSize"] = 14;
G2L["77"]["TextColor3"] = Color3.fromRGB(162, 162, 162);
G2L["77"]["Size"] = UDim2.new(0.14363370835781097, 0, 0.05534559115767479, 0);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Text"] = [[Profile]];
G2L["77"]["Name"] = [[Text2]];
G2L["77"]["BackgroundTransparency"] = 1;
G2L["77"]["Position"] = UDim2.new(0.4176470637321472, 0, 0.043392542749643326, 0);

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Text2.UIAspectRatioConstraint
G2L["78"] = Instance.new("UIAspectRatioConstraint", G2L["77"]);
G2L["78"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Line
G2L["79"] = Instance.new("Frame", G2L["73"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(132, 132, 132);
G2L["79"]["Size"] = UDim2.new(0.6705217957496643, 0, 0.006044306792318821, 0);
G2L["79"]["Position"] = UDim2.new(0.15294118225574493, 0, 0.1178639829158783, 0);
G2L["79"]["Name"] = [[Line]];

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Line.UIGradient
G2L["7a"] = Instance.new("UIGradient", G2L["79"]);
G2L["7a"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.500, 0),NumberSequenceKeypoint.new(1.000, 1)};

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Line.UIAspectRatioConstraint
G2L["7b"] = Instance.new("UIAspectRatioConstraint", G2L["79"]);
G2L["7b"]["AspectRatio"] = 170.98306274414062;

-- StarterGui.ScreenGui.ProfileFrame.MainPage.ProfileIcon
G2L["7c"] = Instance.new("ImageLabel", G2L["73"]);
G2L["7c"]["ZIndex"] = 111;
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["Image"] = [[rbxassetid://15015988190]];
G2L["7c"]["Size"] = UDim2.new(0.35291364789009094, 0, 0.2968836724758148, 0);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Name"] = [[ProfileIcon]];
G2L["7c"]["BackgroundTransparency"] = 1;
G2L["7c"]["Position"] = UDim2.new(0.39799997210502625, 0, 0.1933310329914093, 0);

-- StarterGui.ScreenGui.ProfileFrame.MainPage.ProfileIcon.UIAspectRatioConstraint
G2L["7d"] = Instance.new("UIAspectRatioConstraint", G2L["7c"]);


-- StarterGui.ScreenGui.ProfileFrame.MainPage.ProfileIcon.LocalScript
G2L["7e"] = Instance.new("LocalScript", G2L["7c"]);


-- StarterGui.ScreenGui.ProfileFrame.MainPage.Displayname
G2L["7f"] = Instance.new("TextLabel", G2L["73"]);
G2L["7f"]["TextWrapped"] = true;
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["RichText"] = true;
G2L["7f"]["TextScaled"] = true;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["7f"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["TextSize"] = 14;
G2L["7f"]["TextColor3"] = Color3.fromRGB(215, 215, 215);
G2L["7f"]["Size"] = UDim2.new(0.1378117948770523, 0, 0.06443535536527634, 0);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Text"] = [[DevTrav]];
G2L["7f"]["Name"] = [[Displayname]];
G2L["7f"]["BackgroundTransparency"] = 1;
G2L["7f"]["Position"] = UDim2.new(0.4186912477016449, 0, 0.4898856282234192, 0);

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Displayname.UIAspectRatioConstraint
G2L["80"] = Instance.new("UIAspectRatioConstraint", G2L["7f"]);
G2L["80"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Displayname.LocalScript
G2L["81"] = Instance.new("LocalScript", G2L["7f"]);


-- StarterGui.ScreenGui.ProfileFrame.MainPage.Name
G2L["82"] = Instance.new("TextLabel", G2L["73"]);
G2L["82"]["TextWrapped"] = true;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["RichText"] = true;
G2L["82"]["TextScaled"] = true;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["82"]["TextStrokeColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["TextSize"] = 14;
G2L["82"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["82"]["Size"] = UDim2.new(0.12690328061580658, 0, 0.05008011311292648, 0);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Text"] = [[@DevTravDYT]];
G2L["82"]["Name"] = [[Name]];
G2L["82"]["BackgroundTransparency"] = 1;
G2L["82"]["Position"] = UDim2.new(0.4186912477016449, 0, 0.5412622690200806, 0);

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Name.UIAspectRatioConstraint
G2L["83"] = Instance.new("UIAspectRatioConstraint", G2L["82"]);
G2L["83"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.ProfileFrame.MainPage.Name.LocalScript
G2L["84"] = Instance.new("LocalScript", G2L["82"]);


-- StarterGui.ScreenGui.Mobile
G2L["85"] = Instance.new("Frame", G2L["1"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(61, 68, 75);
G2L["85"]["BackgroundTransparency"] = 0.699999988079071;
G2L["85"]["Size"] = UDim2.new(0.1498231738805771, 0, 0.1885160654783249, 0);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Position"] = UDim2.new(0.8301665186882019, 0, 0.5419355034828186, 0);
G2L["85"]["Visible"] = false;
G2L["85"]["Name"] = [[Mobile]];

-- StarterGui.ScreenGui.Mobile.MainFrame
G2L["86"] = Instance.new("Frame", G2L["85"]);
G2L["86"]["BorderSizePixel"] = 0;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(150, 150, 150);
G2L["86"]["Size"] = UDim2.new(1.0021096467971802, 0, 0.9295302033424377, 0);
G2L["86"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["86"]["Position"] = UDim2.new(-0.001154517289251089, 0, 0.13609017431735992, 0);
G2L["86"]["Name"] = [[MainFrame]];

-- StarterGui.ScreenGui.Mobile.MainFrame.UIAspectRatioConstraint
G2L["87"] = Instance.new("UIAspectRatioConstraint", G2L["86"]);
G2L["87"]["AspectRatio"] = 1.7148014307022095;

-- StarterGui.ScreenGui.Mobile.MainFrame.UIStroke
G2L["88"] = Instance.new("UIStroke", G2L["86"]);
G2L["88"]["Transparency"] = 0.7200000286102295;

-- StarterGui.ScreenGui.Mobile.MainFrame.KeyTitle
G2L["89"] = Instance.new("TextLabel", G2L["86"]);
G2L["89"]["TextWrapped"] = true;
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["RichText"] = true;
G2L["89"]["TextScaled"] = true;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["89"]["TextSize"] = 14;
G2L["89"]["TextColor3"] = Color3.fromRGB(187, 187, 187);
G2L["89"]["Size"] = UDim2.new(0.4405057728290558, 0, 0.14845585823059082, 0);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["Text"] = [[Mobile Spam Pary]];
G2L["89"]["Name"] = [[KeyTitle]];
G2L["89"]["BackgroundTransparency"] = 1;
G2L["89"]["Position"] = UDim2.new(0.27752453088760376, 0, 0.057035669684410095, 0);

-- StarterGui.ScreenGui.Mobile.MainFrame.KeyTitle.UIAspectRatioConstraint
G2L["8a"] = Instance.new("UIAspectRatioConstraint", G2L["89"]);
G2L["8a"]["AspectRatio"] = 7;

-- StarterGui.ScreenGui.Mobile.MainFrame.Spam
G2L["8b"] = Instance.new("TextButton", G2L["86"]);
G2L["8b"]["TextWrapped"] = true;
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["RichText"] = true;
G2L["8b"]["TextScaled"] = true;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["TextSize"] = 14;
G2L["8b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["Size"] = UDim2.new(0.5354637503623962, 0, 0.24207457900047302, 0);
G2L["8b"]["Name"] = [[Spam]];
G2L["8b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8b"]["Text"] = [[OFF]];
G2L["8b"]["Position"] = UDim2.new(0.22878898680210114, 0, 0.38398030400276184, 0);
G2L["8b"]["BackgroundTransparency"] = 1;

-- StarterGui.ScreenGui.Mobile.MainFrame.Spam.UIAspectRatioConstraint
G2L["8c"] = Instance.new("UIAspectRatioConstraint", G2L["8b"]);
G2L["8c"]["AspectRatio"] = 4;

-- StarterGui.ScreenGui.Mobile.MainFrame.Spam.LocalScript
G2L["8d"] = Instance.new("LocalScript", G2L["8b"]);


-- StarterGui.ScreenGui.Mobile.MainFrame.UIGradient
G2L["8e"] = Instance.new("UIGradient", G2L["86"]);
G2L["8e"]["Rotation"] = -67;
G2L["8e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(33, 0, 140)),ColorSequenceKeypoint.new(0.029, Color3.fromRGB(29, 0, 90)),ColorSequenceKeypoint.new(0.095, Color3.fromRGB(4, 0, 50)),ColorSequenceKeypoint.new(0.140, Color3.fromRGB(0, 4, 35)),ColorSequenceKeypoint.new(0.539, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.838, Color3.fromRGB(19, 0, 40)),ColorSequenceKeypoint.new(0.895, Color3.fromRGB(33, 7, 58)),ColorSequenceKeypoint.new(0.964, Color3.fromRGB(30, 2, 59)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(47, 0, 92))};

-- StarterGui.ScreenGui.Mobile.UICorner
G2L["8f"] = Instance.new("UICorner", G2L["85"]);
G2L["8f"]["CornerRadius"] = UDim.new(0, 10);

-- StarterGui.ScreenGui.Mobile.UIStroke
G2L["90"] = Instance.new("UIStroke", G2L["85"]);
G2L["90"]["Transparency"] = 0.7200000286102295;

-- StarterGui.ScreenGui.Mobile.Title
G2L["91"] = Instance.new("TextLabel", G2L["85"]);
G2L["91"]["TextWrapped"] = true;
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["RichText"] = true;
G2L["91"]["TextScaled"] = true;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["91"]["TextSize"] = 14;
G2L["91"]["TextColor3"] = Color3.fromRGB(228, 228, 228);
G2L["91"]["Size"] = UDim2.new(0.3122362792491913, 0, 0.10067114979028702, 0);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["Text"] = [[Visual Mobile Spam]];
G2L["91"]["Name"] = [[Title]];
G2L["91"]["BackgroundTransparency"] = 1;
G2L["91"]["Position"] = UDim2.new(0.10999999940395355, 0, 0.017000000923871994, 0);

-- StarterGui.ScreenGui.Mobile.Title.UICosmic
G2L["92"] = Instance.new("UIGradient", G2L["91"]);
G2L["92"]["Enabled"] = false;
G2L["92"]["Name"] = [[UICosmic]];
G2L["92"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 175, 255)),ColorSequenceKeypoint.new(0.234, Color3.fromRGB(62, 156, 255)),ColorSequenceKeypoint.new(0.510, Color3.fromRGB(58, 127, 255)),ColorSequenceKeypoint.new(0.758, Color3.fromRGB(34, 75, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(12, 24, 255))};

-- StarterGui.ScreenGui.Mobile.Icon
G2L["93"] = Instance.new("ImageLabel", G2L["85"]);
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["ImageTransparency"] = 0.029999999329447746;
G2L["93"]["Image"] = [[rbxassetid://663710708]];
G2L["93"]["Size"] = UDim2.new(0.2109704464673996, 0, 0.33557048439979553, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["Name"] = [[Icon]];
G2L["93"]["BackgroundTransparency"] = 1;
G2L["93"]["Position"] = UDim2.new(0.030000001192092896, 0, 0.010067113675177097, 2);

-- StarterGui.ScreenGui.Mobile.Icon.UIAspectRatioConstraint
G2L["94"] = Instance.new("UIAspectRatioConstraint", G2L["93"]);
G2L["94"]["DominantAxis"] = Enum.DominantAxis.Height;

-- StarterGui.ScreenGui.Mobile.Icon.UIGradient
G2L["95"] = Instance.new("UIGradient", G2L["93"]);
G2L["95"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.401, 0.11250001192092896),NumberSequenceKeypoint.new(0.500, 0.09999996423721313),NumberSequenceKeypoint.new(0.601, 0.09375),NumberSequenceKeypoint.new(1.000, 0.09999996423721313)};
G2L["95"]["Rotation"] = -34;
G2L["95"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(192, 192, 192)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.ScreenGui.Mobile.Icon.UICosmic
G2L["96"] = Instance.new("UIGradient", G2L["93"]);
G2L["96"]["Enabled"] = false;
G2L["96"]["Name"] = [[UICosmic]];
G2L["96"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 175, 255)),ColorSequenceKeypoint.new(0.234, Color3.fromRGB(62, 156, 255)),ColorSequenceKeypoint.new(0.510, Color3.fromRGB(58, 127, 255)),ColorSequenceKeypoint.new(0.758, Color3.fromRGB(34, 75, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(12, 24, 255))};

-- StarterGui.ScreenGui.Mobile.Icon.UIScale
G2L["97"] = Instance.new("UIScale", G2L["93"]);
G2L["97"]["Scale"] = 0.30000001192092896;

-- StarterGui.ScreenGui.Mobile.LocalScript
G2L["98"] = Instance.new("LocalScript", G2L["85"]);


-- StarterGui.ScreenGui.Mobile.UIAspectRatioConstraint
G2L["99"] = Instance.new("UIAspectRatioConstraint", G2L["85"]);
G2L["99"]["AspectRatio"] = 1.5906041860580444;

-- StarterGui.ScreenGui.Mobile.UIScale
G2L["9a"] = Instance.new("UIScale", G2L["85"]);
G2L["9a"]["Scale"] = 0.8999999761581421;

-- StarterGui.ScreenGui.Menu.Command.LocalScript
local function C_f()
local script = G2L["f"];
	script.Parent.MouseEnter:Connect(function()
		game:GetService("TweenService"):Create(script.Parent.ImageLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.ImageLabel2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 0
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.Text2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			TextTransparency = 0.1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.TextLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			TextTransparency = 0.1
		}):Play();
	end)
	script.Parent.MouseLeave:Connect(function()
		game:GetService("TweenService"):Create(script.Parent.ImageLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 0
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.ImageLabel2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.Text2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			TextTransparency = 1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.TextLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			TextTransparency = 1
		}):Play();
	end)
	local offIconText_Value = "0.398, 0,0.415, 0"
	local GuiClosed_Pos = "0.222, 0,1.732, 0"
	local onoff = true
	local CF = script.Parent.Parent.Parent.CommandFrame
	local Icon = CF.Effecticon
	local icontext = CF.Text2
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if onoff == true then
			wait(2)
			game:GetService("TweenService"):Create(script.Parent.Parent.Parent.ProfileFrame, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.222, 0,1.732, 0)
			}):Play();
			game:GetService("TweenService"):Create(script.Parent.Parent.Parent.ProfileFrame, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 1
			}):Play();
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.222, 0,0.232, 0)
			}):Play();
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 0
			}):Play();
			wait(0.6)
			game:GetService("TweenService"):Create(Icon, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.398, 0,0.349, 0)
			}):Play();
			game:GetService("TweenService"):Create(Icon, TweenInfo.new(1, Enum.EasingStyle.Quint), {
				ImageTransparency = 0
			}):Play();
			wait(1)
			game:GetService("TweenService"):Create(Icon, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.398, 0,0.193, 0)
			}):Play();
			game:GetService("TweenService"):Create(icontext, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.398, 0,0.496, 0)
			}):Play();
			game:GetService("TweenService"):Create(icontext, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				TextTransparency = 0
			}):Play();
			wait(1.1)
			game:GetService("TweenService"):Create(Icon, TweenInfo.new(1, Enum.EasingStyle.Quint), {
				ImageTransparency = 1
			}):Play();
			game:GetService("TweenService"):Create(icontext, TweenInfo.new(1, Enum.EasingStyle.Quint), {
				TextTransparency = 1
			}):Play();
			CF.MainPage.Visible = true
			onoff = false
		else
			wait(0.2)
			onoff = true
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.222, 0,1.732, 0)
			}):Play();
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 1
			}):Play();
			CF.MainPage.Visible = false
		end
	end)
end;
task.spawn(C_f);
-- StarterGui.ScreenGui.Menu.Profile.LocalScript
local function C_1c()
local script = G2L["1c"];
	script.Parent.MouseEnter:Connect(function()
		game:GetService("TweenService"):Create(script.Parent.ImageLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.ImageLabel2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 0
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.Text2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			TextTransparency = 0.1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.TextLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			TextTransparency = 0.1
		}):Play();
	end)
	script.Parent.MouseLeave:Connect(function()
		game:GetService("TweenService"):Create(script.Parent.ImageLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 0
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.ImageLabel2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.Text2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			TextTransparency = 1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.TextLabel, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			TextTransparency = 1
		}):Play();
	end)
	local offGUI_Value = "0.398, 0,1.193, 0"
	local offIconText_Value = "0.398, 0,0.415, 0"
	local GuiClosed_Pos = "0.222, 0,1.732, 0"
	local onoff = true
	local CF = script.Parent.Parent.Parent.ProfileFrame
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if onoff == true then
			game:GetService("TweenService"):Create(script.Parent.Parent.Parent.CommandFrame, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.222, 0,1.732, 0)
			}):Play();
			game:GetService("TweenService"):Create(script.Parent.Parent.Parent.CommandFrame, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 1
			}):Play();
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.222, 0,0.232, 0)
			}):Play();
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 0
			}):Play();
			CF.MainPage.Visible = true
			wait(0.6)
			onoff = false
		else
			wait(0.5)
			onoff = true
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.222, 0,1.732, 0)
			}):Play();
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 1
			}):Play();
			CF.MainPage.Visible = false
		end
	end)
	
	
end;
task.spawn(C_1c);
-- StarterGui.ScreenGui.Open.LocalScript
local function C_24()
local script = G2L["24"];
	local Script_Button = script.Parent
	local Script_Menu = script.Parent.Parent.Menu.Command
	local realmenu = script.Parent.Parent.Menu
	local l__TweenService__14 = game:GetService("TweenService");
	local OnOff = true
	local pos = "3.616"
	local USAP = realmenu.UIAspectRatioConstraint
	local BUUSAP = Script_Menu.UIAspectRatioConstraint
	local Testinginfo = TweenInfo.new(
		0.8,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local Note = l__TweenService__14:Create(Script_Menu, Testinginfo, {Position = UDim2.new(0.054, 0,0.118, 0)})
	
	local TestinginfoTestinginfo = TweenInfo.new(
		0.8,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local NoteNoteNote = l__TweenService__14:Create(script.Parent.Parent.Menu.Profile, TestinginfoTestinginfo, {Position = UDim2.new(0.331, 0,0.118, 0)})
	
	local TestinginfoTestinginfo1 = TweenInfo.new(
		0.8,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local NoteNoteNoteNoteNoteNote = l__TweenService__14:Create(script.Parent.Parent.Menu.Profile, TestinginfoTestinginfo1, {Position = UDim2.new(-0.309, 0,0.118, 0)})
	
	local Testinginfo5 = TweenInfo.new(
		0.8,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local Note2 = l__TweenService__14:Create(Script_Menu, Testinginfo5, {Position = UDim2.new(-0.309, 0,0.092, 0)})
	
	local Testinginfo1 = TweenInfo.new(
		0.8,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local Note1 = l__TweenService__14:Create(realmenu, Testinginfo1, {Transparency = 0})
	
	local Testinginfo1111 = TweenInfo.new(
		0.8,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local Note1111 = l__TweenService__14:Create(realmenu, Testinginfo1111, {Transparency = 1})
	
	local Testinginfo2 = TweenInfo.new(
		0.8,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local NoteHover = l__TweenService__14:Create(script.Parent.Parent.effect, Testinginfo2, {ImageTransparency = 0})
	local Testinginfo3 = TweenInfo.new(
		0.8,
		Enum.EasingStyle.Quint,
		Enum.EasingDirection.Out, 
		0, 
		false,
		0
	)
	local NotHover = l__TweenService__14:Create(script.Parent.Parent.effect, Testinginfo3, {ImageTransparency = 0.7})
	local CF = script.Parent.Parent.CommandFrame
	script.Parent.MouseButton1Click:Connect(function()
		if OnOff == true then
		Note:Play()
			Note1:Play()
			NoteNoteNote:Play()
			Script_Menu.LocalScript.Enabled = true
			game:GetService("TweenService"):Create(USAP, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
				AspectRatio = 3.616
			}):Play();
			game:GetService("TweenService"):Create(BUUSAP, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
				AspectRatio = 1
			}):Play();
			OnOff = false
		else
			wait(0.2)
			OnOff = true
			NoteNoteNoteNoteNoteNote:Play()
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.222, 0,1.732, 0)
			}):Play();
			game:GetService("TweenService"):Create(CF, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 1
			}):Play();
			game:GetService("TweenService"):Create(script.Parent.Parent.ProfileFrame, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				Position = UDim2.new(0.222, 0,1.732, 0)
			}):Play();
			game:GetService("TweenService"):Create(script.Parent.Parent.ProfileFrame, TweenInfo.new(1.3, Enum.EasingStyle.Quint), {
				BackgroundTransparency = 1
			}):Play();
			CF.MainPage.Visible = false
			game:GetService("TweenService"):Create(BUUSAP, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
				AspectRatio = 0.001
			}):Play();
			game:GetService("TweenService"):Create(USAP, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
				AspectRatio = 0.001
			}):Play();
			Script_Menu.LocalScript.Enabled = false
			Note2:Play()
			Note1111:Play()
		end
	end)
	script.Parent.MouseEnter:Connect(function()
		NoteHover:Play()
		game:GetService("TweenService"):Create(script.Parent.leaf1, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.leaf2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 0
		}):Play();
	end)
	script.Parent.MouseLeave:Connect(function()
		NotHover:Play()
		game:GetService("TweenService"):Create(script.Parent.leaf1, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 0
		}):Play();
		game:GetService("TweenService"):Create(script.Parent.leaf2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play();
	end)
end;
task.spawn(C_24);
-- StarterGui.ScreenGui.Open.fps.LocalScript
local function C_2d()
local script = G2L["2d"];
	while true do
		local delta = game:GetService("RunService").RenderStepped:Wait()
		script.Parent.Text = "FPS: " ..tostring(math.floor(1/delta))
	end
end;
task.spawn(C_2d);
-- StarterGui.ScreenGui.CommandFrame.MainPage.SpamFreeze.LocalScript
local function C_5c()
local script = G2L["5c"];
	local onoff = true
	local button = script.Parent 
	local activated = false
	local l__TweenService__14 = game:GetService("TweenService");
	local function toggle()
		activated = not activated
		while activated do
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Freeze"):FireServer()
			game:GetService("RunService").Heartbeat:Wait(0.00000000000004)
		end
	end
	button.MouseButton1Click:Connect(function()
		if onoff == true then
			script.Parent.Frame.ToggleFrame.BackgroundColor3 = Color3.fromRGB(52, 49, 52)
			script.Parent.Frame.ToggleFrame.Circle:TweenPosition(UDim2.new(0.8,0,0.5,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Linear,0.09)
			onoff = false
		else
			wait(0.2)
			onoff = true
			script.Parent.Frame.ToggleFrame.Circle:TweenPosition(UDim2.new(0.2,0,0.5,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Linear,0.09)
			script.Parent.Frame.ToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 21, 22)
		end
	end)
	button.MouseButton1Click:Connect(toggle)
end;
task.spawn(C_5c);
-- StarterGui.ScreenGui.CommandFrame.MainPage.Mobile Spam.LocalScript
local function C_6b()
local script = G2L["6b"];
	local onoff = true
	local l__TweenService__14 = game:GetService("TweenService");
	script.Parent.MouseButton1Click:Connect(function()
		if onoff == true then
			script.Parent.Frame.ToggleFrame.BackgroundColor3 = Color3.fromRGB(52, 49, 52)
			script.Parent.Frame.ToggleFrame.Circle:TweenPosition(UDim2.new(0.8,0,0.5,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Linear,0.09)
			script.Parent.Parent.Parent.Parent.Mobile.Visible = true
			onoff = false
		else
			wait(0.2)
			onoff = true
			script.Parent.Parent.Parent.Parent.Mobile.Visible = false
			script.Parent.Frame.ToggleFrame.Circle:TweenPosition(UDim2.new(0.2,0,0.5,0),Enum.EasingDirection.InOut,Enum.EasingStyle.Linear,0.09)
			script.Parent.Frame.ToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 21, 22)
		end
	end)
end;
task.spawn(C_6b);
-- StarterGui.ScreenGui.CommandFrame.Gui
local function C_6c()
local script = G2L["6c"];
	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end;
task.spawn(C_6c);
-- StarterGui.ScreenGui.ProfileFrame.Gui
local function C_71()
local script = G2L["71"];
	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end;
task.spawn(C_71);
-- StarterGui.ScreenGui.ProfileFrame.MainPage.ProfileIcon.LocalScript
local function C_7e()
local script = G2L["7e"];
	while true do
		local a = script.Parent
		local b = game.Players.LocalPlayer
		a.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..b.Name
		wait(0.002)
	end
	
end;
task.spawn(C_7e);
-- StarterGui.ScreenGui.ProfileFrame.MainPage.Displayname.LocalScript
local function C_81()
local script = G2L["81"];
	while true do
		local a = script.Parent
		local b = game.Players.LocalPlayer
		a.Text = b.DisplayName
		wait(0.002)
	end
	
end;
task.spawn(C_81);
-- StarterGui.ScreenGui.ProfileFrame.MainPage.Name.LocalScript
local function C_84()
local script = G2L["84"];
	while true do
		local a = script.Parent
		local b = game.Players.LocalPlayer
		a.Text = "@ ".. b.Name
		wait(0.002)
	end
	
end;
task.spawn(C_84);
-- StarterGui.ScreenGui.Mobile.MainFrame.Spam.LocalScript
local function C_8d()
local script = G2L["8d"];
	local button = script.Parent
	
	local activated = false
	
	local function toggle()
		activated = not activated
		button.Text = activated and "On" or "OFF"
		while activated do
			local args = {
				[1] = 1.5,
				[2] = CFrame.new(-254.2939910888672, 112.13581848144531, -119.27256774902344) * CFrame.Angles(-2.029526710510254, 0.5662040710449219, 2.314905881881714),
				[3] = {
					["2617721424"] = Vector3.new(-273.400146484375, -724.8031005859375, -20.92414093017578),
				},
				[4] = {
					[1] = 910,
					[2] = 154
				}
			}
			game:GetService("ReplicatedStorage").Remotes.ParryAttempt:FireServer(unpack(args))
			game:GetService("RunService").Heartbeat:Wait(0.000001)
		end
	end
	
	button.MouseButton1Click:Connect(toggle)
	
	
	local UserInputService = game:GetService("UserInputService")
	local eKeyPressed = false
	
	UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if input.KeyCode == Enum.KeyCode.E and not gameProcessedEvent then
			eKeyPressed = true
			toggle()
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
		if input.KeyCode == Enum.KeyCode.E then
			eKeyPressed = false
		end
	end)
end;
task.spawn(C_8d);
-- StarterGui.ScreenGui.Mobile.LocalScript
local function C_98()
local script = G2L["98"];
	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	
	local dragToggle = nil
	local dragSpeed = 0.01
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y) 
		game:GetService('TweenService') :Create(frame, TweenInfo.new(dragSpeed), {Position = position}) :Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			print('Click')
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					print('Release')
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				print('Drag')
				updateInput(input)
			end
		end
	end)
end;
task.spawn(C_98);
return G2L["1"], require;
