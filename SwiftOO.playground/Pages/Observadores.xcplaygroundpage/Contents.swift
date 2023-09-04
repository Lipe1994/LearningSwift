class ContaCorrente{
    //É possível observar quando valores de parametros são alterados
    var saldo: Double{
        didSet{
            print("Saldo foi atualizado, valor antigo era \(oldValue)");
        }
        
        willSet{
            print("Saldo será atualizado para \(newValue)");
        }
    };
    var nome: String;
    
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
