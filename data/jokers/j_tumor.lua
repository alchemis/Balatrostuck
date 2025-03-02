function Balatrostuck.INIT.Jokers.j_tumor()
    SMODS.Joker{
        name = 'The Tumor',
        key = 'tumor',
        config = {extra = {x_mult = 2}},
        loc_vars = function(self, info_queue, card)
            return { vars = { card.ability.extra.x_mult} }
        end,   
        loc_txt = {
            name = 'The Tumor',
            text = {'{X:mult,C:white}X#1#{} mult if',
                    'you have exactly {C:money}0$.'}
        },
        pos = {x = 7, y = 7},
        cost = 6,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers',
        calculate = function(self,card,context)
            if context.joker_main and G.GAME.dollars == 0 then
                return {
                    Xmult_mod = card.ability.extra.x_mult,
                    message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.x_mult } },
                    card = card
                }
            end
        end
    }
end

