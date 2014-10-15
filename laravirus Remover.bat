@echo off & color 2 & title lalavirus remover (developed in CHS Robotic Team)
ping -n 2 127.0.0.1>"%temp%\null"
IF EXIST "%temp%\vsasryasgr.vbs" GOTO delLocalVirus
IF NOT EXIST "%temp%\vsasryasgr.vbs" GOTO delUSBVirus

:delUSBVirus
cls
echo.
echo.
echo.
echo.
echo		(developed in CHS Robotic Team)
echo.
echo 	- Only works on one of the laravirus which was spreading in school.
echo 	- Won't work if the computer got more than one account
echo.
echo.
echo 	please enter the letter of USB drive (e.g E:\)
echo.
echo.
set /p drive=	_^> 
IF NOT EXIST "%drive%" GOTO invalid 
cls
cd /d %drive%
echo.
echo.
echo.
echo.
echo.
echo remove attributes of whole files in USB...
attrib -a -r -s -h /S /D
echo.
echo deleting the lnk and virus file in USB...
echo.
del /f /s /q *.lnk
del /f /s /q "vsasryasgr.vbs"
echo.
echo.
echo FINISHED!
echo.
echo.
echo Press any key to EXIT...
pause>"%temp%\null"
exit


:delLocalVirus
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo laravirus detected on this computer!
echo.
echo.
pause
echo.
echo cleaning...
echo.
taskkill /f /im wscript.exe
ping -n 2 127.0.0.1>"%temp%\null"
attrib -a -r -s -h "%temp%\vsasryasgr.vbs"
del /f /s /q "%temp%\vsasryasgr.vbs"
echo.
echo finished.
echo.
pause
ping -n 2 127.0.0.1>"%temp%\null"
goto delUSBVirus

:invalid
echo invalid path...
ping -n 2 127.0.0.1>"%temp%\null"
GOTO delUSBVirus
