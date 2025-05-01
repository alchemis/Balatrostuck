function Balatrostuck.INIT.Jokers.j_backseater()
    SMODS.Joker{
        name = "8acks8er",
        key = "backseater",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = '8acks8er',
            ['text'] = {
                [1] = "blegh",
                [2] = "blegh"
            }
        },
        pos = {
            x = 1,
            y = 10
         },
        cost = 8,
        rarity = 2,
        blueprint_compat = false,
        eternal_compat = true,
        unlocked = true,
        atlas = 'HomestuckJokers',
        in_pool = function(self)
            return Balatrostuck.peanut_gallery
        end
    }
end 