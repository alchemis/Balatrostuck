function Balatrostuck.INIT.Aspects.c_aspect_doom()
    Balatrostuck.Aspect{
        key = "doom",
        name = "Doom",
        loc_txt = {
            name = "Doom",
            text = {
                'When you use a {C:zodiac}Zodiac{} card',
                'the corresponding {C:zodiac}Zodiac{} gains',
                '#1# additional level#2# but has',
                'a 1 in #3# chance to reset',
                'all other Zodiacs to 0'
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
        use = function(self, context)
            self:switch_slab()
        end,
        can_use = function(self)
            return true
        end,
    }


    -- TODO: THIS IS OUTDATED ABILITY - THE NEW EFFECT IS  N O T  WHAT THE BELOW CODE IS
    -- THIS NEEDS TO BE FIXED ASAP PLS
    Balatrostuck.Slab{
        key = 'doom',
        atlas = 'HomestuckAspectSlabs',
        pos = {
            x = 1,
            y = 2
        },
        config = {},
        name = 'Aspect of Doom',
        apply = function(self,slab,context)
            if context.debuff_card and pseudorandom('doom') < G.GAME.probabilities.normal/(slab:level() + 1) then
                return {
                    debuff = true
                }
            end

            if context.individual and context.cardarea == G.play then
                return {
                        x_mult = 1 + (slab:level() / 10),
                        card = context.other_card
                }
            end
        end
    }
end
