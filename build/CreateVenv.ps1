$envName = "py_virtual_env'
$fullEnvPath = "$PSScriptRoot\$envName"
$activateScriptPath = "$fullEnvPath\Scripts\Active.ps1"

Out-Host -InputObject("Creating python venv: $fullEnvPath")
python.exe -m venv $fullEnvPath

& $activateScriptPath

#upgrades
python -m pip install --upgrade pip
pip list
deactivate

Out-Host -InputObject("exit code: {0}" -f $LASTEXITCODE)