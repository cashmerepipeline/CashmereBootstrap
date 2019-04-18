$cashmere_runtime_root = "E:\CashmereRez"
$cashmere_share_root = "E:\CashmereShare"
$git_clone = 'D:\CashmereRuntime\DevelopTools\git\2.17.1\cmd\git.exe clone '

$env_repo = "https://gitee.com/Versatile/CashmereEnv.git"

if (-not (Test-Path $cashmere_runtime_root)) 
{   
    Write-Host "create dir: $cashmere_runtime_root" -ForegroundColor Red
    mkdir $cashmere_runtime_root 
}

# create dirs
cd $cashmere_runtime_root
if (-not (Test-Path .\Staging)) 
{   
    Write-Host ("creating Staging env: " + $cashmere_runtime_root + "\Staging") -ForegroundColor Red
    $git_args = "$env_repo .\Staging  --branch Staging"
    Invoke-Expression "$git_clone $git_args"

    Write-Host '\n'
}

if (-not (Test-Path .\Testing)) 
{   
    Write-Host ("creating Testing env: " + $cashmere_runtime_root + "\Testing") -ForegroundColor Red
    $git_args = "$env_repo .\Testing  --branch Testing"
    Invoke-Expression "$git_clone $git_args" 

    Write-Host '\n'
}

if (-not (Test-Path .\Production)) 
{   
    Write-Host ("creating Production env: " + $cashmere_runtime_root + "\Production") -ForegroundColor Red
    $git_args = "$env_repo .\Production  --branch Production"
    Invoke-Expression "$git_clone $git_args" 
    
    Write-Host '\n'
}

