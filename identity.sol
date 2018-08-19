pragma solidity ^0.4.13;

contract Identity
{
    struct Pessoa {
        address carteira;
        string nome;
        uint reputacao;
        string telefone;
    }
    
    mapping(bytes32 => Pessoa) public pessoas;
    
    // this is what the automatically generated getter
    // looks like (we don't need to implement this ourselves).
    function getPessoa(bytes32 carteira) public returns (string nome, uint reputacao, string telefone)
    {
        // copy the data into memory
        Pessoa memory p = pessoas[carteira];
        
        // break the struct's members out into a tuple
        // in the same order that they appear in the struct
        return (p.nome, p.reputacao, p.telefone);
    }
    
    function atestarExistenciaPessoa(bytes32 wallet) public {
        pessoas[wallet].reputacao += 1;
    }
    
}
