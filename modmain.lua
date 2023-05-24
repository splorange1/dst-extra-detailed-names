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
    greengem       = "Green Gem",
    redgem         = "Red Gem",
    bluegem        = "Blue Gem",
    yellowgem      = "Yellow Gem",
    orangegem      = "Orange Gem",
    purplegem      = "Purple Gem",
    nightmarefuel  = "Nightmare Fuel",
 }

 local setGemType = function(inst)
    local swap, gemSymbol = inst.AnimState:GetSymbolOverride("swap_gem")
    local gemPrefab = gemSymbol and GEM_SYMBOLS[tostring(gemSymbol)] or "nightmarefuel"
    inst:SetPrefabNameOverride(gemPrefab)
 end

 for i,prefab in ipairs(ruinsstatues) do
    AddPrefabPostInit(prefab, function(inst)
        setGemType(inst)
    end)
end