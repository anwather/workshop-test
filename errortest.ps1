$myPath = "B:\Windows"
$test = "a"
try {
    Get-ChildItem $myPath -ErrorAction Stop
}
catch [System.Management.Automation.DriveNotFoundException] {
    Write-Output "$myPath not found"
}
catch [System.Management.Automation.ItemNotFoundException] {
    New-Item C:\WindowsOld -ItemType Directory -Force
}