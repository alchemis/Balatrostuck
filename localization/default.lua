return {
    misc = {
        v_text = {
            Libra = {'Played {C:attention}7s{} give {X:mult,C:white}X#2#{} Mult'},
            Scorpio = {
                'Played {C:attention}8s{} double all {C:green,E:1,S:1.1}probabilities{}',
                'when scored, up to ',
                '{C:attention}#2#{} time#4# per hand, and',
                'resets when next hand is played'
            },
            Sagittarius = {
                'Played cards give',
                '{C:chips}+#2#{} Chips if played hand', --next level value
                'contains a {C:attention}non-scoring 9'
            },
            Capricorn = {
                "Played {C:attention}10s{} give {X:mult,C:white}X#2#{} Mult", --X2 should be the next level's value
                "when scored, held {C:attention}10s",
                "give {X:mult,C:white}X#3#{} Mult"
            },
            Aquarius = {
                '{C:attention}Jacks{} create {C:attention}#2#{} random',
                '{C:attention}Tag#4#{} when {C:attention}destroyed' --next level value + dynamic plural
            },
            Pisces = {
                'Played{C:attention} Queens{} give {C:money}$#2# {C:red,E:2}minus{} the', --next level value
                'amount of {C:attention}remaining hands{} when scored'
            },
            Ophiuchus = {
                "When played {C:attention}Kings{} are scored, a",
                "random card held in hand becomes",
                "{C:green}Paradox{} and gives {X:mult,C:white}X#2#{} Mult", --next level value
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