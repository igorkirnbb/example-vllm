FROM vllm/vllm-openai:latest

RUN pip install --upgrade transformers

ENTRYPOINT python3 -m vllm.entrypoints.openai.api_server \
    --model ${MODEL_NAME:-meta-llama/Meta-Llama-3.1-8B-Instruct} \
    ${REVISION:+--revision "$REVISION"}
