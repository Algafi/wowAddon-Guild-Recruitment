-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


local reclute = "<<SHREW>> (ToS 4/9MM). Recluta DPS: rogue, dk, pollo y hunter.  D-J 22.30 a 00.30h. + info /w"


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


local frame = CreateFrame("Frame", "DragFrame", UIParent, "BasicFrameTemplate")
frame:SetPoint("CENTER",0,0)
frame:SetHeight(100)
frame:SetWidth(150)
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", frame.StartMoving)
frame:SetScript("OnDragStop", frame.StopMovingOrSizing)

local mybutton = CreateFrame("Button","Reclute",frame,"UIPanelButtonTemplate")
mybutton:RegisterForClicks("LeftButtonUp")
mybutton:SetPoint("BOTTOM",0,20)
mybutton:SetWidth(100)
mybutton:SetHeight(50)
mybutton:SetText("Reclute")

local function Reclute()
	local channelName1, channelName2

	channelName1,channelName2 = EnumerateServerChannels()

	if((channelName2 == "Comercio")or(channelName2 == "Trade"))then

		SendChatMessage(reclute,"CHANNEL",nil,2)
	else
		SendChatMessage(reclute,"CHANNEL",nil,1)
	end
end


mybutton:SetScript("OnClick", function(self, button, down)
	Reclute()
end)