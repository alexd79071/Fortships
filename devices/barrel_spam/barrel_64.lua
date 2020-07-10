ConstructEffect = ""
CompleteEffect = ""

Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
HitPoints = 100.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true
BlockPenetration = true
DestroyEffect = "effects/barrel_explode.lua"
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Root =
{
  Name = "Barrel",
  Angle = 0,
	Pivot = { 0, -0.210},
	PivotOffset = { 0, 0 },
	Sprite = "dynamic_barrel-base",
  {
	},
}
Mass=-(64 * 40) 
