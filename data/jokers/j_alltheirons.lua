function Balatrostuck.INIT.Jokers.j_alltheirons()
    SMODS.Joker{
        name = "All the Irons",
        key = "alltheirons",
        config = {
            extra = { dollars = 3
            }
        },
        loc_vars = function(self,info_queue,card)
            return {vars = {card.ability.extra.dollars}}
        end,
        loc_txt = {
            ['name'] = 'All the Irons',
            ['text'] = {
                [1] = "Earn {C:money}$#1#{} if a Joker triggers",
                [2] = "{C:attention}thrice{} in a single round",
                [3] = "{C:inactive}(Once per Joker each round)"
            }
        },
        pos = {
            x = 7,
            y = 1
        },
        cost = 3,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers',

        calculate = function(self, card, context)
            if context.setting_blind then
                for j=1, #G.jokers.cards do
                    G.jokers.cards[j].irons_triggers = 0
                end
            end
            
            
            
            if context.post_trigger and context.other_card.config.center.set == 'Joker' then
                if context.other_card.irons_triggers and context.other_card.irons_triggers == 2 then
                    context.other_card.irons_triggers = (context.other_card.irons_triggers or 0) + 1
                    ease_dollars(card.ability.extra.dollars)
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.extra.dollars})
                    
                    return {
                        card = card,
                        dollars = card.ability.extra.dollars
                    }
                else 
                    context.other_card.irons_triggers = (context.other_card.irons_triggers or 0) + 1
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = 3-context.other_card.irons_triggers .. " Left!"})
                end
            end
        end
    }
end