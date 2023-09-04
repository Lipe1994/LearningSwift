import Foundation

//raw values
enum DiasDaSemana : Int{
    case DOMINGO = 1, SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO
}

print(DiasDaSemana.DOMINGO.rawValue);

//associeted values
enum Status{
    case SUCESSO(_ text: String), FALHA(_ text: String);
}

let idade = 8;

func podeDirigir(_ idade: Int) -> Status{
    if idade >= 18
    {
        return Status.SUCESSO("Pode dirigir!");
    }else{
        return Status.FALHA("Não pode dirigir! - Menor de idade");
    }
}

let result = podeDirigir(idade);
print(result);

