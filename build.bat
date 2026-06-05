@echo off
setlocal EnableExtensions

set "ROOT=%~dp0"
set "MCVER=1.12.2"
set "MVN=%ROOT%work\apache-maven-3.8.8\bin\mvn.cmd"
set "SERVER_JAR=%ROOT%Beast-Server\target\beast-%MCVER%.jar"
set "VANILLA_JAR=%ROOT%Paper\work\Minecraft\%MCVER%\%MCVER%.jar"
set "PAPERCLIP_JAR=%ROOT%work\Paperclip\assembly\target\paperclip-%MCVER%.jar"
set "FINAL_JAR=%ROOT%reaper-paperclip.jar"

if not exist "%MVN%" (
    echo Missing Maven: "%MVN%"
    exit /b 1
)

if not exist "%VANILLA_JAR%" (
    echo Missing vanilla jar!!! - "%VANILLA_JAR%"
    echo Run the normal patch/setup step first so Paper\work is populated
    exit /b 1
)

echo.
echo == Installing root parent POM ==
pushd "%ROOT%" || exit /b 1
call "%MVN%" -N install
if errorlevel 1 goto fail
popd

echo.
echo build api
pushd "%ROOT%Beast-API" || exit /b 1
call "%MVN%" -e clean install
if errorlevel 1 goto fail
popd

echo.
echo build the server
pushd "%ROOT%Beast-Server" || exit /b 1
call "%MVN%" -e clean install
if errorlevel 1 goto fail
popd

echo.
echo build the clip yo
pushd "%ROOT%work\Paperclip" || exit /b 1
call "%MVN%" package "-Dmcver=%MCVER%" "-Dpaperjar=%SERVER_JAR%" "-Dvanillajar=%VANILLA_JAR%"
if errorlevel 1 goto fail
popd

echo.
echo == Copying final jar ==
copy /Y "%PAPERCLIP_JAR%" "%FINAL_JAR%" >nul
if errorlevel 1 goto fail

echo.
echo Build success.
echo Server jar: "%SERVER_JAR%"
echo Paperclip jar: "%FINAL_JAR%"
exit /b 0

:fail
echo.
echo Build failed.
exit /b 1
