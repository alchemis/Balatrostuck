function Balatrostuck.INIT.Jokers.j_frogsprite2()
    SMODS.Joker{
        name = "fr0gsprite2",
        key = "frogsprite2",
        config = {
            extra = { 
                depth = 15
            }
        },
        loc_txt = {
            ['name'] = 'fr0gsprite2',
            ['text'] = {
                [1] = "If first discard of round ",
                [2] = "has only 1 card,",
                [3] = "transform it into a {C:paradox}Paradox Ace{}"
            }
        },
        pos = {
            x = 9,
            y = 12
        },

        
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,


        atlas = 'HomestuckJokers',
        calculate = function (self, card, context)
            if context.first_hand_drawn then
                if not context.blueprint then
                    local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
                    juice_card_until(card, eval, true)
                end
            end
            if context.discard and G.GAME.current_round.discards_used <= 0 and #context.full_hand == 1 then
                G.E_MANAGER:add_event(Event({
                    func = function() 
                    local _card_base = string.sub(context.other_card.base.suit, 1, 1)..'_A'
                    context.other_card:set_base(G.P_CARDS[_card_base])
                    context.other_card:set_edition('e_bstuck_paradox',true,true)
                    playing_card_joker_effects({context.other_card})
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = "ribbit", colour = G.C.PARADOX})
                    delay(0.1)
                    return true
                end}))
            end
        end,
        loc_vars = function (self, info_queue, card)
            art_credit('akai', info_queue)
            return {vars = {self.config.extra.depth}}
        end,
    }
end 