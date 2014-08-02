cd ..\..

rmdir /S /Q dayz_mission\addons\dzap
rmdir /S /Q dayz_mission\overwrites\click_actions
xcopy /Y /S /Q "C:\Users\mudzereli\Documents\GitHub\DayZ-Addon-Pack\*.sqf" "dayz_mission\"
xcopy /Y /S /Q "C:\Users\mudzereli\Documents\GitHub\DayZ-Addon-Pack\addons\*" "dayz_mission\addons"
xcopy /Y /S /Q "C:\Users\mudzereli\Documents\GitHub\DayZ-Addon-Pack\overwrites\*" "dayz_mission\overwrites"

rmdir /S /Q dayz_mission\custom
mkdir dayz_mission\custom
xcopy /Y /S /Q "C:\Users\mudzereli\Documents\GitHub\SnapPro\custom\*" "dayz_mission\custom"

rmdir /S /Q E:\DZSERVER\MPMissions\DayZ_Epoch_13.Tavi
mkdir E:\DZSERVER\MPMissions\DayZ_Epoch_13.Tavi
xcopy /Y /S /Q "dayz_mission\*" "E:\DZSERVER\MPMissions\DayZ_Epoch_13.Tavi\"

cd etc\bat

REM pause