function Balatrostuck.INIT.Aspects.c_aspect_heart()
    Balatrostuck.Aspect{
        key = "heart",
        name = "Heart",
        loc_txt = {
            ['name'] = "Heart",
            ['text'] = {
                [1] = 'Reduces amount',
                [2] = 'of {C:blue}hands{} to 1',
                [3] = '{C:attention}scoring cards',
                [4] = 'give {C:white,X:mult}X#1#{} Mult each'
            }
        },
        pos = {
            x = 1,
            y = 1
        },
        soul_pos = {
            x = 1,
            y = 3
        },
        cost = 4,
        discovered = true,
        atlas = "HomestuckAspects",
        loc_vars = function(self, info_queue)
            return {
                vars = {
                    (G.GAME.BALATROSTUCK.aspect_levels[self.name] or 0)+2
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
        key = 'heart',
        atlas = 'HomestuckAspectSlabs',
        pos = {
            x = 0,
            y = 1
        },
        config = {},
        name = 'Aspect of Heart',
        apply = function(self, slab, context)
            if context.level_up_hand then
                sendInfoMessage("Intersected level up")
                return {
                    amount = context.amount + summation(slab:level())
                }
            end
        end
    }

end
