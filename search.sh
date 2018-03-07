#!/bin/bash
SEARCH_PATH=$1
SEARCH_KEY_WORD=$2

if [ "$#" != "2" ];then
    echo "$0 [SEARCH_PATH] [SEARCH_KEY_WORD]"
    exit 1
fi

VAR_DATE=$(date +"%Y-%m-%d-%H-%M-%S")
time grep -rwn "${SEARCH_KEY_WORD}" "${SEARCH_PATH}" >"${SEARCH_KEY_WORD}${VAR_DATE}.txt"