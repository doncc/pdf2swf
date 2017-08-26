@echo off
echo Create by Darkbug and @Git https://github.com/doncc
echo pdf2swf
echo.
PATH C:\Program Files (x86)\SWFTools


:start
echo Default pdf2swf path is [C:\Program Files (x86)\SWFTools], Please check and then proceed to the following process(Y/N)？
set /p startyy=Please choise:
if /i {%startyy%} == {Y} goto yyc
if /i {%startyy%} == {y} goto yyc
if /i {%startyy%} == {N} goto yyn
if /i {%startyy%} == {n} goto yyn

echo The input is incorrect. Please re-enter it:
goto start
:yyc

cd /d %~dp0
set cur_dir=%cd%\*.pdf

for %%i in (%cur_dir%) do (
 	md "%cd%\%%~ni"
 	pdf2swf.exe "%%i" -o "%cd%\%%~ni\%%~ni.swf" -f -T 9 -t -s storeallcharacters -b

)

echo All files have been converted!

goto end
:yyn
goto end
:end
echo Bye! 
pause&exit










