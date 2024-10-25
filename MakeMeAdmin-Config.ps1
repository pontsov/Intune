## MakeMeAdmin Powershell Config

$registryPath =  "HKLM:\SOFTWARE\POLICIES\Sinclair Community College" 
$registryPath2 =  "HKLM:\SOFTWARE\POLICIES\Sinclair Community College\Make me admin" 
 
$Name = "Admin Rights Timeout" 
$value = "5" 
$Name2 = "Remove Admin Rights On Logout" 
$value2 = "1" 
New-Item -Path $registryPath -Force | Out-Null 
New-Item -Path $registryPath2 -Force | Out-Null 
New-ItemProperty -Path $registryPath2 -Name $name -Value $value -PropertyType DWORD -Force | Out-Null 
New-ItemProperty -Path $registryPath2 -Name $name2 -Value $value2 -PropertyType DWORD -Force | Out-Null