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
                    '{C:attention}Feed #2#{}',
                    'times to grow'
                }}
            },
            j_taw_rat = {
                name = 'Rat',
                text = {
                    '{C:mult}+#1#{} Mult'
                }
            },
            --#endregion
            --#region BEARS --
            j_taw_blackBearCub = {
                name = 'Black Bear Cub',
                text = {{
                    'Played cards with',
                    '{C:diamonds}#2#{} suit give',
                    '{C:mult}+#1#{} Mult when scored'
                },{
                    '{C:attention}Feed #2#{}',
                    'times to grow'
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
                    '{C:attention}Feed #2#{}',
                    'times to grow'
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
                    '{C:attention}Feed #2#{}',
                    'times to grow'
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
                    '{C:attention}Feed #2#{}',
                    'times to grow'
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
            --#region DOGS --
            j_taw_goldenPuppy = {
                name = 'Golden Puppy',
                text = {{
                    '{C:mult}+#1#{} Mult if played',
                    'hand contains',
                    'a {C:attention}#2#{}'
                },{
                    '{C:attention}Feed #3#{}',
                    'times to grow'
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
                    '{C:attention}Feed #3#{}',
                    'times to grow'
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
                    '{C:attention}Feed #3#{}',
                    'times to grow'
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
                    '{C:attention}Feed #3#{}',
                    'times to grow'
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
                    '{C:attention}Feed #3#{}',
                    'times to grow'
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
                    '{C:attention}Feed #3#{}',
                    'times to grow'
                }}
            },
            j_taw_maineCoon = {
                name = 'Maine Coon',
                text = {
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                }
            },
            j_taw_siameseKitten = {
                name = 'Siamese Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Feed #3#{}',
                    'times to grow'
                }}
            },
            j_taw_siameseCat = {
                name = 'Siamese Cat',
                text = {
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                }
            },
            j_taw_persianKitten = {
                name = 'Persian Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Feed #3#{}',
                    'times to grow'
                }}
            },
            j_taw_persianCat = {
                name = 'Persian Cat',
                text = {
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                }
            },
            j_taw_sphynxKitten = {
                name = 'Sphynx Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Feed #3#{}',
                    'times to grow'
                }}
            },
            j_taw_sphynxCat = {
                name = 'Sphynx Cat',
                text = {
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                }
            },
            j_taw_bengalKitten = {
                name = 'Bengal Kitten',
                text = {{
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                },{
                    '{C:attention}Feed #3#{}',
                    'times to grow'
                }}
            },
            j_taw_bengalCat = {
                name = 'Bengal Cat',
                text = {
                    '{C:chips}+#1#{} Chips if played',
                    'hand contains',
                    'a {C:attention}#2#'
                }
            },
            --#endregion
            --#region OTHERS --
            j_taw_tasmanianDevilJoey = {
                name = 'Tasmanian Devil Joey',
                text = {{
                    'Each {C:attention}played{} and {C:attention}unscored',
                    'card gives {C:mult}+#1#{} Mult'
                },{
                    '{C:attention}Feed #2#{}',
                    'times to grow'
                }}
            },
            j_taw_tasmanianDevil = {
                name = 'Tasmanian Devil',
                text = {
                    'Each {C:attention}played{} and {C:attention}unscored',
                    'card gives {C:mult}+#1#{} Mult'
                }
            },
            j_taw_babyShrew = {
                name = 'Baby Shrew',
                text = {{
                    "{C:mult}+#1#{} Mult if played",
                    "hand contains",
                    "{C:attention}#2#{} or fewer cards",
                },{
                    '{C:attention}Feed #3#{}',
                    'times to grow'
                }}
            },
            j_taw_shrew = {
                name = 'Shrew',
                text = {
                    "{C:mult}+#1#{} Mult if played",
                    "hand contains",
                    "{C:attention}#2#{} or fewer cards",
                }
            },
            j_taw_calf = {
                name = 'Calf',
                text = {{
                    "{X:mult,C:white}X#1#{} Mult for each",
                    "empty {C:attention}Joker{} slot",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive})"
                },{
                    '{C:attention}Feed #3#{}',
                    'times to grow'
                }}
            },
            j_taw_hippopotamus = {
                name = 'Hippopotamus',
                text = {
                    "{X:mult,C:white}X#1#{} Mult for each",
                    "empty {C:attention}Joker{} slot",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive})"
                }
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