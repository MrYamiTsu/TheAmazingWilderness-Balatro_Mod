return {
    descriptions = {
        Back={},
        Blind={},
        Edition={},
        Enhanced={},
        Joker={
            --#region RAT --
            j_taw_ritten = {
                name = 'Ritten',
                text = {{
                    '{C:mult}+#1#{} Mult'
                },{
                    '{C:attention}Grow{} in',
                    '{C:attention}#2#{} rounds'
                }}
            },
            j_taw_rat = {
                name = 'Rat',
                text = {
                    '{C:mult}+#1#{} Mult'
                }
            },
            --#endregion
            --#region BEARS
            j_taw_blackBearCub = {
                name = 'Black Bear Cub',
                text = {{
                    'Played cards with',
                    '{C:diamonds}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_blackBear = {
                name = 'Black Bear',
                text = {
                    'Played cards with',
                    '{C:diamonds}#2#{} suit suit give',
                    '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_taw_polarCub = {
                name = 'Polar Cub',
                text = {{
                    'Played cards with',
                    '{C:hearts}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_polarBear = {
                name = 'Polar Bear',
                text = {
                    'Played cards with',
                    '{C:hearts}#2#{} suit suit give',
                    '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_taw_grizzlyCub = {
                name = 'Grizzly Cub',
                text = {{
                    'Played cards with',
                    '{C:spades}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_grizzly = {
                name = 'Grizzly',
                text = {
                    'Played cards with',
                    '{C:spades}#2#{} suit suit give',
                    '{C:mult}+#1#{} Mult when scored'
                }
            },
            j_taw_pandaCub = {
                name = 'Panda Cub',
                text = {{
                    'Played cards with',
                    '{C:clubs}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_panda = {
                name = 'Giant Panda',
                text = {
                    'Played cards with',
                    '{C:clubs}#2#{} suit suit give',
                    '{C:mult}+#1#{} Mult when scored'
                }
            },
            --#endregion
            --#region DOGS
            j_taw_goldenPuppy = {
                name = 'Golden Puppy',
                text = {{
                    '{C:mult}+#1#{} Mult if played',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_goldenRetriver = {
                name = 'Golden Retriever',
                text = {
                    '{C:mult}+#1#{} Mult if played',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            j_taw_shepherdPup = {
                name = 'Shepherd Pup',
                text = {{
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_germanShepherd = {
                name = 'German Shepherd',
                text = {
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            j_taw_dalmatianPup = {
                name = 'Dalmatian Pup',
                text = {{
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_dalmatian = {
                name = 'Dalmatian',
                text = {
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            j_taw_pugPuppy = {
                name = 'Pug Puppy',
                text = {{
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_pug = {
                name = 'Pug',
                text = {
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            j_taw_huskyCub = {
                name = 'Husky Cub',
                text = {{
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_husky = {
                name = 'Husky',
                text = {
                    '{C:mult}+#1#{} Mult if scored',
                    'hand contains',
                    'a {C:attention}#2#{}'
                }
            },
            --#endregion
            --#region CATS --
            j_taw_maineCoonKitten = {
                name = 'Maine Coon Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_siameseKitten = {
                name = 'Siamese Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_persianKitten = {
                name = 'Persian Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_sphynxKitten = {
                name = 'Sphynx Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
            j_taw_bengalKitten = {
                name = 'Bengal Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Grow{} in {C:attention}#3#{} rounds'
                }}
            },
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