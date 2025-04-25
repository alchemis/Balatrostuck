return {
    misc = {
        v_text = {
            Aries = {'each {C:attention}Ace discarded{} this round or currently in your {C:attention}deck'},
            Gemini = {'{C:attention}Retrigger{} played {C:attention}2s {C:attention}#1#{} additional time#2#'},
            Taurus = {'Discarded {C:attention}3s{} multiply the current {C:attention}Blind requirement{} by {C:white,X:mult}X#1#{}'},
            Cancer = {'{C:attention}Held 4s{} give {C:mult}+#1#{} Mult'},
            Virgo = {'Played {C:attentions}6s{} give {C:chips}+#1# {C:attention}permanent{} Chips to all {C:attention}other{} scoring cards when scored'},
            Leo = {'{C:attention}Held 5s{} have a {C:green}#1# in 4{} chance to give {C:money}$#2#{} when any'},
            Libra = {'Played {C:attention}7s{} give {X:mult,C:white}X#1#{} Mult'},
            Scorpio = {
                'Played {C:attention}8s{} double all {C:green,E:1,S:1.1}probabilities{}',
                'when scored, up to ',
                '{C:attention}#1#{} time#2# per hand, and',
                'resets when next hand is played'
            },
            Sagittarius = {
                'Played cards give',
                '{C:chips}+#1#{} Chips if played hand', --next level value
                'contains a {C:attention}non-scoring 9'
            },
            Capricorn = {
                "Played {C:attention}10s{} give {X:mult,C:white}X#1#{} Mult", --X2 should be the next level's value
                "when scored, held {C:attention}10s",
                "give {X:mult,C:white}X#2#{} Mult"
            },
            Aquarius = {
                '{C:attention}Jacks{} create {C:attention}#1#{} random',
                '{C:attention}Tag#2#{} when {C:attention}destroyed' --next level value + dynamic plural
            },
            Pisces = {
                'Played{C:attention} Queens{} give {C:money}$#1# {C:red,E:2}minus{} the', --next level value
                'amount of {C:attention}remaining hands{} when scored'
            },
            Ophiuchus = {
                "When played {C:attention}Kings{} are scored, a",
                "random card held in hand becomes",
                "{C:green}Paradox{} and gives {X:mult,C:white}X#1#{} Mult", --next level value
            }

        },
        zodiac_names = {
            Taurus = 'Taurus',
            Gemini = 'Gemini',
            Cancer = 'Cancer',
            Leo = 'Leo',
            Virgo = 'Virgo',
            Libra = 'Libra',
            Scorpio = 'Scorpio',
            Sagittarius = 'Sagittarius',
            Capricorn = 'Capricorn',
            Aquarius = 'Aquarius',
            Pisces = 'Pisces',
            Ophiuchus = 'Ophiuchus',
            Aries = 'Aries'
        },
    },
    
}