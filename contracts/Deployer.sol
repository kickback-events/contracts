pragma solidity ^0.5.4;

import './zeppelin/lifecycle/Destructible.sol';
import './Conference.sol';

/**
 * This is responsible for deploying a new Party.
 */
contract Deployer is Destructible {
    /**
     * Notify that a new party has been deployed.
     */
    event NewParty(
        address indexed deployedAddress,
        address indexed deployer
    );

    /**
     * Deploy a new contract.
     * @param _name The name of the event
     * @param _deposit The amount each participant deposits. The default is set to 0.02 Ether. The amount cannot be changed once deployed.
     * @param _limitOfParticipants The number of participant. The default is set to 20. The number can be changed by the owner of the event.
     * @param _coolingPeriod The period participants should withdraw their deposit after the event ends. After the cooling period, the event owner can claim the remining deposits.
     */
    function deploy(
        string calldata _name,
        uint256 _deposit,
        uint _limitOfParticipants,
        uint _coolingPeriod
    ) external {
        Conference c = new Conference(
            _name,
            _deposit,
            _limitOfParticipants,
            _coolingPeriod,
            msg.sender
        );

        emit NewParty(address(c), msg.sender);
    }
}
