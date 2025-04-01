# SNLP_Project

This project investigates hallucinations in long-context retrieval tasks by analyzing how language models behave when provided with different types of context: relevant, irrelevant, and semantically misleading. We focus on two key types of hallucinations:

- **Selective or Incomplete Retrieval**: The model retrieves only part of the correct information, omitting crucial details.
- **Contradictory Hallucinations**: The model generates responses that include incorrect or conflicting facts.

Our goal is to better understand the retrieval dynamics that lead to these hallucinations and evaluate how context quality influences model reliability.

---

## 📦 Project Structure

- `SNLP.ipynb`: A notebook interface for running the tests. Wraps the logic from `retrieval_head_detection.py`.
- `retrieval_head_detection.py`: Core script for evaluating and detecting retrieval heads. Should be run through `SNLP.ipynb`.
- `needle_in_haystack_with_mask.py`: Script for testing masked retrieval heads. Run this via the terminal only.
- `haystack/`: Directory containing haystack context data.
  - `irrelevant/`: Text files containing irrelevant context.
  - `relevant/`: Text files containing relevant context.
  - `needles.json`: Data for each needle ID.
- `viz/CreateVizFromLLMTesting.ipynb`: Notebook for visualizing evaluation results.
- `data_generation/`: Scripts used to generate the needles and associated context files.
- `haystack_for_detect/`: Legacy directory (do not use or modify).
- `PaulGrahamEssays/`: Original corpus used to construct the haystack (do not use or modify).



---

## 🚀 Running the Project

### Main Interface (Recommended)

Open the Jupyter Notebook:

```bash
SNLP.ipynb
```

This notebook allows you to run core experiments and visualize the results more conveniently.

### Terminal-Only Scripts

Some experiments are not yet supported in the notebook and must be run via the terminal.

#### 🔍 Masking Top Retrieval Heads

```bash
python needle_in_haystack_with_mask.py --mask_top 30 --s 1000 --e 5000 --model_path yaofu/llama-2-7b-80k
```

#### 🎲 Masking Random Retrieval Heads

```bash
python needle_in_haystack_with_mask.py --mask_top -30 --s 1000 --e 5000 --model_path yaofu/llama-2-7b-80k
```

---

## ⚙️ Setting Up the Environment

You’ll need access to UCL lab machines and a virtual environment with dependencies.

### SSH into Lab Machines

```bash
ssh -l YOUR_USERNAME -J YOUR_USERNAME@knuckles.cs.ucl.ac.uk canada-l.cs.ucl.ac.uk
```

> 🔁 Replace `YOUR_USERNAME` with your UCL lab username.

### Create and Activate Virtual Environment

```bash
python3 -m venv venv
source venv/bin/activate.csh
```

### Install Requirements

> ✅ Make sure to upgrade pip **before** installing dependencies.

```bash
pip install --upgrade pip
pip install -r requirements.txt
```

### Install Flash Attention

```bash
pip install wheel
pip install flash-attn --no-build-isolation
```

---

## 📁 HuggingFace Model Cache (Optional)

To avoid repeated downloads and manage disk quota:

Make sure you are in the `SNLP_Project/` dir.

```bash
mkdir -p .cache/hf_with_quota
```

If you are running a script through terminal then you will need to run this as well:

```bash
setenv HF_HOME "full/path/to/folder/.cache/hf_with_quota/"
```