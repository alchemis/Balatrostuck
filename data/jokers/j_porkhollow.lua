function Balatrostuck.INIT.Jokers.j_porkhollow()
    SMODS.Joker{
        name = "Porkhollow",
        key = "porkhollow",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Porkhollow',
            ['text'] = {
                [1] = "Gain no interest; instead, that money",
                [2] = "goes to this joker's sell value. +3 chips for each $ in sell value. Currently: +15 chips"
            }
        },
        pos = {
            x = 4,
            y = 4
         },
        cost = 10,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 