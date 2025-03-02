function Balatrostuck.INIT.Jokers.j_pickleinspector()
    SMODS.Joker{
        name = "Pickle Inspector",
        key = "pickleinspector",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Pickle Inspector',
            ['text'] = {
                [1] = "When another joker triggers this gets",
                [2] = "+0.025x mult. Resets at end of blind. [Currently: 1x]"
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 5,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 