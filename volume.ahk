#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;sound controls
#F9::setVolume("-2")        ;lower volume by 10%
#F10::setVolume("+2")        ;raise volume by 10%
^#F9::setVolume("0")        ;set volume to minimum
#z::
	toggle:=!toggle 

SetVolume(whatvolume){
    soundset, %whatvolume%
    soundplay, *-1
}


if toggle
{
		
	run nircmd setdefaultsounddevice Headset (Realtek High Definition Audio)
}
else
{

	run nircmd setdefaultsounddevice Speakers (Realtek High Definition Audio)
}
Return



