function Balatrostuck.INIT.Aspects.c_aspect_light()
    Balatrostuck.Aspect{
        key = "light",
        name = "Light",
        loc_txt = {
            ['name'] = "Light",
            ['text'] = {
                [1] = 'Held consumables',
                [2] = 'give {C:white,X:mult}X#1#{} Mult each'
            }
        },
        pos = {
            x = 0,
            y = 0
        },
        soul_pos = {
            x = 0,
            y = 2
        },
        cost = 4,
        discovered = true,
        atlas = "HomestuckAspects",
        loc_vars = function(self, info_queue)
            return {
                vars = {
                    1+(G.GAME.BALATROSTUCK.aspect_levels[self.name] or 0)*0.5
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
        key = 'light',
        atlas = 'HomestuckAspectSlabs',
        pos = {
            x = 0,
            y = 0
        },
        config = {},
        name = 'Aspect of Light',
        apply = function(self, slab, context) 
            if context.consumable then
                slab.triggered = false
                return {
                    Xmult_mod = 1 + slab:level() / 2,
                    message = localize{type = 'variable', key = 'a_xmult', vars = {1 + slab:level() / 2}},
                    card = context.consumable              
                }
            end
        end
    }
end