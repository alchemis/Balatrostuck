function Balatrostuck.INIT.Jokers.j_typheus()
    SMODS.Joker{
        name = "Typheus",
        key = "typheus",
        config = {
            extra = 4
        },
        loc_txt = {
            ['name'] = 'Typheus',
            ['text'] = {
                'All cards inside {C:attention}packs',
                'and in the {C:attention}shop{} always',
                'spawn with an {C:dark_edition}Edition'
            }
        },
        pos = {
            x = 4,
            y = 9
        },
        cost = 20,
        rarity = 4,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        atlas = 'HomestuckJokers',
        loc_vars = function(self, info_queue, card)
            art_credit('akai', info_queue)
            return {vars = {}}
        end,
        soul_pos = {
            x = 9,
            y = 9
        },
        add_to_deck = function(self,card,from_debuff)
            G.GAME.round_resets.reroll_cost = G.GAME.round_resets.reroll_cost + card.ability.extra
            G.GAME.current_round.reroll_cost = math.max(0, G.GAME.current_round.reroll_cost + card.ability.extra)
        end,
        remove_from_deck = function(self,card,from_debuff)
            G.GAME.round_resets.reroll_cost = G.GAME.round_resets.reroll_cost - card.ability.extra
            G.GAME.current_round.reroll_cost = math.max(0, G.GAME.current_round.reroll_cost - card.ability.extra)
        end
    }
end