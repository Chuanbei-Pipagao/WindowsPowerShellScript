#new file to set the environment
$Profile_path = Split-Path -Parent $PROFILE
$a = "$Profile_Path"
cp ./Microsoft.PowerShell_profile.ps1 "$a/Microsoft.PowerShell_profile.ps1"
cp ./sublime.ps1 "$a/sublime.ps1"
cp ./Sublime.lnk "$a/Sublime.lnk"
