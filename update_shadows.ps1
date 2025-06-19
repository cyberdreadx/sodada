$files = Get-ChildItem -Path . -Filter "*.html" -Recurse

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName
    $content = $content -replace 'box-shadow: 0 \d+px \d+px rgba\(0, 0, 0,', 'box-shadow: 0 4px 24px rgba(26, 48, 64,'
    Set-Content -Path $file.FullName -Value $content
    Write-Output "Updated shadows in $($file.Name)"
}
