$filesList = Get-ChildItem "*.tar.gz" -Recurse

for ($i=0; $i -lt $filesList.Length; $i++) {
    cd $filesList[$i].DirectoryName
    tar xvf $filesList[$i].FullName
}