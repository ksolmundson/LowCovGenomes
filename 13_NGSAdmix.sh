#!/bin/bash
#SBATCH --array=1-10

# array runs each K 10 times

mkdir ~/Angsd/structure/ngsAdmix/K${1}

beagle_file=~/Angsd/GL_files/${R}.beagle.gz
out_folder=~/Angsd/Structure/ngsAdmix/K${1}

module load angsd

NGSadmix -likes $beagle_file -K ${1} -P 16 -o $out_folder/NGSadmix_K${1}_$SLURM_ARRAY_TASK_ID
