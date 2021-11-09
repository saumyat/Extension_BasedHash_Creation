"Powershell script to Copy folders"

$scr = Read-Host "Please Enter Source address"
$dest = Read-Host "Please Enter Destination Address"
$hash = Read-Host "Enter path to hash text file"

"Copying File to the destination"
C:\Windows\System32\Robocopy.exe $scr $dest /XO /log+:log.txt

"Generating Hash File"
C:\Users\VC569MH\Downloads\hashmyfiles\HashMyFiles.exe /file "$src*.txt" /stext "$hash"