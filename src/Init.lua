local addonName, addon = ...
rokksMacros = rokksMacros ~= nil and rokksMacros or {}

if (not rokksMacros.initialized) then
    rokksMacros.createEventFrame()
    rokksMacros.initialized = true
end

addon.healthCheck = true