$error.clear()
Get-WmiObject -Query "SELECT * FROM MSAcpi_ThermalZoneTemperature" -ErrorAction SilentlyContinue
if($error) {echo "Virtualization Environment detected"}