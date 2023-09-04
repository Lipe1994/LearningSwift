enum FormaDePagamento{
    case PIX;
    case BOLETO;
    case SALDO_EM_CONTA;
}

func pagarCartao(_ formaPagamento: FormaDePagamento, _ valor: Double){
    switch formaPagamento {
    case .PIX:
        print("Pagamento com pix no valor de \(valor)");
    case .BOLETO:
        print("Pagamento com boleto no valor de \(valor)");
    case .SALDO_EM_CONTA:
        print("Pagamento com saldo em conta no valor de \(valor)");
    default:
        print("Forma de pagamento desconhecida");
    }
}

pagarCartao(FormaDePagamento.PIX, 20.00);
