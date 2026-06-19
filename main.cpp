#include <iostream>
/*
	O namespace são Classe! É utilizado para diferenciar os nomes das funções, classes e variáveis 
	que possivelmente possam estar sendo utilizados em diferentes bibliotecas do projeto.
	Ao utilizar o namespace você está definindo o contexto (escopo) 
	o qual os nomes estão inseridos.
	O escopo do objeto 'cout' faz parte do namespace std;
*/
using namespace std; 

void print (const char * text) {
	/* 
		Imprime na saída padrão.
		endl acrescenta um caractere nova linha e descarrega o buffer de saída;
	*/ 
	cout << text << endl; 
}

int main (int argc, char** argv) {

	print("Estou aqui na empresa muito frio ");

	return 0;
}






