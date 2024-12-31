function Balatrostuck.INIT.Jokers.j_darkscholar()
    SMODS.Joker{
        name = "Dark Scholar",
        key = "darkscholar",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Dark Scholar',
            ['text'] = {
                [1] = "This gains +1 hand size when you use a tarot",
                [2] = "At +10 goes grimdark"
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 10,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 