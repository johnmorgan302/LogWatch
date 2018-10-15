do {
#   $sn = read-host -Prompt 'Server Number'
    $sn = [System.Console]::ReadKey()
    switch($sn.key){
        D0 {$myKey = 0}
        D1 {$myKey = 1}
        D2 {$myKey = 2}
    }
    $now = get-date
    $myStr = 'vm119is01secap'+ $myKey + ' - ' + $now
    write-Output $myStr >> output.txt
} until ($myKey -eq 0)