SMODS.Booster{
    key = 'aspect_booster',
    atlas = 'HomestuckAspectBooster',
    config = {extra = 2, choose = 1},
    discovered = true,
    loc_txt = {
        ['name'] = 'Aspect Pack',
        ['text'] = {
            'Choose {C:attention}#1#{} of up to',
            '{C:attention}#2#{} Aspects to',
            'be used immediately'
        },
        group_name = 'Aspect Pack'
    },
    kind = 'aspect',
    weight = 0.3,
    pos = { x = 0, y = 0 },
    create_card = function(self, card,i)
        if i == 1 or G.GAME.gamer_choices == nil then
            G.GAME.gamer_choices = {}
        end
        
        local qualityControl = false
        for v=1, #G.vouchers.cards do
            local lekey = G.vouchers.cards[v].config.center.key
            if lekey == 'v_bstuck_giftofgab' then
                qualityControl = true
            end
        end

        local key = get_aspect_for_pack(qualityControl,true)
        local card = SMODS.create_card({set = "Aspect", area = G.pack_cards, key = key, skip_materialize = true, soulable = true, key_append = "gam"})
        return card
        
        
        
    end
}