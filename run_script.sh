#!/bin/bash

# Activate the virtual environment
source venv/bin/activate.csh

# Set the environment variable
setenv HF_HOME "/cs/student/projects1/2021/bhaskkar/Retrieval_Head/{folder name here}"

# Run the Python script
python retrieval_head_detection.py --model_path yaofu/llama-2-7b-80k --s 0 --e 5000