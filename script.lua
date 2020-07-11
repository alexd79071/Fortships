dofile("scripts/forts.lua")

data.Controllers = {}
data.NodeA = {} -- used to store the selected nodes of each player's device's platform
data.NodeB = {} -- ditto
Frame = 0
SelectedFrame = 0

-----------------------------------------------------------------------------------------------------------

--Used to find the distance between two points
function distance ( x1, y1, x2, y2 )
  local dx = x1 - x2
  local dy = y1 - y2
  return math.sqrt ( dx * dx + dy * dy )
end

function StartsWith(A, B)
	return string.sub(A, 0, string.len(B)) == B
end
-----------------------------------------------------------------------------------------------------------
function Load()
	Main(1)
	Main(2)
	
	Log("Mod loaded")
	showModInfo()
end
-----------------------------------------------------------------------------------------------------------
function showModInfo()
	if (GetLocalTeamId() == -3) then
		return
	end
	--Mod name, auther and link
	local ModName = "Fortships: Conquer the Skies - (Right Click to Dismiss this Popup)" 
	local ModAuthor = "Author: Alexc96161"
	local ModLink = "https://steamcommunity.com/sharedfiles/filedetails/?id=1966308308 - https://discord.gg/qWSkdNG"
	--For instructions or other important things
	local ModOther = "The Controller device and the Suspendium Chamber device are important"
	local ModOther2 = "read the descriptions of these devices. Warning: !This mod is a Work in Progress!"
	local ModCredit = "Thanks to SamsterBirdies, [Dev] BeeMan, Lancenshield, Wak, Land Planters"
	local ModCredit2 = "Pyro, Bobereto, and others who helped me make and test this mod."
	AddTextControl("HUD", "ModName", ModName, ANCHOR_TOP_CENTER, Vec3(500, 250, 0), false, "Heading")
	AddTextControl("HUD", "ModAuthor", ModAuthor, ANCHOR_TOP_CENTER, Vec3(500, 325, 0), false, "Body")
	AddTextControl("HUD", "ModLink", ModLink, ANCHOR_TOP_CENTER, Vec3(500, 300, 0), false, "Body")
	AddTextControl("HUD", "ModOther", ModOther, ANCHOR_TOP_CENTER, Vec3(500, 375, 0), false, "Body")
	AddTextControl("HUD", "ModOther2", ModOther2, ANCHOR_TOP_CENTER, Vec3(500, 400, 0), false, "Body")
	AddTextControl("HUD", "ModCredit", ModCredit, ANCHOR_TOP_CENTER, Vec3(500, 450, 0), false, "Body")
	AddTextControl("HUD", "ModCredit2", ModCredit2, ANCHOR_TOP_CENTER, Vec3(500, 475, 0), false, "Body")

end
function RemovePopup()
	ShowControl("HUD", "ModName", false)
	ShowControl("HUD", "ModAuthor", false)
	ShowControl("HUD", "ModLink", false)
	ShowControl("HUD", "ModOther", false)
	ShowControl("HUD", "ModOther2", false)
	ShowControl("HUD", "ModCredit", false)
	ShowControl("HUD", "ModCredit2", false)
end
-----------------------------------------------------------------------------------------------------------
function OnDeviceCreated(teamId, deviceId, saveName, nodeA, nodeB, t, upgradedId)

	if (saveName == "controllerbase2") then
		ScheduleCall(0.01, CreateControllerWeapon, teamId, deviceId, saveName, nodeA, nodeB, t, GetDeviceTeamId(deviceId))
		ApplyDamageToDevice(deviceId, 1000000)
	end
	

end

-----------------------------------------------------------------
function CreateControllerWeapon(teamId, deviceId, saveName, nodeA, nodeB, t, side)
	EnableWeapon("controllerhigh2", true, side)
	CreateDevice(teamId, "controllerhigh2", nodeA, nodeB, t)
	EnableWeapon("controllerhigh2", false, side)
end
-----------------------------------------------------------------------------------------------------------
function OnKey(key, down)
	if (down == true) then
		if (key == "mouse right") then
			RemovePopup()
		end
		if (key == "mouse left") then
				
				id = GetLocalSelectedDeviceId()
				if not (id == -1) then
					local deviceSavename = GetDeviceType(id)
					if not (deviceSavename == "controllerhigh2") then
						return
					end
					
					if not (GetDeviceTeamIdActual(id) == GetLocalTeamId()) then
						return
					end
					Deselect()
					Notice("Selected Altitude")
					local MousePos = ProcessedMousePos().y
					SendScriptEvent("SetAltitudeUsingId", tostring(id) .. "," .. tostring(MousePos), "", true)
				end
		end
	end
end
function SetAltitudeUsingId(id, mousePos)
	local mouseY = mousePos
	data.Controllers[id] = mouseY
end
-----------------------------------------------------------------------------------------------------------
function AutoAim(team)
	local deviceCount = GetDeviceCountSide(team)
	for i=0,deviceCount - 1 do
			local currentDevice = GetDeviceIdSide(team, i)
			local deviceSavename = GetDeviceType(currentDevice)
			if (deviceSavename == "Ram") then
				local devicePos = GetDevicePosition(currentDevice)
				devicePos.x = devicePos.x - 2
				local Target1 = devicePos
				devicePos.x = devicePos.x + 4
				local Target2 = devicePos
				FireWeapon(currentDevice,Target1,0,0)
				FireWeapon(currentDevice,Target2,0,0)
			end
	end
	ScheduleCall(0.2, AutoAim, team)
end
---------------------------------------------------------------------------------------------------------
-- This is where everything takes place
function Main(team)
	---------------------------------------------------------------------------------------------------------
	id = GetLocalSelectedDeviceId()
	if not (id == -1) then
		local deviceSavename = GetDeviceType(id)
		if (deviceSavename == "controllerhigh2" and GetDeviceTeamIdActual(id) == GetLocalTeamId()) then
			AddMouseAccessory("altitudeBar", "altitudeBarSprite", -5000, 0, 10000, 1)
			ScheduleCall(0.01, DeleteMouseAccessory, "altitudeBar")
		end
	end
	---------------------------------------------------------------------------------------------------------
	--Getting the selected device and sending the nodes to be stored across all clients
	hDevice = GetLocalSelectedDeviceId()--GetDeviceIdAtPosition(ProcessedMousePos())
	if (hDevice ~= -1 or SelectedFrame + 15 < Frame) then
		SendScriptEvent("AddPlayerNodeAToTable", tostring(GetDevicePlatformA(hDevice)) .. "," .. tostring(GetDevicePlatformB(hDevice)) .. "," .. tostring(GetLocalTeamId()), "", true)
		SelectedFrame = Frame
	end
	
	local deviceCount = GetDeviceCountSide(team)
	local controllerArray = {}
	for i=0,deviceCount - 1 do
			local currentDevice = GetDeviceIdSide(team, i)
			local deviceSavename = GetDeviceType(currentDevice)
			
			if (deviceSavename == "controllerhigh2") then
				local StructureID = NodeStructureId(GetDevicePlatformA(currentDevice))
				
				local NeededHeight = data.Controllers[currentDevice]
				if (NeededHeight == nil) then
					NeededHeight = GetDevicePosition(currentDevice).y
					data.Controllers[currentDevice] = NeededHeight
				end
				
				FindAndDealWithConnectedChambers(StructureID, NeededHeight, GetDeviceTeamIdActual(currentDevice))
				
			end
	end
	ScheduleCall(0.05, Main, team)
end
---------------------------------------------------------------------------------------------------------
function AddPlayerNodeAToTable(nodeA, nodeB, team)
	--Log("Recieved Team " .. tostring(team))
	data.NodeA[team] = nodeA
	data.NodeB[team] = nodeB
	--Log(tostring(nodeA))
	--Log(tostring(nodeB))
end


---------------------------------------------------------------------------------------------------------
function FindAndDealWithConnectedChambers(StructureID, DesiredHeight, team)
	
	if (data.NodeA[GetLocalTeamId()] == nil) then
		data.NodeA[GetLocalTeamId()] = -1 --no node selected
	end
	if (data.NodeB[GetLocalTeamId()] == nil) then
		data.NodeB[GetLocalTeamId()] = -1 --no node selected
	end
	
	local deviceCount = GetDeviceCount(team)
	for i=0,deviceCount - 1 do --go through all devices on a team and make checks
		local deviceID = GetDeviceId(team, i)
		local NewStructureID = NodeStructureId(GetDevicePlatformA(deviceID))
		if (StructureID == NewStructureID) then
			local DeviceSavename = GetDeviceType(deviceID)
			if (StartsWith(DeviceSavename, "dynamicbarrel")) then --checking if it the device is a dynamic barrel
				devTeamID = GetDeviceTeamIdActual(deviceID)
				nA = data.NodeA[devTeamID]
				nB = data.NodeB[devTeamID]
				idChecker = GetDeviceIdOnPlatform(nA, nB)
				--nodes stored on table have been retrieved and are used to get the deviceID of the relevant selected device
				if not (deviceID == idChecker) then --check if the deviceIDs are the same
					barrelMovement(deviceID,DesiredHeight) --execute barrelMovement script to change its weight
				end
			end
		end
	end
end

function Update(frame)
	Frame = frame
end
---------------------------------------------------------------------------------------------------------
-- This function calculates the needed movements of the barrel.
function barrelMovement(id, height)
	
	local CurrentDevicePos = GetDevicePosition(id)
	local DevicePosDiffrenceY = CurrentDevicePos.y - height
	local nodeId = GetDevicePlatformA(id)
	local currentVelocity = NodeVelocity(nodeId).y
	local ToUpgrade = 0
	
	local ModifierOne = 0.02
	local ModifierTwo = 25
	local ModifierThree = 0.1
	
	local DevicePosDiffrenceYReal = DevicePosDiffrenceY
	
	if (DevicePosDiffrenceY < 0) then
		DevicePosDiffrenceY = 0
	end
	
	local NeededChange = math.log(DevicePosDiffrenceY * ModifierOne) * ModifierTwo
	NeededChange = NeededChange + (currentVelocity * ModifierThree)
	
	
	
	
	ToUpgrade = math.floor(NeededChange)
	
	if (ToUpgrade == nil) then
		ToUpgrade = 0
	end
	
	if (ToUpgrade < 0) then
		ToUpgrade = 0
	elseif (ToUpgrade > 100) then
		ToUpgrade = 100
	end
	
	if (currentVelocity > 100) then
		local LiftExtraModifier = (math.abs(DevicePosDiffrenceYReal) / 15)
		if (LiftExtraModifier > 50) then
			LiftExtraModifier = 50
		end
		
		if (math.abs(DevicePosDiffrenceYReal) < 1000) then
			LiftExtraModifier = 15
		end
		
		if (math.abs(DevicePosDiffrenceYReal) < 750) then
			LiftExtraModifier = 10
		end
		
		if (math.abs(DevicePosDiffrenceYReal) < 250) then
			LiftExtraModifier = 7.5
		end
		
		if (LiftExtraModifier < 1) then
			LiftExtraModifier = 1
		end
		--Notice("DeviceDif" .. LiftExtraModifier)
		ToUpgrade = ToUpgrade + currentVelocity / LiftExtraModifier
	end
	
	if (ToUpgrade < 0) then
		ToUpgrade = 0
	elseif (ToUpgrade > 100) then
		ToUpgrade = 100
	end
	
	ToUpgrade = math.floor(ToUpgrade)
	
	UpgradeDevice(id, "dynamicbarrel_" .. ToUpgrade)
end