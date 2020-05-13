-- DB: provides addon modules easy access to saved variables.

local AddonName, Addon = ...
local Consts = Addon.Consts
local DB = Addon.DB
local E = Addon.Events
local EventManager = Addon.EventManager

-- Default database values
local defaults = {
  Global = {
    minimapIcon = { hide = false },
    showItemTooltip = true,
    showMerchantButton = true
  },
  Profile = {
    general = {
      silentMode = false,
      verboseMode = true,
      autoRepair = false,
      useGuildRepair = true,
    },

    sell = {
      auto = false,
      safeMode = true,
      belowPrice = {
        enabled = false,
        value = Consts.SELL_BELOW_PRICE_MIN
      },

      byQuality = {
        poor = true,
        common = false,
        uncommon = false,
        rare = false,
        epic = false,
      },

      byType = {
        unsuitable = false,
        belowAverageItemLevel = {
          enabled = false,
          value = Consts.SELL_BELOW_AVERAGE_ILVL_MIN
        },
      },

      ignore = {
        battlePets = false,
        bindsWhenEquipped = false,
        consumables = false,
        cosmetic = false,
        equipmentSets = false,
        gems = false,
        glyphs = false,
        itemEnhancements = false,
        miscellaneous = false,
        questItems = false,
        readable = false,
        reagents = false,
        recipes = false,
        soulbound = false,
        tradeable = false,
        tradeGoods = false,
      },
    },

    -- Destroy options
    AutoDestroy = false,
    DestroyBelowPrice = {
      Enabled = false,
      Value = Consts.DESTROY_BELOW_PRICE_MIN
    },
    DestroyPoor = false,
    DestroyCommon = false,
    DestroyUncommon = false,
    DestroyRare = false,
    DestroyEpic = false,
    DestroyPetsAlreadyCollected = false,
    DestroyToysAlreadyCollected = false,
    DestroyExcessSoulShards = {
      Enabled = false,
      Value = Consts.DESTROY_EXCESS_SOUL_SHARDS_MIN
    },
    DestroySaveSpace = {
      Enabled = false,
      Value = Consts.DESTROY_SAVE_SPACE_MIN
    },

    DestroyIgnoreBattlePets = false,
    DestroyIgnoreBindsWhenEquipped = false,
    DestroyIgnoreConsumables = false,
    DestroyIgnoreCosmetic = false,
    DestroyIgnoreEquipmentSets = false,
    DestroyIgnoreGems = false,
    DestroyIgnoreGlyphs = false,
    DestroyIgnoreItemEnhancements = false,
    DestroyIgnoreMiscellaneous = false,
    DestroyIgnoreQuestItems = false,
    DestroyIgnoreReadable = false,
    DestroyIgnoreReagents = false,
    DestroyIgnoreRecipes = false,
    DestroyIgnoreSoulbound = false,
    DestroyIgnoreTradeable = false,
    DestroyIgnoreTradeGoods = false,

    -- Lists, table of itemIDs: { ["itemID"] = true }
    Inclusions = {},
    Exclusions = {},
    Destroyables = {},
    Undestroyables = {}
  }
}

-- ============================================================================
-- Events
-- ============================================================================

-- Initialize the database on player login.
EventManager:Once(E.Wow.PlayerLogin, function()
  local db = Addon.DethsDBLib(AddonName, defaults)
  setmetatable(DB, { __index = db })

  Addon:ReformatDB()

  EventManager:Fire(E.DatabaseReady)
  EventManager:Fire(E.ProfileChanged)
end)
