local addonName, addon = ...
rokksMacros = rokksMacros ~= nil and rokksMacros or {}
rokksMacros.Templates = {}

rokksMacros.Templates["LockAttack"] = {
    ["preScript"] = addon.concat(
        "/cleartarget [@target,dead][@target,noharm][@target,help]",
        "#DEFAULT /targetenemy [@target,noexists]",
        "/stopmacro [@target,noexists]"
    ),
    ["postScript"] = addon.concat(
        "/petattack"
    )
}

rokksMacros.Templates["LockTargetEnemyAlt"] = {
    ["preScript"] = addon.concat(
        "/cleartarget [@target,dead][@target,noharm][@target,help]",
        "#DEFAULT /targetenemy [@target,noexists]",
        "/stopmacro [@target,noexists]",
        "#DEFAULT /targetenemy [mod:alt]",
        "#PVP /targetenemyplayer [mod:alt]"
    ),
    ["postScript"] = addon.concat(
        "/targetlasttarget [mod:alt]"
    )
}





rokksMacros.Templates["Global"] = {
    ["preScript"] = addon.concat(),
    ["postScript"] = addon.concat(
        "#ARENA1 /focus [@arena1,exists]",
        "#ARENA2 /focus [@arena2,exists]",
        "#ARENA3 /focus [@arena3,exists]",
        --"/focus [@FRIENDLYTANK,help,exists,group,nopvpcombat]",
        "/run C_Timer.After(0, function() UIErrorsFrame:Clear() end)"
    )
}

rokksMacros.Templates["HunterAttack"] = {
    ["preScript"] = addon.concat(
        "/cancelaura Aspect of the Turtle",
        "/cast Wake Up",
        "/cleartarget [@target,dead][@target,noharm][@target,help]",
        "#DEFAULT /targetenemy [@target,noexists]",
        "/stopmacro [@target,noexists,pet][channeling:Rapid Fire]",
        "#DEFAULT /petautocaston [nogroup] Growl",
        "#DEFAULT /petautocastoff [group] Growl",
        "#PVP /petautocastoff Growl"
    ),
    ["postScript"] = addon.concat(
        "/petassist",
        "/petattack [@mouseover,harm,exists,nostealth][nostealth]",
        "/cast [@pettarget,harm,exists,nostealth] Claw",
        "/cast [@pettarget,harm,exists,nostealth] Bite",
        "/cast [@pettarget,harm,exists,nostealth] Smack"
    )
}

rokksMacros.Templates["HunterTargetEnemyAlt"] = {
    ["preScript"] = addon.concat(
        "/cleartarget [@target,dead][@target,noharm][@target,help]",
        "#DEFAULT /targetenemy [@target,noexists]",
        "/stopmacro [@target,noexists,pet][channeling:Rapid Fire][channeling:Fury of the Eagle]",
        "#DEFAULT /targetenemy [mod:alt]",
        "#PVP /targetenemyplayer [mod:alt]"
    ),
    ["postScript"] = addon.concat(
        "/targetlasttarget [mod:alt]"
    )
}

rokksMacros.Templates["HunterTargetEnemyShift"] = {
    ["preScript"] = addon.concat(
        "/cleartarget [@target,dead][@target,noharm][@target,help]",
        "#DEFAULT /targetenemy [@target,noexists]",
        "/stopmacro [@target,noexists,pet][channeling:Rapid Fire][channeling:Fury of the Eagle]",
        "#DEFAULT /targetenemy [mod:shift]",
        "#PVP /targetenemyplayer [mod:shift]"
    ),
    ["postScript"] = addon.concat(
        "/targetlasttarget [mod:shift]"
    )
}

rokksMacros.Templates["HunterTrapEnemy"] = {
    ["postScript"] = addon.concat(
        "/stopattack [stealth]",
        "/petfollow [stealth]"
    )
}

rokksMacros.Templates["MageAttack"] = {
    ["preScript"] = addon.concat(
        "/cancelaura Ice Block",
        "/cleartarget [@target,dead][@target,noharm][@target,help]",
        "#DEFAULT /targetenemy [@target,noexists]",
        "/stopmacro [@target,noexists,pet][channeling]",
        "#DEFAULT /targetenemy [mod:alt]",
        "#PVP /targetenemyplayer [mod:alt]"
    ),
    ["postScript"] = addon.concat(
        "/targetlasttarget [mod:alt]"
    )
}

rokksMacros.Templates["MageTargetEnemyShift"] = {
    ["preScript"] = addon.concat(
        "/cleartarget [@target,dead][@target,noharm][@target,help]",
        "#DEFAULT /targetenemy [@target,noexists]",
        "/stopmacro [@target,noexists,pet]",
        "#DEFAULT /targetenemy [mod:shift]",
        "#PVP /targetenemyplayer [mod:shift]"
    ),
    ["postScript"] = addon.concat(
        "/targetlasttarget [mod:shift]"
    )
}
