rem : Launch VS for this specific flavour of Maya

set MAYA_VERSION=2014
set MAYA_PLATFORM=x64
set VC="C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\VCExpress.exe"

set MAYA_LOCATION=D:\Programs\Autodesk\Maya%MAYA_VERSION%
set MAYA_PREFSVERSION=%MAYA_VERSION%-%MAYA_PLATFORM%
%VC% maya_nif_plugin.sln