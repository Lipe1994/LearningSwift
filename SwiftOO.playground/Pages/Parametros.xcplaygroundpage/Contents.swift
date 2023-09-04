class ContaCorrente{
    
    //Parametro de armazenamento
    var saldo: Double;
    var nome: String;
    
    //Parametro computado
    var jurosADebitar : Double {
        return saldo * ContaCorrente.taxa;//Usando um parametro stático
    }
    
    //Parametro estático
    static let taxa : Double = 0.2;
    
    func sacar(_ valor: Double){
        saldo -= valor;
    }
    
    func depositar(_ valor: Double){
        saldo += valor;
    }
    
    init(nome: String)
    {
        self.nome = nome;
        self.saldo = 0.0;
    }
}

let contaCorrente = ContaCorrente(nome: "Filipe");
contaCorrente.depositar(100);
print("Nome: \(contaCorrente.nome), saldo: \(String(contaCorrente.saldo)), juros a debitar \(contaCorrente.jurosADebitar)");

