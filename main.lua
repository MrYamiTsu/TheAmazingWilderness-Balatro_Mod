Taw = SMODS.current_mod
Taw_path = SMODS.current_mod.path
Taw_config = SMODS.current_mod.config

--#region LOADING FILES --
assert(SMODS.load_file('utils/function.lua'))()
assert(SMODS.load_file('utils/ownership.lua'))()
assert(SMODS.load_file('items/joker.lua'))()
--#endregion
--#region ATLAS --
SMODS.Atlas{
    key = 'modicon', 
    path = 'modicon.png', 
    px = 32,
    py = 32
}
SMODS.Atlas{
    key = 'Jokers',
    path = 'Joker.png',
    px = 71,
    py = 95
}

--#endregion
--#region CUSTOM COLOUR --
loc_colour()
G.ARGS.LOC_COLOURS.giga_Food = HEX('F2A5A6FF')
G.ARGS.LOC_COLOURS.giga_Artefact = HEX('444444FF')
--#endregion
--#region INITIALISATION --
--[[
Taw.reset_game_globals = function(run_start)
    if run_start then

    end
end
]]
--#endregion