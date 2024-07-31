local addonName, addon = ...
rokksMacros = rokksMacros ~= nil and rokksMacros or {}
rokksMacros.Macros = {}

-- ####################
-- ##### !GLOBAL! #####
-- ####################

rokksMacros.Macros["Global_Mount"] = {
    ["script"] = addon.concat(
        "/dismount [mounted]",
        "/cast [noflyable] Netherlord's Chaotic Wrathsteed; Algarian Stormrider",
        "/use [nomounted] 15"
    )
}

rokksMacros.Macros["Global_Ping"] = {
    ["script"] = "/ping"
}

-- Focus Arena 1/2/3
-- /rokksmacros rebuild PVP ARENA1
-- /rokksmacros rebuild PVP ARENA2
-- /rokksmacros rebuild PVP ARENA3

rokksMacros.Macros["Global_Target_Arena1"] = {
    ["script"] = addon.concat(
        "#PVP /tar arena1"
    )
}

rokksMacros.Macros["Global_Target_Arena2"] = {
    ["script"] = addon.concat(
        "#PVP /tar arena2"
    )
}

rokksMacros.Macros["Global_Target_Arena3"] = {
    ["script"] = addon.concat(
        "#PVP /tar arena3"
    )
}

rokksMacros.Macros["Global_Repairs"] = {
    ["script"] = addon.concat(
        "/use Jeeves",
        "/use Auto-Hammer",
        "/s Repairs here"
    )
}

rokksMacros.Macros["Global_Eng_Revive"] = {
    ["script"] = addon.concat(
        "/use [@mouseover,exists,help][] Ultimate Gnomish Army Knife"
    )
}

rokksMacros.Macros["Global_Trinket"] = {
    ["script"] = addon.concat(
        "/use 13"
    )
}

-- Disenchant
-- #showtooltip
-- /run local f=DeM or CreateFrame("Button","DeM",nil,"SecureActionButtonTemplate") f:SetAttribute("type","click") f:SetAttribute("clickbutton",GetMouseFocus())
-- /cast Disenchant
-- /click DeM

-- ###########################################
-- ################# WARLOCK #################
-- ###########################################

rokksMacros.Macros["Lock_Fear"] = {
    ["Template"] = "LockTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast [mod:ctrl,@focus,harm,exists][@mouseover,harm,exists][] Fear"
    )
}

rokksMacros.Macros["Lock_Mortal_Coil"] = {
    ["Template"] = "LockTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast [mod:ctrl,@focus,harm,exists][@mouseover,harm,exists][] Mortal Coil"
    )
}

rokksMacros.Macros["Lock_Command_Demon"] = {
    ["Template"] = "LockTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast [mod:ctrl,@focus,harm,exists][@mouseover,harm,exists][] Command Demon"
    )
}

rokksMacros.Macros["Lock_Shadowfury"] = {
    ["script"] = addon.concat(
        "/cast [@cursor] Shadowfury"
    )
}

rokksMacros.Macros["Lock_Dark_Pact"] = {
    ["script"] = addon.concat(
        "/cast Dark Pact"
    )
}

rokksMacros.Macros["Lock_Healthstone"] = {
    ["script"] = addon.concat(
        "/cast [nomod:alt] Soulburn",
        "/use Healthstone"        
    )
}

rokksMacros.Macros["Lock_Unending_Resolve"] = {
    ["script"] = addon.concat(
        "/use Unending Resolve"        
    )
}

rokksMacros.Macros["Lock_Will_of_the_Forsaken"] = {
    ["script"] = addon.concat(
        "/use Will of the Forsaken"        
    )
}

rokksMacros.Macros["Lock_Port"] = {
    ["script"] = addon.concat(
        "/cast [mod:alt] Demonic Circle",
        "/cast [nomod:alt] Soulburn",
        "/cast [nomod:alt] Demonic Circle: Teleport"    
    )
}

rokksMacros.Macros["Lock_Gateway"] = {
    ["script"] = addon.concat(
        "/cast [mod:alt] Soulburn",
        "/cast [mod:alt,@cursor] Demonic Gateway",
        "/use [nomod:alt] Gateway Control Shard"
    )
}

rokksMacros.Macros["Lock_Dismiss_Pet"] = {
    ["script"] = addon.concat(
        "/petdismiss"
    )
}

rokksMacros.Macros["Lock_Curse_Of_Exhaustion"] = {
    ["Template"] = "LockTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast Amplify Curse",
        "/cast [mod:ctrl,@focus,harm,exists][@mouseover,harm,exists][] Curse of Exhaustion"        
    )
}

rokksMacros.Macros["Lock_Curse_Of_Weakness"] = {
    ["Template"] = "LockTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast Amplify Curse",
        "/cast [mod:ctrl,@focus,harm,exists][@mouseover,harm,exists][] Curse of Weakness"        
    )
}

rokksMacros.Macros["Lock_Curse_Of_Tongues"] = {
    ["Template"] = "LockTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast Amplify Curse",
        "/cast [mod:ctrl,@focus,harm,exists][@mouseover,harm,exists][] Curse of Tongues"        
    )
}

-- #showtooltip [known:Burning Rush] Burning Rush; [known:Shadow Rift] Shadow Rift; [known:Call Observer] Call Observer; [known:Nether Ward] Nether Ward; [known:Soul Rip] Soul Rip; Weapon Skills
rokksMacros.Macros["Lock_Extra"] = {
    ["script"] = addon.concat(        
        "/cast [known:Burning Rush] Burning Rush; [@cursor,known:Shadow Rift] Shadow Rift; [known:Call Observer] Call Observer; [known:Nether Ward] Nether Ward; [known:Soul Rip] Soul Rip; Weapon Skills"
    )
}

rokksMacros.Macros["Lock_Soulstone"] = {
    ["script"] = addon.concat(        
        "/cast [@mouseover,help,exists][@player] Soulstone"
    )
}

rokksMacros.Macros["Lock_Pet_Move"] = {
    ["script"] = addon.concat(
        "/petattack [@mouseover,harm,exists]",
        "/petmoveto"
    )
}

rokksMacros.Macros["Lock_Pet_Follow"] = {
    ["script"] = addon.concat(
        "/stopcasting",
        "/stopattack",
        "/petfollow"
    )
}

rokksMacros.Macros["Lock_Stopcasting"] = {
    ["script"] = addon.concat(
        "/cast [nocombat][@target,dead][@target,noharm][@target,help][@target,noexists] Loot-A-Rang",
        "/stopcasting",
        "/stopcasting",
        "/stopattack",
        "/stopattack"
    )
}

rokksMacros.Macros["Lock_Talents_Shadow_Rift"] = {
    ["script"] = addon.concat(
        "/equipset PvP",
        "/loi 1",
        "/run LearnPvpTalent(5394, 3)"
    )
}

rokksMacros.Macros["Lock_Talents_Soul_Rip"] = {
    ["script"] = addon.concat(
        "/equipset PvP",
        "/loi 1",
        "/run LearnPvpTalent(5606, 3)"
    )
}

rokksMacros.Macros["Lock_Talents_Nether_Ward"] = {
    ["script"] = addon.concat(
        "/equipset PvP",
        "/loi 1",
        "/run LearnPvpTalent(3624, 3)"
    )
}

rokksMacros.Macros["Lock_Talents_Call_Observer"] = {
    ["script"] = addon.concat(
        "/equipset PvP",
        "/loi 1",
        "/run LearnPvpTalent(165, 3)"
    )
}

rokksMacros.Macros["Lock_Talents_Gateway_Mastery"] = {
    ["script"] = addon.concat(
        "/equipset PvP",
        "/loi 1",
        "/run LearnPvpTalent(3506, 3)"
    )
}

rokksMacros.Macros["Lock_Talents_Burning_Rush"] = {
    ["script"] = addon.concat(
        "/equipset PvE",
        "/loi 2",
        "/run LearnPvpTalent(3506, 3)"
    )
}

rokksMacros.Macros["Lock_Shadow_Bolt"] = {
    ["Template"] = "LockAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Shadow Bolt"        
    )
}

rokksMacros.Macros["Lock_Health_Funnel"] = {
    ["script"] = addon.concat(
        "/cast Health Funnel"        
    )
}

rokksMacros.Macros["Lock_Drain_Life"] = {
    ["Template"] = "LockAttack",
    ["script"] = addon.concat(
        "/cast [nomod:alt] Soulburn",
        "/cast [@mouseover,harm,exists][] Drain Life"        
    )
}

-- ###########################################
-- ################## DEMO  ##################
-- ###########################################

-- Demo Buffs
-- #showtooltip [nopet] Summon Felguard; Create Soulwell
-- /cast [nopet,mod:shift] Fel Domination
-- /cast [nopet] Summon Felguard
-- /cast [mod:shift] Create Healthstone; [pet,group] Create Soulwell; Create Healthstone

-- Demonic Tyrant
-- #showtooltip
-- /cast [nopet] Fel Domination
-- /cast [nopet] Summon Felguard
-- /cleartarget [@target,dead][@target,noharm][@target,help]
-- /targetenemy [@target,noexists]
-- /castsequence reset=30 Summon Demonic Tyrant, Demonic Strength
-- /use 14

rokksMacros.Macros["Lock_Grimoire_Felguard"] = {
    ["Template"] = "LockAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Grimoire: Felguard"        
    )
}

rokksMacros.Macros["Lock_Call_Dreadstalkers"] = {
    ["Template"] = "LockAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Call Dreadstalkers"        
    )
}

rokksMacros.Macros["Lock_Demonbolt"] = {
    ["Template"] = "LockAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Demonbolt"        
    )
}

rokksMacros.Macros["Lock_Power_Siphon"] = {
    ["script"] = addon.concat(
        "/cast Power Siphon"        
    )
}

rokksMacros.Macros["Lock_Hand_of_Guldan"] = {
    ["Template"] = "LockAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Hand of Gul'dan"        
    )
}

rokksMacros.Macros["Lock_Implosion"] = {
    ["Template"] = "LockAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Implosion"        
    )
}

rokksMacros.Macros["Lock_Summon_Vilefiend"] = {
    ["Template"] = "LockAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Summon Vilefiend"        
    )
}



















-- ####################
-- ##### !HUNTER! #####
-- ####################

rokksMacros.Macros["Hunter_Food_Buff"] = {
    ["script"] = addon.concat(
        "/use [mod:shift] Deviously Deviled Eggs; Grand Banquet of the Kalu'ak"
    )
}

rokksMacros.Macros["Hunter_Aspect_of_the_Turtle"] = {
    ["script"] = addon.concat(
        "/stopcasting",
        "/cast !Aspect of the Turtle"
    )
}

rokksMacros.Macros["Hunter_Survival_of_the_Fittest"] = {
    ["script"] = addon.concat(
        "/cast Survival of the Fittest"
    )
}

rokksMacros.Macros["Hunter_Exhilaration"] = {
    ["script"] = addon.concat(
        "/cast Exhilaration",
        "/use Healthstone"
    )
}

rokksMacros.Macros["Hunter_Disengage"] = {
    ["script"] = "/cast Disengage"
}

rokksMacros.Macros["Hunter_Aspect_of_the_Cheetah"] = {
    ["script"] = addon.concat(
        "/cast [mod:alt] 6; Aspect of the Cheetah"
    )
}

rokksMacros.Macros["Hunter_Flare"] = {
    ["script"] = "/cast [@cursor] Flare"
}

rokksMacros.Macros["Hunter_Hunters_Mark"] = {
    ["script"] = addon.concat(
        "/targetenemy [@target,noexists]",
        "/cast Hunter's Mark"
    )
}

rokksMacros.Macros["Hunter_Eagle_Eye"] = {
    ["script"] = "/cast !Eagle Eye"
}

rokksMacros.Macros["Hunter_Eyes_of_the_Beast"] = {
    ["script"] = "/cast !Eyes of the Beast"
}


rokksMacros.Macros["Hunter_Feign_Death"] = {
    ["script"] = addon.concat( 
        "/stopcasting",
        "/cast !Feign Death"
    )
}

rokksMacros.Macros["Hunter_Play_Dead"] = {
    ["script"] = "/cast !Play Dead"
}

rokksMacros.Macros["Hunter_Roar_Of_Sacrifice"] = {
    ["script"] = addon.concat(
        "#DEFAULT /targetfriend [mod:alt]",
        "#PVP /targetfriendplayer [mod:alt]",
        "/cast [known:384799] Dreamwalker's Healing Potion; [@mouseover,help,exists][] Roar of Sacrifice",
        "/targetlasttarget [mod:alt]",
        "/cast [nopet,nopvpcombat,known:Roar of Sacrifice] Call Pet 2",
        "/cast [nopet,known:Roar of Sacrifice] Call Pet 1"
    )
}

rokksMacros.Macros["Hunter_Growl"] = {
    ["script"] = addon.concat(
        "/target [mod:alt] Demonic Tyrant",
        "/cast [mod:alt][@arenapet1,exists][@arenapet2,exists][@arenapet3,exists][@mouseover,harm,exists][] Growl",
        "/targetlasttarget [mod:alt]"
    )
}

rokksMacros.Macros["Hunter_Death_Stampede"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast Blood Fury",
        "#DEFAULT /cast [@focus,help,exists,known:Misdirection][@pet,exists] Misdirection",
        "/cast [known:201430] Stampede; [@mouseover,harm,exists][] Death Chakram"
    )
}

rokksMacros.Macros["Hunter_Explosive_Barrage"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [known:212431,@mouseover,harm,exists][known:212431] Explosive Shot; Barrage"
    )
}

rokksMacros.Macros["Hunter_Arcane_Shot"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/petattack [@mouseover,harm,exists][]",
        "/cast [@mouseover,harm,exists][] Arcane Shot"
    )
}

rokksMacros.Macros["Hunter_Steady_Shot"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "#DEFAULT /targetenemy [stealth,@target,noexists]",
        "#PVP /targetenemyplayer [stealth,@target,noexists]",
        "/cast Steady Shot"
    )
}

rokksMacros.Macros["Hunter_Tame_Beast"] = {
    ["script"] = addon.concat(
        "/cast Tame Beast"        
    )
}

rokksMacros.Macros["Hunter_Call_Pet_1"] = {
    ["script"] = addon.concat(
        "/cast [nopet] Call Pet 1",
        "/cast [@mouseover,harm,exists] Dash",
        "/petattack [@mouseover,harm,exists]",
        "/petmoveto"
    )
}

rokksMacros.Macros["Hunter_Call_Pet_2"] = {
    ["script"] = addon.concat(
        "/cast [nopet] Call Pet 2"
    )
}

rokksMacros.Macros["Hunter_Call_Pet_3"] = {
    ["script"] = addon.concat(
        "/cast [nopet] Call Pet 3; Dismiss pet"
    )
}

rokksMacros.Macros["Hunter_Call_Pet_4"] = {
    ["script"] = addon.concat(
        "/cast [nopet] Call Pet 4"
    )
}

rokksMacros.Macros["Hunter_Call_Pet_5"] = {
    ["script"] = addon.concat(
        "/cast [nopet] Call Pet 5; Dismiss pet"
    )
}

rokksMacros.Macros["Hunter_Kill_Command"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [stealth] Dash",
        "/petattack [@mouseover,harm,exists][]",
        "/cast [@mouseover,harm,exists,pet][pet] Kill Command",
        "/cast [nopet,nopvpcombat] Call Pet 2",
        "/cast [nopet] Call Pet 1"
    )
}

rokksMacros.Macros["Hunter_Kill_Shot"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Kill Shot"
    )
}

rokksMacros.Macros["Hunter_Tranquilizing_Shot"] = {
    ["script"] = addon.concat(
        "/stopcasting",
        "/cast [@target,dead][@target,noharm][@target,help] Loot-A-Rang; [nochanneling:Rapid Fire] Tranquilizing Shot"
    )
}

rokksMacros.Macros["Hunter_Mend_Pet"] = {
    ["script"] = addon.concat(
        "#DEFAULT /petautocaston [nogroup] Growl",
        "#DEFAULT /petautocastoff [group] Growl",
        "#DEFAULT /petautocastoff Prowl",
        "#PVP /petautocastoff Growl",
        "/petautocaston Dash",
        "/petautocaston Claw",
        "/petautocaston Bite",
        "/petautocaston Smack",
        "/petautocastoff Prowl",
        "/cast [@mouseover,exists,help][@target,exists,help] Ultimate Gnomish Army Knife; [@pet,dead][nopet]Revive Pet; Mend Pet"
    )
}

rokksMacros.Macros["Hunter_Pet_Follow"] = {
    ["script"] = addon.concat(
        "/cast Wake Up",
        "/stopattack",
        "/petpassive",
        "/petfollow"
    )
}

rokksMacros.Macros["Hunter_Command_Pet_Stealth"] = {
    ["script"] = addon.concat(
        "/cast [nocombat,nostealth,nomod] !Camouflage",
        "/cast [nocombat,nomod] Aspect of the Chameleon",
        "/cast [mod:alt,pet:Core Hound/Scalehide/Cat/Courser/Wind Serpent/Lesser Dragonkin/Carrion Bird/Devilsaur/Ravager/Scorpid/Wasp/Bat/Ray/Chimaera/Crocolisk/Spider/Tallstrider/Wolf/Clefthoof/gorilla] Primal Rage",
        "/stopmacro [nocombat]",
        "/cast [@player,pet:Beetle/Carapid/Turtle/Dragonhawk/Feathermane/Toad/Direhorn/Hydra/Lizard/Riverbeast/Spirit Beast/Stag/Waterfowl/Blood Beast/Crab/Mammoth/Worm/Bear/Oxen/Stone Hound][nopet] Command Pet", -- Fortitude of the Bear        
        "/cast [mod:alt,@FRIENDLYHEALER][@mouseover,help,exists][@player] Master's Call"
    )
}

rokksMacros.Macros["Hunter_Serpent_Sting"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Serpent Sting"
    )
}

rokksMacros.Macros["Hunter_Multi_Shot"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [stealth] Dash",
        "#DEFAULT /cast [@focus,help,exists,known:Misdirection][@pet,exists] Misdirection",
        "/cast [@mouseover,harm,exists][] Multi-Shot"
    )
}

-- #showtooltip [known:213691]Scatter Shot;[known:109248]Binding Shot;Weapon Skills
rokksMacros.Macros["Hunter_Scatter_Binding"] = {
    ["Template"] = "HunterTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast [known:Scatter Shot,@mouseover,harm,exists][known:Scatter Shot] Scatter Shot; [mod:alt,@player][@cursor] Binding Shot"
    )
}

rokksMacros.Macros["Hunter_Concussive_Shot"] = {
    ["Template"] = "HunterTargetEnemyShift",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Concussive Shot"
    )
}

-- #showtooltip [known:1513]Scare Beast;[known:236776]High Explosive Trap;[pet,known:19577]Intimidation;[nopet,nopvpcombat]Call Pet 2;[nopet] Call Pet 1;[pet]Cannibalize
rokksMacros.Macros["Hunter_Intim"] = {
    ["Template"] = "HunterTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists,known:Scare Beast][known:Scare Beast] Scare Beast",
        "/cast [mod:alt,@player,known:High Explosive Trap][@cursor,known:High Explosive Trap] High Explosive Trap",
        "/castsequence [@focus,harm,exists,mod:alt,pet,known:Intimidation,known:Chimaeral Sting][@mouseover,harm,exists,pet,known:Intimidation,known:Chimaeral Sting][pet,known:Intimidation,known:Chimaeral Sting] reset=60 Intimidation, Chimaeral Sting",
        "/cast [@focus,harm,exists,mod:alt,pet,known:Intimidation][@mouseover,harm,exists,pet,known:Intimidation][pet,known:Intimidation] Intimidation",
        "/cast [pet,noknown:High Explosive Trap/Intimidation/Scare Beast] Cannibalize",
        "/cast [nopet,nopvpcombat] Call Pet 2",
        "/cast [nopet] Call Pet 1"
    )
}

rokksMacros.Macros["Hunter_Counter_Shot"] = {
    ["script"] = addon.concat(
        "/stopcasting",
        "/stopcasting",
        "/targetenemy [@target,noexists][@target,noharm]",
        "/cast [@focus,harm,exists,mod:alt][@mouseover,harm,exists][] Counter Shot"
    )
}

rokksMacros.Macros["Hunter_Freezing_Trap"] = {
    ["Template"] = "HunterTrapEnemy",
    ["script"] = addon.concat(
        "/cast [mod:alt,@player][@cursor] Freezing Trap"
    )
}

-- Hunter Tar Trap / Steel Trap
-- #showtooltip
-- /castsequence [known:162488,mod:alt,@player][known:162488,@cursor] reset=25 Tar Trap, Steel Trap; [mod:alt,@player][@cursor] Tar Trap
-- /stopattack [stealth]
-- /petfollow [stealth]

-- ####################
-- #####   !BM!   #####
-- ####################

rokksMacros.Macros["BM_Cobra_Shot"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "#DEFAULT /targetenemy [stealth,@target,noexists]",
        "#PVP /targetenemyplayer [stealth,@target,noexists]",
        "/cast [@mouseover,harm,exists][] Cobra Shot"
    )
}

rokksMacros.Macros["BM_Barbed_Shot"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Barbed Shot"
    )
}

rokksMacros.Macros["BM_Barbed_Shot_Nearest"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/targetenemy",
        "/cast [@mouseover,harm,exists][] Barbed Shot",
        "/targetlasttarget"
    )
}

rokksMacros.Macros["BM_Bestial_Wrath"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast Blood Fury",
        "/cast [@mouseover,harm,exists][] Bestial Wrath"
    )
}

rokksMacros.Macros["BM_Call_of_the_Wild"] = {
    ["script"] = addon.concat(
        "/cancelaura Aspect of the Turtle",
        "/cast [@target,harm,exists] Call of the Wild",
        "/use [@target,harm,exists,group,pvpcombat] Saltwater Potion",
        "/use [mod:alt] Elemental Potion of Ultimate Power",
        "/use [@target,harm,exists] 14"        
    )
}

rokksMacros.Macros["BM_Bloodshed"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast Blood Fury",
        "/cast [@mouseover,harm,exists][] Bloodshed"
    )
}

rokksMacros.Macros["BM_Dire_Beast"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Dire Beast"
    )
}

-- #showtooltip [known:356719] Chimaeral Sting; [known:248518] Misdirection; [known:205691] Dire Beast: Basilisk; Cannibalize
-- /click RokksMacros_BM_PVP
rokksMacros.Macros["BM_PVP"] = {
    ["script"] = addon.concat(
        "/cast [@focus,harm,exists,mod:alt,known:356719][known:356719] Chimaeral Sting",
        "/cast [known:248518,@mouseover,help,exists][known:248518] Misdirection",
        "/cast [known:205691] Dire Beast: Basilisk",
        "/cast Cannibalize"
    )
}

rokksMacros.Macros["BM_Spec_MPlus"] = {
    ["script"] = addon.concat(
        "/equipset BM PvE",
        "/loi 1"
    )
}

rokksMacros.Macros["BM_Spec_Raid"] = {
    ["script"] = addon.concat(
        "/equipset BM PvE",
        "/loi 2"
    )
}

rokksMacros.Macros["BM_Spec_PvP"] = {
    ["script"] = addon.concat(        
        "/equipset BM PvP",
        "/run LearnPvpTalent(5534, 3)",
        "/loi 3"
    )
}

rokksMacros.Macros["BM_Spec_PvP_Interlope"] = {
    ["script"] = addon.concat(
        "/equipset BM PvP",
        "/loi 4"
    )
}

rokksMacros.Macros["BM_Spec_Solo"] = {
    ["script"] = addon.concat(
        "/equipset BM Solo",
        "/run LearnPvpTalent(5534, 3)",
        "/loi 5"
    )
}

rokksMacros.Macros["BM_PvPTalent3_Tranquilizing_Darts"] = {
    ["script"] = addon.concat(
        "/loi 3",
        "/run LearnPvpTalent(5418, 3)"   
    )
}

rokksMacros.Macros["BM_PvPTalent3_Diamond_Ice"] = {
    ["script"] = addon.concat(
        "/loi 3",
        "/run LearnPvpTalent(5534, 3)"
    )
}

rokksMacros.Macros["BM_PvPTalent3_The_Beast_Within"] = {
    ["script"] = addon.concat(
        "/loi 3",
        "/run LearnPvpTalent(693, 3)"
    )
}

rokksMacros.Macros["BM_PvPTalent3_Dire_Beast_Basilisk"] = {
    ["script"] = addon.concat(
        "/loi 3",
        "/run LearnPvpTalent(825, 3)"
    )
}

rokksMacros.Macros["BM_PvPTalent3_Chimaeral_Sting"] = {
    ["script"] = addon.concat(
        "/loi 3",
        "/run LearnPvpTalent(3604, 3)"
    )
}

rokksMacros.Macros["BM_PvPTalent3_Interlope"] = {
    ["script"] = addon.concat(
        "/loi 4",
        "/run LearnPvpTalent(1214, 3)"
    )
}

-- ####################
-- #####   !MM!   #####
-- ####################

rokksMacros.Macros["MM_Trueshot"] = {
    ["script"] = addon.concat(
        "/cancelaura Aspect of the Turtle",
        "/cast [@target,harm,exists] Trueshot",
        "/use [@target,harm,exists,group,pvpcombat] Saltwater Potion",
        "/use [mod:alt] Elemental Potion of Ultimate Power"
    )
}

rokksMacros.Macros["MM_Aimed_Shot"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast Blood Fury",
        "#DEFAULT /cast [@focus,help,exists,known:Misdirection][@pet,exists] Misdirection",
        "/cast Aimed Shot"
    )
}

-- #showtooltip [known:Bursting Shot] Bursting Shot; 14
rokksMacros.Macros["MM_Bursting_Shot"] = {
    ["script"] = addon.concat(
        "/cast [known:Bursting Shot] Bursting Shot",
        "/use [noknown:Bursting Shot,mod:alt] Elemental Potion of Ultimate Power",
        "/use [noknown:Bursting Shot] 14"
    )
}

rokksMacros.Macros["MM_Salvo"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "#DEFAULT /cast [@focus,help,exists,known:Misdirection][@pet,exists] Misdirection",
        "/cast Salvo",
        "/castsequence [@cursor] reset=30 Death Chakram, Volley"
    )
}

rokksMacros.Macros["MM_Rapid_Fire"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "#DEFAULT /cast [@focus,help,exists,known:Misdirection][@pet,exists] Misdirection",
        "/cast [@mouseover,harm,exists][] Rapid Fire"
    )
}

rokksMacros.Macros["MM_Chakram_Volley"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/castsequence [@cursor] reset=30 Death Chakram, Volley"
    )
}

rokksMacros.Macros["MM_Volley"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [@cursor] Volley"
    )
}

-- #showtooltip [known:356719] Chimaeral Sting; [known:203155] Sniper Shot; Cannibalize
rokksMacros.Macros["MM_PVP"] = {
    ["script"] = addon.concat(
        "/cast [known:356719] Chimaeral Sting; [known:203155] Sniper Shot; Cannibalize"
    )
}

rokksMacros.Macros["MM_PvPTalent3_Consecutive_Concussion"] = {
    ["script"] = addon.concat(
        "/run LearnPvpTalent(5440, 3)"
    )
}

rokksMacros.Macros["MM_PvPTalent3_Tranquilizing_Darts"] = {
    ["script"] = addon.concat(
        "/run LearnPvpTalent(5419, 3)"
    )
}
rokksMacros.Macros["MM_PvPTalent3_Diamond_Ice"] = {
    ["script"] = addon.concat(
        "/run LearnPvpTalent(5533, 3)"
    )
}
rokksMacros.Macros["MM_PvPTalent3_Chimaeral_Sting"] = {
    ["script"] = addon.concat(
        "/run LearnPvpTalent(653, 3)"
    )
}
rokksMacros.Macros["MM_PvPTalent3_Sniper_Shot"] = {
    ["script"] = addon.concat(
        "/run LearnPvpTalent(660, 3)"
    )
}

rokksMacros.Macros["MM_PvPTalent3_Interlope"] = {
    ["script"] = addon.concat(
        "/run LearnPvpTalent(5531, 3)",
        "/loi 3"
    )
}

rokksMacros.Macros["MM_Spec_MPlus"] = {
    ["script"] = addon.concat(
        "/equipset MM PvE",
        "/loi 1"
    )
}

rokksMacros.Macros["MM_Spec_Raid"] = {
    ["script"] = addon.concat(
        "/equipset MM PvE",
        "/loi 2"
    )
}

rokksMacros.Macros["MM_Spec_PvP_Salvo"] = {
    ["script"] = addon.concat(
        "/equipset MM PvP",
        "/loi 3"
    )
}

rokksMacros.Macros["MM_Spec_PvP_Windrunner"] = {
    ["script"] = addon.concat(
        "/equipset MM PvP",
        "/loi 4"
    )
}

rokksMacros.Macros["MM_Spec_Solo"] = {
    ["script"] = addon.concat(
        "/equipset MM Solo",
        "/run LearnPvpTalent(5440, 3)",
        "/loi 5"
    )
}
-- ####################
-- #####   !SV!   #####
-- ####################

rokksMacros.Macros["SV_Aspect_of_the_Eagle"] = {
    ["script"] = addon.concat(
        "/cast [known:Mongoose Bite] Mongoose Bite; Raptor Strike",
        "/cast Aspect of the Eagle"
    )
}

rokksMacros.Macros["SV_Carve_Butchery"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [known:187708,@mouseover,harm,exists][known:187708] Carve; [known:212436] Butchery; [known:259387] Mongoose Bite; Raptor Strike",
        "#DEFAULT /cast [@focus,help,exists,known:Misdirection][@pet,exists] Misdirection"
    )
}

rokksMacros.Macros["SV_Mongoose_Bite"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast [known:Mongoose Bite] Mongoose Bite; Raptor Strike"
    )
}

rokksMacros.Macros["SV_Wildfire_Bomb"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "#DEFAULT /cast [@focus,help,exists,known:Misdirection][@pet,exists] Misdirection",
        "/cast [@mouseover,harm,exists][] Wildfire Bomb"
    )
}

rokksMacros.Macros["SV_Wing_Clip"] = {
    ["Template"] = "HunterTargetEnemyShift",
    ["script"] = addon.concat(
        "/cast Wing Clip"
    )
}

rokksMacros.Macros["SV_Flanking_Strike"] = {
    ["Template"] = "HunterAttack",
    ["script"] = addon.concat(
        "/cast Flanking Strike"
    )
}

rokksMacros.Macros["SV_Muzzle"] = {
    ["Template"] = "HunterTargetEnemyAlt",
    ["script"] = addon.concat(
        "/cast Muzzle"
    )
}

rokksMacros.Macros["SV_Harpoon"] = {
    ["Template"] = "HunterTargetEnemyAlt",
    ["script"] = addon.concat(
        "#DEFAULT /startattack",
        "/cast [@focus,harm,exists,mod:alt][] Harpoon",
        "/cast Wing Clip"
    )
}

rokksMacros.Macros["SV_Fury_of_the_Eagle"] = {
    ["script"] = addon.concat(
        "/cancelaura Aspect of the Turtle",
        "/cast [@target,harm,exists,known:Fury of the Eagle] Fury of the Eagle; !Eagle Eye",
        "/use [@target,harm,exists,group,pvpcombat] Saltwater Potion",
        "/use [mod:alt] Elemental Potion of Ultimate Power",
        "/use [@target,harm,exists] 14"
    )
}

rokksMacros.Macros["SV_Spearhead"] = {
    ["script"] = addon.concat(
        "/cancelaura Aspect of the Turtle",
        "/cast [@target,harm,exists] Spearhead",
        "/use [@target,harm,exists,group,pvpcombat] Saltwater Potion",
        "/use [mod:alt] Elemental Potion of Ultimate Power",
        "/use [@target,harm,exists] 14"
    )
}
rokksMacros.Macros["SV_Coordinated_Assault"] = {
    ["script"] = addon.concat(
        "/cancelaura Aspect of the Turtle",
        "/cast [@target,harm,exists] Coordinated Assault",
        "/use [@target,harm,exists,group,pvpcombat] Saltwater Potion",
        "/use [mod:alt] Elemental Potion of Ultimate Power",
        "/use [@target,harm,exists] 14"        
    )
}

rokksMacros.Macros["SV_Spec_MPlus"] = {
    ["script"] = addon.concat(
        "/equipset SV PvE",
        "/loi 1"
    )
}

rokksMacros.Macros["SV_Spec_Raid"] = {
    ["script"] = addon.concat(
        "/equipset SV PvE",
        "/loi 2"
    )
}

rokksMacros.Macros["SV_Spec_PvP"] = {
    ["script"] = addon.concat(
        "/equipset SV PvP",
        "/loi 3"
    )
}

rokksMacros.Macros["SV_Spec_Solo"] = {
    ["script"] = addon.concat(
        "/equipset SV PvE",
        "/loi 4"
    )
}
rokksMacros.Macros["SV_PvPTalent3_Sticky_Tar_Bomb"] = {
    ["script"] = addon.concat(
        "/equipset SV PvP",
        "/loi 3",
        "/run LearnPvpTalent(664, 3)"
    )
}

rokksMacros.Macros["SV_PvPTalent3_Chimaeral_Sting"] = {
    ["script"] = addon.concat(
        "/equipset SV PvP",
        "/loi 3",
        "/run LearnPvpTalent(3609, 3)"
    )
}

rokksMacros.Macros["SV_PvPTalent3_Trackers_Net"] = {
    ["script"] = addon.concat(
        "/equipset SV PvP",
        "/loi 3",
        "/run LearnPvpTalent(665, 3)"
    )
}

rokksMacros.Macros["SV_PvPTalent3_Tranquilizing_Darts"] = {
    ["script"] = addon.concat(
        "/equipset SV PvP",
        "/loi 3",
        "/run LearnPvpTalent(5420, 3)"
    )
}

rokksMacros.Macros["SV_PvPTalent3_Diamond_Ice"] = {
    ["script"] = addon.concat(
        "/equipset SV PvP",
        "/loi 3",
        "/run LearnPvpTalent(686, 3)"
    )
}

rokksMacros.Macros["SV_PvPTalent3_Mending_Bandage"] = {
    ["script"] = addon.concat(
        "/equipset SV PvP",
        "/loi 3",
        "/run LearnPvpTalent(662, 3)"
    )
}

rokksMacros.Macros["SV_PvPTalent3_Interlope"] = {
    ["script"] = addon.concat(
        "/equipset SV PvP",
        "/loi 4",
        "/run LearnPvpTalent(5532, 3)"
    )
}

-- #showtooltip [known:356719] Chimaeral Sting; [known:212640] Mending Bandage; [known:248518] Misdirection; [known:407028] Sticky Tar Bomb; [known:212638] Tracker's Net; Cannibalize
rokksMacros.Macros["SV_PVP"] = {
    ["Template"] = "HunterTargetEnemyShift",
    ["script"] = addon.concat(
        "/cast [@focus,harm,exists,mod:shift,known:356719][known:356719] Chimaeral Sting",
        "/cast [known:212640,@mouseover,help,exists][known:212640] Mending Bandage",
        "/cast [known:248518,@mouseover,help,exists][known:248518] Misdirection",
        "/cast [known:407028] Sticky Tar Bomb",
        "/cast [known:212638] Tracker's Net",
        "/cast Cannibalize"
    )
}

-- MAGE
rokksMacros.Macros["Mage_Buffs"] = {
    ["script"] = addon.concat(
        "/castsequence [@player,noflying] reset=2 Arcane Intellect, Conjure Refreshment"
    )
}

rokksMacros.Macros["Mage_Poly1"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@arena1,harm,exists][@mouseover,harm,exists][] Polymorph"
    )
}

rokksMacros.Macros["Mage_Poly2"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@arena2,harm,exists][@mouseover,harm,exists][] Polymorph"
    )
}

rokksMacros.Macros["Mage_Poly3"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@arena3,harm,exists][@mouseover,harm,exists][] Polymorph"
    )
}

rokksMacros.Macros["Mage_Alter_Time"] = {
    ["script"] = addon.concat(
        "/cancelaura [mod:alt] Alter Time",
        "/cast Alter Time"
    )
}

rokksMacros.Macros["Mage_Counterspell"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/stopcasting",
        "/cast [@focus,harm,exists,mod:alt][@mouseover,harm,exists][] Counterspell"
    )
}

rokksMacros.Macros["Mage_Cone_of_Cold"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast Cone of Cold"
    )
}

rokksMacros.Macros["Mage_Frostbolt"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Frostbolt"
    )
}

-- #showtooltip
-- /castsequence reset=239, Cold Snap
rokksMacros.Macros["Mage_Ice_Block"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast Ice Block",
        "/cast Cold Snap"
    )
}

rokksMacros.Macros["Mage_Ice_Nova"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Ice Nova"
    )
}

rokksMacros.Macros["Mage_Mass_Barrier"] = {
    ["script"] = addon.concat(
        "/cast Mass Barrier"
    )
}

rokksMacros.Macros["Mage_Spellsteal"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,help,exists][@target,help,exists] Remove Curse; [@mouseover,harm,exists][] Spellsteal"
    )
}

rokksMacros.Macros["Mage_Ice_Nova"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Ice Nova"
    )
}

rokksMacros.Macros["Mage_Slow"] = {
    ["Template"] = "MageTargetEnemyShift",
    ["script"] = addon.concat(
        "/stopcasting",
        "/cast [@mouseover,harm,exists][] Slow"
    )
}

rokksMacros.Macros["Mage_Polymorph"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/stopcasting",
        "/cast [@focus,harm,exists,mod:alt][@mouseover,harm,exists][] Polymorph(Sheep)"
    )
}

-- #showtooltip
-- /cast [@mouseover,help,exists][@target,help,exists] Remove Curse; [@mouseover,harm,exists][] Spellsteal

rokksMacros.Macros["Mage_Ring_of_Frost"] = {
    ["script"] = addon.concat(
        "/cast [@cursor] Ring of Frost"
    )
}

rokksMacros.Macros["Mage_Slow_Fall"] = {
    ["script"] = addon.concat(
        "/cast [@mouseover,help,exists][] Slow Fall"
    )
}

rokksMacros.Macros["Mage_Frost_Nova"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast Frost Nova"
    )
}

rokksMacros.Macros["Mage_Ice_Nova"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,help,exists][] Ice Nova"
    )
}

rokksMacros.Macros["Frost_Blizzard"] = {
    ["script"] = addon.concat(
        "/cast [@cursor] Blizzard"
    )
}

rokksMacros.Macros["Frost_Comet_Storm"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Comet Storm"
    )
}

rokksMacros.Macros["Frost_Flurry"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast Flurry"
    )
}

rokksMacros.Macros["Frost_Frost_Bomb"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists,known:Frost Bomb][known:Frost Bomb] Frost Bomb; [@mouseover,harm,exists][] Comet Storm"
    )
}

rokksMacros.Macros["Frost_Frozen_Orb"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/castsequence [@cursor][] reset=10 Frozen Orb, Blizzard, Blizzard"
    )
}

rokksMacros.Macros["Frost_Glacial_Spike"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Glacial Spike"
    )
}

rokksMacros.Macros["Mage_Blink"] = {
    ["script"] = addon.concat(
        "/cancelaura Ice Block",
        "/cast Blink"
    )
}

rokksMacros.Macros["Frost_Ice_Lance"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Ice Lance"
    )
}

rokksMacros.Macros["Frost_Ice_Barrier"] = {
    ["script"] = addon.concat(
        "/cast [nomod:alt] Ice Barrier",
        "/use [mod:alt] Healthstone",
        "/cast [mod:alt] Dreamwalker's Healing Potion"
    )
}

-- #showtooltip [pet] Freeze; Icy Veins
-- /castsequence [@cursor] reset=30 Icy Veins, Freeze
-- /cast [mod:alt] Time Warp
-- /use [group,nopvpcombat] Elemental Potion of Ultimate Power
-- /use 14
rokksMacros.Macros["Frost_Icy_Veins"] = {
    ["script"] = addon.concat(
        "/use 14",
        "/use [group,nopvpcombat] Elemental Potion of Ultimate Power",
        "/cast [mod:alt] Time Warp",
        "/cast Icy Veins"        
    )
}

rokksMacros.Macros["Frost_Ray_of_Frost"] = {
    ["Template"] = "MageAttack",
    ["script"] = addon.concat(
        "/cast [@mouseover,harm,exists][] Ray of Frost"
    )
}

rokksMacros.Macros["Frost_Spec_MPlus"] = {
    ["script"] = addon.concat(
        "/equipset Frost",
        "/loi 1"
    )
}

rokksMacros.Macros["Frost_Spec_PvP"] = {
    ["script"] = addon.concat(
        "/equipset PvP",
        "/loi 2"
    )
}