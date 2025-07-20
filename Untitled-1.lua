                      :::!~!!!!!:.
                  .xUHWH!! !!?M88WHX:.
                .X*#M@$!!  !X!M$$$$$$WWx:.
               :!!!!!!?H! :!$!$$$$$$$$$$8X:
              !!~  ~:~!! :~!$!#$$$$$$$$$$8X:
             :!~::!H!&lt;   ~.U$X!?R$$$$$$$$MM!
             ~!~!!!!~~ .:XW$$$U!!?$$$$$$RMM!
               !:~~~ .:!M"T#$$$$WX??#MRRMMM!
               ~?WuxiW*`   `"#$$$$8!!!!??!!!
             :X- M$$$$       `"T#$T~!8$WUXU~
            :%`  ~#$$$m:        ~!~ ?$$$$$$
          :!`.-   ~T$$$$8xx.  .xWW- ~""##*"
.....   -~~:&lt;` !    ~?T#$$@@W@*?$$      /`
W$@@M!!! .!~~ !!     .:XUW$W!~ `"~:    :
#"~~`.:x%`!!  !H:   !WM$$$$Ti.: .!WUn+!`
:::~:!!`:X~ .: ?H.!u "$$$B$$$!W:U!T$$M~
.~~   :X@!.-~   ?@WTWo("*$$$W$TH$! `
Wi.~!X$?!-~    : ?$$$B$Wu("**$RM!
$R@i.~~ !     :   ~$$$$$B$$en:``
?MXT@Wx.~    :     ~"##*$$$$M~

-- Full AK-47 Rust Spray Pattern Script New Gen 
-- Requires Logitech G Hub
-- Hold Right Click (ADS) + Left Click (Fire) to activate
-- Press Scroll Lock to toggle script ON/OFF 

local enabled = false
local sprayPattern = {
    {x=0, y=5}, {x=1, y=5}, {x=-1, y=5}, {x=2, y=6},
    {x=-2, y=6}, {x=2, y=7}, {x=-2, y=7}, {x=2, y=8},
    {x=-2, y=8}, {x=3, y=9}, {x=-3, y=9}, {x=4, y=10},
    {x=-4, y=10}, {x=4, y=11}, {x=-4, y=11}, {x=5, y=12},
    {x=-5, y=12}, {x=6, y=13}, {x=-6, y=13}, {x=6, y=14},
    {x=-6, y=14}, {x=6, y=14}, {x=-6, y=14}, {x=6, y=14},
    {x=-6, y=14}, {x=6, y=14}, {x=-6, y=14}, {x=6, y=14},
    {x=-6, y=14}, {x=0, y=0}
}
local delay = 100  -- ms between shots

function OnEvent(event, arg)
    if event == "MOUSE_BUTTON_PRESSED" and arg == 3 then -- Scroll Lock to toggle
        enabled = not enabled
        if enabled then
            OutputLogMessage("AK Recoil Script ENABLED\n")
        else
            OutputLogMessage("AK Recoil Script DISABLED\n")
        end
    end

    if enabled and IsMouseButtonPressed(1) and IsMouseButtonPressed(2) then
        for i = 1, #sprayPattern do
            if not IsMouseButtonPressed(1) then break end
            MoveMouseRelative(sprayPattern[i].x, sprayPattern[i].y)
            Sleep(delay)
        end
    end
end