#Persistent
#SingleInstance, force 
#Include %A_WorkingDir%\lib\ixlsearch.ahk 

EnvGet, nw, new_window
EnvGet, sendr, sr 
EnvGet, subm, sm 
EnvGet, sfor, sf

^+s::
Clipboard := 
Send ^c 
ClipWait 
thing := Clipboard 
IXLSearchSetting(thing, nw, sendr, subm, sfor)
Reload 
return 