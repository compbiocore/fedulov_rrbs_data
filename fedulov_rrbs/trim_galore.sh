#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH -n 8
#SBATCH -J trim_galore
#SBATCH --mem=128GB
#SBATCH --mail-type=ALL
#SBATCH --mail-user=joselynn_wallace@brown.edu

source /gpfs/runtime/cbc_conda/bin/activate_cbc_conda
conda activate fedulov_rrbs
for sample in `ls /gpfs/data/cbc/fedulov_alexey/rrbs_data/fastq/*.fastq.gz`
do
base=$(basename $sample ".fastq.gz")
dir="/gpfs/data/cbc/fedulov_alexey/rrbs_data/fastq"
trim_galore --quality 20 --adapter AGATCGGAAGAGC --stringency 1 --length 50 --output_dir ${dir} --rrbs ${dir}/${base}.fastq.gz
done

