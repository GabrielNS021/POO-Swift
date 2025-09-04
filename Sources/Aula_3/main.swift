import Foundation

//Atividade 1

public class Cofre {
    private var saldo: Double
/* 
    CONSTRUTOR RUIM PARA BOAS PRATICAS
    MAS FOI SOLICITADO DESSA FORMA
*/
    init(depositoInicial: Double) {
        if depositoInicial < 0 {
            self.saldo = 0.0
            print("AVISO: VALOR INFERIOR A ZERO")
        } else {
            self.saldo = depositoInicial
        }
    }

    public func depositar(quantia: Double) {
        if quantia < 0 {
            print("AVISO: VALOR INFERIOR A ZERO")
        } else {
            self.saldo += quantia
        }
    }

    public func sacar(quantia: Double) {
        if quantia > 0 && quantia < self.saldo {
            self.saldo -= quantia
        } else if quantia < 0 {
            print("AVISO: VALOR INFERIOR A ZERO")
        } else {
            print("AVISO: QUANTIA MAIOR QUE O SALDO")
        }
    }

    public func getSaldo() -> Double {
        return self.saldo
    }
}

let cofre = Cofre(depositoInicial: 50)

cofre.depositar(quantia: 50)
print("Saldo: \(cofre.getSaldo())\n")

cofre.sacar(quantia: 50)
print("Saldo: \(cofre.getSaldo())\n")


// Atividade 2

class PerfilUsuario {
    public let id: UUID
    public let dataDeCadastro: Date
    public var nomeDeExibicao: String
    private var hashDaSenha: String

/* 
    PODE FAZER ISSO NO CONSTRUTOR?
*/
    init(nomeDeExibicao: String, hashDaSenha: String) {
        self.nomeDeExibicao = nomeDeExibicao
        self.hashDaSenha = ("\(hashDaSenha)_hashed")

        self.id = UUID()
        self.dataDeCadastro = Date()
    }

    public func alterarSenha(novaSenha: String) -> Bool {
        if novaSenha.count < 8 {
            print("SENHA MENOR QUE 8 CARACTERES")
            return false
        } else {
            self.hashDaSenha = ("\(novaSenha)_hashed")
            return true
        }
    }

    public func autenticar(senha: String) -> Bool {
        let senhaHasheada = "\(senha)_hashed"
        return senhaHasheada == self.hashDaSenha
    }
}

let usuario = PerfilUsuario(nomeDeExibicao: "Joao", hashDaSenha: "senha")
print(usuario.alterarSenha(novaSenha: "senha1234"))
print(usuario.autenticar(senha: "senha1234"))