local addonName, addon = ...

addon.concat = function(...)
    local script = ""

    local args = {...}
    for i, line in ipairs(args) do
        script = script .. tostring(line) .. "\n"
    end
    return script
end

addon.createMacroButtonFrame = function(frameName, macroText)
    local frame = CreateFrame("Button", frameName, nil, "SecureActionButtonTemplate")
    frame:SetAttribute("type", "macro")
    frame:RegisterForClicks("AnyUp")
    frame:SetAttribute("macrotext", macroText)
    frame:SetPoint("TOP", "UIParent", "BOTTOM", 0, 0)
end

local btn = CreateFrame( "Button", "testbtn", UIParent, "SecureActionButtonTemplate" )
btn:SetAttribute( "type", "macro" )
btn:SetPoint( "CENTER" )
btn:Hide( )
btn:SetMouseClickEnabled( true )
btn:RegisterForClicks( "AnyDown", "AnyUp" )
btn:SetAttribute( "macrotext", "/s test 123" )
print("testbtn")

addon.updateMacroButtonFrame = function(frameName, macroText)
    local frame = _G[frameName]
    frame:SetAttribute("macrotext", macroText)
end

addon.getTags = function(...)
    local args = ...
    local tags = {}

    if args ~= nil and type(args) ~= "table" then
        print(addon.text["InvalidTagArguments"])
        return
    end

    if args == nil then
        tags["DEFAULT"] = true
    else
        for key, value in ipairs(args) do
            tags[string.upper(value)] = true
        end
    end

    return tags
end

addon.getTagString = function(...)
    local args = ...
    local tagString = ""

    if args == nil then
        tagString = "DEFAULT"
    else
        for key, value in ipairs(args) do
            tagString = tagString .. string.upper(value)
        end
    end

    return tagString
end

addon.parseTags = function(tags, macroText)
    if tags ~= nil and type(tags) ~= "table" then
        print(addon.text["InvalidTagArguments"])
        return
    end

    if macroText == "" or macroText == nil then
        return ""
    end

    local parsedMacro = ""    
    local lines = {strsplit("\n", macroText)}

    for index, line in pairs(lines) do
        local tagStart, tagEnd = string.find(line, "^#[^\ ]+")        

        line = string.gsub(line, "FRIENDLYHEALER", addon.friendlyHealer)
        line = string.gsub(line, "FRIENDLYTANK", addon.friendlyTank)

        if tagStart and tagEnd then
            local tag = string.gsub(string.sub(line, tagStart, tagEnd), "#", "")
            if tags[tag] then
                local tagRemoved = string.gsub(line, "#" .. tag .. " ", "")
                parsedMacro = parsedMacro .. tagRemoved .. "\n"
            end
        else
            parsedMacro = parsedMacro .. line .. "\n"
        end
    end

    return strtrim(parsedMacro)
end

addon.getVars = function(...)
    local args = ...
    local vars = {}

    if args ~= nil and type(args) ~= "table" then
        print(addon.text["InvalidVarArguments"])
        return
    end

    if args ~= nil then
        for key, value in ipairs(args) do
            vars[string.upper(value)] = true
        end
    end

    return tags
end

addon.parseVars = function(...)
end

addon.getTemplateScripts = function(template)
    local preScript = template ~= nil and template ~= "" and
                      rokksMacros.Templates[template] ~= nil and
                      rokksMacros.Templates[template].preScript ~= nil and
                      rokksMacros.Templates[template].preScript or
                      ""

    local postScript = template ~= nil and template ~= "" and
                       rokksMacros.Templates[template] ~= nil and
                       rokksMacros.Templates[template].postScript ~= nil and
                       rokksMacros.Templates[template].postScript or
                       ""
    return preScript, postScript
end

addon.buildMacros = function(...)
    rokksMacros = rokksMacros ~= nil and rokksMacros or {}
    rokksMacros.Templates = rokksMacros.Templates ~= nil and rokksMacros.Templates or {}
    rokksMacros.Macros = rokksMacros.Macros ~= nil and rokksMacros.Macros or {}

    if InCombatLockdown() then
        print(addon.text["UnableToModifyInCombat"])
        return false
    end

    addon.friendlyHealer = addon.getFriendlyHealer()
    addon.friendlyTank = addon.getFriendlyTank()

    local tags = addon.getTags(...)
    local tagString = addon.getTagString(...)

    if addon.checkPreviousBuild and tagString == addon.currentBuild then
        addon.checkPreviousBuild = false
        return false
    end

    addon.currentBuild = tagString

    for macroName, macro in pairs(rokksMacros.Macros) do
        local preScript, postScript = addon.getTemplateScripts(macro.Template)
        local globalPreScript, globalPostScript = addon.getTemplateScripts("Global")
        
        local script = addon.concat(globalPreScript, preScript, macro.script, postScript, globalPostScript)

        script = addon.parseTags(tags, script)

        local frameName = "RokksMacros_" .. macroName
        if _G[frameName] == nil then
            addon.createMacroButtonFrame(frameName, script)
        else
            addon.updateMacroButtonFrame(frameName, script)
        end
    end

    addon.announceUpdate(tags)
end

addon.getFriendlyHealer = function()
    local healer = ""
    local index = nil

    for index = 1, GetNumSubgroupMembers() do
        local role = UnitGroupRolesAssigned("party"..index)
        if (role == "HEALER") then -- TANK / DAMAGER
            healer = "party" .. tostring(index)
        end
    end

    return healer
end

addon.getFriendlyTank = function()
    local tank = "pet"
    local index = nil

    for index = 1, GetNumSubgroupMembers() do
        local role = UnitGroupRolesAssigned("party"..index)
        if (role == "TANK") then -- HEALER / DAMAGER
            tank = "party" .. tostring(index)
        end
    end
    
    return tank
end

addon.announceUpdate = function(tags)
    local tagString = ""
    
    for tag, value in pairs(tags) do
        tagString = tagString .. "#" .. tag .. " "
    end

    tagString = strtrim(tagString)
    
   --print(addon.text["MacrosUpdated"] .. ": " .. tagString)
end