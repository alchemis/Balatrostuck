function Balatrostuck.INIT.Jokers.j_cloudwatching()
    SMODS.Joker{
        name = "Cloudwatching",
        key = "cloudwatching",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Cloudwatching',
            ['text'] = {
                [1] = "Start of blind: Create a paradox copy",
                [2] = "of the card 15th from the top of your deck"
            }
        },
        pos = {
            x = 2,
            y = 0
         },
        cost = 3,
        rarity = 1,
        blueprint_compat = true,
        eternal_compat = true,
        unlocked = true,
        discovered = true,
        atlas = 'HomestuckJokers'
    }
end 