function InitGame(levelTime, randomSeed, restart)
	-- adjust the model number
	local ent = entity.FindBModel(22);
	if ent == nil then return;
	ent:SetKeyValue("classname", "func_forcefield");
	-- setting the spawnflags is optional 
	-- only change them if you have to
	ent:SetKeyValue("spawnflags", "0")
	entity.CallSpawn(ent);
end 