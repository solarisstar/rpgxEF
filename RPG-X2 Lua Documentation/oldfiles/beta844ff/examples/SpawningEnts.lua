function Example()
	local ent = entity.Spawn()
	if ent == nil then return;
	ent:SetKeyValue("classname", "info_notnull");
	mover:SetPosition(0, 0, 0);
	entity.CallSpawn(ent);
end 