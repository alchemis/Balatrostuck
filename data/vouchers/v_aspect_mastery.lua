function Balatrostuck.INIT.Vouchers.v_aspect_mastery()
    SMODS.Voucher {
        key = 'aspect_mastery',
        config = {extra = 1},
        loc_txt = {
            name = 'Aspect Mastery',
            text = {
                '{C:attention}Aspect Packs{} always',
                'contain the {C:aspect}Aspect{} card',
                'for your current {C:aspect}Aspect'
            },
        },
        pos = {x=1,y=0},
        atlas = 'HomestuckVouchers',
        redeem = function(self,card)
          
        end
    }
end