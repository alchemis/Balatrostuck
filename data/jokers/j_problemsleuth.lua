function Balatrostuck.INIT.Jokers.j_problemsleuth()
    SMODS.Joker{
        name = "Problem Sleuth",
        key = "problemsleuth",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Problem Sleuth',
            ['text'] = {
                [1] = "Scored face cards give 2$ if played",
                [2] = "hand contrains a 3-Of-A-Kind"
            },
            unlock = {'Unlocked by',
                    'finishing Act 1'}
        },
        pos = {
            x = 3,
            y = 0
         },
        cost = 5,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = false,
        in_pool = function ()
            return Balatrostuck.peanut_gallery
        end,
        atlas = 'HomestuckJokers',
        loc_vars = function(self, info_queue, card)
            info_queue[#info_queue+1] = {key='warn_bstuck_wip', set='Other'}
            art_credit('akai', info_queue)
            return {vars = {}}
        end,
        check_for_unlock = function(self,args)
            if args.type == 'bstuck_apple_eaten' then
                unlock_card(self)
            end
        end
    }
end 