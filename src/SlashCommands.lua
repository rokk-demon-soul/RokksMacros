local addonName, addon = ...
rokksMacros = rokksMacros ~= nil and rokksMacros or {}

SLASH_rokksMacros1 = "/rokksMacros"
SlashCmdList["rokksMacros"] = function(...)
    if InCombatLockdown() then
        print(addon.text["UnableToModifyInCombat"])
        return false
    end
   
    local slashParams = select(1, ...)
    local params = {strsplit(" ", slashParams)}
    local command = params[1]
    table.remove(params, 1)

    if command == "rebuild" then
        addon.buildMacros(params)
    end
end
