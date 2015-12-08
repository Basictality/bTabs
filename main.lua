admin = game.Players.LocalPlayer.Name
maincol = "Teal"
selcol = "Really black"
size = "2" --for example, "2".
formfac = "Custom"
dis = "7"
seltrans = "0.5"

	local tab = Instance.new('Part',workspace)
	tab{BrickColor = BrickColor.new(maincol);
	FormFactor = formfac;
	Size = Vector3.new(size,size,size);
	Material = "Neon";
	Anchored = true;}
	
	tabsel=Instance.new('SelectionBox',tab)
	tabsel.Color3 = Color3.new(selcol)
	tabsel.Adornee = tab
	tabsel.Transparency = seltrans
--delete click
cd=Instance.new("ClickDetector",tab)
function onClicked(Player) do
if Player.Name == admin  then
for i = size,0,-0.1 do wait()
	tab.Size = Vector3.new(i,i,i)
end
game.Debris:AddItem(tab,0)
end
end
end

cd.MouseClick:connect(onClicked)
--rot

function say(saying)
			gui=Instance.new("BillboardGui",gui)
		gui.Parent=tab
		gui.Adornee=tab
		gui.Size=UDim2.new(3,0,4,0)
		gui.StudsOffset=Vector3.new(0,2,0)
		text=Instance.new("TextLabel",gui)
		text.Text = saying
		text.FontSize = "Size48"
		text.Size=UDim2.new(0,100,0,100)
		text.Position=UDim2.new(0,0,0,0)
		text.BackgroundTransparency = 1
		text.BorderSizePixel = 0
		text.TextStrokeTransparency = 0
		text.TextColor3 = Color3.new(255,255,255)
end

say('click me to remove me')


function rot(somthing)
repeat
	for i = 0,math.huge,0.1 do wait()
		tab.CFrame = workspace[admin].Torso.CFrame * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,-dis) * CFrame.Angles(math.abs(i),0,math.abs(i))
	end
until false
end

rot(tab)
