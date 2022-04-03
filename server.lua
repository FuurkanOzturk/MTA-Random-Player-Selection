function event(thePlayer, cmd, arg)
local randomPlayer = getRandomPlayer()
if getElementData(thePlayer, "account:username") == "USERNAME" then
    if not arg then
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
    outputChatBox ( "[!] #FFFFFFYou don't have this authority.", thePlayer, 0, 255, 0, true)
end
end            
addCommandHandler("randomevent", event)
