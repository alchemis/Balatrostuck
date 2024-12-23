function Balatrostuck.INIT.Jokers.j_parcelmistress()
    SMODS.Joker{
        name = "Parcel Mistress",
        key = "parcelmistress",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Parcel Mistress',
            ['text'] = {
                [1] = "+7 mult for each",
                [2] = "card with a seal",
                [3] = "in your full deck"
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 3,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 