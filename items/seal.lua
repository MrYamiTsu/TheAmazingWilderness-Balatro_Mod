local seals = {
    Red  = {x = 1, y = 0},
    Blue  = {x = 2, y = 0},
    Purple  = {x = 0, y = 0},
    Gold  = {x = 3, y = 0}
}

for key, pos in pairs(seals) do
    SMODS.Stake:take_ownership(key, {
        atlas = 'Seals',
        pos = pos
    }, true)
end