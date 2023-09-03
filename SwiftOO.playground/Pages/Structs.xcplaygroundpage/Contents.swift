struct ContaCorrente{
    var saldo = 0.0;
    var nome: String;
    
    mutating func sacar(_ valor: Double){
        saldo -= valor;
    }
    
    mutating func depositar(_ valor: Double){
        saldo += valor;
    }
}

//Em structs eu não posso inicializar um objeto com o let e posteriormente alterar o valor de variáveis dentro do objeto
//pois a constante de uma struct carrega o valor do objeto... Sendo assim, devo usar var se o meu objetivo for alterar algum valor dentro da struct
var contaCorrente = ContaCorrente(nome: "Filipe");
print("Nome: \(contaCorrente.nome), saldo: \(String(contaCorrente.saldo))");

contaCorrente.depositar(1500);
print("Nome: \(contaCorrente.nome), saldo: \(String(contaCorrente.saldo))");
