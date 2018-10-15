do {
#   $sn = read-host -Prompt 'Server Number'
    $sn = [System.Console]::ReadKey()
    switch($sn.key){
        D1 {$myKey = 1}
        D2 {$myKey = 2}
        default {$myKey = 0}
    }
    $now = get-date
    $myStr = 'vm119is01secap'+ $myKey + ' - ' + $now
    if($myKey -gt 0){
        write-Output $myStr >> output.txt
    }
} until ($myKey -eq 0)