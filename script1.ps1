function TestValidateScript {
    [CmdletBinding()]
    Param(
        [ValidateScript({$date = Get-Date})]
        [string]$EventDate
    )
}

function TestConnection {
    [CmdletBinding()]
    Param(
        [ValidateScript({Test-Connection -ComputerName $_ -Count 1 -Quiet -Protocol })]
        [string]$ComputerName
    )
}

function TestParameterSets {
    [CmdletBinding(DefaultParameterSetName="Set1")]
    Param(
        [Parameter(ParameterSetName="Set1",Position=0)]
        [ValidateNotNullOrEmpty()]
        [string]$Set1Param,
        [Parameter(ParameterSetName="Set2",Position=0)]
        [string]$Set2Param,
        [Parameter(Mandatory=$false)]
        $CommonParam
    )
}
