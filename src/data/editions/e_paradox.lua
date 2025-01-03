function Balatrostuck.INIT.Editions.e_paradox()
    SMODS.Shader{
        key = 'paradox',
        path = 'paradox.fs'
    }
    SMODS.Edition{
        key = "paradox",
        shader = 'paradox', -- change that to paradox shader later
        loc_txt = {
            name = 'Paradox',
            label = 'Paradox',
            text = { '{C:red}Destroyed{} at the end of blind', 'occupies {C:dark_edition}no space{}' },
        },
        unlocked = true,
        discovered = true
    }

end