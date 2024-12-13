-- TODO: Localization and calculation logic
function Balatrostuck.INIT.Jokers.j_lolar()
    SMODS.Joker{
        name = "Light and Rain",
        key = "lolar",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Light and Rain',
            ['text'] = {
                [1] = "After playing a hand this",
                [2] = "gets {C:chips}+3 chips{} for every",
                [3] = "empty joker slot",
                [4] = "{C:inactive}[Currently: {C:chips}+0{} {C:inactive}chips]{}"
            }
        },
        pos = {
            x = 2,
            y = 8
        },
        cost = 4,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 