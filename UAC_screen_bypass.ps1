# Define the username, password and the path to the application
$Username = 'USERNAME'
$Password = ConvertTo-SecureString 'PASSWORD' -AsPlainText -Force
$AppPath = 'C:\Path\To\installer.exe'


# Create a credential object
$Credential = New-Object System.Management.Automation.PSCredential($Username, $Password)

# Start the process with the specified credential
Start-Process -FilePath $AppPath -Credential $Credential