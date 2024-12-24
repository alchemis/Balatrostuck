function Balatrostuck.INIT.Jokers.j_snowman()
    SMODS.Joker{
        name = "Snowman",
        key = "snowman",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Snowman',
            ['text'] = {
                [1] = "8s are considered face cards",
                [2] = "Held face cards give +1 mult"
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 