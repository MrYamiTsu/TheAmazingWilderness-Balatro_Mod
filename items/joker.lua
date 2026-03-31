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
SMODS.Joker:take_ownership("j_greedy_joker", { --BlackBearCub
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        grow_time = 2,
        mult_add = 1,
        mult = 0
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
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
                Taw.grow(card, 'j_taw_blackBear')
            end
        end
    end
}, false)
SMODS.Joker:take_ownership("j_lusty_joker", { --PolarCub
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        grow_time = 2,
        mult_add = 1,
        mult = 0
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
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
                Taw.grow(card, 'j_taw_polarBear')
            end
        end
    end
}, false)
SMODS.Joker:take_ownership("j_wrathful_joker", { --GrizzlyCub
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        grow_time = 2,
        mult_add = 1,
        mult = 0
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
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
                Taw.grow(card, 'j_taw_grizzly')
            end
        end
    end
}, false)
SMODS.Joker:take_ownership("j_gluttenous_joker", { --PandaCub
    atlas = 'Jokers',
    pos = {x = 3, y = 0},
    taw_data = {
        grow_time = 2,
        mult_add = 1,
        mult = 0
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.config.center.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
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
                Taw.grow(card, 'j_taw_panda')
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
SMODS.Joker{ --BlackBear
    key = 'blackBear',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        mult_add = 2,
        mult = 0
    },
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
        s_mult = 6,
        suit = 'Diamonds'
    }},
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
}
SMODS.Joker{ --PolarBear
    key = 'polarBear',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        mult_add = 2,
        mult = 0
    },
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
        s_mult = 6,
        suit = 'Hearts'
    }},
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
}
SMODS.Joker{ --Grizzly
    key = 'grizzly',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    taw_data = {
        mult_add = 2,
        mult = 0
    },
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
        s_mult = 6,
        suit = 'Spades'
    }},
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
}
SMODS.Joker{ --GiantPanda
    key = 'panda',
    atlas = 'Jokers',
    pos = {x = 2, y = 0},
    taw_data = {
        mult_add = 2,
        mult = 0
    },
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = { extra = {
        s_mult = 6,
        suit = 'Clubs'
    }},
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
}
--#endregion
--#region Elder --
--#endregion