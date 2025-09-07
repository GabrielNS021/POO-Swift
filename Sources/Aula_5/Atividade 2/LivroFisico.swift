class LivroFisico: VendavelOnline, Enviavel {
    var titulo: String
    var autor: String
    var preco: Double
    var pesoEmGramas: Int

    init(titulo: String, autor: String, preco: Double, pesoEmGramas: Int) {
        self.titulo = titulo
        self.autor = autor
        self.preco = preco
        self.pesoEmGramas = pesoEmGramas
    }

    func adicionarAoCarrinho() {
        print("O livro '\(self.titulo)' foi adicionado ao carrinho.")
    }

    func calcularCustoEnvio() -> Double {
        return (Double(pesoEmGramas) / 100.0) * 2.5
    }
}