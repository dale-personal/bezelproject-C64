$files = Get-ChildItem -File -Filter *.png  -Path retroarch\overlay\GameBezels\C64\

for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName
    magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 238,0 1684,1080" -region "1447x1080+238+0" -transparent black $files[$i].FullName
}