import Foundation

// Atividade 1

var listaN : [Int] = [-4, 3, -9, 0, 4, 1]

func ex1(_ array: [Int]) {
    let arraySet: Set<Int> = Set(array)
    
    let total = Double(arraySet.count)
    
    let posivito = Double(arraySet.filter{$0 > 0}.count)
    let negativo = Double(arraySet.filter{$0 < 0}.count)
    let nulo = Double(arraySet.filter{$0 == 0}.count)
    
    
    let p1 = posivito/total
    let p2 = negativo/total
    let p3 = nulo/total
    
    print("""
    os valores sao:
    \(p1)
    \(p2)
    \(p3)
    """)
}

ex1(listaN)



// Atividade 2

func obterDetalhesVoo2() -> (codigo: Int, destino: String, pontual: Bool) {
    return (codigo: 1405, destino: "Rio de Janeiro", pontual: true)    
}
print(obterDetalhesVoo2())



Atividade 3

func calcularVendasDoDia() -> (produtosVendidos: Int, valorTotal: Double, clienteDestaque: String) {
    return (produtosVendidos: 235, valorTotal: 4750.00, clienteDestaque: "Supermercado ABC")
}

let relatorioDeHoje = calcularVendasDoDia()

print("""
- - - Relatório de Vendas [30/08/2025] - - -
Produtos Vendidos: \(relatorioDeHoje.produtosVendidos) unidades
Valor Total: R$ \(String(format: "%.2f", relatorioDeHoje.valorTotal))
Cliente Destaque do Dia: \(relatorioDeHoje.clienteDestaque)
""")