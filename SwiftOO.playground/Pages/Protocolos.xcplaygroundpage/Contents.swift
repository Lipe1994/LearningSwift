//Protocolo é praticamente um contrato para se aplicar a uma classe posteriormente
protocol Conta{
    var saldo: Double{get set};
    var nome: String{get set};
    
    func sacar(_ valor: Double);
    
    func depositar(_ valor: Double);
    
}

class ContaCorrente : Conta{
    var saldo: Double;
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
