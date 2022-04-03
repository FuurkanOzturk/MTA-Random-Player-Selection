function cekilis(thePlayer, cmd, arg)
local randomPlayer = getRandomPlayer()
if getElementData(thePlayer, "account:username") == "USERNAME" then
    if not arg then
        outputChatBox("[!]#ffffff /"..cmd.." [baslat]", thePlayer, 255, 194, 14, true)    
    else    
        if arg == "baslat" then
             outputChatBox("[!] #FFFFFFÇekiliş döngüsü başlatıldı.", getRootElement(), 0, 255, 0, true)
            setTimer(function(thePlayer)
             outputChatBox("[!] #FFFFFF"..getPlayerName(randomPlayer).." çekilişi kazandı.", getRootElement(), 0, 255, 0, true)
            end, 4000, 1, thePlayer)            
        end                
    end
else
    outputChatBox ( "[!] #FFFFFFBu yetkiye sahip değilsin.", thePlayer, 0, 255, 0, true)
end
end            
addCommandHandler("cekilisbaslat", cekilis)
