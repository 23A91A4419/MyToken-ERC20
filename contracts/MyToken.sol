// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // --- TOKEN METADATA ---
    string public name = "MyToken";
    string public symbol = "MTK";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    // --- BALANCES ---
    mapping(address => uint256) public balanceOf;

    // --- ALLOWANCES ---
    mapping(address => mapping(address => uint256)) public allowance;

    // --- EVENTS ---
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // --- CONSTRUCTOR ---
    constructor(uint256 _totalSupply) {
        totalSupply = _totalSupply * (10 ** uint256(decimals));
        balanceOf[msg.sender] = totalSupply;

        emit Transfer(address(0), msg.sender, totalSupply);
    }

    // --- STEP 4: TRANSFER FUNCTION ---
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    // --- STEP 5: APPROVE FUNCTION ---
    function approve(address _spender, uint256 _value) public returns (bool success) {
        require(_spender != address(0), "Cannot approve zero address");

        allowance[msg.sender][_spender] = _value;

        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    // --- STEP 6: TRANSFERFROM FUNCTION ---
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[_from] >= _value, "Insufficient balance");
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance");

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;

        allowance[_from][msg.sender] -= _value;

        emit Transfer(_from, _to, _value);
        return true;
    }

    // --- STEP 7: HELPER FUNCTIONS (OPTIONAL) ---

    // Returns total supply
    function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }

    // Returns all token metadata in one call
    function getTokenInfo() public view returns (string memory, string memory, uint8, uint256) {
        return (name, symbol, decimals, totalSupply);
    }
}
