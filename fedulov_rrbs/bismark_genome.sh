#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH -n 32
#SBATCH -J bismark_genome
#SBATCH --mem=198GB
#SBATCH --mail-type=ALL
#SBATCH --mail-user=joselynn_wallace@brown.edu

source /gpfs/runtime/cbc_conda/bin/activate_cbc_conda
conda activate fedulov_rrbs

mkdir /gpfs/data/shared/databases/refchef_refs/grcm38_p5/primary/bismark_index
ln -s /gpfs/data/shared/databases/refchef_refs/grcm38_p5/primary/Mus_musculus.GRCm38.dna.primary_assembly.fa /gpfs/data/shared/databases/refchef_refs/grcm38_p5/bismark_index/Mus_musculus.GRCm38.dna.primary_assembly.fa 
bismark_genome_preparation /gpfs/data/shared/databases/refchef_refs/grcm38_p5/bismark_index
md5sum /gpfs/data/shared/databases/refchef_refs/grcm38_p5/bismark_index/*.* > /gpfs/data/shared/databases/refchef_refs/grcm38_p5/bismark_index/final_checksums.md5  


