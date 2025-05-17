function Balatrostuck.INIT.Vouchers.v_godtier()
    SMODS.Voucher {
        key = 'godtier',
        loc_txt = {
            name = 'Godtier',
            text = {'Gain +1 level on current aspect'}
        },
        pos = {x=1,y=1},
        atlas = 'HomestuckVouchers',
        requires = {'v_bstuck_aspect_mastery'},
        redeem = function(self,card)
            if G.GAME.slab then
                local anspect = string.gsub(G.GAME.slab.key, "slab_bstuck_", "")
                G.GAME.BALATROSTUCK.current_aspect = anspect
                add_slab(Slab('slab_bstuck_' .. anspect),1)
            end
        end,
        in_pool = function(self,args)
            return G.GAME.slab ~= nil
        end
    }
end