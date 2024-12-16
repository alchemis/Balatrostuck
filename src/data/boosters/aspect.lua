SMODS.Booster{
    key = 'aspect_booster',
    atlas = 'HomestuckAspectBooster',
    discovered = true,
    loc_txt = {
        ['name'] = 'Aspect Pack',
        ['text'] = {
            'Choose {C:attention}#1#{} of up to',
            '{C:attention}#2#{} Aspects to',
            'be used immediately'
        }
    },
    pos = { x = 0, y = 0 },
    
    create_card = function(self, card)
        return {set = "Aspect", area = G.pack_cards, skip_materialize = true, soulable = false, key_append = "buf"}
    end
}