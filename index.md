---
layout: home
title: "The Lab Bench"
subtitle: "Deconstructing Llama 3 on Metal"
---

Welcome to my research lab. This repository serves as a live journal of my experiments with Large Language Models (LLMs), focusing on the Llama 3 architecture using the Apple MLX framework.

## 🔬 Featured Research

Recent deep-dives into LLM internals, fine-tuning, and weight sensitivity.

<!-- This section will be populated by Jekyll automatically from _posts -->

---

## 📁 Research Notebooks

If you want to run the code yourself, explore the interactive notebooks in the [notebooks/](https://github.com/yatharth-anand-2410/llama3-mlx-research-lab/tree/main/notebooks) directory.

1. **[Local Inference]({{ site.baseurl }}/notebooks/01_local_inference.ipynb)**: Native Llama 3 on Metal.
2. **[Weight Surgery]({{ site.baseurl }}/notebooks/05_weight_surgery.ipynb)**: Direct tensor manipulation and embedding analysis.
3. **[Sensitivity Analysis]({{ site.baseurl }}/notebooks/06_sensitivity_analysis.ipynb)**: Identifying the "Tipping Point" of quantized weights.

---

## 🛠️ Setup

To reproduce these experiments locally:

```bash
git clone https://github.com/yatharth-anand-2410/llama3-mlx-research-lab
cd llama3-mlx-research-lab
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```
