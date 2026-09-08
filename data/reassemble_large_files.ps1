$ErrorActionPreference = "Stop"

$DataRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

function Join-FileParts {
    param(
        [Parameter(Mandatory = $true)][string]$PartDirectory,
        [Parameter(Mandatory = $true)][string]$Prefix,
        [Parameter(Mandatory = $true)][string]$OutputName,
        [Parameter(Mandatory = $true)][string]$ExpectedSha256
    )

    $sourceDirectory = Join-Path $DataRoot $PartDirectory
    $parts = Get-ChildItem -LiteralPath $sourceDirectory -Filter "$Prefix.part-*" |
        Sort-Object Name

    if ($parts.Count -eq 0) {
        throw "No parts found for $Prefix in $sourceDirectory"
    }

    $outputPath = Join-Path $DataRoot $OutputName
    $outputStream = [System.IO.File]::Create($outputPath)

    try {
        foreach ($part in $parts) {
            $inputStream = [System.IO.File]::OpenRead($part.FullName)
            try {
                $inputStream.CopyTo($outputStream)
            }
            finally {
                $inputStream.Dispose()
            }
        }
    }
    finally {
        $outputStream.Dispose()
    }

    $actualSha256 = (Get-FileHash -LiteralPath $outputPath -Algorithm SHA256).Hash.ToLowerInvariant()
    if ($actualSha256 -ne $ExpectedSha256.ToLowerInvariant()) {
        throw "SHA-256 verification failed for $OutputName. Expected $ExpectedSha256 but received $actualSha256."
    }

    Write-Host "Reconstructed and verified: $outputPath"
    return $outputPath
}

function Expand-GzipFile {
    param(
        [Parameter(Mandatory = $true)][string]$GzipPath,
        [Parameter(Mandatory = $true)][string]$OutputName
    )

    $outputPath = Join-Path $DataRoot $OutputName
    $sourceStream = [System.IO.File]::OpenRead($GzipPath)
    $gzipStream = [System.IO.Compression.GzipStream]::new(
        $sourceStream,
        [System.IO.Compression.CompressionMode]::Decompress
    )
    $targetStream = [System.IO.File]::Create($outputPath)

    try {
        $gzipStream.CopyTo($targetStream)
    }
    finally {
        $targetStream.Dispose()
        $gzipStream.Dispose()
        $sourceStream.Dispose()
    }

    Write-Host "Extracted: $outputPath"
}

Join-FileParts     -PartDirectory "large-files\geographic"     -Prefix "CMS_Medicare_Geographic_Variation.xlsx"     -OutputName "CMS_Medicare_Geographic_Variation.xlsx"     -ExpectedSha256 "f54f99379d85ffc748c89500c76dccda1084b84c0db11a05d59b7dc65a29c86f"

$enrollmentArchive = Join-FileParts     -PartDirectory "large-files\enrollment"     -Prefix "PPEF_Enrollment_Extract_2026.07.17.csv.gz"     -OutputName "PPEF_Enrollment_Extract_2026.07.17.csv.gz"     -ExpectedSha256 "dc0e618581c874b2b6c5160993273ecafe1d65b871d987594cf18449e19f89dd"

$practiceArchive = Join-FileParts     -PartDirectory "large-files\practice-location"     -Prefix "PPEF_Practice_Location_Extract_2026.07.17.csv.gz"     -OutputName "PPEF_Practice_Location_Extract_2026.07.17.csv.gz"     -ExpectedSha256 "2d5772e6e257e68c5833fb26f2f54c7dfdd4be50e9b0b59b46f0cf7e9aaedfe9"

Expand-GzipFile     -GzipPath $enrollmentArchive     -OutputName "PPEF_Enrollment_Extract_2026.07.17.csv"

Expand-GzipFile     -GzipPath $practiceArchive     -OutputName "PPEF_Practice_Location_Extract_2026.07.17.csv"

Write-Host "All large data files were reconstructed successfully."
