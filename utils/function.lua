function Taw.grow(card, grow_key)
    G.E_MANAGER:add_event(Event({
        blocking = true,
        func = function()
            SMODS.calculate_effect({ message = localize("k_taw_grow"), colour = G.C.CHANCE }, card)
            card:set_ability(grow_key)
            return true
        end
    }))
end