-- Log
Log("This mod may take a while to load, please wait patiently")

table.insert(Sprites, ButtonSprite("hud-heavyFlak-icon", "HUD/HUD-heavyFlak", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("mortar") + 1,
{
		Enabled = true,
		SaveName = "heavyFlak",
		FileName = path .. "/weapons/HeavyFlak.lua",
		Icon = "hud-heavyFlak-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "sbaviation",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 3,
		MetalCost = 225,
		EnergyCost = 1500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
})

table.insert(Sprites, ButtonSprite("hud-heavyFlakU-icon", "HUD/HUD-heavyFlakU", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("mortar") + 1,
{
		Enabled = true,
		SaveName = "heavyFlakU",
		FileName = path .. "/weapons/HeavyFlakU.lua",
		Icon = "hud-heavyFlakU-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "sbaviation",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 3,
		MetalCost = 225,
		EnergyCost = 1500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
})

table.insert(Sprites, ButtonSprite("hud-group-controller", "groups/Group-controller", GroupButtonSpriteBottom, GroupButtonSpriteBottom, nil, nil, path))
--Used by map script:
table.insert(Weapons, IndexOfWeapon("mortar"),
{
	Enabled = false,
	SaveName = "controllerhigh2",
	FileName = path .. "/weapons/controllerhigh2.lua",
	Icon = "hud-cannon-icon",
	Detail = "hud-detail-metalstore",
	GroupButton = "hud-group-controller",
	BuildTimeIntermediate = 0,
	BuildTimeComplete = 0,
	ScrapPeriod = 1,
	MetalCost = 0,
	EnergyCost = 0,
	MetalRepairCost = 30,
	EnergyRepairCost = 400,
	MetalReclaimMin = 0,
	MetalReclaimMax = 0,
	EnergyReclaimMin = 0,
	EnergyReclaimMax = 0,
	MaxUpAngle = StandardMaxUpAngle,
	BuildOnGroundOnly = false,
	SelectEffect = "ui/hud/devices/ui_devices",
})

--Weapons from me
--Mine Layer
--[[table.insert(Sprites, ButtonSprite("hud-mineLayer-icon", "HUD/HUD-mineLayer", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("mortar"),
{
		Enabled = true,
		PopulationCap = 6,
		SaveName = "mineLayer",
		FileName = path .. "/weapons/mineLayer.lua",
		Icon = "hud-mineLayer-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		BuildTimeIntermediate = 30.0,
		BuildTimeComplete = 60.0,
		ScrapPeriod = 10,
		MetalCost = 650,
		EnergyCost = 4000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0.5,
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
}) ]]--


-- Flamer
table.insert(Sprites, ButtonSprite("hud-Flamer-icon", "HUD/HUD-Flamer", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("mortar"),
{
		Enabled = true,
		PopulationCap = 10,
		SaveName = "Flamer",
		FileName = path .. "/weapons/Flamer.lua",
		Icon = "hud-Flamer-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = { { "workshop", "sbaviation" },},
		BuildTimeIntermediate = 10.0,
		BuildTimeComplete = 37.0,
		ScrapPeriod = 3,
		MetalCost = 700,
		EnergyCost = 5000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})
--Ram
--[[
table.insert(Sprites, ButtonSprite("hud-Ram-icon", "HUD/HUD-ram", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("mortar"),
{
		Enabled = true,
		PopulationCap = 6,
		SaveName = "Ram",
		FileName = path .. "/weapons/Ram.lua",
		Icon = "hud-Ram-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = { { "upgrade", "sbaviation" },},
		BuildTimeIntermediate = 40.0,
		BuildTimeComplete = 40.0,
		ScrapPeriod = 5,
		MetalCost = 650,
		EnergyCost = 6000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 40,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
})
--]]

--Weapons from samster, edited by me
table.insert(Sprites, ButtonSprite("hud-jet-icon", "HUD/HUD-jet", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("mortar"),
{
		Enabled = true,
		SaveName = "sbjet",
		FileName = path .. "/weapons/sbjet.lua",
		Icon = "hud-jet-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "sbaviation",
		BuildTimeIntermediate = 15.0,
		BuildTimeComplete = 20.0,
		ScrapPeriod = 15,
		MetalCost = 400,
		EnergyCost = 3000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbjet2"] =
			{
				Enabled = true,
				SaveName = "sbjet2",
				MetalCost = 600,
				EnergyCost = 6000,
			},
		},
		CompatibleGroupTypes =
		{
			"sbjet2",
		},
})
table.insert(Weapons, IndexOfWeapon("mortar"),
{
		Enabled = false,
		SaveName = "sbjet2",
		FileName = path .. "/weapons/sbjet2.lua",
		Icon = "hud-jet-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 10.0,
		BuildTimeComplete = 20.0,
		ScrapPeriod = 3,
		MetalCost = 400,
		EnergyCost = 3000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		CompatibleGroupTypes =
		{
			"sbjet",
		},
})
table.insert(Sprites, ButtonSprite("hud-sbbombbay-icon", "HUD/HUD-sbbombbay", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("rocket") + 1,
{
		Enabled = true,
		SaveName = "sbcarpetbomb",
		FileName = path .. "/weapons/sbbombbay/sbcarpetbomb.lua",
		Icon = "hud-sbbombbay-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "sbaviation",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 50.0,
		ScrapPeriod = 3,
		MetalCost = 500,
		EnergyCost = 3000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbjet"] =
			{
				Enabled = true,
				SaveName = "sbnukebomb",
				MetalCost = 400,
				EnergyCost = 3000,
			},
		},
		CompatibleGroupTypes =
		{
			"sbnukebomb",
		},
})
table.insert(Weapons, IndexOfWeapon("sbcarpetbomb") + 1,
{
		Enabled = false,
		SaveName = "sbnukebomb",
		FileName = path .. "/weapons/sbbombbay/sbnukebomb.lua",
		Icon = "hud-sbbombbay-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 50.0,
		ScrapPeriod = 3,
		MetalCost = 700,
		EnergyCost = 5000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
		CompatibleGroupTypes =
		{
			"sbcarpetbomb",
		},
})
table.insert(Sprites, ButtonSprite("hud-sbhangflak-icon", "HUD/HUD-sbhangflak", nil, ButtonSpriteBottom, nil, nil, path))
table.insert(Weapons, IndexOfWeapon("sbnukebomb") + 1,
{
		Enabled = true,
		SaveName = "sbhangflak",
		FileName = path .. "/weapons/sbhangflak/sbhangflak.lua",
		Icon = "hud-sbhangflak-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "sbaviation",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 25.0,
		ScrapPeriod = 3,
		MetalCost = 225,
		EnergyCost = 1500,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		Upgrades =
		{
			["sbjet"] =
			{
				Enabled = true,
				SaveName = "sbhangcannon",
				MetalCost = 600,
				EnergyCost = 3500,
			},
		},
		
})

table.insert(Weapons, IndexOfWeapon("sbhangflak") + 1,
{
		Enabled = false,
		SaveName = "sbhangcannon",
		FileName = path .. "/weapons/sbhangflak/sbhangcannon.lua",
		Icon = "hud-sbhangflak-icon",
		GroupButton = "hud-group-minigun",
		Detail = "hud-detail-minigun",
		Prerequisite = "upgrade",
		BuildTimeIntermediate = 1.0,
		BuildTimeComplete = 100.0,
		ScrapPeriod = 3,
		MetalCost = 825,
		EnergyCost = 8000,
		MetalRepairCost = 15,
		EnergyRepairCost = 250,
		MetalReclaimMin = 0.25,
		MetalReclaimMax = 0.5,
		EnergyReclaimMin = 0.1,
		EnergyReclaimMax = 0.5,
		MaxSpotterAssistance = 0, -- machinegun doesn't benefit from spotters
		MaxUpAngle = 30,
		BuildOnGroundOnly = false,
		SelectEffect = "ui/hud/weapons/ui_weapons",
		
})