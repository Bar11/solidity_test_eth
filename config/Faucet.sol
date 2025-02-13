// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Faucet{
    address payable public recipient;

    // 构造函数，部署合约时初始化recipient地址
    constructor(address payable _recipient) {
        recipient = _recipient;
    }

    // 提现函数，要求提现金额大于某个阈值
    function withdraw(uint256 amount) public {
        require(amount > 100000000000000000, "Amount must be greater than 1 ETH");
        recipient.transfer(amount);
    }

    // 可选：提供一个函数来更新recipient地址
    function setRecipient(address payable _newRecipient) public {
        // 通常，这里会添加一些权限检查，比如只有合约的所有者才能更改地址
        recipient = _newRecipient;
    }
}
