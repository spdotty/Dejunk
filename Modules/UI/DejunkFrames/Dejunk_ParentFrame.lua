-- Dejunk_ParentFrame: displays the TitleFrame and a child frame.

local AddonName, DJ = ...

-- Libs
local L = LibStub('AceLocale-3.0'):GetLocale(AddonName)

-- Dejunk
local ParentFrame = DJ.DejunkFrames.ParentFrame

local Colors = DJ.Colors
local Consts = DJ.Consts
local Tools = DJ.Tools
local FrameFactory = DJ.FrameFactory
local TitleFrame = DJ.DejunkFrames.TitleFrame

-- Variables
local currentChild = nil -- currently displayed child frame

-- ============================================================================
--                          Frame Lifecycle Functions
-- ============================================================================

function ParentFrame:OnInitialize()
  local frame = self.Frame

  frame:SetColors(Colors.ParentFrame)
  frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
  frame:SetFrameStrata("HIGH")
  frame:SetFrameLevel(5)

  frame:SetClampedToScreen(true)
  frame:EnableMouse(true)
	frame:SetMovable(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
	frame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
  frame:SetScript("OnUpdate", function()
    if DJ.Core:IsBusy() then ParentFrame:Disable() else ParentFrame:Enable() end
  end)

	table.insert(UISpecialFrames, frame:GetName()) -- Makes the frame hide when Esc is pressed
	frame:Hide()

  TitleFrame:Initialize()
  TitleFrame:SetPoint({"TOPLEFT", frame})
  TitleFrame:SetParent(frame)
end

function ParentFrame:OnShow()
  self:Resize()
end

function ParentFrame:OnHide()
  DJ.Destroyer:QueueAutoDestroy()
end

-- Hook Enable
function ParentFrame:OnEnable()
  TitleFrame:Enable()

  if currentChild then
    currentChild:Enable() end
end

function ParentFrame:OnDisable()
  TitleFrame:Disable()

  if currentChild then
    currentChild:Disable() end
end

function ParentFrame:OnRefresh()
  TitleFrame:Refresh()

  if currentChild then
    currentChild:Refresh() end
end

function ParentFrame:OnResize()
  --[[ Resize Algorithm
    1. Resize each child frame
    2. Get longest width of child frames (max() calls between child frames)
    3. Get total height of child frames (sum of all child frame heights)
    4. SetWidth on all child frames to the width calculated in step 2.
    5. Set width and height on parent frame as found in step 2 and 3.
  ]]

  local newWidth = 0
  local newHeight = 0

  local childFrames = { TitleFrame, currentChild }

  for i, childFrame in ipairs(childFrames) do
    childFrame:Resize()
    newWidth = max(newWidth, childFrame:GetWidth())
    newHeight = (newHeight + childFrame:GetHeight() + Tools:Padding())
  end

  self:SetWidth(newWidth)
  self:SetHeight(newHeight)
end

-- ============================================================================
--                           Getters and Setters
-- ============================================================================

function ParentFrame:OnSetWidth(width)
  TitleFrame:SetWidth(width)

  if currentChild then
    currentChild:SetWidth(width) end
end

-- Gets the current child being displayed.
-- @return - the current child
function ParentFrame:GetCurrentChild()
  return currentChild
end

-- Sets the frame to be displayed below the TitleFrame.
-- @param newChild - a Dejunk frame to be set as the new child
-- @param callback - a function to be called once the new child has been set
function ParentFrame:SetCurrentChild(newChild, callback)
  assert(self.Initialized)
  assert(newChild ~= nil, "newChild cannot be nil")

  if currentChild then currentChild:Hide() end
  currentChild = newChild

  if not currentChild.Initialized then
    currentChild:Initialize()
    currentChild:Resize() -- NOTE: This is a band-aid to prevent certain UI glitches.
  end

  if self.Enabled then currentChild:Enable() else currentChild:Disable() end

  currentChild:SetParent(self.Frame)
  currentChild:SetPoint({"TOPLEFT", TitleFrame.Frame, "BOTTOMLEFT", 0, -Tools:Padding()})
  currentChild:Show()

  if callback then callback() end

  self:Resize()
end
