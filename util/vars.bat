set version=trunk
if "%1"=="65" set version=6.5.0
if "%1"=="64" set version=6.4.0


echo version is %version% 
set IA_PATH_AGENTS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents
set IA_PATH_AGENTS_WINDOWS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\win64\
set IA_PATH_AGENTS_AIX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\aix-ppc64\
set IA_PATH_AGENTS_HPUX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\hpux-ia64\
set IA_PATH_AGENTS_LINUX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\linux64\
set IA_PATH_AGENTS_SOLARIS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\solaris-sparc64\
set IA_PATH_SERVER_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\server\
set IA_PATH_STATIC_RESOURCES=C:\Src\EMC\DPA\%version%\installer\server\create\create-dell\src\main\resources

set AGENTS_WINDOWS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\win64\
set AGENTS_AIX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\aix-ppc64\
set AGENTS_HPUX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\hpux-ia64\
set AGENTS_LINUX_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\linux64\
set AGENTS_SOLARIS_SVN_ROOT=C:\Src\EMC\DPA\%version%\installer\agents\layout\target\solaris-sparc64\

