#!/bin/bash

SNAKE_DIR=$PWD

cd ..

pip list | grep -q pygame || pip install pygame
pip list | grep -q pygbag || { git clone https://github.com/andreagalle/pygbag.git && \
                               cd pygbag && git checkout gh-codespaces && \
                               pip install -e $PWD && cd $SNAKE_DIR; }