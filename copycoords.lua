-- This is the code.. You do not NEED to touch this!
-- This is the code.. You do not NEED to touch this!
-- This is the code.. You do not NEED to touch this!

-- Do not edit and republish.. Thanks!


RegisterCommand("copyCoords", function(source, args)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)

    local formatType = tonumber(args[1])

    if not formatType then
        TriggerEvent('chat:addMessage', {
            args = { "^1Usage:^0 /copyCoords [1=regular | 2=vector4 | 3=vector3 | 4=config]" }
        })
        return
    end

    local formatted

    if formatType == 1 then
        formatted = string.format("%.2f, %.2f, %.2f, %.2f",
            coords.x, coords.y, coords.z, heading)

    elseif formatType == 2 then
        formatted = string.format("vector4(%.2f, %.2f, %.2f, %.2f)",
            coords.x, coords.y, coords.z, heading)

    elseif formatType == 3 then
        formatted = string.format("vector3(%.2f, %.2f, %.2f)",
            coords.x, coords.y, coords.z)

    elseif formatType == 4 then
        formatted = string.format(
            "{ label = \"New Spawn\", coords = vector4(%.2f, %.2f, %.2f, %.2f) },",
            coords.x, coords.y, coords.z, heading
        )
    else
        TriggerEvent('chat:addMessage', {
            args = { "^1Invalid type. Use 1-4.^0" }
        })
        return
    end

    SendNUIMessage({
        action = "copy",
        text = formatted
    })

    TriggerEvent('chat:addMessage', {
        args = { "^2Copied to clipboard:^0 " .. formatted }
    })
end)