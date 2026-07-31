# Data

Raw data reported in the study. See the repository root [README.md](../README.md) for the full workflow and for which script consumes each of these folders/files.

## Directory
- `16S`: 16S rRNA amplicon data (batch 1)
- `16S_batch2`: 16S rRNA amplicon data (batch 2)
- `Caro DIC Run1 March 6 2`: DIC/δ13C-DIC raw data and data-reduction notebook (`Caro_DIC_Run1_March2023.rmd`). This is the corrected processing that accounts for the larger-volume analysis of low-DIC BA3A samples; it is the version used throughout the analysis (see `cache/` note below). An earlier, superseded processing pass (`Caro DIC Run1 March 6`, without the larger-volume BA3A correction) has been moved to `../archive/data/`.
- `cline_assays`: sulfide concentration (cline assay) raw plate-reader data
- `EQ3_output`: EQ3/6 geochemical speciation modeling output, used for conservative-mixing calculations
- `gc_data`: raw gas chromatography (CH4) data files, parsed by `../00_gc_data_extraction_script.py`
- `IC-ICP`: ion chromatography / ICP-OES raw data (anions, cations)
- `Kelemen 2020`: Kelemen 2020 supplementary data on rock porosity/density
- `nanoSIMS_example_images`: raw nanoSIMS `.im` image files used for example single-cell visualization
- `nanoSIMS_tables`: collated tables of nanoSIMS single-cell data
- `Nikon-Widefield`: epifluorescence cell-counting images/data
- `Oman 2020 Gas Data`: prior (2020) dissolved H2 concentration dataset
- `OpenWGL_2024`: downhole logging data from a later (March 2024) field campaign; not part of this manuscript (see `../archive/`)
- `Picarro`: CRDS (cavity ring-down spectrometer) raw data
- `PNNL_NMR`: 1H-NMR raw data for dissolved organic carbon (acetate/formate) quantification
- `Raman`: Raman-CD (2H-SIP) raw data; not part of this manuscript's own pipeline (see `../archive/`)
- `Templeton 2021`: Templeton et al. (2021, JGR Biogeosci) data on rock-hosted cell abundances

Several raw-data subfolders (e.g. `Nikon-Widefield`, `16S`, `16S_batch2`, `Picarro/raw_data`) are excluded from version control via `.gitignore` due to file size/count; the complete raw dataset is archived on OSF (see repository root README).
