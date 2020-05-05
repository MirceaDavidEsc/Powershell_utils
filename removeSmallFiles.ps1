Param(
    [string]$RootDirectory,
    [string]$fileToCheck
)

cd $RootDirectory
$allFolders = Get-ChildItem -Directory

foreach($folder in $allFolders) {
    cd $folder.FullName
    if (Test-Path $fileToCheck) {
        $thisHDF5 = Get-ChildItem $fileToCheck
        if ($thisHDF5.Length -lt 100kb) {
             rm $thisHDF5
        }
    }
}