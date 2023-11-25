mkdir ~/scratch/Analysis/Angsd/structure/ngsAdmix/admix_slurm

for k in {2..8}
do
sbatch -o ./admix_slurm/${k}-%A.out 13_NGSAdmix.sh ${k}
done
