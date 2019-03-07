pragma solidity ^0.5.4;

interface UserPotInterface {
  function deposit(address _event, address _user, uint256 _deposit) external payable;
  function withdraw() external;
  function calculatePayout(address _user) external view returns (uint256);
  function calculateDeposit(address _user) external view returns (uint256);
}
