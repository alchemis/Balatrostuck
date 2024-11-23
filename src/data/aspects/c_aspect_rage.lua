function Balatrostuck.INIT.Aspects.c_aspect_rage()
    Balatrostuck.Aspect{
        key = "rage",
        name = "Rage",
        loc_txt = {
            ['name'] = "Rage",
            ['text'] = {
                [1] = 'Scoring cards give',
                [2] = '{C:white,X:mult}X#1#{} Mult times',
                [3] = 'the {C:attention}difference{}',
                [4] = 'between {C:attention}hands{}',
                [5] = 'and {C:attention}discards{} left'
            }
        },
        pos = {
            x = 2,
            y = 0
        },
        soul_pos = {
            x = 2,
            y = 2
        },
        cost = 4,
        discovered = true,
        atlas = "HomestuckAspects",
        loc_vars = function(self, info_queue)
            return {
                vars = {
                    (G.GAME.BALATROSTUCK.aspect_levels[self.name] or 0)*0.25
                }
            }
        end
    }
end