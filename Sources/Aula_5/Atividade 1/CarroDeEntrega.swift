class CarroDeEntrega: Veiculo, Rastreavel {
    private(set) var placa: String

    init(placa: String, velocidade: Double) {
        self.placa = placa

        super.init(velocidade: velocidade)
    }

    func obterLocalizacao() -> String {
        return ("""
        Localizacao: SP
        Placa: \(self.placa)
        Velocidade: \(self.velocidade)
        """)
    }

    override func acelerar() {
        self.velocidade += 5
    }
}