local gooder_pool = SMODS.add_to_pool
function SMODS.add_to_pool(prototype_obj, args)
    if prototype_obj.set == "Joker" and
        (not prototype_obj.original_mod or prototype_obj.original_mod.id == "Balatro") then
        return false
    end
    return gooder_pool(prototype_obj, args)
end