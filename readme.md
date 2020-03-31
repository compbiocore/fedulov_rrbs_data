# Fedulov RRBS 

This repository tracks the analysis pipeline for RRBS analysis for the Fedulov lab. All analysis steps are recorded in `analysis.md`. The `rrbs_data` folder contains a `scripts` subfolder, which contains all of the scripts use to run various aspects of the analysis. The portions of `analysis.md` that use bash were run on Oscar, while the R sections were run on a local machine.

## Analysis summary

Initial QC of raw reads was run using FASTQC (Andrews S. (2010). FastQC: a quality control tool for high throughput sequence data. Available online at: http://www.bioinformatics.babraham.ac.uk/projects/fastqc). Reads were trimmed using Trim Galore (Andrews S. (2012). Available online at :http://www.bioinformatics.babraham.ac.uk/projects/trim_galore).  
