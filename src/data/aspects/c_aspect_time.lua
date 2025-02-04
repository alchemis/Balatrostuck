function Balatrostuck.INIT.Aspects.c_aspect_time()
    Balatrostuck.Aspect{
        key = "time",
        name = "Time",
        loc_txt = {
            ['name'] = "Time",
            ['text'] = {
                [1] = '{E:1,S:1.2}(lvl. #2#){} Get {C:blue}+#1# Hand#3#{}'
            }
        },
        pos = {
            x = 3,
            y = 0
        },
        soul_pos = {
            x = 3,
            y = 2
        },
        cost = 4,
        discovered = true,
        atlas = "HomestuckAspects",
        loc_vars = function(self, info_queue)
            local mariobros = ""
            if self:level() ~= 0 then
                mariobros = "s"
            end
            return {
                vars = {
                    summation(self:level() + 1),
                    self:level(),
                    mariobros
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
        key = 'time',
        atlas = 'HomestuckAspectSlabs',
        pos = {
            x = 3,
            y = 0
        },
        config = {},
        name = 'Aspect of Time',
        apply = function(self, slab, context) 
            if context.setting_blind then
                ease_hands_played(summation(slab:level()))
            end
        end
    }
end