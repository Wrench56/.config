# Clear previous command output

clear

# Set UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding


# Import icons

Import-Module -Name Terminal-Icons

# Load oh-my-posh

$omp_config = Join-Path $PSScriptRoot ".\wrench.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression




# Aliases
Set-Alias v nvim
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
filter xargs { ($h,$t) = $args; & $h ($t + $_) }

function lc([string]$file) {
    Write-Host (Get-Content $file).Length, '  -  ', $file
}

function gitl() {
    $sum = 0
    foreach ($file in git ls-files) {
        $length = (Get-Content $file).Length
        $sum += $length
        Write-Host $length.ToString().PadRight(6, ' '), ' - ', $file
    }
    Write-Host ''
    Write-Host 'Total lines: ', $sum, ' lines'
}
