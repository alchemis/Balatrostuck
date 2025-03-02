OR, XOR, AND = 1, 3, 4

function bitoper(a, b, oper)
    local r, m, s = 0, 2^31
    repeat
       s,a,b = a+b+m, a%m, b%m
       r,m = r + m*oper%(s-a-b), m/2
    until m < 1
    return r
 end

 function factorial(n)
    if (n == 0) then
        return 1
    else
        return n * factorial(n - 1)
    end
end

function get_table_keys(tab)
    local keyset = {}
    for k,v in pairs(tab) do
        keyset[#keyset + 1] = k
    end
    return keyset
end

function get_table_values(tab)
    local valueset = {}
    for k,v in pairs(tab) do
        valueset[#valueset + 1] = v
    end
    return valueset
end

function summation(n)
    local sum = 0
    for i = 1, n do
        sum = sum + i
    end
    return sum
end

function sum_levels()
    return ((G.GAME.hands['High Card'].level)+(G.GAME.hands['Pair'].level)+(G.GAME.hands['Two Pair'].level)+(G.GAME.hands['Three of a Kind'].level)+(G.GAME.hands['Straight'].level)+(G.GAME.hands['Flush'].level)+(G.GAME.hands['Full House'].level )+(G.GAME.hands['Four of a Kind'].level)+(G.GAME.hands['Straight Flush'].level)+(G.GAME.hands['Five of a Kind'].level)+(G.GAME.hands['Flush House'].level)+(G.GAME.hands['Flush Five'].level))
end


-- function get_innocuous(card,get_only_name)
--     local hearts = {
--         {'applejuice', true}, {'lusty_joker', false}, {'flower_pot', false}, {'complacencyofthelearned', true},
--         {'oops', false}, {'cruxitedowel', true}, {'8_ball', false}, {'whatpumpkin', true},
--         {'diet_cola', false}, {'hegemonicbrute', true}, {'balletslippers', true}, {'photograph',false},
--         {'bloodstone',false}
--     }
--     local spades = {
--         {'cueball',true},{'wrathful_joker', false}, {'soporpie', true},{'gamebro', true},
--         {'ice_cream', false},{'banner', false}, {'snowman', true},{'selzer', false},
--         {'walkie_talkie', false},{'sovereignslayer', true}, {'operation_regisurp',true},{'ahabscrosshairs', true},
--         {'arrowhead', false}
--     }
--     local clubs = {
--         {'seeing_double', false},{'gluttenous_joker', false},{'clover', true},{'bootstraps',false},
--         {'caledfwlch', true},{'gros_michel', false},{'idol', false},{'jetpack', true},
--         {'ramen', false},{'courtyarddroll',true},{'shoot_the_moon', false},{'drivers_license', false},
--         {'onyx_agate', false}
--     }
--     local diamonds = {
--         {'credit_card', false},{'greedy_joker', false}, {'walkie_talkie', false},{'ticket', false},
--         {'trading', false},{'gristtorrent',true}, {'alltheirons', true},{'gift',false},
--         {'todo_list',false},{'draconiandignitary', true}, {'midas_mask', false},{'business',false},
--         {'rough_gem', false}
--     }
--     local wild = {
--         {'objectduality', true},{'j_joker', false}, {'innapropriatebucket', true},{'turtle_bean', false},
--         {'sucker', true},{'cavendish', false}, {'fluoriteoctet', true},{'baseball', false},
--         {'faygo', true},{'waywardvagabond', true}, {'tanglebuddies', true},{'dadswallet', true},
--         {'signofthesignless', true}
--     }
--     local stone = {'jocker', true}
--     local failsafe = {'captchacard', true}
--     local innocuous_double = {}
--     -- Stone Cards
--     if card.config.center == G.P_CENTERS.m_stone then
--         innocuous_double = stone
--     elseif card.



--     -- Error/Other

--     if get_only_name then
--         return G.localization.descriptions['Joker'][innocuous_double[1]]
--     else
--         local keyprefix = 'j_'
--         if innocuous_double[2] then
--             keyprefix = keyprefix .. 'balatrostuck'
--         end
--         return completekey .. innocuous_double[1]
--     end
-- end