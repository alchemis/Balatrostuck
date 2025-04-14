function Balatrostuck.INIT.Aspects.c_aspect_piss()
    Balatrostuck.Aspect{
        key = 'piss',
        name = "Piss",
        loc_txt = {
            ['name'] = "Piss",
            ['text'] = {
                [1] = 'create 1 paradox joker ',
                [2] = 'at the start of the blind or smthn'
            }
        },
        pos = {
            x = 6,
            y = 0
        },
        soul_pos = {
            x = 6,
            y = 3
        },
        cost = 4,
        no_collection = true,
        atlas = "HomestuckAspects",
        loc_vars = function(self, info_queue)
            return {
                vars = {
                    self:level() + 1,
                    self:level()
                }
            }
        end,
        use = function(self, card, area, copier)
            self:switch_slab()
        end,
        can_use = function(self)
            return true
        end
    }

    Balatrostuck.Slab{
        key = 'piss',
        atlas = 'HomestuckAspectSlabs',
        pos = {
            x = 2,
            y = 2
        },
        config = { discards_used = 0 },
        name = 'Aspect of Piss',
        apply = function(self, slab, context)
            for i=1,  summation(slab:level()+1) do
                if context.setting_blind then
                    G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        trigger = 'before',
                        delay = 0.0,
                        func = function()
                        local card = create_card('Joker', G.jokers, nil, nil, nil, nil, nil, 'who')
                        card:set_edition("e_bstuck_paradox", nil)
                        card:add_to_deck()
                        G.jokers:emplace(card)
                        card:start_materialize()
                        G.GAME.joker_buffer = 0
                        return true
                        end
                    }))
                end
            end
        end
    }

    --Balatrostuck.Slab{key='blood', atlas='HomestuckAspectSlabs', pos={x=2,y=2}}
end