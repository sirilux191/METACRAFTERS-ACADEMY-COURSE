// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract SiriToken {

    // public variables here
    string public tokenName = "SIRILUX";     //string tokenName for Name of Token
    string public tokenAbbrv = 'SIRI';       //string tokenAbbrv for Symbol of Token
    uint public totalSupply = 0;             //unsigned integer for totalsupply of Token

    // mapping variable here
    // mapping for mapping token balances with address
    mapping (address=> uint) public balances;

    // mint function
    // mint function for minting new tokens and mapping them with address
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }
    
    // burn function
    // burn function for burning tokens and removing them from circulation and with address
        function burn(address _address, uint _value) public {
        if(balances[_address] >=_value){
            totalSupply -= _value;
        balances[_address] -= _value;
        }
        
    }
}
