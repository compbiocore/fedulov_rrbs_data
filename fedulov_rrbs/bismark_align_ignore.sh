#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH -N 1 #this says they should all be on the same 
#SBATCH -n 4 #little n in number of tasks
#SBATCH -J array_test
#SBATCH --mem=16GB
#SBATCH --mail-type=ALL
#SBATCH --mail-user=joselynn_wallace@brown.edu
#SBATCH --array=1-18

source /gpfs/runtime/cbc_conda/bin/activate_cbc_conda
conda activate fedulov_rrbs
input=($(ls /gpfs/data/cbc/fedulov_alexey/rrbs_data/fastq/*_trimmed.fq.gz)) # using the round brackets indicates that this is a bash array
bismark -o /gpfs/data/cbc/fedulov_alexey/rrbs_data/alignments/ignore --bowtie2 --genome /gpfs/data/shared/databases/refchef_refs/grcm38_p5/bismark_index/ ${input[$((SLURM_ARRAY_TASK_ID -1))]} 

