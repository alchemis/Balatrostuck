function Balatrostuck.INIT.Jokers.j_amberfirefly()
    SMODS.Joker{
        name = "Amber Firefly",
        key = "amberfirefly",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Amber Firefly',
            ['text'] = {
                [1] = "Place a paradox gold card",
                [2] = "with a blue seal on the",
                [3] = "bottom of the deck at",
                [4] = "start of every round"
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