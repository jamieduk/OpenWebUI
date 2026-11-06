#!/bin/bash
# (c) J~Net 2026
#
#
# ./setup.sh
#
#
#

echo "HOME=$HOME"
echo "HF_HOME=$HF_HOME"
echo "SENTENCE_TRANSFORMERS_HOME=$SENTENCE_TRANSFORMERS_HOME"
echo "XDG_CACHE_HOME=$XDG_CACHE_HOME"

mkdir -p /home/jay/.local/share/open-webui
mkdir -p /home/jay/.cache/open-webui/huggingface
mkdir -p /home/jay/.cache/open-webui/sentence-transformers

export DATA_DIR=/home/jay/.local/share/open-webui
export HF_HOME=/home/jay/.cache/open-webui/huggingface
export SENTENCE_TRANSFORMERS_HOME=/home/jay/.cache/open-webui/sentence-transformers
export XDG_CACHE_HOME=/home/jay/.cache/open-webui


sudo add-apt-repository -y ppa:deadsnakes/ppa && sudo apt update && sudo apt install -y python3.12 python3.12-venv python3.12-dev
function venv() {
    #python3 -m venv venv
    python3.12 -m venv venv
    PYTHON_PATH=$(which python3.14) # python3.12
    echo "alias python='$PYTHON_PATH'" >> venv/bin/activate
    source venv/bin/activate
    echo "Virtual Environment setup and ready!"
    echo ""
}


venv
pip install open-webui

echo "Visit http://localhost:3020"
echo ""


#open-webui serve
open-webui serve --host 127.0.0.1 --port 3020
