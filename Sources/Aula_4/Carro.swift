class Carro: Veiculo {
    private(set) var numeroDePortas: Int

    init(numeroDePortas: Int, marca: String, ano: Int) {
        self.numeroDePortas = numeroDePortas

        super.init(marca: marca, ano: ano)
    }

    override func apresentar() {
        print("""
        Marca: \(self.marca)
        Ano: \(self.ano)
        Portas: \(self.numeroDePortas)
        """)
    }

    override func detalhes() -> String {
        return "Este é um carro de \(numeroDePortas) portas."
    }
}