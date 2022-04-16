$files = Get-ChildItem -File -Filter *.cfg -Path retroarch\config\VICE\

for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName
    $new_name = $files[$i].BaseName + ".D64" + $files[$i].Extension
    Rename-Item -Path $files[$i].FullName -NewName $new_name
}
