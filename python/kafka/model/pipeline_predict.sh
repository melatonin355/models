PIPELINE_MODEL_NAME=zscore \
PIPELINE_MODEL_TAG=cpu \
PIPELINE_MODEL_TYPE=python \
PIPELINE_MODEL_RUNTIME=python \
PIPELINE_MODEL_CHIP=cpu \
PIPELINE_INPUT_PATH=../input \
PIPELINE_OUTPUT_PATH=../output \
  python pipeline_predict.py
