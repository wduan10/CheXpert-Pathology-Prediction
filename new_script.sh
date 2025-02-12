#!/bin/bash

#SBATCH --job-name=Hierarchical
#SBATCH --output=/central/groups/CS156b/2024/BroadBahnMi/%j.out
#SBATCH --error=/central/groups/CS156b/2024/BroadBahnMi/%j.err
#SBATCH -A CS156b
#SBATCH --time=12:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G
#SBATCH --gres gpu:4
#SBATCH --mail-user=mbanik@caltech.edu
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --partition=gpu

source /home/mbanik/my_venv/bin/activate

cd /central/groups/CS156b/2024/BroadBahnMi/

python fuckit.py