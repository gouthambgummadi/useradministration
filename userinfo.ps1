

# Example: Azure AD via Graph PowerShell
Connect-MgGraph -Scopes "User.Read.All"

Get-MgUser -UserId "goutham.gummadi@edhc.com"
