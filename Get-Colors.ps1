$FGcolors = [enum]::GetValues([System.ConsoleColor])
$BGcolors = [enum]::GetValues([System.ConsoleColor])
$size = 10

Write-Host "".PadRight($Size).Substring(0,$size) -NoNewline
Foreach ($BGcolor in $BGcolors) {
    Write-Host $BGcolor.ToString().PadRight($Size).Substring(0,$size)  -BackgroundColor $BGcolor -NoNewline
}
Write-Host 
Foreach ($FGcolor in $FGcolors) {
    Write-Host  $FGColor.ToString().PadRight($Size).Substring(0,$size) -foreground $FGColor -NoNewline

    Foreach ($BGcolor in $BGcolors)
    {
         Write-Host   $FGColor.ToString().PadRight($Size).Substring(0,$size) -background $BGColor -foreground $FGColor -nonewline
    }
    Write-Host 
}