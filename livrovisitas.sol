pragma solidity ^0.4.18;

contract LivroVisitas {
	
    struct Visitante {
        address endereco;
        string nome;
    }

	mapping(uint => Visitante) visitantes;
	uint numeroProxVisitante;
	
	function size() constant returns (uint count) {     
        return numeroProxVisitante -1;
    }

    function LivroVisitas() public {
        numeroProxVisitante = 1;
    }


	function registrarVisita(address _participante, string _visitante) public returns (uint256 numeroVisita)  {
    	var visitante = Visitante(_participante, _visitante);
    	visitantes[numeroProxVisitante] = visitante;
    	numeroVisita = numeroProxVisitante;
    	numeroProxVisitante++;
	}

	function ultimoVisitante() view returns (address endereco, string nome) {
	  return (visitantes[numeroProxVisitante-1].endereco, visitantes[numeroProxVisitante-1].nome) ;
	}
}
