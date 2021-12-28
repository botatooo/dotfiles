local path_to_icons = "/usr/share/icons/"
local default_theme = "Arc"
local sep = "/"
local default_type = "symbolic"
local footer = "-symbolic.svg"
return function(category, icon_name, type, theme)
    type = type or default_type
    theme = theme or default_theme
    return path_to_icons .. theme .. sep .. category .. sep .. type .. sep .. icon_name .. footer
end