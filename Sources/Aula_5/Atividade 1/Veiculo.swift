class Veiculo {
    var velocidade: Double = 0.0

    init(velocidade: Double) {
        self.velocidade = velocidade
    }

    func acelerar() {
        self.velocidade += 10
    }
}