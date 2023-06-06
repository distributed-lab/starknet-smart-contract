import os
import pytest

from starkware.starknet.testing.starknet import Starknet

# The path to the contract source code.
CONTRACT_FILE = os.path.join(
    os.path.dirname(__file__), "../contracts/contract.cairo")

# The testing library uses Python's asyncio. So the following
# decorator and the ``async`` keyword are needed.
@pytest.mark.asyncio
async def test_increase_balance_1():
    # Create a new Starknet class that simulates the Starknet
    # system.
    starknet = await Starknet.empty()

    # Deploy the contract.
    declare_info = await starknet.deprecated_declare(source=CONTRACT_FILE)
    contract = await starknet.deploy(class_hash=declare_info.class_hash)

    # Invoke increase_balance() twice.
    await contract.increase_balance(amount=10).execute()
    await contract.increase_balance(amount=20).execute()

    # Check the result of get_balance().
    execution_info = await contract.get_balance().call()
    assert execution_info.result == (30,)

# pytest tests/contract_test.py -sv -p no:warnings
# pytest tests/*.py -sv -p no:warnings