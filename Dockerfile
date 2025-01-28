FROM python:3

RUN pip install vllm

RUN pip install 'git+https://github.com/huggingface/transformers.git'

RUN vllm serve "Qwen/Qwen2.5-VL-72B-Instruct"
