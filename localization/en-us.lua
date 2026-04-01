return {
    descriptions = {
        Back={},
        Blind={},
        Edition={},
        Enhanced={},
        Joker={
            --#region Baby Jokers
            j_joker = {
                name = 'Ritten',
                text = {{
                    '{C:mult}+#1#{} Mult'
                },{
                    '{C:attention}Grow{} in',
                    '{C:attention}#2#{} rounds'
                }}
            },
            j_greedy_joker = {
                name = 'Black Bear Cub',
                text = {{
                    'Played cards with',
                    '{C:diamonds}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_lusty_joker = {
                name = 'Polar Cub',
                text = {{
                    'Played cards with',
                    '{C:hearts}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_wrathful_joker = {
                name = 'Grizzly Cub',
                text = {{
                    'Played cards with',
                    '{C:spades}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_gluttenous_joker = {
                name = 'Panda Cub',
                text = {{
                    'Played cards with',
                    '{C:clubs}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_jolly = {
                name = 'Golden Puppy',
                text = {{
                    '{C:mult}+#1#{} Mult if played',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_zany = {
                name = 'Shepherd Pup',
                text = {{
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_mad = {
                name = 'Dalmatian Pup',
                text = {{
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_crazy = {
                name = 'Pug Puppy',
                text = {{
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_droll = {
                name = 'Husky Cub',
                text = {{
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            --#endregion
            --#region Normal Jokers
            j_taw_rat = {
                name = 'Rat',
                text = {
                    '{C:mult}+#1#{} Mult'
                }
            },
            j_taw_blackBear = {
                name = 'Black Bear',
                text = {
                    'Played cards with',
                    '{C:diamonds}#2#{} suit suit give',
                    '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_taw_polarBear = {
                name = 'Polar Bear',
                text = {
                    'Played cards with',
                    '{C:hearts}#2#{} suit suit give',
                    '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_taw_grizzly = {
                name = 'Grizzly',
                text = {
                    'Played cards with',
                    '{C:spades}#2#{} suit suit give',
                    '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_taw_panda = {
                name = 'Giant Panda',
                text = {
                    'Played cards with',
                    '{C:clubs}#2#{} suit suit give',
                    '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_taw_goldenRetriver = {
                name = 'Golden Retriever',
                text = {
                    '{C:mult}+#1#{} Mult if played',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            j_taw_germanShepherd = {
                name = 'German Shepherd',
                text = {
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            j_taw_dalmatian = {
                name = 'Dalmatian',
                text = {
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            j_taw_pug = {
                name = 'Pug',
                text = {
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            j_taw_husky = {
                name = 'Husky',
                text = {
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            }
            --#endregion
        },
        Other={},
        Planet={},
        Spectral={},
        Stake={},
        Tag={},
        Tarot={},
        Voucher={},
        ["Content Set"] = {}
    },
    misc = {
        achievement_descriptions={},
        achievement_names={},
        blind_stakes={},
        challenge_names={},
        collabs={},
        dictionary={
            k_taw_grow = 'Grow'
        },
        high_scores={},
        labels={
            taw_credit = 'Artwork by '
        },
        poker_hand_descriptions={},
        poker_hands={},
        quips={},
        ranks={},
        suits_plural={},
        suits_singular={},
        tutorials={},
        v_dictionary={},
        v_texts={}
    }
}