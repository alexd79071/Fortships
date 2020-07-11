-- fort wars device file

DamageWhenNeutral = false
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Repairable = true
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 40.0
HitPoints = 250.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 50
DeviceSplashDamageMaxRadius = 100
DeviceSplashDamageDelay = 0.3
IgnitePlatformOnDestruct = true
IncendiaryRadius = 100
IncendiaryRadiusHeated = 150
StructureSplashDamage = 150
StructureSplashDamageMaxRadius = 100
IgnitePlatformOnDestruct = true
Repairable = true
DestroyEffect = "effects/cannon_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "barrelexplode-base1",
	ChildrenInFront =
	{
		{
			Name = "Core",
			Angle = 0,
			Pivot = { 0, 0.06},
			PivotOffset = { 0, 0 },
			Sprite = "barrelexplode_anim1",
		},
	},
}
