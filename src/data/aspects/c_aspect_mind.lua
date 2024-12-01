function Balatrostuck.INIT.Aspects.c_aspect_mind()
    Balatrostuck.Aspect{
        key = "mind",
        name = "Mind",
        loc_txt = {
            ['name'] = "Mind",
            ['text'] = {
                [1] = 'Always draw',
                [2] = '{C:attention}#1# cards{} after',
                [3] = 'a {C:red}discard{}'
            }
        },
        pos = {
            x = 1,
            y = 0
        },
        soul_pos = {
            x = 1,
            y = 2
        },
        cost = 4,
        discovered = true,
        atlas = "HomestuckAspects",
        loc_vars = function(self, info_queue)
            return {
                vars = {
                    (G.GAME.BALATROSTUCK.aspect_levels[self.name] or 0)
                }
            }
        end
    }

end