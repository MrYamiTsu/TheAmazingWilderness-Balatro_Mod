local list_vanilla = {
    'j_joker',
    'j_greedy_joker',
    'j_lusty_joker',
    'j_wrathful_joker',
    'j_gluttenous_joker',
    'j_jolly',
    'j_zany',
    'j_mad',
    'j_crazy',
    'j_droll',
    'j_sly',
    'j_wily',
    'j_clever',
    'j_devious',
    'j_crafty',
    'j_half',
    'j_stencil',
    'j_four_fingers',
    'j_mime'
}
for index, value in ipairs(list_vanilla) do
    SMODS.Joker:take_ownership(value, { in_pool = function(self, args) return false end, no_collection = true })
end