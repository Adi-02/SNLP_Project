# SNLP_Project
SNLP Project

## SSH Command
ssh -l alice -J alice@knuckles.cs.ucl.ac.uk canada-l.cs.ucl.ac.uk
Replace alice with your username used for the lab machines

## Create virtual environment
python3 -m venv venv

## Activate environment
source venv/bin/activate.csh

## Install the requirements
NOTE: UPGRADE PIP BEFORE RUNNING THIS COMMAND
pip install --upgrade pip

Run requirements.txt
pip install -r requirements.txt

## Install Flash attention
pip install wheel
pip install flash-attn --no-build-isolation

## Create HF Model folder
mkdir .cache/hf_with_quota

## Set enviroment
setenv HF_HOME "full path folder name here"

## Run application
Normally run application:
python retrieval_head_detection.py --model_path yaofu/llama-2-7b-80k --s 0 --e 5000

Masked application run:
python needle_in_haystack_with_mask.py --mask_top 30 --s 1000 --e 5000  --model_path yaofu/llama-2-7b-80k  
python needle_in_haystack_with_mask.py --mask_top -30 --s 1000 --e 5000  --model_path yaofu/llama-2-7b-80k