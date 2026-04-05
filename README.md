# 🧪 LLM Deep-Dive Laboratory: Llama 3 on Metal

A research-first laboratory dedicated to deconstructing Large Language Models. This repository contains experiments on **Quantized Weight Sensitivity**, **Manual Weight Surgery**, and **Fine-Tuning** using the Apple MLX framework on MacBook M3.

[![Main Blog](https://img.shields.io/badge/Live-Blog-blue?style=for-the-badge&logo=github)](https://yatharth-anand-2410.github.io)
[![MLX](https://img.shields.io/badge/Framework-MLX-orange?style=for-the-badge)](https://github.com/ml-explore/mlx)
[![Llama3](https://img.shields.io/badge/Model-Llama_3_8B-8A2BE2?style=for-the-badge)](https://huggingface.co/meta-llama/Meta-Llama-3-8B)

---

## 🔬 Blog & Research Journal

**Note: The blog for this research lab has been moved to my centralized blog repository:**  
👉 **[yatharth-anand-2410.github.io](https://yatharth-anand-2410.github.io)**

---

## 📁 Repository Structure

- **[`notebooks/`](notebooks/)**: Interactive Jupyter notebooks for all experiments.
  - `01_local_inference.ipynb`: Basic setup and Metal benchmarking.
  - `03_lora_finetuning.ipynb`: Fine-tuning Llama 3 on 'no_robots' dataset.
  - `05_weight_surgery.ipynb`: Direct tensor manipulation.
  - `06_sensitivity_analysis.ipynb`: The core weight corruption experiment.
- **[`assets/`](assets/)**: Experiment visualizations and architecture diagrams.

---

## 🛠️ Quick Start

### 1. Requirements
- MacBook with Apple Silicon (M1/M2/M3)
- macOS 14.x+
- Python 3.10+

### 2. Setup
```bash
# Clone the repository
git clone https://github.com/yatharth-anand-2410/llama3-mlx-research-lab.git
cd llama3-mlx-research-lab
...
*Created by [yatharth-anand-2410](https://github.com/yatharth-anand-2410) as part of an LLM Mechanistic Interpretability study.*

python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### 3. Local Blog Development
If you want to contribute to the blog or preview changes:
```bash
bundle install
bundle exec jekyll serve
```

---

## 📚 Technical Reference
- **Hardware**: MacBook M3, 16GB Unified Memory.
- **Framework**: Apple MLX (`mlx-lm`).
- **Quantization**: 4-bit (bits=4, group_size=64).

---
*Created by [stokome](https://github.com/stokome) as part of an LLM Mechanistic Interpretability study.*
