$Profile_Path = Split-Path -Parent $PROFILE
Set-Alias Count-Size $Profile_Path\sizeCount.ps1
Set-Alias touch New-Item
Set-Alias sublime $Profile_Path\sublime.ps1