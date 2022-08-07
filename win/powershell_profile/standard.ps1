function Prompt {
    param (
    )

    git status | Out-Null
    $isGitDirectory = $?

    #Write-Host "$($env:COMPUTERNAME)" -NoNewline -ForegroundColor Blue
    #Write-Host "::" -NoNewline -ForegroundColor Yellow
    #Write-Host "$($env:USERNAME) " -NoNewline -ForegroundColor Green
    Write-Host "$(Get-Location) " -ForegroundColor Cyan -NoNewline
    if ($isGitDirectory) {
        Write-Host "git" -NoNewline -ForegroundColor Yellow
        Write-Host "($(git branch --show-current))" -NoNewline -ForegroundColor Red
    }
    Write-Host ''
    Write-Host "~" -NoNewline -ForegroundColor Yellow
    return ' '
}