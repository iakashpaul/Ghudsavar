# Ghudsavar 🏇🏻

Ghudsavar (Horse rider) - Helps you spin up a quick [llama.cpp](https://github.com/ggerganov/llama.cpp) server (OpenAI API compatbile) which plugs into ```langchain``` & ```llamaindex``` w/o sweat. Currently for CPU only runtimes, made available as a docker image. Duplicate this [🤗 HF-space](https://huggingface.co/spaces/iAkashPaul/server.cpp) as your own CPU or GPU(with suitable build flags & ngl params) space & change the model weights to your own GGUF file. 

> BTW the free tier with 2 CPU-cores runs between 5-8tok/s with Gemma-2B-Instruct@Q8, which is alright for quick testing.

## Local setup

```bash
git clone https://github.com/iakashpaul/Ghudsavar.git
cd Ghudsavar
docker build -t iakashpaul/Ghudsavar:latest .
```
