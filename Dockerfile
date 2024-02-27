FROM python:3.9-slim-bookworm
USER root
RUN apt update && apt install curl git gcc make build-essential -y
RUN git clone https://github.com/ggerganov/llama.cpp
WORKDIR llama.cpp
RUN make -ij server
WORKDIR llama.cpp/models 
RUN curl -L  "https://huggingface.co/iAkashPaul/gemma-7b-it-gguf/resolve/main/gemma-7b-it-Q4_0.gguf?download=true" --output gemma-7b-it-Q4_0.gguf
WORKDIR llama.cpp
EXPOSE 8080
CMD ./server -m ./models/gemma-7b-it-Q4_0.gguf
