#!/bin/bash

#SBATCH --job-name=LivsModel
#SBATCH --output=/home/oxu/BroadBahnMi/out/%j.out
#SBATCH --error=/home/oxu/BroadBahnMi/out/%j.err
#SBATCH -A CS156b
#SBATCH --time=8:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
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