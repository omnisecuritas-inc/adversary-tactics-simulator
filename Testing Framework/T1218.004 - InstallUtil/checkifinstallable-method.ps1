# Import the required test harness function, Invoke-BuildAndInvokeInstallUtilAssembly
#{test_harness}

$InstallerAssemblyDir = "#{assembly_dir}"
$InstallerAssemblyFileName = "#{assembly_filename}"
$InstallerAssemblyFullPath = Join-Path -Path $InstallerAssemblyDir -ChildPath $InstallerAssemblyFileName

$ExpectedOutput = 'Constructor_'

$TestArgs = @{
    OutputAssemblyDirectory = $InstallerAssemblyDir
    OutputAssemblyFileName = $InstallerAssemblyFileName
    InvocationMethod = '#{invocation_method}'
}

$ActualOutput = Invoke-BuildAndInvokeInstallUtilAssembly @TestArgs -MinimumViableAssembly

if ($ActualOutput -ne $ExpectedOutput) {
    throw @"
CheckIfInstallable method execution test failure. Installer assembly execution output did not match the expected output.
Expected: $ExpectedOutput
Actual: $ActualOutput
"@
}