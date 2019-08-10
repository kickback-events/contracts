module.exports = {
  accounts: 350,
  port: 8555,
  testrpcOptions: '--port 8555 --accounts 350 --defaultBalanceEther 2000000',
  testCommand: '../node_modules/.bin/babel-node ../node_modules/.bin/truffle test --network coverage',
  skipFiles: ['zeppelin/lifecycle/Destructible.sol','zeppelin/ownership/Ownable.sol']
};
