# Gemini Context: Llama 3 MLX Research Lab

## Completed Experiments

### 1. Fine-tuning & Adaptation
- **Method:** LoRA (Low-Rank Adaptation) on `Llama-3-8B-Instruct-4bit`.
- **Finding:** Successfully trained on `no_robots` dataset (500 examples).
- **Discovery:** Iteration 130 hit an OOM crash due to unconstrained sequence lengths, necessitating `--max-seq-length 512` and `--grad-checkpoint`.

### 2. Weight Surgery & Manual Inspection
- **Method:** Direct manipulation of `embed_tokens` and `lm_head` tensors.
- **Finding:** Zeroing the embedding table completely destroys input comprehension, while zeroing the `lm_head` destroys output capability—proving these layers are the model's primary vocabulary mapping.

### 3. Quantized Weight Sensitivity Analysis (Core Discovery)
- **Experiment:** Systematic integer subtraction from 4-bit packed `uint32` weights.
- **Discovery:** The **Tipping Point** (~1,000,000 shift).
- **Mechanics:** Corruption propagates through bit-level borrow propagation. A shift of ~4 nibble units is tolerated; beyond that, the accumulated errors flip token probabilities, causing catastrophic output failure.

## Key Takeaways
- **Robustness:** LLMs are surprisingly resilient to small bit-level noise in their weights.
- **Quantization:** Modifying quantized weights requires extreme care as they are packed bit-wise into `uint32` containers.

## Advanced Research Tracks (Pending)

### 1. Layer-wise Sensitivity Gradient
- **Goal:** Run the sensitivity test on individual layers (0, 16, 31).
- **Hypothesis:** Critical path layers (0, 1, 31) will have a much lower "Wobble Room" (break at <1M shift) compared to redundant middle layers.

### 2. MLP vs. Attention Sensitivity
- **Goal:** Perturb only MLP weights (knowledge) vs. only Attention weights (logic) within the same layer.
- **Insight:** Determine if the model's factual accuracy or its grammatical syntax is the more fragile component.

### 3. Targeted Concept Erasure
- **Goal:** Identify the specific row in `embed_tokens` for a concept (e.g., "Paris") and zero/invert it.
- **Insight:** Test if erasing the token vector "lobotomizes" the concept or if the model can still reason about it using neighboring semantic tokens.
