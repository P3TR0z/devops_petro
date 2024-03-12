$envName = 'py_virtual_env'
$fullEnvPath = "$PSScriptRoot\$envName"
$activateScriptPath = "$fullEnvPath\Scripts\Activate.ps1"

Out-Host -InputObject("Creating python venv: $fullEnvPath")
python.exe -m venv $fullEnvPath

& $activateScriptPath

#upgrades
python -m pip install --upgrade pip
pip install flake8
pip install pytest
pip list
deactivate

Out-Host -InputObject("exit code: {0}" -f $LASTEXITCODE)