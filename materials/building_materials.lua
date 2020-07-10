for key,value in ipairs(Materials)
do
	value.AngleStressPrimaryThreshold = 25
	local extraStrength = 1.05
	value.MaxCompression = value.MaxCompression
	value.MaxExpansion = value.MaxExpansion * extraStrength
end

-- Increase the drag of bracing and armour to make flown forts a bit more stable
local Bracing = FindMaterial("bracing")
if 	Bracing then
	Bracing.AirDrag = Bracing.AirDrag * 2
end
local Armour = FindMaterial("armour")
if 	Armour then
	Armour.AirDrag = Armor.AirDrag * 2
end
--This is from Skyforts :)