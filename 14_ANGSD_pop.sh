#!/bin/bash
#SBATCH --account=def-pawilson
#SBATCH --job-name=angsdMICH
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kirstensolmundson@trentu.ca
#SBATCH --mem=6G
#SBATCH --cpus-per-task=4
#SBATCH --time=00-11:00
module load angsd
angsd -b LSbam.list -ref /scratch/kirstens/Dovetail_hirise_May2021_final_assembly.fasta -rf 35chr.list -GL 1 -minInd 55 -minMapQ 20 -minQ 20 -snp_pval 0.01 -domaf 1 -nThreads 4 -rmTriallelic 0.01 -doCounts 1 -doMajorMinor 1 -doGeno 11 -doPost 2 -doBcf 1 -C 50 -uniqueOnly 1 -remove_bads 1 -only_proper_pairs 1 -out ONcaribou_MICH_35chr_allInd.angsd

##use angsd to create grouped files based on genomic population structure. ##change -minInd filter to number of samples for each pop #this example is for pop=MICH where N=55.
