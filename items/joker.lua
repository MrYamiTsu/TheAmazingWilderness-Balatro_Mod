--#region RAT --
SMODS.Joker{ --Ritten
    key = 'ritten',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            mult = 4
        },
        taw_data = {
            grow_time = 2,
            mult_add = 1,
            mult = 0
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.mult + center.ability.taw_data.mult, center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_rat')
            end
        end
    end
}
SMODS.Joker{ --Rat
    key = "rat",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            mult = 12
        },
        taw_data = {
            mult_add = 3,
            mult = 0
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.mult + center.ability.taw_data.mult}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult + card.ability.taw_data.mult
            }
        end
    end
}
--#endregion
--#region BEARS --
SMODS.Joker{ --BlackBearCub
    key = 'blackBearCub',
    atlas = 'Jokers',
    pos = {x = 0, y = 1},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            s_mult = 3,
            suit = 'Diamonds',
        },
        taw_data = {
            grow_time = 2,
            mult_add = 1,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.ability.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_blackBear')
            end
        end
    end
}
SMODS.Joker{ --BlackBear
    key = 'blackBear',
    atlas = 'Jokers',
    pos = {x = 1, y = 1},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            s_mult = 6,
            suit = 'Diamonds',
        },
        taw_data = {
            mult_add = 2,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.ability.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult + card.ability.taw_data.mult
            }
        end
    end
}
SMODS.Joker{ --PolarCub
    key = 'polarCub',
    atlas = 'Jokers',
    pos = {x = 6, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            s_mult = 3,
            suit = 'Hearts',
        },
        taw_data = {
            grow_time = 2,
            mult_add = 1,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.ability.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_polarBear')
            end
        end
    end
}
SMODS.Joker{ --PolarBear
    key = 'polarBear',
    atlas = 'Jokers',
    pos = {x = 5, y = 0},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            s_mult = 6,
            suit = 'Hearts',
        },
        taw_data = {
            mult_add = 2,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.ability.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult + card.ability.taw_data.mult
            }
        end
    end
}
SMODS.Joker{ --GrizzlyCub
    key = 'grizzlyCub',
    atlas = 'Jokers',
    pos = {x = 1, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            s_mult = 3,
            suit = 'Spades',
        },
        taw_data = {
            grow_time = 2,
            mult_add = 1,
            mult = 0,
            art_credit = "Quinn"
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.ability.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_grizzly')
            end
        end
    end
}
SMODS.Joker{ --Grizzly
    key = 'grizzly',
    atlas = 'Jokers',
    pos = {x = 7, y = 0},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            s_mult = 6,
            suit = 'Spades',
        },
        taw_data = {
            mult_add = 2,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.ability.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult + card.ability.taw_data.mult
            }
        end
    end
}
SMODS.Joker{ --PandaCub
    key = 'pandaCub',
    atlas = 'Jokers',
    pos = {x = 3, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            s_mult = 3,
            suit = 'Clubs',
        },
        taw_data = {
            grow_time = 2,
            mult_add = 1,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.ability.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_panda')
            end
        end
    end
}
SMODS.Joker{ --GiantPanda
    key = 'panda',
    atlas = 'Jokers',
    pos = {x = 2, y = 0},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            s_mult = 6,
            suit = 'Clubs',
        },
        taw_data = {
            mult_add = 2,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.s_mult + center.ability.taw_data.mult, localize(center.ability.extra.suit, 'suits_singular')}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and context.other_card:is_suit(card.ability.extra.suit) then
            return {
                mult = card.ability.extra.s_mult + card.ability.taw_data.mult
            }
        end
    end
}
--#endregion
--#region DOGS --
SMODS.Joker{ --GoldenPuppy
    key = 'goldenPuppy',
    atlas = 'Jokers',
    pos = {x = 3, y = 1},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_mult = 8,
            type = 'Pair'
        },
        taw_data = {
            grow_time = 2,
            mult_add = 2,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_goldenRetriver')
            end
        end
    end
}
SMODS.Joker{ --GoldenRetriver
    key = 'goldenRetriver',
    atlas = 'Jokers',
    pos = {x = 2, y = 1},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_mult = 16,
            type = 'Pair'
        },
        taw_data = {
            mult_add = 4,
            mult = 0,
            art_credit = "Yotam"
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands')}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
    end
}
SMODS.Joker{ --ShepherdPup
    key = 'shepherdPup',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config= {
        extra = {
            t_mult = 12,
            type = 'Three of a Kind'
        },
        taw_data = {
            grow_time = 2,
            mult_add = 2,
            mult = 0,
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_germanShepherd')
            end
        end
    end
}
SMODS.Joker{ --GermanShepherd
    key = 'germanShepherd',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config= {
        extra = {
            t_mult = 24,
            type = 'Three of a Kind'
        },
        taw_data = {
            mult_add = 4,
            mult = 0
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands')}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
    end
}
SMODS.Joker{ --DalmatianPup
    key = 'dalmatianPup',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config= {
        extra = {
            t_mult = 10,
            type = 'Two Pair'
        },
        taw_data = {
            grow_time = 2,
            mult_add = 2,
            mult = 0,
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_dalmatian')
            end
        end
    end
}
SMODS.Joker{ --Dalmatian
    key = 'dalmatian',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config= {
        extra = {
            t_mult = 20,
            type = 'Two Pair'
        },
        taw_data = {
            mult_add = 4,
            mult = 0
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands')}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
    end
}
SMODS.Joker{ --PugPuppy
    key = 'pugPuppy',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config= {
        extra = {
            t_mult = 12,
            type = 'Straight'
        },
        taw_data = {
            grow_time = 2,
            mult_add = 2,
            mult = 0,
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_pug')
            end
        end
    end
}
SMODS.Joker{ --Pug
    key = 'pug',
    atlas = 'Jokers',
    pos = {x = 4, y = 1},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config= {
        extra = {
            t_mult = 24,
            type = 'Straight'
        },
        taw_data = {
            mult_add = 4,
            mult = 0
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands')}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
    end
}
SMODS.Joker{ --HuskyCub
    key = 'huskyCub',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_mult = 10,
            type = 'Flush'
        },
        taw_data = {
            grow_time = 2,
            mult_add = 2,
            mult = 0,
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands'), center.ability.taw_data.grow_time}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_husky')
            end
        end
    end
}
SMODS.Joker{ --Husky
    key = 'husky',
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 6,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_mult = 20,
            type = 'Flush'
        },
        taw_data = {
            mult_add = 4,
            mult = 0
        }
    },
    in_pool = function(self, args)
        return false
    end,
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.t_mult + center.ability.taw_data.mult, localize(center.ability.extra.type, 'poker_hands')}}
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                mult = card.ability.extra.t_mult + card.ability.taw_data.mult
            }
        end
    end
}
--#endregion
--#region CATS
SMODS.Joker{ --MaineCoonKitten
    key = "maineCoonKitten",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_chips = 50,
            type = 'Pair'
        },
        taw_data = {
            grow_time = 2,
            chips_add = 10,
            chips = 0,
        }
    },
    loc_vars = function(self, info_queue, card)
        return{vars = {card.ability.extra.t_chips + card.ability.taw_data.chips, localize(card.ability.extra.type, 'poker_hands'), card.ability.taw_data.grow_time}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                chips = card.ability.extra.t_chips + card.ability.taw_data.chips
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_maineCoon')
            end
        end
    end
}
SMODS.Joker{ --SiameseKitten
    key = "siameseKitten",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_chips = 100,
            type = 'Three of a Kind'
        },
        taw_data = {
            grow_time = 2,
            chips_add = 20,
            chips = 0,
        }
    },
    loc_vars = function(self, info_queue, card)
        return{vars = {card.ability.extra.t_chips + card.ability.taw_data.chips, localize(card.ability.extra.type, 'poker_hands'), card.ability.taw_data.grow_time}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                chips = card.ability.extra.t_chips + card.ability.taw_data.chips
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_siameseCat')
            end
        end
    end
}
SMODS.Joker{ --PersianKitten
    key = "persianKitten",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_chips = 80,
            type = 'Two Pair'
        },
        taw_data = {
            grow_time = 2,
            chips_add = 15,
            chips = 0,
        }
    },
    loc_vars = function(self, info_queue, card)
        return{vars = {card.ability.extra.t_chips + card.ability.taw_data.chips, localize(card.ability.extra.type, 'poker_hands'), card.ability.taw_data.grow_time}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                chips = card.ability.extra.t_chips + card.ability.taw_data.chips
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_persianCat')
            end
        end
    end
}
SMODS.Joker{ --SphynxKitten
    key = "sphynxKitten",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_chips = 100,
            type = 'Straight'
        },
        taw_data = {
            grow_time = 2,
            chips_add = 20,
            chips = 0,
        }
    },
    loc_vars = function(self, info_queue, card)
        return{vars = {card.ability.extra.t_chips + card.ability.taw_data.chips, localize(card.ability.extra.type, 'poker_hands'), card.ability.taw_data.grow_time}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                chips = card.ability.extra.t_chips + card.ability.taw_data.chips
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_sphynxCat')
            end
        end
    end
}
SMODS.Joker{ --BengalKitten
    key = "bengalKitten",
    atlas = 'Jokers',
    pos = {x = 0, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    config = {
        extra = {
            t_chips = 80,
            type = 'Flush'
        },
        taw_data = {
            grow_time = 2,
            chips_add = 15,
            chips = 0,
        }
    },
    loc_vars = function(self, info_queue, card)
        return{vars = {card.ability.extra.t_chips + card.ability.taw_data.chips, localize(card.ability.extra.type, 'poker_hands'), card.ability.taw_data.grow_time}}
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands[card.ability.extra.type]) then
            return {
                chips = card.ability.extra.t_chips + card.ability.taw_data.chips
            }
        end
        if context.end_of_round and context.main_eval then
            card.ability.taw_data.grow_time = card.ability.taw_data.grow_time - 1
            if card.ability.taw_data.grow_time <= 0 then
                Taw.grow(card, 'j_taw_bengalCat')
            end
        end
    end
}
--#endregion