get-aduser goutham.gummadi
# Example: Local AD
# Get-ADUser -Identity "gou.gumm"

# Example: Azure AD via Graph PowerShell
Connect-MgGraph -Scopes "User.Read.All"

Get-MgUser -UserId "gou.gumm@yourdomain.com"
