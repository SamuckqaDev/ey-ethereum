// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


/// @author samuckqadev
/// @title Um exemplo de Faucet
contract Faucet {

    mapping(address=>uint8) public atribuicoes;
    uint8 valorASerAtriuido;

    function atribuirValor() public returns (uint256) {
        require(atribuicoes[msg.sender] == 0,"Sinto muito. voce ja teve sua chance!" );
        require(
            valorASerAtriuido < 256,
            "Sinto muito, voce perdeu sua chance!"
        );
        valorASerAtriuido++;
        atribuicoes[msg.sender] = valorASerAtriuido;
        return valorASerAtriuido;
    }
}
