# METACRAFTERS-ACADEMY-COURSE
# SIRILUX TOKEN

This Solidity program is a simple "Sirilux Token" program that demonstrates the basic syntax and functionality of the Solidity programming language. SiriToken is a Solidity smart contract representing a basic ERC-20 token.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has three varibles which stores values such token name, token abbrevation/symbol and total supply. There are two function in this smart contract which are mint and burn function. The mint function is used to mint new tokens while the burn function is used to burn exisiting tokens. In both function address and value are passed as parameter for minting and burning of token. If statement is implemented in burn function to check whether the address input has number of tokens that are passsed as value.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "SiriToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint function.

## Authors

Metacrafter Sirilux
[@AadityaChandankar](https://twitter.com/aadityachandan1)


## License

This project is licensed under the MIT License.
