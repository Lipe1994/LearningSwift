class ContaCorrente{
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

//Em classes eu posso inicializar um objeto com o let e posteriormente alterar o valor de variáveis dentro do objeto
//pois a constante de uma classe carrega a referência do objeto
let contaCorrente = ContaCorrente(nome: "Filipe");
print("Nome: \(contaCorrente.nome), saldo: \(String(contaCorrente.saldo))");

contaCorrente.depositar(1500);
print("Nome: \(contaCorrente.nome), saldo: \(String(contaCorrente.saldo))");

//Outro exemplo sobre Classe sendo um tipo de referência
let contaCorrente02 = contaCorrente;//O que acontece aqui é que agora tem duas constantes(let) apontando para mesma referência na memória
contaCorrente02.sacar(500);

//Note no printe abaixo que tanto contaCorrente quanto contaCorrente02 tem as mesmas informacoes printadas, melhor dizendo: "Apontam para mesma referência"
print("Nome: \(contaCorrente.nome), saldo: \(String(contaCorrente.saldo))");
print("Nome: \(contaCorrente02.nome), saldo: \(String(contaCorrente02.saldo))");
