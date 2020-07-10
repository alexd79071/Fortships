Scale = 1
SelectionWidth = 60.0
SelectionHeight = 40.0
SelectionOffset = { -20.0, -40.5 }
RecessionBox =
{
	Size = { 200, 25 },
	Offset = { -230, -40 },
}

WeaponMass = 750.0
HitPoints = 500.0
EnergyProductionRate = -30.0
MetalProductionRate = -1.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = ""
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/minigun_explode.lua"
ReloadEffect = nil
ReloadEffectOffset = -.5
Projectile = "ram1"
BarrelLength = 60.0
MinFireClearance = 0
FireDelay = 0.0
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 0.000000001
MinFireSpeed = 5000.0
MaxFireSpeed = 5000.1
MinFireRadius = 300.0
MaxFireRadius = 600.0
MinVisibility = 0.6
MaxVisibilityHeight = 600
MinFireAngle = -5
MaxFireAngle = 5
KickbackMean = 5
KickbackStdDev = 2
MouseSensitivityFactor = 0.5
PanDuration = 0
FireStdDev = 0.000001
FireStdDevAuto = 0.000001
Recoil = 100
EnergyFireCost = 10.0
MetalFireCost = 0
RoundsEachBurst = 1000000
RoundPeriod = 0.1
ShowFireAngle = false

--[[
-- sinusoid sweep
function ProjectileAngle(index)
	local angle = index*(2*3.1415/RoundsEachBurst)
	return 3*math.sin(angle)
end
]]

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
		Name = "ram-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/ram/base.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "ram-head",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/ram/RamHead.tga" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
}

Root =
{
	Name = "Minigun",
	Angle = 0,
	Pivot = { 0.150, -0.28 },
	PivotOffset = { 0, 0 },
	Sprite = "ram-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.06, -0.14},
			PivotOffset = { -0.06, 0.14 },
			Sprite = "ram-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Hardpoint0",
					Angle = 90,
					Pivot = { 0.00, -0.2 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "Chamber",
					Angle = 0,
					Pivot = { 0.0, 0.0 },
					PivotOffset = { 0, 0 },
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.75, -0.165 },
					PivotOffset = { 0, 0 },
					Sprite = "flameblast",
					Visible = false,
				},
			},
		},
	},
--[[
	ChildrenInFront =
	{
		{
			Name = "Scaffold",
			Sprite = "under_construction",
			Visible = false,
		},
		{
			Name = "ScaffoldProgress",
			Sprite = "under_construction_progress",
			Visible = false,
		},
	},
]]
}
