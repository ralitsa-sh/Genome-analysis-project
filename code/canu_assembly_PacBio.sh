#!/bin/bash -l
#SBATCH -A uppmax2026-1-61
#SBATCH -p pelle
#SBATCH -c 4
#SBATCH -t 02:30:00
#SBATCH -J canu_assembly
#SBATCH --output=%x.%j.out

# Load module
module load canu

# Go to working directory
cd /home/rash8155/Genome-analysis-project/analyses/genome_assembly_Canu

# Run Canu
canu \
  -p efaecium \
  -d efaecium_canu_assembly \
  genomeSize=3m \
  -pacbio \
  useGrid=false \
  maxThreads=4 \
  maxMemory=16 \
  /home/rash8155/Genome-analysis-project/data/raw_data/genomics_data/PacBio/*.fastq.gz