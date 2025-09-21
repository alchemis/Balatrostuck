function Balatrostuck.INIT.Jokers.j_backseater()
    SMODS.Joker{
        name = "8acks8er",
        key = "backseater",
        config = {
            extra = {
                tier = 8,
                odds2 = 8,
                money2 = 16,
                slots3 = 2,
                skipneed4 = 2,
                skipdone4 = 0,
                destroyneed5 = 8,
                destroydone5 = 0,
                cardsneed6 = 8,
                cardsdone6 = 0,
                triggersneed7 = 20,
                triggersdone7 = 0,
                score8 = 16777216
            }
        },
        -- loc_txt = {
        --     ['name'] = '8acks8er',
        --     ['text'] = {
        --         [1] = "blegh",
        --         [2] = "blegh"
        --     }
        -- },
        pos = {
            x = 1,
            y = 10
         },
         loc_vars = function (self, info_queue, card) 
            info_queue[#info_queue+1] = {key='warn_bstuck_wip', set='Other'}
            art_credit('akai', info_queue)

            local key = self.key..'_'..card.ability.extra.tier
            local table = {
                card.ability.extra.tier
            }
            if card.ability.extra.tier == 2 then
                table[#table+1] = G.GAME.probabilities.normal
                table[#table+1] = card.ability.extra.odds2
            elseif card.ability.extra.tier == 3 then
                table[#table+1] = card.ability.extra.slots3
            elseif card.ability.extra.tier == 4 then
                table[#table+1] = card.ability.extra.skipneed4
            elseif card.ability.extra.tier == 5 then
                table[#table+1] = card.ability.extra.destroyneed5
                table[#table+1] = card.ability.extra.destroydone5
            elseif card.ability.extra.tier == 6 then
                table[#table+1] = card.ability.extra.cardsneed5
                table[#table+1] = card.ability.extra.cardsdone5
            elseif card.ability.extra.tier == 7 then
                table[#table+1] = card.ability.extra.triggersneed7
            elseif card.ability.extra.tier == 8 then
                table[#table+1] = card.ability.extra.score8
            end
            
            return {key = key, vars = table}
        end,
        cost = 8,
        rarity = 2,
        blueprint_compat = false,
        eternal_compat = true,
        unlocked = false,
        atlas = 'HomestuckJokers',
        in_pool = function(self)
            return Balatrostuck.peanut_gallery
        end,

        calculate = function(self, card, context)
            if not context.blueprint then
                if card.ability.extra.tier == 1 then --play a straight flush, create a spectral card 
                    if context.before then
                        if next(context.poker_hands['Straight Flush']) then
                            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                            G.E_MANAGER:add_event(Event({
                                trigger = 'before',
                                delay = 0.0,
                                func = (function()
                                        local _card = create_card('Spectral',G.consumeables, nil, nil, nil, nil, nil, 'vriska!!!!!!!!')
                                        _card:add_to_deck()
                                        G.consumeables:emplace(_card)
                                        G.GAME.consumeable_buffer = 0
                                    return true
                                end)}))
                            card.ability.extra.tier = 2
                            return {
                                message = localize('k_plus_spectral'),
                                colour = G.C.SECONDARY_SET.Spectral,
                                card = card
                            }
                        end
                    end


                elseif card.ability.extra.tier == 2 then --1 in 8 chance to beat the challenge each round, get $16
                    if context.end_of_round and not context.individual and not context.repetition then
                        if pseudorandom('ch8er') < G.GAME.probabilities.normal / card.ability.extra.odds2 then
                            ease_dollars(card.ability.extra.money2)
                            card.ability.extra.tier = 3
                        end
                    end


                elseif card.ability.extra.tier == 3 then --beat a blind with 2 empty joker slots, get a rare joker thats not 8r8k or octect
                    if context.end_of_round and not context.individual and not context.repetition then
                        if G.jokers.config.card_limit - #G.jokers.cards >= card.ability.extra.slots3 then
                            card.ability.extra.tier = 4
                            SMODS.add_card{set = 'Joker', rarity = 0.98, key_append = 'vriska!!!!!!!!'} --TODO exclude 8r8k and octect
                        end
                    end


                elseif card.ability.extra.tier == 4 then --skip small AND big blind then beat the boss, get 2 random tags and a coupon tag
                    if context.skip_blind then
                        card.ability.extra.skipdone4 = card.ability.extra.skipdone4 + 1
                    elseif context.end_of_round and not context.individual and not context.repetition and G.GAME.blind.boss then
                        if card.ability.extra.skipdone4 >= card.ability.extra.skipneed4 then
                            card.ability.extra.tier = 5
                            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                                add_tag(Tag('tag_coupon'))

                                local tagkey = get_next_tag_key()
                                local tag = Tag(tagkey)
                                if tagkey == 'tag_orbital' then
                                    local _poker_hands = {}
                                    for k, v in pairs(G.GAME.hands) do
                                        if v.visible then _poker_hands[#_poker_hands+1] = k end
                                    end
                                    tag.ability.orbital_hand = pseudorandom_element(_poker_hands, pseudoseed('orbital'))
                                end
                                add_tag(tag)
                                
                                local tagkey2 = get_next_tag_key()
                                local tag2 = Tag(tagkey2)
                                if tagkey2 == 'tag_orbital' then
                                    local _poker_hands = {}
                                    for k, v in pairs(G.GAME.hands) do
                                        if v.visible then _poker_hands[#_poker_hands+1] = k end
                                    end
                                    tag2.ability.orbital_hand = pseudorandom_element(_poker_hands, pseudoseed('orbital'))
                                end
                                add_tag(tag2)

                                play_sound('timpani')
                                card:juice_up(0.3, 0.5)
                                return true
                            end}))
                        else
                            card.ability.extra.skipdone4 = 0
                        end
                    end


                elseif card.ability.extra.tier == 5 then --destroy 8 cards before going to the next round, get nothing
                    if context.remove_playing_cards then
                        for k, v in ipairs(context.removed) do
                            card.ability.extra.destroydone5 = card.ability.extra.destroydone5 + 1
                        end
                    elseif context.end_of_round and not context.individual and not context.repetition then
                        if card.ability.extra.destroydone5 >= card.ability.extra.destroyneed5 then
                            card.ability.extra.tier = 6
                        else
                            card.ability.extra.destroydone5 = 0
                        end
                    end


                elseif card.ability.extra.tier == 6 then --generate 8 consumable cards in a single blind, get +1 consumable slot permanently
                    if context.end_of_round and not context.individual and not context.repetition then
                        print('this one aint coded yet')
                        card.ability.extra.tier = 7
                    end   
                
                elseif card.ability.extra.tier == 7 then --score 20 cards in a single hand, get +1 hand size permanently
                    if context.cardarea == G.play and context.individual then
                        card.ability.extra.triggersdone7 = card.ability.extra.triggersdone7 + 1
                        
                    elseif context.after then
                        if card.ability.extra.triggersdone7 >= card.ability.extra.triggersneed7 then
                            card.ability.extra.tier = 8
                            G.hand:change_size(1)
                        else
                            card.ability.extra.triggersdone7 = 0
                        end
                    end
                elseif card.ability.extra.tier == 8 then --get 16,777,216 points in a single hand, get 8r8k and octect
                    if context.ace_dick then
                        local yet = false
                        local scorec, scorem = hand_chips, mult
                        for k, v in ipairs(G.jokers.cards) do
                            if v == card then yet = true 
                            elseif yet and v.name == 'Ace Dick' then
                               scorec = scorec + 100
                               scorem = scorem + 10
                            end
                        end
                        if math.floor(scorec * scorem) >= card.ability.extra.score8 then
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    SMODS.add_card{key = 'j_bstuck_lucky_break'}
                                    SMODS.add_card{key = 'j_bstuck_fluoriteoctet'}
                                    play_sound('tarot1')
                                    card.T.r = -0.2
                                    card:juice_up(0.3, 0.4)
                                    card.states.drag.is = true
                                    card.children.center.pinch.x = true
                                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, blockable = false,
                                        func = function()
                                                G.jokers:remove_card(self)
                                                card:remove()
                                                card = nil
                                            return true; end})) 
                                    return true
                                end
                            }))
                        end
                    end
                end
            end
        end
    }
end 