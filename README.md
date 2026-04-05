# 🧪 LLM Deep-Dive Laboratory: Llama 3 on Metal

A research-first laboratory dedicated to deconstructing Large Language Models. This repository contains experiments on **Quantized Weight Sensitivity**, **Manual Weight Surgery**, and **Fine-Tuning** using the Apple MLX framework on MacBook M3.

[![GitHub Pages](https://img.shields.io/badge/Live-Blog-blue?style=for-the-badge&logo=github)](https://stokome.github.io/llama3-mlx-research-lab)
[![MLX](https://img.shields.io/badge/Framework-MLX-orange?style=for-the-badge)](https://github.com/ml-explore/mlx)
[![Llama3](https://img.shields.io/badge/Model-Llama_3_8B-8A2BE2?style=for-the-badge)](https://huggingface.co/meta-llama/Meta-Llama-3-8B)

---

## 🔬 Core Discoveries

### ⚡ The "Tipping Point" (Shift ~1M)
We discovered that 4-bit quantized Llama 3 models can tolerate uniform weight perturbations up to **0.07%** of their integer range. Beyond this threshold, bit-level borrow propagation causes catastrophic output collapse.

### 🧠 Brain Surgery
By zeroing out the `embed_tokens.weight` matrix, we empirically proved that the embedding table is the model's primary "vocabulary knowledge," while the `lm_head` is its "output speaker."

---

## 📁 Repository Structure

- **[`_posts/`](_posts/)**: Research blog articles (Live at [stokome.github.io/llama3-mlx-research-lab](https://stokome.github.io/llama3-mlx-research-lab))
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
git clone https://github.com/stokome/llama3-mlx-research-lab.git
cd llama3-mlx-research-lab

# Setup environment
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
