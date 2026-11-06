#!/bin/bash
# (c) J~Net 2026
#
# ./setup.sh
#
#
export DATA_DIR=/home/jay/.local/share/open-webui
export HF_HOME=/home/jay/.cache/open-webui/huggingface
export SENTENCE_TRANSFORMERS_HOME=/home/jay/.cache/open-webui/sentence-transformers
export XDG_CACHE_HOME=/home/jay/.cache/open-webui

function venv() {
    #python3 -m venv venv
    python3.12 -m venv venv
    PYTHON_PATH=$(which python3.12)
    echo "alias python='$PYTHON_PATH'" >> venv/bin/activate
    source venv/bin/activate
    echo "Virtual Environment setup and ready!"
    echo ""
}


venv

echo "Visit http://localhost:3020"
echo ""

#open-webui serve
open-webui serve --host 127.0.0.1 --port 3020
