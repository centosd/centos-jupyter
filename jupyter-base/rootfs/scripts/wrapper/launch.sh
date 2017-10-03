#! /bin/bash

export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib

VIRTUAL_ENV_DISABLE_PROMPT=true
source /opt/jupyter/bin/activate

exec jupyter notebook --no-browser --ip=0.0.0.0 --port=8080
