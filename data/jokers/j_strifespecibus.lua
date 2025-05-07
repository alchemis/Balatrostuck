function Balatrostuck.INIT.Jokers.j_strifespecibus()
    SMODS.Joker{
        name = "Strife Specibus",
        key = "strifespecibus",
        config = {
            extra = {
                hand = "Unassigned"
            }
        },
        loc_txt = {
            ['name'] = 'Strife Specibus',
            ['text'] = {
                -- [1] = 'Gives {C:mult}+20{} Mult',
                -- [2] = 'After first hand played',
                -- [3] = 'disallows all other hands',
                '{C:red}+20{} Mult before cards',
                'are scored, all other',
                '{C:attention}hand types{} are {C:red}not {C:red}allowed{}',
                'after next hand is played'
            }
        },
        pos = {
            x = 6,
            y = 0
         },
        cost = 6,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        atlas = 'HomestuckJokers',

        loc_vars = function(self, info_queue, card)
            art_credit('akai', info_queue)
            local color = card.ability.extra.hand == "Unassigned" and G.C.JOKER_GREY or G.C.SPECIBUS
            return {
                main_end = {
                    BSUI.Col({align = "cm", minh = 0.45}, {
                        BSUI.Row({align = "cm", colour = color, r = 0.05, padding = 0.08}, {
                            BSUI.Text(card.ability.extra.hand, G.C.UI.TEXT_LIGHT, 0.32 * 0.8, true)
                        })
                })}
            }            
        end,
        calculate = function (self, card, context)
            if context.debuff_hand then
                local strifed = false
                local grace = false

                for _,v in pairs(G.GAME.BALATROSTUCK.strife_assignment) do
                    if v == true then
                        strifed = true
                    end
                end
                
                for i=1, #G.jokers.cards do
                    if G.jokers.cards[i].ability.extra and G.jokers.cards[i].ability.extra.hand == 'Unassigned' then
                        grace = true
                    end
                end



                if G.GAME.BALATROSTUCK.strife_assignment[context.scoring_name] == nil and strifed and not grace then
                    return {
                        debuff_text = 'Invalid Specibus Allocation',
                        debuff = true
                    }
                end
            end
            
            
        
            if context.cardarea == G.jokers and context.joker_main then
                if card.ability.extra.hand == 'Unassigned' and not G.GAME.BALATROSTUCK.strife_assignment[context.scoring_name] then
                    G.GAME.BALATROSTUCK.strife_assignment[context.scoring_name] = true
                    card.ability.extra.hand = context.scoring_name
                end
                return {
                    mult = 20,
                    card = card
                }
            end
        end,
        remove_from_deck = function(self,card,from_debuff)
            local dupe = nil

            for i=1, #G.jokers.cards do
                if G.jokers.cards[i].ability.extra and G.jokers.cards[i].ability.extra.hand == card.ability.extra.hand then
                    dupe = true
                end
            end

            G.GAME.BALATROSTUCK.strife_assignment[card.ability.extra.hand] = dupe
        end,
        add_to_deck = function(self,card,from_debuff)
            if from_debuff and card.ability.extra.hand then
                G.GAME.BALATROSTUCK.strife_assignment[card.ability.extra.hand] = true
            end   
        end
    }

end