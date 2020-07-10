Scale = 1
SelectionWidth = 65.0
SelectionHeight = 50.15
SelectionOffset = { -25.0, 57 }
RecessionBox =
{
	Size = { 80, 25 },
	Offset = { -100, 60 },
}

WeaponMass = 80.0
HitPoints = 200.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = true
StructureSplashDamage = 50
StructureSplashDamageMaxRadius = 150

FireEffect = "mods/weapon_pack/effects/fire_flak.lua"
ShellEffect = "effects/shell_eject_small.lua"
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "mods/weapon_pack/effects/flak_weapon_explode.lua"
ReloadEffect = "mods/weapon_pack/effects/reload_flak.lua"
FireEndEffect = "mods/weapon_pack/effects/cooldown_flak.lua"
ReloadEffectOffset = -1.5
RetriggerFireEffect = true
Projectile = "heavyFlak"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 20
MinFireSpeed = 40000.0
MaxFireSpeed = 40000.1
MaxFireClamp = 0.85
MinFireRadius = 350.0
MaxFireRadius = 1200.0
MinFireSpread = 8
MinVisibility = 1
MaxVisibilityHeight = 500
MinFireAngle = -50
MaxFireAngle = 50
KickbackMean = 15
KickbackStdDev = 3
UniformSpray = true
MouseSensitivityFactor = 0.6
PanDuration = 0
FireStdDev = 0.05
FireStdDevAuto = 0.05
Recoil = 20000
EnergyFireCost = 300.0
MetalFireCost = 30
ShowFireAngle = true
RoundsEachBurst = 30
RoundPeriod = 0.01
BeamDuration = 0.0
ReloadFramePeriod = (ReloadTime + RoundsEachBurst*RoundPeriod)/12
DoorCloseDelay = 2.5
AutofireCloseDoorTicks = DoorCloseDelay*25
DisruptionBlocksFire = true

TriggerProjectileAgeAction = true
MinAgeTrigger = 0.3
MaxAgeTrigger = 1.1

BarrelRecoilLimit = -0.15
BarrelRecoilSpeed = -1.5
BarrelReturnForce = 1

TargetIcon =
{
	Persistent = true,
	Texture = "ui/textures/mouse_target.tga",
	Width = 32,
	Height = 32,
}

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "heavyFlak-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/heavyFlak/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "heavyFlak-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/heavyFlak/head.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "heavyFlak-barrel",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/heavyFlak/barrel.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "flak",
	Angle = 0,
	Pivot = { 0, 0.28 },
	PivotOffset = { 0, 0 },
	Sprite = "heavyFlak-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.15, 0.25 },
			PivotOffset = { 0.05, 0.0 },
			Sprite = "heavyFlak-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.2, -0.05 },
					PivotOffset = { 0.0, -0.0 },
					Sprite = "heavyFlak-barrel",
					UserData = 100,	
				},
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0, 0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.165, -0.05 },
					PivotOffset = { 0, 0 },
				},
			},
		},
	},
}
