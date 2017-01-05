function HandleDelCommand(Split, Player)
    
    if (Split[2] == nil) then
		Player:GetInventory():SetHotbarSlot(Player:GetInventory():GetEquippedSlotNum(), cItem());
		Player:SendMessageSuccess("You deleted your equiped item")
        return true
    end
    
    if Player:HasPermission("core.admin.clear") then
        local ItemCleared = false;
        local ClearInventory = function(OtherPlayer)
            if (OtherPlayer:GetName() == Split[2]) then
                OtherPlayer:GetInventory():SetHotbarSlot(OtherPlayer:GetInventory():GetEquippedSlotNum(), cItem())
                ItemCleared = true
            end
        end

        cRoot:Get():FindAndDoWithPlayer(Split[2], ClearInventory);
        if (ItemCleared) then
            Player:SendMessageSuccess("You deleted the equiped item of " .. Split[2])
        else
            Player:SendMessageFailure("Player not found")
        end
        
        return true
    end

    return false

end