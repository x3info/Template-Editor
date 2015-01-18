@echo off
title HTML Template Editor by X3info.com

if not exist "Template" goto INSTALL
echo Please wait...
goto START
:START
title Create Template - X3info
color 3f
cd Template
cls
set /p tname=Enter Template Name: 
if %tname%==cmd goto CMD
if %tname%==command goto CMD
if %tname%==edit goto EDIT
if %tname%==EDIT goto EDIT
if %tname%==del goto DELETE
if %tname%==delete goto DELETE
if %tname%==DEL goto DELETE
if %tname%==DELETE goto DELETE
if %tname%==help goto HELP
if %tname%==HELP goto HELP
if %tname%==exit goto EXIT
if %tname%==EXIT goto EXIT
if %tname%==x3 goto CREDIT
if %tname%==X3 goto CREDIT
if %tname%==WHO goto CREDIT
if %tname%==who goto CREDIT
if %tname%==about goto CREDIT
if %tname%==ABOUT goto CREDIT
if exist %tname% goto EXIST

md "%tname%"
cd %tname%
echo ^<!DOCTYPE html^> > index.html
echo ^<html^> >> index.html
echo ^<head^> >> index.html
echo ^<title^> %tname% ^</title^> >> index.html
echo ^<link rel="stylesheet" href="style/style.css" type="text/css" /^> >> index.html
echo ^</head^> >> index.html
echo ^<body^> >> index.html
echo YOUR CODE HERE.... >> index.html
echo ^</body^> >> index.html
echo ^</html^> >> index.html
md style
cd style
echo Blank for Security Purpose > index.html
echo www.x3info.com >> index.html
echo Style Sheet for %tname% > style.css
start style.css
echo.
md images
cd images
echo Blank for Security Purpose > index.html
echo www.x3info.com >> index.html
cd..
cd..
start index.html
echo Started
cls
cd..
echo %tname% Created!
echo.
echo Your file on Notepade++
timeout 5
goto START

:INSTALL
md Template
echo Instalation Ready!
echo.
echo. Credit Jafran Ahmed
ping localhost -n 3 > nul
goto START

:HELP
cls
title HELP MENU 
echo                               ** HELP MENU **
echo.
echo 1. To Create a new Template Just write a name that will automatically 
echo    generate it to folder and load required files and then it will allow
echo    to open html and css files with your text editor . 
echo.
echo 2. You must have allow your HTML and CSS files to be opened with a 
echo    text editor . Notepad++ is recommended
echo.
echo 3. To Delete an item just type del and hit enter . 
echo    Then Delete Mode will be activated . Then type your template name to remove
echo    type exit and hit enter to Exit from Delete Mode
echo.
echo 4. To Edit an item just type edit and hit enter . 
echo    Then Edit Mode will be activated . Then type your template name to open it
echo    type exit and hit enter to Exit from Edit Mode
echo.
echo 5. To get Help just type help and hit enter . 
echo.
echo 6. To get all command list just type command or cmd, it will show you list
echo.
echo.
echo    For more furthure help please feel free to contact me 
echo    on facebook fb/IamJafran or contact@x3info.com
pause > nul
goto START


:EXIST
cls
echo   Sorry this name is already being used for another template!
echo.  First Delete that and then try again .  
echo.
echo   Okay!
pause > nul
goto START

:CREDIT
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo			      THIS TOOLS IS MADE BY JAFRAN AHMED
echo			      Founder of Eso Coding Shikhi
echo.
echo   		      Facebook: facebook.com/iamjafran
echo		  	      Email: iamjafran@outlook.com

pause > nul
goto START

:EXIT
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo 				Thanks for using me!
echo					  www.x3info.com
echo.
ping localhost -n 2 > nul
exit



:DELETE
cls
goto DELETENOW
:DELETENOW
color 4f
title Delete Mode Activated!
echo 			** Delete Mode Activated **
echo.
set /p dname=Enter Template Name to Delete: 
if %dname%==show goto SHOW
if %dname%==SHOW goto SHOW
if %dname%==exit goto START
if %dname%==EXIT goto START
if not exist %dname% cls&&echo Not Exist!&&goto DELETENOW
rd %dname% /s /q 
cls
echo %dname% deleted successfully!
pause > nul
goto DELETE

:SHOW
echo All Folders are here...
echo.
echo.
dir
echo.
echo.
goto DELETENOW

:EDIT
cls
title EDIT Mode Activated!
goto ENOW
:ENOW
color 5f
echo 			** EDIT Mode Acitivated! **
echo.
set /p ename=Enter Template Name to Edit: 
if %ename%==show goto SHOWE
if %ename%==SHOW goto SHOWE
if %ename%==exit goto START
if %ename%==EXIT goto START
if not exist %ename% cls&&echo Not Exist!&&goto ENOW
cd %ename%
start index.html
cd style
start style.css
cd..
cd..
echo %ename% Opened!
pause > nul
goto EDIT

:SHOWE
echo All Folders are here...
echo.
echo.
dir
echo.
echo.
goto ENOW

:CMD
title Command List - X3info
cls
color 6f
echo				** All Command List **
echo.
echo Description  --  Command
echo.
echo 1. TO Edit - edit, EDIT
echo 2. TO Delete - del, delete, DEL, DELETE
echo 3. Help Menu - help, HELP
echo 4. Author - who, WHO, x3, X3, about, ABOUT
echo 5. Command List - command, cmd
echo 6. Show All Templates Name - show, SHOW
echo 7. Out from Delete Mode - exit
echo 8. Out from Edit Mode - exit
echo 9. End program - exit
echo.
echo.
echo Okay!
pause > nul
goto START
