function Balatrostuck.INIT.Jokers.j_dolorosa()
    SMODS.Joker{
        name = "Wardrobifier",
        key = "dolorosa",
        config = {
            extra = {
                clothes = "m_bonus"
            }
        },
        loc_txt = {
            ['name'] = 'Wardrobifier',
            ['text'] = {
                [1] = "{C:attention}Wild Cards{} also count as {C:attention}#1#s{},",
                [2] = "enhancement changes each round"
            }
        },
        loc_vars = function(self, info_queue, card)
            info_queue[#info_queue + 1] = G.P_CENTERS["m_wild"]
            info_queue[#info_queue + 1] = G.P_CENTERS[card.ability.extra.clothes]
            return {
                vars = {localize {
                    type = 'name_text',
                    key = card.ability.extra.clothes,
                    set = 'Enhanced'
                }}
            }
        end,    
        pos = {
            x = 4,
            y = 5
         },
        cost = 6,
        rarity = 2,
        blueprint_compat = false,
        eternal_compat = true,
        unlocked = true,
        atlas = 'HomestuckJokers',

        set_ability = function(self, card, initial, delay_sprites)
            card.ability.extra.clothes = SMODS.poll_enhancement{key = "dolorosa", guaranteed = true}
            while card.ability.extra.clothes == "m_wild" or card.ability.extra.clothes == "m_stone" do
                card.ability.extra.clothes = SMODS.poll_enhancement{key = "dolorosa", guaranteed = true}
            end
        end,
    
        
        calculate = function(self,card,context)
            if context.end_of_round and context.main_eval then 
                card.ability.extra.clothes = SMODS.poll_enhancement{key = "dolorosa", guaranteed = true}
                while card.ability.extra.clothes == "m_wild" or card.ability.extra.clothes == "m_stone" do
                    card.ability.extra.clothes = SMODS.poll_enhancement{key = "dolorosa", guaranteed = true}
                end
            end

            if context.check_enhancement and context.other_card.config.center.key == "m_wild" then
                return {	
                    [card.ability.extra.clothes] = true,
                }
            end
        end
        }
end 