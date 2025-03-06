function Balatrostuck.INIT.Editions.e_paradox()
    SMODS.Shader{
        key = 'paradox',
        path = 'paradox.fs'
    }
    SMODS.Edition{
        key = "paradox",
        shader = 'paradox', -- change that to paradox shader later
        loc_txt = {
            name = 'Paradox',
            label = 'Paradox',
            text = { '{C:red}Destroyed{} at the end of blind', 'occupies {C:dark_edition}no space{}' },
        },
        config = setmetatable({ card_limit = 1 }, {
            __index = function(t, k)
                if k == 'extra' then return t.card_limit end
                return rawget(t, k)
            end,
            __newindex = function(t, k, v)
                if k == 'extra' then
                    t.card_limit = v; return
                end
                rawset(t, k, v)
            end,
        }),
        badge_colour = HEX('6ABE30'),
        unlocked = true,
        discovered = true,
        calculate = function(self,card,context)
            if context.end_of_round and not context.individual and not context.repetition then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        if not context.cardarea == G.deck and not context.cardarea == G.discard then
                            play_sound('tarot1')
                        end
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                            func = function()
                                    context.cardarea:remove_card(card)
                                    card:remove()
                                    card = nil
                                return true; end})) 
                        return true
                    end
                }))
                
                if not context.cardarea == G.deck and not context.cardarea == G.discard then 
                    return {
                        message = '-Ify!'
                    }
                end
            end

            -- For playing cards after they are played
            -- if context.ace_dick and context.cardarea == G.play then
            --     G.E_MANAGER:add_event(Event({
            --         func = function()
            --             play_sound('tarot1')
            --             card.T.r = -0.2
            --             card:juice_up(0.3, 0.4)
            --             card.states.drag.is = true
            --             card.children.center.pinch.x = true
            --             G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
            --                 func = function()
            --                         context.cardarea:remove_card(card)
            --                         card:remove()
            --                         card = nil
            --                     return true; end})) 
            --             return true
            --         end
            --     }))
            -- end
        end
    }

end