I lost my last readme file, cuz foundry is have to for sure create git for the box, yes I't really useful feature (no it's not) and I'm retarded

# Here I'm trying to recreate zero knowledge contracts, [the first part of my journey in in here](https://github.com/Wawilow/eth-tolen)

What I'm actually trying to build here?
I'm trying to represent [zero knowledge proof](https://en.wikipedia.org/wiki/Zero-knowledge_proof) in solidity smart contract. It's fully original idea, I for suuureee don't trying to recreate some large project from scratch
But if I got some reference, which I don't, I'm not watching any code, I know `ONLY CONCEPTION` and cryptographic theory

- [x](Set up foundary project, local anvil node and `otterscan` scanner)
- [x](Learn about zero knowledge theory)
- [ ](Learn how to use foundry frame work)
- [ ](Set up contract which can recieve and send ETH)
- [ ](Realise zero knowledge logic in smart contract)

## Install foundry and run local node with anvil
install foundry
```bash
curl -L https://foundry.paradigm.xyz | bash
source /home/user/.bashrc
foundryup
```
Run anvil
```bash
anvil --port 6969 --fork-url https://ethereum-holesky-rpc.publicnode.com
```

```bash
docker run --rm -p 5100:80 --name otterscan -d --env ERIGON_URL=http://localhost:6969 otterscan/otterscan:latest
```

## Zero knowledge proof theory

I understand the basics, but just repeat

Alibaba cave theory (not plato's!!!!!)
> Victor want to make sure what Peggy knows secret key from the dor in alibaba cave
> 
> The cave is `Q` form, tail is exit, in the opposite side of cave is magic door, this door opens only with secret key
> 
> Peggy don't want say secret key to Victor, she needs only proof what she now it
>
> Solution - Peggy goes to the cave first, he is going randomly left or right, Victor got no clue where she has goes.
>
> Victor goes to the cave after peggy, flip a coin and asking her to go from the coin side
>
> It will work with 50% chance if Peggy don't know secret key, so they have to make it like 10-20 times (if 10 = (0.5 ** 10) = 0.0009765625)

Okay, cool, but, why do the make it more complicated. Why they don't came in this cave together, Peggy goes for example on the left and comes out on the right side

## Time to actually some code
### Build contract
```bash
forge build -h
```
### Deploy contract on blockchain
Simplest command
[//]: # (forge create --rpc-url <your_rpc_url> --private-key <your_private_key> src/MyContract.sol:MyContract)
```bash
forge create --rpc-url http://localhost:6969 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 src/Counter.sol:Counter
```
Full stuff command
```bash
forge create --rpc-url <your_rpc_url> \
    --constructor-args "ForgeUSD" "FUSD" 18 1000000000000000000000 \
    --private-key <your_private_key> \
    --etherscan-api-key <your_etherscan_api_key> \
    --verify \
    src/MyToken.sol:MyToken
```

### Verify contract if you not
```bash
forge verify-contract \
    --chain-id 11155111 \
    --num-of-optimizations 1000000 \
    --watch \
    --constructor-args $(cast abi-encode "constructor(string,string,uint256,uint256)" "ForgeUSD" "FUSD" 18 1000000000000000000000) \
    --etherscan-api-key <your_etherscan_api_key> \
    --compiler-version v0.8.10+commit.fc410830 \
    <the_contract_address> \
    src/MyToken.sol:MyToken 
```
I really like forge, it has good asf documentation, and it's fucking working, like really just working - and working good!
