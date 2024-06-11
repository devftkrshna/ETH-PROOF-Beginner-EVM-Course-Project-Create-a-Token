# ETH-PROOF-Beginner-EVM-Course-Project-Create-a-Token
## Introduction
Welcome to the MyToken Smart Contract! This Solidity-based smart contract provides a simple implementation of a token on the Ethereum blockchain. The MyToken contract allows users to mint and burn tokens, track balances, and manage the total supply of tokens.

## Description
The MyToken contract is a basic example of how tokens can be managed on the Ethereum blockchain. It includes functionalities to:
- Store and retrieve token details such as the token name, abbreviation, and total supply.
- Maintain a mapping of addresses to their respective token balances.
- Mint new tokens to an address, increasing both the total supply and the balance of the specified address.
- Burn tokens from an address, decreasing both the total supply and the balance of the specified address, with appropriate checks to ensure sufficient balance using conditional statements.

## Contract Details

### Public Variables
- `tokenName`: A string that stores the name of the token.
- `tokenAbbrv`: A string that stores the abbreviation of the token.
- `totalSupply`: A uint that stores the total supply of the token.

### Mapping
- `balances`: A mapping that associates addresses with their respective token balances.

### Events
- `LogMessage`: An event to log messages.

### Functions
- `mint(address _to, uint _value)`: Increases the total supply by `_value` and increases the balance of `_to` by `_value`. Emits a `LogMessage` event indicating successful minting.
- `burn(address _from, uint _value)`: Decreases the total supply by `_value` and decreases the balance of `_from` by `_value`. Uses an `if` statement to check if `_from` has sufficient balance before burning. Emits a `LogMessage` event indicating whether the burning was successful or if there was an insufficient balance.

## Usage

### Deployment
Deploy the MyToken contract to the Ethereum blockchain using your preferred method (e.g., Remix, Truffle, Hardhat).

### Interacting with the Contract
1. **Minting Tokens**: Call the `mint` function with the address to which you want to mint tokens and the amount of tokens to mint.
   ```solidity
   mint(address _to, uint _value)
   
