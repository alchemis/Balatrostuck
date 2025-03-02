function Balatrostuck.INIT.Aspects.c_aspect_void()
    Balatrostuck.Aspect{
        key = "void",
        name = "Void",
        loc_txt = {
            ['name'] = "Void",
            ['text'] = {
                [1] = 'Applies {C:dark_edition}Negative{} to',
                [2] = 'random consumable',
                [3] = 'each round {C:inactive}(max of #1#){}'
            }
        },
        pos = {
            x = 0,
            y = 1
        },
        soul_pos = {
            x = 0,
            y = 3
        },
        cost = 4,
        discovered = true,
        atlas = "HomestuckAspects",
        loc_vars = function(self, info_queue)
            return {
                vars = {
                    summation(1+(G.GAME.BALATROSTUCK.aspect_levels[self.name] or 0)),
                }
            }
        end,
        use = function(self, context)
            self:switch_slab()
        end,
        can_use = function(self)
            return true
        end
    }

    Balatrostuck.Slab{
        key = 'void',
        atlas = 'HomestuckAspectSlabs',
        pos = {
            x = 1,
            y = 1
        },
        config = {},
        name = 'Aspect of Void',
        apply = function(self, slab, context) 
            if context.setting_blind then
                local negativeCount = 0
                local jokersToChoose = {}
                for j = 1, #G.jokers.cards do
                    if G.jokers.cards[j].edition then
                        if G.jokers.cards[j].edition.negative then negativeCount = negativeCount + 1 end
                    else
                        table.insert(jokersToChoose, G.jokers.cards[j])
                    end
                end

                if #jokersToChoose > 0 and negativeCount < summation(slab:level()) then
                    local flintstones = pseudorandom_element(jokersToChoose, pseudoseed('void'))
                    flintstones:set_edition({negative = true}, true)
                    flintstones.temp_edition = nil
                end
            end
        end
    }
end
