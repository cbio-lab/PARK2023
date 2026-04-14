# Convergent transcriptomic signature in iPSC-dopaminergic neurons of hereditary Parkinson’s disease

This repository serves as the **entry point** to the full computational analysis accompanying the manuscript:

> *Convergent transcriptomic signature in iPSC-dopaminergic neurons of hereditary Parkinson’s disease*  
> Kopylova IV, Ivanov AB, Eidelman LR, Zaitseva EN, Kulikova ED, Grehnyov DA, Bogomazova AN, Vigont VA, Kaznacheyeva EV, Lagarkova MA, Lebedeva OS, Olekhnovich EI  
> *Life Science Alliance*, 2026 (in press)  
> DOI: [10.26508/lsa.202503551](https://doi.org/10.26508/lsa.202503551)

All custom code and processed data are organised into four independent but complementary repositories, each dedicated to a specific analytical module.

## Project structure

| Repository | Description | Quarto report |
|------------|-------------|---------------|
| [**ParkRNASeq**](https://github.com/cbio-lab/ParkRNASeq) | Differential expression, STRING networks, PPI clustering and validation | [`ParkRNASeq.qmd`](https://github.com/cbio-lab/ParkRNASeq/blob/main/ParkRNASeq.qmd) |
| [**ParkNeuroSignatures**](https://github.com/cbio-lab/ParkNeuroSignatures) | Derivation of neuronal / progenitor gene signatures from public data and GSEA in PD neurons | [`ParkNeuroSignatures.qmd`](https://github.com/cbio-lab/ParkNeuroSignatures/blob/main/ParkNeuroSignatures.qmd) |
| [**ParkGSEA**](https://github.com/cbio-lab/ParkGSEA) | Classical GSEA using Hallmark, GO, KEGG and Reactome | [`ParkGSEA.qmd`](https://github.com/cbio-lab/ParkGSEA/blob/main/ParkGSEA.qmd) |
| [**ParkCoexp**](https://github.com/cbio-lab/ParkCoexp) | Weighted gene co‑expression networks (BioNERO) and pathway activity (PROGENy) | [`ParkCoexp.qmd`](https://github.com/cbio-lab/ParkCoexp/blob/main/ParkCoexp.qmd) |

Each repository contains its own `README.md`, R‑based Quarto report, required R packages, and a `data/` folder with processed input files (or instructions to obtain raw data from NCBI BioProject **PRJNA1346308**).

## Data availability

- **Raw RNA‑seq data**: NCBI BioProject [PRJNA1346308](https://www.ncbi.nlm.nih.gov/bioproject/PRJNA1346308)
- **Public reference data**: GEO [GSE120271](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE120271) (Linker et al., 2022)

## Requirements (general)

- R (≥4.2)
- Required R packages are listed in each sub‑repository’s `README.md`.  
  Typical packages include `DESeq2`, `tidyverse`, `clusterProfiler`, `BioNERO`, `decoupleR`, `STRINGdb`, `GseaVis`, etc.

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
