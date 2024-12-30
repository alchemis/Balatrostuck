function Balatrostuck.INIT.Jokers.j_therapture()
    SMODS.Joker{
        name = "The Rapture",
        key = "therapture",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'The Rapture',
            ['text'] = {
                [1] = "Destroys played cards after scoring. Each destroyed",
                [2] = "scoring card adds X0.25 Mult. If you sell this Joker you lose."
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 8,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 