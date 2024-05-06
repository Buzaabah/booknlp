#!/bin/bash
#SBATCH --job-name=afner        # create a short name for your job
#SBATCH --nodes=1               # node count
#SBATCH --ntasks=1              # total number of tasks across all nodes
#SBATCH --cpus-per-task=1       # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=32G       # total memory per node (4 GB per cpu-core is default)
####### --gres=gpu:1          # number of gpus per node
####### --partition=mig
####### --constraint=a100       # for running on an A100 GPU
#SBATCH --time=8:00:00          # total run time limit (HH:MM:SS)
#SBATCH --mail-type=begin       # send email when job begins
#SBATCH --mail-type=end         # send email when job ends
#SBATCH --mail-type=fail        # send mail if job fails
#SBATCH --mail-user=hb3815@princeton.edu

# which gpu node was used
echo "Running on host" $(hostname)

# print the slurm environment variables sorted by name
printenv | grep -i slurm | sort

module purge
module load anaconda3/2024.2
#to run experiments in home
#conda activate /home/hb3815/.conda/envs/torch-env
#to run experiments on scratch

# Adroit
# conda activate /scratch/network/hb3815/.conda/envs/torch-env

#Della
conda activate /scratch/gpfs/hb3815/.conda/envs/booknlp

#conda activate torch-env

python3 run_booknlp.py