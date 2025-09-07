import Foundation

// Atividade 1

let mCarro = Carro(numeroDePortas: 4, marca: "Ford", ano: 2025)
mCarro.apresentar()

// Atividade 2

let mMoto = Moto(cilindrada: 1000, marca: "BMW", ano: 2025)
let lista: [Veiculo] = [mCarro, mMoto]

for veic in lista {
    print(veic.detalhes())
}