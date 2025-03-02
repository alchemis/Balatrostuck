function Balatrostuck.INIT.Jokers.j_frogbreeding()
    SMODS.Joker{
        name = "Frog Breeding",
        key = "frogbreeding",
        config = {
            extra = {
                rounds = 5
            }
        },
        loc_txt = {
            ['name'] = 'Frog Breeding',
            ['text'] = {
                [1] = "Create a {C:green}Paradox copy",
                [2] = "of the {C:attention}first{} consumable",
                [3] = "used each round",
                [4] = "{C:inactive}({C:attention}#1#{C:inactive} rounds remaining)"
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 1,
        rarity = 3,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers',

        loc_vars = function(self, info_queue, card)
            return {vars = {card.ability.extra.rounds}}
        end,
    }
end 