local seals = {
    red  = {x = 1, y = 0},
    blue  = {x = 2, y = 0},
    purple  = {x = 0, y = 0},
    gold  = {x = 3, y = 0}
}

for key, pos in pairs(seals) do
    SMODS.Stake:take_ownership(key, {
        atlas = 'Seals',
        pos = pos
    }, true)
end