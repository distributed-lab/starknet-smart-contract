#!/bin/zsh

if [[ ! -d "compiled" ]]; then
    mkdir -p "compiled"
fi

if [[ ! -d "abis" ]]; then
    mkdir -p "abis"
fi

for contract_file in contracts/*.cairo; do
    contract_name=$(basename "$contract_file" .cairo)

    starknet-compile-deprecated $contract_file \
        --output compiled/$contract_name.json \
        --abi abis/$contract_name.json
done

echo "Successfully compiled!"