#! pwsh

$GlobalArtifactsPath = 'artifacts\'

$Configs = @{
    'runtime-release' = 'dotnet build -c release -o "{0}"'
    'runtime-debug' = 'dotnet build -c debug -o "{0}"'
    'native-win-x64-release' = 'dotnet publish -c release -r win-x64 -o "{0}" -p:NativeBuild=true'
    'native-win-x64-debug' = 'dotnet publish -c debug -r win-x64 -o "{0}" -p:NativeBuild=true'
    'native-linux-x64-release' = 'wsl -d Ubuntu-20.04 -e dotnet publish -c release -r linux-x64 -o "{0}" -p:NativeBuild=true'
    'native-linux-x64-debug' = 'wsl -d Ubuntu-20.04 -e dotnet publish -c debug -r linux-x64 -o "{0}" -p:NativeBuild=true'
}

foreach ($item in $Configs.GetEnumerator()) {
    $artifactsPath = $GlobalArtifactsPath + $item.Key

    Invoke-Expression ($item.Value -f $artifactsPath)
    Compress-7Zip -ArchiveFileName ($item.Key + '.tar') -Path $artifactsPath -OutputPath $GlobalArtifactsPath -Format 'Tar'
    Compress-7Zip -ArchiveFileName ($item.Key + '.tar.gz') -Path ($artifactsPath + '.tar') -OutputPath $GlobalArtifactsPath -Format 'GZip' -CompressionLevel 'High'
    Remove-Item ($artifactsPath + '.tar') -Force
}
