# list folders in directory
# Get-ChildItem -Path ./ -Directory

# search for commandlets that contain the word service.
# Get-Help *service*

# testing looping with foreach statement.
# $list = Get-Service
# foreach ($item in $list) {
#     $sn = $item.Name + ", " + $item.Status
#     # learning powershell condition statements.
#     if ($item.Status -eq "Running") {
#         Write-Output $sn
#     }
# }

# Get-Help Get-Service -ShowWindow

# Clear-Host

# Get-Service -Name BFE, BITS

# XmlNodeAdaptor Working with XML files
$path = "$(Get-Location)\docs\plant_catalog.xml"
$xmlDoc = New-Object Xml.XmlDocument
$xmlDoc.Load($path)
#$xmlDoc | Get-Member
#$plants = $xmlDoc.GetElementsByTagName("PLANT")
#$plants[0]
$plants[0].COMMON
$plants[0].BOTANICAL
$plants[0].ZONE
$plants[0].PRICE

