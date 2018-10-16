do {
#   $sn = read-host -Prompt 'Server Number'
    $sn = [System.Console]::ReadKey()
    switch($sn.key){
        D1 {$myKey = 'Success'}
        D2 {$myKey = 'Fail'}
        default {$myKey = 0}
    }
    $now = get-date
    $myStr = $myKey + ' - ' + $now
    if($myKey -gt 0){
        write-Output $myStr >> output.txt
    }
} until ($myKey -eq 0)