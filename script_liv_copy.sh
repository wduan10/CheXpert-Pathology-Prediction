#!/bin/bash

#SBATCH --job-name=LivsModel
#SBATCH --output=/central/groups/CS156b/2024/BroadBahnMi/%j.out
#SBATCH --error=/central/groups/CS156b/2024/BroadBahnMi/%j.err
#SBATCH -A CS156b
#SBATCH --time=48:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G
#SBATCH --gres gpu:4
#SBATCH --mail-user=oxu@caltech.edu
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --partition=gpu

source /home/oxu/my_venv/bin/activate
# source /home/wduan/venvs/CS156b/bin/activate

cd /home/oxu/BroadBahnMi
# cd /central/groups/CS156b/2024/BroadBahnMi/

python CNN_single_copy.py hpc