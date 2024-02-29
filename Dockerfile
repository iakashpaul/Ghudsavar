FROM python:3.9-slim-bookworm
USER root
RUN apt update && apt install curl git gcc make build-essential -y
RUN git clone https://github.com/ggerganov/llama.cpp
WORKDIR /llama.cpp
RUN make -ij server
WORKDIR /llama.cpp/models 
RUN curl -L  "https://huggingface.co/iAkashPaul/gemma-2b-it-gguf/resolve/main/gemma-2b-it-Q8_0.gguf?download=true" --output gemma-2b-it-Q8_0.gguf
WORKDIR /llama.cpp
EXPOSE 7860
RUN chmod -R 777 /llama.cpp
CMD ./server --host 0.0.0.0 --port 7860 -t 3 -m ./models/gemma-2b-it-Q8_0.gguf 
