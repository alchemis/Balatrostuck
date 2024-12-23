function Balatrostuck.INIT.Jokers.j_conventioncenter()
    SMODS.Joker{
        name = "Convention Center",
        key = "conventioncenter",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Convention Center',
            ['text'] = {
                [1] = "+1 shop slot"
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