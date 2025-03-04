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

## Create HF Model folder
mkdir .cache/hf_with_quota

## Set enviroment
setenv HF_HOME "full path folder name here"