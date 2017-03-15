# list folders in directory
Get-ChildItem -Path ./ -Directory

# search for commandlets that contain the word service.
Get-Help *service*

# testing looping with foreach statement.
$list = Get-Service
foreach ($item in $list) {
    $sn = $item.Name + ", " + $item.Status
    # learning powershell condition statements.
    if ($item.Status -eq "Running") {
        echo $sn
    }
}


Get-Help Get-Service -ShowWindow

cls


Get-Service -Name BFE, BITS