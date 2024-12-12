-- TODO: Calculation logic, general rework
function Balatrostuck.INIT.Jokers.j_operation_regisurp()
    SMODS.Joker{
        name = "Operation Regisurp",
        key = "operation_regisurp",
        config = {
            extra = {
                suit = "Spades",
                dollars = 12
            }
        },
        loc_txt = {
            ['name'] = 'Operation Regisurp',
            ['text'] = {
                [1] = "When {C:attention}Queen of #1#{} is scored",
                [2] = "destroy the card and gain {C:money}$#2#{}",
            }
        },
        pos = {
            x = 8,
            y = 3
        },
        cost = 5,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers',

        loc_vars = function(self, info_queue, card)
            return {vars = {card.ability.extra.suit, card.ability.extra.dollars}}
        end,

        calculate = function(self, card, context)
            if context.other_card:get_id() == 12 then
                if context.other_card:is_suit("Spades") then
                    other_card:start_dissolve() -- does not work
                end
            end
        end
    }
end