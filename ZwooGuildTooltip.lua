local frame = CreateFrame("FRAME", "GuildFrame");
frame:RegisterEvent("UPDATE_MOUSEOVER_UNIT");

local function ShowGuildInTooltip()
    if UnitIsPlayer("mouseover") then
        local unitGuild, unitRank = GetGuildInfo("mouseover")
        if unitGuild and unitRank then
            if UnitIsInMyGuild("mouseover") then
                GameTooltip:AddLine(unitRank .. " of <" .. unitGuild .. ">", 1, 1, 1)
            else
                GameTooltip:AddLine("<" .. unitGuild .. ">", 1, 1, 1)
            end
            GameTooltip:Show();
        end
    end
end

frame:SetScript("OnEvent", ShowGuildInTooltip);
