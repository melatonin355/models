PIPELINE_MODEL_NAME=resnet50 \
PIPELINE_MODEL_TAG=cpu \
PIPELINE_MODEL_TYPE=keras \
PIPELINE_MODEL_RUNTIME=python \
PIPELINE_MODEL_CHIP=chip \
PIPELINE_INPUT_PATH=../input \
PIPELINE_OUTPUT_PATH=../output \
  python pipeline_predict.py
