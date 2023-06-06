#!/bin/zsh

source "./commands/common/env.zsh"

CLASS_HASH=0x30bbc38bd89779665766665f10675a0df7559b009cf3bba6f74fd3a359452d8

starknet deploy \
    --class_hash $CLASS_HASH \
    --account_dir $ACCOUNT_DIR \
    --account $ACCOUNT