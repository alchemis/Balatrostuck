function Balatrostuck.INIT.Jokers.j_enterthemedium()
    SMODS.Joker{
        name = "Enter The Medium",
        key = "enterthemedium",
        config = {
            extra = {
            }
        },
        loc_txt = {
            ['name'] = 'Enter The Medium',
            ['text'] = {
                [1] = "On ante end: This transforms",
                [2] = "into a random balatrostuck joker"
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