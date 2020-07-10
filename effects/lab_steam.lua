--  age (in seconds) at which the explosion deletes itself
--  make sure this exceedes the age of all effects
LifeSpan = 1.25

Effects =
{
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 12,
		BurstPeriod = 0.08,
		SparksPerBurst = 1,
		LocalPosition = { x = 0, y = 0, z = 50 },
		Sprite = "effects/media/CloudLarge",

		Gravity = 0,

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 15,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
		
		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.28,
				ScaleStdDev = 0.015,
				SpeedStretch = 0,
				SpeedMean = 50,
				SpeedStdDev = 5,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 1,
				AgeStdDev = .025,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 255, 255, 255, 255 },
			},
		},
	},
	
	{
		Type = "sparks",
		TimeToTrigger = 0.0,
		SparkCount = 12,
		BurstPeriod = 0.08,
		SparksPerBurst = 1,
		LocalPosition = { x = -20, y = 0, z = 50 },
		Sprite = "effects/media/CloudLarge",

		Gravity = 0,

		NormalDistribution =					-- distribute sparks evenly between two angles with optional variation
		{
			Mean = 0,
			StdDev = 15,						-- standard deviation at each iteration in degrees (zero will make them space perfectly even)
		},
		
		Keyframes =							
		{
			{
				Angle = 0,
				RadialOffsetMin = 0,
				RadialOffsetMax = 20,
				ScaleMean = 0.28,
				ScaleStdDev = 0.015,
				SpeedStretch = 0,
				SpeedMean = 50,
				SpeedStdDev = 5,
				Drag = 0.1,
				RotationMean = 0,
				RotationStdDev = 45,
				RotationalSpeedMean = 0,
				RotationalSpeedStdDev = 15,	
				AgeMean = 1,
				AgeStdDev = .025,
				AlphaKeys = { 0.1, 1 },
				ScaleKeys = { 0.1, 0.2 },
				colour = { 255, 255, 255, 255 },
			},
		},
	},
	

}
