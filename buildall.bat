rem : Build all configurations. Run under a VS command prompt.

msbuild niflib\niflib.sln /p:configuration="release - dll" /p:platform=win32

set MAYA_LOCATION=d:\programs\autodesk\win32\maya2012
set MAYA_PREFSVERSION=2012
msbuild maya_nif_plugin.sln /p:configuration=release /p:platform=win32
set MAYA_LOCATION=d:\programs\autodesk\win32\maya2013
set MAYA_PREFSVERSION=2013
msbuild maya_nif_plugin.sln /p:configuration=release /p:platform=win32

rem : This order is important, niflib overwrites .lib when building either platform.
msbuild niflib\niflib.sln /p:configuration="release - dll" /p:platform=x64

set MAYA_LOCATION=d:\programs\autodesk\maya2012
set MAYA_PREFSVERSION=2012-x64
msbuild maya_nif_plugin.sln /p:configuration=release /p:platform=x64
set MAYA_LOCATION=d:\programs\autodesk\maya2013
set MAYA_PREFSVERSION=2013-x64
msbuild maya_nif_plugin.sln /p:configuration=release /p:platform=x64
set MAYA_LOCATION=d:\programs\autodesk\maya2014
set MAYA_PREFSVERSION=2014-x64
msbuild maya_nif_plugin.sln /p:configuration=release /p:platform=x64
set MAYA_LOCATION=d:\programs\autodesk\maya2015
set MAYA_PREFSVERSION=2015-x64
msbuild maya_nif_plugin.sln /p:configuration=release /p:platform=x64