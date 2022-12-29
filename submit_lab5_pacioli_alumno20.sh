#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno20/Lab5
#SBATCH -J Cut-files
#SBATCH --cpus-per-task=1
#SBATCH --output=/home/alumno20/Lab5/avanzado1.out
#SBATCH --error=/home/alumno20/Lab5/avanzado1.out
#SBATCH --mail-type=NONE    #END/START/NONE

ruta=/home/alumno20/pacioli/Lab5

for i in $ruta ; do
./file_cut.sh Sample1.fastq &
./file_cut.sh Sample2.fastq &
./file_cut.sh Sample3.fastq &
./file_cut.sh Sample4.fastq &
done
