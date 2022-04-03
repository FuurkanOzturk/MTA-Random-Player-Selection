function event(thePlayer, cmd, arg)
local randomPlayer = getRandomPlayer() -- get random player :)
local accName = getAccountName(getPlayerAccount(thePlayer)) -- get his account name
if isObjectInACLGroup ("user."..accName, aclGetGroup("Admin") then -- Does he have access to Admin functions?
    if not arg then -- you should use the start argument
        outputChatBox("[!]#ffffff /"..cmd.." [start]", thePlayer, 255, 194, 14, true)    
    else    
        if arg == "start" then
             outputChatBox("[!] #FFFFFFRandom player selection is started.", getRootElement(), 0, 255, 0, true)
            setTimer(function(thePlayer)
             outputChatBox("[!] #FFFFFF"..getPlayerName(randomPlayer).." won the lottery.", getRootElement(), 0, 255, 0, true)
            end, 4000, 1, thePlayer)            
        end                
    end
else
    outputChatBox ( "[!] #FFFFFFYou don't have this authority.", thePlayer, 0, 255, 0, true) -- if thePlayer his not an admin.
end
end            
addCommandHandler("randomevent", event)
