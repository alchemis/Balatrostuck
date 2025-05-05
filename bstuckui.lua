SMODS.current_mod.extra_tabs = function() --Credits tab
    local scale = 0.42
    local conf_names = {
        padding = 0.09,
        align = 'cm',
        colour = G.C.CLEAR
    }
    local conf_section = {
        padding = 0.1,
        align = 'cm'
    }

    local balastuck = Sprite(0,0,1*469/98,1,G.ASSET_ATLAS["bstuck_logo"], {x=0, y=0})
    balastuck.states.drag.can = false




    local function CreditsHeader(colour, text, baseScale, minw)
        return BS_UIRowHead(conf_section.padding*0.5, colour, darken(colour, 0.2), 1, 0, minw, {
            BS_UIBox(0, 0.25),
            BS_UIText(text, baseScale*1.09, G.C.WHITE, true),
        })
    end

    local function CreditsNameStack(names, shrink)
        local ret = {}
        local scaleFactor = shrink and shrink or 1
        for _,v in pairs(names) do
            ret[#ret+1] = BS_UIRow({BS_UIText(v, scale*scaleFactor, G.C.WHITE, true)}, conf_names)
        end
        return BS_UIColumn(ret)
    end

    local function CreditsDept(title, base_colour, nameStack, shrink, minw)
        local ret = {}
        local scaleFactor = shrink and shrink or 1
        local minWidth = minw and minw or 5
        for _,names in pairs(nameStack) do
            ret[#ret+1] = CreditsNameStack(names, shrink)
        end
        return BS_UIRowHead(conf_section.padding*2*scaleFactor, darken(G.C.BLACK, 0.1), G.C.BLACK, 1, 0, minWidth, {
            CreditsHeader(base_colour, title, scale, minWidth),
            BS_UIRowHead(conf_section.padding*scaleFactor, G.C.CLEAR, lighten(G.C.BLACK, 0.125), 1.5,  0, minWidth , ret)
        })
    end

    local dept_direction = BS_UIRowHead(conf_section.padding*2, darken(G.C.BLACK, 0.1), G.C.BLACK, 1, 0, 5, {
        CreditsHeader(G.C.ZODIAC.Pisces, "Direction", scale, 5),
        BS_UIRowHead(conf_section.padding, G.C.CLEAR, lighten(G.C.BLACK, 0.125), 1.5,  0, 5, {
            BS_UIRow(
                {BS_UIColumn({
                    BS_UIRow({BS_UIText("Akai", scale, G.C.WHITE, true)}, conf_names)
                }),
                BS_UIColumn({BS_UIBox(0.25, 0)}),
                BS_UIColumn({
                    BS_UIRow({BS_UIText("Fazzie", scale, G.C.WHITE, true)}, conf_names)
                })}
            ),
            BS_UIRow({BS_UIText("CampfireCollective", scale, G.C.WHITE, true)}, conf_names)
        })
    })

    local dept_video = BS_UIRowHead(conf_section.padding*2, darken(G.C.BLACK, 0.1), G.C.BLACK, 1, 0, 5, {
        CreditsHeader(G.C.ZODIAC.Capricorn, "Video Editing", scale, 5),
        BS_UIRowHead(conf_section.padding, G.C.CLEAR, lighten(G.C.BLACK, 0.125), 1.5,  0, 5, {
            BS_UIRow(
                {BS_UIColumn({
                    BS_UIRow({BS_UIText("shmig", scale, G.C.WHITE, true)}, conf_names)
                }),
                BS_UIColumn({BS_UIBox(0.25, 0)}),
                BS_UIColumn({
                    BS_UIRow({BS_UIText("sinewavey", scale, G.C.WHITE, true)}, conf_names)
                })}
            ),
            BS_UIRow({BS_UIText("Knightmare", scale, G.C.WHITE, true)}, conf_names)
        })
    })


    local dept_music = CreditsDept(
        "Music", G.C.ZODIAC.Aquarius, {{'Delirium'}}
    )

    local dept_balancing = CreditsDept(
        "Balancing", G.C.ZODIAC.Sagittarius, {{'Fazzie', 'CampfireCollective'}}
    )
    
    local dept_art = CreditsDept(
        "Art", G.C.ZODIAC.Scorpio, {
            {'Akai', 'garb',}, {'Baqly', 'Lyman'},
            {'bconlon', 'Yokcos'}, {'Delirium', 'Miser'}
        }, 0.95
    )

    local dept_code = CreditsDept(
        "Programming", G.C.ZODIAC.Libra, {
            {'Delirium', 'Akai', 'CampfireCollective', 'cozyGalvinism'},
            {'Yokcos', 'garb', 'bconlon'}
        }, 0.8
    )

    local dept_acknowledge = CreditsDept("Acknowledgements", G.C.ZODIAC.Cancer, {
        {'Homestuck',        'Vast Error',             'CaNWC', 'Ligmastuck', 'KGTaC'},
        {'Andrew Hussie', '   DECONRECONSTRUCTION',    'o',     'Ymi',        'Cole'}
    }, 0.8)

    local dept_playtesters = CreditsDept("Playtesting", G.C.ZODIAC.Ophiuchus, {
        {'JadedDraconevix', 'conchors', 'Chloe (Teki)'},
        {'SagaciousCejai', 'Miser', 'Victin', }
    }, 0.8)

    local logo = BS_UIRow({BS_UIImage(balastuck)}, conf_section)

    return {
        label = "Credits",
        tab_definition_function = function()
        return BS_UIRoot({
            BS_UIColumn({logo, dept_direction, dept_music, dept_video}, conf_section),
            BS_UIColumn({dept_balancing, dept_art, dept_code}, conf_section),
            BS_UIColumn({dept_acknowledge, dept_playtesters}, conf_section),
        })
        end
    }
end
