FROM python:3.11

RUN pip install vllm

RUN vllm serve "Qwen/Qwen2.5-VL-72B-Instruct"
