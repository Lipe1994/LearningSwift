import Foundation

extension Double{
    func toMonetaryValue() -> String {
        return String(format: "R$ %.2f", self);
    }
}

let money = 20.5000;
print(money.toMonetaryValue());
