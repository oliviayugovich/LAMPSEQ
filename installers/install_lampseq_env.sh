#!/bin/bash

# Shane Sturrock
# 93/07/2025

# Script to auto install conda env for LAMPSEQ.sh to use

PYTHON3=3.13
BIOPYTHON=1.85
MULTIQC=1.28
FASTQC=0.12.1
BOWTIE2=2.5.4
SAMTOOLS=1.21
PANDOC=3.7.0.2
RSAMTOOLS=2.22.0
R_BASE=4.4.3
R_TIDYVERSE=2.0.0
R_DPLYR=1.1.4
R_HERE=1.0.1
R_MARKDOWN=2.0
R_VIRIDIS=0.6.5
R_KNITR=1.50
R_FORCATS=1.0.0
R_FLEXTABLE=0.9.9
R_READR=2.1.5
R_GGPLOT2=3.5.2
R_SCALES=1.4.0
R_TIBBLE=3.3.0
R_STRINGR=1.5.1
R_OFFICER=0.6.10
R_PATCHWORK=1.3.1
R_GGTEXT=0.1.2
R_TINYTEX=0.57
ENV_NAME=lampseq

# Create conda env for lampseq tools and install them
conda create --yes --no-default-packages --prefix ${HOME}/miniforge3/envs/${ENV_NAME} --channel conda-forge --channel bioconda python=${PYTHON3} biopython=${BIOPYTHON} multiqc=${MULTIQC} fastqc=${FASTQC} bowtie2=${BOWTIE2} samtools=${SAMTOOLS} pandoc=${PANDOC} R-base=${R_BASE} r-tidyverse=${R_TIDYVERSE} r-dplyr=${R_DPLYR} bioconductor-rsamtools=${RSAMTOOLS} r-here=${R_HERE} r-markdown=${R_MARKDOWN} r-viridis=${R_VIRIDIS} r-knitr=${R_KNITR} r-forcats=${R_FORCATS} r-flextable=${R_FLEXTABLE} r-readr=${R_READR} r-ggplot2=${R_GGPLOT2} r-scales=${R_SCALES} r-tibble=${R_TIBBLE} r-stringr=${R_STRINGR} r-officer=${R_OFFICER} r-patchwork=${R_PATCHWORK} r-ggtext=${R_GGTEXT} r-tinytex=${R_TINYTEX}
