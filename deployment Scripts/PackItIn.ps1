# path to cspack
$cspackPath = Join-Path $env:ProgramFiles 'Microsoft SDKs\Azure\.NET SDK\v2.9\bin\cspack.exe'

$PackagePath = '.\lab6.cspkg'
$serviceDefinitionFile = '.\Lab6.AzureCloudService\ServiceDefinition.csdef'
$webRoleName = 'WebRole1'
$webRolePath = '.\'

# define the cspack parameters
$cspackParameter = @(
        "/out:$PackagePath",
        $serviceDefinitionFile,
        "/role:$webRoleName;$webRolePath",
        "/sites:$webRoleName;Web;$webRolePath"
    )

# execute cspack
& $cspackPath @cspackParameter