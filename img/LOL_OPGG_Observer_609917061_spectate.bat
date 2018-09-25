@REM 이 파일을 이용하실 경우 꼭 아래의 출처가 표시되도록 해주세요.
@echo off
setlocal enabledelayedexpansion
echo -----------------------
echo Spectate by op.gg
echo -----------------------
set RADS_PATH=
echo ===================
echo KR: 게임 경로를 찾는 중입니다.
echo EN: Finding other LOL directory path..
echo ===================
FOR /f "usebackq skip=2 tokens=3,4,5,6,7,8,9" %%i in (`%systemroot%\system32\REG.EXE QUERY "HKCU\SOFTWARE\RIOT GAMES\RADS" /v "LOCALROOTFOLDER"`) DO  (
	SET RADS_PATH=%%i %%j %%k %%l %%m %%n %%o
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 찾는 중입니다.
echo EN: Finding other LOL directory path..
echo ===================
FOR /f "usebackq skip=2 tokens=3,4,5,6,7,8,9" %%i in (`%systemroot%\system32\REG.EXE QUERY "HKCU\SOFTWARE\Classes\VirtualStore\MACHINE\SOFTWARE\Wow6432Node\RIOT GAMES\RADS" /v "LOCALROOTFOLDER"`) DO (
	SET RADS_PATH=%%i %%j %%k %%l %%m %%n %%o
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 찾는 중입니다.
echo EN: Finding other LOL directory path..
echo ===================
FOR /f "usebackq skip=2 tokens=3,4,5,6,7,8,9" %%i in (`%systemroot%\system32\REG.EXE QUERY "HKCU\SOFTWARE\Classes\VirtualStore\MACHINE\SOFTWARE\RIOT GAMES\RADS" /v "LOCALROOTFOLDER"`) DO (
	SET RADS_PATH=%%i %%j %%k %%l %%m %%n %%o
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 찾는 중입니다.
echo EN: Finding other LOL directory path..
echo ===================
FOR /f "usebackq skip=2 tokens=3,4,5,6,7,8,9" %%i in (`%systemroot%\system32\REG.EXE QUERY "HKLM\Software\Wow6432Node\Riot Games\RADS" /v "LOCALROOTFOLDER"`) DO (
	SET RADS_PATH=%%i %%j %%k %%l %%m %%n %%o
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 찾는 중입니다.
echo EN: Finding other LOL directory path..
echo ===================
FOR /f "usebackq skip=2 tokens=3,4,5,6,7,8,9" %%i in (`%systemroot%\system32\REG.EXE QUERY "HKLM\Software\Wow6432Node\Riot Games\RADS" /v "LOCALROOTFOLDER"`) DO (
	SET RADS_PATH=%%i %%j %%k %%l %%m %%n %%o
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 찾는 중입니다.
echo EN: Finding other LOL directory path..
echo ===================
FOR /f "usebackq skip=2 tokens=3,4,5,6,7,8,9" %%i in (`%systemroot%\system32\REG.EXE QUERY "HKCU\SOFTWARE\RIOT GAMES\RADS" /v "LOCALROOTFOLDER"`) DO (
	SET RADS_PATH=%%i %%j %%k %%l %%m %%n %%o
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 찾는 중입니다.
echo EN: Finding other LOL directory path..
echo ===================
FOR /f "usebackq skip=2 tokens=3,4,5,6,7,8,9" %%i in (`%systemroot%\system32\REG.EXE QUERY "HKLM\SOFTWARE\RIOT GAMES\RADS" /v "LOCALROOTFOLDER"`) DO (
	SET RADS_PATH=%%i %%j %%k %%l %%m %%n %%o
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 찾는 중입니다.
echo EN: Finding other LOL directory path..
echo ===================
for /f "Tokens=3,4,5,6,7,8,9,10,11,12,13,14,15" %%a in ('%systemroot%\system32\REG.EXE Query HKLM\Software /V /F "LocalRootFolder" /S /E ^| %systemroot%\system32\find.exe "RADS"') do (
	set RADS_PATH=%%a %%b %%c %%d %%e %%f %%g %%h %%i %%j %%k %%l %%m
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 다른경로에서 찾는 중입니다.
echo EN: Finding another LOL directory path..
echo ===================
for /f "Tokens=3,4,5,6,7,8,9,10,11,12,13,14,15" %%a in ('%systemroot%\system32\REG.EXE Query HKLM\Software /s ^| %systemroot%\system32\find.exe "LocalRootFolder" ^| %systemroot%\system32\find.exe "RADS"') do (
	set RADS_PATH=%%a %%b %%c %%d %%e %%f %%g %%h %%i %%j %%k %%l %%m
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 다른경로에서 찾는 중입니다.
echo EN: Finding another LOL directory path..
echo ===================
for /f "Tokens=3,4,5,6,7,8,9,10,11,12,13,14,15" %%a in ('%systemroot%\system32\REG.EXE Query HKCU\Software /V /F "LocalRootFolder" /S /E ^| %systemroot%\system32\find.exe "RADS"') do (
	set RADS_PATH=%%a %%b %%c %%d %%e %%f %%g %%h %%i %%j %%k %%l %%m
	goto runApp
)
cls
echo ===================
echo KR: 게임 경로를 다른경로에서 찾는 중입니다.
echo EN: Finding another LOL directory path again..
echo ===================
for /f "Tokens=3,4,5,6,7,8,9,10,11,12,13,14,15" %%a in ('%systemroot%\system32\REG.EXE Query HKCU\Software /s ^| %systemroot%\system32\find.exe "LocalRootFolder" ^| %systemroot%\system32\find.exe "RADS"') do (
	set RADS_PATH=%%a %%b %%c %%d %%e %%f %%g %%h %%i %%j %%k %%l %%m
	goto runApp
)
cls
goto cannotFind
:runApp
set RADS_PATH=%RADS_PATH:/=\%
for /l %%a in (1,1,100) do if "!RADS_PATH:~-1!"==" " set RADS_PATH=!RADS_PATH:~0,-1!
@cd /d "%RADS_PATH%\solutions\lol_game_client_sln\releases"

set /a v0=0, v1=0, v2=0, v3=0
set init=0

for /d %%A in ("%RADS_PATH%\solutions\lol_game_client_sln\releases\*") do (
	set currentDirectory=%%~nxA

	for /F "tokens=1,2,3,4 delims=." %%i in ("!currentDirectory!") do (
		set /a test=%%i*1, test2=%%j*1, test3=%%k*1, test4=%%l*1

		if !init! equ 0 (
			set /a init=1, flag=1
		) else (
			set flag=0

			if !test! gtr !v0! (
				set flag=1
			) else (
				if !test2! gtr !v1! (
					set flag=1
				) else (
					if !test3! gtr !v2! (
						set flag=1
					) else (
						if !test4! gtr !v3! (
							set flag=1
						)
					)
				)
			)
		)

		if !flag! gtr 0 (
			set /a v0=!test!, v1=!test2!, v2=!test3!, v3=!test4!
		)
	)
)

if %init% equ 0 goto cannotFind
set lolver=%v0%.%v1%.%v2%.%v3%

@cd /d "!RADS_PATH!\solutions\lol_game_client_sln\releases\%lolver%\deploy"
if exist "League of Legends.exe" (
	@start "" "League of Legends.exe" "8394" "LoLLauncher.exe" "" "spectator spectator.la1.lol.riotgames.com:80 uAd+Cmi6q3qNSAU62U+HWJ5ifmj9/wD2 609917061 LA1" "-UseRads"
	goto :eof
)
:cannotFind
echo ===================
echo KR: LOL 경로를 자동으로 찾을 수 없습니다. 도움말에서 관전하기 문제 해결을 보시면 해결 될 수 있습니다.
echo EN: Cannot found LOL directory path for automatic. Please see our spectate help page: http://lan.op.gg/help/observer
echo ===================
@pause
goto :eof<!-- 190.145.246.43 -->