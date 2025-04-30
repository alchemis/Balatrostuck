function Balatrostuck.INIT.Decks.b_dersite()
    SMODS.Back {
        key = 'dersite',
        loc_txt = {
            name = "Dersite Deck",
            text = {
                "Planet Packs and Planet Cards",
                "no longer appear in the shop",
                "Increased Zodiac odds"
            }
        },
        atlas = 'HomestuckDecks',
        pos = {x = 0,y = 1},
        unlocked = true,
        apply = function(self,back)
            G.GAME.banned_keys['v_planet_merchant'] = true
            G.GAME.banned_keys['v_planet_tycoon'] = true
            G.GAME.zodiac_rate = 8
            G.GAME.planet_rate = 0
        end
    }
end
