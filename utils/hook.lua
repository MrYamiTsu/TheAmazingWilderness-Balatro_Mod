--#region POOL HOOKS --
local gooder_pool = SMODS.add_to_pool
function SMODS.add_to_pool(prototype_obj, args)
    if prototype_obj.set == "Joker" and
        (not prototype_obj.original_mod or prototype_obj.original_mod.id == "Balatro") then
        return false
    end
    return gooder_pool(prototype_obj, args)
end
--#endregion
--#region JOKER HOOKS --
local fourth_finger = SMODS.four_fingers
function SMODS.four_fingers(hand_type)
    if next(SMODS.find_card('j_taw_springbok')) then
        return 3
    elseif next(SMODS.find_card('j_taw_springbokLamb')) then
        return 4
    end
    return fourth_finger(hand_type)
end
--#endregion