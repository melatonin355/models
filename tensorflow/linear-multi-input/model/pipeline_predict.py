import os
import numpy as np
import json
import collections
import logging
from pipeline_model import TensorFlowServingModel
from pipeline_monitor import prometheus_monitor as monitor
from pipeline_logger import log
from io import StringIO 

_logger = logging.getLogger('pipeline-logger')
_logger.setLevel(logging.INFO)
_logger_stream_handler = logging.StreamHandler()
_logger_stream_handler.setLevel(logging.INFO)
_logger.addHandler(_logger_stream_handler)

__all__ = ['predict']

# Performance monitors, a-la prometheus...
_labels= {'model_runtime': os.environ['PIPELINE_MODEL_RUNTIME'],
          'model_type': os.environ['PIPELINE_MODEL_TYPE'],
          'model_name': os.environ['PIPELINE_MODEL_NAME'],
          'model_tag': os.environ['PIPELINE_MODEL_TAG']}


def _initialize_upon_import() -> TensorFlowServingModel:
    ''' Initialize / Restore Model Object.
    '''

    return TensorFlowServingModel(host='localhost',
                                  port=9000,
                                  model_name=os.environ['PIPELINE_MODEL_NAME'],
                                  timeout=100)


_model = _initialize_upon_import()


@log(labels=_labels, logger=_logger)
def predict(request: bytes) -> bytes:
    '''Where the magic happens...'''
    transformed_request = _transform_request(request)
    with monitor(labels=_labels, name="predict"):
        predictions = _model.predict(transformed_request)
    return _transform_response(predictions)


@monitor(labels=_labels, name="transform_request")
def _transform_request(request: bytes) -> np.array:
    request_str = StringIO(request.decode('utf-8'))
    request_np = np.loadtxt(request_str, delimiter=',')
    return {'price': request_np[:,0], 'inventory': request_np[:,1]}   
    

@monitor(labels=_labels, name="transform_response")
def _transform_response(response: dict) -> json:
    return json.dumps({"outputs": response['relevance'].tolist()})
