
function ApplyMod()
	local buildDuration = 0.0

	for k, device in ipairs(Weapons) do
		device.BuildTimeComplete = buildDuration
		device.ScrapPeriod = buildDuration

		if device.Upgrades then
			for i, upgradeParams in pairs(device.Upgrades) do
				local upgrade = FindWeapon(upgradeParams.SaveName)
				if upgrade then
					upgrade.BuildTimeComplete = buildDuration
				end
			end
		end
	end
end
