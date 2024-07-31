local addonName, addon = ...
addon.text = {}

-- Default Locale
addon.text["addonName"] = "Rokks Macros"
addon.text["UnableToModifyInCombat"] = "Unable to modify macros while in combat."
addon.text["InvalidTagArguments"] = "Invalid arguments. Argument for tags must be a table of strings."
addon.text["InvalidVarArguments"] = "Invalid arguments. Argument for vars must be a table of strings."
addon.text["MacrosUpdated"] = "Macros updated"

local locale = GetLocale()
if locale == "ruRU" then
	addon.text["addonName"] = "Роккс Макрос"
end

