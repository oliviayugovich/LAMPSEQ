<h1 align="center">🧬LAMPSEQ:</h1> <h1 align="center">A command-line analysis tool for species identification using  LAMP 
sequencing data</h1>

This tool has been developed by Olivia Yugovich and Shane Sturrock as detailed in the following paper citation: *currently under review*

# INSTALLATION
Miniforge3 is recommended as this isn’t affected by the Anaconda licensing issues for commercial 
sites. A script is provided that will set up your miniforge3 environment if you haven’t already got 
one. Just run the `./installers/install_miniforge3.sh` script and it will set up your environment. 
Once it completes, close your current shell and open a fresh one so the conda command becomes 
available. If you have miniforge3 available already or you have run the included install script, you 
can run `./installers/install_lampseq_env.sh` to create a conda env for the script to use or manually 
install making sure you have all the package versions as specified in this script or below under 
`dependencies`. Don’t forget to activate the conda env before running the LAMPSEQ script: `conda 
activate lampseq`.

# SYNOPSIS
LAMPSEQ takes input `fastq` files and performs quality control, LAMP amplicon trimming, alignment, and 
species identification, and outputs the relevant results which can be found in `/indir/05_results/` 
including: (a) `indir_multiqc.html`: quality control run summary from `MultiQC`. (b) 
`indir_species_calls.csv`: csv file containing `barcode`, `species_ID` and `reads` which can be used 
for user-defined plotting or further analysis. (c) `LAMPSEQ_indir_run_summary.pdf`: a run summary pdf 
file including a run overview, per barcode plots, and summary table. To run the script, follow the 
installation instructions and then also ensure basecalled and demultiplexed `fastq` files to be 
analysed are located in: `/indir/00_raw_data/`, then run the following: `bash LAMPSEQ.sh –-indir 
[input directory]`

# OPTIONS
<table> <colgroup> <col style="width: 22%" /> <col style="width: 77%" /> </colgroup> <thead> <tr 
class="header"> <th>Option</th> <th>Description</th> </tr> </thead> <tbody> <tr class="odd"> 
<td><code>--indir &lt;value&gt;</code></td> <td>Set input directory (defaults to current working 
directory)</td> </tr> <tr class="even"> <td><code>--dryrun</code></td> <td>Set dryrun flag for testing 
without running (default=false)</td> </tr> <tr class="odd"> <td><code>--debug</code></td> <td>Set 
debug flag for verbose output (default=false unless dryrun set)</td> </tr> <tr class="even"> 
<td><code>--help</code></td> <td>Print this message</td> </tr> </tbody> </table>

# TEST DATA
To check the script is working as intended, you can run `LAMPSEQ.sh` on the `/test_data/` directory. 
The relevant `fastq` files can be found in `/test_data/00_raw_data/`. To analyse the `/test_data/`, 
run the following: `LAMPSEQ.sh --indir test_data`. Once the analysis is complete, cross check that the 
output files located in `/test_data/05_results/` match those found in 
`/test_data/06_test_data_answers/`.

# DEPENDENCIES
<table> <thead> <tr class="header"> <th>Package</th> <th>Version</th> </tr> </thead> <tbody> <tr 
class="odd"> <td>python</td> <td>3.13</td> </tr> <tr class="even"> <td>biopython</td> <td>1.85</td> 
</tr> <tr class="odd"> <td>multiqc</td> <td>1.28</td> </tr> <tr class="even"> <td>fastqc</td> 
<td>0.12.1</td> </tr> <tr class="odd"> <td>bowtie2</td> <td>2.5.4</td> </tr> <tr class="even"> 
<td>samtools</td> <td>1.21</td> </tr> <tr class="odd"> <td>r-base</td> <td>4.4.3</td> </tr> <tr 
class="even"> <td>r-tidyverse</td> <td>2.0.0</td> </tr> <tr class="odd"> <td>r-dplyr</td> 
<td>1.1.4</td> </tr> <tr class="even"> <td>r-here</td> <td>1.0.1</td> </tr> <tr class="odd"> 
<td>bioconductor-rsamtools</td> <td>2.22.0</td> </tr> <tr class="even"> <td>r-markdown</td> 
<td>2.29</td> </tr> <tr class="odd"> <td>r-viridis</td> <td>0.6.2</td> </tr> <tr class="even"> 
<td>r-knitr</td> <td>1.43</td> </tr> <tr class="odd"> <td>r-forcats</td> <td>1.0.0</td> </tr> <tr 
class="even"> <td>r-flextable</td> <td>0.7.5</td> </tr> <tr class="odd"> <td>r-readr</td> 
<td>2.1.4</td> </tr> <tr class="even"> <td>r-ggplot2</td> <td>3.4.3</td> </tr> <tr class="odd"> 
<td>r-scales</td> <td>1.2.1</td> </tr> <tr class="even"> <td>r-tibble</td> <td>3.2.1</td> </tr> <tr 
class="odd"> <td>r-stringr</td> <td>1.5.0</td> </tr> <tr class="even"> <td>r-officer</td> 
<td>0.4.14</td> </tr> <tr class="odd"> <td>r-patchwork</td> <td>1.1.2</td> </tr> <tr class="even"> 
<td>r-ggtext</td> <td>0.1.3</td> </tr> </tbody> </table>
