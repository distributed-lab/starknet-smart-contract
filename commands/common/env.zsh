#!/bin/zsh

export STARKNET_NETWORK=alpha-goerli
export STARKNET_WALLET=starkware.starknet.wallets.open_zeppelin.OpenZeppelinAccount
export CAIRO_COMPILER_DIR=~/.cairo/target/release/
export CAIRO_COMPILER_ARGS=--add-pythonic-hints

export ACCOUNT=account_1
export ACCOUNT_DIR=accounts

echo "Environment variables exported\n"