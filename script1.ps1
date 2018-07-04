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
        [string]$Set1Param,
        [string]$Set2Param,
        $CommonParam
    )
}
