Import-Module MSRCSecurityUpdates
$file = "DriveLocation"
$month= 'YYYY-MMM'
$CVEWanted = "CVE Number"


$CVRFDoc = Get-MsrcCvrfDocument -ID $month -Verbose
$CVRFHtmlProperties = @{
    Vulnerability = $CVRFDoc.Vulnerability | Where-Object {$_.CVE -in $CVEWanted} 
    ProductTree = $CVRFDoc.ProductTree
}

Get-MsrcVulnerabilityReportHtml @CVRFHtmlProperties -Verbose | Out-File $file

