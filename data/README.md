# Data Files

This folder contains the source workbooks and CMS public-use extracts used in the portfolio. The files retain their original analytical purpose and are organized separately from documentation and Tableau materials.

## Directly available files

| File | Purpose |
| --- | --- |
| [CMS_Medicare_PartB_Utilization_data.xlsx](CMS_Medicare_PartB_Utilization_data.xlsx) | Medicare Part B utilization and cost analysis |
| [CMS_Medicare_Quality_Data.xlsx](CMS_Medicare_Quality_Data.xlsx) | Quality Measures and Star Ratings analysis |
| [PPEF_Additional_NPIs_2026.07.17.csv](PPEF_Additional_NPIs_2026.07.17.csv) | Additional provider NPI records |
| [PPEF_Secondary_Specialty_Extract_2026.07.17.csv.gz](PPEF_Secondary_Specialty_Extract_2026.07.17.csv.gz) | Compressed provider secondary-specialty extract |

## Large-file storage

The following sources are stored as numbered parts because their original or compressed size is too large for the available GitHub upload route:

- `CMS_Medicare_Geographic_Variation.xlsx`
- `PPEF_Enrollment_Extract_2026.07.17.csv.gz`
- `PPEF_Practice_Location_Extract_2026.07.17.csv.gz`

The numbered parts are exact byte-for-byte segments. On Windows, clone or download the complete repository and run:

```powershell
powershell -ExecutionPolicy Bypass -File .\data\reassemble_large_files.ps1
```

The script reconstructs the Excel workbook, reconstructs the two compressed CSV archives, verifies their SHA-256 hashes, and extracts the CSV files.

### Expected SHA-256 values

| Reconstructed file | SHA-256 |
| --- | --- |
| `CMS_Medicare_Geographic_Variation.xlsx` | `f54f99379d85ffc748c89500c76dccda1084b84c0db11a05d59b7dc65a29c86f` |
| `PPEF_Enrollment_Extract_2026.07.17.csv.gz` | `dc0e618581c874b2b6c5160993273ecafe1d65b871d987594cf18449e19f89dd` |
| `PPEF_Practice_Location_Extract_2026.07.17.csv.gz` | `2d5772e6e257e68c5833fb26f2f54c7dfdd4be50e9b0b59b46f0cf7e9aaedfe9` |

These files are portfolio source materials. Refer to the project README for the official CMS source links, reporting periods, analytical grains, and interpretation limitations.
