@echo off

cd ..
git clean -xdf

cd patch
mkdir calibre

xcopy ..\src\* calibre\src /y /s /i /q

echo @echo off                         > calibre\windows.bat
echo set _ROOT=%~dp0src               >> calibre\windows.bat
echo set CALIBRE_DEVELOP_FROM=%_ROOT% >> calibre\windows.bat
echo calibre.exe                      >> calibre\windows.bat

echo #!/bin/bash                                    > calibre\linux.sh
echo ROOT=$(dirname $(findlink -f $0))             >> calibre\linux.sh
echo CALIBRE=$(which calibre)                      >> calibre\linux.sh
echo env CALIBRE_DEVELOP_FROM=$ROOT/src ${CALIBRE} >> calibre\linux.sh

7z a -t7z calibre.7z calibre\ -mx=9 -r
