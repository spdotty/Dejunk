-- Dejunk: enUS (English) localization file.

local AddonName = ...
local L = _G.LibStub('AceLocale-3.0'):NewLocale(AddonName, 'enUS', true)

L["ADDED_ITEM_TO_LIST"] = "Added %s to %s."
L["AUTO_DESTROY_TEXT"] = "Auto Destroy"
L["AUTO_DESTROY_TOOLTIP"] = "Destroy junk items periodically while this window is closed."
L["AUTO_REPAIR_TEXT"] = "Auto Repair"
L["AUTO_REPAIR_TOOLTIP"] = "Automatically repair items upon opening a merchant window."
L["AUTO_SELL_TEXT"] = "Auto Sell"
L["AUTO_SELL_TOOLTIP"] = "Automatically sell junk items upon opening a merchant window."
L["BINDINGS_ADD_TO_LIST_TEXT"] = "Add to %s"
L["BINDINGS_REMOVE_FROM_LIST_TEXT"] = "Remove from %s"
L["BINDINGS_TOGGLE_OPTIONS_TEXT"] = "Toggle Options"
L["BY_CATEGORY_TEXT"] = "By Category"
L["BY_QUALITY_TEXT"] = "By Quality"
L["BY_TYPE_TEXT"] = "By Type"
L["CANNOT_DEJUNK_WHILE_DESTROYING"] = "Cannot dejunk while items are being destroyed."
L["CANNOT_DEJUNK_WHILE_LISTS_UPDATING"] = "Cannot dejunk while %s and %s are being updated."
L["CANNOT_DESTROY_WHILE_DEJUNKING"] = "Cannot destroy while items are being dejunked."
L["CANNOT_DESTROY_WHILE_LISTS_UPDATING"] = "Cannot destroy while %s and %s are being updated."
L["CHAT_TEXT"] = "Chat"
L["CLASS_TEXT"] = "Class"
L["COMMON_TEXT"] = "Common"
L["COPY_TEXT"] = "Copy"
L["DEJUNK_BUTTON_TOOLTIP"] = "Right-Click to toggle options."
L["DEJUNKING_IN_PROGRESS"] = "Dejunking is already in progress."
L["DELETE_PROFILE_POPUP"] = "Are you sure you want to delete the profile %s?"
L["DELETE_TEXT"] = "Delete"
L["DESTROY_ALL_TOOLTIP"] = "Destroy all items of this quality."
L["DESTROY_BELOW_PRICE_TEXT"] = "Destroy Below Price"
L["DESTROY_BELOW_PRICE_TOOLTIP"] = "Only destroy junk items or stacks of junk items worth less than a set price."
L["DESTROY_EXCESS_SOUL_SHARDS_SLIDER_LABEL"] = "Max Shards"
L["DESTROY_EXCESS_SOUL_SHARDS_TEXT"] = "Excess Soul Shards"
L["DESTROY_EXCESS_SOUL_SHARDS_TOOLTIP"] = "Destroy Soul Shards which exceed a set maximum.|n|nOnly applies to |cFF8787EDWarlocks|r."
L["DESTROY_PETS_ALREADY_COLLECTED_TEXT"] = "Pets Already Collected"
L["DESTROY_PETS_ALREADY_COLLECTED_TOOLTIP"] = "Destroy pets of which you have already collected at least one.|n|nOnly applies to soulbound pets which cannot be sold."
L["DESTROY_SAVE_SPACE_SLIDER"] = "Spaces"
L["DESTROY_SAVE_SPACE_TEXT"] = "Save Space"
L["DESTROY_SAVE_SPACE_TOOLTIP"] = "Only auto destroy items when less than a set number of bag spaces remain.|n|nDoes not apply when manually starting the destroy process."
L["DESTROY_TEXT"] = "Destroy"
L["DESTROY_TOYS_ALREADY_COLLECTED_TEXT"] = "Toys Already Collected"
L["DESTROY_TOYS_ALREADY_COLLECTED_TOOLTIP"] = "Destroy toys which you have already collected.|n|nOnly applies to soulbound toys which cannot be sold."
L["DESTROYABLES_HELP_TEXT"] = "Items on this list will always be destroyed."
L["DESTROYABLES_TEXT"] = "Destroyables"
L["DESTROYED_ITEM_VERBOSE"] = "Destroyed: %s."
L["DESTROYED_ITEM"] = "Destroyed 1 junk item."
L["DESTROYED_ITEMS_VERBOSE"] = "Destroyed: %sx%s."
L["DESTROYED_ITEMS"] = "Destroyed %s junk items."
L["DESTROYING_IN_PROGRESS"] = "Destroying is already in progress."
L["DOES_NOT_APPLY_TO_QUALITY"] = "Does not apply to %s quality items."
L["EPIC_TEXT"] = "Epic"
L["EXCLUSIONS_HELP_TEXT"] = "Items on this list will never be sold."
L["EXCLUSIONS_TEXT"] = "Exclusions"
L["EXPORT_HELPER_TEXT"] = "When highlighted, use <Ctrl+C> to copy the export string."
L["EXPORT_PROFILE_TEXT"] = "Export Profile"
L["EXPORT_TEXT"] = "Export"
L["FAILED_TO_PARSE_ITEM_ID"] = "Item ID %s failed to parse and may not exist."
L["GENERAL_TEXT"] = "General"
L["GLOBAL_TEXT"] = "Global"
L["IGNORE_BATTLEPETS_TEXT"] = "Battle Pets"
L["IGNORE_BATTLEPETS_TOOLTIP"] = "Ignore battle and companion pets."
L["IGNORE_BOE_TEXT"] = "Binds When Equipped"
L["IGNORE_BOE_TOOLTIP"] = "Ignore binds when equipped items."
L["IGNORE_CONSUMABLES_TEXT"] = "Consumables"
L["IGNORE_CONSUMABLES_TOOLTIP"] = "Ignore consumable items such as food and potions."
L["IGNORE_COSMETIC_TEXT"] = "Cosmetic"
L["IGNORE_COSMETIC_TOOLTIP"] = "Ignore cosmetic and generic armor such as tabards, shirts, and held in off-hand items."
L["IGNORE_EQUIPMENT_SETS_TEXT"] = "Equipment Sets"
L["IGNORE_EQUIPMENT_SETS_TOOLTIP"] = "Ignore items belonging to equipment sets."
L["IGNORE_GEMS_TEXT"] = "Gems"
L["IGNORE_GEMS_TOOLTIP"] = "Ignore cut gems and artifact relics."
L["IGNORE_GLYPHS_TEXT"] = "Glyphs"
L["IGNORE_GLYPHS_TOOLTIP"] = "Ignore glyphs."
L["IGNORE_ITEM_ENHANCEMENTS_TEXT"] = "Item Enhancements"
L["IGNORE_ITEM_ENHANCEMENTS_TOOLTIP"] = "Ignore items used for enhancing weapons and armor."
L["IGNORE_MISCELLANEOUS_TEXT"] = "Miscellaneous"
L["IGNORE_MISCELLANEOUS_TOOLTIP"] = "Ignore miscellaneous items."
L["IGNORE_QUEST_ITEMS_TEXT"] = "Quest Items"
L["IGNORE_QUEST_ITEMS_TOOLTIP"] = "Ignore quest items."
L["IGNORE_READABLE_TEXT"] = "Readable"
L["IGNORE_READABLE_TOOLTIP"] = "Ignore items that can be read."
L["IGNORE_REAGENTS_TEXT"] = "Reagents"
L["IGNORE_REAGENTS_TOOLTIP"] = "Ignore reagent items."
L["IGNORE_RECIPES_TEXT"] = "Recipes"
L["IGNORE_RECIPES_TOOLTIP"] = "Ignore tradeskill recipes."
L["IGNORE_SOULBOUND_TEXT"] = "Soulbound"
L["IGNORE_SOULBOUND_TOOLTIP"] = "Ignore soulbound items."
L["IGNORE_TEXT"] = "Ignore"
L["IGNORE_TRADE_GOODS_TEXT"] = "Trade Goods"
L["IGNORE_TRADE_GOODS_TOOLTIP"] = "Ignore items related to crafting professions."
L["IGNORE_TRADEABLE_TEXT"] = "Tradeable"
L["IGNORE_TRADEABLE_TOOLTIP"] = "Ignore items which can be traded with players that were also eligible to loot them."
L["IGNORING_ITEMS_INCOMPLETE_TOOLTIPS"] = "Ignoring items with incomplete tooltips."
L["IMPORT_HELPER_TEXT"] = "Enter item IDs separated by a semi-colon (e.g. 4983;58907;67410)."
L["IMPORT_PROFILE_HELPER_TEXT"] = "Use <Ctrl+V> to paste an import string into the box below."
L["IMPORT_PROFILE_TEXT"] = "Import Profile"
L["IMPORT_TEXT"] = "Import"
L["INCLUSIONS_HELP_TEXT"] = "Items on this list will always be sold."
L["INCLUSIONS_TEXT"] = "Inclusions"
L["ITEM_ALREADY_ON_LIST"] = "%s is already on %s."
L["ITEM_CANNOT_BE_DESTROYED"] = "%s cannot be destroyed."
L["ITEM_CANNOT_BE_SOLD"] = "%s cannot be sold."
L["ITEM_LEVELS_TEXT"] = "Item Levels"
L["ITEM_NOT_ON_LIST"] = "%s is not on %s."
L["ITEM_TOOLTIP_TEXT"] = "Item Tooltip"
L["ITEM_TOOLTIP_TOOLTIP"] = "Display a Dejunk message in an item's tooltip indicating if it will be sold or destroyed.|n|nThis tooltip only applies to items in your bags."
L["ITEM_WILL_BE_DESTROYED"] = "This item will be destroyed."
L["ITEM_WILL_BE_SOLD"] = "This item will be sold."
L["ITEM_WILL_NOT_BE_DESTROYED"] = "This item will not be destroyed."
L["ITEM_WILL_NOT_BE_SOLD"] = "This item will not be sold."
L["LIST_ADD_REMOVE_HELP_TEXT"] = "To add an item, drop it into the frame below. To remove an item, highlight an entry and Right-Click."
L["MAY_NOT_HAVE_DESTROYED_ITEM"] = "May not have destroyed %s."
L["MAY_NOT_HAVE_SOLD_ITEM"] = "May not have sold %s."
L["MINIMAP_CHECKBUTTON_TEXT"] = "Minimap Icon"
L["MINIMAP_CHECKBUTTON_TOOLTIP"] = "Display a Dejunk icon on the minimap."
L["MINIMAP_ICON_TOOLTIP_1"] = "Left-Click to toggle options."
L["MINIMAP_ICON_TOOLTIP_2"] = "Right-Click to start destroying."
L["MINIMAP_ICON_TOOLTIP_3"] = "Drag to move this icon."
L["NAME_TEXT"] = "Name"
L["NO_CACHED_DESTROYABLE_ITEMS"] = "No destroyable junk items could be retrieved. Try again later."
L["NO_CACHED_JUNK_ITEMS"] = "No junk items could be retrieved. Try again later."
L["NO_DESTROYABLE_ITEMS"] = "No junk items to destroy."
L["NO_ITEMS_TEXT"] = "No items."
L["NO_JUNK_ITEMS"] = "No junk items to sell."
L["ONLY_DESTROYING_CACHED"] = "Some items could not be retrieved. Only destroying cached junk items."
L["ONLY_SELLING_CACHED"] = "Some items could not be retrieved. Only selling cached junk items."
L["POOR_TEXT"] = "Poor"
L["PRICE_TEXT"] = "Price"
L["PROFILE_ACTIVATED_TEXT"] = "Activated profile %s."
L["PROFILE_COPIED_TEXT"] = "Copied profile %s."
L["PROFILE_COPY_HELP_TEXT"] = "Copy an existing profile's settings into the current profile. This will overwrite all settings for the current profile."
L["PROFILE_CREATE_OR_SWITCH_HELP_TEXT"] = "Create a new profile by entering a name in the edit box, or switch to an existing profile by using the dropdown menu."
L["PROFILE_CREATE_OR_SWITCH_TEXT"] = "Create or Switch"
L["PROFILE_DELETE_HELP_TEXT"] = "Delete an existing profile. Be careful!"
L["PROFILE_DELETED_TEXT"] = "Deleted profile %s."
L["PROFILE_EXISTING_PROFILES_TEXT"] = "Existing Profiles"
L["PROFILE_EXISTS_TEXT"] = "Profile %s already exists."
L["PROFILE_INVALID_IMPORT_TEXT"] = "Invalid import string."
L["PROFILE_NAME_TEXT"] = "Profile Name"
L["PROFILE_NEW_TEXT"] = "New Profile"
L["PROFILES_TEXT"] = "Profiles"
L["QUALITY_TEXT"] = "Quality"
L["RARE_TEXT"] = "Rare"
L["REASON_DESTROY_BY_QUALITY_TEXT"] = "Items of this quality are being destroyed."
L["REASON_DESTROY_EXCESS_SOUL_SHARDS_TEXT"] = "Excess Soul Shards are being destroyed."
L["REASON_DESTROY_IGNORE_EXCLUSIONS_TEXT"] = "Items on Exclusions are ignored."
L["REASON_DESTROY_PETS_ALREADY_COLLECTED_TEXT"] = "Pets already collected are being destroyed."
L["REASON_DESTROY_TOYS_ALREADY_COLLECTED_TEXT"] = "Toys already collected are being destroyed."
L["REASON_IGNORE_BATTLEPETS_TEXT"] = "Battle pets are ignored."
L["REASON_IGNORE_BOE_TEXT"] = "Binds when equipped items are ignored."
L["REASON_IGNORE_CONSUMABLES_TEXT"] = "Consumables are ignored."
L["REASON_IGNORE_COSMETIC_TEXT"] = "Cosmetic items are ignored."
L["REASON_IGNORE_EQUIPMENT_ABOVE_ILVL_TEXT"] = "Equipment above item level %s is ignored."
L["REASON_IGNORE_EQUIPMENT_SETS_TEXT"] = "Equipment set items are ignored."
L["REASON_IGNORE_GEMS_TEXT"] = "Gems are ignored."
L["REASON_IGNORE_GLYPHS_TEXT"] = "Glyphs are ignored."
L["REASON_IGNORE_ITEM_ENHANCEMENTS_TEXT"] = "Item enhancements are ignored."
L["REASON_IGNORE_MISCELLANEOUS_TEXT"] = "Miscellaneous items are ignored."
L["REASON_IGNORE_QUEST_ITEMS_TEXT"] = "Quest items are ignored."
L["REASON_IGNORE_READABLE_TEXT"] = "Readable items are ignored."
L["REASON_IGNORE_REAGENTS_TEXT"] = "Reagents are ignored."
L["REASON_IGNORE_RECIPES_TEXT"] = "Recipes are ignored."
L["REASON_IGNORE_SOULBOUND_TEXT"] = "Soulbound items are ignored."
L["REASON_IGNORE_TRADE_GOODS_TEXT"] = "Trade goods are ignored."
L["REASON_IGNORE_TRADEABLE_TEXT"] = "Tradeable items are ignored."
L["REASON_ITEM_IS_LOCKED_TEXT"] = "Item is locked."
L["REASON_ITEM_NOT_FILTERED_TEXT"] = "No filters matched."
L["REASON_ITEM_ON_LIST_TEXT"] = "This item is on %s."
L["REASON_ITEM_PRICE_IS_BELOW_TEXT"] = "Item price is below %s."
L["REASON_ITEM_PRICE_IS_NOT_BELOW_TEXT"] = "Item price is not below %s."
L["REASON_SELL_BY_QUALITY_TEXT"] = "Items of this quality are being sold."
L["REASON_SELL_EQUIPMENT_BELOW_ILVL_TEXT"] = "Equipment with item level %s and below is being sold."
L["REASON_SELL_ITEM_TO_BE_DESTROYED"] = "Item to be destroyed otherwise."
L["REASON_SELL_UNSUITABLE_TEXT"] = "Unsuitable equipment is being sold."
L["REMOVE_ALL_POPUP"] = "Are you sure you want to remove all items from %s?"
L["REMOVE_ALL_TEXT"] = "Remove All"
L["REMOVED_ALL_FROM_LIST"] = "Removed all items from %s."
L["REMOVED_ITEM_FROM_LIST"] = "Removed %s from %s."
L["REPAIRED_ALL_ITEMS_GUILD"] = "Repaired all items for %s (Guild)."
L["REPAIRED_ALL_ITEMS"] = "Repaired all items for %s."
L["REPAIRED_NO_ITEMS"] = "Not enough money to repair."
L["REPAIRING_TEXT"] = "Repairing"
L["SAFE_MODE_MESSAGE"] = "Safe Mode is enabled: only selling %s items."
L["SAFE_MODE_TEXT"] = "Safe Mode"
L["SAFE_MODE_TOOLTIP"] = "Only sell up to %s items at a time."
L["SELL_ALL_TOOLTIP"] = "Sell all items of this quality."
L["SELL_BELOW_AVERAGE_ILVL_TEXT"] = "Below Average Item Level"
L["SELL_BELOW_AVERAGE_ILVL_TOOLTIP"] = "Sell equipment that is a specified number of item levels below your average item level.|n|nCosmetic items and fishing poles are unaffected by this setting."
L["SELL_BELOW_PRICE_TEXT"] = "Sell Below Price"
L["SELL_BELOW_PRICE_TOOLTIP"] = "Only sell junk items or stacks of junk items worth less than a set price."
L["SELL_TEXT"] = "Sell"
L["SELL_UNSUITABLE_TEXT"] = "Unsuitable Equipment"
L["SELL_UNSUITABLE_TOOLTIP_CLASSIC"] = "Sell all weapons and armor which cannot be used or trained for by your class."
L["SELL_UNSUITABLE_TOOLTIP"] = "Sell all weapons which are unsuitable for your class, and sell all armor which does not match your class’ primary armor type."
L["SILENT_MODE_TEXT"] = "Silent Mode"
L["SILENT_MODE_TOOLTIP"] = "Disable Dejunk chat window messages."
L["SOLD_ITEM_VERBOSE"] = "Sold: %s."
L["SOLD_ITEMS_VERBOSE"] = "Sold: %sx%s."
L["SOLD_YOUR_JUNK"] = "Sold your junk for %s."
L["SORT_BY_TEXT"] = "Sort By"
L["START_DESTROYING_BUTTON_TEXT"] = "Start Destroying"
L["STATUS_CONFIRMING_ITEMS_TEXT"] = "Confirming items..."
L["STATUS_DESTROYING_ITEMS_TEXT"] = "Destroying items..."
L["STATUS_SELLING_ITEMS_TEXT"] = "Selling items..."
L["STATUS_UPDATING_LISTS_TEXT"] = "Updating lists..."
L["UNCOMMON_TEXT"] = "Uncommon"
L["UNDESTROYABLES_HELP_TEXT"] = "Items on this list will never be destroyed."
L["UNDESTROYABLES_TEXT"] = "Undestroyables"
L["USE_GUILD_REPAIR_TEXT"] = "Use Guild"
L["USE_GUILD_REPAIR_TOOLTIP"] = "Prioritize guild repairs when available."
L["VENDOR_DOESNT_BUY"] = "Cannot sell to that merchant."
L["VERBOSE_MODE_TEXT"] = "Verbose Mode"
L["VERBOSE_MODE_TOOLTIP"] = "Enable additional Dejunk chat window messages when selling and destroying items."
L["VERSION_TEXT"] = "Version"
