
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }

WeaponMass = 50.0
HitPoints = 300.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

ShowFireAngle = false
ShowFireSpeed = false

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/minigun_explode.lua"
ReloadEffect = nil
ReloadEffectOffset = -.5
Projectile = "sbair"
BarrelLength = 60.0
MinFireClearance = 0
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 0.01
MinFireSpeed = 1000.0
MaxFireSpeed = 1000.1
MinFireRadius = 0.0000001
MaxFireRadius = 0.0000002
MinVisibility = 0.000001
MaxVisibilityHeight = 0.000001
MinFireAngle = -0.00001
MaxFireAngle = 0.00001
KickbackMean = 0.0001
KickbackStdDev = 0.0001
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.02
FireStdDevAuto = 0.01
Recoil = 0
EnergyFireCost = 0.0
MetalFireCost = 0
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter
Projectile = "sbjetair"

Sprites =
{
	{
  	Name = "controller-high2",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/controller/darkblue2.tga" }, mipmap = true, }, },
		},
	},
}

Root =
{
  Name = "Barrel",
  Angle = 0,
	Pivot = { 0, -0.25},
	PivotOffset = { 0, 0 },
	Sprite = "controller-high2",
  {
	},
}
