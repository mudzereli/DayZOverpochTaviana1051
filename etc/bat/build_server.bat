cd ..\..

del dayz_server\init\AH.sqf
del dayz_server\init\AHconfig.sqf
xcopy /Y /S /Q "..\antihack\*.sqf" "dayz_server\init"

rmdir /S /Q E:\DZSERVER\@DayZ_Epoch_Server\addons
mkdir E:\DZSERVER\@DayZ_Epoch_Server\addons

"C:\Users\mudzereli\Dropbox\Public\dayz\server\TOOLS\BinPBO Personal Edition\BinPBO.exe" "C:\Users\mudzereli\Documents\GitHub\DayZOverpochTaviana1051\dayz_server" "E:\DZSERVER\@DayZ_Epoch_Server\addons" -PREFIX "z\addons\dayz_server"

del dayz_server\init\AH.sqf
del dayz_server\init\AHconfig.sqf

cd etc\bat

REM pause