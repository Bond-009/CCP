function HandleOcelotsCommand(Split, Player)
	World = Player:GetWorld()
	local ForEachEntity = function(Entity)
		if Entity:GetClass() == "cOcelot" then
			Entity:Destroy(true)
		end
	end
	World:ForEachEntity()
	return true
end
