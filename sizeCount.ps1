$startFolder = "$args"
#powershellscritpt
if("$args" -eq "")
{
	$startFolder = ".\"
}
$colItems = (Get-ChildItem $startFolder | Where-Object {$_.PSIsContainer -eq $True} | Sort-Object)
foreach ($i in $colItems)
	{
	$subFolderItems = (Get-ChildItem $i.FullName -recurse | Measure-Object -property length -sum)
	$FileSize="{0:N2}" -f ($subFolderItems.sum / 1GB)
	$Unit='GB'
	if($FileSize -lt 1)
	{
		$FileSize="{0:N2}" -f ($subFolderItems.sum / 1MB)
		$Unit='MB'
		if($FileSize -lt 1)
		{
			$FileSize="{0:N2}" -f ($subFolderItems.sum / 1KB)
			$Unit='KB'
			write-host $i.FullName ' -- ' $FileSize $Unit -fore white	
		}
		else
		{
			write-host $i.FullName ' -- ' $FileSize $Unit -fore green
		}
	}
	else
	{
		write-host $i.FullName ' -- ' $FileSize $Unit -fore red
	}
}