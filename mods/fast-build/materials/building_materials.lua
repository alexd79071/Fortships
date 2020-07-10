for k,v in ipairs(Materials) do
	v.BuildTime = v.BuildTime/4
	v.ScrapTime = v.ScrapTime/2
end

portal = FindMaterial("portal")
if portal and portal.WarmUpTime > 1 then
	portal.WarmUpTime = 1
end
