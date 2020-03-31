#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH -n 8
#SBATCH -J rrbs_fastqc
#SBATCH --mem=16GB
#SBATCH --mail-type=ALL
#SBATCH --mail-user=joselynn_wallace@brown.edu
source /gpfs/runtime/cbc_conda/bin/activate_cbc_conda
for sample in `ls /gpfs/data/cbc/fedulov_alexey/rrbs_data/fastq/*_trimmed.fq.gz`
do
base=$(basename $sample "_trimmed.fq.gz")
qc_dir="/gpfs/data/cbc/fedulov_alexey/rrbs_data/qc"
fastq_dir="/gpfs/data/cbc/fedulov_alexey/rrbs_data/fastq"
fastqc -o ${qc_dir}/trimmed ${fastq_dir}/${base}_trimmed.fq.gz
fastqc -o ${qc_dir}/untrimmed ${fastq_dir}/${base}.fastq.gz
done
