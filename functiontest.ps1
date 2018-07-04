function MyFunction {
    Param($name,$Age)

    Write-Output "Hello $name"
    MyAge -Age $Age
    1..5 | ForEach-Object {New-Item -Path "$_.file"}
    # Adding a comment
}

Function MyAge {
    Param($Age)

    Write-Output "My age is $Age"
}

Write-Output "Start of script"
MyFunction -name Anthony -Age Unknown