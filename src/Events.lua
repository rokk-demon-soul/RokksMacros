local addonName, addon = ...
rokksMacros = rokksMacros ~= nil and rokksMacros or {}
rokksMacros.Events = {}

rokksMacros.buildPvPMacros = function(event)
    if addon.currentBuild == "DEFAULT" then
        addon.checkPreviousBuild = event == "SPELL_UPDATE_USABLE" and true or false
        addon.buildMacros({"PVP"})
    end
end

rokksMacros.buildPvEMacros = function(event)
    addon.checkPreviousBuild = event == "SPELL_UPDATE_USABLE" and true or false
    addon.buildMacros({"DEFAULT"})
end

rokksMacros.createEventFrame = function()
    rokksMacros.eventFrame = CreateFrame("Frame", nil, UIParent)
    rokksMacros.eventFrame:RegisterEvent("SPELL_UPDATE_USABLE")
    rokksMacros.eventFrame:RegisterEvent("PVP_MATCH_ACTIVE")
    rokksMacros.eventFrame:RegisterEvent("PVP_MATCH_INACTIVE")
    rokksMacros.eventFrame:RegisterEvent("PLAYER_PVP_TALENT_UPDATE")
    rokksMacros.eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
    rokksMacros.eventFrame:RegisterEvent("PLAYER_ROLES_ASSIGNED")
    
    rokksMacros.eventFrame:SetScript("OnEvent", function(self, event, ...)
        if InCombatLockdown() then return end

        if IsActiveBattlefieldArena() then
            rokksMacros.buildPvPMacros(event)
        else
            rokksMacros.buildPvEMacros(event)
        end
    end)
end


