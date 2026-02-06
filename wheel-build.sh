#!/bin/bash

for num in $(seq 10 14);
do
    # if [ -e .venv ]
    # then
    #     rm -rf .venv
    # fi

    uv venv --python "3.${num}" --clear
    source .venv/bin/activate
    uv pip install build charset-normalizer
    python_path=`which python`
    echo "########## Use python from: ${python_path} ###########"
    python -m build
    deactivate
    echo "########## Build done for python 3.${num} ############"
    echo ""
    echo ""
done
