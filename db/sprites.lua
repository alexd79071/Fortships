table.insert(
	Sprites,
	{
		Name = "altitudeBarSprite",

		States =
		{
			Normal =
			{
				Frames =
				{
					{ texture = path .. "/effects/media/altitudeBar.tga" },

					duration = 1,
					blendColour = false,
					blendCoordinates = false,
				},
				--RandomPlayLength = 2,
				NextState = "Normal",
			},
		},
	})
		