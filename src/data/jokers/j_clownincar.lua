function Balatrostuck.INIT.Jokers.j_clownincar()
    SMODS.Joker{
        name = "Clown In Car",
        key = "clownincar",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Clown In Car',
            ['text'] = {
                [1] = "Cards in standard packs can only",
                [2] = "be the ranks of held Zodiac Cards (if any)"
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 4,
        rarity = 2,
        blueprint_compat = false,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 