function Balatrostuck.INIT.Jokers.j_trolltrain()
    SMODS.Joker{
        name = "Troll Train",
        key = "trolltrain",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Troll Train',
            ['text'] = {
                [1] = "Scored cards give +4 mult",
                [2] = "per zodiac level of their rank"
            }
        },
        pos = {
            x = 9,
            y = 7
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