AddEventHandler('chatMessage', function(source, n, message)
    local args = stringsplit(message, ' ')
    if (args[1] == "/regveh") then
        local first = table.remove(args, 2)
        local last = table.remove(args, 2)

        if (first ~= nil and last ~= nil) then
            TriggerClientEvent('chatMessage', -1, 'Vehicle Reg', {0, 0, 0}, '('..n..') Plate: '..first..' Flags: '..last)
        end

        CancelEvent()
   end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

