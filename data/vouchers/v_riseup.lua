function Balatrostuck.INIT.Vouchers.v_riseup()
    SMODS.Voucher {
        key = 'riseup',
        config = {extra = 1},
        loc_txt = {
            name = 'Rise Up',
            text = {'Zodiac Packs and Aspect packs',
                    'become more common'
            }
        },
        pos = {x=0,y=0},
        atlas = 'HomestuckVouchers',
        redeem = function(self,card)
          
        end
    }
end