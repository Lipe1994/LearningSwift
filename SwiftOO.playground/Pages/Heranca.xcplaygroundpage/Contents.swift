
class Conta{
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

class ContaPoupanca: Conta{
    var possuiCartaoDebio: Bool;
    func solicitarCartaoDebito()
    {
        print("O cliente está solicitando cartão débito.");
        self.possuiCartaoDebio = true;
    }
    
    override init(nome: String)
    {
        self.possuiCartaoDebio = false;
        super.init(nome: nome);
    }
}

class ContaCorrente: Conta{
    func solicitarEmprestimo()
    {
        print("O cliente está solicitando emprestimo.");
    }
}

let contaPoupanca = ContaPoupanca(nome: "Filipe CP");
contaPoupanca.depositar(100);
contaPoupanca.solicitarCartaoDebito();

let contaCorrente = ContaCorrente(nome: "Filipe CC");
contaCorrente.depositar(500);
contaCorrente.solicitarEmprestimo();
