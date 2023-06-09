local fx = require("fx/lib/fx")
local mod = require 'core/mods'

local FxTanh = fx:new{
    subpath = "/fx_tanh"
}

function FxTanh:add_params()
    params:add_separator("fx_tanh", "fx tanh")
    FxTanh:add_slot("fx_tanh_slot", "slot")
    FxTanh:add_taper("fx_tanh_gain", "gain", "gain", 0, 10, 1.5, 1.3, "")

end

mod.hook.register("script_pre_init", "tanh mod pre init", function()
    FxTanh:install()
end)

mod.hook.register("script_post_cleanup", "tanh mod post cleanup", function()
end)

return FxTanh