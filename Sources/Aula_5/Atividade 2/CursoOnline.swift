struct CursoOnline: VendavelOnline {
    var nome: String
    var instrutor: String
    var preco: Double

    func adicionarAoCarrinho() {
        print("Inscricao para o curso '\(self.nome)' realizada com sucesso!")
    }
}