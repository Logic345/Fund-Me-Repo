## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

Getting Started
Go to Remix
Paste the code from FundMe.sol and PriceConverter.sol into new files in Remix
Hit Compile
Hit Deploy
For a more in depth blog on working with remix, read here

Getting started (zkSync)
Go to Remix
Paste the code from FundMezkSync.sol into a new file inside a folder named contracts in Remix
Head to the zkSync plugin tab
Hit Compile
Hit Deploy
Thank you!
If you appreciated this, feel free to follow me or donate!

ETH/zkSync/Arbitrum/Optimism/etc Address: cyfrin1.eth: 0x3846c3A30E62075Fa916216b35EF04B8F53931f6 (Confirm the ENS matches the address!)