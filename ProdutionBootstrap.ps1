Write-Verbose "开始设置REZ环境到Production"

$env:PYTHONDONTWRITEBYTECODE = "True"

$env:RUN_ENVIRONMENT = "Production"

$env:REZ_PACKAGE_ROOT = "D:\CashmereRez"

$env:RUNTIME_BASE = "D:\CashmereRuntime"

# base path for projects
$env:PROJECT_BASE = "D:\CashmereRez"
# base path for inhouse apps
$env:INHOUSE_BASE = "D:\CashmereRuntime"
$env:TEAM_BASE = "D:\CashmereRuntime"

$env:APPLICATIONS_PATH = Join-Path $env:RUNTIME_BASE Applications
$env:DEVELOP_TOOLS_PATH = Join-Path $env:RUNTIME_BASE DevelopTools
$env:MAYA_MODDULE_PATH = Join-Path $env:RUNTIME_BASE MayaModules
$env:PYTHON_LIBS_PATH = Join-Path $env:RUNTIME_BASE PythonLibraries
$env:CPP_LIBS_PATH = Join-Path $env:RUNTIME_BASE Libraries
$env:INHOUSE_PATH = Join-Path $env:RUNTIME_BASE InHouse
$env:PACKAGES_PATH = Join-Path $env:RUNTIME_BASE Packages
$env:TEAM_PACKAGES_PATH = Join-Path $env:TEAM_BASE TeamPackages
$env:STAND_ALONE_TOOLS_PATH = Join-Path $env:RUNTIME_BASE StandAloneTools

$env:REZ_INSTALL_PATH = Join-Path $env:RUNTIME_BASE  (Join-Path Applications rez)

$env:Path += ";$env:APPLICATIONS_PATH" + "\python\2.7.11"
$env:Path += ";$env:APPLICATIONS_PATH" + "\python\2.7.11\Scripts"
$env:Path += ";$env:REZ_INSTALL_PATH" + "\Scripts"
$env:Path += ";$env:REZ_INSTALL_PATH" + "\Scripts\rez"

$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\Applications"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\DevelopTools"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\MayaModules"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\Configs"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\Libraries"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\PythonLibraries"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\Packages"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\InHouse"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\Projects"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\TeamPackages"
$env:REZ_PACKAGES_PATH += ";$env:REZ_PACKAGE_ROOT" + "\$env:RUN_ENVIRONMENT" + "\StandAloneTools"
