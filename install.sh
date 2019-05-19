#!/bin/bash -eux

LOCAL_PATH=~/."texlive/texmf-var"
LOCAL_LATEX="${LOCAL_PATH}/tex/latex"

mkdir -p "${LOCAL_LATEX}"

# bxcoloremoji
TARGET="BXcoloremoji"
TARGET_PATH="${LOCAL_LATEX}/${TARGET}"
mkdir "${TARGET_PATH}"
cp -r "${TARGET}/bxcoloremoji.sty" "${TARGET}/emoji_images" "${TARGET_PATH}"

# bcprules
TARGET="bcprules"
TARGET_PATH="${LOCAL_LATEX}/${TARGET}"
mkdir "${TARGET_PATH}"
wget http://www.cis.upenn.edu/~bcpierce/papers/bcprules.sty --output "${TARGET_PATH}"
