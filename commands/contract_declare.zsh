#!/bin/zsh

source "./commands/common/env.zsh"

CONTRACT_NAME=contract

# Declare
starknet declare \
    --deprecated \
    --contract compiled/$CONTRACT_NAME.json \
    --account_dir $ACCOUNT_DIR \
    --account $ACCOUNT \

# starknet invoke \
#     --address $CONTRACT_ADDRESS \
#     --abi $ABI \
#     --account_dir $ACCOUNT_DIR \
#     --account $ACCOUNT \
#     --function increase_balance \
#     --inputs 66

# starknet call \
#     --address $CONTRACT_ADDRESS \
#     --abi abis/contract.json \
#     --function get_balance