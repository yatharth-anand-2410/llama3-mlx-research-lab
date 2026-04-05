# 📚 Research Papers: Fine-tuning & Weight Sensitivity

These papers provide the theoretical foundation for the experiments in this laboratory, specifically regarding parameter-efficient fine-tuning and the structural properties of the Llama 3 architecture.

### Core Papers

*   **[LoRA: Low-Rank Adaptation of Large Language Models](https://arxiv.org/abs/2106.09685)** (Hu et al., 2021)
    *   **Relevance:** The foundation for the LoRA fine-tuning experiments. It explains how to train a tiny fraction of parameters (the "adapters") to change a model's behavior without modifying the base weights.
    *   **Key Concept:** Decomposition of weight updates into low-rank matrices.

*   **[Llama 3 Technical Report](https://ai.meta.com/research/publications/the-llama-3-herd-of-models/)** (Meta, 2024)
    *   **Relevance:** Essential for understanding the specific architecture of the Llama 3 8B model used in these experiments, including its tokenizer, vocabulary size, and training objective.
    *   **Key Concept:** Architectural details of the Llama 3 model family.

---
*Generated for the LLM Research Lab context.*
