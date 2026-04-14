# Convergent transcriptomic signature in iPSC-dopaminergic neurons of hereditary Parkinson’s disease

![License](https://img.shields.io/badge/License-MIT-green.svg) ![R](https://img.shields.io/badge/R-%3E%3D4.2-blue) ![Quarto](https://img.shields.io/badge/Quarto-1.4-blue) ![Platform](https://img.shields.io/badge/Platform-iPSC--derived%20neurons-blue) ![Disease](https://img.shields.io/badge/Disease-Parkinson's%20disease-orange) [![Life Science Alliance](https://img.shields.io/badge/Paper-Life%20Science%20Alliance-brightgreen)](https://doi.org/10.26508/lsa.202503551)

![](https://github.com/cbio-lab/PARK2023/blob/main/figures/Figure_1.png)
*Scheme of differentiation of iPSCs into DAns and characteristics of cells used for transcriptome analysis. The experimental design included the production of iPSCs, their differentiation, and subsequent characterization and transcriptome analysis. Images adapted from Servier Medical Art (https://smart.servier.com), licensed under CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/).*

This repository serves as the **entry point** to the full computational analysis accompanying the manuscript:

> *Convergent transcriptomic signature in iPSC-dopaminergic neurons of hereditary Parkinson’s disease*  
> Kopylova IV, Ivanov AB, Eidelman LR, Zaitseva EN, Kulikova ED, Grehnyov DA, Bogomazova AN, Vigont VA, Kaznacheyeva EV, Lagarkova MA, Lebedeva OS, Olekhnovich EI  
> *Life Science Alliance*, 2026 (in press)  
> DOI: [10.26508/lsa.202503551](https://doi.org/10.26508/lsa.202503551)

All custom code and processed data are organised into four independent but complementary repositories, each dedicated to a specific analytical module.

## Project structure

| Repository | Description | Quarto report |
|------------|-------------|---------------|
| [**ParkRNASeq**](https://github.com/cbio-lab/ParkRNASeq) | Differential expression, STRING networks, PPI clustering and validation | [`Report`](http://download.ripcm.com/PARK2023/ParkRNASeq/ParkRNASeq.html) |
| [**ParkNeuroSignatures**](https://github.com/cbio-lab/ParkNeuroSignatures) | Derivation of neuronal / progenitor gene signatures from public data and GSEA in PD neurons | [`Report`](http://download.ripcm.com/PARK2023/ParkNeuroSignatures/ParkNeuroSignatures.html) |
| [**ParkGSEA**](https://github.com/cbio-lab/ParkGSEA) | Classical GSEA using Hallmark, GO, KEGG and Reactome | [`Report`](http://download.ripcm.com/PARK2023/ParkGSEA/gsea.html) |
| [**ParkCoexp**](https://github.com/cbio-lab/ParkCoexp) | Weighted gene co‑expression networks (BioNERO) and pathway activity (PROGENy) | [`Report`](http://download.ripcm.com/PARK2023/ParkCoexp/co-expression.html) |

Each repository contains its own `README.md`, R‑based Quarto report, required R packages, and a `data/` folder with processed input files (or instructions to obtain raw data from NCBI BioProject **PRJNA1346308**).

## Data availability

- **Raw RNA‑seq data**: NCBI BioProject [PRJNA1346308](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA1346308)
- **Public reference data**: GEO [GSE120271](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE120271) (Linker et al., 2022)

## Requirements (general)

- R (≥4.2)
- Required R packages are listed in each sub‑repository’s `README.md`.  
- Packages: `tidyverse`, `ggplot2`, `ggpubr`, `ggdist`, `RColorBrewer`, `rcartocolor`, `lmerTest`, `broom.mixed`, `vegan`, `multcomp`, `pairwiseAdonis`, `DESeq2`, `clusterProfiler`, `GseaVis`, `EnhancedVolcano`, `factoextra`, `UpSetR`, `DT`, `downloadthis`, `purrr`, `ggfortify`, `WebGestaltR`, `msigdbr`, `org.Hs.eg.db`, `ReactomePA`, `decoupleR`, `dplyr`, `tibble`, `tidyr`, `stringr`, `pheatmap`, `limma`, `BioNERO`

## How to reproduce the analysis

1. Clone the four sub‑repositories (or the entire project using `git clone --recursive` if you set up submodules).
2. Follow the instructions in each `README.md` to install R packages and obtain necessary data.
3. Render the Quarto (`.qmd`) files in RStudio, or run `quarto render` from the command line.

## Citation

If you use any part of this code or data in your work, please cite the original article (see above) and optionally the Zenodo archive of the specific repository.

## License

All code is released under the **MIT License**. See `LICENSE` file in each sub‑repository.

## Contact

For questions about the analysis or code, please open an issue in the respective repository or contact Evgenii Olekhnovich ([jeniaole01@gmail.com](mailto:jeniaole01@gmail.com)).
