#! /bin/bash

export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

VIRTUAL_ENV_DISABLE_PROMPT=true

exec jupyter notebook --no-browser --ip=0.0.0.0 --port=8080
