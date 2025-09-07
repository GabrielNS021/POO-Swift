import Foundation

// Atividade 1

struct Livro {
    var titulo: String
    var autor: String
    var anoPublicacao: Int

    func exibirDetalhes() {
        print("""
        Título: \(titulo)
        Autor: \(autor)
        Ano: \(anoPublicacao)
        """)
    }
}
    
let meuLivro = Livro(titulo: "O Guia do Mochileiro das Galáxias", autor: "Douglas Adams", anoPublicacao: 1979)

meuLivro.exibirDetalhes()


// Atividade 2

enum EstacaoDoAno {
    case primavera
    case verao
    case outono
    case inverno
}

class Calendario {
    var estacao: EstacaoDoAno
    
    init(estacao: EstacaoDoAno) {
        self.estacao = estacao
    }
    
    func getMensagem() -> String {
        return "\(estacao)"
    }
}

let mensagemVerao = Calendario(estacao: .verao)
print(mensagemVerao.getMensagem())


Atividade 3

class Pedido {
    var id: Int
    var descricao: String
    var status: StatusPedido
    
    init(id: Int, descricao: String, status: StatusPedido) {
        self.id = id
        self.descricao = descricao
        self.status = status
    }
    
    func atualizarStatus(novoStatus: StatusPedido) {
        self.status = novoStatus
    }
}

enum StatusPedido {
    case recebido
    case processando
    case enviado
    case entregue
}

let meuPedido = Pedido(id:101, descricao: "Camiseta", status: .recebido)
meuPedido.atualizarStatus(novoStatus: .enviado)
print(meuPedido.status)
meuPedido.atualizarStatus(novoStatus: .entregue)
print(meuPedido.status)