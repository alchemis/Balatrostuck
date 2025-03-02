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
        end,
        use = function(self, context)
            self:switch_slab()
        end,
        can_use = function(self)
            return true
        end
    }

    Balatrostuck.Slab{
        key = 'mind',
        atlas = 'HomestuckAspectSlabs',
        pos = {
            x = 1,
            y = 0
        },
        config = {},
        name = 'Aspect of Mind',
        apply = function(self, slab, context) 
            if context.tag then
                if context.tag.ability and context.tag.ability.orbital_hand then
                    G.orbital_hand = context.tag.ability.orbital_hand
                end
                for i = 1, slab:level() do
                    add_tag(Tag(context.tag.key),true)
                end
            end
        end
    }
end