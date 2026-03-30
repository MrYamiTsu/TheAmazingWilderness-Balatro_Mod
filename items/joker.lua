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
                Taw.grow(card, 'j_taw_dog')
            end
        end
    end
}, false)
SMODS.Joker{ --BlackBearCub
    key = "blackBear_cub",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        grow_time = 1,
        mult_add = 1,
        mult = 0
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
         s_mult = 1,
         suit = 'Diamonds'
    }},
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult,
                       localize(center.ability.extra.suit, 'suits_singular'),
                       center.config.center.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.config.center.taw_data.grow_time = card.config.center.taw_data.grow_time - 1
            if card.config.center.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_greedy_joker')
            end
        end
    end
}
SMODS.Joker{ --PolarCub
    key = "polar_cub",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        grow_time = 1,
        mult_add = 1,
        mult = 0
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
         s_mult = 1,
         suit = 'Hearts'
    }},
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult,
                       localize(center.ability.extra.suit, 'suits_singular'),
                       center.config.center.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.config.center.taw_data.grow_time = card.config.center.taw_data.grow_time - 1
            if card.config.center.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_lusty_joker')
            end
        end
    end
}
SMODS.Joker{ --GrizzlyCub
    key = "grizzly_cub",
    atlas = 'Jokers',
    pos = {x = 1, y = 0},
    taw_data = {
        grow_time = 1,
        mult_add = 1,
        mult = 0
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
         s_mult = 1,
         suit = 'Spades'
    }},
    loc_vars = function(self,info_queue,center)
        if love.keyboard.isDown('lshift') or love.keyboard.isDown('rshift') then
            info_queue[#info_queue+1] = {set = 'Other', key = 'quinn_credit'}
        end
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult,
                       localize(center.ability.extra.suit, 'suits_singular'),
                       center.config.center.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.config.center.taw_data.grow_time = card.config.center.taw_data.grow_time - 1
            if card.config.center.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_wrathful_joker')
            end
        end
    end
}
SMODS.Joker{ --PandaCub
    key = "panda_cub",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        grow_time = 1,
        mult_add = 1,
        mult = 0
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
         s_mult = 1,
         suit = 'Clubs'
    }},
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult,
                       localize(center.ability.extra.suit, 'suits_singular'),
                       center.config.center.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.config.center.taw_data.grow_time = card.config.center.taw_data.grow_time - 1
            if card.config.center.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_gluttenous_joker')
            end
        end
    end
}
--#endregion
--#region Normal --
SMODS.Joker{ --Dog
    key = "dog",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
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
        return{vars = {center.ability.extra.mult + center.config.center.taw_data.mult}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult + card.config.center.taw_data.mult
            }
        end
    end
}
SMODS.Joker:take_ownership("j_greedy_joker", { --BlackBear
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        mult_add = 1,
        mult = 0
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult
            }
        end
    end
}, false)
SMODS.Joker:take_ownership("j_lusty_joker", { --PolarBear
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        mult_add = 1,
        mult = 0
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult
            }
        end
    end
}, false)
SMODS.Joker:take_ownership("j_wrathful_joker", { --Grizzly
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        mult_add = 1,
        mult = 0
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult
            }
        end
    end
}, false)
SMODS.Joker:take_ownership("j_gluttenous_joker", { --GiantPanda
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        mult_add = 1,
        mult = 0
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult
            }
        end
    end
}, false)
--#endregion
--#region Elder --
--#endregion