@echo off

rem def
rem random file GitHub repo
set r=0
rem github repo mods .zip file
set rep=0
rem launcher location 
set laun=0
rem mods folder location
set mod=0
title mc updater :) v1.0
:::  _____ ______   ________          ___  ___  ________  ________  ________  _________  _______   ________     
::: |\   _ \  _   \|\   ____\        |\  \|\  \|\   __  \|\   ___ \|\   __  \|\___   ___\\  ___ \ |\   __  \    
::: \ \  \\\__\ \  \ \  \___|        \ \  \\\  \ \  \|\  \ \  \_|\ \ \  \|\  \|___ \  \_\ \   __/|\ \  \|\  \   
:::  \ \  \\|__| \  \ \  \            \ \  \\\  \ \   ____\ \  \ \\ \ \   __  \   \ \  \ \ \  \_|/_\ \   _  _\  
:::   \ \  \    \ \  \ \  \____        \ \  \\\  \ \  \___|\ \  \_\\ \ \  \ \  \   \ \  \ \ \  \_|\ \ \  \\  \| 
:::    \ \__\    \ \__\ \_______\       \ \_______\ \__\    \ \_______\ \__\ \__\   \ \__\ \ \_______\ \__\\ _\ 
:::     \|__|     \|__|\|_______|        \|_______|\|__|     \|_______|\|__|\|__|    \|__|  \|_______|\|__|\|__|
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
                                                                                                         
if NOT EXIST d mkdir d
cd d
curl -O --ssl-no-revoke %r%
    for %%A in (randr-hash) do set server_file_size=%%~zA
echo %server_file_size%
cd ..
if not exist randr-hash (
set local_file_size=0
) else (
    for %%A in (randr-hash) do set local_file_size=%%~zA
)
if %local_file_size% equ %server_file_size% (
goto skip
) else (
goto elsefix
)
:elsefix
curl -O --ssl-no-revoke %r%
del /q /f /s "%mod%\*.*"
cd "%mod%"
curl -LJO --ssl-no-revoke %rep%
tar -xf mods.zip
goto skip

:skip
%laun%
goto eof

:eof
exit
