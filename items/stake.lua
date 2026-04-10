local stakes_data = {
    white  = { stake_pos = {x = 0, y = 0}, sticker_pos = {x = 0, y = 0} },
    red    = { stake_pos = {x = 1, y = 0}, sticker_pos = {x = 1, y = 0} },
    green  = { stake_pos = {x = 2, y = 0}, sticker_pos = {x = 3, y = 0} },
    blue   = { stake_pos = {x = 3, y = 0}, sticker_pos = {x = 2, y = 0} },
    black  = { stake_pos = {x = 4, y = 0}, sticker_pos = {x = 0, y = 1} },
    purple = { stake_pos = {x = 0, y = 1}, sticker_pos = {x = 1, y = 1} },
    orange = { stake_pos = {x = 1, y = 1}, sticker_pos = {x = 2, y = 1} },
    gold   = { stake_pos = {x = 2, y = 1}, sticker_pos = {x = 3, y = 1} },
}

for key, data in pairs(stakes_data) do
    SMODS.Stake:take_ownership(key, {
        atlas = 'Stakes',
        pos = data.stake_pos,
        sticker_atlas = 'Stickers',
        sticker_pos = data.sticker_pos
    }, true)
end