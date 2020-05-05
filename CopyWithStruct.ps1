$sourceDir = ''
$targetDir = ''

Param(
    [string]$sourceDir,
    [string]$targetDir,
	
)

Get-ChildItem $sourceDir -Recurse |
    foreach{
        $targetFile = $targetDir + $_.FullName.Substring($sourceDir.Length)
        New-Item -ItemType File -Path $targetFile -Force;
        Copy-Item $_.FullName -Destination $targetFile
    }