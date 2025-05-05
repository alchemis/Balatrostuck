--- Everything below here is my way of making sure that we have a UI that doesn't suck ass to read
--- Sincerely, Akai "Balatrostuck Gaming" ff0064
--     G.UIT 
--     T=1, --text
--     B=2, --box (can be rounded)
--     C=3, --column
--     R=4, --row
--     O=5, --object - must be a Node
--     ROOT=7,
--     S=8, --slider
--     I=9, --input text box
--     padding = 0, --default padding

function BS_UIRoot(nodes)
    return {
        n = G.UIT.ROOT,
        config = {
            align = "cm",
            padding = 0.05,
            colour = G.C.CLEAR,
        },
        nodes = nodes
    }
end

function BS_UIBox(w, h)
    return {
        n = G.UIT.B,
        config = {
            w = w,
            h = h,
            align = 'tl'
        },
        nodes = {}
    }
end

function BS_UIText(text, scale, colour, shadow)
    return {
        n = G.UIT.T,
        config = {
            text = text,
            scale = scale,
            shadow = shadow,
            align = "cm",
            padding = G.UIT.padding,
            colour = colour,
        },
        text = text
    }
end

function BS_UIRow(nodes, config)
    return {
        n = G.UIT.R,
        config = (config and config or {
            padding = G.UIT.padding,
            align = 'cm',
            colour = G.C.CLEAR
        }),
        nodes = nodes
    }
end

function BS_UIColumn(nodes, config)
    return {
        n = G.UIT.C,
        config = (config and config or {
            padding = G.UIT.padding,
            align = 'cm',
            colour = G.C.CLEAR
        }),
        nodes = nodes
    }
end

function BS_UIColumnHead(padding, colour, outline_colour, outline_thickness, minh, minw, nodes)
    return {
        n = G.UIT.C,
        config= {
            align = "tm",
            padding = padding,
            outline_colour = outline_colour,
            r = 0.1,
            colour = colour,
            outline = outline_thickness,
            minh = minh,
            minw = minw,
        },
        nodes = nodes
    }
end

function BS_UIRowHead(padding, colour, outline_colour, outline_thickness, minh, minw, nodes)
    return {
        n = G.UIT.R,
        config= {
            align = "cm",
            padding = padding,
            outline_colour = outline_colour,
            r = 0.1,
            colour = colour,
            outline = outline_thickness,
            minh = minh,
            minw = minw,
        },
        nodes = nodes
    }
end

function BS_UIImage(image)
    return {
        n = G.UIT.O,
        config = { object = image }
    }
end
    
