@echo off

if exist "%~1\" (
	rem �t�H���_�̏ꍇ
	set FOLDER=%~1\
) else (
	set FOLDER=%~dp1
)

echo %FOLDER%
rem pause
rem �T�u�f�B���N�g��������
rem for /R %FOLDER% %%i in (*.cpp;*.h) do (
rem �J�����g�f�B���N�g���̂�
for %%i in (%FOLDER%*.cpp;%FOLDER%*.h) do (
	Call %~dp0\encode.exe "-g" %%i
)
echo �I��
pause