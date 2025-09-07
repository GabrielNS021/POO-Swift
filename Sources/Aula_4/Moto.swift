class Moto: Veiculo {
    private(set) var cilindrada: Int

    init(cilindrada: Int, marca: String, ano: Int) {
        self.cilindrada = cilindrada

        super.init(marca: marca, ano: ano)
    }

    override func detalhes() -> String {
        return "Este é uma moto de \(cilindrada) cilindradas"
    }
}