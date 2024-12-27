Get-ChildItem -Path "C:\" -Directory -Recurse | 
Select-Object FullName, @{Name="FileCount";Expression={(Get-ChildItem -Path $_.FullName -File -Recurse).Count}} | 
Sort-Object FileCount -Descending | 
Select-Object -First 10
