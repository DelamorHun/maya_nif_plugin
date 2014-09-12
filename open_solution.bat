@echo off
rem : Launch VS for a specific flavour of Maya

set VC="C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\VCExpress.exe"
rem set VC="C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\IDE\WDExpress.exe" 

set MAYA_VERSION=%1
set MAYA_PLATFORM=%2

if _not_%MAYA_VERSION% == _not_ goto usage
if _not_%MAYA_PLATFORM% == _not_ goto usage
if not %MAYA_PLATFORM% == win32 if not %MAYA_PLATFORM% == x64 goto usage

set MAYA_PREFSVERSION=%MAYA_VERSION%
if %MAYA_PLATFORM%==x64 set MAYA_PREFSVERSION=%MAYA_PREFSVERSION%-x64

set MAYA_LOCATION=C:\Program Files\Maya%MAYA_VERSION%
if %MAYA_PLATFORM%==win32 set MAYA_LOCATION="C:\Program Files (x86)\Maya%MAYA_VERSION%"

if %USERNAME%==rhaleblian (
	set MAYA_LOCATION=D:\Programs\Autodesk\Maya%MAYA_VERSION%
	if %MAYA_PLATFORM%==win32 set MAYA_LOCATION=D:\Programs\Autodesk\%MAYA_PLATFORM%\Maya%MAYA_VERSION%
)

echo MAYA_VERSION %MAYA_VERSION%
echo MAYA_PLATFORM %MAYA_PLATFORM%
echo MAYA_LOCATION %MAYA_LOCATION%
echo MAYA_PREFSVERSION %MAYA_PREFSVERSION%
echo.
echo Remember to set the appropriate platform in VS,
echo this launch script will not do that for you!

%VC% maya_nif_plugin.sln

goto :success

:usage
echo.
echo usage: %0 maya_version maya_platform
echo.
echo maya_version is one of: 2012 2013 2014 2015
echo maya_platform is one of: win32 x64
echo.
pause

:success
:end
