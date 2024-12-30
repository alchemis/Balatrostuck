function Balatrostuck.INIT.Jokers.j_ahabscrosshairs()
    SMODS.Joker{
        name = "Ahabs Crosshairs",
        key = "ahabscrosshairs",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Ahabs Crosshairs',
            ['text'] = {
                [1] = "Gives X0.25 mult per 16$ of sell value",
                [2] = "on all jokers. [Currently: 1x mult]."
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 20,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 