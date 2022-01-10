$client = new-object System.Net.WebClient
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]'Tls11,Tls12'
$client.DownloadFile("https://github.com/hand-group/email-signatures/archive/refs/heads/master.zip","C:\tmp\email-signatures.zip")

Expand-Archive c:\tmp\email-signatures.zip -DestinationPath c:\tmp\email-signatures
Copy-Item -Path "C:\tmp\email-signatures\*" -Destination "C:\Users\$env:UserName\AppData\Roaming\Microsoft\Signatures" -Recurse