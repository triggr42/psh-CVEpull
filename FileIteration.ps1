$file = "OutFileLocationFromPart1"
Get-ChildItem -Path "OutFileLocationFromPart1" -Recurse -Include *.FileTypeHere | Out-File $file
