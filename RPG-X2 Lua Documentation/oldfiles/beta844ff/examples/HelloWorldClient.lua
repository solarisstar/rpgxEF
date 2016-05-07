function HelloWorld(ent, other, activator)
	game.ClientPrint(activator:GetNumber(),
		"Hello " .. activator:GetClientname());
	game.CenterPrint(activator:GetNumber(), 
		"Hello " .. activator:GetClientname());
	game.MessagePrint(activator:GetNumber(), 
		"Hello " .. activator:GetClientname());
end 