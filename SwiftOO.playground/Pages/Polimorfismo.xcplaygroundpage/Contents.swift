
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
}

class ContaCorrente: Conta{
    func solicitarEmprestimo(_ valor: Double)
    {
        print("O cliente está solicitando emprestimo de \(valor).");
        super.depositar(valor);
    }
}

let contaPoupanca = ContaPoupanca(nome: "Filipe CP");
contaPoupanca.depositar(100);

let contaCorrente = ContaCorrente(nome: "Filipe CC");
contaCorrente.depositar(500);
 
//Embora a funcao abaixo receba uma instancia do tipo conta, eu poderia passar também qualquer outro tipo que tenha heranca do tipo Conta(ContaPoupanca e ContaCorrente)
//essa caracteristica é chamada de polimorfismo
func exibeSaldoDaConta(_ conta: Conta)
{
    print(conta.saldo);
    
    //É possível usar guradas do swift para checagem de tipos
    guard let contaCorrente2 = conta as? ContaCorrente else{
        return;
    }
    
    contaCorrente2.solicitarEmprestimo(1_000);
    
}

exibeSaldoDaConta(contaPoupanca);
exibeSaldoDaConta(contaCorrente);



