function Balatrostuck.INIT.Aspects.c_aspect_doom()
    Balatrostuck.Aspect{
        key = "doom",
        name = "Doom",
        loc_txt = {
            ['name'] = "Doom",
            ['text'] = {
                [1] = 'Played cards giv {C:mult}+#1# Mult{}',
                [2] = 'when scored. {C:green}1 in #2#{} chance',
                [3] = 'for played cards to be debuffed.'
            }
        },
        pos = {
            x = 5,
            y = 1
        },
        soul_pos = {
            x = 5,
            y = 3
        },
        cost = 4,
        discovered = true,
        atlas = "HomestuckAspects",
        loc_vars = function(self, info_queue)
            return {
                vars = {
                    1 + self:level() / 10,
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
        key = 'doom',
        atlas = 'HomestuckAspectSlabs',
        pos = {
            x = 1,
            y = 2
        },
        config = {},
        name = 'Aspect of Doom',

        apply = function(self, slab, context)
            if context.score_effects_before_debuff then
                if pseudoseed('slab_bstuck_doom') < G.GAME.probabilities.normal / slab:level() then
                    return {
                        debuff = true
                    }
                end
            end
            
            if context.score_effects then
                return {
                    mult = 1 + slab:level() / 10
                }
            end
        end
    }
end
