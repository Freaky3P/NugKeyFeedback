local addonName, ns = ...

ns.MountSpellIDs = {
    [458]=true, [459]=true, [468]=true, [470]=true, [471]=true, [472]=true, [578]=true, [579]=true,
    [580]=true, [581]=true, [3363]=true, [5784]=true, [6648]=true, [6653]=true, [6654]=true, [6777]=true,
    [6896]=true, [6897]=true, [6898]=true, [6899]=true, [8394]=true, [8395]=true, [8396]=true, [8980]=true,
    [10787]=true, [10788]=true, [10789]=true, [10790]=true, [10792]=true, [10793]=true, [10795]=true, [10796]=true,
    [10798]=true, [10799]=true, [10800]=true, [10801]=true, [10802]=true, [10803]=true, [10804]=true, [10873]=true,
    [10969]=true, [13819]=true, [15779]=true, [15780]=true, [15781]=true, [16055]=true, [16056]=true, [16058]=true,
    [16059]=true, [16060]=true, [16080]=true, [16081]=true, [16082]=true, [16083]=true, [16084]=true, [17229]=true,
    [17450]=true, [17453]=true, [17454]=true, [17455]=true, [17456]=true, [17458]=true, [17459]=true, [17460]=true,
    [17461]=true, [17462]=true, [17463]=true, [17464]=true, [17465]=true, [17481]=true, [18363]=true, [18989]=true,
    [18990]=true, [18991]=true, [18992]=true, [22717]=true, [22718]=true, [22719]=true, [22720]=true, [22721]=true,
    [22722]=true, [22723]=true, [22724]=true, [23161]=true, [23214]=true, [23219]=true, [23220]=true, [23221]=true,
    [23222]=true, [23223]=true, [23225]=true, [23227]=true, [23228]=true, [23229]=true, [23238]=true, [23239]=true,
    [23240]=true, [23241]=true, [23242]=true, [23243]=true, [23246]=true, [23247]=true, [23248]=true, [23249]=true,
    [23250]=true, [23251]=true, [23252]=true, [23338]=true, [23509]=true, [23510]=true, [24242]=true, [24252]=true,
    [24576]=true, [25675]=true, [25858]=true, [25859]=true, [25863]=true, [25953]=true, [26054]=true, [26055]=true,
    [26056]=true, [26655]=true, [26656]=true, [28828]=true, [29059]=true, [30174]=true, [31700]=true, [32235]=true,
    [32239]=true, [32240]=true, [32242]=true, [32243]=true, [32244]=true, [32245]=true, [32246]=true, [32289]=true,
    [32290]=true, [32292]=true, [32295]=true, [32296]=true, [32297]=true, [32345]=true, [33630]=true, [33660]=true,
    [34068]=true, [34406]=true, [34407]=true, [34767]=true, [34769]=true, [34790]=true, [34795]=true, [34896]=true,
    [34897]=true, [34898]=true, [34899]=true, [35018]=true, [35020]=true, [35022]=true, [35025]=true, [35027]=true,
    [35028]=true, [35710]=true, [35711]=true, [35712]=true, [35713]=true, [35714]=true, [36702]=true, [37015]=true,
    [39315]=true, [39316]=true, [39317]=true, [39318]=true, [39319]=true, [39450]=true, [39798]=true, [39800]=true,
    [39801]=true, [39802]=true, [39803]=true, [40192]=true, [40212]=true, [41252]=true, [41513]=true, [41514]=true,
    [41515]=true, [41516]=true, [41517]=true, [41518]=true, [42667]=true, [42668]=true, [42673]=true, [42679]=true,
    [42776]=true, [42777]=true, [43688]=true, [43810]=true, [43880]=true, [43883]=true, [43899]=true, [43900]=true,
    [43927]=true, [44140]=true, [44151]=true, [44153]=true, [44317]=true, [44655]=true, [44744]=true, [44824]=true,
    [44825]=true, [44827]=true, [45177]=true, [46197]=true, [46199]=true, [46628]=true, [47037]=true, [47977]=true,
    [48025]=true, [48027]=true, [48778]=true, [48954]=true, [49193]=true, [49322]=true, [49378]=true, [49379]=true,
    [49908]=true, [50281]=true, [50869]=true, [50870]=true, [51412]=true, [51960]=true, [54726]=true, [54727]=true,
    [54729]=true, [54753]=true, [54903]=true, [55164]=true, [55173]=true, [55293]=true, [55531]=true, [58615]=true,
    [58819]=true, [58961]=true, [58983]=true, [58997]=true, [58999]=true, [59100]=true, [59567]=true, [59568]=true,
    [59569]=true, [59570]=true, [59571]=true, [59572]=true, [59573]=true, [59650]=true, [59785]=true, [59788]=true,
    [59791]=true, [59793]=true, [59797]=true, [59799]=true, [59802]=true, [59804]=true, [59961]=true, [59976]=true,
    [59996]=true, [60002]=true, [60021]=true, [60024]=true, [60025]=true, [60099]=true, [60114]=true, [60116]=true,
    [60118]=true, [60119]=true, [60120]=true, [60136]=true, [60140]=true, [60424]=true, [61229]=true, [61230]=true,
    [61289]=true, [61294]=true, [61309]=true, [61423]=true, [61424]=true, [61425]=true, [61447]=true, [61451]=true,
    [61465]=true, [61466]=true, [61467]=true, [61469]=true, [61470]=true, [61666]=true, [61667]=true, [61996]=true,
    [61997]=true, [62048]=true, [63232]=true, [63635]=true, [63636]=true, [63637]=true, [63638]=true, [63639]=true,
    [63640]=true, [63641]=true, [63642]=true, [63643]=true, [63796]=true, [63844]=true, [63956]=true, [63963]=true,
    [64656]=true, [64657]=true, [64658]=true, [64659]=true, [64681]=true, [64731]=true, [64749]=true, [64761]=true,
    [64762]=true, [64927]=true, [64977]=true, [64992]=true, [64993]=true, [65439]=true, [65637]=true, [65638]=true,
    [65639]=true, [65640]=true, [65641]=true, [65642]=true, [65643]=true, [65644]=true, [65645]=true, [65646]=true,
    [65917]=true, [66087]=true, [66088]=true, [66090]=true, [66091]=true, [66122]=true, [66123]=true, [66124]=true,
    [66846]=true, [66847]=true, [66906]=true, [66907]=true, [67336]=true, [67466]=true, [68056]=true, [68057]=true,
    [68187]=true, [68188]=true, [68768]=true, [68769]=true, [68930]=true, [69395]=true, [69820]=true, [69826]=true,
    [71342]=true, [71810]=true, [72286]=true, [72807]=true, [72808]=true, [73313]=true, [73629]=true, [73630]=true,
    [74854]=true, [74855]=true, [74856]=true, [74918]=true, [75207]=true, [75596]=true, [75614]=true, [75617]=true,
    [75618]=true, [75619]=true, [75620]=true, [75953]=true, [75973]=true, [76153]=true, [79361]=true,
}

ns.trackedNameToID = {}
ns.trackedIDs = {}
ns.lastItemUseTime = 0
ns.onItemUsed = nil

ns.pending = nil
ns.onItemUsed = nil
ns.showMirror = nil
local lastTex, lastTexTime = nil, 0

function ns.OnItemUse(texture, source, cdStart, cdDur, isActionSource, isEquip)
    if not texture then return end
    local now = GetTime()

    if texture == lastTex and (now - lastTexTime) < 0.25 then
        return
    end
    lastTex, lastTexTime = texture, now
    ns.lastItemUseTime = now

    if not isActionSource and ns.showMirror then
        ns.showMirror(texture, cdStart, cdDur)
    end
    ns.pending = { texture = texture, t = now, isEquip = isEquip }
end

function ns.ConfirmItemUse()
    local p = ns.pending
    if p and (GetTime() - p.t) < 20 then
        ns.pending = nil
        return p.texture
    end
    return nil
end

function ns.ClearPending()
    ns.pending = nil
end

function ns.ConfirmEquipUse()
    local p = ns.pending
    if p and p.isEquip and (GetTime() - p.t) < 1.5 then
        ns.pending = nil
        return p.texture
    end
    return nil
end

function ns.BuildSpellData()
    wipe(ns.trackedNameToID)
    wipe(ns.trackedIDs)
    local num = (GetNumCompanions and GetNumCompanions("MOUNT")) or 0
    for i = 1, num do
        local _, _, sid = GetCompanionInfo("MOUNT", i)
        if sid then
            ns.trackedIDs[sid] = true
            local n = GetSpellInfo(sid)
            if n and not ns.trackedNameToID[n] then ns.trackedNameToID[n] = sid end
        end
    end
    for sid in pairs(ns.MountSpellIDs) do
        ns.trackedIDs[sid] = true
        local n = GetSpellInfo(sid)
        if n and not ns.trackedNameToID[n] then ns.trackedNameToID[n] = sid end
    end
end

function ns.ResolveSpell(spellName)
    if not spellName then return nil, nil end
    local id
    local link = GetSpellLink(spellName)
    if link then id = tonumber(link:match("spell:(%d+)")) end
    if not id then id = ns.trackedNameToID[spellName] end
    local texture
    if id then texture = select(3, GetSpellInfo(id)) end
    if not texture then texture = select(3, GetSpellInfo(spellName)) end
    return id, texture
end

local itemHooksInstalled = false
function ns.SetupItemHooks()
    if itemHooksInstalled then return end
    itemHooksInstalled = true

    local transferFrames = { "MerchantFrame", "BankFrame", "MailFrame", "TradeFrame",
        "AuctionFrame", "GuildBankFrame" }
    local function transferWindowOpen()
        for i = 1, #transferFrames do
            local f = _G[transferFrames[i]]
            if f and f.IsShown and f:IsShown() then return true end
        end
        return false
    end
    ns.transferWindowOpen = transferWindowOpen

    if UseContainerItem then
        hooksecurefunc("UseContainerItem", function(bag, slot)
            if bag and slot and not transferWindowOpen() then
                local cs, cd = GetContainerItemCooldown(bag, slot)
                local link = GetContainerItemLink(bag, slot)
                ns.OnItemUse((GetContainerItemInfo(bag, slot)), "UseContainerItem", cs, cd, false,
                    link and IsEquippableItem(link))
            end
        end)
    end

    if UseInventoryItem then
        hooksecurefunc("UseInventoryItem", function(slot)
            if slot then
                local cs, cd = GetInventoryItemCooldown("player", slot)
                ns.OnItemUse(GetInventoryItemTexture("player", slot), "UseInventoryItem", cs, cd, false)
            end
        end)
    end

    if UseAction then
        hooksecurefunc("UseAction", function(slot)
            local t, id = GetActionInfo(slot)
            if t == "item" then
                ns.OnItemUse(GetActionTexture(slot), "UseAction", nil, nil, true,
                    id and IsEquippableItem(id))
            end
        end)
    end

    if UseItemByName then
        hooksecurefunc("UseItemByName", function(name)
            if name then
                local cs, cd
                if GetItemCooldown then cs, cd = GetItemCooldown(name) end
                ns.OnItemUse(GetItemIcon(name), "UseItemByName", cs, cd, false, IsEquippableItem(name))
            end
        end)
    end

    if CallCompanion then
        hooksecurefunc("CallCompanion", function(ctype, index)
            if ctype and index then
                local _, _, spellID, icon = GetCompanionInfo(ctype, index)
                local cs, cd
                if spellID then cs, cd = GetSpellCooldown(spellID) end
                ns.OnItemUse(icon, "CallCompanion", cs, cd, false)
            end
        end)
    end

    if ContainerFrameItemButton_OnClick then
        hooksecurefunc("ContainerFrameItemButton_OnClick", function(self, button)
            if button ~= "RightButton" then return end
            if IsModifierKeyDown() then return end
            if CursorHasItem() then return end
            if transferWindowOpen() then return end
            local parent = self.GetParent and self:GetParent()
            local bag = parent and parent.GetID and parent:GetID()
            local slot = self.GetID and self:GetID()
            if not (bag and slot) then return end
            local tex, _, _, _, _, _, link = GetContainerItemInfo(bag, slot)
            if not tex then return end

            if link and GetItemSpell and not GetItemSpell(link) and not IsEquippableItem(link) then return end
            local cs, cd = GetContainerItemCooldown(bag, slot)
            ns.OnItemUse(tex, "ContainerBtnClick", cs, cd, false, link and IsEquippableItem(link))
        end)
    end
end
