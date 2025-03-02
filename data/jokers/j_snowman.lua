function Balatrostuck.INIT.Jokers.j_snowman()
    SMODS.Joker{
        name = "Snowman",
        key = "snowman",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Snowman',
            ['text'] = {
                [1] = "8s are considered face cards",
                [2] = "Held face cards give +1 mult"
            }
        },
        pos = {
            x = 3,
            y = 5
         },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers',
        calculate = function(self,card,context)
            if context.individual and context.cardarea == G.hand then
                if context.other_card:is_face() and not context.other_card.debuff then
                    return {
                        h_mult = 1,
                        card = card
                    }
                elseif context.other_card:is_face() then
                    return {
                        message = localize('k_debuffed'),
                        colour = G.C.RED,
                        card = card
                    }
                end
            end
        end
    }
end 