class Veiculo {
    private(set) var marca: String
    private(set) var ano: Int

    init(marca: String, ano: Int) {
        self.marca = marca
        self.ano = ano
    }

    public func apresentar() {
        print("""
        Marca: \(self.marca)
        Ano: \(self.ano)
        """)
    }

    func detalhes() -> String {
        return "Este é um veiculo"
    }
}