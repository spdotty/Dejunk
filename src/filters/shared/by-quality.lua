local _, Addon = ...
local DB = Addon.DB
local L = Addon.Libs.L
local LE_ITEM_QUALITY_COMMON = _G.LE_ITEM_QUALITY_COMMON
local LE_ITEM_QUALITY_EPIC = _G.LE_ITEM_QUALITY_EPIC
local LE_ITEM_QUALITY_POOR = _G.LE_ITEM_QUALITY_POOR
local LE_ITEM_QUALITY_RARE = _G.LE_ITEM_QUALITY_RARE
local LE_ITEM_QUALITY_UNCOMMON = _G.LE_ITEM_QUALITY_UNCOMMON

-- Dejunker
Addon.Filters:Add(Addon.Dejunker, {
  Run = function(_, item)
    if
      (item.Quality == LE_ITEM_QUALITY_POOR and DB.Profile.sell.byQuality.poor) or
      (item.Quality == LE_ITEM_QUALITY_COMMON and DB.Profile.sell.byQuality.common) or
      (item.Quality == LE_ITEM_QUALITY_UNCOMMON and DB.Profile.sell.byQuality.uncommon) or
      (item.Quality == LE_ITEM_QUALITY_RARE and DB.Profile.sell.byQuality.rare) or
      (item.Quality == LE_ITEM_QUALITY_EPIC and DB.Profile.sell.byQuality.epic)
    then
      return "JUNK", L.REASON_SELL_BY_QUALITY_TEXT
    end

    return "PASS"
  end
})

-- Destroyer
Addon.Filters:Add(Addon.Destroyer, {
  Run = function(_, item)
    if
      (item.Quality == LE_ITEM_QUALITY_POOR and DB.Profile.destroy.byQuality.poor) or
      (item.Quality == LE_ITEM_QUALITY_COMMON and DB.Profile.destroy.byQuality.common) or
      (item.Quality == LE_ITEM_QUALITY_UNCOMMON and DB.Profile.destroy.byQuality.uncommon) or
      (item.Quality == LE_ITEM_QUALITY_RARE and DB.Profile.destroy.byQuality.rare) or
      (item.Quality == LE_ITEM_QUALITY_EPIC and DB.Profile.destroy.byQuality.epic)
    then
      return "JUNK", L.REASON_DESTROY_BY_QUALITY_TEXT
    end

    return "PASS"
  end
})
