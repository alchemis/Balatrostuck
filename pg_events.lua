-- Events for the batch of Jokers lovingly known as the Peanut Gallery
-- Naming convention is PG.<character_name>_<context>_events

PG = {}
PG.John = {}
PG.Vriska = {}
PG.Caliborn = {}

function PG.John:pick_random(set)
    return pseudorandom_element(self[set], pseudoseed('windything'))
end

PG.John.shop_events = {
    free_voucher = {
        quip = {
            {ref='john_free_voucher'}
        },
        func = function(_self,card,context)
          
        end
    },
    discount_card = {
        quip = {
            {ref='john_discount_card'}
        },
        func = function (_self,card,context)
            
        end
    },
    add_pack = {
        quip = {
            {ref='john_add_pack'}
        },
        func = function (_self,card,context)
            
        end
    },
    free_reroll = {
        quip = {
            {ref='john_free_reroll'}
        },
        func = function (_self,card,context)
            
        end
    },
    add_rare = {
        quip = {
            {ref='john_add_rare'}
        },
        func = function (_self,card,context)
            
        end
    },
    add_uncommon = {
        quip = {
            {ref='john_add_uncommon'}
        },
        func = function (_self,card,context)
            
        end
    },
}

PG.John.start_of_round_events = {
    paradox_common = {
        quip = {
            {ref='john_paradox_common'}
        },
        func = function (_self,card,context)
            
        end
    },
    paradox_playingcard = {
        quip = {
            {ref='john_paradox_playingcard'}
        },
        func = function (_self,card,context)
        end
    },
    draw = {
        size = 2,
        quip = {
            {ref='john_draw'}
        },
        func = function (self,_self,card,context)
            
        end
    }
}

PG.John.before_scoring_events = {
    add_playing_edition = {
        quip = {
            {ref='john_add_playing_edition'}
        },
        func = function (_self, card, context)

        end
    },
    level_poker_hand = {
        quip = {
            {ref='john_level_poker_hand'}
        },
        func = function (_self, card, context)
            
        end
    },
    add_paradox_steel_hand = {
        quip = {
            {ref='john_add_paradox_steel_hand'}
        },
        func = function (_self, card, context)

        end
    },
    cheat_hand_type = {
        quip = {
            {ref='john_cheat_hand_type'}
        },
        func = function (_self, card, context)
            
        end
    }
}

PG.Caliborn.start_of_round_events = {
    reset_deck = {
        quip = {
            {ref='caliborn_reset_deck1', time=0.4, pause=0.2}
        },
        func = function (_self, card, context)
            
        end
    }
}
