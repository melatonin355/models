PIPELINE_MODEL_NAME=inception \
PIPELINE_MODEL_TAG=cpu \
PIPELINE_MODEL_TYPE=tensorflow \
PIPELINE_MODEL_RUNTIME=tfserving \
PIPELINE_MODEL_CHIP=cpu \
PIPELINE_INPUT_PATH=../input \
PIPELINE_OUTPUT_PATH=../output \
  python pipeline_predict.py
