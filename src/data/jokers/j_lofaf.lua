-- TODO: Localization and calculation logic
function Balatrostuck.INIT.Jokers.j_lofaf()
    SMODS.Joker{
        name = "Frost and Frogs",
        key = "lofaf",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Frost and Frogs',
            ['text'] = {
                [1] = "{C:attention}Booster packs{} have",
                [2] = "+1 card in them",
                [3] = "per blind beaten",
                [4] = "{C:inactive}[Currently: 0]{}",
                [5] = "{C:inactive}(Max +3){}"
            }
        },
        pos = {
            x = 3,
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