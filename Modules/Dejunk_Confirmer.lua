-- Dejunk_Confirmer: confirms that items have been either dejunked or destroyed and prints messages.

local AddonName, DJ = ...

-- Libs
local L = LibStub('AceLocale-3.0'):GetLocale(AddonName)

-- Upvalues
local assert, remove = assert, table.remove
local GetCoinTextureString = GetCoinTextureString

-- Dejunk
local Confirmer = DJ.Confirmer

local Core = DJ.Core
local DejunkDB = DJ.DejunkDB
local Tools = DJ.Tools

-- Dejunker variables
local dejunking = false
local finalDejunkerMessageQueued = false
local dejunkedItems = {}
local dejunkCount = 0
local dejunkProfit = 0

-- Destroying variables
local destroying = false
local finalDestroyerMessageQueued = false
local destroyedItems = {}
local destroyCount = 0
local destroyLoss = 0

-- ============================================================================
--                               Confirmer Frame
-- ============================================================================

do
  local frame = CreateFrame("Frame", AddonName.."ConfirmerFrame")

  function frame:OnUpdate(elapsed)
    -- Confirm dejunked items
    if (#dejunkedItems > 0) then
      Confirmer:ConfirmNextDejunkedItem()
    elseif (#dejunkedItems == 0) and finalDejunkerMessageQueued then
      Confirmer:PrintFinalDejunkerMessage()
    end

    -- Confirm destroyed items
    if (#destroyedItems > 0) then
      Confirmer:ConfirmNextDestroyedItem()
    elseif (#destroyedItems == 0) and finalDestroyerMessageQueued then
      Confirmer:PrintFinalDestroyerMessage()
    end
  end

  frame:SetScript("OnUpdate", frame.OnUpdate)
end

-- ============================================================================
--                         Dejunker Related Functions
-- ============================================================================

function Confirmer:OnDejunkerStart()
  assert(not dejunking)
  assert(not finalDejunkerMessageQueued)
  dejunking = true
  dejunkCount = 0
  dejunkProfit = 0
end

function Confirmer:OnItemDejunked(item)
  assert(dejunking)
  dejunkedItems[#dejunkedItems+1] = item
end

function Confirmer:ConfirmNextDejunkedItem()
  local item = remove(dejunkedItems, 1)
  if not item then return end

  local bagItem = Tools:GetItemFromBag(item.Bag, item.Slot)
  if bagItem and (bagItem.ItemID == item.ItemID) and (bagItem.Quantity == item.Quantity) then
    if bagItem.Locked then -- Item probably being sold, add it back to list and try again later
      dejunkedItems[#dejunkedItems+1] = item
    else -- Item is still in bags, so it may not have sold
      Core:Print(format(L.MAY_NOT_HAVE_SOLD_ITEM, item.ItemLink))
    end

    return
  end

  -- Bag and slot is empty, so the item should have sold
  if (item.Quantity == 1) then
    Core:PrintVerbose(format(L.SOLD_ITEM_VERBOSE, item.ItemLink))
  else
    Core:PrintVerbose(format(L.SOLD_ITEMS_VERBOSE, item.ItemLink, item.Quantity))
  end

  dejunkProfit = dejunkProfit + (item.Price * item.Quantity)
end

function Confirmer:PrintFinalDejunkerMessage()
  assert(finalDejunkerMessageQueued)
  finalDejunkerMessageQueued = false

  if (dejunkProfit > 0) then
    Core:Print(format(L.SOLD_YOUR_JUNK, GetCoinTextureString(totalProfit)))
  end
end

function Confirmer:OnDejunkerEnd()
  assert(dejunking)
  dejunking = false
  finalDejunkerMessageQueued = true
end

-- ============================================================================
--                         Destroyer Related Functions
-- ============================================================================

function Confirmer:OnDestroyerStart()
  assert(not destroying)
  assert(not finalDestroyerMessageQueued)
  destroying = true
  destroyCount = 0
  destroyLoss = 0
end

function Confirmer:OnItemDestroyed(item)
  assert(destroying)
  destroyedItems[#destroyedItems+1] = item
end

function Confirmer:ConfirmNextDestroyedItem()
  local item = remove(destroyedItems, 1)
  if not item then return end

  local bagItem = Tools:GetItemFromBag(item.Bag, item.Slot)
  if bagItem and (bagItem.ItemID == item.ItemID) and (bagItem.Quantity == item.Quantity) then
    if bagItem.Locked then -- Item probably being destroyed, add it back to list and try again later
      destroyedItems[#destroyedItems+1] = item
    else -- Item is still in bags, so it may not have been destroyed
      Core:Print(format(L.MAY_NOT_HAVE_DESTROYED_ITEM, item.ItemLink))
    end

    return
  end

  -- Bag and slot is empty, so the item should have been destroyed
  if (item.Quantity == 1) then
    Core:PrintVerbose(format(L.DESTROYED_ITEM_VERBOSE, item.ItemLink))
  else
    Core:PrintVerbose(format(L.DESTROYED_ITEMS_VERBOSE, item.ItemLink, item.Quantity))
  end

  destroyCount = (destroyCount + item.Quantity)
  destroyLoss = destroyLoss + (item.Price * item.Quantity)
end

function Confirmer:PrintFinalDestroyerMessage()
  assert(finalDestroyerMessageQueued)
  finalDestroyerMessageQueued = false

  -- Show basic message if not printing verbose
  if not DejunkDB.SV.VerboseMode then
    if (destroyCount == 1) then
      Core:Print(L.DESTROYED_ITEM)
    else
      Core:Print(format(L.DESTROYED_ITEMS, destroyCount))
    end
  end
end

function Confirmer:OnDestroyerEnd()
  assert(destroying)
  destroying = false
  finalDestroyerMessageQueued = true
end
