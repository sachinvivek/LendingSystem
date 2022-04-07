pragma solidity ^0.5.16;

import './Ownable.sol';

contract Destructible is Ownable {
    
    function _Destructible() public payable { }

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
    
    function destroyAndSend(address _recipient) public onlyOwner {
        selfdestruct(_recipient);
    }
}