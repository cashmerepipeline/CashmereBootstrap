
$cashmere_runtime_root = "D:\CashmereRuntime"
$archive_root = "F:\CashmereRuntime_Archive"

$types = Get-ChildItem "D:\CashmereRuntime" -Directory

foreach($type_dir in $types)
{
    $packages =  Get-ChildItem  (Join-Path $cashmere_runtime_root $type_dir)
    foreach($sub_dir in $packages)
    {   
        
        $parent_dir = Join-Path $cashmere_runtime_root $type_dir
        $pkg_dir = Join-Path $parent_dir $sub_dir

        $versions = Get-ChildItem $pkg_dir -Directory

        foreach($ver in $versions)
        {
            $src_dir = Join-Path $pkg_dir $ver

            $dest_dir = Join-Path $archive_root (Join-Path $type_dir $sub_dir)
            if (-not (Test-Path $dest_dir)) { mkdir $dest_dir }
            $dest_zip = (Join-Path $dest_dir $ver) + ".zip"

            Compress-Archive -Path $src_dir  -DestinationPath $dest_zip -CompressionLevel Optimal -Update

            Write-Host $dest_zip
        }
    }
}
