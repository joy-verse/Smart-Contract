// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.11;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract Joy is ERC20 {
    address public admin;

    constructor(string memory name_, string memory symbol_)
        public
        ERC20(name_, symbol_)
    {
        _mint(msg.sender, 500000000 * 10**18);
        admin = msg.sender;
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == admin, "Only admin operation");
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        require(msg.sender == admin, "Only admin operation");
        _burn(msg.sender, amount);
    }
}
