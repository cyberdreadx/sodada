$files = Get-ChildItem -Path . -Filter "*.html" -Recurse

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName
    $content = $content -replace '#7c4dff', 'var(--sodada-navy)' `
                        -replace '#3a3aee', 'var(--sodada-navy)' `
                        -replace '#f3f0ff', '#f5f5f5' `
                        -replace 'rgba\(80, 60, 120,', 'rgba(26, 48, 64,' `
                        -replace '#E8B8C8', '#fff' `
                        -replace '#007BFF', 'var(--sodada-navy)'
    Set-Content -Path $file.FullName -Value $content
    Write-Output "Updated colors in $($file.Name)"
}
