local ruinsstatues = {"ruins_statue_head", "ruins_statue_head_nogem", "ruins_statue_mage", "ruins_statue_mage_nogem"}

local GEM_SYMBOLS = {
    ["3087768268"] = "greengem",
    ["197896766"]  = "redgem",
    ["4034752757"] = "bluegem",
    ["423699515"]  = "yellowgem",
    ["3049823329"] = "orangegem",
    ["719840179"]  = "purplegem",
 }

 local GEM_NAMES = {
    greengem       = "Green Gemmed",
    redgem         = "Red Gemmed",
    bluegem        = "Blue Gemmed",
    yellowgem      = "Yellow Gemmed",
    orangegem      = "Orange Gemmed",
    purplegem      = "Purple Gemmed",
    nightmarefuel  = "Nightmare Fuel",
 }

local function GetGemName(inst)
    local swap, gemSymbol = inst.AnimState:GetSymbolOverride("swap_gem")
    local gemPrefab = gemSymbol and GEM_SYMBOLS[tostring(gemSymbol)] or "nightmarefuel"
    return GEM_NAMES[gemPrefab]
end

local function DisplayNameFn(inst)
    return GetGemName(inst).." Ancient Statue"
end

 for i,prefab in ipairs(ruinsstatues) do
    AddPrefabPostInit(prefab, function(inst)
        inst:DoTaskInTime(0, function()
            inst.nameoverride = nil
            inst.displaynamefn = DisplayNameFn
        end)
    end)
end