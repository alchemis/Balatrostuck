function Balatrostuck.INIT.Jokers.j_whitequeen()
    SMODS.Joker{
        name = "White Queen",
        key = "whitequeen",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'White Queen',
            ['text'] = {
                [1] = "When a Queen of Diamonds",
                [2] = "is scored give it a gold",
                [3] = "seal and destroy this card"
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