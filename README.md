🗺️ Nations.finance
===

Nations.finance is an experimental strategy game backed by cryptocurrency, whereby: 

* Anyone can create a nation backed by Ethereum (ETH) crypto money. 
* Money contributed will be used to automatically generate investment yield. 
* Nations compete by each other by dealing with [issues](#) which changes the nation's [characteristics](#). 
* Nations can battle against each other to claim the yield of another nation.

Made with ❤️ and developed for the [ETHOnline Hackathon 2020](https://hack.ethglobal.co/showcase/nations-finance-recNHZu842Z49C3yk). 

### Starting the app in development 

Install Ganache cli globally: 

`npm install -g ganache-cli`

Open a Terminal tab and start the ganache (Keep it running)

`ganache-cli`

**Note**: use node version 12 or you may get the following error: `Error: Callback was already called.`

To deploy all the contracts in local blockchain: 

`truffle migrate`

To Test 

`truffle test`

To check for gas price optimization, uncomment the the following lines in truffle-config.js:

```
  mocha: {
    // reporter: 'eth-gas-reporter',
    // timeout: 100000
  },

```