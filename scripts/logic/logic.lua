function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

function getBossRef(nameRef)
    local bosses = {
        [1.0] = {"@Bosses/Armos Knights"},
        [2.0] = {"@Bosses/Lanmolas"},
        [3.0] = {"@Bosses/Moldorm"},
        [4.0] = {"@Bosses/Helmasaur King"},
        [5.0] = {"@Bosses/Arrghus"},
        [6.0] = {"@Bosses/Mothula"},
        [7.0] = {"@Bosses/Blind"},
        [8.0] = {"@Bosses/Kholdstare"},
        [9.0] = {"@Bosses/Vitreous"},
        [10.0] = {"@Bosses/Trinexx"}
    }
    stage = Tracker:FindObjectForCode(nameRef).CurrentStage
    access_lvl = 0
    -- print("if")
    if stage == 0.0 then
       access_lvl = 1
    else
       access_lvl = Tracker:FindObjectForCode(bosses[stage][1]).AccessibilityLevel
    end
    if access_lvl > 0 then
        return true
    end
    -- print("Failed Boss_check with ".. name .. "and" .. stage)
    return 0
end

function canActivateTablets()
    if Tracker:ProviderCountForCode("swordless") > 0 then
        return Tracker:ProviderCountForCode("hammer")
    else
        return Tracker:ProviderCountForCode("mastersword")
    end
end

function checkSwordless()
    if Tracker:ProviderCountForCode("swordless") > 0 then
        return 1
    else
        return Tracker:ProviderCountForCode("sword")
    end
end

function canUseMedallions()
    return checkSwordless()
end

function canRemoveCurtains()
    return checkSwordless()
end

function canClearAgaTowerBarrier()
    -- With cape, we can always get through
    if Tracker:ProviderCountForCode("cape") > 0 then
        return 1
    end
    -- Otherwise we need master sword or a hammer depending on the mode
    if Tracker:ProviderCountForCode("swordless") > 0 then
        return Tracker:ProviderCountForCode("hammer")
    else
        return Tracker:ProviderCountForCode("mastersword")
    end    
end

function gtCrystalCount()
    return checkRequirements("gt_access", "crystal")
end

function ganonCrystalCount()
    return checkRequirements("ganon_killable", "crystal")
end

function canSwim() --fake flippers
    if Tracker:FindObjectForCode("glitches").CurrentStage > 0 then
        return true
    else 
        return Tracker:ProviderCountForCode("flippers")
    end
end

function checkRequirements(reference, check_count)
    local reqCount = Tracker:ProviderCountForCode(reference)
    local count = Tracker:ProviderCountForCode(check_count)

    if count >= reqCount then
        return 1
    else
        return 0
    end
end

function canFinish()
    local goals = {
        [0] = {Tracker:ProviderCountForCode("aga2"), checkRequirements("ganon_killable", "crystal")}, --aga2 + ganon killable
        [1] = {checkRequirements("ganon_killable", "crystal")}, --ganon killable
        [2] = {Tracker:ProviderCountForCode("green_pendant"), Tracker:ProviderCountForCode("blue_pendant"), Tracker:ProviderCountForCode("red_pendant"), Tracker:ProviderCountForCode("aga1"), Tracker:ProviderCountForCode("aga2"), checkRequirements("ganon_killable", "crystal")}, --7crystal, aga1+aga2, 3pendants
        [3] = {Tracker:ProviderCountForCode("green_pendant"), Tracker:ProviderCountForCode("blue_pendant"), Tracker:ProviderCountForCode("red_pendant")}, --3 pendants
        [4] = {Tracker:ProviderCountForCode("green_pendant"), Tracker:ProviderCountForCode("blue_pendant"), Tracker:ProviderCountForCode("red_pendant"), checkRequirements("ganon_killable", "crystal")}, --pendants+ ganon killable
        [5] = {checkRequirements("triforce_pieces_needed", "triforcepieces")}, --trifoce pieces
        [6] = {checkRequirements("triforce_pieces_needed", "triforcepieces"),checkRequirements("ganon_killable", "crystal")}, --triforce pieces + ganon killabel
        [7] = {Tracker:ProviderCountForCode("icerod")} --icerod
    }
    beatable = 0

    for k,h in pairs(goals[Tracker:FindObjectForCode("goal").CurrentStage]) do
        beatable = beatable + h
        table_length = k
    end

    if beatable >= table_length then
        gomode = Tracker:FindObjectForCode("go_mode")
        return true
    else
        return false
    end
end
