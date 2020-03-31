# Fedulov RRBS 

This repository tracks the analysis pipeline for RRBS analysis for the Fedulov lab. All analysis steps are recorded in `analysis.md`. The `rrbs_data` folder contains a `scripts` subfolder, which contains all of the scripts use to run various aspects of the analysis. The portions of `analysis.md` that use bash were run on Oscar, while the R sections were run on a local machine.

## Analysis summary

Initial QC of raw reads was run using FASTQC (Andrews S. (2010). FastQC: a quality control tool for high throughput sequence data. Available online at: http://www.bioinformatics.babraham.ac.uk/projects/fastqc). Reads were trimmed using Trim Galore using the following settings: `--quality 20 --adapter AGATCGGAAGAGC --stringency 1 --length 50` (Andrews S. (2012). Available online at :http://www.bioinformatics.babraham.ac.uk/projects/trim_galore). Bismark was used to prepare the reference genome (Ensembl Release 89 of GRCm38) and to align trimmed reads using the `--bowtie2` parameter. Bismark methylation extractor was used to extract methylation information using the following parameters `--bedGraph --comprehensive --ignore 3 -s --merge_non_CpG`.      

The DSS package was used to find differentially methylated loci and regions (Park et al., 2016). The DMLfit.multiFactor function was used to fit the model using an `~Estrogen*Additive` formula. DMLtest.multiFactor was used to find differentially methylated loci, and callDMR was used to find differentially methylated regions with the `p.threshold` parameter set to 0.05. 

The methyAnalysis package was used to annotate differentially methylated regions with a flankRange of 3000 (Du and Bourgon, 2019). ClusterProfiler and enrichPlot were used to query and visualize enriched KEGG pathways (Yu et al., 2012; Yu et al., 2019).


