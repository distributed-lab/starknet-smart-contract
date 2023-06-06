#!/bin/zsh

source "./commands/common/env.zsh"

if [[ ! -d "accounts" ]]; then
    mkdir -p "accounts"
fi

starknet new_account \
    --account_dir $ACCOUNT_DIR \
    --account account_1