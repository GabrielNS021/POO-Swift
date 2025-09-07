import Foundation

// Atividade 1

let mCarroDeEntrega = CarroDeEntrega(placa: "0123A", velocidade: 10)
mCarroDeEntrega.acelerar()
print(mCarroDeEntrega.obterLocalizacao())

// Atividade 2

let mLivroFisico = LivroFisico(titulo: "Memórias Póstumas de Brás Cubas", autor: "Machado de Assis", preco: 15.0, pesoEmGramas: 100)
mLivroFisico.adicionarAoCarrinho()
print(mLivroFisico.calcularCustoEnvio())

let mCursoOnline = CursoOnline(nome: "Swift: Entendendo a linguagem", instrutor: "Jorge", preco: 100.0)
mCursoOnline.adicionarAoCarrinho()