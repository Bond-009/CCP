function HandleDelCommand(Split, Player)
	Player:GetInventory():SetHotbarSlot(Player:GetInventory():GetEquippedSlotNum(), cItem());
	Player:SendMessageSuccess("You deleted your equiped item")
    return true
end