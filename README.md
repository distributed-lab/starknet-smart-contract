# Overview
This repository is a customized contract development environment for Starknet. Most commands are automated and written in .zsh scripts, but this does not change the fact that you can still use the console and standard `starknet` commands.

# Setup
To work inside docker contaiiner:
1. Open project in <a href="https://code.visualstudio.com/docs/devcontainers/tutorial">Dev Container</a> 
2. Install dependencies with `npm i`

<i>To check that the container is working properly</i>: inside container, open terminal, run:

 `starknet -v`, 

Command should work and print

`starknet 0.11.1.1`

# Env
All environment variables, folder settings, network settings, etc. are in the `<project_root>/commands/common/env.zsh` file. The default setting is the `alpha-goerli` network and the standard settings of the project.

# Links
1. <a href="https://www.cairo-lang.org/docs/hello_starknet/index.html">Hello, StarkNet</a>
2. <a href="https://www.cairo-lang.org/docs/hello_starknet/account_setup.html#creating-an-account">Create account</a>
2. <a href="https://www.cairo-lang.org/docs/hello_starknet/unit_tests.html">Unit tests</a>


# Account creation
1. Run `./commands/common/account/create.zsh`. This command will create account with name `account_1` in `accounts` folder.
2. Go to <a href="https://faucet.goerli.starknet.io/">faucet</a>, and increase your balance.
3. Deploy your account with command `./commands/common/account/deploy.zsh`
4. Information about created accounts can be found in the `accounts` folder

# Contracts
*All network commands require an account to be created
### Compilation
Run `npm run compile` to compile all contracts inside `/contracts` folder. This command create two folder with compilation result, `abis` and `compiled`.
### Declare contract in network
Run `./commands/contract_declare.zsh` to declare contract class in network.
### Deploy contract to network
Run `./commands/contract_deploy.zsh` to declare contract class in network. Change class hash in file before execute.

# Tests
Implemented a basic example of contract testing

Run `npm run test`

# Custom Typescript
Run, for example, `npx ts-node scripts/index.ts`. I allow to get chainId from blockchain.

