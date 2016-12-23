@ECHO OFF

TITLE The Matrix
MODE CON: COLS=100 LINES=1000
COLOR 0A
CLS

ECHO Call trans opt: recieved. %date% %time% REC:log^>
ECHO WARNING: rendering anomaly at region 03:01:07.20, 11:07:04.20
NETSH Diag Ping Loopback > NUL
ECHO Search and replace: In progress.
NETSH Diag Ping Loopback > NUL
ECHO Search and replace: Complete.
NETSH Diag Ping Loopback > NUL
ECHO.
ECHO.
ECHO                     ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
ECHO                     ³Matrix Digital Rain BY³
ECHO                     ³     Akshay Raina	³
ECHO                     ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
NETSH Diag Ping Loopback > NUL
CLS

:writeLine
	SET "line="
	FOR /L %%c IN (1,1,50) DO (CALL :printChar %%c)
	ECHO %line%
	GOTO writeLine
GOTO :EOF

:printChar
	SET /A num=%RANDOM%
	SET /A mod=num %% 2
	SET /A cmod=%1 %% 2
	IF %cmod% EQU 0 (
		SET "line=%line%  "
	) ELSE (
		IF %mod% EQU 1 (
			SET "line=%line%  "
		) ELSE (
			SET "char="
			SET "s=ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890’¥¨«¬³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏĞÑÒÓÔÕÖ×ØÙáâãäåæçèéêëîïğ÷û"
			SET /A pick=%RANDOM% %% 97
			CALL SET "char=%%s:~%pick%,1%%"
			SET "line=%line% %char%"
		)
	)
	EXIT /B
:EOF