<h1 align="center">🧬LAMPSEQ:</h1>
<h3 align="center">A command-line analysis tool for species identification using  LAMP 
sequencing data</h3>


## INSTALLATION
**Miniforge3** is recommended as this isn’t affected by the Anaconda licensing issues for commercial 
sites. A script is provided that will set up your miniforge3 environment if you haven’t already got 
one. Just run the `/LAMPSEQ/installers/install_miniforge3.sh` script and it will set up your environment. 
Once it completes, close your current shell and open a fresh one so the conda command becomes 
available. 

If you have miniforge3 available already or you have run the included install script, you 
can run `/LAMPSEQ/installers/install_lampseq_env.sh` to create a conda env for the script to use or manually 
install making sure you have all the package versions as specified in this script or as listed in
`/LAMPSEQ/scripts/lampseq_dependencies.tsv`. 

**Don’t forget to activate the conda env before running the LAMPSEQ script:** `conda activate lampseq`.

## SYNOPSIS
**LAMPSEQ** takes input `fastq` files and performs quality control, LAMP amplicon trimming, alignment, and 
species identification, and outputs the relevant results which can be found in `/indir/05_results/` 
including:
- `indir_multiqc.html`: quality control run summary from `MultiQC`;
- `indir_species_calls.csv`: csv file containing `barcode`, `species_ID` and `reads` which can be used 
for user-defined plotting or further analysis;
- `LAMPSEQ_indir_run_summary.pdf`: a run summary pdf file including a run overview, per barcode plots, and summary table. 

To run the script: 
- Follow the installation instructions
- Ensure basecalled and demultiplexed `fastq` files to be analysed are located in: `/indir/00_raw_data/`
- Then run the following: `LAMPSEQ.sh –-indir [input directory]`

## OPTIONS
<table> <colgroup> <col style="width: 22%" /> <col style="width: 77%" /> </colgroup> <thead> <tr 
class="header"> <th>Option</th> <th>Description</th> </tr> </thead> <tbody> <tr class="odd"> 
<td><code>--indir &lt;value&gt;</code></td> <td>Set input directory (defaults to current working 
directory)</td> </tr> <tr class="even"> <td><code>--dryrun</code></td> <td>Set dryrun flag for testing 
without running (default=false)</td> </tr> <tr class="odd"> <td><code>--debug</code></td> <td>Set 
debug flag for verbose output (default=false unless dryrun set)</td> </tr> <tr class="even"> 
<td><code>--help</code></td> <td>Print this message</td> </tr> </tbody> </table>

## TEST DATA
To check the script is working as intended, you can run `LAMPSEQ.sh` on the `/test_data/` directory. 
The relevant `fastq` files can be found in `/test_data/00_raw_data/`. To analyse the `/test_data/`, 
run the following: `LAMPSEQ.sh --indir test_data`. 

Once the analysis is complete, cross check that the output files located in `/test_data/05_results/` match those found in 
`/test_data/06_test_data_answers/`. 

A `/test_data/` clean up script has been provided to quickly clean up the folder, to do this run the `/LAMPSEQ/test_data/clean_test.sh` script. 

For the source of reference sequences and LAMP primer sequences used to generate the test data, see **Supplementary Table S1 and S2** of the cited  paper.

## DEPENDENCIES
For dependencies see `/LAMPSEQ/scripts/lampseq_dependencies.tsv`.

## CITATION
**This tool has been developed by Olivia Yugovich and Shane Sturrock.** If you use **LAMPSEQ** in your work, please cite the following manuscript:
> Yugovich, O., Sturrock, S., Cave, V., & Harbison, S.A. (2025). *LAMPSEQ: Colorimetric LAMP and nanopore sequencing for rapid species identification in the illegal wildlife trade.* Submitted and under review at *Forensic Science International: Genetics*.


## CONTACT
To contact the authors about this code or customising this code for other LAMP primer targets, **please email Olivia Yugovich** at olivia.yugovich@gmail.com
