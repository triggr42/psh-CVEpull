# CVE Search and Operating System File Inspection PowerShell Script

## Overview
This PowerShell script utilizes the Microsoft Security Response Center (MSRC) module to search for Common Vulnerabilities and Exposures (CVE) on a specified date. It retrieves detailed information about the CVE(s) found and then iterates through the operating system to identify matching files.

## Prerequisites
- PowerShell 5.1 or later.
- Internet connectivity for fetching CVE data from the MSRC.
- Access to the MSRC module.

## Installation
1. Clone or download the script from this repository.
2. Ensure the MSRC module is installed and accessible. You can install it using the following command:
Install-Module -Name MSRC

## Usage
1. Open the script DownloadCVEfromMRSC.ps1 script in text editor and replace:
  $date with date of CVE required in YYYY-MMM format i.e 2020-DEC
  $file with the location that the MSRC file download should be stored
  $CVEwanted with the CVE number needed
2. Save the file and run it.
3. Verify that you can see the file in your specified file location

Optionally, I have created a PowerShell file to iterate based on file name / extension which can also be used. The idea was to connect the two into a single script and dynamically find related files.

1. Open the script FileIteration.ps1
2. Replace the file location depending on the level of the disk to be scanned and specify a file location for the outfile.
3. Review outfile for matches and remediate as appropriate.

## Output
The script will display detailed information about any CVEs found for the specified date and then proceed to iterate through the operating system to identify matching files. Output will vary depending on the CVEs found and the operating system.

## Disclaimer
This project is incomplete and requires the addition of dynamic file identification and iteration. As is, it is a proof of concept. 
