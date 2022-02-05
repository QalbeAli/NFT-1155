// SPDX-License-Identifier: GPL-3.0


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

pragma solidity 0.8.11;

contract NFT is ERC1155 , Ownable{

    uint256 public constant NFT1 = 0;

    constructor() ERC1155("https://tmbiutmhvzgj.usemoralis.com/{id}.json") {
        _mint(msg.sender, NFT1, 1, "");
    } 
    function mint(address account, uint256 id, uint256 amount) public onlyOwner{
        _mint(account, id, amount,"");
    }
    function burn(address account, uint256 id, uint256 amount) public {
        require(account == msg.sender);
        _burn (account, id, amount);
    }
}

