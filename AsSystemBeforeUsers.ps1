# not working
if (Test-Connection -ComputerName 10.1.10.2 -Count 1) { net use S: \\10.1.10.2\files /no /user:guest tech; Copy-Item -Path "S:\files\Programs\MicrosoftOffice.zip" -Destination "C:\MicrosoftOffice.zip" }
