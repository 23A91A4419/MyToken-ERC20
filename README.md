# MyToken (MTK)

## Overview
MyToken (MTK) is a simple ERC-20 compatible cryptocurrency token created using Solidity and deployed using the Ethereum Remix IDE.  
This project was completed as part of a blockchain learning exercise to understand how ERC-20 tokens work internally.

---

## Token Details
- **Name:** MyToken  
- **Symbol:** MTK  
- **Decimals:** 18  
- **Total Supply:** 1,000,000 MTK  

---

## Features
✔ Standard ERC-20 implementation  
✔ Ability to transfer tokens between wallets  
✔ Approve and transferFrom functionality  
✔ Emits `Transfer` and `Approval` events  
✔ Tracks balances and allowances  
✔ Prevents invalid operations (zero address, insufficient balance, insufficient allowance)

---

## How to Deploy (Using Remix IDE)
1. Open Remix at https://remix.ethereum.org  
2. Create a new file named **MyToken.sol**  
3. Paste the contract code  
4. Compile using **Solidity version 0.8.x**  
5. Go to the **Deploy & Run** tab  
6. Enter the desired total supply (e.g., `1000000000000000000000000` for 1 million tokens with 18 decimals)  
7. Click **Deploy**  
8. The deployed contract will appear under “Deployed Contracts”

---

## How to Use

###  Check Balance
```solidity
balanceOf(address) → returns uint256
```

###  Transfer Tokens
```solidity
transfer(address to, uint256 amount) → returns bool
```

###  Approve a Spender
```solidity
approve(address spender, uint256 amount) → returns bool
```

###  Transfer on Behalf of Owner
```solidity
transferFrom(address from, address to, uint256 amount) → returns bool
```

---

## Screenshots
All screenshots demonstrating the ERC-20 contract functionality are available in the **screenshots** folder:

- compilation_success.png  
- deployment.png  
- token_info.png  
- transfer_test.png  
- approve.png  

These screenshots show:
- Successful compilation  
- Successful deployment  
- Token name, symbol, decimals, total supply  
- Transfers between accounts  
- Approve + transferFrom functionality  

---


