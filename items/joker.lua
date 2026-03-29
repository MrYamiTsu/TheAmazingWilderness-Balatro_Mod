--#region BABY --
SMODS.Joker:take_ownership("j_joker", { --Puppy
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        grow_time = 2,
        mult_add = 1,
        mult = 0
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.mult + center.config.center.taw_data.mult, center.config.center.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                mult = card.ability.mult + card.config.center.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.config.center.taw_data.grow_time = card.config.center.taw_data.grow_time - 1
            if card.config.center.taw_data.grow_time <= 0 then
                G.E_MANAGER:add_event(Event({
                    blocking = true,
                    func = function()
                        SMODS.calculate_effect({ message = localize("k_taw_grow"), colour = G.C.CHANCE }, card)
                        card:set_ability("j_taw_dog")
                        return true
                    end
                }))
            end
        end
    end
}, false)
--#endregion
--#region Normal --
SMODS.Joker{ --Dog
    key = "dog",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        grow_time = 2,
        mult_add = 3,
        mult = 0
    },
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
        mult = 12
    }},
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.mult + center.config.center.taw_data.mult, center.config.center.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult + card.config.center.taw_data.mult
            }
        end
        if context.end_of_round then
            card.config.center.taw_data.grow_time = card.config.center.taw_data.grow_time - 1
        end
    end
}
--#endregion
--#region Elder --
--#endregion