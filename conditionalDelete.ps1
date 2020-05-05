<#
This script searches a list of immediate subidrectories of RootDirectory for a fielToCheckFor. 
It deletes fileToRemove if fileToCheckFor and fileToRemove are present.
#>

Param(
    [string]$RootDirectory,
    [string]$fileToCheckFor,
    [string]$fileToRemove
)

cd $RootDirectory
$allFolders = Get-ChildItem -Directory

foreach($folder in $allFolders) {
    cd $folder.FullName
    if (Test-Path $fileToCheckFor -and Test-Path $fileToRemove) {
        Remove-Item $fileToRemove
    }
}
