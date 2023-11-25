mkdir ~/scratch/Analysis/Angsd/structure/ngsAdmix/admix_slurm

for k in {2..7}
do
sbatch -o ./admix_slurm/${k}-%A.out 01_NGSadmix.bash ${k}
done
