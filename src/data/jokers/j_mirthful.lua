-- TODO: Fix calculation logic
function Balatrostuck.INIT.Jokers.j_mirthful()
    SMODS.Joker{
        name = "Mirthful Joker",
        key = "mirthful",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Mirthful Joker',
            ['text'] = {
                [1] = "{C:green}69 in 420{} chance to",
                [2] = "create a {C:attention}Zodiac card{}",
                [3] = "at end of round"
            }
        },
        pos = {
            x = 0,
            y = 5
         },
        cost = 4,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
        
        -- SMODS.Jokers.j_mirthful.calculate_joker = function (self, context)
        --     if context.cardarea == G.jokers and next(context.poker_hands["Straight"]) and not (context.individual or context.repetition or context.before or context.after) then
        --         local has_6 = false
        --         local has_9 = false
        --         for _,v in ipairs(context.scoring_hand) do
        --             if not has_6 then has_6 = v:get_id() == 6 end
        --             if not has_9 then has_9 = v:get_id() == 9 end
        --         end
                    
        --         if has_9 and has_6 then
        --             ease_dollars(4)
        --             G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + 8
        --             G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
        --             return {
        --                 mult_mod = 20,
        --                 message = localize { type = 'variable', key = 'a_mult', vars = { 20 } },
        --             }
        --         end
        --     end
        -- end
    }
end