# Script: auto_report.ps1
# Tac gia: Nguyen Quang Thanh
# Ngay tao: 28/10/2026

Write-Host  "Dang loc log..."

"=== BAO CAO LOI ==="
Get-Content .\logs\course.log | Select-String "ERROR" > .\logs\auto_report.txt

Write-Host "Hoan thanh!"