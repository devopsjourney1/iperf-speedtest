$mydate = Get-Date -format "dd-MMM-yyyy"
$logfile = 'speed-test' + $mydate + ".log"
$port = $args[0]
$ipaddr = $args[1]
    if ($port -eq $null){
        Write-Output "No port provided, exiting" 
		exit
    }
	    if ($ipaddr -eq $null){
        Write-Output "No port provided, exiting" 
		exit
    }
while($true) {
	Get-Date >> $logfile
	& ./iperf3 -c $ipaddr -t 360 -p $port -b 30M -V -u 6790 >> $logfile
}