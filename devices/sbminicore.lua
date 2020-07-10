-- fort wars device file

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 30.0
HitPoints = 80.0
EnergyProductionRate = 15.0
MetalProductionRate = 2.5
EnergyStorageCapacity = 500.0
MetalStorageCapacity = 50.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
IncendiaryRadius = 130
IncendiaryRadiusHeated = 150
StructureSplashDamage = 130
StructureSplashDamageMaxRadius = 130
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 150
DeviceSplashDamageDelay = 0.3
IgnitePlatformOnDestruct = false
DestroyEffect = "effects/battery_explode.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sbminicore-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sbminicore/base.tga" }, mipmap = true, }, },
		},
	},
	{
		Name = "sbminicore_anim",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/devices/sbminicore/IndustryFactory00.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory01.png", duration = 0.3 },
					{ texture = path .. "/devices/sbminicore/IndustryFactory02.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory03.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory04.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory05.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory06.png" },
					--{ texture = path .. "/devices/sbminicore/IndustryFactory07.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory08.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory09.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory10.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory11.png" },
					{ texture = path .. "/devices/sbminicore/IndustryFactory12.png" },
					--{ texture = path .. "/devices/sbminicore/IndustryFactory13.png" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
	{
		Name = "barrelexplode-base1",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/explosivebarrel/base.tga" }, mipmap = true, }, },
		},
	},
	{
		Name = "barrelexplode_anim1",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/devices/explosivebarrel/reactor_core01.tga" },
					{ texture = path .. "/devices/explosivebarrel/reactor_core02.tga" },
					{ texture = path .. "/devices/explosivebarrel/reactor_core03.tga" },
					{ texture = path .. "/devices/explosivebarrel/reactor_core04.tga" },

					duration = 0.1,
					blendColour = false,
					blendCoordinates = false,
					mipmap = true,
				},
				NextState = "Normal",
			},
		},
	},
}

NodeEffects =
{
	{
		NodeName = "SteamLab",
		EffectPath = path .. "/effects/lab_steam.lua",
		Automatic = true,
	},
}

Root =
{
	Name = "Battery",
	Angle = 0,
	Pivot = { 0, -0.290 },
	PivotOffset = { 0, 0 },
	Sprite = "sbminicore-base",
	
	ChildrenInFront =
	{
		{
			Name = "Compressor",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0, 0 },
			Sprite = "sbminicore_anim",
			UserData = 100,
		},
		{
			Name = "SteamLab",
			Angle = 0,
			Pivot = { 0.0, -0.15 },
			PivotOffset = { 0, 0 },
		},
	},
}
